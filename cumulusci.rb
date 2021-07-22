class Cumulusci < Formula
  include Language::Python::Virtualenv

  desc "Python framework for building automation for Salesforce projects"
  homepage "https://github.com/SFDO-Tooling/CumulusCI"
  url "https://files.pythonhosted.org/packages/2c/6b/538601ae3c16f516f24a84b0ae4e465c4c9335089a5ee841c7b7226aec63/cumulusci-3.40.0.tar.gz"
  sha256 "3682f7fc57c614aa5d57fab290ce5e13e577048dd2f8323f991be82b7e3ca508"
  head "https://github.com/SFDO-Tooling/CumulusCI.git"

  depends_on "python@3.9"

  def install
    xy = Language::Python.major_minor_version "python3"
    site_packages = libexec/"lib/python#{xy}/site-packages"
    ENV.prepend_create_path "PYTHONPATH", site_packages

    reqs = <<-REQS
#
# This file is autogenerated by pip-compile
# To update, run:
#
#    pip-compile --generate-hashes --output-file=/var/folders/4x/gtww81rj2gd9b39drx5skw340000gp/T/tmp.ccbClI8C /var/folders/4x/gtww81rj2gd9b39drx5skw340000gp/T/tmp.NsxWHCws
#
appdirs==1.4.4 \
    --hash=sha256:7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41 \
    --hash=sha256:a841dacd6b99318a741b166adb07e19ee71a274450e68237b4650ca1055ab128
    # via
    #   cumulusci
    #   fs
authlib==0.15.4 \
    --hash=sha256:37df3a2554bc6fe0da3cc6848c44fac2ae40634a7f8fc72543947f4330b26464 \
    --hash=sha256:d9fe5edb59801b16583faa86f88d798d99d952979b9616d5c735b9170b41ae2c
    # via
    #   cumulusci
    #   simple-salesforce
certifi==2021.5.30 \
    --hash=sha256:2bbf76fd432960138b3ef6dda3dde0544f27cbf8546c458e60baf371917ba9ee \
    --hash=sha256:50b1e4f8446b06f41be7dd6338db18e0990601dce795c2b1686458aa7e8fa7d8
    # via
    #   cumulusci
    #   requests
cffi==1.14.6 \
    --hash=sha256:06c54a68935738d206570b20da5ef2b6b6d92b38ef3ec45c5422c0ebaf338d4d \
    --hash=sha256:0c0591bee64e438883b0c92a7bed78f6290d40bf02e54c5bf0978eaf36061771 \
    --hash=sha256:19ca0dbdeda3b2615421d54bef8985f72af6e0c47082a8d26122adac81a95872 \
    --hash=sha256:22b9c3c320171c108e903d61a3723b51e37aaa8c81255b5e7ce102775bd01e2c \
    --hash=sha256:26bb2549b72708c833f5abe62b756176022a7b9a7f689b571e74c8478ead51dc \
    --hash=sha256:33791e8a2dc2953f28b8d8d300dde42dd929ac28f974c4b4c6272cb2955cb762 \
    --hash=sha256:3c8d896becff2fa653dc4438b54a5a25a971d1f4110b32bd3068db3722c80202 \
    --hash=sha256:4373612d59c404baeb7cbd788a18b2b2a8331abcc84c3ba40051fcd18b17a4d5 \
    --hash=sha256:487d63e1454627c8e47dd230025780e91869cfba4c753a74fda196a1f6ad6548 \
    --hash=sha256:48916e459c54c4a70e52745639f1db524542140433599e13911b2f329834276a \
    --hash=sha256:4922cd707b25e623b902c86188aca466d3620892db76c0bdd7b99a3d5e61d35f \
    --hash=sha256:55af55e32ae468e9946f741a5d51f9896da6b9bf0bbdd326843fec05c730eb20 \
    --hash=sha256:57e555a9feb4a8460415f1aac331a2dc833b1115284f7ded7278b54afc5bd218 \
    --hash=sha256:5d4b68e216fc65e9fe4f524c177b54964af043dde734807586cf5435af84045c \
    --hash=sha256:64fda793737bc4037521d4899be780534b9aea552eb673b9833b01f945904c2e \
    --hash=sha256:6d6169cb3c6c2ad50db5b868db6491a790300ade1ed5d1da29289d73bbe40b56 \
    --hash=sha256:7bcac9a2b4fdbed2c16fa5681356d7121ecabf041f18d97ed5b8e0dd38a80224 \
    --hash=sha256:80b06212075346b5546b0417b9f2bf467fea3bfe7352f781ffc05a8ab24ba14a \
    --hash=sha256:818014c754cd3dba7229c0f5884396264d51ffb87ec86e927ef0be140bfdb0d2 \
    --hash=sha256:8eb687582ed7cd8c4bdbff3df6c0da443eb89c3c72e6e5dcdd9c81729712791a \
    --hash=sha256:99f27fefe34c37ba9875f224a8f36e31d744d8083e00f520f133cab79ad5e819 \
    --hash=sha256:9f3e33c28cd39d1b655ed1ba7247133b6f7fc16fa16887b120c0c670e35ce346 \
    --hash=sha256:a8661b2ce9694ca01c529bfa204dbb144b275a31685a075ce123f12331be790b \
    --hash=sha256:a9da7010cec5a12193d1af9872a00888f396aba3dc79186604a09ea3ee7c029e \
    --hash=sha256:aedb15f0a5a5949ecb129a82b72b19df97bbbca024081ed2ef88bd5c0a610534 \
    --hash=sha256:b315d709717a99f4b27b59b021e6207c64620790ca3e0bde636a6c7f14618abb \
    --hash=sha256:ba6f2b3f452e150945d58f4badd92310449876c4c954836cfb1803bdd7b422f0 \
    --hash=sha256:c33d18eb6e6bc36f09d793c0dc58b0211fccc6ae5149b808da4a62660678b156 \
    --hash=sha256:c9a875ce9d7fe32887784274dd533c57909b7b1dcadcc128a2ac21331a9765dd \
    --hash=sha256:c9e005e9bd57bc987764c32a1bee4364c44fdc11a3cc20a40b93b444984f2b87 \
    --hash=sha256:d2ad4d668a5c0645d281dcd17aff2be3212bc109b33814bbb15c4939f44181cc \
    --hash=sha256:d950695ae4381ecd856bcaf2b1e866720e4ab9a1498cba61c602e56630ca7195 \
    --hash=sha256:e22dcb48709fc51a7b58a927391b23ab37eb3737a98ac4338e2448bef8559b33 \
    --hash=sha256:e8c6a99be100371dbb046880e7a282152aa5d6127ae01783e37662ef73850d8f \
    --hash=sha256:e9dc245e3ac69c92ee4c167fbdd7428ec1956d4e754223124991ef29eb57a09d \
    --hash=sha256:eb687a11f0a7a1839719edd80f41e459cc5366857ecbed383ff376c4e3cc6afd \
    --hash=sha256:eb9e2a346c5238a30a746893f23a9535e700f8192a68c07c0258e7ece6ff3728 \
    --hash=sha256:ed38b924ce794e505647f7c331b22a693bee1538fdf46b0222c4717b42f744e7 \
    --hash=sha256:f0010c6f9d1a4011e429109fda55a225921e3206e7f62a0c22a35344bfd13cca \
    --hash=sha256:f0c5d1acbfca6ebdd6b1e3eded8d261affb6ddcf2186205518f1428b8569bb99 \
    --hash=sha256:f10afb1004f102c7868ebfe91c28f4a712227fe4cb24974350ace1f90e1febbf \
    --hash=sha256:f174135f5609428cc6e1b9090f9268f5c8935fddb1b25ccb8255a2d50de6789e \
    --hash=sha256:f3ebe6e73c319340830a9b2825d32eb6d8475c1dac020b4f0aa774ee3b898d1c \
    --hash=sha256:f627688813d0a4140153ff532537fbe4afea5a3dffce1f9deb7f91f848a832b5 \
    --hash=sha256:fd4305f86f53dfd8cd3522269ed7fc34856a8ee3709a5e28b2836b2db9d4cd69
    # via
    #   cryptography
    #   cumulusci
