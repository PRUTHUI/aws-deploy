import snowflake.snowpark as snowpark
from snowflake.snowpark import Session

def AppMain(): 
    print('deployment done v1 @ '+str(dt.datetime.now()))
    session=aws_secret_manager.create_session()
    sql="create or replace table DEV_DS_DB._FORECAST_APP.log1 as select 'test_message v1' from dual"
    message=session.sql(sql).collect()
    
AppMain()  
   
