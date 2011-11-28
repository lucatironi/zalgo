require 'zalgo/view_helpers'
module Zalgo
  class Railtie < Rails::Railtie
    initializer "zalgo.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end