run "cd /srv/www/compas_beta/current && /usr/local/bin/bundle exec rake assets:precompile"
run "cd /srv/www/compas_beta/current && /usr/local/bin/bundle exec rake db:migrate"	
run "cd /srv/www/compas_beta/current && /usr/local/bin/bundle exec rake db:seed"	