# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

define defined_classes::files::config_template ( $application, $target, $template ) {

$source = lockup(conf_file_src)

	file { "$fact(tempdir)\\$template":
		source => "$source/$application/template/$template",
	}

	file { "$target":
		content => epp("$fact(tempdir)\\$template",
		require => File["$fact(tempdir)\\$template"],
	}
}