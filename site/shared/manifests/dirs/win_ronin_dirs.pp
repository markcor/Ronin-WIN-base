# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

class shared::dirs::win_ronin_dirs {

	# "$facts['roninprogramdata']"
	file { "C:\\ProgramData\\PuppetLabs\\ronin":
		ensure => directory,
	}
	# $facts['roninsemaphoredir']
    file { "C:\\ProgramData\\PuppetLabs\\ronin\\semaphore":
		ensure => directory,
	}
}
