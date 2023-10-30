local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.expand_conditions")

local group = vim.api.nvim_create_augroup("Lua Snippets",
{clear = true})
local file_pattern = "*.py"

local snippets = {}
local autosnippets = {}

-- local funnction cs(trigger, nocdes, opts)

-- Start Refactoring
-- cs("subplot", fmt("vim.cmd[[{}]]", { i(1, "") }))
-- End Refactoring

local subplot = s("fig, ax", {
  t("fig, ax = plt.subplots(figsize="),
  i(1, "None"),
  t(")"),
})
local subplot2 = s("fig, (2", {
  t({"fig, (ax1, ax2) = plt.subplots(nrows=2, figsize="}),
  i(1, "None"),
  t(")"),
})
local subplot4 = s("fig, (4", {
  t({"fig, ((ax1, ax2), (ax3, ax4)) = \\",
  "    plt.subplots(nrows=2, ncols=2, figsize="}),
  i(1, "None"),
  t(")"),
})
table.insert(snippets, subplot)
table.insert(snippets, subplot2)
table.insert(snippets, subplot4)


return snippets, autosnippets
