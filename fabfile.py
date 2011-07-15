from fabric.api import run

def deploy():
  run('cd /var/www/')
  run('git pull')