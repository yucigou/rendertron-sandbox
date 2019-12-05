Works on GKE: https://fullstackpro.dev/rendertron/render/https://test.europepmc.org/article/MED/12679102

Supported URL examples:

- https://test.europepmc.org/article/MED/31456562
- https://test.europepmc.org/article/MED/31456562%23free-full-text
- https://test.europepmc.org/search%3Fquery%3DSRC%253A%252a
- http://europepmc.org

## Cert Manager

Issuer & Certificate

- https://docs.cert-manager.io/en/latest/tasks/issuers/setup-acme/index.html#creating-a-basic-acme-issuer
- https://docs.cert-manager.io/en/latest/getting-started/install/kubernetes.html

Update certificate for new subdomain:
```
kubectl apply -f k8s/certificate.yaml
kubectl describe certificate
```

## Rendertron

Health check

- https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-a-liveness-http-request
- [Kubernetes best practices: Setting up health checks with readiness and liveness probes](https://cloud.google.com/blog/products/gcp/kubernetes-best-practices-setting-up-health-checks-with-readiness-and-liveness-probes)
- [Kubernetes Health Checks with Readiness and Liveness Probes (Kubernetes Best Practices)](https://www.youtube.com/watch?v=mxEvAPQRwhw)
- [Any monitoring solution for Rendertron?](https://superuser.com/questions/1506990/any-monitoring-solution-for-rendertron)
