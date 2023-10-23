# ratelimit-demo

```sh
consul agent -dev
```

```sh
consul services register backend/service.hcl 
consul services register frontend/service.hcl 

consul connect envoy -sidecar-for frontend -admin-bind localhost:19001
consul connect envoy -sidecar-for backend
```

```sh
consul config write backend/service-defaults.hcl
```

frontend: http://localhost:5000
backend envoy admin: http://localhost:19000
