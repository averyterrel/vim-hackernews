"  vim-hackernews
"  --------------
"  Browse Hacker News (news.ycombinator.com) inside Vim.
"
"  Author:  ryanss <ryanssdev@icloud.com>
"  Website: https://github.com/ryanss/vim-hackernews
"  License: MIT (see LICENSE file)
"  Version: 0.1.1


if !has('python3')
    echo "HackerNews.vim Error: Requires Vim compiled with +python"
    finish
endif


" Import Python code
execute "python3 import sys"
execute "python3 sys.path.append('" . expand("<sfile>:p:h") . "')"
execute "python3 from hackernews import hacker_news, hacker_news_link"


command! HackerNews python3 hacker_news()


au! BufRead,BufNewFile *.hackernews set filetype=hackernews
