## Copyright (C) 2017 Usuario
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} converge (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Usuario <Usuario@DESKTOP-2J54TNN>
## Created: 2017-06-06

function convergio = converge(probabilidad_anterior, probabilidad_actual, epsilon, total_pedidos)


  if total_pedidos > 100
   
    if (abs(probabilidad_anterior - probabilidad_actual) < epsilon) 
     
      convergio = true;
    else
     
      convergio = false;
    end
  else
   
    convergio = false;
  end

end
