@echo off
echo Installing Maven and running the Spring Boot application...

REM Check if Java is available
java -version
if %ERRORLEVEL% NEQ 0 (
    echo Java is not installed or not in PATH
    exit /b 1
)

REM Try to download and setup Maven if not available
if not exist "apache-maven" (
    echo Downloading Maven...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://archive.apache.org/dist/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.zip', 'maven.zip')"
    if exist "maven.zip" (
        echo Extracting Maven...
        powershell -Command "Expand-Archive -Path maven.zip -DestinationPath . -Force"
        ren apache-maven-3.9.5 apache-maven
        del maven.zip
    )
)

REM Set Maven path
set MAVEN_HOME=%CD%\apache-maven
set PATH=%MAVEN_HOME%\bin;%PATH%

REM Compile and run the project
echo Compiling project...
mvn clean compile

echo Running Spring Boot application...
mvn spring-boot:run@echo off
echo Installing Maven and running the Spring Boot application...

REM Check if Java is available
java -version
if %ERRORLEVEL% NEQ 0 (
    echo Java is not installed or not in PATH
    exit /b 1
)

REM Try to download and setup Maven if not available
if not exist "apache-maven" (
    echo Downloading Maven...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://archive.apache.org/dist/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.zip', 'maven.zip')"
    if exist "maven.zip" (
        echo Extracting Maven...
        powershell -Command "Expand-Archive -Path maven.zip -DestinationPath . -Force"
        ren apache-maven-3.9.5 apache-maven
        del maven.zip
    )
)

REM Set Maven path
set MAVEN_HOME=%CD%\apache-maven
set PATH=%MAVEN_HOME%\bin;%PATH%

REM Compile and run the project
echo Compiling project...
mvn clean compile

echo Running Spring Boot application...
mvn spring-boot:run