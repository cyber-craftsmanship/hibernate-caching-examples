CREATE TYPE experience_level AS ENUM ('SE', 'MI', 'EN', 'EX');
CREATE TYPE employment_type AS ENUM ('FT', 'PT', 'CT', 'FL');
CREATE TYPE salary_currency AS ENUM ('USD', 'EUR', 'GBP', 'INR', 'CAD', 'HKD','CHF');
CREATE TYPE company_size AS ENUM ('M', 'L', 'S');
CREATE TYPE employee_residence AS ENUM ('US', 'GB', 'CA', 'ES', 'IN', 'DE', 'NG', 'HK', 'PT','NL','CH','CF');
CREATE TYPE company_location AS ENUM ('US', 'GB', 'CA', 'ES', 'IN', 'DE', 'NG', 'HK', 'PT','NL','CH','CF');

create table salaries
(
    work_year          integer,
    experience_level   experience_level,
    employment_type    employment_type,
    job_title          varchar(64),
    salary             int,
    salary_currency    salary_currency,
    salary_in_usd      int,
    employee_residence employee_residence,
    remote_ratio       int,
    company_location   company_location,
    company_size       company_size
);

--drop table salaries;
--drop type employee_residence;
--drop type company_location;
--drop type salary_currency;

insert into salaries (work_year, experience_level, employment_type, job_title, salary, salary_currency, salary_in_usd,
                      employee_residence, remote_ratio, company_location, company_size)
