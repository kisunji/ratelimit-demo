service {
	name = "frontend"
	port = 5000

    connect {
        sidecar_service {
            proxy {
                upstreams = [
                    {
                        destination_name = "backend"
                        local_bind_port  = 5001
                    }
                ]
            }
        }
    }
}
