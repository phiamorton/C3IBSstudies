SDDS1
!# little-endian
&description text="sigma matrix--input: single_bunch_no_ibs.ele  lattice: c3_single_cryo_no_ibs.lte", contents="sigma matrix", &end
&parameter name=Step, description="Simulation step", type=long, &end
&parameter name=SVNVersion, description="SVN version number", type=string, fixed_value=33020M, &end
&column name=s, units=m, description=Distance, type=double,  &end
&column name=ElementName, description="Element name", format_string=%10s, type=string,  &end
&column name=ElementOccurence, description="Occurence of element", format_string=%6ld, type=long,  &end
&column name=ElementType, description="Element-type name", format_string=%10s, type=string,  &end
&column name=s1, symbol="$gs$r$b1$n", units=m, description="sqrt(<x*x>)", type=double,  &end
&column name=s12, symbol="$gs$r$b12$n", units=m, description="<x*xp'>", type=double,  &end
&column name=s13, symbol="$gs$r$b13$n", units="m$a2$n", description="<x*y>", type=double,  &end
&column name=s14, symbol="$gs$r$b14$n", units=m, description="<x*y'>", type=double,  &end
&column name=s15, symbol="$gs$r$b15$n", units="m$a2$n", description="<x*s>", type=double,  &end
&column name=s16, symbol="$gs$r$b16$n", units=m, description="<x*delta>", type=double,  &end
&column name=s17, symbol="$gs$r$b17$n", units="m*s", description="<x*t>", type=double,  &end
&column name=s2, symbol="$gs$r$b2$n", description="sqrt(<x'*x'>)", type=double,  &end
&column name=s23, symbol="$gs$r$b23$n", units=m, description="<x'*y>", type=double,  &end
&column name=s24, symbol="$gs$r$b24$n", description="<x'*y'>", type=double,  &end
&column name=s25, symbol="$gs$r$b25$n", units=m, description="<x'*s>", type=double,  &end
&column name=s26, symbol="$gs$r$b26$n", description="<x'*delta>", type=double,  &end
&column name=s27, symbol="$gs$r$b27$n", units=s, description="<x'*t>", type=double,  &end
&column name=s3, symbol="$gs$r$b3$n", units=m, description="sqrt(<y*y>)", type=double,  &end
&column name=s34, symbol="$gs$r$b34$n", units=m, description="<y*y'>", type=double,  &end
&column name=s35, symbol="$gs$r$b35$n", units="m$a2$n", description="<y*s>", type=double,  &end
&column name=s36, symbol="$gs$r$b36$n", units=m, description="<y*delta>", type=double,  &end
&column name=s37, symbol="$gs$r$b37$n", units="m*s", description="<y*t>", type=double,  &end
&column name=s4, symbol="$gs$r$b4$n", description="sqrt(<y'*y')>", type=double,  &end
&column name=s45, symbol="$gs$r$b45$n", units=m, description="<y'*s>", type=double,  &end
&column name=s46, symbol="$gs$r$b46$n", description="<y'*delta>", type=double,  &end
&column name=s47, symbol="$gs$r$b47$n", units=s, description="<y'*t>", type=double,  &end
&column name=s5, symbol="$gs$r$b5$n", units=m, description="sqrt(<s*s>)", type=double,  &end
&column name=s56, symbol="$gs$r$b56$n", units=m, description="<s*delta>", type=double,  &end
&column name=s57, symbol="$gs$r$b57$n", units="m*s", description="<s*t>", type=double,  &end
&column name=s6, symbol="$gs$r$b6$n", description="sqrt(<delta*delta>)", type=double,  &end
&column name=s67, symbol="$gs$r$b67$n", units=s, description="<delta*t>", type=double,  &end
&column name=s7, symbol="$gs$r$b7$n", description="sqrt(<t*t>)", type=double,  &end
&column name=ma1, symbol="max$sb$ex$sb$e", units=m, description="maximum absolute value of x", type=double,  &end
&column name=ma2, symbol="max$sb$ex'$sb$e", description="maximum absolute value of x'", type=double,  &end
&column name=ma3, symbol="max$sb$ey$sb$e", units=m, description="maximum absolute value of y", type=double,  &end
&column name=ma4, symbol="max$sb$ey'$sb$e", description="maximum absolute value of y'", type=double,  &end
&column name=ma5, symbol="max$sb$e$gD$rs$sb$e", units=m, description="maximum absolute deviation of s", type=double,  &end
&column name=ma6, symbol="max$sb$e$gd$r$sb$e", description="maximum absolute value of delta", type=double,  &end
&column name=ma7, symbol="max$sb$e$gD$rt$sb$e", units=s, description="maximum absolute deviation of t", type=double,  &end
&column name=minimum1, symbol="x$bmin$n", units=m, type=double,  &end
&column name=minimum2, symbol="x'$bmin$n", units=m, type=double,  &end
&column name=minimum3, symbol="y$bmin$n", units=m, type=double,  &end
&column name=minimum4, symbol="y'$bmin$n", units=m, type=double,  &end
&column name=minimum5, symbol="$gD$rs$bmin$n", units=m, type=double,  &end
&column name=minimum6, symbol="$gd$r$bmin$n", units=m, type=double,  &end
&column name=minimum7, symbol="t$bmin$n", units=s, type=double,  &end
&column name=maximum1, symbol="x$bmax$n", units=m, type=double,  &end
&column name=maximum2, symbol="x'$bmax$n", units=m, type=double,  &end
&column name=maximum3, symbol="y$bmax$n", units=m, type=double,  &end
&column name=maximum4, symbol="y'$bmax$n", units=m, type=double,  &end
&column name=maximum5, symbol="$gD$rs$bmax$n", units=m, type=double,  &end
&column name=maximum6, symbol="$gd$r$bmax$n", units=m, type=double,  &end
&column name=maximum7, symbol="t$bmax$n", units=s, type=double,  &end
&column name=Sx, symbol="$gs$r$bx$n", units=m, description=sqrt(<(x-<x>)^2>), type=double,  &end
&column name=Sxp, symbol="$gs$r$bx'$n", description=sqrt(<(x'-<x'>)^2>), type=double,  &end
&column name=Sy, symbol="$gs$r$by$n", units=m, description=sqrt(<(y-<y>)^2>), type=double,  &end
&column name=Syp, symbol="$gs$r$by'$n", description=sqrt(<(y'-<y'>)^2>), type=double,  &end
&column name=Ss, symbol="$gs$r$bs$n", units=m, description=sqrt(<(s-<s>)^2>), type=double,  &end
&column name=Sdelta, symbol="$gs$bd$n$r", description=sqrt(<(delta-<delta>)^2>), type=double,  &end
&column name=St, symbol="$gs$r$bt$n", units=s, description=sqrt(<(t-<t>)^2>), type=double,  &end
&column name=ex, symbol="$ge$r$bx$n", units=m, description="geometric horizontal emittance", type=double,  &end
&column name=enx, symbol="$ge$r$bx,n$n", units=m, description="normalized horizontal emittance", type=double,  &end
&column name=ecx, symbol="$ge$r$bx,c$n", units=m, description="geometric horizontal emittance less dispersive contributions", type=double,  &end
&column name=ecnx, symbol="$ge$r$bx,cn$n", units=m, description="normalized horizontal emittance less dispersive contributions", type=double,  &end
&column name=ey, symbol="$ge$r$by$n", units=m, description="geometric vertical emittance", type=double,  &end
&column name=eny, symbol="$ge$r$by,n$n", units=m, description="normalized vertical emittance", type=double,  &end
&column name=ecy, symbol="$ge$r$by,c$n", units=m, description="geometric vertical emittance less dispersive contributions", type=double,  &end
&column name=ecny, symbol="$ge$r$by,cn$n", units=m, description="normalized vertical emittance less dispersive contributions", type=double,  &end
&column name=betaxBeam, symbol="$gb$r$bx,beam$n", units=m, description="betax for the beam, excluding dispersive contributions", type=double,  &end
&column name=alphaxBeam, symbol="$ga$r$bx,beam$n", description="alphax for the beam, excluding dispersive contributions", type=double,  &end
&column name=betayBeam, symbol="$gb$r$by,beam$n", units=m, description="betay for the beam, excluding dispersive contributions", type=double,  &end
&column name=alphayBeam, symbol="$ga$r$by,beam$n", description="alphay for the beam, excluding dispersive contributions", type=double,  &end
&data mode=binary, &end
                 _BEG_      MARK���\%��>����G޻ �,�K"0=����
