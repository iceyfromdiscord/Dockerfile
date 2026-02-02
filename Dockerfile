FROM ubuntu:latest
# Install packages
RUN apt-get update && apt-get install -y python3 python3-pip curl openssh-client openssh-server
# Set root password
RUN echo 'root:balls1029' | chpasswd
# Enable root password login
RUN sed -i 's/^#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
# Generate SSH host keys
RUN ssh-keygen -A
# Expose SSH port
EXPOSE 22
# Run SSH server in foreground
CMD ["/usr/sbin/sshd","-D"]
