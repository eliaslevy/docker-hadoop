FROM elevy/hadoop

COPY conf/yarn-site.xml /hadoop/etc/hadoop/
COPY bin/entrypoint.sh 	/

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "/hadoop/bin/yarn", "resourcemanager" ]

# scheduler, resource-tracker, client, admin , ui
EXPOSE 8030 8031 8032 8033 8088
