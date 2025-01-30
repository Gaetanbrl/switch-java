# switch-java

This script changes the Java version by updating the JAVA_HOME environment variable and configuring the default Java version using update-alternatives.

# Usage

```
$ switchjava <java_version>
```

# Install

1. Clone this file and set correct access

```
$ git clone ....
$ chmod +x <path>/switch_java_version.sh
```

2. Open .sh file and adapt available path and Java versions

3. Open `~/.bashrc` to add alias (adapt path)

```
alias switchjava='/home/user/switch_java_version.sh'
```

4. Test

```
$ switchjava 17
```
