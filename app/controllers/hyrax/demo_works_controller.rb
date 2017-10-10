# Generated via
#  `rails generate hyrax:work DemoWork`

module Hyrax
  class DemoWorksController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::DemoWork

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::DemoWorkPresenter
  end
end
