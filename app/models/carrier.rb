class Carrier < ApplicationRecord
  has_many :accounts
  has_many :account_memberships, through: :accounts
  has_many :account_users, through: :accounts, source: :users, class_name: "User"
  has_many :users
  has_many :inbound_sip_trunks
  has_many :outbound_sip_trunks
  has_many :phone_numbers
  has_many :phone_calls, through: :accounts

  has_one_attached :logo

  def country
    ISO3166::Country.new(country_code)
  end
end
