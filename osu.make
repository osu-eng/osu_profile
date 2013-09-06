api = 2
core = 7.x

; ************************************************
; ******************* Features ********************

; OSU WYSIWYG
projects[osu_wysiwyg][subdir] = features
projects[osu_wysiwyg][download][type] = git
projects[osu_wysiwyg][download][url] = https://github.com/osu-eng/osu_wysiwyg.git
projects[osu_wysiwyg][download][branch] = master


; ************************************************
; ******************* Modules ********************

; CKEditor
projects[ckeditor][subdir] = contrib
projects[ckeditor][version] = 1.13

; Media
projects[media][subdir] = contrib
projects[media][version] = 2.0-alpha2

; File Entity
projects[file_entity][subdir] = contrib
projects[file_entity][version] = 2.0-alpha2

; Features
projects[features][subdir] = contrib
projects[features][version] = 2.0-rc3

; Entity API
projects[entity][subdir] = contrib
projects[entity][version] = 1.2

; ************************************************
; ****************** Libraries *******************

libraries[ckeditor][download][type]= "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.2/ckeditor_4.2_full.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

; ************************************************
; ******************* Panopoly *******************

; Note that makefiles are parsed bottom-up, and that in Drush concurrency might
; interfere with recursion.
; Therefore PANOPOLY needs to be listed AT THE BOTTOM of this makefile,
; so we can patch or update certain projects fetched by Panopoly's makefiles.

; Someday maybe we can turn this on to just inherit Panopoly
;projects[panopoly][type] = profile
;projects[panopoly][version] = 1.0-rc5
; but, Drupal.org does not support recursive profiles
; and also does not support include[]
; so we need to copy the panopoly.make file here

; The Panopoly Foundation

projects[panopoly_core][version] = 1.0-rc5
projects[panopoly_core][subdir] = panopoly
projects[panopoly_core][download][branch] = 7.x-1.x
projects[panopoly_core][download][type] = git
projects[panopoly_core][patch][1837312] = http://drupal.org/files/panopoly_core-panelizer_default_permissions-1837312-26.patch

projects[panopoly_images][version] = 1.0-rc5
projects[panopoly_images][subdir] = panopoly

projects[panopoly_theme][version] = 1.0-rc5
projects[panopoly_theme][subdir] = panopoly

projects[panopoly_magic][version] = 1.0-rc5
projects[panopoly_magic][subdir] = panopoly
projects[panopoly_magic][download][branch] = 7.x-1.x
projects[panopoly_magic][download][type] = git
projects[panopoly_magic][patch][2016527] = http://drupal.org/files/2016643_panopoly_magic_screw_pre_render_with_2016527-5.patch
projects[panopoly_magic][patch][2017159] = http://drupal.org/files/2017159_panopoly_magic_preview_post_render-16.patch

projects[panopoly_widgets][version] = 1.0-rc5
projects[panopoly_widgets][subdir] = panopoly

projects[panopoly_admin][version] = 1.0-rc5
projects[panopoly_admin][subdir] = panopoly
projects[panopoly_admin][download][branch] = 7.x-1.x
projects[panopoly_admin][download][type] = git
projects[panopoly_admin][patch][2071133] = http://drupal.org/files/panopoly_admin-2071133-3.patch

projects[panopoly_users][version] = 1.0-rc5
projects[panopoly_users][subdir] = panopoly

; The Panopoly Toolset

projects[panopoly_pages][version] = 1.0-rc5
projects[panopoly_pages][subdir] = panopoly
projects[panopoly_pages][download][branch] = 7.x-1.x
projects[panopoly_pages][download][type] = git
projects[panopoly_pages][patch][2008762] = http://drupal.org/files/2008762-panopoly_pages-missing-depedency-15.patch
projects[panopoly_pages][patch][1837312] = http://drupal.org/files/panopoly_pages-panelizer_default_permissions-1837312-26.patch

; ### Removing this as we are rolling our own wysiwyg editor  ##
; projects[panopoly_wysiwyg][version] = 1.0-rc5
; projects[panopoly_wysiwyg][subdir] = panopoly

projects[panopoly_search][version] = 1.0-rc5
projects[panopoly_search][subdir] = panopoly
