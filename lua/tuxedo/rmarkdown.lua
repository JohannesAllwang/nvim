local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

-- https://rmarkdown.rstudio.com/docs/reference/render.html

function rscript(script)
  out = [[:w<cr>:!Rscript -e "]]..script..[["<cr>]]
  return out
end

torep  = [[
render(
  '%',
  output_format = 'html',
  output_file = 'test',
  output_dir = '~/LRZ Sync+Share/master-thesis/reports/tryscan/',
  output_options = NULL,
  output_yaml = '~/LRZ Sync+Share/master-thesis/reports/tum_word_yaml.yaml',
  intermediates_dir = NULL,
  knit_root_dir = NULL,
  runtime = c("auto", "static", "shiny", "shinyrmd", "shiny_prerendered"),
  clean = TRUE,
  params = NULL,
  knit_meta = NULL,
  envir = parent.frame(),
  run_pandoc = TRUE,
  quiet = FALSE,
  encoding = "UTF-8"
)
]]

map('n', '<leader>rmrm', [[:w<cr>:!Rscript -e "rmarkdown::render('%')"]], default_opts)
map('n', '<leader>rmh', [[:w<cr>:!Rscript -e "rmarkdown::render('%', output_dir='~/LRZ Sync+Share/master-thesis/reports/tryscan/')"]], default_opts)
map('n', '<leader>roh', [[:TermExec cmd='brave "~/LRZ Sync+Share/master-thesis/reports/tryscan/%:t:r.html"']], default_opts)
map('n', '<leader>rmw', [[:w<cr>:!Rscript -e "rmarkdown::render('%', output_format='word', output_dir='~/LRZ Sync+Share/master-thesis/reports/tryscan/')"]], default_opts)
map('n', '<leader>rmpd', [[:w<cr>:!Rscript -e "rmarkdown::render('%', output_dir='~/LRZ Sync+Share/master-thesis/reports/tryscan/', output_format='pdf_document')"]], default_opts)
map('n', '<leader>rop', [[:TermExec cmd='zathura "~/LRZ Sync+Share/master-thesis/reports/tryscan/%:t:r.pdf"']], default_opts)
map('n', '<leader>rmpp', [[:w<cr>:!Rscript -e "rmarkdown::render('%', output_dir='~/LRZ Sync+Share/master-thesis/reports/tryscan/', output_format='powerpoint_presentation', output_yaml='~/LRZ Sync+Share/master-thesis/reports/tum_powerpoint_presentation.yaml')"]], default_opts)
map('n', '<leader>rmr', [[:w<cr>:!Rscript -e "rmarkdown::render('%', output_yaml='header.yaml')"]], default_opts)
map('n', '<leader>rmrs', [[:w<cr>:!Rscript -e "rmarkdown::render_site()"]], default_opts)

-- render(
--   input,
--   output_format = NULL,
--   output_file = NULL,
--   output_dir = NULL,
--   output_options = NULL,
--   output_yaml = NULL,
--   intermediates_dir = NULL,
--   knit_root_dir = NULL,
--   runtime = c("auto", "static", "shiny", "shinyrmd", "shiny_prerendered"),
--   clean = TRUE,
--   params = NULL,
--   knit_meta = NULL,
--   envir = parent.frame(),
--   run_pandoc = TRUE,
--   quiet = FALSE,
--   encoding = "UTF-8"
-- )
