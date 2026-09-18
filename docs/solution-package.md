# Solution Package

## Business problem
CI workloads need a repeatable execution environment with visibility into runner and cluster health.

## Solution
Terraform provisions AKS; Actions Runner Controller provides Kubernetes-based runners; Prometheus and Grafana provide metrics, dashboards, and target-down alerting.

## Architecture
GitHub Actions → ARC runners → AKS, with Terraform provisioning Azure resources and Prometheus/Grafana observing the platform.

## Implementation
See the Terraform and Kubernetes files in `infra/` and `k8s/`. The README identifies which components are implemented versus planned.

## Validation
The Prometheus Target Health dashboard confirms healthy scrape targets. The `Prometheus Target Down` rule demonstrates an operational response to failed targets.

## Operations
Use the dashboard to check target health, review alert state, and inspect runner or cluster logs before escalating.

## Security, cost, and recovery
Keep cloud credentials in GitHub/Azure secret stores, never in Git. Destroy temporary AKS resources when testing is complete, and keep Terraform state protected.

## Lessons learned
Observability should be designed alongside infrastructure so failures become visible and actionable from the start.
