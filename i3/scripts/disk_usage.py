#!/usr/bin/env python
# Copyright (C) 2019 Samir Sadek <samir.sadek@element83.com.mt>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

from subprocess import check_output
from os import environ

size_homecmd = f"du -sh {environ.get('HOME')}"
size_fscmd = f"df -h / | tail -1"

size_home = check_output(size_homecmd.split())
size_fs = check_output(size_fscmd, shell=True)
rv_home = size_home.split(b'\t', 1)[0]
rv_fs = size_fs.rsplit(None, 2)[1]
print(f"({rv_home.decode('utf8')}) {rv_fs.decode('utf8')}")
