NAMESPACE="dev"

if [ "$TRAVIS_PULL_REQUEST" = "false" ] && [ "$TRAVIS_BRANCH" = "master" ]; then
    NAMESPACE="prod"
fi

./landscaper apply --namespace $NAMESPACE socks.yaml
