class FixForemanProviderType < ActiveRecord::Migration[4.2]
  include MigrationHelper

  NAME_MAP = Hash[*%w(
    ProviderForeman                    ManageIQ::Providers::Foreman::Provider
  )]

  def change
    say_with_time "Rename class references for Foreman" do
      rename_class_references(NAME_MAP)
    end
  end
end