charset-normalizer==2.0.3 \
    --hash=sha256:88fce3fa5b1a84fdcb3f603d889f723d1dd89b26059d0123ca435570e848d5e1 \
    --hash=sha256:c46c3ace2d744cfbdebceaa3c19ae691f53ae621b39fd7570f59d14fb7f2fd12
    # via
    #   cumulusci
    #   requests
click==7.1.2 \
    --hash=sha256:d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a \
    --hash=sha256:dacca89f4bfadd5de3d7489b7c8a566eee0d3676333fbb50030263894c38c0dc
    # via cumulusci
coloredlogs==15.0.1 \
    --hash=sha256:612ee75c546f53e92e70049c9dbfcc18c935a2b9a53b66085ce9ef6a6e5c0934 \
    --hash=sha256:7c991aa71a4577af2f82600d8f8f3a89f936baeaf9b50a9c197da014e5bf16b0
    # via cumulusci
contextvars==2.4 \
    --hash=sha256:f38c908aaa59c14335eeea12abea5f443646216c4e29380d7bf34d2018e2c39e
    # via cumulusci
cryptography==3.4.7 \
    --hash=sha256:0f1212a66329c80d68aeeb39b8a16d54ef57071bf22ff4e521657b27372e327d \
    --hash=sha256:1e056c28420c072c5e3cb36e2b23ee55e260cb04eee08f702e0edfec3fb51959 \
    --hash=sha256:240f5c21aef0b73f40bb9f78d2caff73186700bf1bc6b94285699aff98cc16c6 \
    --hash=sha256:26965837447f9c82f1855e0bc8bc4fb910240b6e0d16a664bb722df3b5b06873 \
    --hash=sha256:37340614f8a5d2fb9aeea67fd159bfe4f5f4ed535b1090ce8ec428b2f15a11f2 \
    --hash=sha256:3d10de8116d25649631977cb37da6cbdd2d6fa0e0281d014a5b7d337255ca713 \
    --hash=sha256:3d8427734c781ea5f1b41d6589c293089704d4759e34597dce91014ac125aad1 \
    --hash=sha256:7ec5d3b029f5fa2b179325908b9cd93db28ab7b85bb6c1db56b10e0b54235177 \
    --hash=sha256:8e56e16617872b0957d1c9742a3f94b43533447fd78321514abbe7db216aa250 \
    --hash=sha256:de4e5f7f68220d92b7637fc99847475b59154b7a1b3868fb7385337af54ac9ca \
    --hash=sha256:eb8cc2afe8b05acbd84a43905832ec78e7b3873fb124ca190f574dca7389a87d \
    --hash=sha256:ee77aa129f481be46f8d92a1a7db57269a2f23052d5f2433b4621bb457081cc9
    # via
    #   authlib
    #   cumulusci
    #   jwcrypto
cumulusci==3.40.0 \
    --hash=sha256:157fcd6a6963d1ea131cf880af1ce9acdf40565983582c1a0a35622695c26187 \
    --hash=sha256:3682f7fc57c614aa5d57fab290ce5e13e577048dd2f8323f991be82b7e3ca508
    # via -r /var/folders/4x/gtww81rj2gd9b39drx5skw340000gp/T/tmp.NsxWHCws
deprecated==1.2.12 \
    --hash=sha256:08452d69b6b5bc66e8330adde0a4f8642e969b9e1702904d137eeb29c8ffc771 \
    --hash=sha256:6d2de2de7931a968874481ef30208fd4e08da39177d61d3d4ebdf4366e7dbca1
    # via
    #   cumulusci
    #   jwcrypto
docutils==0.16 \
    --hash=sha256:0c5b78adfbf7762415433f5515cd5c9e762339e23369dbe8000d84a4bf4ab3af \
    --hash=sha256:c2de3a60e9e7d07be26b7f2b00ca0309c207e06c100f9cc2a94931fc75a478fc
    # via cumulusci
faker==8.10.1 \
    --hash=sha256:9ac6b39b9618f55be6b8b45089e624564469a035cc845c69ce990332ce3663f4 \
    --hash=sha256:a665e6e2e9087ec9ad4ebcd2f09acd031b44193ee93401817001b6557c6502b4
    # via cumulusci
fs==2.4.13 \
    --hash=sha256:1d10cc8f9c55fbcf7b23775289a13f6796dca7acd5a135c379f49e87a56a7230 \
    --hash=sha256:caab4dc1561d63c92f36ee78976f6a4a01381830d8420ce34a78d4f1bb1dc95f
    # via cumulusci
github3.py==2.0.0 \
    --hash=sha256:7e153e5dc559f27e4d15c91571a2d6e1522c9faa4406e188459d9731f0b98875 \
    --hash=sha256:8dd4ac612fd60cb277eaf6e2ce02f68dda54aba06870ca6fa2b28369bf39aa14
    # via cumulusci
