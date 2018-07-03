<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">

	<modelVersion>4.0.0</modelVersion>
	<groupId>com.czeczotka.bdd</groupId>
	<artifactId>cucumber-jvm-maven</artifactId>
	<packaging>jar</packaging>
	<version>1.0-SNAPSHOT</version>
	<name>cucumber-jvm-maven</name>
	<url>http://maven.apache.org</url>
<properties>
		<local.repository.folder>${pom.basedir}/libs/</local.repository.folder>
	</properties>
	<dependencies>
		<!-- https://mvnrepository.com/artifact/info.cukes/cucumber-java -->
		<dependency>
			<groupId>info.cukes</groupId>
			<artifactId>cucumber-java</artifactId>
			<version>1.2.5</version>
		</dependency>

		<!-- https://mvnrepository.com/artifact/info.cukes/cucumber-junit -->
		<dependency>
			<groupId>info.cukes</groupId>
			<artifactId>cucumber-junit</artifactId>
			<version>1.2.5</version>
		</dependency>

		<dependency>
			<groupId>junit</groupId>
			<artifactId>junit</artifactId>
			<version>4.11</version>
			<scope>test</scope>
		</dependency>
		<dependency>
			<groupId>com.qmetry</groupId>
			<artifactId>automation</artifactId>
			<version>1.0.1-RC</version>
		</dependency>
	</dependencies>

	<repositories>
		<repository>
			<id>local-maven-repository</id>
			<url>file://${local.repository.folder}</url>
			<releases>
				<enabled>true</enabled>
			</releases>
			<snapshots>
				<enabled>true</enabled>
			</snapshots>
		</repository>
	</repositories>

	<build>
		<plugins>
			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-surefire-plugin</artifactId>
				<version>2.20</version>
				<configuration>
					<testFailureIgnore>true</testFailureIgnore>
					<useSystemClassLoader>true</useSystemClassLoader>
					<properties>
						<property>
							<name>listener</name>
							<value>com.qmetry.automation.CucumberResultUploader</value>
						</property>
					</properties>
				</configuration>
			</plugin>
		</plugins>
	</build>

</project>