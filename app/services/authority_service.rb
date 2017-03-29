module AuthorityService

# Object based
  class ProjectService < DogBiscuits::Terms::ProjectTerms
		include ::LocalAuthorityConcern
	end
  class CurrentOrganisationService < DogBiscuits::Terms::CurrentOrganisationTerms
		include ::LocalAuthorityConcern
	end
  class CurrentPersonService < DogBiscuits::Terms::CurrentPersonTerms
		include ::LocalAuthorityConcern
	end
  class DepartmentService < DogBiscuits::Terms::DepartmentTerms
		include ::LocalAuthorityConcern
	end

# File based
  class ContentVersionsService < Hyrax::QaSelectService
    include ::FileAuthorityConcern

    def initialize
      super('content_versions')
    end
  end
  class LanguagesService < Hyrax::QaSelectService
    include ::FileAuthorityConcern

    def initialize
      super('languages')
    end
  end
  class LicensesService < Hyrax::QaSelectService
    include ::FileAuthorityConcern

    def initialize
      super('licenses')
    end
  end
	class RightsStatementsService < Hyrax::QaSelectService
	include ::FileAuthorityConcern
		def initialize
			super('rights_statements')
		end
	end
  class JournalArticleVersionsService < Hyrax::QaSelectService
	include ::FileAuthorityConcern
		def initialize
      super('journal_article_versions')
		end
	end
  class ResourceTypesService < Hyrax::QaSelectService
	include ::FileAuthorityConcern
		def initialize
      super('resource_types')
		end
	end
	class QualificationLevelsService < Hyrax::QaSelectService
	include ::FileAuthorityConcern
		def initialize
			super('qualification_levels')
		end
	end
	class PublicationStatusesService < Hyrax::QaSelectService
	include ::FileAuthorityConcern
		def initialize
			super('publication_statuses')
		end
	end
  class QualificationNamesService < Hyrax::QaSelectService
	include ::FileAuthorityConcern
		def initialize
      super('qualification_names')
		end
	end

end