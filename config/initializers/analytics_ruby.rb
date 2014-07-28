Analytics = Segment::Analytics.new({
	write_key: 'r23utvuoaw',
	on_error: Proc.new { |status, msg| print msg }
})