dc="docker-compose"
$dc kill && $dc rm -vfa && $dc up -d && $dc logs && $dc ps
