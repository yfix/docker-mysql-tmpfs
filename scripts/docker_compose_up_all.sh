dc="docker-compose"
$dc kill && $dc rm -vfa && $dc up -d --build && $dc logs && $dc ps
