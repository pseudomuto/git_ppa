if defined?(ChefSpec)
  def add_apt_repository(name)
    ChefSpec::Matchers::ResourceMatcher.new(:apt_repository, :add, name)
  end
end
