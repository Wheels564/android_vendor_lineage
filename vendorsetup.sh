for combo in $(curl -s https://raw.githubusercontent.com/wheels/hudson/master/lineage-build-targets | sed -e 's/#.*$//' | grep lineage-15.1 | awk '{printf "lineage_%s-%s\n", $1, $2}')
do
    add_lunch_combo $combo
done
add_lunch_combo lineage_mb886
add_lunch_combo lineage_xt907_jbbl
add_lunch_combo lineage_xt925_jbbl
add_lunch_combo lineage_xt926_jbbl