greenlet==1.1.0 \
    --hash=sha256:03f28a5ea20201e70ab70518d151116ce939b412961c33827519ce620957d44c \
    --hash=sha256:06d7ac89e6094a0a8f8dc46aa61898e9e1aec79b0f8b47b2400dd51a44dbc832 \
    --hash=sha256:06ecb43b04480e6bafc45cb1b4b67c785e183ce12c079473359e04a709333b08 \
    --hash=sha256:096cb0217d1505826ba3d723e8981096f2622cde1eb91af9ed89a17c10aa1f3e \
    --hash=sha256:0c557c809eeee215b87e8a7cbfb2d783fb5598a78342c29ade561440abae7d22 \
    --hash=sha256:0de64d419b1cb1bfd4ea544bedea4b535ef3ae1e150b0f2609da14bbf48a4a5f \
    --hash=sha256:14927b15c953f8f2d2a8dffa224aa78d7759ef95284d4c39e1745cf36e8cdd2c \
    --hash=sha256:16183fa53bc1a037c38d75fdc59d6208181fa28024a12a7f64bb0884434c91ea \
    --hash=sha256:206295d270f702bc27dbdbd7651e8ebe42d319139e0d90217b2074309a200da8 \
    --hash=sha256:22002259e5b7828b05600a762579fa2f8b33373ad95a0ee57b4d6109d0e589ad \
    --hash=sha256:2325123ff3a8ecc10ca76f062445efef13b6cf5a23389e2df3c02a4a527b89bc \
    --hash=sha256:258f9612aba0d06785143ee1cbf2d7361801c95489c0bd10c69d163ec5254a16 \
    --hash=sha256:3096286a6072553b5dbd5efbefc22297e9d06a05ac14ba017233fedaed7584a8 \
    --hash=sha256:3d13da093d44dee7535b91049e44dd2b5540c2a0e15df168404d3dd2626e0ec5 \
    --hash=sha256:408071b64e52192869129a205e5b463abda36eff0cebb19d6e63369440e4dc99 \
    --hash=sha256:598bcfd841e0b1d88e32e6a5ea48348a2c726461b05ff057c1b8692be9443c6e \
    --hash=sha256:5d928e2e3c3906e0a29b43dc26d9b3d6e36921eee276786c4e7ad9ff5665c78a \
    --hash=sha256:5f75e7f237428755d00e7460239a2482fa7e3970db56c8935bd60da3f0733e56 \
    --hash=sha256:60848099b76467ef09b62b0f4512e7e6f0a2c977357a036de602b653667f5f4c \
    --hash=sha256:6b1d08f2e7f2048d77343279c4d4faa7aef168b3e36039cba1917fffb781a8ed \
    --hash=sha256:70bd1bb271e9429e2793902dfd194b653221904a07cbf207c3139e2672d17959 \
    --hash=sha256:76ed710b4e953fc31c663b079d317c18f40235ba2e3d55f70ff80794f7b57922 \
    --hash=sha256:7920e3eccd26b7f4c661b746002f5ec5f0928076bd738d38d894bb359ce51927 \
    --hash=sha256:7db68f15486d412b8e2cfcd584bf3b3a000911d25779d081cbbae76d71bd1a7e \
    --hash=sha256:8833e27949ea32d27f7e96930fa29404dd4f2feb13cce483daf52e8842ec246a \
    --hash=sha256:944fbdd540712d5377a8795c840a97ff71e7f3221d3fddc98769a15a87b36131 \
    --hash=sha256:9a6b035aa2c5fcf3dbbf0e3a8a5bc75286fc2d4e6f9cfa738788b433ec894919 \
    --hash=sha256:9bdcff4b9051fb1aa4bba4fceff6a5f770c6be436408efd99b76fc827f2a9319 \
    --hash=sha256:a9017ff5fc2522e45562882ff481128631bf35da444775bc2776ac5c61d8bcae \
    --hash=sha256:aa4230234d02e6f32f189fd40b59d5a968fe77e80f59c9c933384fe8ba535535 \
    --hash=sha256:ad80bb338cf9f8129c049837a42a43451fc7c8b57ad56f8e6d32e7697b115505 \
    --hash=sha256:adb94a28225005890d4cf73648b5131e885c7b4b17bc762779f061844aabcc11 \
    --hash=sha256:b3090631fecdf7e983d183d0fad7ea72cfb12fa9212461a9b708ff7907ffff47 \
    --hash=sha256:b33b51ab057f8a20b497ffafdb1e79256db0c03ef4f5e3d52e7497200e11f821 \
    --hash=sha256:b97c9a144bbeec7039cca44df117efcbeed7209543f5695201cacf05ba3b5857 \
    --hash=sha256:be13a18cec649ebaab835dff269e914679ef329204704869f2f167b2c163a9da \
    --hash=sha256:be9768e56f92d1d7cd94185bab5856f3c5589a50d221c166cc2ad5eb134bd1dc \
    --hash=sha256:c1580087ab493c6b43e66f2bdd165d9e3c1e86ef83f6c2c44a29f2869d2c5bd5 \
    --hash=sha256:c35872b2916ab5a240d52a94314c963476c989814ba9b519bc842e5b61b464bb \
    --hash=sha256:c70c7dd733a4c56838d1f1781e769081a25fade879510c5b5f0df76956abfa05 \
    --hash=sha256:c767458511a59f6f597bfb0032a1c82a52c29ae228c2c0a6865cfeaeaac4c5f5 \
    --hash=sha256:c87df8ae3f01ffb4483c796fe1b15232ce2b219f0b18126948616224d3f658ee \
    --hash=sha256:ca1c4a569232c063615f9e70ff9a1e2fee8c66a6fb5caf0f5e8b21a396deec3e \
    --hash=sha256:cc407b68e0a874e7ece60f6639df46309376882152345508be94da608cc0b831 \
    --hash=sha256:da862b8f7de577bc421323714f63276acb2f759ab8c5e33335509f0b89e06b8f \
    --hash=sha256:dfe7eac0d253915116ed0cd160a15a88981a1d194c1ef151e862a5c7d2f853d3 \
    --hash=sha256:ed1377feed808c9c1139bdb6a61bcbf030c236dd288d6fca71ac26906ab03ba6 \
    --hash=sha256:f42ad188466d946f1b3afc0a9e1a266ac8926461ee0786c06baac6bd71f8a6f3 \
    --hash=sha256:f92731609d6625e1cc26ff5757db4d32b6b810d2a3363b0ff94ff573e5901f6f
    # via
    #   cumulusci
    #   sqlalchemy
humanfriendly==9.2 \
    --hash=sha256:332da98c24cc150efcc91b5508b19115209272bfdf4b0764a56795932f854271 \
    --hash=sha256:f7dba53ac7935fd0b4a2fc9a29e316ddd9ea135fb3052d3d0279d10c18ff9c48
    # via
    #   coloredlogs
    #   cumulusci
idna==3.2 \
    --hash=sha256:14475042e284991034cb48e06f6851428fb14c4dc953acd9be9a5e95c7b6dd7a \
    --hash=sha256:467fbad99067910785144ce333826c71fb0e63a425657295239737f7ecd125f3
    # via
    #   cumulusci
    #   requests
immutables==0.15 \
    --hash=sha256:141c2e9ea515a3a815007a429f0b47a578ebeb42c831edaec882a245a35fffca \
    --hash=sha256:2283a93c151566e6830aee0e5bee55fc273455503b43aa004356b50f9182092b \
    --hash=sha256:3035849accee4f4e510ed7c94366a40e0f5fef9069fbe04a35f4787b13610a4a \
    --hash=sha256:3713ab1ebbb6946b7ce1387bb9d1d7f5e09c45add58c2a2ee65f963c171e746b \
    --hash=sha256:3b15c08c71c59e5b7c2470ef949d49ff9f4263bb77f488422eaa157da84d6999 \
    --hash=sha256:6728f4392e3e8e64b593a5a0cd910a1278f07f879795517e09f308daed138631 \
    --hash=sha256:6f117d9206165b9dab8fd81c5129db757d1a044953f438654236ed9a7a4224ae \
    --hash=sha256:8703d8abfd8687932f2a05f38e7de270c3a6ca3bd1c1efb3c938656b3f2f985a \
    --hash=sha256:a0a4e4417d5ef4812d7f99470cd39347b58cb927365dd2b8da9161040d260db0 \
    --hash=sha256:b04fa69174e0c8f815f9c55f2a43fc9e5a68452fab459a08e904a74e8471639f \
    --hash=sha256:b75ade826920c4e490b1bb14cf967ac14e61eb7c5562161c5d7337d61962c226 \
    --hash=sha256:b7e13c061785e34f73c4f659861f1b3e4a5fd918e4395c84b21c4e3d449ebe27 \
    --hash=sha256:b8ad986f9b532c026f19585289384b0769188fcb68b37c7f0bd0df9092a6ca54 \
    --hash=sha256:cbe8c64640637faa5535d539421b293327f119c31507c33ca880bd4f16035eb6 \
    --hash=sha256:f0836cd3bdc37c8a77b192bbe5f41dbcc3ce654db048ebbba89bdfe6db7a1c7a
    # via
    #   contextvars
    #   cumulusci
