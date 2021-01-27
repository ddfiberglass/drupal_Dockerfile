FROM bitnami/drupal:9.1.3

RUN cd /opt/bitnami/drupal && COMPOSER_MEMORY_LIMIT=-1 composer require drupal/smtp
