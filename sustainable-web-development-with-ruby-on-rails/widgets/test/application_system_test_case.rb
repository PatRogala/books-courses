require "test_helper"

Capybara.register_driver :root_headless_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    "goog:chromeOptions": {
      args: [
        "headless",
        "disable-gpu",
        "no-sandbox",
        "disable-dev-shm-usage",
        "whitelisted-ips"
      ]
    },
    "goog:loogingPrefs": { browser: "ALL" },
  )

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: capabilities)
end

require "support/with_clues"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  include TestSupport::WithClues
  driven_by :rack_test
end

# Use this as the base class for system tests that require
# JavaScript or that otherwise need a real browser
class BrowserSystemTestCase < ApplicationSystemTestCase
  driven_by :root_headless_chrome, screen_size: [ 1400, 1400 ]
end