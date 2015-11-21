# Docker Grapahana

Use KairoSDB as DataSource

## Build

    docker build -t graphana .

## Run

    docker run --rm --name graphana -p 3000:3000 -e GF_AUTH_ANONYMOUS_ENABLED=true -l kairosdb graphana
