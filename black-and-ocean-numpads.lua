-- clear()

-- lmc_assign_keyboard('--->> ASSIGNED KEYBOARD <<---')

lmc_device_set_name('Black Numpad', 'C761488')
-- lmc_device_set_name('Black Numpad', '396D0436')
		-- Alternate Device ID.
lmc_device_set_name('Ocean Numpad', 'D512B5F')

-- lmc_print_devices()

lmc.minimizeToTray = true
lmc_minimize()

lmc_set_handler('Black Numpad', function(button, direction)
    if (direction == 0) then
		return
	end

	lmc_send_input(0x86, 0, 0)
	lmc_send_input(button, 0, 0)
	lmc_send_input(button, 0, 2)
	lmc_send_input(0x86, 0, 2)
end)

lmc_set_handler('Ocean Numpad', function(button, direction)
    if (direction == 0) then
		return
	end

	lmc_send_input(0x85, 0, 0)
	lmc_send_input(button, 0, 0)
	lmc_send_input(button, 0, 2)
	lmc_send_input(0x85, 0, 2)
end)
