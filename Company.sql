select 
extract(YEAR from to_date(DATE_1, 'DD-MM-YYYY')) Year,extract(MONTH from to_date(DATE_1, 'DD-MM-YYYY')) Month, max(OPEN)
FROM company
where COMPANY='GOOGL' 
group by extract(YEAR from to_date(DATE_1, 'DD-MM-YYYY')), extract(MONTH from to_date(DATE_1, 'DD-MM-YYYY'))
order by Year desc, Month;

select extract(YEAR from to_date(DATE_1, 'DD-MM-YYYY')) Year, STDDEV(VOLUME) FROM company
where COMPANY='NTFLX'
group by extract(YEAR from to_date(DATE_1, 'DD-MM-YYYY'))
order by Year desc;

select DATE_1, OPEN, CLOSE, (OPEN-CLOSE) as Daily_Return
from company 
where company = 'AMZN';