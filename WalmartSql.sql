select * from walmart.cleaned_walmart_data ;

#Top stores by total sales
select Store, sum(Weekly_Sales) from walmart.cleaned_walmart_data
group by Store
order by Weekly_Sales desc;





#Top stores by average weekly sales
select Store, avg(Weekly_Sales) from walmart.cleaned_walmart_data
group by Store
order by Weekly_Sales desc;

#Total sales by the year
select Year, sum(Weekly_Sales) from walmart.cleaned_walmart_data
group by Year
order by Weekly_Sales desc;



#Finding top holidays
Select Day,Month, sum(Weekly_Sales), avg(Weekly_Sales) from walmart.cleaned_walmart_data
where Holiday_Flag=1
group by Day,Month
order by sum(Weekly_Sales) desc ;



