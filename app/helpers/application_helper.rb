
  # These are the options that control the default behavior of the public
  # methods. They can be overridden during the actual call to the helper,
  # or you can set them in your environment.rb as such:
  #
  #   # Allow racier gravatars
  #   GravatarHelper::DEFAULT_OPTIONS[:rating] = 'R'
  #
  DEFAULT_OPTIONS = {
    # The URL of a default image to display if the given email address does
    # not have a gravatar. Instead of a url we can also use
    # "identicon" "monsterid" and "wavatar".
    :default => nil,
    
    # The default size in pixels for the gravatar image (they're square).
    :size => 50,
    
    # The maximum allowed MPAA rating for gravatars. This allows you to 
    # exclude gravatars that may be out of character for your site.
    :rating => 'PG',
    
    # The alt text to use in the img tag for the gravatar.  Since it's a
    # decorational picture, the alt text should be empty according to the
    # XHTML specs.
    :alt => '',

    # The title text to use for the img tag for the gravatar.
    :title => '',
    
    # The class to assign to the img tag for the gravatar.
    :class => 'gravatar',
    
    # Whether or not to display the gravatars using HTTPS instead of HTTP
    :ssl => false,
    
    # Whether avatar should load as background element for faster page loading
    :fast => true,
  }

module ApplicationHelper

  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-block">
      <button type="button" class="close" data-dismiss="alert">&#215;</button>
      #{messages}
    </div>
    HTML
    html.html_safe
  end


  def vehicles_for_select
    Vehicle.all.collect { |v| [v.brand, v.id] }
  end
############################

  def get_user
#    @user = User.find(params[:user_id])
     @user = User.find(session[:id])
  end

############################
#Returns the Gravatar for the given user.
def gravatar_for(user, options = { size: 50})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
end




# Return the gravatar URL for the given email address.
def gravatar_url(email, options={})
  email_hash = Digest::MD5.hexdigest(email)
  options = DEFAULT_OPTIONS.merge(options)
  options[:default] = CGI::escape(options[:default]) unless options[:default].nil?
  gravatar_api_url(email_hash, options.delete(:ssl)).tap do |url|
    opts = []
    [:rating, :size, :default].each do |opt|
      unless options[opt].nil?
        value = h(options[opt])
        opts << [opt, value].join('=')
      end
    end
    url << "?#{opts.join('&')}" unless opts.empty?
  end
end
############################

end
