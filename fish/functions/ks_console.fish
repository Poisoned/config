function ks_console
  # TODO
  if [ $argv -eq 0 ] or [ $1 = man ]
  then
    echo "Rails console command:
      - \$1 pod
      - \$2 environment (default production)
      - \$3 cluster (default ams1)
      - \$4 namespace (default hallo-matcher)
    "
    return
  end

  set pod $argv[1]
  set -q $argv[2]; or set environment production
  set -q $argv[3]; or set cluster ams1
  set -q $argv[4]; or set environment hallo-matcher

  kubectl --context kubernetes.main.$enviroment.$pod -n $namespace exec -it $1 bundle exec rails c
end
