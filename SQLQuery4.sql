--SELECT NOMBRE,total_subscribers,total_videos,total_views
--FROM  youtube_data_from_python

--SELECT CHARINDEX('@',NOMBRE) FROM youtube_data_from_python

create view view_youtube_data_from_python as 

SELECT 
	CAST(SUBSTRING(NOMBRE,1,CHARINDEX('@',NOMBRE)-1)AS varchar(100)) as channel_name,total_subscribers,total_videos,total_views

FROM 
	youtube_data_from_python