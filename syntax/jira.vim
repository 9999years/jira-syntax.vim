" JIRA syntax file
" Language: Atlassian JIRA Markup
" Maintainer: Rebecca Turner <rbt@sent.as>
" Repository: github.com/9999years/jira-syntax.vim

" if exists('b:did_jira_syntax') | finish | endif
" let b:did_jira_syntax = 1

let s:cpo_save = &cpo
set cpo&vim

syn region jiraHeading matchgroup=jiraHeadingMarker start='^h[1-6]\.' end='$' oneline

syn match jiraListMarker '^[#*-]*\s'

syn region jiraStrong start='\*\<' end='\>\*' oneline
syn region jiraEmph start='\<_' end='_\>' oneline
syn region jiraCitation start='??\<' end='\>??' oneline
syn region jiraDeleted start='-\<' end='\>-' oneline
syn region jiraInserted start='+\<' end='\>+' oneline
syn region jiraSup start='\^\<' end='\>\^' oneline
syn region jiraSub start='\~\<' end='\>\~' oneline
syn region jiraMono start='{{' end='}}' oneline

syn region jiraBlockQuote start='^bq.' end='\n\s*\n'

syn region jiraBlockQuote2 start='{quote}' end='{quote}'
syn region jiraColor start='{color:[^}]\+}' end='{color}'
syn region jiraCode start='{code\(:[^}]*\)\?}' end='{code}'

syn region jiraAnchorLink start='\[#' end=']' containedin=jiraLinkOuter oneline
syn region jiraUserLink start='\[\~' end=']' containedin=jiraLinkOuter oneline
syn region jiraAttachmentLink start='\[\^' end=']' containedin=jiraLinkOuter oneline
syn region jiraMailtoLink start='\[mailto:' end=']' containedin=jiraLinkOuter oneline
syn region jiraFileLink start='\[file:///' end=']' containedin=jiraLinkOuter oneline
syn region jiraLinkDisplay start='\[\zs' end='\ze|' containedin=jiraLinkOuter oneline

syn cluster jiraLink contains=jiraAnchor,jiraUserLink,jiraAttachmentLink,jiraMailtoLink,jiraFileLink,jiraLinkDisplay

syn region jiraLinkOuter start='\[' end=']' contains=jiraLink oneline

syn match jiraAnchor '{anchor:[^}]\+}'

syn match jiraHrule '^\s*----\s*$'
syn match jiraEmDash '\(^\|\s\)\zs---\ze\($\|\s\)'
syn match jiraEnDash '\(^\|\s\)\zs--\ze\($\|\s\)'

hi link jiraEmDash Keyword
hi link jiraEnDash Keyword
hi link jiraHrule Keyword

hi link jiraHeading Identifier
hi link jiraHeadingMarker Keyword

hi link jiraInserted DiffAdd
hi link jiraDeleted DiffDelete

hi link jiraStrong Operator
hi link jiraEmph Function
hi link jiraCitation Underlined
hi link jiraSup Type
hi link jiraSub StorageClass
hi link jiraMono Define
hi link jiraCode Define

hi link jiraLink Underlined
hi link jiraLinkOuter Underlined

hi link jiraListMarker Operator

hi link jiraBlockQuote Comment
hi link jiraBlockQuote2 Comment

let b:current_syntax = "jira"

let &cpo = s:cpo_save
unlet s:cpo_save