importlib-metadata==4.6.1 \
    --hash=sha256:079ada16b7fc30dfbb5d13399a5113110dab1aa7c2bc62f66af75f0b717c8cac \
    --hash=sha256:9f55f560e116f8643ecf2922d9cd3e1c7e8d52e683178fecd9d08f6aa357e11e
    # via
    #   cumulusci
    #   keyring
jinja2==2.11.3 \
    --hash=sha256:03e47ad063331dd6a3f04a43eddca8a966a26ba0c5b7207a9a9e4e08f1b29419 \
    --hash=sha256:a6d58433de0ae800347cab1fa3043cebbabe8baa9d29e668f1c768cb87a333c6
    # via cumulusci
jwcrypto==0.9.1 \
    --hash=sha256:12976a09895ec0076ce17c49ab7be64d6e63bcd7fd9a773e3fedf8011537a5f6 \
    --hash=sha256:63531529218ba9869e14ef8c9e7b516865ede3facf9b0ef3d3ba68014da211f9
    # via
    #   cumulusci
    #   github3.py
keyring==23.0.1 \
    --hash=sha256:045703609dd3fccfcdb27da201684278823b72af515aedec1a8515719a038cb8 \
    --hash=sha256:8f607d7d1cc502c43a932a275a56fe47db50271904513a379d39df1af277ac48
    # via cumulusci
lxml==4.6.3 \
    --hash=sha256:079f3ae844f38982d156efce585bc540c16a926d4436712cf4baee0cce487a3d \
    --hash=sha256:0fbcf5565ac01dff87cbfc0ff323515c823081c5777a9fc7703ff58388c258c3 \
    --hash=sha256:122fba10466c7bd4178b07dba427aa516286b846b2cbd6f6169141917283aae2 \
    --hash=sha256:1b38116b6e628118dea5b2186ee6820ab138dbb1e24a13e478490c7db2f326ae \
    --hash=sha256:1b7584d421d254ab86d4f0b13ec662a9014397678a7c4265a02a6d7c2b18a75f \
    --hash=sha256:26e761ab5b07adf5f555ee82fb4bfc35bf93750499c6c7614bd64d12aaa67927 \
    --hash=sha256:289e9ca1a9287f08daaf796d96e06cb2bc2958891d7911ac7cae1c5f9e1e0ee3 \
    --hash=sha256:2a9d50e69aac3ebee695424f7dbd7b8c6d6eb7de2a2eb6b0f6c7db6aa41e02b7 \
    --hash=sha256:3082c518be8e97324390614dacd041bb1358c882d77108ca1957ba47738d9d59 \
    --hash=sha256:33bb934a044cf32157c12bfcfbb6649807da20aa92c062ef51903415c704704f \
    --hash=sha256:3439c71103ef0e904ea0a1901611863e51f50b5cd5e8654a151740fde5e1cade \
    --hash=sha256:36108c73739985979bf302006527cf8a20515ce444ba916281d1c43938b8bb96 \
    --hash=sha256:39b78571b3b30645ac77b95f7c69d1bffc4cf8c3b157c435a34da72e78c82468 \
    --hash=sha256:4289728b5e2000a4ad4ab8da6e1db2e093c63c08bdc0414799ee776a3f78da4b \
    --hash=sha256:4bff24dfeea62f2e56f5bab929b4428ae6caba2d1eea0c2d6eb618e30a71e6d4 \
    --hash=sha256:4c61b3a0db43a1607d6264166b230438f85bfed02e8cff20c22e564d0faff354 \
    --hash=sha256:542d454665a3e277f76954418124d67516c5f88e51a900365ed54a9806122b83 \
    --hash=sha256:5a0a14e264069c03e46f926be0d8919f4105c1623d620e7ec0e612a2e9bf1c04 \
    --hash=sha256:5c8c163396cc0df3fd151b927e74f6e4acd67160d6c33304e805b84293351d16 \
    --hash=sha256:66e575c62792c3f9ca47cb8b6fab9e35bab91360c783d1606f758761810c9791 \
    --hash=sha256:6f12e1427285008fd32a6025e38e977d44d6382cf28e7201ed10d6c1698d2a9a \
    --hash=sha256:74f7d8d439b18fa4c385f3f5dfd11144bb87c1da034a466c5b5577d23a1d9b51 \
    --hash=sha256:7610b8c31688f0b1be0ef882889817939490a36d0ee880ea562a4e1399c447a1 \
    --hash=sha256:76fa7b1362d19f8fbd3e75fe2fb7c79359b0af8747e6f7141c338f0bee2f871a \
    --hash=sha256:7728e05c35412ba36d3e9795ae8995e3c86958179c9770e65558ec3fdfd3724f \
    --hash=sha256:8157dadbb09a34a6bd95a50690595e1fa0af1a99445e2744110e3dca7831c4ee \
    --hash=sha256:820628b7b3135403540202e60551e741f9b6d3304371712521be939470b454ec \
    --hash=sha256:884ab9b29feaca361f7f88d811b1eea9bfca36cf3da27768d28ad45c3ee6f969 \
    --hash=sha256:89b8b22a5ff72d89d48d0e62abb14340d9e99fd637d046c27b8b257a01ffbe28 \
    --hash=sha256:92e821e43ad382332eade6812e298dc9701c75fe289f2a2d39c7960b43d1e92a \
    --hash=sha256:b007cbb845b28db4fb8b6a5cdcbf65bacb16a8bd328b53cbc0698688a68e1caa \
    --hash=sha256:bc4313cbeb0e7a416a488d72f9680fffffc645f8a838bd2193809881c67dd106 \
    --hash=sha256:bccbfc27563652de7dc9bdc595cb25e90b59c5f8e23e806ed0fd623755b6565d \
    --hash=sha256:c47ff7e0a36d4efac9fd692cfa33fbd0636674c102e9e8d9b26e1b93a94e7617 \
    --hash=sha256:c4f05c5a7c49d2fb70223d0d5bcfbe474cf928310ac9fa6a7c6dddc831d0b1d4 \
    --hash=sha256:cdaf11d2bd275bf391b5308f86731e5194a21af45fbaaaf1d9e8147b9160ea92 \
    --hash=sha256:ce256aaa50f6cc9a649c51be3cd4ff142d67295bfc4f490c9134d0f9f6d58ef0 \
    --hash=sha256:d2e35d7bf1c1ac8c538f88d26b396e73dd81440d59c1ef8522e1ea77b345ede4 \
    --hash=sha256:d916d31fd85b2f78c76400d625076d9124de3e4bda8b016d25a050cc7d603f24 \
    --hash=sha256:df7c53783a46febb0e70f6b05df2ba104610f2fb0d27023409734a3ecbb78fb2 \
    --hash=sha256:e1cbd3f19a61e27e011e02f9600837b921ac661f0c40560eefb366e4e4fb275e \
    --hash=sha256:efac139c3f0bf4f0939f9375af4b02c5ad83a622de52d6dfa8e438e8e01d0eb0 \
    --hash=sha256:efd7a09678fd8b53117f6bae4fa3825e0a22b03ef0a932e070c0bdbb3a35e654 \
    --hash=sha256:f2380a6376dfa090227b663f9678150ef27543483055cc327555fb592c5967e2 \
    --hash=sha256:f8380c03e45cf09f8557bdaa41e1fa7c81f3ae22828e1db470ab2a6c96d8bc23 \
    --hash=sha256:f90ba11136bfdd25cae3951af8da2e95121c9b9b93727b1b896e3fa105b2f586
    # via cumulusci
