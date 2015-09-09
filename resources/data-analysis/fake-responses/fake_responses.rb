# Fake Responses

require 'pp'
require 'faker'

100.times do |n|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  full_name = "#{first_name} #{last_name}"

  response_attributes = {
    :response_id => n,
    :responded_at => Faker::Time.between(DateTime.now - 10, DateTime.now - 2),
    :email => Faker::Internet.free_email(full_name),
    :first_name => first_name,
    :last_name => last_name,
    :nickname => (rand < 0.26 ? Faker::Internet.user_name(full_name) : nil),
    :date_of_birth => Faker::Date.between(Date.today.year - 15, Date.today.year - 18),
    :university => Faker::University.name,
    :graduation_class => ["Freshman","Sophomore","Junior","Senior","Graduate","Alumni"].sample,
    :hometown => "#{Faker::Address.city}, #{Faker::Address.country}",
    :majors => (rand < 0.67 ? ["Engineering","Information Systems"].sample : ["Other","Marketing","Finance"].sample),
    :scheduling => (rand < 0.1 ? (rand < 0.5 ? "conflict_before" : "conflict_after") : nil),

    :learning_objectives => Faker::Lorem.paragraph,
    :work_experience =>  Faker::Lorem.paragraph,
    :interests =>  Faker::Lorem.paragraph,

    :learning_objective_business => (rand < 0.3 ? 1 : 0),
    :learning_objective_info_systems => (rand < 0.3 ? 1 : 0),
    :learning_objective_data => (rand < 0.4 ? 1 : 0),
    :learning_objective_career => (rand < 0.6 ? 1 : 0),
    :learning_objective_requirement => (rand < 0.6 ? 1 : 0),

    :work_experience_public => (rand < 0.35 ? 1 : 0),
    :work_experience_business => (rand < 0.35 ? 1 : 0),
    :work_experience_tech => (rand < 0.4 ? 1 : 0),
    :work_experience_social_media => (rand < 0.27 ? 1 : 0),
    :work_experience_other => (rand < 0.15 ? 1 : 0),

    :interest_adventure =>  (rand < 0.75 ? 1 : 0),
    :interest_arts =>       (rand < 0.7 ? 1 : 0),
    :interest_business =>   (rand < 0.4 ? 1 : 0),
    :interest_public =>     (rand < 0.2 ? 1 : 0),
    :interest_stem =>       (rand < 0.3 ? 1 : 0),

    :personal_computer => (rand < 0.98 ? 1 : 0),

    :operating_system => (rand < 0.95 ? ["Mac OS","Windows OS"].sample : "Other"),
    :operating_system_usage_windows => (rand < 0.85 ? 1 : 0),
    :operating_system_usage_mac => (rand < 0.8 ? 1 : 0),
    :operating_system_usage_ios => (rand < 0.5 ? 1 : 0),
    :operating_system_usage_android => (rand < 0.6 ? 1 : 0),

    :software_usage_word => (rand < 0.95 ? 1 : 0),
    :software_usage_docs => (rand < 0.9 ? 1 : 0),
    :software_usage_excel => (rand < 0.85 ? 1 : 0),
    :software_usage_sheets => (rand < 0.8 ? 1 : 0),
    :software_usage_powerpoint => (rand < 0.75 ? 1 : 0),
    :software_usage_slides => (rand < 0.7 ? 1 : 0),
    :software_usage_viso => (rand < 0.4 ? 1 : 0),
    :software_usage_lucidchart => (rand < 0.41 ? 1 : 0),
    :software_usage_access => (rand < 0.63 ? 1 : 0),

    :tools_usage_email => (rand < 0.4 ? 1 : 0),
    :tools_usage_blackboard => (rand < 0.85 ? 1 : 0),
    :tools_usage_gchat => (rand < 0.7 ? 1 : 0),
    :tools_usage_slack => (rand < 0.22 ? 1 : 0),

    :tech_usage_csv => (rand < 0.8 ? 1 : 0),
    :tech_usage_json => (rand < 0.3 ? 1 : 0),
    :tech_usage_sql => (rand < 0.3 ? 1 : 0),
    :tech_usage_xml => (rand < 0.2 ? 1 : 0),
    :tech_usage_html => (rand < 0.6 ? 1 : 0),
    :tech_usage_css => (rand < 0.4 ? 1 : 0),
    :tech_usage_javascript => (rand < 0.45 ? 1 : 0),
    :tech_usage_java => (rand < 0.35 ? 1 : 0),
    :tech_usage_php => (rand < 0.1 ? 1 : 0),
    :tech_usage_ruby => (rand < 0.15 ? 1 : 0),
    :tech_usage_python => (rand < 0.2 ? 1 : 0),
    :tech_usage_c_plus_plus => (rand < 0.1 ? 1 : 0),
    :tech_usage_visual_basic => (rand < 0.1 ? 1 : 0),
    :tech_usage_c_sharp => (rand < 0.1 ? 1 : 0),
    :tech_usage_c => (rand < 0.1 ? 1 : 0),
    :tech_usage_objective_c => (rand < 0.15 ? 1 : 0),
    :tech_usage_perl => (rand < 0.1 ? 1 : 0),
    :tech_usage_r => (rand < 0.1 ? 1 : 0),
    :tech_usage_dot_net => (rand < 0.12 ? 1 : 0),
    :tools_usage_hipchat => (rand < 0.1 ? 1 : 0),
    :tools_usage_irc => (rand < 0.1 ? 1 : 0),
    :tools_usage_aws => (rand < 0.1 ? 1 : 0),
    :tools_usage_github => (rand < 0.15 ? 1 : 0),
    :tools_usage_bitbucket => (rand < 0.1 ? 1 : 0),

    :website_experience => (rand < 0.7 ? 1 : 0),
    :meetup_comfort => (rand < 0.4 ? "Sounds fine" : "Sounds scary")
  }
  pp response_attributes
end
