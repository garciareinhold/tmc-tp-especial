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
## @deftypefn {} {@var{retval} =} calcular_probabilidad_realizar_disparo (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Usuario <Usuario@DESKTOP-2J54TNN>
## Created: 2017-06-06

function [probabilidad_actual, probabilidades_parciales] = calcular_probabilidad_realizar_disparo (dni, epsilon)
  
  probabilidad_anterior=0;
  probabilidad_actual=1;
  casos_favorables=0;
  total_pedidos=0;
  probabilidades_parciales=[];
  resultado1=0;
  resultado2=0;
  
  while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_pedidos)
    
    probabilidad_anterior=probabilidad_actual;
    resultado1= my_mex_service(dni);
    resultado2= my_mex_service(dni);
    total_pedidos=total_pedidos+2;
    if((resultado1==0) && (resultado2==0))
      casos_favorables=casos_favorables+1;
    end
  
  probabilidad_actual=casos_favorables/total_pedidos;  
  probabilidades_parciales = cat(1, probabilidades_parciales, probabilidad_actual);
  
  end
  
end