markupsafe==1.1.1 \
    --hash=sha256:00bc623926325b26bb9605ae9eae8a215691f33cae5df11ca5424f06f2d1f473 \
    --hash=sha256:09027a7803a62ca78792ad89403b1b7a73a01c8cb65909cd876f7fcebd79b161 \
    --hash=sha256:09c4b7f37d6c648cb13f9230d847adf22f8171b1ccc4d5682398e77f40309235 \
    --hash=sha256:1027c282dad077d0bae18be6794e6b6b8c91d58ed8a8d89a89d59693b9131db5 \
    --hash=sha256:13d3144e1e340870b25e7b10b98d779608c02016d5184cfb9927a9f10c689f42 \
    --hash=sha256:195d7d2c4fbb0ee8139a6cf67194f3973a6b3042d742ebe0a9ed36d8b6f0c07f \
    --hash=sha256:22c178a091fc6630d0d045bdb5992d2dfe14e3259760e713c490da5323866c39 \
    --hash=sha256:24982cc2533820871eba85ba648cd53d8623687ff11cbb805be4ff7b4c971aff \
    --hash=sha256:29872e92839765e546828bb7754a68c418d927cd064fd4708fab9fe9c8bb116b \
    --hash=sha256:2beec1e0de6924ea551859edb9e7679da6e4870d32cb766240ce17e0a0ba2014 \
    --hash=sha256:3b8a6499709d29c2e2399569d96719a1b21dcd94410a586a18526b143ec8470f \
    --hash=sha256:43a55c2930bbc139570ac2452adf3d70cdbb3cfe5912c71cdce1c2c6bbd9c5d1 \
    --hash=sha256:46c99d2de99945ec5cb54f23c8cd5689f6d7177305ebff350a58ce5f8de1669e \
    --hash=sha256:500d4957e52ddc3351cabf489e79c91c17f6e0899158447047588650b5e69183 \
    --hash=sha256:535f6fc4d397c1563d08b88e485c3496cf5784e927af890fb3c3aac7f933ec66 \
    --hash=sha256:596510de112c685489095da617b5bcbbac7dd6384aeebeda4df6025d0256a81b \
    --hash=sha256:62fe6c95e3ec8a7fad637b7f3d372c15ec1caa01ab47926cfdf7a75b40e0eac1 \
    --hash=sha256:6788b695d50a51edb699cb55e35487e430fa21f1ed838122d722e0ff0ac5ba15 \
    --hash=sha256:6dd73240d2af64df90aa7c4e7481e23825ea70af4b4922f8ede5b9e35f78a3b1 \
    --hash=sha256:6f1e273a344928347c1290119b493a1f0303c52f5a5eae5f16d74f48c15d4a85 \
    --hash=sha256:6fffc775d90dcc9aed1b89219549b329a9250d918fd0b8fa8d93d154918422e1 \
    --hash=sha256:717ba8fe3ae9cc0006d7c451f0bb265ee07739daf76355d06366154ee68d221e \
    --hash=sha256:79855e1c5b8da654cf486b830bd42c06e8780cea587384cf6545b7d9ac013a0b \
    --hash=sha256:7c1699dfe0cf8ff607dbdcc1e9b9af1755371f92a68f706051cc8c37d447c905 \
    --hash=sha256:7fed13866cf14bba33e7176717346713881f56d9d2bcebab207f7a036f41b850 \
    --hash=sha256:84dee80c15f1b560d55bcfe6d47b27d070b4681c699c572af2e3c7cc90a3b8e0 \
    --hash=sha256:88e5fcfb52ee7b911e8bb6d6aa2fd21fbecc674eadd44118a9cc3863f938e735 \
    --hash=sha256:8defac2f2ccd6805ebf65f5eeb132adcf2ab57aa11fdf4c0dd5169a004710e7d \
    --hash=sha256:98bae9582248d6cf62321dcb52aaf5d9adf0bad3b40582925ef7c7f0ed85fceb \
    --hash=sha256:98c7086708b163d425c67c7a91bad6e466bb99d797aa64f965e9d25c12111a5e \
    --hash=sha256:9add70b36c5666a2ed02b43b335fe19002ee5235efd4b8a89bfcf9005bebac0d \
    --hash=sha256:9bf40443012702a1d2070043cb6291650a0841ece432556f784f004937f0f32c \
    --hash=sha256:a6a744282b7718a2a62d2ed9d993cad6f5f585605ad352c11de459f4108df0a1 \
    --hash=sha256:acf08ac40292838b3cbbb06cfe9b2cb9ec78fce8baca31ddb87aaac2e2dc3bc2 \
    --hash=sha256:ade5e387d2ad0d7ebf59146cc00c8044acbd863725f887353a10df825fc8ae21 \
    --hash=sha256:b00c1de48212e4cc9603895652c5c410df699856a2853135b3967591e4beebc2 \
    --hash=sha256:b1282f8c00509d99fef04d8ba936b156d419be841854fe901d8ae224c59f0be5 \
    --hash=sha256:b1dba4527182c95a0db8b6060cc98ac49b9e2f5e64320e2b56e47cb2831978c7 \
    --hash=sha256:b2051432115498d3562c084a49bba65d97cf251f5a331c64a12ee7e04dacc51b \
    --hash=sha256:b7d644ddb4dbd407d31ffb699f1d140bc35478da613b441c582aeb7c43838dd8 \
    --hash=sha256:ba59edeaa2fc6114428f1637ffff42da1e311e29382d81b339c1817d37ec93c6 \
    --hash=sha256:bf5aa3cbcfdf57fa2ee9cd1822c862ef23037f5c832ad09cfea57fa846dec193 \
    --hash=sha256:c8716a48d94b06bb3b2524c2b77e055fb313aeb4ea620c8dd03a105574ba704f \
    --hash=sha256:caabedc8323f1e93231b52fc32bdcde6db817623d33e100708d9a68e1f53b26b \
    --hash=sha256:cd5df75523866410809ca100dc9681e301e3c27567cf498077e8551b6d20e42f \
    --hash=sha256:cdb132fc825c38e1aeec2c8aa9338310d29d337bebbd7baa06889d09a60a1fa2 \
    --hash=sha256:d53bc011414228441014aa71dbec320c66468c1030aae3a6e29778a3382d96e5 \
    --hash=sha256:d73a845f227b0bfe8a7455ee623525ee656a9e2e749e4742706d80a6065d5e2c \
    --hash=sha256:d9be0ba6c527163cbed5e0857c451fcd092ce83947944d6c14bc95441203f032 \
    --hash=sha256:e249096428b3ae81b08327a63a485ad0878de3fb939049038579ac0ef61e17e7 \
    --hash=sha256:e8313f01ba26fbbe36c7be1966a7b7424942f670f38e666995b88d012765b9be \
    --hash=sha256:feb7b34d6325451ef96bc0e36e1a6c0c1c64bc1fbec4b854f4529e51887b1621
    # via
    #   cumulusci
    #   jinja2
