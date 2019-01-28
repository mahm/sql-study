module ApplicationHelper
  def application_name
    ENV.fetch('APP_NAME')
  end

  def google_analytics_code
    ENV.fetch('GOOGLE_ANALYTICS_CODE')
  end

  def schema_body

  end
end
