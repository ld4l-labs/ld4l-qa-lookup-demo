# Generated via
#  `rails generate hyrax:work DemoWork`
module Hyrax
  class DemoWorkPresenter < Hyrax::WorkShowPresenter
    ### START LD4L customization
    delegate :oclc_organization, :oclc_organization_uri,
             :oclc_person, :oclc_person_uri,
             :agrovoc_keyword, :agrovoc_keyword_uri,
             :agrovoc_keyword_fr, :agrovoc_keyword_fr_uri,
             :loc_name, :loc_name_uri, to: :solr_document
    ### END LD4L customization
  end
end
