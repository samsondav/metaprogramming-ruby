require 'builder'

xml = Builder::XmlMarkup.new(:target => STDOUT, :indent => 2)

xml.coder {
  xml.name 'Matsumoto', nickname: 'Matz'
  xml.language 'Ruby'
}

xml.semester {
  xml.class 'Egyptology'
  xml.class 'Ornithology'
}
