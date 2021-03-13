FROM bitnami/drupal:9
RUN cd /opt/bitnami/drupal && COMPOSER_MEMORY_LIMIT=-1 composer require drupal/smtp drupal/field_permissions drupal/search_api drupal/facets
