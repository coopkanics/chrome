require_relative "spec_helper"

describe "chrome::chrome" do
  let(:chef_run) { ChefSpec::ChefRunner.new(:step_into => ["yum_repository", "apt_repository"]) }

  it "should install stable version of google-chrome package by default" do
    chef_run.converge "chrome::chrome"
    expect(chef_run).to install_package "google-chrome-stable"
  end

  it "should install version of chrome specified" do
    chef_run.node.set["chrome"]["version"] = "foo"
    chef_run.converge "chrome::chrome"
    expect(chef_run).to install_package "google-chrome-foo"
  end

  it "should include google's yum repository for chrome if the platform family is rhel" do
    chef_run.node.automatic_attrs["platform_family"] = "rhel"
    chef_run.converge "chrome::chrome"
    chef_run.should create_file "/etc/yum.repos.d/google-chrome.repo"
  end

  it "should include google's apt repository for chrome if the platform family is debian" do
    chef_run.node.automatic_attrs["platform_family"] = "debian"
    chef_run.converge "chrome::chrome"
    chef_run.should create_file "/etc/apt/sources.list.d/google-chrome.list"
  end
end
