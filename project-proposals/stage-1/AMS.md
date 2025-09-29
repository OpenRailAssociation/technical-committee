 
# Questionnaire for AMS

## What is the project's name?
AMS (Atelier Métier de Signalisation)

## Describe the project. What does the project do, why is it valuable, where does it come from?

The "Atelier Métier Signalisation" project was launched as part of the development of the new generation of Computer-Based Interlocking (CBI) systems : ARGOS. In this context, SNCF Réseau decided to fully model the signaling principles in order to share them with its industrial partners. To achieve this, the development of a software solution was enconsidered, enabling the design, validation, and simulation of this new generation of CBI. CEA LIST and SYSTEREL successfully responded to the request for proposals.
The development is nearing completion and will soon be certified for use in compliance with CENELEC 50128 standards.
This project represents a major breakthrough in the field, as it brings together several complex modules integrated within a single tool.
It has already attracted significant interest from many stakeholders in the railway sector.

## Who are the maintainers of the project (these will be the primary contacts for the OpenRail Association)?

- SNCF Réseau
    - Thibault LEMAIRE (thibault.lemaire@reseau.sncf.fr)
    - Houman HAMWI (houmam.hamwi@reseau.sncf.fr)
- CEA List
    - Jérémie TATIBOUET (jeremie.tatibouet@cea.fr)

## Which organizations are sponsoring/contributing to the project?
- Sponsoring
    - SNCF Réseau
- Contributing
    - SNCF Réseau
    - CEA List
    - Systerel
    
