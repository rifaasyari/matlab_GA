% ----------------------------------------------------------------------------
% function hfssEllipse(fid, Name, Axis, Center, MajRadius, Ratio, Units)
% 
% Description :
% -------------
% Creates the VB Script necessary to create an ellipse primitive in HFSS.
%
% Parameters :
% ------------
% fid     - file identifier of the HFSS script file.
% Name    - name of the circle object (in HFSS).
% Axis    - choose between 'X', 'Y', or 'Z' to represent the circle axis.
% Center  - center of the circle (use the [x, y, z] format).
% MajRadius  - majradius of the ellipse.
% Ration  - ration of the ellipse.
% Units   - units for all the above quantities (use either 'in', 'mm', 'meter'
%           or anything else defined in HFSS).
% 
% Note :
% ------
%
% Example :
% ---------
% fid = fopen('myantenna.vbs', 'wt');
% ... 
% hfssCircle(fid, 'C_Patch', 'Z', [10, 11, 12], 13, 0.8, 'mm');
% ----------------------------------------------------------------------------

% ----------------------------------------------------------------------------
% This file is part of HFSS-MATLAB-API.
%
% HFSS-MATLAB-API is free software; you can redistribute it and/or modify it 
% under the terms of the GNU General Public License as published by the Free 
% Software Foundation; either version 2 of the License, or (at your option) 
% any later version.
%
% HFSS-MATLAB-API is distributed in the hope that it will be useful, but 
% WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY 
% or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License 
% for more details.
%
% You should have received a copy of the GNU General Public License along with
% Foobar; if not, write to the Free Software Foundation, Inc., 59 Temple 
% Place, Suite 330, Boston, MA  02111-1307  USA
%
% Copyright 2008, Yueliang (yue_liang423@163.com)
% -------------------------------------------------------------------------
% ---
function hfssEllipse(fid, Name, Axis, Center, MajRadius, Ratio, Units)

fprintf(fid, '\n');
% Preamble.
fprintf(fid, 'oEditor.CreateEllipse _\n');
fprintf(fid, 'Array("NAME:EllipseParameters", _\n');

% Parameters.
fprintf(fid, '"CoordinateSystemID:=", -1, _\n');
fprintf(fid, '"IsCovered:=", true, _\n');
fprintf(fid, '"XCenter:=", "%f%s", _\n', Center(1), Units);
fprintf(fid, '"YCenter:=", "%f%s", _\n', Center(2), Units);
fprintf(fid, '"ZCenter:=", "%f%s", _\n', Center(3), Units);
fprintf(fid, '"MajRadius:=", "%f%s", _\n', MajRadius, Units);
fprintf(fid, '"Ratio:=", "%f%s", _\n', Ratio, Units);
fprintf(fid, '"WhichAxis:=", "%s"), _\n', upper(Axis));

% Attributes.
fprintf(fid, 'Array("NAME:Attributes", _\n');
fprintf(fid, '"Name:=", "%s", _\n', Name);
fprintf(fid, '"Flags:=", "", _\n');
fprintf(fid, '"Color:=", "(132 132 193)", _\n');
fprintf(fid, '"Transparency:=", 0, _\n');
fprintf(fid, '"PartCoordinateSystem:=", "Global", _\n');
fprintf(fid, '"MaterialName:=", "vacuum", _\n');
fprintf(fid, '"SolveInside:=", true)\n');