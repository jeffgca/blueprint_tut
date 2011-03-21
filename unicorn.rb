# See http://unicorn.bogomips.org/Unicorn/Configurator.html for complete
# documentation.
app_dir = "/var/www"
worker_processes 4
working_directory app_dir

# listen on both a Unix domain socket and a TCP port,
# we use a shorter backlog for quicker failover when busy
listen "0.0.0.0:8080", :backlog => 64

# nuke workers after 30 seconds instead of 60 seconds (the default)
timeout 30

# feel free to point this anywhere accessible on the filesystem
user 'www-data'

pid "#{app_dir}/pids/unicorn.pid"
stderr_path "#{app_dir}/log/unicorn.stderr.log"
stdout_path "#{app_dir}/log/unicorn.stdout.log"
