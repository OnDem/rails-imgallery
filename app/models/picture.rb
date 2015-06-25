class Picture < ActiveRecord::Base
  belongs_to :gallery

  has_attached_file :picfile, {
    :url => "/system/pictures/picfiles/:style/:hash.:extension",
    :hash_secret => "mySecretString",
    :styles => {
      :big => [ "330x330>", :png ],
      :medium => [ "220x220>", :png ],
      :thumb => [ "100x100>", :png ]
    },
    :default_url => "/images/:style/missing_csplash.png"
  }
  validates_attachment_presence :picfile
  validates_attachment_content_type :picfile, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :picfile, :in => 10..4000.kilobytes, :message => "Размер файла не должен превышать 4 мегабайта"

end
