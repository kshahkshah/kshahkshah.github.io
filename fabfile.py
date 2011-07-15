from __future__ import with_statement
from fabric.api import local, settings, abort, run, cd
from fabric.contrib.console import confirm

def deploy():
  code_dir = '/var/www/'
  with cd(code_dir):
    run('git pull')