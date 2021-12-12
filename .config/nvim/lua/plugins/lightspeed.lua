-- lightspeed
api.nvim_set_keymap("n", "f", "<Plug>Lightspeed_s", {})
api.nvim_set_keymap("n", "F", "<Plug>Lightspeed_S", {})
api.nvim_set_keymap("n", "t", "<Plug>Lightspeed_s", {})
api.nvim_set_keymap("n", "t", "<Plug>Lightspeed_S", {})
api.nvim_set_keymap("v", "t", "<Plug>Lightspeed_s", {})
api.nvim_set_keymap("v", "T", "<Plug>Lightspeed_S", {})
api.nvim_set_keymap("v", "f", "<Plug>Lightspeed_s", {})
api.nvim_set_keymap("v", "F", "<Plug>Lightspeed_S", {})

-- api.nvim_set_keymap("n", "h", "<Plug>Lightspeed_s", {})
-- api.nvim_set_keymap("n", "H", "<Plug>Lightspeed_S", {})
-- api.nvim_set_keymap("v", "h", "<Plug>Lightspeed_s", {})
-- api.nvim_set_keymap("v", "H", "<Plug>Lightspeed_S", {})

-- nmap <expr> f reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_f" : "f"
-- nmap <expr> F reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_F" : "F"
-- nmap <expr> t reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_t" : "t"
-- nmap <expr> T reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_T" : "T"

require("lightspeed").setup({
  jump_to_first_match = true,
  jump_on_partial_input_safety_timeout = 400,
  -- This can get _really_ slow if the window has a lot of content,
  -- turn it on only if your machine can always cope with it.
  highlight_unique_chars = false,
  grey_out_search_area = true,
  match_only_the_start_of_same_char_seqs = true,
  limit_ft_matches = 5,
  full_inclusive_prefix_key = "<c-x>",
  -- By default, the values of these will be decided at runtime,
  -- based on `jump_to_first_match`.
  labels = nil,
  cycle_group_fwd_key = nil,
  cycle_group_bwd_key = nil,
})
