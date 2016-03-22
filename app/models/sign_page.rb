class SignPage < ActiveRecord::Base

  before_save :generate_image
  has_attached_file :image, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  HEIGHT = 160
  WIDTH = 480


  def generate_image
    instructions = JSON.parse(signature).map { |h| "line #{h['mx'].to_i},#{h['my'].to_i} #{h['lx'].to_i},#{h['ly'].to_i}" } * ' '
    image = StringIO.new
    Open3.popen3("convert -size #{WIDTH}x#{HEIGHT} xc:transparent -stroke blue -draw @- PNG:-") do |input, output, error|
      input.puts instructions
      input.close
      image.puts(output.read)
    end
    self.image = image
  end
end
