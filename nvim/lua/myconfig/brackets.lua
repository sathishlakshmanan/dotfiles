function check_and_move(input_char)
    local cursor_pos = vim.fn.getpos('.')

    local current_line = vim.fn.getline(cursor_pos[2])
    local next_char = current_line:sub(cursor_pos[3] + 1, cursor_pos[3] + 1)

    if next_char == input_char then
        vim.fn.feedkeys('la', 'n') -- move one character right and go into insert mode
    else
        vim.fn.feedkeys('a' .. input_char, 'n') -- Perform default behavior of input_char
    end

end
