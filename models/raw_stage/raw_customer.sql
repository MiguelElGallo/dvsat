SELECT
	a.CUSTKEY, 
	a.CUSTNAME,  
	a.CUSTEMAIL,  
	a.CUSTCOUNTRY,  
	a.CUSTCREATEDATE,  
	a.CUSTCHANGEDATE, 
	a.METAFILENAME, 
	a.METATIMESTAMP 
FROM
   {{ source('source', 'CUSTOMER') }} as a