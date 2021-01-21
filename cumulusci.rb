class Cumulusci < Formula
  include Language::Python::Virtualenv

  desc "Python framework for building automation for Salesforce projects"
  homepage "https://github.com/SFDO-Tooling/CumulusCI"
  url "https://files.pythonhosted.org/packages/8b/95/a083f09cf1ee0c74de9617da4991b7e715bfa2c6f250f5b673bfe005c6e5/cumulusci-3.27.0.tar.gz"
  sha256 "b7446bc32e58571cbb155fe803439ad1b680706c1e8c8c45451243e8e4d32c17"
  head "https://github.com/SFDO-Tooling/CumulusCI.git"

  depends_on "python@3.8"



  def install
    xy = Language::Python.major_minor_version "python3"
    site_packages = libexec/"lib/python#{xy}/site-packages"
    ENV.prepend_create_path "PYTHONPATH", site_packages

    system "python3", *Language::Python.setup_install_args(libexec)

    deps = resources.map(&:name).to_set
    deps.each do |r|
      resource(r).stage do
        system "python3", *Language::Python.setup_install_args(libexec)
      end
    end

    bin.install Dir["#{libexec}/bin/cci"]
    bin.install Dir["#{libexec}/bin/snowfakery"]
    bin.env_script_all_files(libexec/"bin", PYTHONPATH: ENV["PYTHONPATH"])
  end

  test do
    system bin/"cci", "version"
  end
end
