import { parse } from 'node-html-parser'
import { readdirSync, readFileSync, writeFileSync } from 'fs'
import { resolve } from 'path'
import CssParser from 'css-simple-parser';

const filenames = readdirSync(resolve('output/')).filter(v => v.includes('.html'));

(() => {
    for (const filename of filenames) {
        const raw = readFileSync(resolve('output/', filename)).toString('utf-8')
        const root = parse(raw)
        const styles = root.querySelector('style')!.innerText.
            replace('<!--', '').
            replace('-->', '').
            split('\n').
            filter(v => v.length > 0).
            map(v => v.replaceAll(' ', '')).
            map(v => CssParser.parse(v)).
            map(v => ({ selector: v.children[0].selector, body: v.children[0].body })).
            filter(v => v.selector.includes('.')).
            map(v => ({ ...v, selector: v.selector.replace('.', '') }))
        let preRaw = root.querySelector('pre')!.innerHTML.toString()
        for (const style of styles) {
            preRaw = preRaw.replaceAll(`class="${style.selector}"`, `style="${style.body}"`)
        }
        preRaw = preRaw.replaceAll('\n', '<br>\n')
        writeFileSync(resolve('../src/html/', filename), preRaw)
    }
})()