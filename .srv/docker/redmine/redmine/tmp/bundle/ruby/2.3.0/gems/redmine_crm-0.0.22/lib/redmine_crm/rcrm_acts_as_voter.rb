module RedmineCrm
  module ActsAsVotable
    # module Extenders

      module Voter

        def voter?
          false
        end

        def rcrm_acts_as_voter(*args)
          # byebug
          require 'redmine_crm/voter'
          include ActsAsVotable::Voter

          class_eval do
            def self.voter?
              true
            end
          end

        end

      end
    # end
  end
end