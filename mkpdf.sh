#/bin/bash
chrome-headless-render-pdf --url http://localhost:3000/ --pdf article.pdf --paper-width 8.27 --paper-height 11.69 --no-margins --include-background \
    --display-header-footer --header-template ' ' \
    --footer-template '&nbsp;'
