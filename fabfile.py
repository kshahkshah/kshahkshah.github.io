from __future__ import with_statement
from fabric.api import *
from fabric.contrib.console import confirm

env.hosts = ['kunal@kunalashah.com']

def deploy():
  code_dir = '/var/www/'
  with cd(code_dir):
    run('git pull')