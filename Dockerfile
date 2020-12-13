FROM rclone/rclone:latest

WORKDIR /usr/src/app

COPY rclone.conf rclone.conf
COPY Achilleas_Yfantis_CV.pdf Achilleas_Yfantis_CV.pdf

CMD [ "sync", "--config", "rclone.conf", "Achilleas_Yfantis_CV.pdf", "onedrive_update:Achilleas_Yfantis_CV.pdf" ]