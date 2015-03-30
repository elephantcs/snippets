/*
 * If there are problems reindexing, this snippet can help
 *
 * Explained at: http://stackoverflow.com/questions/8111889/cant-re-index-new-products-after-upgrading-to-version-1-6
 * Example error: SQLSTATE[23000]: Integrity constraint violation: 1452 Cannot add or update a child row: a foreign key constraint fails (`evapes`.`catalog_product_index_eav`, CONSTRAINT `FK_CAT_PRD_IDX_EAV_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE)
 *
 * tommy@elephantcs.nl
 *
 */

delete FROM `catalog_product_entity_datetime` where entity_id not in (select entity_id from catalog_product_entity);
delete FROM `catalog_product_entity_decimal` where entity_id not in (select entity_id from catalog_product_entity);
delete FROM `catalog_product_entity_gallery` where entity_id not in (select entity_id from catalog_product_entity);
delete FROM `catalog_product_entity_group_price` where entity_id not in (select entity_id from catalog_product_entity);
delete FROM `catalog_product_entity_int` where entity_id not in (select entity_id from catalog_product_entity);
delete FROM `catalog_product_entity_media_gallery` where entity_id not in (select entity_id from catalog_product_entity);
delete FROM `catalog_product_entity_text` where entity_id not in (select entity_id from catalog_product_entity);
delete FROM `catalog_product_entity_tier_price` where entity_id not in (select entity_id from catalog_product_entity);
delete FROM `catalog_product_entity_varchar` where entity_id not in (select entity_id from catalog_product_entity);

#originals with formatting fixed:
delete from `catalog_category_product` WHERE product_id not in(select entity_id from catalog_product_entity);
delete from `catalog_category_product` WHERE category_id not in(select entity_id from catalog_category_entity);
delete from `catalog_product_website` WHERE product_id not in(select entity_id from catalog_product_entity);
delete from `catalog_product_index_eav_idx` WHERE entity_id not in(select entity_id from catalog_product_entity);
delete from `catalog_product_index_eav` WHERE entity_id not in(select entity_id from catalog_product_entity);
delete from `catalog_product_link` WHERE product_id not in(select entity_id from catalog_product_entity);
delete from `catalog_product_relation` WHERE parent_id not in(select entity_id from catalog_product_entity);