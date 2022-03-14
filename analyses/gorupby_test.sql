with orders as (
    select
        user_id as customer_id,
        order_date,
		status,
		count(*) as cnt
    from "devin_test_jaffle_shop"."orders"
	{{ group_by(n=3) }}
)
select * from orders