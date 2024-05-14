= TomEE EAP 8.0.16-TT.2

=== Changes in TomEE EAP 8.0.16-TT.2

* Experimental change for serialization in HttpServletRequest, HttpSession and ServletContext proxy objects

=== Changes in TomEE EAP 8.0.16-TT.1

* Update to ActiveMQ 5.16.7-TT.1 to mitigate CVE-2023-46604

=== Changes in TomEE EAP 8.0.15-TT.5
* Update to Tomcat 9.0.82 to mitigate CVE-2023-44487, CVE-2023-42794, CVE-2023-42795, CVE-2023-45648

=== Changes in TomEE EAP 8.0.15-TT.4
* Release to avoid guava as dependency

=== Changes in TomEE EAP 8.0.15-TT.3
* Update to Tomcat 9.0.80 to mitigate CVE-2023-41080

=== Changes in TomEE EAP 8.0.15-TT.2
* Update to bcprov-jdk15to18 1.75 to mitigate CVE-2023-33201
* Update to johnzon 1.2.21 to mitigate CVE-2023-33008
* Update to Tomcat 9.0.78 proactively

=== Changes in TomEE EAP 8.0.15-TT.1
* Update to Tomcat 9.0.75 to mitigate CVE-2023-28709

=== Changes in TomEE EAP 8.0.14-TT.9
* Update to jose4j 0.9.3 to mitigate sonatype-2023-1971

=== Changes in TomEE EAP 8.0.14-TT.8
* Updated snakeyaml to 2.0 to mitigate CVE-2022-1471

=== Changes in TomEE EAP 8.0.14-TT.7
* Updated Tomcat to 9.0.72 and to Commons FileUpload 1.5 to mitigate CVE-2023-24998

=== Changes in TomEE EAP 8.0.14-TT.6
* Fix for TOMEE-4181 - BC jar losing signature during build

=== Changes in TomEE EAP 8.0.14-TT.5
* Updated CXF to 3.4.10 to mitigate CVE-2022-46363 and CVE-2022-46364
* Updated to Jettison 1.5.3 to mitigate CVE-2022-45685

=== Changes in TomEE EAP 8.0.14-TT.4
* TOMEE-4014 - Fix for IntelliJ IDEA plugin

=== Changes in TomEE EAP 8.0.14-TT.3
* This release provides the `openejb.cache.cdi-type-resolution-failure` system property (false by default), which will cache CDI bean lookup by type failures. This may provide better performance when looking up CDI beans that are defined in EAR libraries from web applications.

=== Changes in TomEE EAP 8.0.14-TT.2
* Updated to Woodstox 6.4.0 to mitigate CVE-2022-40156, CVE-2022-40155, CVE-2022-40154, CVE-2022-40153

=== Changes in TomEE EAP 8.0.13-TT.5
* Updated to hsqldb 2.7.1 to mitigate CVE-2022-41853

=== Changes in TomEE EAP 8.0.13-TT.4
* Updated jackson to 2.14.0-rc1 to mitigate CVE-2022-42003 & CVE-2022-42004
* Updated Jettison to 1.5.1 to mitigate CVE-2022-40149 & CVE-2022-40150
* Updated Tomcat to 9.0.68

=== Changes in TomEE EAP 8.0.13-TT.3
* Updated snakeyaml to 1.32 to mitigate CVE-2022-38752

=== Changes in TomEE EAP 8.0.13-TT.2
* Updated jackson-dataformat-yaml to mitigate CVE-2022-25857

=== Changes in TomEE EAP 8.0.13-TT.1
* Patch taglibs-shaded to mitigate CVE-2022-34169

=== Changes in TomEE EAP 8.0.12-TT.1
* Updated to Tomcat 9.0.64

=== Changes in TomEE EAP 8.0.11-TT.1
* Updated to Tomcat 9.0.63 to mitigate CVE-2022-29885

=== Changes in TomEE EAP 8.0.10-TT.3
* Updated to Tomcat 9.0.62

