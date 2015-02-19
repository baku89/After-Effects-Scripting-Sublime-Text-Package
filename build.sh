# Renaming argument
file_name=$1

# Retrive emviromental variables
[ ! "${AE_VERSION}" = "" ] && version="${AE_VERSION}" || version="CC 2014";
[ ! "${AE_SUBDIR}" = "" ] && subdir="/${AE_SUBDIR}" || subdir=""

# check if the file is saved
if [ "${file_name}" = "" ]; then
	echo "Please save current file before build";
	exit;
fi

# Adobe After Effects folder location
app_dir="/Applications/Adobe After Effects ${version}";

# Check If the app of specified version is installed
if [ ! -d "${app_dir}/Adobe After Effects ${version}.app" ]; then
	echo "This version (${version}) of After Effects is not installed";
	exit;
fi

# Full path
full_path="${app_dir}/Scripts${subdir}";

# Create sub-folder if not exists
[ ! -d "${full_path}" ] && mkdir "$full_path";

# Copying built file to script folder
cp $file_name "${full_path}/${file_name%.*}.jsx";

# Check if the version is supported and then run apple script
plugin_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
scpt_path="${plugin_dir}/run/${version}.scpt"

if [ -f "${scpt_path}" ]; then
	osascript "${scpt_path}" "${file_name}";
else
	echo "This version (${version}) of After Effects is not supported";
	exit;
fi

# Printing happy feedback in the console
echo "After Effects Version: ${version}"
echo "Successfully compiled ${file_name} to ${full_path}/${file_name%.*}.jsx";