UPDATE core_config_data SET value = REPLACE (value, 'http://staging.aladdin-express.nl/', 'http://freek.local:8888/aladdin/');

/* MAMP users:
 * 
 * Table: core_config_data
 * 	- scope: 'websites' 	path: 'web/secure/base_url'
 * 	- scope: 'websites' 	path: 'web/unsecure/base_url'
 * 
 * Append 'index.php' to the value
 * 
 */