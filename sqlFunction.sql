use frist;
select * from boy;

#uppercase...
select ucase(name) from boy;

#LowerCase...
select lcase(name) from boy;

#mid function
select mid(name , 1,5) from boy;

#substring similar to mid function...
select substring('SQL Java', 1, 3);

#length function
select length(name) from boy;

#Round funtion
select round(999.8);

#reverse() function
select reverse('Barbie');

#Trim() function
select trim('  Barbie Doll  ');

select ltrim('  Barbie Doll  ');

select rtrim('    Barbie Doll     ');

#ASCII() function...
select ascii(name) from boy;

#Space() function...
select space(12);

#hash function
select sha1('lish');
