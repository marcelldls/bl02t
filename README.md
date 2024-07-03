# beamline bl02t IOC Instances and Services

This is an example repo for deploying a demo set of IOCs using Argo CD.

NOTE: if an app gets stuck deleting then remove the finaliser as follows:
```bash
k patch apps bl45p -n hgv27681  -p '{"metadata":{"finalizers":null}}' --type=merge
```
