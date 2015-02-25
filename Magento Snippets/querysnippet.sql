UPDATE core_config_data SET value = REPLACE (value, 'old_url', 'new_url');

/* MAMP users:
 * 
 * Table: core_config_data
 * 	- scope: 'websites' 	path: 'web/secure/base_url'
 * 	- scope: 'websites' 	path: 'web/unsecure/base_url'
 * 
 * Append 'index.php' to the value
 * 
 */
