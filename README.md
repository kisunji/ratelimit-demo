# ratelimit-demo

Run the frontend and backend services
```sh
go run backend/main.go
# in another shell
go run frontend/main.go
```

Needs Consul Enterprise
```sh
consul agent -dev
```

Register the services
```sh
consul services register backend/service.hcl 
consul services register frontend/service.hcl 

consul connect envoy -sidecar-for frontend -admin-bind localhost:19001
consul connect envoy -sidecar-for backend
```

Write the rate-limiting config
```sh
consul config write backend/service-defaults.hcl
```

frontend: http://localhost:5000

backend envoy admin: http://localhost:19000
