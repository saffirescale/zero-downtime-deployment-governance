# AlwaysOn – Zero Downtime AWS Deployment

Deploy updates without breaking live users.

**Tech:** AWS • EC2 • ALB • CI/CD • Nginx • Docker  
**Timeline:** 10 working days

---

## What This Is
AlwaysOn is a production-ready AWS deployment architecture that enables
zero-downtime releases using Blue–Green or Rolling deployments.

## Who This Is For
- Production applications with active users
- SaaS startups facing deployment downtime
- Teams releasing features frequently

## What You Get
- 2 EC2 instances (Blue–Green)
- Application Load Balancer (ALB)
- Zero-downtime deployments
- Instant rollback
- CI/CD with GitHub Actions

## How It Works
1. CI/CD builds and deploys to the idle environment (blue or green)
2. Nginx proxies traffic to the active environment
3. Rollback script switches traffic if needed

## Quickstart
- `bash scripts/deploy-blue.sh` or `bash scripts/deploy-green.sh`
- Edit `nginx/nginx.conf` to switch active environment
- `bash scripts/rollback.sh [blue|green]` to rollback

## CI/CD & Quality
- Automated tests and SonarCloud code quality checks on every push
- Docker images tagged with commit SHA and pushed to Docker Hub
- Deployment scripts accept image tag as argument

## Next Steps
30-minute discussion → Infra validation → Zero-downtime rollout

Saffire Scale
