# OpenTelemetry Collector Builder Action (PoC)

Configuration is going to break.

## Usage

```yaml
jobs:
  buildOtel:
    name: Build custom Otel collector from a manifest
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: rogercoll/otelcol-builder-action@main
        with:
          local_manifest: './distributions/otelcol/manifest.yaml'
          local_output_path: './build'
      - run: ls -al build/
```
