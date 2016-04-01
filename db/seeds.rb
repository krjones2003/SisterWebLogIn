
more_profiles = [
  {:name => 'Kristin J.', :school_or_workplace => 'Mills College',
    :technical_expertise => 'Java, Agile', :still_learning => 'Ruby on Rails'},
  {:name => 'Denise D.', :school_or_workplace => 'Mills College',
    :technical_expertise => 'Java, Python, CSS', :still_learning => 'Ruby on Rails'},
  {:name => 'Val M.', :school_or_workplace => 'Mills College',
    :technical_expertise => 'Java, Agile, CSS', :still_learning => 'Ruby on Rails'},
  {:name => 'Shay S.', :school_or_workplace => 'Mills College',
    :technical_expertise => 'Java, Agile, Bootstrap', :still_learning => 'Ruby on Rails, corporate culture'}
]

more_profiles.each do |profiles|
  Profile.create!(profiles)
end


more_events = [
  {:what => 'Scrum', :where => 'Mills College',
    :when => '29/4/2016'},
  {:what => 'Interview Prep', :where => 'Mills College',
   :when => '15/4/2016'}
]

more_events.each do |events|
  Event.create!(events)
end