psutil==5.8.0 \
    --hash=sha256:0066a82f7b1b37d334e68697faba68e5ad5e858279fd6351c8ca6024e8d6ba64 \
    --hash=sha256:02b8292609b1f7fcb34173b25e48d0da8667bc85f81d7476584d889c6e0f2131 \
    --hash=sha256:0ae6f386d8d297177fd288be6e8d1afc05966878704dad9847719650e44fc49c \
    --hash=sha256:0c9ccb99ab76025f2f0bbecf341d4656e9c1351db8cc8a03ccd62e318ab4b5c6 \
    --hash=sha256:0dd4465a039d343925cdc29023bb6960ccf4e74a65ad53e768403746a9207023 \
    --hash=sha256:12d844996d6c2b1d3881cfa6fa201fd635971869a9da945cf6756105af73d2df \
    --hash=sha256:1bff0d07e76114ec24ee32e7f7f8d0c4b0514b3fae93e3d2aaafd65d22502394 \
    --hash=sha256:245b5509968ac0bd179287d91210cd3f37add77dad385ef238b275bad35fa1c4 \
    --hash=sha256:28ff7c95293ae74bf1ca1a79e8805fcde005c18a122ca983abf676ea3466362b \
    --hash=sha256:36b3b6c9e2a34b7d7fbae330a85bf72c30b1c827a4366a07443fc4b6270449e2 \
    --hash=sha256:52de075468cd394ac98c66f9ca33b2f54ae1d9bff1ef6b67a212ee8f639ec06d \
    --hash=sha256:5da29e394bdedd9144c7331192e20c1f79283fb03b06e6abd3a8ae45ffecee65 \
    --hash=sha256:61f05864b42fedc0771d6d8e49c35f07efd209ade09a5afe6a5059e7bb7bf83d \
    --hash=sha256:6223d07a1ae93f86451d0198a0c361032c4c93ebd4bf6d25e2fb3edfad9571ef \
    --hash=sha256:6323d5d845c2785efb20aded4726636546b26d3b577aded22492908f7c1bdda7 \
    --hash=sha256:6ffe81843131ee0ffa02c317186ed1e759a145267d54fdef1bc4ea5f5931ab60 \
    --hash=sha256:74f2d0be88db96ada78756cb3a3e1b107ce8ab79f65aa885f76d7664e56928f6 \
    --hash=sha256:74fb2557d1430fff18ff0d72613c5ca30c45cdbfcddd6a5773e9fc1fe9364be8 \
    --hash=sha256:90d4091c2d30ddd0a03e0b97e6a33a48628469b99585e2ad6bf21f17423b112b \
    --hash=sha256:90f31c34d25b1b3ed6c40cdd34ff122b1887a825297c017e4cbd6796dd8b672d \
    --hash=sha256:99de3e8739258b3c3e8669cb9757c9a861b2a25ad0955f8e53ac662d66de61ac \
    --hash=sha256:c6a5fd10ce6b6344e616cf01cc5b849fa8103fbb5ba507b6b2dee4c11e84c935 \
    --hash=sha256:ce8b867423291cb65cfc6d9c4955ee9bfc1e21fe03bb50e177f2b957f1c2469d \
    --hash=sha256:d225cd8319aa1d3c85bf195c4e07d17d3cd68636b8fc97e6cf198f782f99af28 \
    --hash=sha256:ea313bb02e5e25224e518e4352af4bf5e062755160f77e4b1767dd5ccb65f876 \
    --hash=sha256:ea372bcc129394485824ae3e3ddabe67dc0b118d262c568b4d2602a7070afdb0 \
    --hash=sha256:f4634b033faf0d968bb9220dd1c793b897ab7f1189956e1aa9eae752527127d3 \
    --hash=sha256:fcc01e900c1d7bee2a37e5d6e4f9194760a93597c97fee89c4ae51701de03563
    # via cumulusci
pycparser==2.20 \
    --hash=sha256:2d475327684562c3a96cc71adf7dc8c4f0565175cf86b6d7a404ff4c771f15f0 \
    --hash=sha256:7582ad22678f0fcd81102833f60ef8d0e57288b6b5fb00323d101be910e35705
    # via
    #   cffi
    #   cumulusci
pydantic==1.8.2 \
    --hash=sha256:021ea0e4133e8c824775a0cfe098677acf6fa5a3cbf9206a376eed3fc09302cd \
    --hash=sha256:05ddfd37c1720c392f4e0d43c484217b7521558302e7069ce8d318438d297739 \
    --hash=sha256:05ef5246a7ffd2ce12a619cbb29f3307b7c4509307b1b49f456657b43529dc6f \
    --hash=sha256:10e5622224245941efc193ad1d159887872776df7a8fd592ed746aa25d071840 \
    --hash=sha256:18b5ea242dd3e62dbf89b2b0ec9ba6c7b5abaf6af85b95a97b00279f65845a23 \
    --hash=sha256:234a6c19f1c14e25e362cb05c68afb7f183eb931dd3cd4605eafff055ebbf287 \
    --hash=sha256:244ad78eeb388a43b0c927e74d3af78008e944074b7d0f4f696ddd5b2af43c62 \
    --hash=sha256:26464e57ccaafe72b7ad156fdaa4e9b9ef051f69e175dbbb463283000c05ab7b \
    --hash=sha256:41b542c0b3c42dc17da70554bc6f38cbc30d7066d2c2815a94499b5684582ecb \
    --hash=sha256:4a03cbbe743e9c7247ceae6f0d8898f7a64bb65800a45cbdc52d65e370570820 \
    --hash=sha256:4be75bebf676a5f0f87937c6ddb061fa39cbea067240d98e298508c1bda6f3f3 \
    --hash=sha256:54cd5121383f4a461ff7644c7ca20c0419d58052db70d8791eacbbe31528916b \
    --hash=sha256:589eb6cd6361e8ac341db97602eb7f354551482368a37f4fd086c0733548308e \
    --hash=sha256:8621559dcf5afacf0069ed194278f35c255dc1a1385c28b32dd6c110fd6531b3 \
    --hash=sha256:8b223557f9510cf0bfd8b01316bf6dd281cf41826607eada99662f5e4963f316 \
    --hash=sha256:99a9fc39470010c45c161a1dc584997f1feb13f689ecf645f59bb4ba623e586b \
    --hash=sha256:a7c6002203fe2c5a1b5cbb141bb85060cbff88c2d78eccbc72d97eb7022c43e4 \
    --hash=sha256:a83db7205f60c6a86f2c44a61791d993dff4b73135df1973ecd9eed5ea0bda20 \
    --hash=sha256:ac8eed4ca3bd3aadc58a13c2aa93cd8a884bcf21cb019f8cfecaae3b6ce3746e \
    --hash=sha256:e710876437bc07bd414ff453ac8ec63d219e7690128d925c6e82889d674bb505 \
    --hash=sha256:ea5cb40a3b23b3265f6325727ddfc45141b08ed665458be8c6285e7b85bd73a1 \
    --hash=sha256:fec866a0b59f372b7e776f2d7308511784dace622e0992a0b59ea3ccee0ae833
    # via cumulusci
