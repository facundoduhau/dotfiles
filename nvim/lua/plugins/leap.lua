return {
  "ggandor/leap.nvim",

  config = function ()
    local leap = require('leap')
    leap.opts.case_sensitive = true
    leap.opts.substitute_chars = { ['\r'] = '¬' }
    leap.opts.special_keys.prev_target = '<s-enter>'
    require('leap').create_default_mappings()
  end
}
