<?php

/**
 * @file
 * Contains Batch API callbacks used during installation of Drupal WEM.
 */

/**
 * BatchAPI callback.
 *
 * @see osu_import_content()
 */
function _osu_import($operation, $type, &$context) {
  $context['message'] = t('@operation', array('@operation' => $type));
  $migration = Migration::getInstance($operation);
  $migration->processImport();
}

/**
 * BatchAPI callback.
 *
 * @see osu_import_content()
 */
function _osu_entities_import($operation, &$context) {
  $context['message'] = t('@operation', array('@operation' => $operation));

  // Instantiate the entity translation entities.
  $entity_translation_entity_types = array(
//    'bean' => 'bean',
    'node' => 'node',
    'file' => 'file',
    'taxonomy_term' => 'taxonomy_term',
    'user' => 'user',
  );
  variable_set('entity_translation_entity_types', $entity_translation_entity_types);
  entity_info_cache_clear();
}

/**
 * BatchAPI callback.
 *
 * @see osu_import_content()
 */
//function _osu_bean_import($operation, &$context) {
//  $context['message'] = t('@operation', array('@operation' => $operation));
//  _osu_bean_load();
//}

/**
 * BatchAPI callback.
 *
 * @see osu_import_content()
 */
function _osu_panels_fix($operation, &$context) {
  $context['message'] = t('@operation', array('@operation' => $operation));

  // Fix Panels Edit Page on Browser Install.
  variable_set('page_manager_node_edit_disabled', 0);
  menu_rebuild();
}
