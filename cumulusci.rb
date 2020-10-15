class Cumulusci < Formula
  include Language::Python::Virtualenv

  desc "Python framework for building automation for Salesforce projects"
  homepage "https://github.com/SFDO-Tooling/CumulusCI"
  url "https://files.pythonhosted.org/packages/a7/e6/5ce5f3f6a11e05671154aef144d644e5aef808943e6205221232f937b03c/cumulusci-3.21.0.tar.gz"
  sha256 "9e8de382534d40867570c76c8bb237bc7cc2adc4c5cff3ebb7bf185a6a5544c6"
  head "https://github.com/SFDO-Tooling/CumulusCI.git"

  depends_on "python@3.8"

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz"
    sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
  end

  resource "asn1crypto" do
    url "https://files.pythonhosted.org/packages/6b/b4/42f0e52ac2184a8abb31f0a6f98111ceee1aac0b473cee063882436e0e09/asn1crypto-1.4.0.tar.gz"
    sha256 "f4f6e119474e58e04a2b1af817eb585b4fd72bdd89b998624712b5c99be7641c"
  end

  resource "Authlib" do
    url "https://files.pythonhosted.org/packages/fe/01/afcade9599abb24e8e855ad4593f1395b1fa82c72b967764954b3d564f16/Authlib-0.15.1.tar.gz"
    sha256 "ff070c6d438bc465f2fb8dd6d73e248a8efc0b8ce6a09d368e78ae2b73a5a613"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/40/a7/ded59fa294b85ca206082306bba75469a38ea1c7d44ea7e1d64f5443d67a/certifi-2020.6.20.tar.gz"
    sha256 "5930595817496dd21bb8dc35dad090f1c2cd0adfaf21204bf6732ca5d8ee34d3"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/cb/ae/380e33d621ae301770358eb11a896a34c34f30db188847a561e8e39ee866/cffi-1.14.3.tar.gz"
    sha256 "f92f789e4f9241cd262ad7a555ca2c648a98178a953af117ef7fad46aa1d5591"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  resource "coloredlogs" do
    url "https://files.pythonhosted.org/packages/84/1b/1ecdd371fa68839cfbda15cc671d0f6c92d2c42688df995a9bf6e36f3511/coloredlogs-14.0.tar.gz"
    sha256 "a1fab193d2053aa6c0a97608c4342d031f1f93a3d1218432c59322441d31a505"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/5d/4b/7bb135c5787c003cdbc44990c5f41908f0f37135e0bb554e880d90fd5f6f/cryptography-3.1.1.tar.gz"
    sha256 "9d9fc6a16357965d282dd4ab6531013935425d0dc4950df2e0cf2a1b1ac1017d"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/2f/e0/3d435b34abd2d62e8206171892f174b180cd37b09d57b924ca5c2ef2219d/docutils-0.16.tar.gz"
    sha256 "c2de3a60e9e7d07be26b7f2b00ca0309c207e06c100f9cc2a94931fc75a478fc"
  end

  resource "Faker" do
    url "https://files.pythonhosted.org/packages/87/d7/5fbc5b33a69640ae4bc2facdc825e4552301b208373fcbfbb7a158accf5a/Faker-4.14.0.tar.gz"
    sha256 "30afa8f564350770373f299d2d267bff42aaba699a7ae0a3b6f378b2a8170569"
  end

  resource "fs" do
    url "https://files.pythonhosted.org/packages/1d/a1/8813629b38a8d97e8f1eceb6c7da03b37633c93104fbd8e30e09d195425a/fs-2.4.11.tar.gz"
    sha256 "cc99d476b500f993df8ef697b96dc70928ca2946a455c396a566efe021126767"
  end

  resource "github3.py" do
    url "https://files.pythonhosted.org/packages/2c/78/b593098dc5a16c03a91ef2a2f6341d17943b5d5359c53335a7a04beced42/github3.py-1.3.0.tar.gz"
    sha256 "15a115c18f7bfcf934dfef7ab103844eb9f620c586bad65967708926da47cbda"
  end

  resource "humanfriendly" do
    url "https://files.pythonhosted.org/packages/6c/19/8e3b4c6fa7cca4788817db398c05274d98ecc6a35e0eaad2846fde90c863/humanfriendly-8.2.tar.gz"
    sha256 "bf52ec91244819c780341a3438d5d7b09f431d3f113a475147ac9b7b167a3d12"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ea/b7/e0e3c1c467636186c39925827be42f16fee389dc404ac29e930e9136be70/idna-2.10.tar.gz"
    sha256 "b307872f855b18632ce0c21c5e45be78c0ea7ae4c15c828c20788b26921eb3f6"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/64/a7/45e11eebf2f15bf987c3bc11d37dcc838d9dc81250e67e4c5968f6008b6c/Jinja2-2.11.2.tar.gz"
    sha256 "89aab215427ef59c34ad58735269eb58b1a5808103067f7bb9d5836c651b3bb0"
  end

  resource "jwcrypto" do
    url "https://files.pythonhosted.org/packages/00/bb/ee916ab08e0510eb79cb3bfb561de2cd965ee60f0c3046c112e6e03c674a/jwcrypto-0.8.tar.gz"
    sha256 "b7fee2635bbefdf145399392f5be26ad54161c8271c66b5fe107b4b452f06c24"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/3e/79/da95ce71b572ce01c268492957cc4c1055da6f683077a6caba10944dc4f2/keyring-21.4.0.tar.gz"
    sha256 "9aeadd006a852b78f4b4ef7c7556c2774d2432bbef8ee538a3e9089ac8b11466"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/2c/4d/3ec1ea8512a7fbf57f02dee3035e2cce2d63d0e9c0ab8e4e376e01452597/lxml-4.5.2.tar.gz"
    sha256 "cdc13a1682b2a6241080745b1953719e7fe0850b40a5c71ca574f090a1391df6"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/b9/2e/64db92e53b86efccfaea71321f597fa2e1b2bd3853d8ce658568f7a13094/MarkupSafe-1.1.1.tar.gz"
    sha256 "29872e92839765e546828bb7754a68c418d927cd064fd4708fab9fe9c8bb116b"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0f/86/e19659527668d70be91d0369aeaa055b4eb396b0f387a4f92293a20035bd/pycparser-2.20.tar.gz"
    sha256 "2d475327684562c3a96cc71adf7dc8c4f0565175cf86b6d7a404ff4c771f15f0"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/80/0a/75c950d621652f7d626225c1d8275d15e9119548b6faa7d0485a253ff181/pydantic-1.6.1.tar.gz"
    sha256 "54122a8ed6b75fe1dd80797f8251ad2063ea348a03b77218d73ea9fe19bd4e73"
  end

  resource "PyJWT" do
    url "https://files.pythonhosted.org/packages/2f/38/ff37a24c0243c5f45f5798bd120c0f873eeed073994133c084e1cf13b95c/PyJWT-1.7.1.tar.gz"
    sha256 "8d59a976fb773f3e6a39c85636357c4f0e242707394cadadd9814f5cbaa20e96"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/f4/f6/94fee50f4d54f58637d4b9987a1b862aeb6cd969e73623e02c5c00755577/pytz-2020.1.tar.gz"
    sha256 "c35965d010ce31b23eeb663ed3cc8c906275d6be1a34393a1d73a41febf4a048"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/64/c2/b80047c7ac2478f9501676c988a5411ed5572f35d1beff9cae07d321512c/PyYAML-5.3.1.tar.gz"
    sha256 "b8eac752c5e14d3eca0e6dd9199cd627518cb5ec06add0de9d32baeee6fe645d"
  end

  resource "raven" do
    url "https://files.pythonhosted.org/packages/79/57/b74a86d74f96b224a477316d418389af9738ba7a63c829477e7a86dd6f47/raven-6.10.0.tar.gz"
    sha256 "3fa6de6efa2493a7c827472e984ce9b020797d0da16f1db67197bcc23c8fae54"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/da/67/672b422d9daf07365259958912ba533a0ecab839d4084c487a5fe9a5405f/requests-2.24.0.tar.gz"
    sha256 "b3559a131db72c33ee969480840fff4bb6dd111de7dd27c8ee1f820f4f00231b"
  end

  resource "robotframework" do
    url "https://files.pythonhosted.org/packages/48/d3/b657f083893dfa1d88d94feb5bfdca66ba6f2861f46e3bd58a0ac1af286a/robotframework-3.2.2.zip"
    sha256 "a0786a916d0572bd9d6afe26e95c6021e3df5dcafa0ece6b302e36366e58c24e"
  end

  resource "robotframework-lint" do
    url "https://files.pythonhosted.org/packages/6f/bf/61df25a5b1f74e067998b0963bb968869210fdd7ca8d358cea1b72abee71/robotframework-lint-1.1.tar.gz"
    sha256 "2b5ac22ed59acbdf65f340ef3ddf10c7e88c9efd37cb03d7470d7c8e869cc0c1"
  end

  resource "robotframework-pabot" do
    url "https://files.pythonhosted.org/packages/d9/d1/c749275755079f06f23eb4b1c7c4e01094b40f66737f1d44d988d80a2412/robotframework-pabot-1.10.0.tar.gz"
    sha256 "417f1e24feebec04396165554ef3970b6fd569e3f38ae20d6072d88ed54b65e6"
  end

  resource "robotframework-pythonlibcore" do
    url "https://files.pythonhosted.org/packages/b8/ec/fb5788396274fa9597d6916f65b095662856a07f0d7f1095db7559de33ae/robotframework-pythonlibcore-2.1.0.tar.gz"
    sha256 "8b210bf29cbb78069b41a3d0b90e4cc8dd23f509ea2daf450e3ef4a6ee758949"
  end

  resource "robotframework-requests" do
    url "https://files.pythonhosted.org/packages/c9/5f/b01c6002069a8347ecc1b216db0e29907887d4368ed0411e1dadcb1a3c96/robotframework-requests-0.7.1.tar.gz"
    sha256 "501a1c7415f839d6837eedd57f2b6ed20576aab318bf14e3878a77c9b106aa45"
  end

  resource "robotframework-seleniumlibrary" do
    url "https://files.pythonhosted.org/packages/4c/ed/12f76b8acacb002ee3b44315d13395baab37cc06e7844f5f46150da34198/robotframework-seleniumlibrary-4.5.0.tar.gz"
    sha256 "a0a571642f54dabb481ff1ea7dc6195b82c69d241d0e01de79de64fcbfa69e44"
  end

  resource "rst2ansi" do
    url "https://files.pythonhosted.org/packages/3c/19/b29bc04524e7d1dbde13272fbb67e45a8eb24bb6d112cf10c46162b350d7/rst2ansi-0.1.5.tar.gz"
    sha256 "1b17fb9a628d40f57933ad1a3aa952346444be069469508e73e95060da33fe6f"
  end

  resource "salesforce-bulk" do
    url "https://files.pythonhosted.org/packages/87/66/c108f5af5db5575c5715d5ab665e1ce8f076c026ff1f7c10d7427da55e64/salesforce-bulk-2.1.0.tar.gz"
    sha256 "1c040927194ce732c44a4f6244ad5de39798d0c097c39033c88edeb77acb1caf"
  end

  resource "sarge" do
    url "https://files.pythonhosted.org/packages/2c/39/d5994d2060edef17c03e70eb8d9c4ac44ffae0294fe7bb3dc953e67133d8/sarge-0.1.6.tar.gz"
    sha256 "f48fb904e64f10ad6bef62422eaf4736acfd9b13ab64ba44822637a9dbb53265"
  end

  resource "selenium" do
    url "https://files.pythonhosted.org/packages/ed/9c/9030520bf6ff0b4c98988448a93c04fcbd5b13cd9520074d8ed53569ccfe/selenium-3.141.0.tar.gz"
    sha256 "deaf32b60ad91a4611b98d8002757f29e6f2c2d5fcaf202e1c9ad06d6772300d"
  end

  resource "simple-salesforce" do
    url "https://files.pythonhosted.org/packages/d9/24/03519659a95aefb83311e985f1a1bc543e4a24fbfc608ce78b57cb3142b1/simple-salesforce-1.10.1.tar.gz"
    sha256 "20fd66cf40da732b9cdcb2f7160dde7bb298ef0c31702d1fdd767d1fc68cfe1b"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/6b/34/415834bfdafca3c5f451532e8a8d9ba89a21c9743a0c59fbd0205c7f9426/six-1.15.0.tar.gz"
    sha256 "30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259"
  end

  resource "snowfakery" do
    url "https://files.pythonhosted.org/packages/c8/53/2273007e803ea59f6d104f82dfccd5ed912e4fd0d2638b3a91bb37349d87/snowfakery-1.2.tar.gz"
    sha256 "f83b4073ed6b62359e38dea882c3abbe5740c66a02702a926bfb4c82c944cdaa"
  end

  resource "SQLAlchemy" do
    url "https://files.pythonhosted.org/packages/69/ef/6d18860e18db68b8f25e0d268635f2f8cefa7a1cbf6d9d9f90214555a364/SQLAlchemy-1.3.20.tar.gz"
    sha256 "d2f25c7f410338d31666d7ddedfa67570900e248b940d186b48461bd4e5569a1"
  end

  resource "terminaltables" do
    url "https://files.pythonhosted.org/packages/9b/c4/4a21174f32f8a7e1104798c445dacdc1d4df86f2f26722767034e4de4bff/terminaltables-3.1.0.tar.gz"
    sha256 "f3eb0eb92e3833972ac36796293ca0906e998dc3be91fbe1f8615b331b853b81"
  end

  resource "text-unidecode" do
    url "https://files.pythonhosted.org/packages/ab/e2/e9a00f0ccb71718418230718b3d900e71a5d16e701a3dae079a21e9cd8f8/text-unidecode-1.3.tar.gz"
    sha256 "bad6603bb14d279193107714b288be206cac565dfa49aa5b105294dd5c4aab93"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/16/06/0f7367eafb692f73158e5c5cbca1aec798cdf78be5167f6415dd4205fa32/typing_extensions-3.7.4.3.tar.gz"
    sha256 "99d4073b617d30288f569d3f13d2bd7548c3a7e4c8de87db09a9d29bb3a4a60c"
  end

  resource "unicodecsv" do
    url "https://files.pythonhosted.org/packages/6f/a4/691ab63b17505a26096608cc309960b5a6bdf39e4ba1a793d5f9b1a53270/unicodecsv-0.14.1.tar.gz"
    sha256 "018c08037d48649a0412063ff4eda26eaa81eff1546dbffa51fa5293276ff7fc"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/42/da/fa9aca2d866f932f17703b3b5edb7b17114bb261122b6e535ef0d9f618f8/uritemplate-3.0.1.tar.gz"
    sha256 "5af8ad10cec94f215e3f48112de2022e1d5a37ed427fbd88652fa908f2ab7cae"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/81/f4/87467aeb3afc4a6056e1fe86626d259ab97e1213b1dfec14c7cb5f538bf0/urllib3-1.25.10.tar.gz"
    sha256 "91056c15fa70756691db97756772bb1eb9678fa585d9184f24534b100dc60f4a"
  end

  resource "xmltodict" do
    url "https://files.pythonhosted.org/packages/58/40/0d783e14112e064127063fbf5d1fe1351723e5dfe9d6daad346a305f6c49/xmltodict-0.12.0.tar.gz"
    sha256 "50d8c638ed7ecb88d90561beedbf720c9b4e851a9fa6c47ebd64e99d166d8a21"
  end

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