pyjwt==2.1.0 \
    --hash=sha256:934d73fbba91b0483d3857d1aff50e96b2a892384ee2c17417ed3203f173fca1 \
    --hash=sha256:fba44e7898bbca160a2b2b501f492824fc8382485d3a6f11ba5d0c1937ce6130
    # via cumulusci
python-dateutil==2.8.2 \
    --hash=sha256:0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86 \
    --hash=sha256:961d03dc3453ebbc59dbdea9e4e11c5651520a876d0f4db161e8674aae935da9
    # via
    #   cumulusci
    #   faker
    #   github3.py
pytz==2021.1 \
    --hash=sha256:83a4a90894bf38e243cf052c8b58f381bfe9a7a483f6a9cab140bc7f702ac4da \
    --hash=sha256:eb10ce3e7736052ed3623d49975ce333bcd712c7bb19a58b9e2089d4057d0798
    # via
    #   cumulusci
    #   fs
requests-futures==1.0.0 \
    --hash=sha256:35547502bf1958044716a03a2f47092a89efe8f9789ab0c4c528d9c9c30bc148
    # via cumulusci
requests==2.26.0 \
    --hash=sha256:6c1246513ecd5ecd4528a0906f910e8f0f9c6b8ec72030dc9fd154dc1a6efd24 \
    --hash=sha256:b8aa58f8cf793ffd8782d3d8cb19e66ef36f7aba4353eec859e74678b01b07a7
    # via
    #   cumulusci
    #   github3.py
    #   requests-futures
    #   robotframework-requests
    #   salesforce-bulk
    #   simple-salesforce
robotframework-lint==1.1 \
    --hash=sha256:2b5ac22ed59acbdf65f340ef3ddf10c7e88c9efd37cb03d7470d7c8e869cc0c1
    # via cumulusci
robotframework-pabot==2.0.1 \
    --hash=sha256:384ba46598b5dc6cfa6cf8ac122088cee8787fa3830dcdb43e913a9b8f432cbf
    # via cumulusci
robotframework-pythonlibcore==3.0.0 \
    --hash=sha256:1bce3b8dfcb7519789ee3a89320f6402e126f6d0a02794184a1ab8cee0e46b5d \
    --hash=sha256:af10c2403cd38834988c4ce68ffb6ec6f9b14bd2cd39ecf836d443377c59b7c4
    # via
    #   cumulusci
    #   robotframework-seleniumlibrary
robotframework-requests==0.9.1 \
    --hash=sha256:22ea105846b28ddfc49713c59a363ad636ece5e308476dea59e73e3c9b544755 \
    --hash=sha256:561e097fbd3a0431d148fd29b21b0dc3fea7af6467fcb87a86467f36fee52857
    # via cumulusci
robotframework-seleniumlibrary==5.1.3 \
    --hash=sha256:7c8211b870249db53dbb2091a5a36c09aa657f06405d112587d37d33fff7454e \
    --hash=sha256:f51a0068c6c0d8107ee1120874a3afbf2bbe751fd0782cb86a27a616d9ca30b6
    # via cumulusci
robotframework-stacktrace==0.4.1 \
    --hash=sha256:018d7a55b99733e64e3cc0b134771b61a47de61de23609ed35c7bf0a53e9290e \
    --hash=sha256:e96cb36e7e9ab55104c1f7d3606249a109e0a4c3bb6a0e294bff07d54ee6f6a5
    # via
    #   cumulusci
    #   robotframework-pabot
robotframework==4.1 \
    --hash=sha256:567f2a21f0906635e21d45fe3cb84a4809a12980c9f2706a8a5f65f40f6b4ccd \
    --hash=sha256:dd57b66ee4f059cfb72596b19016e37f40c0fd3f1e45f53726ae7ed07e05e4a3
    # via
    #   cumulusci
    #   robotframework-lint
    #   robotframework-pabot
    #   robotframework-requests
    #   robotframework-seleniumlibrary
    #   robotframework-stacktrace
rst2ansi==0.1.5 \
    --hash=sha256:1b17fb9a628d40f57933ad1a3aa952346444be069469508e73e95060da33fe6f \
    --hash=sha256:b2cf192e38975918d07540bba7d673550cd7d28ca7443410984e22d5ab058fb3
    # via cumulusci
salesforce-bulk==2.2.0 \
    --hash=sha256:6894e2f0d1b7a719388bbc425e1874cc096a3cc80106e93098a672709ac5ff4e
    # via cumulusci
sarge==0.1.6 \
    --hash=sha256:f48fb904e64f10ad6bef62422eaf4736acfd9b13ab64ba44822637a9dbb53265
    # via cumulusci
selenium==3.141.0 \
    --hash=sha256:2d7131d7bc5a5b99a2d9b04aaf2612c411b03b8ca1b1ee8d3de5845a9be2cb3c \
    --hash=sha256:deaf32b60ad91a4611b98d8002757f29e6f2c2d5fcaf202e1c9ad06d6772300d
    # via
    #   cumulusci
    #   robotframework-seleniumlibrary
simple-salesforce==1.11.2 \
    --hash=sha256:58812024224fe378027211d3ab637be9b06c8130ac248b3d407d8125cddd206c \
    --hash=sha256:995cf718bb240617b4c02c39c2c20288582916b11b06e7ebb6fb360729ee439b
    # via
    #   cumulusci
    #   salesforce-bulk
six==1.16.0 \
    --hash=sha256:1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926 \
    --hash=sha256:8abb2f1d86890a2dfb989f9a77cfcfd3e47c2a354b01111771326f8aa26e0254
    # via
    #   cumulusci
    #   fs
    #   jwcrypto
    #   python-dateutil
    #   salesforce-bulk
snowfakery==2.0 \
    --hash=sha256:d4988b74ba7dbe83d7108ae09db99534a30034356197d60645bff792aa99dbb1 \
    --hash=sha256:f6dda88c6a466fc51d4d31f607cc06f13ca8d2e911bc9506db6cdafcdb697d5b
    # via cumulusci
