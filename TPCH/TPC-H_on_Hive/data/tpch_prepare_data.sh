hadoop fs -mkdir /tpch/

hadoop fs -mkdir /tpch/customer
hadoop fs -mkdir /tpch/lineitem
hadoop fs -mkdir /tpch/nation
hadoop fs -mkdir /tpch/orders
hadoop fs -mkdir /tpch/part
hadoop fs -mkdir /tpch/partsupp
hadoop fs -mkdir /tpch/region
hadoop fs -mkdir /tpch/supplier

hadoop fs -copyFromLocal customer.tbl /tpch/customer/
hadoop fs -copyFromLocal lineitem.tbl /tpch/lineitem/
hadoop fs -copyFromLocal nation.tbl /tpch/nation/
hadoop fs -copyFromLocal orders.tbl /tpch/orders/
hadoop fs -copyFromLocal part.tbl /tpch/part/
hadoop fs -copyFromLocal partsupp.tbl /tpch/partsupp/
hadoop fs -copyFromLocal region.tbl /tpch/region/
hadoop fs -copyFromLocal supplier.tbl /tpch/supplier/
