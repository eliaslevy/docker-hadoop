FROM elevy/hadoop

COPY conf/yarn-site.xml /hadoop/etc/hadoop/
COPY bin/entrypoint.sh 	/
COPY bin/cmd.sh 				/

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "/cmd.sh" ]