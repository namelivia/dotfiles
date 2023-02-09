return {
  -- Fzf for file searching
  { 'junegunn/fzf', build = ":call fzf#install()" },
  'junegunn/fzf.vim',
}
