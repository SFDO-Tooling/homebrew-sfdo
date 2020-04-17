class Cumulusci < Formula
  include Language::Python::Virtualenv

  desc "Python framework for building automation for Salesforce projects"
  homepage "https://github.com/SFDO-Tooling/CumulusCI"
  url "https://files.pythonhosted.org/packages/2c/1d/4e7160b4761684d6f71c108af18ba64a0ce55e6d27a11bbdeb1e824c8480/cumulusci-3.11.0.tar.gz"
  sha256 "fac48dcccbed00520100f1690db09e0dcfb93889c4cbb02cf5e456cd67bcf002"
  head "https://github.com/SFDO-Tooling/CumulusCI.git"

  depends_on "python"



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
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end

  test do
    system bin/"cci", "version"
  end
end
