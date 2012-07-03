module GravatarHelper
  require 'digest'

  @@md5 ||= Hash.new do |hash, key|
    hash[key] = Digest::MD5.hexdigest(key)
  end

  def gravatar_url(email, params = {})
    hash = @@md5[email]
    params = params.map { |k,v| "#{k}=#{v}" if v }.compact.join('&')

    "//gravatar.com/avatar/#{hash}?#{params}"
  end
end