=?7B�k��=iUMu1����`���;���O���>e��M	�=װ� ���<���R?V��7�0���]��듻�^����>kHܣb{F;�d�6�L���G�.;���s���9V8Q<�>{�㩭�=X�L��~�:��g��G\;(C��6?�J�4L��*��:�<���Q��?��~:&G��xW=��z�?y�HW�>��h�2�>"J��C�>	�ܿ(�3?<q�V�?���W��q=��z��y�HW۾��Ho1/Ҿ�}�e�@��P�~�K�3�<q�V��.�o�Y�q��Nҽ?�p<'��>��h�2�>"J��C�>	�ܿ(�3?}i��S�?���W��q=���\%��>���O���>�^����>9V8Q<�>(C��6?���Q��?&G��xW=��eϋ��=G>-3�>��eϋ��=G>-3�>,�<���a=*57�yE>,�<���a=*57�yE>Eh�g��!@(-<ʢ@>����@<�)n�Խ           MYCHARGE      CHARGE���\%��>����G޻ �,�K"0=����
=?7B�k��=iUMu1����`���;���O���>e��M	�=װ� ���<���R?V��7�0���]��듻�^����>kHܣb{F;�d�6�L���G�.;���s���9V8Q<�>{�㩭�=X�L��~�:��g��G\;(C��6?�J�4L��*��:�<���Q��?��~:&G��xW=��z�?y�HW�>��h�2�>"J��C�>	�ܿ(�3?<q�V�?���W��q=��z��y�HW۾��Ho1/Ҿ�}�e�@��P�~�K�3�<q�V��.�o�Y�q��Nҽ?�p<'��>��h�2�>"J��C�>	�ܿ(�3?}i��S�?���W��q=���\%��>���O���>�^����>9V8Q<�>(C��6?���Q��?&G��xW=��eϋ��=G>-3�>��eϋ��=G>-3�>,�<���a=*57�yE>,�<���a=*57�yE>Eh�g��!@(-<ʢ@>����@<�)n�Խ333333�?   CY000QFHALF0      QUAD��v\�q�>;�q�Oн�vG�0=.�}�D=#T����=���"G='�VD�;��9�#�>멕*��<�X�K��<KɰCnHq�>�"�'=�=��3O�sK�g��>��X6�Y=X|���L���Cͼ��<h{����)�R�>��mO����0��C=�B�!i�?�x.��6?����VYa���*��:�<���Q��?D8H>f��F��xW=�b;�?RKj5��>�%�Ё�>
ĂOn0�> ���(�3?<q�V�? ʢT��q=�b;��K�$����%�ЁҾ��uٖ�� s��K�3�<q�V�� �Y�q�$u��"�?RKj5��>���Pv�>
ĂOn0�> ���(�3?}i��S�? ʢT��q=��v\�q�>��9�#�>sK�g��>)�R�>x.��6?���Q��?�F��xW=r}	�	��=�����>ꀖ�	��=�ռ���>�����a=qN�%�yE>������a=WUp%�yE>p:9��\!@a�Ɨ��?LPۿM)@cj�Z��i㈵��?   RFDRIFT      DRIF�s��|F�>5[:�н�tUj1=c�T�F1=�|H�!�=�fK��'[=��r���;��9�#�>�.�28�<�X�K��<ג�CnHq�>�"�'=�=$+O�L��5S�>�!��<YZ=H�Yi�L�ܗ{�m�=�%�̧��)�R�>�ǍA����0��C=7��i�?��0��6?��ɺ��� ,��:�<���Q��?
hʋ&�r�{�G��xW=]�	�x?RKj5��>Dl�]I��>
ĂOn0�> �|�(�3?<q�V�? z�R��q=]�	�x�K�$���Dl�]I�Ҿ��uٖ�� �"�K�3�<q�V�� ��Y�q��VA�\?RKj5��>���=��>
ĂOn0�> �|�(�3?}i��S�? z�R��q=�s��|F�>��9�#�>L��5S�>)�R�>�0��6?���Q��?{�G��xW=r}	�	��=�����>ꀖ�	��=�ռ���>�����a=qN�%�yE>������a=WUp%�yE>��K�!@DZ6��?���Ot@��EpWr�[%X��?   CY000RF0      RFCA�O�â��>��A��ǽ��!�:=�X�\]p=*����='Gy��=FV����;����>c�
$�=pT�W��<i��t<q��t���=���m�ݮ������s�>#�~0�d=0�>�ȺM��"�X5�Q=w�ʎ����ъ�F>�>|��������2D=P��ΐ{?��m���6?W����3��܅�:�<i�����?��"�q��tZ��xW=w���r
?��^���>*'0���>t����> �9�(�3?�HV88�? � '��q=*F�|g(
���@����*'0��ھ�V�P˂�� `u�K�3��HV88�� ��Y�q�w���r
?��^���>�u����>t����> �9�(�3?��b�4�? � '��q=�O�â��>����>�����s�>ъ�F>�>�m���6?i�����?�tZ��xW=o�k���=iH����>�V����=zT<���>j�2�a=v�� �yE>:z2�a=q�� �yE>��Y@�B���c�?��5$�@@q�X0��������@   CY000RF1      RFCA켃�%�>�\��q`&�3VB=a�m�6�=���<�y=�o���=�U�ï�;ზ�.�>P���#o	=�7����<4PK&�0q�y�@kqʖ=�ʇc}Ȯ��X����>��!�<�j=��7�N���k��a=�#6u����Ճ�)�>����\��J�:�k�D=�G99�e?��O���6?Fy���B�>f���:�<.U�{Vd�?d:~���'���xW= 1�EW?�n���>��|`��>9��/��> @�(�3?�:�]�? P����q=��U"��A���1��|`�ྙŲ��n��  �L�3��:�]�� 0��Y�q� 1�EW?�n���>3g��gk�>9��/��> @�(�3?��	Ex�? P����q=켃�%�>ზ�.�>�X����>�Ճ�)�>�O���6?.U�{Vd�?�'���xW=�O5�c��=tҁt��>��8�c��=�űo��>MC���a=�S���yE>�y��a=(����yE>���V�@��8�:�?<[�,�!@�*ƴ�D��������@	   CY000BPM0      MONI켃�%�>�\��q`&�3VB=a�m�6�=���<�y=�o���=�U�ï�;ზ�.�>P���#o	=�7����<4PK&�0q�y�@kqʖ=�ʇc}Ȯ��X����>��!�<�j=��7�N���k��a=�#6u����Ճ�)�>����\��J�:�k�D=�G99�e?��O���6?Fy���B�>f���:�<.U�{Vd�?d:~���'���xW= 1�EW?�n���>��|`��>9��/��> @�(�3?�:�]�? P����q=��U"��A���1��|`�ྙŲ��n��  �L�3��:�]�� 0��Y�q� 1�EW?�n���>3g��gk�>9��/��> @�(�3?��	Ex�? P����q=켃�%�>ზ�.�>�X����>�Ճ�)�>�O���6?.U�{Vd�?�'���xW=�O5�c��=tҁt��>��8�c��=�űo��>MC���a=�S���yE>�y��a=(����yE>���V�@��8�:�?<[�,�!@�*ƴ�D��������@   CY000QD0      QUAD��N|1'�>d�
6]�=oA�,C=i�f�,��B�m7?�w=����{A�=j�<n�s�;��?�V�>�yRd0=bĔ= ����_�qf�@�=z�l�ś�у8k���>�mO��k�����%N�ޘ%���a=|��&v���0�k:�F�>�ϊX�3=�"voz3��R���q;Ԙ��6?����B�sɫ��:�<.U�{Vd�?������&��xW=�r�cs?`cz\WZ�>�La�a��>����nJ�> `s�(�3?�:�]�?  ����q=��I_�F�`cz\WZ��La�a�྆~���l�� `�L�3��:�]�� ��Y�q��r�cs?T(�h�>��ƶ���>����nJ�> `s�(�3?��	Ex�?  ����q=��N|1'�>��?�V�>у8k���>0�k:�F�>Ԙ��6?.U�{Vd�?�&��xW=h�JKc��=5�H���>��Jc��=Y;����>�;C���a=΁�eY}E>��7���a=}��eY}E>$Qؽ��@?$:pэ濾���!@��
a�?����g@   RFDRIFT      DRIF��T(�c�>�U��/�=ڱ`)YtC=\��nN��)ѷ��w=�>�A��=�����;��?�V�>�� 0=bĔ= �_j�_�qf�@�=#���ś���9+��>�m��j�ZNl�ߦM�!�J��a=D���挊�0�k:�F�>G�2\�3=�"voz3������q;�Y���6?�o���B�Q����:�<.U�{Vd�?诎����|��xW=36s�?`cz\WZ�>ΡCx���>����nJ�> ���(�3?�:�]�?  ����q=+����`cz\WZ�ΡCx��྆~���l�� �<L�3��:�]�� �D�Y�q�36s�?T(�h�>R��0e�>����nJ�> ���(�3?��	Ex�?  ����q=��T(�c�>��?�V�>��9+��>0�k:�F�>�Y���6?.U�{Vd�?�|��xW=h�JKc��=5�H���>��Jc��=Y;����>�;C���a=ρ�eY}E>��7���a=~��eY}E>����*@�~�A*���}0Z!@�m��?�y�t�@   CY000RF2      RFCA����� �>9/�q��=��k.��G=XH:������T�>�n=��3�7��=�:(��;g�@9�>�"�+=6�e�H' ����_l�^�,�뺈=��mഛ�h�(A��>:�B��c�+�
�UC��f3/Ȇa=FI�9qO�������2�>-��ʃ3=���[��;����-Ayq;1���6?$؀��XL�]����:�<���;�?C�b��d���xW=�5��w�?�B��jG�>����/��>�O��W9�>  !�(�3?��7z���?  �ѳ�q=�5��w���B��jG뾗���/�ܾ�d��[�� �	L�3���7z����  f�Y�q�c8 ��?CC�$���>_ui�j�>�O��W9�>  !�(�3?���'���?  �ѳ�q=����� �>g�@9�>h�(A��>�����2�>1���6?���;�?d���xW=+��m�=��|���>=�p�m�=��ޞ��>f��T�a=~v|�W}E>t��T�a=r�j�W}E>�3�"�@����+��:P/�'�@��h����?�����@   CY000RF3      RFCAB4^��M�>��B�%�=+�I�*J=*)�y({"��THZ�\=���7��=��m3�ܙ;����%	�>��%3�9'=~O�� �c*����^�����\�=x�5����i��ɷ>)h��q.Y�H���n"2���Z&�]=5���<p��H5c�>f����v3=��l�s#B���=%�mq;Z�|��6?�k��R�vrL��:�<f+h�?�0��eՐ����xW=V�V�b?G�ݏ4�>���>e^H+O(�> ���(�3?�=����? �F���q=V�V�b�G�ݏ4���׾�;���J�� @kL�3��=���⦿ �/yY�q��Y:�e?��f����>~( k�X�>e^H+O(�> ���(�3?O|�(�? �F���q=B4^��M�>����%	�>�i��ɷ>�H5c�>Z�|��6?f+h�?���xW=�r~[P�=Yf_��>!��ZP�=S6l^��>ߙ��W�a=he�U}E>��{�W�a=N��U}E>%T'%?|!@~
R�>���y ��@�L����?�����@	   CY000BPM1      MONIB4^��M�>��B�%�=+�I�*J=*)�y({"��THZ�\=���7��=��m3�ܙ;����%	�>��%3�9'=~O�� �c*����^�����\�=x�5����i��ɷ>)h��q.Y�H���n"2���Z&�]=5���<p��H5c�>f����v3=��l�s#B���=%�mq;Z�|��6?�k��R�vrL��:�<f+h�?�0��eՐ����xW=V�V�b?G�ݏ4�>���>e^H+O(�> ���(�3?�=����? �F���q=V�V�b�G�ݏ4���׾�;���J�� @kL�3��=���⦿ �/yY�q��Y:�e?��f����>~( k�X�>e^H+O(�> ���(�3?O|�(�? �F���q=B4^��M�>����%	�>�i��ɷ>�H5c�>Z�|��6?f+h�?���xW=�r~[P�=Yf_��>!��ZP�=S6l^��>ߙ��W�a=he�U}E>��{�W�a=N��U}E>%T'%?|!@~
R�>���y ��@�L����?33333�@   CY000QF0      QUADi[}=1O�>�z]��Ͻ�Z)KVJ=�4�b!=sX�mr>W=�?I�߯=i��Д;�P���>B��x:��Fi&9]�x2R��e���5�[�=���˰��t����Ƿ>�օ]҅X=�>��`/��|��{\=�B=�el����i{ޜ>G/q/�*=r]���dN�y+y��g;��{��6?��ށ�R�P߁��:�<f+h�?�g��jՐ��\J��xW=c�cYd?��7�]�>���Z���>4kd?�> @�(�3?�=����? @J���q=c�cYd���7�]쾯��Z��׾&��7�Z��  L�3��=���⦿  �vY�q��W�{?r�b�>4��BVQ�>4kd?�> @�(�3?O|�(�? @J���q=i[}=1O�>�P���>t����Ƿ>���i{ޜ>��{��6?f+h�?�\J��xW=�&���R�=qG&:�>�����R�=@�:�>�{{�a=��Q�{E>��z{�a=EҴ�{E>��N�9|!@������?>�m�@�ǛF�I濁�,�@   RFDRIFT      DRIF����$�>�:�n-DϽ�V	vdJ=o�BF�I!=�c)GU=�%*��.�=�V���ђ;�P���>^)Tr�Fi&9]��'��Q��e���5�[�=��_�˰���4�]|��>�#�ӣ.Y=����.�VT�#yV[=�c�y��j����i{ޜ>�t:u/�*=r]���dN�!�W��g;�)}��6?�����R�����:�<f+h�?�X�lՐ�.�a��xW=��9fB9?��7�]�>Ƚ���>4kd?�> ���(�3?�=����?  8���q=��9fB9���7�]�Ƚ��׾&��7�Z�� @SL�3��=���⦿ ��uY�q������?r�b�>+�VM���>4kd?�> ���(�3?O|�(�?  8���q=����$�>�P���>�4�]|��>���i{ޜ>�)}��6?f+h�?.�a��xW=�&���R�=qG&:�>�����R�=@�:�>�{{�a=��Q�{E>��z{�a=EҴ�{E>��ʵ/!@���i�u�?C���X@��j/o��&�o|�@   CY000RF4      RFCA�L�
��>�iZ�ƽ��L�m�J=B�%nX=�<! Y���h�T�=|�0[��x�]lx��>����u��u_������n��e��:�L_�=~�Lh���ݘ!�K��>3�$'Rc=zz���z5p�G=�a|kӊ.���t��ʜ>��]f�*=�Vd1cP�����E�g;\���6?�ҥ�_W��*V��:�<�t�0�?v���f]H��xW=B�rc?��Cy�>l16�1��>/��iK��> ���(�3?~F���Ȧ? ����q=B�rc���Cy�X�����۾�%8ZJ�� @�L�3�:w*�Ʀ� @fY�q�ӬЀ�?��7 ��>l16�1��>/��iK��> ���(�3?~F���Ȧ? ����q=�L�
��>x�]lx��>ݘ!�K��>��t��ʜ>\���6?�t�0�?]H��xW=
g�,"6�=��� 8�>G�""6�=�V8�>$S��a=�%�{E>��R��a=V,m�{E>����Ҭ@��N�?�r��@��'N��������L@   CY000RF5      RFCAsZ��D'�>r��%�g����ԝ�8J=)8)w�(=��{�I�q����w} �=�1c�ɯ�s�b
�w�>�۲ς� �7��������BQ��e�aW}^�=�q����}���m�>EjS�c�i=k�G��)=�ύ)�7�:�i��f;q��S+��>B�=p*=�K<�Q����^�g;�H2��6?+�E���[���(��:�<��1xv?smPcd�������xW=�7>�\?�(�y���>K�]�q�>
U�ʹ��> ���(�3?��J,��?  �}��q=�7>�\��(�y��뾠:o�� �Yi1��9�� ��L�3�{to`��� �WY�q�]5*"�\?��@1@��>K�]�q�>
U�ʹ��> ���(�3?��J,��?  �}��q=sZ��D'�>s�b
�w�>}���m�>q��S+��>�H2��6?��1xv?����xW=c�*���=(�6�>6ݝ���=���
6�>]�1�Fka=A�L�{E>����Fka=�tw�{E>�D�O5@���2L�?�[���p!@�{P���������L@	   CY000BPM2      MONIsZ��D'�>r��%�g����ԝ�8J=)8)w�(=��{�I�q����w} �=�1c�ɯ�s�b
�w�>�۲ς� �7��������BQ��e�aW}^�=�q����}���m�>EjS�c�i=k�G��)=�ύ)�7�:�i��f;q��S+��>B�=p*=�K<�Q����^�g;�H2��6?+�E���[���(��:�<��1xv?smPcd�������xW=�7>�\?�(�y���>K�]�q�>
U�ʹ��> ���(�3?��J,��?  �}��q=�7>�\��(�y��뾠:o�� �Yi1��9�� ��L�3�{to`��� �WY�q�]5*"�\?��@1@��>K�]�q�>
U�ʹ��> ���(�3?��J,��?  �}��q=sZ��D'�>s�b
�w�>}���m�>q��S+��>�H2��6?��1xv?����xW=c�*���=(�6�>6ݝ���=���
6�>]�1�Fka=A�L�{E>����Fka=�tw�{E>�D�O5@���2L�?�[���p!@�{P����fffff�@   CY000QD1      QUADˁ���*�>�MI8N��=�[�J=>f�F��&���!��s��aAAN�=�HA��±�v,����>܁�P��"=k��& �:B&��p���7�M�=��*96e��o���m�>�0G���i���5��,=��5��3��r���i;�+Ð��>ᜁ���!=HL�
X^=v���_;L
5��6?~�T���[�O�{��:�<��1xv?��Li��������xW=N�q��?��"B�>F������>��)�vZ�> ���(�3?��J,��?  y��q=\��R�����"Bﾌ�",�߾�����C��  �L�3�{to`���  �TY�q�N�q��?��܆��>F������>��)�vZ�> ���(�3?��J,��?  y��q=ˁ���*�>v,����>o���m�>�+Ð��>L
5��6?��1xv?�����xW=�i-��=5��d1�>~N&&��=1�\1�>n2���ma=���>g~E>��{��ma=��	<g~E>�7�
�9@���'�ry�:�m!@�7D���?��E_A@   RFDRIFT      DRIF��dJ�g�>eV���U�=o�kf%J=���Z'���c��t�����=�?ʛ���v,����>[,;=s�"=k��& ����p���7�M�=�]:6e��M�B�QG�>ۊ٘�i��W��|�-=^1�= +��!��j;�+Ð��>
>;���!=HL�
X^=����_;��4��6?�}����[��%���:�<��1xv?�:�j����+��xW=s	e.�?��"B�>�t��;��>��)�vZ�>  ��(�3?��J,��? @�v��q=�~�N���"B�G��:�߾�����C�� ��L�3�{to`��� �*TY�q�s	e.�?��܆��>�t��;��>��)�vZ�>  ��(�3?��J,��? @�v��q=��dJ�g�>v,����>M�B�QG�>�+Ð��>��4��6?��1xv?�+��xW=�i-��=5��d1�>~N&&��=1�\1�>k2���ma=���>g~E>��{��ma=��	<g~E>$F|�@�F�t���>��� !@]�sH��?-x�W�& @   CY000RF6      RFCA� n��>"p�Y���=��yRL�G=m�k��(+�֩*�p5��'��\+:�=�{;3��i.{i��>����w=����� �	xh���p��/��7�=[q#�P���Ŗ�ˏ�>�!.��b���
:�=8=����1Z=�%�0ϴu;���ک��>	!4�!=�dR�
]=kL��_;�����6?2_���0`�;�?��:�<#�m`7��?GP�������]���xW=)��&/�
?�����,�>�)��N��>���Y�G�> �ӻ(�3?�V*��?  gL��q=����
������,��)��N�ؾ�s/�0��  �L�3���.��� @yFY�q�)��&/�
?z��W��>�����>���Y�G�> �ӻ(�3?�V*��?  gL��q=� n��>i.{i��>�Ŗ�ˏ�>���ک��>�����6?#�m`7��?�]���xW=��r���=��NP/�>��w���=j��F/�>^JE��Va=��7e~E>M/P~�Va=CS�|e~E>���3j@/
nef0�J֯9<�@�ƭjX�?     @"@   CY000RF7      RFCALR]t@H�>�*?���=l��$ C=�ȼ��6/��q+�=���a [`�=>��k�ɻ�7*U���>�#K���=�0J�����_��yb�p�Jd� ȩ=�_���<��������>����X��Qg��@=�<L�j=�8=ub ~;7��ғ�>=W΍�!='(�_�[=>ݩ+�_;0^"��6?�6�ehb�J� ��:�<)
�qt�?�O�(|��E���xW=#J�D?f�[��>�ݥ-���>$���$5�> �`�(�3?�e)��? ��"��q=y�Ϻe��f�[�ﾓݥ-��Ҿ�t���  4L�3��	��~��  ^9Y�q�#J�D?�F����>�P�0��>$���$5�> �`�(�3?�e)��? ��"��q=LR]t@H�>�7*U���>������>7��ғ�>0^"��6?)
�qt�?E���xW=��y���=_�;-�>�Eq���=Ӡ�0-�>�W	��?a=*�ʺc~E>�A��?a= ��c~E>��N��!@���پ~���p���@�#c	�D�?     @"@	   CY000BPM3      MONILR]t@H�>�*?���=l��$ C=�ȼ��6/��q+�=���a [`�=>��k�ɻ�7*U���>�#K���=�0J�����_��yb�p�Jd� ȩ=�_���<��������>����X��Qg��@=�<L�j=�8=ub ~;7��ғ�>=W΍�!='(�_�[=>ݩ+�_;0^"��6?�6�ehb�J� ��:�<)
�qt�?�O�(|��E���xW=#J�D?f�[��>�ݥ-���>$���$5�> �`�(�3?�e)��? ��"��q=y�Ϻe��f�[�ﾓݥ-��Ҿ�t���  4L�3��	��~��  ^9Y�q�#J�D?�F����>�P�0��>$���$5�> �`�(�3?�e)��? ��"��q=LR]t@H�>�7*U���>������>7��ғ�>0^"��6?)
�qt�?E���xW=��y���=_�;-�>�Eq���=Ӡ�0-�>�W	��?a=*�ʺc~E>�A��?a= ��c~E>��N��!@���پ~���p���@�#c	�D�?����̌"@   CY000QF1      QUAD�S�0I�>	-�7�ϽAeh�3B=�]�_"���� ������%�o]��=r|��ړɻa�6EZ�>��+����j���t�<D��a0D=Y6bo��
r�5��;��b=��>�'[W�dX=��L��A=Xɽ-�k=a����;�����>A�A�T�4=Mx��6><=��/ʊbr;[."��6?����ehb�K�f��:�<)
�qt�?��|��ҧ8��xW=����./?Mf(�T��>yG�h���>(��rS5�>  ޫ(�3?�e)��? �m��q=����./��a�����yG�h��Ҿ��🏺� ��L�3��	��~�� �7Y�q��n����?Mf(�T��>�n���>(��rS5�>  ޫ(�3?�e)��? �m��q=�S�0I�>a�6EZ�>��b=��>�����>[."��6?)
�qt�?ҧ8��xW=�����=�dZ��>Uqb����=��BO��>R��?a=�A��~E>e���?a=�nժ�~E>��SL��!@��]�($�?p5Ne�@���=Y��