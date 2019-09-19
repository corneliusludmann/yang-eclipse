FROM gitpod/workspace-full-vnc

USER root

# Install Eclipse Java 2019-06
RUN wget http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/technology/epp/downloads/release/2019-06/R/eclipse-java-2019-06-R-linux-gtk-x86_64.tar.gz && \
	tar -zxvf eclipse-java-2019-06-R-linux-gtk-x86_64.tar.gz -C /usr/ && \
	ln -s /usr/eclipse/eclipse /usr/bin/eclipse

# Window manager openbox-session executes the autostart file created below
ENV WINDOW_MANAGER="openbox-session"

# Create folder where anyone can place eclipse plugins
RUN mkdir -p /usr/lib/eclipse/dropins/ && chmod 777 /usr/lib/eclipse/dropins

# Create autostart file to start Eclipse
USER gitpod
RUN mkdir -p $HOME/.config/openbox/ && echo "eclipse &" >> $HOME/.config/openbox/autostart
USER root
