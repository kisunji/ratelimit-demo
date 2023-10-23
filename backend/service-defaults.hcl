Kind = "service-defaults"
Name = "backend"
Protocol = "http"

RateLimits {
    InstanceLevel {
        RequestsPerSecond = 5
        RequestsMaxBurst = 10

        Routes = [
            {
                PathPrefix = "/admin"
                RequestsPerSecond = 1
            }
        ]
    }
}