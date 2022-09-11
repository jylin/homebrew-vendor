cask "docker-cli" do
  arch arm: "aarch64", intel: "x86_64"

  version "20.10.10"

  url "https://download.docker.com/mac/static/stable/#{arch}/docker-#{version}.tgz"
  name "Docker CLI"
  desc "Pack, ship and run any application as a lightweight container"
  homepage "https://www.docker.com/"

  binary "docker/docker"
end
