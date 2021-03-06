#
# ntime: nanosecond datetimes
#
# Copyright (C) 2018 Joshua M. Ulrich
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# datetime methods
print.datetime <-
function(x, ...)
{
  pct <- format(.POSIXct(seconds(x)), "%Y-%m-%d %H:%M:%SNS %Z")
  subsec <- sprintf(".%d", as.integer(nanos(x)))
  dtm <- sub("NS", subsec, pct)
  print(dtm)
}
