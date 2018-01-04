class Breadcrumbs
  @@list = []

  def self.init(title, link: nil, active: false)
    @@list = []
    @@list << {title: title, link: link, active: true}
    Breadcrumbs
  end

  def self.add(title, link: nil, active: false)
    @@list.last[:active] = false unless @@list.empty?
    @@list << {title: title, link: link, active: true}
    Breadcrumbs
  end

  def self.get()
    @@list
  end
end