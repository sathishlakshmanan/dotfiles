local M = {}

function M.main(cursor_position)
    local input = vim.fn.input("Input: ")  -- Prompt for user input
    local current_char = input:sub(cursor_position, cursor_position)  -- Get the character at the cursor position

    if current_char == ")" then
        cursor_position = cursor_position + 1  -- Skip the ')' character
    end

    cursor_position = cursor_position + 1  -- Move cursor to the next character

    print("Updated cursor position: " .. cursor_position)
end

return M
-- local M = {}
--
-- function M.main()
--     local current_line = vim.api.nvim_get_current_line()  -- Get the current line
--     cursor_position = vim.api.nvim_win_get_cursor(0)
--     cursor_position = cursor_position + 2
--     local cursor_col = cursor_position[2]
--
--     -- if cursor_col > 0 and cursor_col <= #current_line then
--     --     local next_char = current_line:sub(cursor_col, cursor_col)
--     --
--     --     if next_char == ")" then
--     --         cursor_position = cursor_position + 1  -- Skip the ')' character
--     --     end
--     --
--     --     cursor_position = cursor_position + 1  -- Move cursor to the next character
--     print("cp: ", cursor_position)
--     print("cc: ", cursor_col)
--     next_char = current_line:sub(cursor_col, cursor_col)
--     print("next_char: ", next_char)
--     -- end
--
--     return nil
-- end
--
-- return M