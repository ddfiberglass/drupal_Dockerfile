FROM bitnami/drupal:10
# COPY add_files /opt/bitnami/drupal
RUN cd /opt/bitnami/drupal && composer require drupal/ctools drupal/admin_toolbar drupal/field_permissions drupal/search_api drupal/search_api_solr drupal/facets drupal/address drupal/composer:"^4.0@RC" drupal/pathauto drupal/smart_date drupal/smtp drupal/honeypot drupal/role_expire --update-with-dependencies

## && composer upgrade 在RUN 最后面加上上面这个升级也可以运行，构建镜像。
# RUN cd /opt/bitnami/drupal && composer update "drupal/core-*" --with-all-dependencies
# delete drupal/chosen drupal/geofield drupal/geofield_map drupal/leaflet drupal/taxonomy_manager drupal/geocoder:^3.29 drupal/geocoder_ajax_prepopulate geocoder-php/nominatim-provider  drupal/asset_injector