sqlalchemy==1.4.21 \
    --hash=sha256:07e9054f4df612beadd12ca8a5342246bffcad74a1fa8df1368d1f2bb07d8fc7 \
    --hash=sha256:0b7af10ecd1c3829ddf824e39129e026476af6a261388db4d26bf11525fd8d05 \
    --hash=sha256:20a5ecd03134c7ed2c05dfdf5bd96d84480afeebe3484e416f7d7ec8c92596ae \
    --hash=sha256:2ad74f0a7ae8c4fa374d3be26cdf8c0897669ba3fd8bad4607710bc2fb7f132d \
    --hash=sha256:340fb8eda79e5b116f761c953879c98c423eca82481d5cdad762beb108ee763e \
    --hash=sha256:4c8dc1ca3330b716c48317b4d91911e00a54c0f2de486c9c25ec0c54ebf12b5f \
    --hash=sha256:5042a7d43a8e0a8ffc8d2acacbd5fad1edf8336c376714632a5c61eff56ac06e \
    --hash=sha256:538544799d537684e83e697298fd5078252ee68f23b44d8271f77647f225bca3 \
    --hash=sha256:53b17656bacdb3b194bc6cff1bd2e044879cf015ab5352c932173c2172a4b99d \
    --hash=sha256:5dbcb3fd1d64d0835e383ea091037ca6aa70a43bd1cabb0c71c27796f2c5173f \
    --hash=sha256:628120ce7ef7f31824929c244894ee22a98d706d8879fb5441e1c572e02ca2ae \
    --hash=sha256:640fc3556a1022a781f3f07fd5dc9da842ef87f873139402d5d98d64d776360f \
    --hash=sha256:6774f2001e6359b041b8af3b9bc7669afc6adce39438fae99bfacf4b03490d54 \
    --hash=sha256:6bc28702213988c96e394685ad4103a4e347305cf90569693bef8e3d12f233ae \
    --hash=sha256:70b978fb1bbb629e9ce41235511d89ef9d694e3933b5a52dd6d0a4040b6c7830 \
    --hash=sha256:87cf4054632c20160592ca2917aec93bb83b12b3a39c865feab1ba44e0ed120d \
    --hash=sha256:89dbe4a792f28fd21d3319d26ceea32a3132f1c5ae578ec513f77e4c2adb9b91 \
    --hash=sha256:8a98e38cb07b63459070c3a63abd5059f254d2ddec7afe77824e160f6b9e26c3 \
    --hash=sha256:8f77ad5628e82f76ace2ff9a5b10ee87688bda0867f3e269cab5ed8be7e4ccc5 \
    --hash=sha256:92c9f6dbe3b3d7059beea12e5601b0b37dd7a51f9bb29fbc98ab314e2a8ffdb7 \
    --hash=sha256:ba84fb12826e4db193d5fbfdcf475f85c07fdfb76b84b3fb1504905f540db7ab \
    --hash=sha256:ba8fd99b546aacac74c97bb0676dd5270a1cd84c44fb67adc71d00ccabcb34a8 \
    --hash=sha256:bee8b2a399c6be1642d5cfcfb9d0d438fcacdd5188e0b16366fa15dbd49ec667 \
    --hash=sha256:cfa0c25e4c87517a679d97d0617ddaccb46337f558beac72e7d85c2f34365a35 \
    --hash=sha256:da11e254ab264f515b59d16f5d1ff24f5f02fbf0b9de2d2981e704176a75c03a \
    --hash=sha256:dae7ab0c4d34d40895e92b71149bcd72a2f7c5971dc013d1c29393b6067448e3 \
    --hash=sha256:decb9caf3a5695a8a4ebe7153b8ef7dcc57f85dc16896e3a33d5cf3e629ac396 \
    --hash=sha256:e10be2b717979260db0f0fa6a531e6ddccf0d85cca11983b41d04049214fa0fc \
    --hash=sha256:eb418ec022538b24d73260b694ddb5f3878d554614a4611decb433d8eee69acd \
    --hash=sha256:ef998f03ee92e6c98acdfac464c145e0a9949301b6e83688d7194e746314fcba
    # via cumulusci
terminaltables==3.1.0 \
    --hash=sha256:f3eb0eb92e3833972ac36796293ca0906e998dc3be91fbe1f8615b331b853b81
    # via cumulusci
text-unidecode==1.3 \
    --hash=sha256:1311f10e8b895935241623731c2ba64f4c455287888b18189350b67134a822e8 \
    --hash=sha256:bad6603bb14d279193107714b288be206cac565dfa49aa5b105294dd5c4aab93
    # via
    #   cumulusci
    #   faker
typing-extensions==3.10.0.0 \
    --hash=sha256:0ac0f89795dd19de6b97debb0c6af1c70987fd80a2d62d1958f7e56fcc31b497 \
    --hash=sha256:50b6f157849174217d0656f99dc82fe932884fb250826c18350e159ec6cdf342 \
    --hash=sha256:779383f6086d90c99ae41cf0ff39aac8a7937a9283ce0a414e5dd782f4c94a84
    # via
    #   cumulusci
    #   pydantic
unicodecsv==0.14.1 \
    --hash=sha256:018c08037d48649a0412063ff4eda26eaa81eff1546dbffa51fa5293276ff7fc
    # via
    #   cumulusci
    #   salesforce-bulk
uritemplate==3.0.1 \
    --hash=sha256:07620c3f3f8eed1f12600845892b0e036a2420acf513c53f7de0abd911a5894f \
    --hash=sha256:5af8ad10cec94f215e3f48112de2022e1d5a37ed427fbd88652fa908f2ab7cae
    # via
    #   cumulusci
    #   github3.py
urllib3==1.26.6 \
    --hash=sha256:39fb8672126159acb139a7718dd10806104dec1e2f0f6c88aab05d17df10c8d4 \
    --hash=sha256:f57b4c16c62fa2760b7e3d97c35b255512fb6b59a259730f36ba32ce9f8e342f
    # via
    #   cumulusci
    #   requests
    #   selenium
wrapt==1.12.1 \
    --hash=sha256:b62ffa81fb85f4332a4f609cab4ac40709470da05643a082ec1eb88e6d9b97d7
    # via
    #   cumulusci
    #   deprecated
xmltodict==0.12.0 \
    --hash=sha256:50d8c638ed7ecb88d90561beedbf720c9b4e851a9fa6c47ebd64e99d166d8a21 \
    --hash=sha256:8bbcb45cc982f48b2ca8fe7e7827c5d792f217ecf1792626f808bf41c3b86051
    # via cumulusci
zipp==3.5.0 \
    --hash=sha256:957cfda87797e389580cb8b9e3870841ca991e2125350677b2ca83a0e99390a3 \
    --hash=sha256:f5812b1e007e48cff63449a5e9f4e7ebea716b4111f9c4f9a645f91d579bf0c4
    # via
    #   cumulusci
    #   importlib-metadata

# WARNING: The following packages were not pinned, but pip requires them to be
# pinned when the requirements file includes hashes. Consider using the --allow-unsafe flag.
# setuptools
REQS

    File.write("requirements.txt", reqs)
    system "python3", "-m", "pip", "install", "-r", "requirements.txt", "--require-hashes", "--no-deps", "--ignore-installed", "--prefix", libexec

    bin.install Dir["#{libexec}/bin/cci"]
    bin.install Dir["#{libexec}/bin/snowfakery"]
    bin.env_script_all_files(libexec/"bin", PYTHONPATH: ENV["PYTHONPATH"])
  end

  test do
    system bin/"cci", "version"
  end
end
