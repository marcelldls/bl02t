# a get out of jail script for when you have made some dodgy argo cd apps
# that get stuck deleting
for app in $(kubectl get apps -o name); do
    kubectl patch $app -p '{"metadata":{"finalizers":null}}' --type=merge
done