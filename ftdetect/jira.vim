if exists('b:did_jira_syntax_ftdetect') | finish | endif
let b:did_jira_syntax_ftdetect = 1

au BufRead,BufNewFile *.jira setfiletype jira
