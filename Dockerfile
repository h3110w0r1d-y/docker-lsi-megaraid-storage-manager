FROM eclipse-temurin:8u452-b09-jre AS builder
FROM rockylinux/rockylinux:9

ENV JAVA_HOME /opt/java/openjdk
ENV JRE_HOME /opt/java/openjdk
ENV PATH /opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV removesnmp "1"
ENV ROOT_PASSWORD "password"

WORKDIR /
COPY --from=builder /opt/java/openjdk /opt/java/openjdk

RUN yum -y update && yum install -y passwd && yum clean all

COPY root /
WORKDIR /MSM_linux_x64_installer
# Fix ./deleteOldVersion.sh: line 20: [: =: unary operator expected
RUN sed -i 's/ $upgradesetuptype / "$upgradesetuptype" /g' deleteOldVersion.sh
RUN ./RunRPM.sh

ENTRYPOINT ["/entrypoint.sh"]
