Given(/^a board like this:$/) do |table|
	@board = table.raw
end

When(/^player (x|y) plays in row (\d+), column (\d+)$/) do |player, row, col|
	row, col = row.to_i, col.to_i
	if(player == 'x')
    	@board[row][col] = 'x'
    else
    	@board[row][col] = '0'
    end
end

Then(/^the board should look like this:$/) do |expected_table|
	expected_table.diff!(@board)
end