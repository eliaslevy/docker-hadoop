FROM elevy/hadoop

COPY conf/yarn-site.xml /hadoop/etc/hadoop/
COPY bin/entrypoint.sh 	/

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "/hadoop/bin/yarn", "resourcemanager" ]