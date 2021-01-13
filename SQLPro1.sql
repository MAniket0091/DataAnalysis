SELECT 
	YEAR(d.from_date) AS Calender_Year,
   e. gender,
    COUNT(e.emp_no) AS num_of_emp

FROM t_employees e
JOIN t_dept_emp d ON e.emp_no = d.emp_no
GROUP BY Calender_Year, e.gender 
HAVING Calender_Year > 1990
ORDER BY Calender_Year ASC;