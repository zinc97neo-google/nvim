local custom_path = "C:\\Users\\zhang\\AppData\\Local\\nvim\\?.lua"
package.path = custom_path .. ";" .. package.path

require("core.keymaps")
require("core.options")
require("plugins.setup")
