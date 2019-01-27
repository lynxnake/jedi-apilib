rem remove those extra "branches" and "tags" source subfolders made by SVN import

rem cd to directory of batch
cd %~dp0

rem activate sparsecheckout
git config core.sparsecheckout true

rem list of folders:
(
echo /*
echo /jsetup/
echo /jsetup/trunk/
echo !/jsetup/tags/
echo !/jsetup/branches/
echo /jwapi/
echo /jwapi/trunk/
echo !/jwapi/branches/
echo !/jwapi/tags/
echo /jwscl/
echo /jwscl/trunk/
echo !/jwscl/branches/
echo !/jwscl/tags/
)>.git\info\sparse-checkout

rem update working tree
git read-tree -m -u HEAD
