cask "docker-compose-vendor" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.10.2"

  url "https://github.com/docker/compose/releases/download/v#{version}/docker-compose-darwin-#{arch}"
  name "Docker Compose"
  desc "Isolated development environments using Docker"
  homepage "https://docs.docker.com/compose/"

  artifact "docker-compose-darwin-#{arch}", target: "#{ENV['HOME']}/.docker/cli-plugins/docker-compose"
  # chmod +x ~/.docker/cli-plugins/docker-compose
end
