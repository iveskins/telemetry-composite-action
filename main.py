  import os
  from opentelemetry import trace
  from opentelemetry.exporter.otlp.proto.grpc.trace_exporter import OTLPSpanExporter
  from opentelemetry.sdk.resources import Resource
  from opentelemetry.sdk.trace import TracerProvider
  from opentelemetry.sdk.trace.export import BatchSpanProcessor

  def configure_tracing():
      otlp_endpoint = os.getenv('INPUT_OTLP-ENDPOINT')
      otlp_headers = os.getenv('INPUT_OTLP-HEADERS')
      headers = {header.split('=')[0]: header.split('=')[1] for header in otlp_headers.split(',')}

      resource = Resource(attributes={"service.name": "github-actions-service"})
      trace.set_tracer_provider(TracerProvider(resource=resource))
      tracer = trace.get_tracer(__name__)

      otlp_exporter = OTLPSpanExporter(endpoint=otlp_endpoint, headers=headers, insecure=True)
      span_processor = BatchSpanProcessor(otlp_exporter)
      trace.get_tracer_provider().add_span_processor(span_processor)

  def main():
      configure_tracing()
      tracer = trace.get_tracer(__name__)
      with tracer.start_as_current_span("github-action-span"):
          print("Telemetry data exported successfully")

  if __name__ == "__main__":
      main()
