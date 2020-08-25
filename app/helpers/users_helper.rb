module UsersHelper

  def cta_therapist(user)
    if user.is_therapist
      (button_to 'Agendar', root_url, class: 'btn btn-blue mx-auto', form_class: 'flex items-center my-6').html_safe
    end
  end




end
