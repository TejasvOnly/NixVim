local function toggle_definition()
    -- Store the original cursor position
    local original_pos = vim.api.nvim_win_get_cursor(0)

    -- Attempt to jump to the definition
    vim.cmd("Lspsaga goto_definition")

    -- Small delay to allow command to process; adjust as necessary
    vim.defer_fn(function()
        -- Get the new cursor position
        local new_pos = vim.api.nvim_win_get_cursor(0)

        -- Compare positions (line and column)
        if original_pos[1] == new_pos[1] and original_pos[2] == new_pos[2] then
            -- If the cursor hasn't moved, call finder
            vim.cmd("Lspsaga finder")
        end
    end, 100) -- Delay time in milliseconds
end

vim.api.nvim_create_user_command("ToggleDefinition", toggle_definition, {})

if string.match(vim.loop.os_uname().release, "WSL2") then
    vim.g.clipboard = {
        copy = {
            ["+"] = "win32yank.exe -i --crlf",
            ["*"] = "win32yank.exe -i --crlf",
        },
        paste = {
            ["+"] = "win32yank.exe -o --lf",
            ["*"] = "win32yank.exe -o --lf",
        },
    }
end

-- quickfix list delete keymap
function Remove_qf_item()
    local curqfidx = vim.fn.line(".")
    local qfall = vim.fn.getqflist()

    -- Return if there are no items to remove
    if #qfall == 0 then
        return
    end

    -- Remove the item from the quickfix list
    table.remove(qfall, curqfidx)
    vim.fn.setqflist(qfall, "r")

    -- Reopen quickfix window to refresh the list
    vim.cmd("copen")

    -- If not at the end of the list, stay at the same index, otherwise, go one up.
    local new_idx = curqfidx < #qfall and curqfidx or math.max(curqfidx - 1, 1)

    -- Set the cursor position directly in the quickfix window
    local winid = vim.fn.win_getid() -- Get the window ID of the quickfix window
    vim.api.nvim_win_set_cursor(winid, { new_idx, 0 })
end

vim.cmd("command! RemoveQFItem lua Remove_qf_item()")
vim.api.nvim_command("autocmd FileType qf nnoremap <buffer> dd :RemoveQFItem<cr>")
