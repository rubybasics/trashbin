defmodule Zeus.Services.Boards do
  @behaviour Zeus.Service

  def generate_url(_request) do
    "https://" <> Dict.fetch! Application.get_env(:zeus, :service_domains), :boards
  end

  def before_request(_url, headers) do
    headers
  end

  def after_response(response) do
    response
  end
end
