Eye.config do
  logger '/var/www/kunalashah.com/log/eye.log'
end

Eye.application 'mail2frontmatter' do
  working_dir '/var/www/kunalashah.com'

  process :mail2frontmatter do |p|
    check :memory, every: 20.seconds, below: 64.megabytes, times: 3
    check :cpu, every: 20.seconds, below: 75, times: 3

    pid_file '/var/www/kunalashah.com/tmp/pids/mail2frontmatter.pid'
    start_command 'bundle exec mail2frontmatter -d'
    stop_signals [:QUIT, 2.seconds, :TERM, 1.seconds, :KILL]

  end
end
