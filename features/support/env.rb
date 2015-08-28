require 'calabash'

platform = ENV['PLATFORM']

require 'calabash/ios'
require 'calabash/android'
require '../../features/Helpers'

case platform
  when 'android'
    # require 'calabash/android'
    # require 'calabash/ios'

    World(Calabash::Android)

    Calabash::Android.setup_defaults!
  when 'ios'
    # require 'calabash/ios'
    # require 'calabash/android'

    World(Calabash::IOS)

    Calabash::IOS.setup_defaults!
  else
    message = if platform.nil? || platform.empty?
                'No platform given'
              else
                "Invalid platform '#{platform}'. Expected 'android' or 'ios'"
              end

    failure_messages =
        [
            'ERROR! Unable to start the cucumber test:',
            message,
            "Use the profile 'android' or 'ios', or run cucumber using $ calabash run"
        ]

    Calabash::Logger.error(failure_messages.join("\n"))
    exit(1)
end
