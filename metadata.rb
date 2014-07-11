name             'swap_tuning'
maintainer       'Onddo Labs, Sl.'
maintainer_email 'team@onddo.com'
license          'Apache 2.0'
description      'Creates a swap file of the recommended size considering the system memory.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

supports 'arch'
supports 'centos'
supports 'debian'
supports 'fedora'
supports 'ubuntu'
supports 'amazon'

depends 'swap'

recipe 'swap_tuning::default', 'Creates the swap files.'

attribute 'swap_tuning/size',
  :display_name => 'Swap size',
  :description => 'Total swap size.',
  :type => 'string',
  :required => 'optional',
  :calculated => true

attribute 'swap_tuning/minimum_size',
  :display_name => 'Swap minimum size',
  :description => 'Swap minimum size.',
  :type => 'string',
  :required => 'optional',
  :default => 'nil'

attribute 'swap_tuning/file_prefix',
  :display_name => 'Swap file prefix',
  :description => 'Swap file prefix.',
  :type => 'string',
  :required => 'optional',
  :default => '"/swapfile"'

attribute 'swap_tuning/persist',
  :display_name => 'Swap file persist',
  :description => 'Swap file persist.',
  :type => 'string',
  :required => 'optional',
  :default => 'true'
