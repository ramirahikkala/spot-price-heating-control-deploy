FROM ubuntu:22.04
RUN apt-get update && apt-get install -y python3-pip python3-venv
RUN pip3 install pipx
RUN pipx install heatcontrol==0.4.5
RUN apt update && apt install tzdata -y
ENV TZ="Europe/Helsinki"
CMD ["/root/.local/bin/spot_price_control", "run"]
