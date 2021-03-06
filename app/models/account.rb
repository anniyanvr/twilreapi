class Account < ApplicationRecord
  extend Enumerize
  TYPES = %w[customer_managed carrier_managed].freeze

  enumerize :status, in: %i[enabled disabled], predicates: true, default: :enabled

  belongs_to :carrier
  belongs_to :outbound_sip_trunk, optional: true

  has_one :access_token,
          class_name: "Doorkeeper::AccessToken",
          foreign_key: :resource_owner_id,
          dependent: :destroy

  has_many :phone_calls
  has_many :phone_numbers
  has_many :account_memberships
  has_many :users, through: :account_memberships

  def self.customer_managed
    where(arel_table[:account_memberships_count].gt(0))
  end

  def self.carrier_managed
    where(account_memberships_count: 0)
  end

  def auth_token
    access_token.token
  end

  def type
    account_memberships_count.positive? ? "customer_managed" : "carrier_managed"
  end

  def carrier_managed?
    type == "carrier_managed"
  end

  def customer_managed?
    type == "customer_managed"
  end

  def owner
    account_memberships.owner.first&.user
  end
end
