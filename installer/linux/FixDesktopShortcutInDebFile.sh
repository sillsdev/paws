#! /usr/bin/bash
if [ -d debtemp ]; then
 echo "	removing debtemp"
 rm -rf debtemp
fi
echo "	fixing desktop shortcut in deb file"
mkdir debtemp
pwd
ls -l
DEB_FILE=`ls paws_1.0-1_amd64.deb`
echo $DEB_FILE
dpkg-deb -R $DEB_FILE debtemp
echo "what's in the debtemp dir"
ls -l debtemp/opt/sil/paws/lib
sed '/^Exec=*/a Path=/opt/sil/paws/bin/' debtemp/opt/sil/paws/lib/paws-PAWS.desktop >debtemp/opt/sil/paws/lib/paws-PAWS2.desktop
rm debtemp/opt/sil/paws/lib/paws-PAWS.desktop
mv debtemp/opt/sil/paws/lib/paws-Lingtree2.desktop debtemp/opt/sil/paws/lib/paws-PAWS.desktop
dpkg-deb -b debtemp $DEB_FILE.deb
echo "	renaming fixed up deb file"
rm $DEB_FILE
mv $DEB_FILE.deb $DEB_FILE

