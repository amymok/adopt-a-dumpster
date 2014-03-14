class ThingMailer < ActionMailer::Base
  default :from => "sanantonio@codeforamerica.org"

  def reminder(thing)
    @thing = thing
    @user = thing.user
    mail(
      {
        :to => thing.user.email,
        :subject => ["Remember to wipe out graffiti", thing.name].compact.join(' '),
      }
    )
  end
end
