class Demo
  attr_reader :title, :group, :url, :type, :platform, :youtube, :file_url
  @@all = []

  def initialize(title, group, url, type, platform, youtube, file_url)
    @title = title
    @group = group
    @url = url
    @type = type
    @platform = platform
    @youtube = youtube
    @file_url = file_url
    @@all << self
  end

  def self.all
    @@all
  end

end
