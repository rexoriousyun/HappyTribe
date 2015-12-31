class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :arrangements
  has_many :timeslots, through: :arrangements
  has_many :bookmarks
  has_many :bookmarked_events, through: :bookmarks, source: :event, class_name: "Event"
  has_many :managed_organizations, class_name: "Organization"
  has_and_belongs_to_many :interests
  has_and_belongs_to_many :skills



  validates :password, length: { minimum: 3 }, if: :password_exists?
  validates :password, confirmation: true, if: :password_exists?
  validates :password_confirmation, presence: true, if: :password_exists?

  validates :email, uniqueness: true

  def has_interest?(interest)
    self.interests.include?(interest)
  end

  def has_skill?(skill)
    self.skills.include?(skill)
  end

  def password_exists?
    password.present? || password_confirmation.present?
  end

  def manages_organizations?
    self.managed_organizations.any?
  end

  def is_authorized?(organization)
    self.managed_organizations.include?(organization)
  end

end
