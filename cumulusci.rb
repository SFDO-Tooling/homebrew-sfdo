class Cumulusci < Formula
  include Language::Python::Virtualenv

  desc "Python framework for building automation for Salesforce projects"
  homepage "https://github.com/SFDO-Tooling/CumulusCI"
  url "https://files.pythonhosted.org/packages/8b/95/a083f09cf1ee0c74de9617da4991b7e715bfa2c6f250f5b673bfe005c6e5/cumulusci-3.27.0.tar.gz"
  sha256 "b7446bc32e58571cbb155fe803439ad1b680706c1e8c8c45451243e8e4d32c17"
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
    url "https://files.pythonhosted.org/packages/0a/d9/dfe1c37ff71a593b24509a03a3f1c75a0670a82ec18fcd040d2b2309b113/Authlib-0.15.3.tar.gz"
    sha256 "7dde11ba45db51e97169c261362fab3193073100b7387e60c159db1eec470bbc"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/06/a9/cd1fd8ee13f73a4d4f491ee219deeeae20afefa914dfb4c130cfc9dc397a/certifi-2020.12.5.tar.gz"
    sha256 "1a4995114262bffbc2413b159f2a1a480c969de6e6eb13ee966d470af86af59c"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/66/6a/98e023b3d11537a5521902ac6b50db470c826c682be6a8c661549cb7717a/cffi-1.14.4.tar.gz"
    sha256 "1a465cbe98a7fd391d47dce4b8f7e5b921e6cd805ef421d04f5f66ba8f06086c"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/ee/2d/9cdc2b527e127b4c9db64b86647d567985940ac3698eeabc7ffaccb4ea61/chardet-4.0.0.tar.gz"
    sha256 "0d6f53a15db4120f2b08c94f11e7d93d2c911ee118b6b30a04ec3ee8310179fa"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  resource "coloredlogs" do
    url "https://files.pythonhosted.org/packages/ce/ef/bfca8e38c1802896f67045a0c9ea0e44fc308b182dbec214b9c2dd54429a/coloredlogs-15.0.tar.gz"
    sha256 "5e78691e2673a8e294499e1832bb13efcfb44a86b92e18109fa18951093218ab"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/b7/82/f7a4ddc1af185936c1e4fa000942ffa8fb2d98cff26b75afa7b3c63391c4/cryptography-3.3.1.tar.gz"
    sha256 "7e177e4bea2de937a584b13645cab32f25e3d96fc0bc4a4cf99c27dc77682be6"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/2f/e0/3d435b34abd2d62e8206171892f174b180cd37b09d57b924ca5c2ef2219d/docutils-0.16.tar.gz"
    sha256 "c2de3a60e9e7d07be26b7f2b00ca0309c207e06c100f9cc2a94931fc75a478fc"
  end

  resource "Faker" do
    url "https://files.pythonhosted.org/packages/80/b1/2b2c36e602ba4d870243439c22830661cb892f2a4c4dea5e78fa0cf03a21/Faker-5.6.3.tar.gz"
    sha256 "eb1625d72ad8f59984bea3ec25b6b56c690ac28b058fd95f23d758743595c741"
  end

  resource "fs" do
    url "https://files.pythonhosted.org/packages/74/98/abdd089384136e14166537d74185a61f764c0e5b7c87329d613cd3aa869f/fs-2.4.12.tar.gz"
    sha256 "c10ba188b14d6213a1ca950efd004931abbfa64b294c80bbf1045753831bf42f"
  end

  resource "github3.py" do
    url "https://files.pythonhosted.org/packages/2c/78/b593098dc5a16c03a91ef2a2f6341d17943b5d5359c53335a7a04beced42/github3.py-1.3.0.tar.gz"
    sha256 "15a115c18f7bfcf934dfef7ab103844eb9f620c586bad65967708926da47cbda"
  end

  resource "humanfriendly" do
    url "https://files.pythonhosted.org/packages/31/0e/a2e882aaaa0a378aa6643f4bbb571399aede7dbb5402d3a1ee27a201f5f3/humanfriendly-9.1.tar.gz"
    sha256 "066562956639ab21ff2676d1fda0b5987e985c534fc76700a19bd54bcb81121d"
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
    url "https://files.pythonhosted.org/packages/19/c7/e1a9c556745518c9c3d46613c10a968757b16e29341ec8e0815fd07e0f93/keyring-21.8.0.tar.gz"
    sha256 "1746d3ac913d449a090caf11e9e4af00e26c3f7f7e81027872192b2398b98675"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/db/f7/43fecb94d66959c1e23aa53d6161231dca0e93ec500224cf31b3c4073e37/lxml-4.6.2.tar.gz"
    sha256 "cd11c7e8d21af997ee8079037fff88f16fda188a9776eb4b81c7e4c9c0a7d7fc"
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
    url "https://files.pythonhosted.org/packages/67/da/955ec31a0c8989da0926192bf08e30359fb3f15ed2fab1bc2ced87d7bd76/pydantic-1.7.3.tar.gz"
    sha256 "213125b7e9e64713d16d988d10997dabc6a1f73f3991e1ff8e35ebb1409c7dc9"
  end

  resource "PyJWT" do
    url "https://files.pythonhosted.org/packages/ef/68/d610e2e10bc8336a033a6e0f0401341106ee9ed9cb0c1571b0d1a8eacf39/PyJWT-2.0.1.tar.gz"
    sha256 "a5c70a06e1f33d81ef25eecd50d50bd30e34de1ca8b2b9fa3fe0daaabcf69bf7"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/70/44/404ec10dca553032900a65bcded8b8280cf7c64cc3b723324e2181bf93c9/pytz-2020.5.tar.gz"
    sha256 "180befebb1927b16f6b57101720075a984c019ac16b1b7575673bea42c6c3da5"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/b5/fd/15638de2da0a5aa91c095718444624aa565f766fc178249ca6faa372f71a/PyYAML-5.4.tar.gz"
    sha256 "3c49e39ac034fd64fd576d63bb4db53cda89b362768a67f07749d55f128ac18a"
  end

  resource "raven" do
    url "https://files.pythonhosted.org/packages/79/57/b74a86d74f96b224a477316d418389af9738ba7a63c829477e7a86dd6f47/raven-6.10.0.tar.gz"
    sha256 "3fa6de6efa2493a7c827472e984ce9b020797d0da16f1db67197bcc23c8fae54"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/6b/47/c14abc08432ab22dc18b9892252efaf005ab44066de871e72a38d6af464b/requests-2.25.1.tar.gz"
    sha256 "27973dd4a904a4f13b263a19c866c13b92a39ed1c964655f025f3f8d3d75b804"
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
    url "https://files.pythonhosted.org/packages/ca/a4/415a150e653349bd697bd15d67aeeae5045ccd42cf053898b75d5dba67bc/robotframework-pabot-1.10.1.tar.gz"
    sha256 "c8e5ce28b401d5a7a6b22d58001ec4075c37e0c66661dc3ff2d9a55f73b8981a"
  end

  resource "robotframework-pythonlibcore" do
    url "https://files.pythonhosted.org/packages/77/47/a745d43181acc2eed5fc9558014040ac090fd530efe60876cfe9f5298c8b/robotframework-pythonlibcore-2.2.1.tar.gz"
    sha256 "1b311764721b6117d85b0702ab95a7f1d0525d9d3e3433cca02cdbc0010edb55"
  end

  resource "robotframework-requests" do
    url "https://files.pythonhosted.org/packages/65/bb/17985230a6a506603db6c5aa3a1ca6851735ab6f0f0dad159b505069f0f7/robotframework-requests-0.8.0.tar.gz"
    sha256 "9c49eac2bb5bcf20224d099863dbd6fbc217f8c2519e3ffd4dd06f4d4813302b"
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
    url "https://files.pythonhosted.org/packages/02/45/ae6a5566997e180755b0e02dac3374ae10071f44300c917a3958a41d324a/salesforce-bulk-2.2.0.tar.gz"
    sha256 "6894e2f0d1b7a719388bbc425e1874cc096a3cc80106e93098a672709ac5ff4e"
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
    url "https://files.pythonhosted.org/packages/f9/ec/846a0ccf74385d3bcf1020fd83980614fbddd5a4cc868b68bce8d079c5ca/snowfakery-1.4.tar.gz"
    sha256 "0d4b0abc62b95b6106158710c8624a0bbe0dd02059b12129ede9bc41c707d971"
  end

  resource "SQLAlchemy" do
    url "https://files.pythonhosted.org/packages/b7/10/b6d02efa2cb10dca0671fd62c9091c1e49831b266658fd7a056c577621cb/SQLAlchemy-1.3.22.tar.gz"
    sha256 "758fc8c4d6c0336e617f9f6919f9daea3ab6bb9b07005eda9a1a682e24a6cacc"
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
    url "https://files.pythonhosted.org/packages/29/e6/d1a1d78c439cad688757b70f26c50a53332167c364edb0134cadd280e234/urllib3-1.26.2.tar.gz"
    sha256 "19188f96923873c92ccb987120ec4acaa12f0461fa9ce5d3d0772bc965a39e08"
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
