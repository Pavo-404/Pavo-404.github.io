USE youtube_db
--check the data type of columns 
SELECT 
	COLUMN_NAME,
	DATA_TYPE
FROM
	INFORMATION_SCHEMA.COLUMNS
WHERE
	TABLE_NAME = 'view_youtube_data_from_python'

--check if there duplicate 
SELECT channel_name,
	COUNT(*) as dup_count
from 
	view_youtube_data_from_python
Group by
	channel_name 
HAVING	COUNT(*) >1