=== Changes in TomEE EAP 8.0.10.TT.2
* Updated jackson-databind to 2.13.2.2 to mitigate CVE-2020-36518

=== Changes in TomEE EAP 8.0.10.TT.1
* Updated to Tomcat 9.0.59
* Cherry pick patch for TOMEE-3850

=== Changes in TomEE EAP 8.0.9-TT.7
* Updated to Tomcat 9.0.58 to mitigate CVE-2022-23181

=== Changes in TomEE EAP 8.0.9-TT.6
* Updated to tomee-patch-plugin to 0.8 and skipped bcprov-jdk15to18 1.69 signed jar


=== Changes in TomEE EAP 8.0.9-TT.5
* Updated to jackson-annotations 2.13.1 to mitigate sonatype-2021-4682

=== Changes in TomEE EAP 8.0.9-TT.4
* Updated openejb-cxf to exclude org.ehcache.ehcache instead of net.sf.ehcache.ehcache

=== Changes in TomEE EAP 8.0.9-TT.3
* Updated to openwebbeans to 2.0.24-TT.1 and CXF to 3.4.4 to mitigate CVE-2021-30468

=== Changes in TomEE EAP 8.0.9-TT.2
* Updated to Tomcat 9.0.54 to mitigate CVE-2021-42340

=== Changes in TomEE EAP 8.0.9-TT.1
* Updated xmlsec to 2.2.3 to mitigate CVE-2021-40690

=== Changes in TomEE EAP 8.0.6-TT.5
* Updated CXF to 3.3.11 to mitigate CVE-2021-30468
* Updated Tomcat to 9.0.48
* Updated ActiveMQ to 5.16.2

=== Changes in TomEE EAP 8.0.6-TT.4
* Updated Tomcat to 9.0.45
* Updated CXF to 3.3.10 to mitigate CVE-2021-22696

=== Changes in TomEE EAP 8.0.6-TT.3
* Updated Buncy castle to 1.68

=== Changes in TomEE EAP 8.0.6 -TT.2
* Update  myface to 2.3.8 to mitigate CVE-2021-26296
* Update Tomcat to 9.0.43


=== Changes in TomEE EAP 8.0.6-TT.1
* Update  ActiveMQ to 5.16.1 to mitigate CVE-2021-26117
* Updated commons-dbcp to 2.1-TT.1 to mitigate sonatype-2020-1349

=== Changes in TomEE EAP 8.0.5-TT.1
* Updated Apache CXF to mitigate CVE-2020-13954
* Updated Buncy castle to mitigate CVE-2020-0187 & sonatype-2020-0770
* Updated Apache Tomcat to mitigate CVE-2020-17527

=== Changes in TomEE EAP 8.0.4-TT.5
* Update to Tomcat 9.0.39 to mitigate CVE-2020-13943

=== Changes in TomEE EAP 8.0.4-TT.1

* Update commons-io to mitigate sonatype-2018-0705
* Update ActiveMQ to mitigate CVE-2020-11998 and CVE-2020-11998

=== Changes in TomEE EAP 8.0.4-TT.1

* Update to Tomcat 9.0.37
* Update to commons-codec 1.14
* Update to commons-dbcp 2.1 to mask passwords in JMX
* Prevent ActiveMQ embedded brokers from creating JMX interfaces

=== Changes in TomEE EAP 8.0.2-TT.1

* Update to Tomcat 9.0.30 to mitigate CVE-2019-12418 & CVE-2019-17563

=== Changes in TomEE EAP 8.0.1-TT.2

* Update to MyFaces 2.3.6
* TOMEE-2744: JDK14 compatibility: remove usage of javax.security.acl
* Update Tomcat dependency to 9.0.29
* Removing Xalan and Serializer from the final distributions
* TOMEE-2736 Explicitly override cached system properties in RemoteServer for Maven TomEE Plugin
* TOMEE-2734 Upgrade CXF to 3.3.4
* TOMEE-2727 update commons-daemon to 1.2.2


=== Changes in TomEE EAP 8.0.1-TT.1

* Update Mojarra to mitigate CVE-2019-17091
