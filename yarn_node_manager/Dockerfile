FROM elevy/hadoop

COPY conf/yarn-site.xml /hadoop/etc/hadoop/
COPY bin/entrypoint.sh 	/

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "/hadoop/bin/yarn", "nodemanager" ]

# localizer, ui, client
EXPOSE 8040 8041 8042
