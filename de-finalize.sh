for app in $(kubectl get apps -o name); do
    kubectl patch $app -n hgv27681  -p '{"metadata":{"finalizers":null}}' --type=merge
done