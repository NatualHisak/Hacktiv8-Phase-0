SELECT count(*) as total_subs, 'Q1' as Quarter
from `bigquery-public-data.san_francisco.bikeshare_trips` a
join `bigquery-public-data.san_francisco.bikeshare_stations` b
ON a.start_station_id = b.station_id
where a.subscriber_type = 'Subscriber'AND a.start_date between "2016-01-01" AND "2016-04-01" AND b.landmark='Redwood City'
UNION ALL
SELECT count(*) as total_subs, 'Q2' as Quarter
from `bigquery-public-data.san_francisco.bikeshare_trips` a
join `bigquery-public-data.san_francisco.bikeshare_stations` b
ON a.start_station_id = b.station_id
where a.subscriber_type = 'Subscriber'AND a.start_date between "2016-04-01" AND "2016-08-01" AND b.landmark='Redwood City'