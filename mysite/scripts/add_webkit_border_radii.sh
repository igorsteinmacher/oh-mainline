# This file is part of OpenHatch.
# Copyright (C) 2010 OpenHatch, Inc.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

find -name "*.css" -print0 | xargs -0 sed -i -e '/.*webkit.*/!s/-moz-b\([^;]*\);/-webkit-b\1; \0/g' -e 's/-webkit-border-radius-\(top\|bottom\)\(left\|right\)/-webkit-border-\1-\2-radius/g'