values (2023, 'SE', 'FT', 'Principal Data Scientist', 80000, 'EUR', 85847, 'ES', 100, 'ES', 'L'),
       (2023, 'MI', 'CT', 'ML Engineer', 30000, 'USD', 30000, 'US', 100, 'US', 'S'),
       (2023, 'MI', 'CT', 'ML Engineer', 25500, 'USD', 25500, 'US', 100, 'US', 'S'),
       (2023, 'SE', 'FT', 'Data Scientist', 175000, 'USD', 175000, 'CA', 100, 'CA', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 120000, 'USD', 120000, 'CA', 100, 'CA', 'M'),
       (2023, 'SE', 'FT', 'Applied Scientist', 222200, 'USD', 222200, 'US', 0, 'US', 'L'),
       (2023, 'SE', 'FT', 'Applied Scientist', 136000, 'USD', 136000, 'US', 0, 'US', 'L'),
       (2023, 'SE', 'FT', 'Data Scientist', 219000, 'USD', 219000, 'CA', 0, 'CA', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 141000, 'USD', 141000, 'CA', 0, 'CA', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 147100, 'USD', 147100, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 90700, 'USD', 90700, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Analyst', 130000, 'USD', 130000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Analyst', 100000, 'USD', 100000, 'US', 100, 'US', 'M'),
       (2023, 'EN', 'FT', 'Applied Scientist', 213660, 'USD', 213660, 'US', 0, 'US', 'L'),
       (2023, 'EN', 'FT', 'Applied Scientist', 130760, 'USD', 130760, 'US', 0, 'US', 'L'),
       (2023, 'SE', 'FT', 'Data Modeler', 147100, 'USD', 147100, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Modeler', 90700, 'USD', 90700, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 170000, 'USD', 170000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 150000, 'USD', 150000, 'US', 0, 'US', 'M'),
       (2023, 'MI', 'FT', 'Data Analyst', 150000, 'USD', 150000, 'US', 100, 'US', 'M'),
       (2023, 'MI', 'FT', 'Data Analyst', 110000, 'USD', 110000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Research Engineer', 275000, 'USD', 275000, 'DE', 0, 'DE', 'M'),
       (2023, 'SE', 'FT', 'Research Engineer', 174000, 'USD', 174000, 'DE', 0, 'DE', 'M'),
       (2023, 'SE', 'FT', 'Analytics Engineer', 230000, 'USD', 230000, 'GB', 100, 'GB', 'M'),
       (2023, 'SE', 'FT', 'Analytics Engineer', 143200, 'USD', 143200, 'GB', 100, 'GB', 'M'),
       (2023, 'SE', 'FT', 'Business Intelligence Engineer', 225000, 'USD', 225000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Business Intelligence Engineer', 156400, 'USD', 156400, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Machine Learning Engineer', 200000, 'USD', 200000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Machine Learning Engineer', 130000, 'USD', 130000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Strategist', 90000, 'USD', 90000, 'CA', 0, 'CA', 'M'),
       (2023, 'SE', 'FT', 'Data Strategist', 72000, 'USD', 72000, 'CA', 0, 'CA', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 253200, 'USD', 253200, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 90700, 'USD', 90700, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Computer Vision Engineer', 342810, 'USD', 342810, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Computer Vision Engineer', 184590, 'USD', 184590, 'US', 0, 'US', 'M'),
       (2023, 'MI', 'FT', 'Data Engineer', 162500, 'USD', 162500, 'US', 0, 'US', 'M'),
       (2023, 'MI', 'FT', 'Data Engineer', 130000, 'USD', 130000, 'US', 0, 'US', 'M'),
       (2023, 'MI', 'FT', 'Data Analyst', 105380, 'USD', 105380, 'US', 0, 'US', 'M'),
       (2023, 'MI', 'FT', 'Data Analyst', 64500, 'USD', 64500, 'US', 0, 'US', 'M'),
       (2023, 'EN', 'FT', 'Data Quality Analyst', 100000, 'USD', 100000, 'NG', 100, 'NG', 'L'),
       (2023, 'EN', 'FT', 'Compliance Data Analyst', 30000, 'USD', 30000, 'NG', 100, 'NG', 'L'),
       (2022, 'MI', 'FT', 'Machine Learning Engineer', 1650000, 'INR', 20984, 'IN', 50, 'IN', 'L'),
       (2023, 'EN', 'FT', 'Applied Scientist', 204620, 'USD', 204620, 'US', 0, 'US', 'L'),
       (2023, 'EN', 'FT', 'Applied Scientist', 110680, 'USD', 110680, 'US', 0, 'US', 'L'),
       (2023, 'SE', 'FT', 'Data Engineer', 270703, 'USD', 270703, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 221484, 'USD', 221484, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 212750, 'USD', 212750, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 185000, 'USD', 185000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 262000, 'USD', 262000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 245000, 'USD', 245000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 275300, 'USD', 275300, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 183500, 'USD', 183500, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 218500, 'USD', 218500, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 199098, 'USD', 199098, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 203300, 'USD', 203300, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 123600, 'USD', 123600, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Research Engineer', 189110, 'USD', 189110, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Research Engineer', 139000, 'USD', 139000, 'US', 0, 'US', 'M'),
       (2023, 'EX', 'FT', 'Data Scientist', 258750, 'USD', 258750, 'US', 0, 'US', 'M'),
       (2023, 'EX', 'FT', 'Data Scientist', 185000, 'USD', 185000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 231500, 'USD', 231500, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 166000, 'USD', 166000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 172500, 'USD', 172500, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 110500, 'USD', 110500, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 238000, 'USD', 238000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 176000, 'USD', 176000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 237000, 'USD', 237000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 201450, 'USD', 201450, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Applied Scientist', 309400, 'USD', 309400, 'US', 0, 'US', 'L'),
       (2023, 'SE', 'FT', 'Applied Scientist', 159100, 'USD', 159100, 'US', 0, 'US', 'L'),
       (2023, 'SE', 'FT', 'Data Engineer', 115000, 'USD', 115000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 81500, 'USD', 81500, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 237000, 'USD', 237000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 201450, 'USD', 201450, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Computer Vision Engineer', 280000, 'USD', 280000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Computer Vision Engineer', 210000, 'USD', 210000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Architect', 280100, 'USD', 280100, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Architect', 168100, 'USD', 168100, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 193500, 'USD', 193500, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 139000, 'USD', 139000, 'US', 100, 'US', 'M'),
       (2023, 'MI', 'FT', 'Data Scientist', 510000, 'HKD', 65062, 'HK', 0, 'HK', 'L'),
       (2023, 'SE', 'FT', 'Machine Learning Engineer', 150000, 'USD', 150000, 'PT', 100, 'US', 'M'),
       (2023, 'MI', 'FT', 'Applied Machine Learning Engineer', 65000, 'EUR', 69751, 'IN', 100, 'DE', 'S'),
       (2022, 'EN', 'FT', 'AI Developer', 300000, 'USD', 300000, 'IN', 50, 'IN', 'L'),
       (2023, 'MI', 'FT', 'Machine Learning Engineer', 90000, 'EUR', 96578, 'NL', 100, 'NL', 'L'),
       (2023, 'SE', 'FT', 'Business Intelligence Engineer', 185900, 'USD', 185900, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Business Intelligence Engineer', 129300, 'USD', 129300, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 225000, 'USD', 225000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 175000, 'USD', 175000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 185000, 'USD', 185000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 140000, 'USD', 140000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 45000, 'EUR', 48289, 'ES', 0, 'ES', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 36000, 'EUR', 38631, 'ES', 0, 'ES', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 105000, 'USD', 105000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 70000, 'USD', 70000, 'US', 0, 'US', 'M'),
       (2023, 'EN', 'FT', 'Machine Learning Engineer', 163196, 'USD', 163196, 'US', 0, 'US', 'M'),
       (2023, 'EN', 'FT', 'Machine Learning Engineer', 145885, 'USD', 145885, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 217000, 'USD', 217000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 185000, 'USD', 185000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Analyst', 202800, 'USD', 202800, 'US', 0, 'US', 'L'),
       (2023, 'SE', 'FT', 'Data Analyst', 104300, 'USD', 104300, 'US', 0, 'US', 'L'),
       (2023, 'SE', 'FT', 'Data Analyst', 145000, 'USD', 145000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Analyst', 65000, 'USD', 65000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 165000, 'USD', 165000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 132300, 'USD', 132300, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 179170, 'USD', 179170, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 94300, 'USD', 94300, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Analytics Engineer', 152500, 'USD', 152500, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Analytics Engineer', 116450, 'USD', 116450, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 247300, 'USD', 247300, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 133800, 'USD', 133800, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Research Engineer', 203000, 'USD', 203000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Research Engineer', 133000, 'USD', 133000, 'US', 0, 'US', 'M'),
       (2023, 'EN', 'FT', 'Research Scientist', 220000, 'USD', 220000, 'US', 50, 'US', 'L'),
       (2022, 'EN', 'FT', 'Machine Learning Engineer', 54000, 'CHF', 56536, 'CH', 100, 'CH', 'S'),
       (2023, 'SE', 'FT', 'Data Scientist', 150000, 'USD', 150000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 120000, 'USD', 120000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Analytics Engineer', 289800, 'USD', 289800, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Analytics Engineer', 214000, 'USD', 214000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Analytics Engineer', 179820, 'USD', 179820, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Analytics Engineer', 143860, 'USD', 143860, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Machine Learning Engineer', 283200, 'USD', 283200, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Machine Learning Engineer', 188800, 'USD', 188800, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Analytics Engineer', 289800, 'USD', 289800, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Analytics Engineer', 214200, 'USD', 214200, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 185900, 'USD', 185900, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 129300, 'USD', 129300, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 252000, 'USD', 252000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 129000, 'USD', 129000, 'US', 0, 'US', 'M'),
       (2023, 'MI', 'FT', 'Data Analytics Manager', 155000, 'USD', 155000, 'US', 0, 'US', 'M'),
       (2023, 'MI', 'FT', 'Data Analytics Manager', 140000, 'USD', 140000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 161800, 'USD', 161800, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 141600, 'USD', 141600, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Machine Learning Engineer', 342300, 'USD', 342300, 'US', 0, 'US', 'L'),
       (2023, 'SE', 'FT', 'Machine Learning Engineer', 176100, 'USD', 176100, 'US', 0, 'US', 'L'),
       (2023, 'MI', 'FT', 'Data Engineer', 100000, 'USD', 100000, 'US', 100, 'US', 'M'),
       (2023, 'MI', 'FT', 'Data Engineer', 70000, 'USD', 70000, 'US', 100, 'US', 'M'),
       (2023, 'EN', 'FT', 'Data Engineer', 85000, 'USD', 85000, 'US', 0, 'US', 'M'),
       (2023, 'EN', 'FT', 'Data Engineer', 65000, 'USD', 65000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 138784, 'USD', 138784, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 83270, 'USD', 83270, 'US', 100, 'US', 'M'),
       (2023, 'EN', 'FT', 'Data Analyst', 75000, 'USD', 75000, 'US', 0, 'US', 'M'),
       (2023, 'EN', 'FT', 'Data Analyst', 70000, 'USD', 70000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Analyst', 204500, 'USD', 204500, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Analyst', 138900, 'USD', 138900, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Machine Learning Engineer', 318300, 'USD', 318300, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Machine Learning Engineer', 212200, 'USD', 212200, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 95000, 'USD', 95000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 75000, 'USD', 75000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 195000, 'USD', 195000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 160000, 'USD', 160000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Analytics Engineer', 230000, 'USD', 230000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Analytics Engineer', 143200, 'USD', 143200, 'US', 0, 'US', 'M'),
       (2023, 'MI', 'FT', 'Data Engineer', 100000, 'USD', 100000, 'US', 100, 'US', 'M'),
       (2023, 'MI', 'FT', 'Data Engineer', 70000, 'USD', 70000, 'US', 100, 'US', 'M'),
       (2023, 'MI', 'FT', 'Business Data Analyst', 105000, 'USD', 105000, 'US', 50, 'US', 'L'),
       (2023, 'MI', 'FT', 'Applied Data Scientist', 1700000, 'INR', 20670, 'IN', 100, 'IN', 'L'),
       (2023, 'MI', 'FT', 'Data Analyst', 38000, 'GBP', 46178, 'GB', 0, 'GB', 'M'),
       (2023, 'MI', 'FT', 'Data Analyst', 35000, 'GBP', 42533, 'GB', 0, 'GB', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 145000, 'USD', 145000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 115000, 'USD', 115000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Analyst', 168400, 'USD', 168400, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Analyst', 105200, 'USD', 105200, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Applied Scientist', 309400, 'USD', 309400, 'US', 0, 'US', 'L'),
       (2023, 'SE', 'FT', 'Applied Scientist', 159100, 'USD', 159100, 'US', 0, 'US', 'L'),
       (2023, 'SE', 'FT', 'Machine Learning Engineer', 190000, 'USD', 190000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Machine Learning Engineer', 150000, 'USD', 150000, 'US', 0, 'US', 'M'),
       (2023, 'MI', 'FT', 'Data Engineer', 162500, 'USD', 162500, 'US', 0, 'US', 'M'),
       (2023, 'MI', 'FT', 'Data Engineer', 130000, 'USD', 130000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Analytics Engineer', 150000, 'USD', 150000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Analytics Engineer', 120000, 'USD', 120000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 145000, 'USD', 145000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 120000, 'USD', 120000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Applied Scientist', 222200, 'USD', 222200, 'US', 0, 'US', 'L'),
       (2023, 'SE', 'FT', 'Applied Scientist', 136000, 'USD', 136000, 'US', 0, 'US', 'L'),
       (2023, 'SE', 'FT', 'Data Analyst', 45000, 'GBP', 54685, 'CF', 100, 'CF', 'M'),
       (2023, 'SE', 'FT', 'Data Analyst', 35000, 'GBP', 42533, 'CF', 100, 'CF', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 241000, 'USD', 241000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 155000, 'USD', 155000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 220000, 'USD', 220000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 190000, 'USD', 190000, 'US', 100, 'US', 'M'),
       (2023, 'MI', 'FT', 'Data Scientist', 55000, 'GBP', 66837, 'GB', 0, 'GB', 'M'),
       (2023, 'MI', 'FT', 'Data Scientist', 45000, 'GBP', 54685, 'GB', 0, 'GB', 'M'),
       (2020, 'EX', 'FT', 'Staff Data Analyst', 15000, 'USD', 15000, 'NG', 0, 'CA', 'M'),
       (2023, 'MI', 'FT', 'ETL Engineer', 70000, 'GBP', 85066, 'GB', 100, 'GB', 'M'),
       (2023, 'MI', 'FT', 'ETL Engineer', 47500, 'GBP', 57723, 'GB', 100, 'GB', 'M'),
       (2023, 'EN', 'FT', 'Data Analyst', 85000, 'USD', 85000, 'US', 100, 'US', 'M'),
       (2023, 'EN', 'FT', 'Data Analyst', 75000, 'USD', 75000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 160000, 'USD', 160000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 140000, 'USD', 140000, 'US', 0, 'US', 'M'),
       (2023, 'MI', 'FT', 'Machine Learning Engineer', 300000, 'USD', 300000, 'US', 0, 'US', 'M'),
       (2023, 'MI', 'FT', 'Machine Learning Engineer', 250000, 'USD', 250000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 228000, 'USD', 228000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 186000, 'USD', 186000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 190000, 'USD', 190000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Scientist', 170000, 'USD', 170000, 'US', 0, 'US', 'M'),
       (2023, 'MI', 'FT', 'Research Engineer', 230000, 'USD', 230000, 'US', 0, 'US', 'M'),
       (2023, 'MI', 'FT', 'Research Engineer', 200000, 'USD', 200000, 'US', 0, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Architect', 180000, 'USD', 180000, 'US', 100, 'US', 'M'),
       (2023, 'SE', 'FT', 'Data Engineer', 130000, 'USD', 130000, 'US', 0, 'US', 'M');

-- ds_salaries DML sql queries:

-- #1. list salaries of ML Engineer specialists in 2023, add sorting by salary increase.
select salary, job_title
from salaries
where job_title = 'ML Engineer'
  and work_year = 2023
order by salary;

-- #2. list country (company_location) with the lowest salary for a Data Scientist in 2023
select company_location
from salaries
where job_title = 'Data Scientist'
  and work_year = 2023
order by salary
limit 1;

-- #3. list the top 5 salaries among all specialists who work completely remotely (remote_ratio = 100)
select *
from salaries
where remote_ratio = '100'
order by salary desc
limit 5;

-- #4. list unique values for column 'employee_residence'
select distinct employee_residence
from salaries;

-- #5. list the number of unique values of the column 'employee_residence'
select count(distinct employee_residence)
from salaries;

-- #6. list the average, minimum and maximum salary for 2023
select min(salary) as min_salary, avg(salary) as avg_salary, max(salary) as max_salary
from salaries
where work_year = 2023;

-- #7. list the 5 highest salaries in 2023 for representatives of the ML Engineer specialty
select salary as salary_in_usd
from salaries
where work_year = 2023
order by salary desc
limit 5;

-- #7.1 list the 5 highest salaries in 2023 for representatives of the ML Engineer specialty and convert to Ukrainian hryvnias.
select salary * 37.56 as salary_in_uah
from salaries
where work_year = 2023
order by salary desc
limit 5;

-- #8. list the unique values of the remote_ratio column, the data format should be a fraction with two decimal places,
-- example: the value 50 should be displayed in the format 0.50
select distinct round((remote_ratio / 100.0), 2) as remote_ratio_formated
from salaries;

-- #9. list the table data by adding the column 'exp_level_full' with the full name of the employee experience levels according to the column 'experience_level'.
-- examples: Entry-level (EN), Mid-level (MI), Senior-level (SE), Executive-level (EX)
select work_year,
       experience_level,
       employment_type,
       job_title,
       salary,
       salary_currency,
       salary_in_usd,
       employee_residence,
       remote_ratio,
       company_location,
       company_size,
       case
           when experience_level = 'EN' then 'Entry-level'
           when experience_level = 'MI' then 'Mid-level'
           when experience_level = 'SE' then 'Senior-level'
           when experience_level = 'EX' then 'Executive-level'
           end as exp_level_full
from salaries;

-- #10. examine or check all columns for missing values
select count(*) - count(employee_residence) as missed
from salaries;

-------------------------------------------------------------------------------------

SELECT COUNT(salary_in_usd)
FROM salaries
WHERE work_year = '2023'
  AND company_size = 'M'
  AND salary_in_usd >= 100000;

SELECT *
FROM salaries
WHERE work_year = '2023'
  AND salary_in_usd > 100000
  AND company_size = 'M';

-- Select tasks examples:

-- 1. all specialists whose salaries are above the average in the table
select *
from salaries
where salary > (select avg(salary) from salaries);

-- 2. list all specialists who live in countries where the average salary is higher than the average among all countries.
select *
from salaries;

select avg(salary)
from salaries;

select *
from salaries
where company_location in (select company_location
                           from salaries
                           group by company_location
                           having avg(salary) > (select avg(salary) from salaries));

-- 3.find the minimum wage among the maximum wages by country
select max(salary), company_location
from salaries
group by company_location
order by 1
limit 1;

-- todo: do not work
-- select min(t.salary)
-- from
-- (select max(salary) as max_salaries, company_location
--  from salaries
--  group by company_location) as t;

-- 4. For each profession, find the difference between the average salary and the maximum salary of all specialists
select max(salary)
from salaries;

select job_title, avg(salary) - (select max(salary) from salaries) diff
from salaries
group by job_title;

-- 5. find data on the employee who receives the second largest salary in the table
select *
from salaries
order by salary desc
limit 2;

select *
from salaries
offset 1;

select *
from (select * from salaries order by salary desc limit 2) as t
offset 1;

-- in short
select *
from salaries
order by salary desc
offset 1 limit 1;
--------------------------------------------------------------------------------

select *
from salaries;
-- TOP 5 jobs in the field of data science in 2023:
select salary
from salaries
where job_title = 'Data Scientist'
  and work_year = 2023
order by salary desc
limit 5;

-- salary of ML Engineer specialists in 2023
select salary
from salaries
where job_title = 'ML Engineer'
  and work_year = 2023;


select *
from salaries
where job_title = 'Data Scientist'
  and work_year = 2023;

select *
from salaries
where salary = 36000
  and job_title = 'Data Scientist'
  and work_year = 2023;

-- list country (company_location) in which it is registered the lowest salary for Data Scientist in 2023
select work_year
     , job_title
     , company_location AS country
     , salary_in_usd
from salaries
where salary_in_usd = (select min(salary_in_usd) from salaries where job_title = 'Data Scientist' and work_year = 2023)
  and work_year = 2023
  and job_title = 'Data Scientist';

-- ready
EXPLAIN ANALYZE
SELECT work_year
     , job_title
     , company_location AS country
     , salary_in_usd
FROM salaries
WHERE job_title = 'Data Scientist'
  AND work_year = '2023'
ORDER BY 4 ASC
LIMIT 5;


-- list Ukrainians (country code UA), add sorting according to the growth of salary
select *
from salaries
where company_location = 'UA'
order by salary asc;

-- top 5 salaries among all specialists who work completely remotely (remote_ratio = 100)
select *
from salaries
where remote_ratio = 100
order by salary desc
limit 5;

-- list all specialists, who in 2023 had a salary of more than $100,000 and worked in medium-sized companies (company_size = 'M')
select *
from salaries
where salary > 100000
  and company_size = 'M';