## Where is the code hosted?
The code is hosted at a private GitLab instance (https://gitlab.dils-development.fr/)

## What is the project's main license?
The project code will be licensed under [EPL v2](https://www.eclipse.org/legal/epl-2.0/).

## What other licenses does the project use, e.g., for included 3rd-party code?

Dependencies listed below are identified in the project target plateform (i.e., the environment to compile, test and build the project).

| Dependency | License(s) | Version(s) |
| ------------- | ------------- |------------- |
|[mylyn](https://download.eclipse.org/mylyn/updates/release/4.4.0)|[EPL v2](https://github.com/eclipse-mylyn/org.eclipse.mylyn/blob/main/LICENSE)| 4.4.0 |
|[gmf-runtime](https://download.eclipse.org/modeling/gmp/gmf-runtime/updates/milestones/S202405171447/)|[EPL v2](https://github.com/eclipse-gmf-runtime/gmf-runtime/blob/master/LICENSE)| S202405171447 |
|[elk](https://download.eclipse.org/elk/updates/releases/0.9.0/)| [EPL v2](https://github.com/eclipse-elk/elk/blob/master/LICENSE.md) | 0.9.0 |
|[papyrus-classic](https://download.eclipse.org/modeling/mdt/papyrus/papyrus-classic/updates/releases/2024-06/)|[EPL v2]()|2024-06|
|[xwt](https://download.eclipse.org/xwt/release-1.9.200/)|[EPL v2]()|1.9.200|YES|
|[cdo](https://download.eclipse.org/modeling/emf/cdo/updates/integration/stable/latest/)|[EPL v1](https://github.com/eclipse-cdo/cdo/blob/master/LICENSE)|latest|
|[javax.annotation](https://www.eclipse.org/downloads/download.php?file=/tools/orbit/downloads/drops/R20230531010532/repository/plugins/javax.annotation_1.3.5.v20230504-0748.jar)|EPL v2 and GPL v2|1.3.5|
|[emf-compare](https://download.eclipse.org/modeling/emf/compare/updates/releases/latest/)|[EPL v1](https://github.com/eclipse-emf-compare/emf-compare#EPL-1.0-1-ov-file)|latest|
|[com.google.gson](https://download.eclipse.org/tools/orbit/simrel/orbit-aggregation/2024-06/)|[Apache 2](https://github.com/google/gson/blob/main/LICENSE)|2024-06|
|[org.apache.commons.commons-collections4](https://download.eclipse.org/tools/orbit/simrel/orbit-aggregation/2024-06/)|[Apache 2](https://github.com/apache/commons-collections/blob/master/LICENSE.txt)|2024-06|
|[org.apache.commons.math3](https://download.eclipse.org/tools/orbit/simrel/orbit-aggregation/2024-06/)|[Apache 2](https://github.com/apache/commons-math/blob/master/LICENSE)|2024-06|
|[com.fasterxml.jackson.core.jackson-core](https://download.eclipse.org/tools/orbit/simrel/orbit-aggregation/2024-06/)|[Apache 2](https://github.com/FasterXML/jackson-core/blob/2.x/LICENSE)|2024-06|
|[com.fasterxml.jackson.core.jackson-databind](https://download.eclipse.org/tools/orbit/simrel/orbit-aggregation/2024-06/)|[Apache 2](https://github.com/FasterXML/jackson-databind/blob/2.x/LICENSE)|2024-06|
|[com.fasterxml.jackson.core.jackson-annotations](https://download.eclipse.org/tools/orbit/simrel/orbit-aggregation/2024-06/)|[Apache 2](https://github.com/FasterXML/jackson-annotations/blob/2.x/LICENSE)|2024-06|
|[org.apache.poi](https://download.eclipse.org/tools/orbit/simrel/orbit-aggregation/2024-06/)|[Apache 2](https://github.com/apache/poi/blob/trunk/legal/LICENSE)|2024-06|
|[org.apache.poi.ooxml](https://download.eclipse.org/tools/orbit/simrel/orbit-aggregation/2024-06/)|[Apache 2](https://github.com/apache/poi/blob/trunk/legal/LICENSE)|2024-06|
|[org.apache.poi.ooxml.schemas](https://download.eclipse.org/tools/orbit/simrel/orbit-aggregation/2024-06/)|[Apache 2](https://github.com/apache/poi/blob/trunk/legal/LICENSE)|2024-06|
|[org.apache.batik.anim](https://download.eclipse.org/tools/orbit/simrel/orbit-aggregation/2024-06/)|[Apache 2](https://xmlgraphics.apache.org/batik/license.html)|2024-06|
|[org.apache.batik.dom](https://download.eclipse.org/tools/orbit/simrel/orbit-aggregation/2024-06/)|[Apache 2](https://xmlgraphics.apache.org/batik/license.html)|2024-06|
|[org.apache.batik.dom.svg](https://download.eclipse.org/tools/orbit/simrel/orbit-aggregation/2024-06/)|[Apache 2](https://xmlgraphics.apache.org/batik/license.html)|2024-06|
|[org.apache.batik.xml](https://download.eclipse.org/tools/orbit/simrel/orbit-aggregation/2024-06/)|[Apache 2](https://xmlgraphics.apache.org/batik/license.html)|2024-06|
|[com.google.inject](https://download.eclipse.org/tools/orbit/simrel/orbit-aggregation/2024-06/)|[Apache 2](https://github.com/google/guice#Apache-2.0-1-ov-file)|2024-06|
|[model2doc](https://download.eclipse.org/modeling/mdt/papyrus/papyrus-classic/components/model2doc/releases/0.9.0/p2/)|EPL v2|0.9.0|
|[moka](https://download.eclipse.org/modeling/mdt/papyrus/papyrus-classic/components/moka/releases/4.2.0/p2/)|EPL v2|4.2.0|
|[jsonedit](http://boothen.github.io/Json-Eclipse-Plugin/)|[EPL v1](https://github.com/boothen/Json-Eclipse-Plugin/blob/master/LICENSE)|1.1.3|
|[org.eclipse.ecf.filetransfer.httpclient5](https://download.eclipse.org/releases/2024-06/)|EPL v2|2024-06|
|[org.eclipse.equinox.p2.discovery](https://download.eclipse.org/releases/2024-06/)|[EPL v2](https://github.com/eclipse-equinox/p2/blob/master/LICENSE)|2024-06|
|[org.eclipse.equinox.executable](https://download.eclipse.org/releases/2024-06/)|[EPL v2](https://github.com/eclipse-equinox/equinox.binaries/blob/master/LICENSE)|2024-06|
|[org.eclipse.jdt](https://download.eclipse.org/releases/2024-06/)|[EPL v2](https://github.com/eclipse-jdt/eclipse.jdt.core/blob/master/LICENSE)|2024-06|
|[org.eclipse.platform](https://download.eclipse.org/releases/2024-06/)|[EPL v2](https://github.com/eclipse-platform/eclipse.platform#EPL-2.0-1-ov-file)|2024-06|
|[org.eclipse.rcp](https://download.eclipse.org/releases/2024-06/)|[EPL v2](https://mvnrepository.com/artifact/org.eclipse.platform/org.eclipse.rcp)|2024-06|
|[org.eclipse.xsd.sdk](https://download.eclipse.org/releases/2024-06/)|[EPL v1](https://mvnrepository.com/artifact/org.eclipse.xsd/org.eclipse.xsd)|2024-06|
|[org.eclipse.xsd.ecore.converter](https://download.eclipse.org/releases/2024-06/)|[EPL v1](https://mvnrepository.com/artifact/org.eclipse.xsd.ecore/converter)|2024-06|
|[org.eclipse.xtend.sdk](https://download.eclipse.org/releases/2024-06/)|[EPL v2]()|2024-06|
|[org.eclipse.xtext.sdk](https://download.eclipse.org/releases/2024-06/)|[EPL v2](https://github.com/eclipse-xtext/xtext/blob/main/LICENSE)|2024-06|
|[org.eclipse.xtext.redist](https://download.eclipse.org/releases/2024-06/)|[EPL v2](https://github.com/eclipse-xtext/xtext/blob/main/LICENSE)|2024-06|
|[org.eclipse.xtext.runtime](https://download.eclipse.org/releases/2024-06/)|[EPL v2](https://github.com/eclipse-xtext/xtext/blob/main/LICENSE)|2024-06|
|[org.eclipse.xtext.ui](https://download.eclipse.org/releases/2024-06/)|[EPL v2](https://github.com/eclipse-xtext/xtext/blob/main/LICENSE)|2024-06|
|[org.apache.commons.logging](https://download.eclipse.org/releases/2024-06/)|[Apache 2](https://github.com/apache/commons-logging#Apache-2.0-1-ov-file)|2024-06|
|[javax.xml](https://download.eclipse.org/releases/2024-06/)|EPL v1 and Apache 2|2024-06|
|[javax.xml.stream](https://download.eclipse.org/releases/2024-06/)|EPL v1 and Apache 2|2024-06|
|[org.eclipse.wst.json_core](https://download.eclipse.org/releases/2024-06/)|EPL v2|2024-06|
|[bcpg](https://download.eclipse.org/releases/2024-06/)|[Apache 2 et BouncyCastle](https://central.sonatype.com/artifact/org.bouncycastle/bcpg-jdk18on/1.78.1)|2024-06|
|[bcprov](https://download.eclipse.org/releases/2024-06/)|[BouncyCastle](https://central.sonatype.com/artifact/org.bouncycastle/bcprov-jdk18on/1.78.1)|2024-06|
|[org.eclipse.uml2](https://download.eclipse.org/releases/2024-06/)|[EPL v2](https://github.com/eclipse-uml2/uml2/blob/master/LICENSE)|2024-06|
|[org.eclipse.osgi.services](https://download.eclipse.org/releases/2024-06/)|[EPL v2](https://github.com/eclipse-equinox/equinox/blob/master/LICENSE)|2024-06|
|[justj](https://download.eclipse.org/justj/jres/21/updates/release/latest)|[EPL v2](https://github.com/eclipse-justj/justj/blob/master/LICENSE)|21.0.8|

Dependencies listed below are identified by AMS plugins as Maven dependencies and included at packaging time.

| Dependency | License(s) | Version(s) |
| ------------- | ------------- |------------- |
| [org.commonmark](https://github.com/commonmark/commonmark-java)  | [BSD 2-Clause "Simplified" License](https://github.com/commonmark/commonmark-java/blob/main/LICENSE.txt) | 0.21 |
| [org.postgresql](https://mvnrepository.com/artifact/org.postgresql/postgresql/42.2.18)  |  BSD 2-clause  | 42.2.18 |
| [org.glassfish.jersey.core](https://mvnrepository.com/artifact/org.glassfish.jersey.core/jersey-client)  |  [EPL v2](https://github.com/eclipse-ee4j/jersey/blob/2.x/LICENSE.md)  | 3.1.5 |
| [jersey-hk2](https://mvnrepository.com/artifact/org.glassfish.jersey.inject/jersey-hk2)  |  [EPL v2](https://github.com/eclipse-ee4j/jersey/blob/2.x/LICENSE.md)  | 3.1.5 |
| [jersey-media-multipart](https://mvnrepository.com/artifact/org.glassfish.jersey.media/jersey-media-multipart)  |  [EPL v2](https://github.com/eclipse-ee4j/jersey/blob/2.x/LICENSE.md)  | 3.1.5 |
| [jakarta.activation-api](https://mvnrepository.com/artifact/jakarta.activation/jakarta.activation-api)  |  [EDL 1](https://www.eclipse.org/org/documents/edl-v10.php) - see but BSD-3-Clause | 2.1.2 |
| [jersey-media-json-jackson](https://mvnrepository.com/artifact/org.glassfish.jersey.media/jersey-media-json-jackson)  |  [EPL v2 and GPL v2](https://github.com/eclipse-ee4j/jersey/blob/2.x/LICENSE.md)  | 3.1.5 |
| [jackson-core](https://mvnrepository.com/artifact/com.fasterxml.jackson.core/jackson-core)  |  [Apache 2](https://github.com/FasterXML/jackson-core/blob/2.x/LICENSE)  | 2.17.2 |
| [jackson-databind](https://mvnrepository.com/artifact/com.fasterxml.jackson.core/jackson-databind)  |  [Apache 2](https://github.com/FasterXML/jackson-databind/blob/2.x/LICENSE)  | 2.17.2 |
| [jackson-annotations](https://mvnrepository.com/artifact/com.fasterxml.jackson.core/jackson-annotations)  |  [Apache 2](https://github.com/FasterXML/jackson-annotations/blob/2.x/LICENSE)  | 2.17.2 |
| [jackson-module-jakarta-xmlbind-annotations](https://mvnrepository.com/artifact/com.fasterxml.jackson.module/jackson-module-jakarta-xmlbind-annotations)  |  [Apache 2](https://github.com/FasterXML/jackson-modules-base/blob/2.x/LICENSE)  | 2.17.2 |
| [commons-codec](https://mvnrepository.com/artifact/commons-codec/commons-codec)  |  [Apache 2](https://github.com/apache/commons-codec/blob/master/LICENSE.txt)  | 1.12 |
| [antlr-runtime](https://mvnrepository.com/artifact/org.antlr/antlr-runtime) |  [Apache 2](https://mvnrepository.com/artifact/org.antlr/antlr-runtime) | 3.5.2 |
| [guava](https://mvnrepository.com/artifact/com.google.guava/guava) |  [Apache 2](https://github.com/google/guava/blob/master/LICENSE)  | 31.1 |
| [jakarta.xml.bind-api](https://jakarta.ee/specifications/xml-binding/) | [EDL 1](https://www.eclipse.org/org/documents/edl-v10.php) - see BSD-3-Clause | 4.0.0 |
| [jaxb-runtime](https://mvnrepository.com/artifact/org.glassfish.jaxb/jaxb-runtime)  |  [EDL 1](https://www.eclipse.org/org/documents/edl-v10.php) - see BSD-3-Clause | 3.0.2 |
| [slf4j-api](https://mvnrepository.com/artifact/org.slf4j/slf4j-api)  |  [MIT](https://github.com/qos-ch/slf4j/blob/master/LICENSE.txt)  | 2.0.7, 2.0.13 |
| [docx4j-core](http://www.docx4java.org/docx4j-core/) |  [Apache 2](https://github.com/plutext/docx4j/blob/VERSION_11_5_5/legals/LICENSE)  | 11.4.9 |
| [docx4j-documents4j-local](https://mvnrepository.com/artifact/org.docx4j/docx4j-documents4j-local) |  [Apache 2](https://github.com/plutext/docx4j/blob/VERSION_11_5_5/legals/LICENSE)  | 11.4.9 |
| [activemq-broker](https://mvnrepository.com/artifact/org.apache.activemq/activemq-broker)  |  [Apache 2](https://github.com/apache/activemq/blob/main/LICENSE)  | 6.0.1 |
| [activemq-mqtt](https://mvnrepository.com/artifact/org.apache.activemq/activemq-mqtt)  |  [Apache 2](https://github.com/apache/activemq/blob/main/LICENSE) | 6.0.1 |
| [activemq-web](https://mvnrepository.com/artifact/org.apache.activemq/activemq-web) |  [Apache 2](https://github.com/apache/activemq/blob/main/LICENSE)  | 6.0.1 |
| [activemq-kahadb-store]() |  [Apache 2](https://github.com/apache/activemq/blob/main/LICENSE)  | 6.0.1 |
| [log4j-core](https://mvnrepository.com/artifact/org.apache.logging.log4j/log4j-core) |  [Apache 2](https://github.com/apache/logging-log4j2/blob/2.x/LICENSE.txt)  | 2.22.1 |
| [commons-io](https://mvnrepository.com/artifact/commons-io/commons-io) |  [Apache 2](https://github.com/apache/commons-io/blob/master/LICENSE.txt)  | 2.16.1 |
| [jetty-server](https://mvnrepository.com/artifact/org.eclipse.jetty/jetty-server) | [Apache 2 and EPL v2](https://github.com/jetty/jetty.project/blob/jetty-12.1.x/LICENSE) | 11.0.14 |
| [jetty-servlet](https://mvnrepository.com/artifact/org.eclipse.jetty/jetty-servlets)  |  [Apache 2 and EPL v2](https://github.com/jetty/jetty.project/blob/jetty-12.1.x/LICENSE) | 11.0.14  |
| [jetty-util](https://mvnrepository.com/artifact/org.eclipse.jetty/jetty-util)  |  [Apache 2 and EPL v2](https://github.com/jetty/jetty.project/blob/jetty-12.1.x/LICENSE) | 11.0.14  |
| [jetty-http](https://mvnrepository.com/artifact/org.eclipse.jetty/jetty-http)  |  [Apache 2 and EPL v2](https://github.com/jetty/jetty.project/blob/jetty-12.1.x/LICENSE) | 11.0.14  |
| [ooxml-schemas](https://mvnrepository.com/artifact/org.apache.poi/ooxml-schemas)  |  [Apache 2](https://github.com/apache/poi/blob/trunk/legal/LICENSE)  | 1.4 |
| [poi](https://mvnrepository.com/artifact/org.apache.poi/poi)  |  [Apache 2](https://github.com/apache/poi/blob/trunk/legal/LICENSE)   | 4.1.1 |
| [poi-ooxml](https://mvnrepository.com/artifact/org.apache.poi/poi-ooxml)  |  [Apache 2](https://github.com/apache/poi/blob/trunk/legal/LICENSE)   | 4.1.1 |

Dependencies listed below are identified by the Live Simulation Control Board (a web application) and included at packaging time.

| Dependency | License(s) | Version(s) |
| ------------- | ------------- |------------- |
| [bootstrap](https://getbootstrap.com/docs/5.3/getting-started/introduction/)  |  [MIT](https://github.com/twbs/bootstrap/blob/v5.3.8/LICENSE)   | 5.3.3 |
| [mqtt](https://github.com/mqttjs/MQTT.js#readme)  |  [MIT](https://github.com/mqttjs/MQTT.js?tab=readme-ov-file#license)   | 5.10.1 |
| [next](https://nextjs.org/docs)  |  [MIT](https://github.com/vercel/next.js/blob/canary/license.md)   | 14.2.13 |
| [react](https://react.dev/)  |  [MIT](https://github.com/facebook/react/blob/main/LICENSE)   | 18 |
| [react-bootstrap](https://nextjs.org/docs)  |  [MIT](https://github.com/react-bootstrap/react-bootstrap/blob/master/LICENSE)   | 2.10.5 |
| [react-dom](https://nextjs.org/docs)  |  [MIT](https://github.com/facebook/react/blob/main/LICENSE)   | 14.2.13 |

The AMS also depends on the [Webview runtime](https://learn.microsoft.com/en-us/microsoft-edge/webview2/concepts/distribution?tabs=dotnetcsharp#details-about-the-fixed-version-runtime-distribution-mode). Currently, the component is embedded in the tool at packaging time. For the open source release, the JVM will be parameterized to rely directly on the Webview available at the client running the AMS.

## Are any trademarks associated with the project?
No.

## Does the project have a web site? Where is it?
The project does not have a website. The code is hosted on a private GitLab instance.

## What are the communication channels the project uses (such as mailing lists, Slack, IRC, etc.)?
There are no public communication channels.

## What is the project's leadership team and decision-making process?
- Current product management
   - Thibault LEMAIRE (thibault.lemaire@reseau.sncf.fr)
   - Houman HAMWI (houmam.hamwi@reseau.sncf.fr)
- Current product development
    - CEA List
        - Corentin BOUX (corentin.boux@cea.fr)
        - Fabrice GAUDIER (fabrice.gaudier@cea.fr)
        - Jérémie TATIBOUET (jeremie.tatibouet@cea.fr)
        - Pauline DEVILLE (pauline.deville@cea.fr)
        - Sébastien REVOL (sebastien.revol@cea.fr)
        - Vincent LORENZO (vincent.lorenzo@cea.fr)
    - Systerel
        - Julien NIGUEZ (julien.niguez@systerel.fr)
        - Nicolas BEAUGER (nicolas.beauger@systerel.fr)
        - Matthieu PERIN (matthieu.perin@systerel.fr)
        - Rapheal GAUDY (raphael.gaudy@systerel.fr)

This project's leadership team is **subject to changes** for 2026.

## How is development of the project planned and organized? Is this transparent to the public?
Project is developped according to an AGILE process. SNCF Réseau define the features to be implemented. The defined features are then specified by the development team as a set one to many technicals tasks. The development is iterative. One sprint corresponds one iteration during which a set of a technical tasks are addressed.

The planification and the organization are not exposed to the public.

## What is the project's roadmap? 
A one year maintainance contract will be signed for 2025 / 2026.

## What other organizations in the world should be interested in this project? 
Railway Companies and industrial partners have expressed an interest but nothing concrete at this point apart from experimental works based on previous AMS milestones.

## Why would this project be a good candidate for inclusion in the OpenRail Association?
"AMS" is a true technological breakthrough enhancing the design and validation of computer-based interlocking systems.

## What is the project's plan for growing in maturity if accepted within the OpenRail Association?
The project plan is to share the AMS with the signaling community to push the SNCF Reseau way of designing and validating computer-based interlocking systems.

## Which of the AMS repositories would you transfer to OpenRail? All of them or only a subset? 
The AMS implementation is divided into several repositories. Some features included in the repositories are specific to SNCF Réseau (e.g., the identification strategy) or proprietary (e.g., the CBI specifications). These features will be removed before the open source release. Hence only a subset of the current implementation will be transfered to OpenRail.

## How is it decided if and when a pull request is merged? 
The project team will define criterias enabling a pull request to be merged.

## How can someone become s committer to the project?
The project team will define criterias enabling an external contributor to become a committer.

## How can someone become a maintainer of the project? 
The project team will define criterias enabling an external contributor to become a maintainer.
