cask :v1 => 'jameica' do
  version :latest
  sha256 :no_check

  url 'http://www.willuhn.de/products/jameica/releases/current/jameica/jameica-macos64.zip'
  name 'Jameica'
  gpg "#{url}.asc",
      :key_id => '5a8ed9cfc0db6c70'
  homepage 'http://www.willuhn.de/products/jameica/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Jameica.app'
end
