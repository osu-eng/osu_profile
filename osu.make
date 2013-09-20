api = 2
core = 7.x

; The Panopoly Foundation

projects[panopoly_core][version] = 1.0-rc5
projects[panopoly_core][subdir] = panopoly
projects[panopoly_core][patch][2087414] = https://drupal.org/files/issue-2087414.patch

projects[panopoly_images][version] = 1.0-rc5
projects[panopoly_images][subdir] = panopoly

projects[panopoly_theme][version] = 1.0-rc5
projects[panopoly_theme][subdir] = panopoly

projects[panopoly_magic][version] = 1.0-rc5
projects[panopoly_magic][subdir] = panopoly

projects[panopoly_widgets][version] = 1.0-rc5
projects[panopoly_widgets][subdir] = panopoly

projects[panopoly_admin][version] = 1.0-rc5
projects[panopoly_admin][subdir] = panopoly

projects[panopoly_users][version] = 1.0-rc5
projects[panopoly_users][subdir] = panopoly

; The Panopoly Toolset

projects[panopoly_pages][version] = 1.0-rc5
projects[panopoly_pages][subdir] = panopoly

projects[panopoly_search][version] = 1.0-rc5
projects[panopoly_search][subdir] = panopoly

; OSU Features

projects[osu_wysiwyg][type] = module
projects[osu_wysiwyg][subdir] = custom
projects[osu_wysiwyg][download][type] = git
projects[osu_wysiwyg][download][url] = https://github.com/osu-eng/osu_wysiwyg.git
projects[osu_wysiwyg][download][branch] = develop

projects[osu_workbench][type] = module
projects[osu_workbench][subdir] = custom
projects[osu_workbench][download][type] = git
projects[osu_workbench][download][url] = https://github.com/osu-eng/osu_workbench.git
projects[osu_workbench][download][branch] = 7.x-1.x

; Themes

projects[wetkit_ember][version] = 1.x-dev
projects[wetkit_ember][download][type] = git
projects[wetkit_ember][download][revision] = 7a8babc
projects[wetkit_ember][download][branch] = 7.x-1.x

projects[osu_shiny][type] = theme
projects[osu_shiny][download][type] = git
projects[osu_shiny][download][url] = https://github.com/osu-eng/osu_shiny.git
projects[osu_shiny][download][branch] = 7.x-1.x
