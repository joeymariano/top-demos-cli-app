class Demo
  attr_accessor :title, :group, :url, :type, :platform
  @@all = []

  def initialize(title, group, url, type, platform)
    @title = title
    @group = group
    @url = url
    @type = type
    @platform = platform
    @@all << self
  end

  def self.all
    @@all
  end


end
