# Generated via
#  `rails generate hyrax:work DemoWork`
module Hyrax
  class DemoWorkForm < Hyrax::Forms::WorkForm
    self.model_class = ::DemoWork
    ### START LD4L customization
    self.terms += [:resource_type,
                   :oclc_organization, :oclc_organization_uri,
                   :oclc_person, :oclc_person_uri,
                   :agrovoc_keyword, :agrovoc_keyword_uri,
                   :agrovoc_keyword_fr, :agrovoc_keyword_fr_uri,
                   :loc_name, :loc_name_uri] # Include all demo values in the params returned from the form.

    self.required_fields = [:title] # Set required to just title for ease of demo.

    def primary_terms
      # Make demo fields show up above the fold.
      super + [:oclc_organization, :oclc_person, :agrovoc_keyword, :agrovoc_keyword_fr, :loc_name]
    end

    def secondary_terms
      # Prevent URIs from being displayed by hydra-editor.  They are displayed paired with their corresponding label fields.
      super - [:oclc_organization_uri, :oclc_person_uri, :agrovoc_keyword_uri, :agrovoc_keyword_fr_uri, :loc_name_uri]
    end
    ### END LD4L customization
  end
end
