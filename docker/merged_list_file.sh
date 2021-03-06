# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecode' | xargs rm -rf

##############短期活动##############
# 小鸽有礼(活动时间：2021年1月15日至2021年2月19日)
5 7 * * * node /scripts/jd_xg.js |ts >> /scripts/logs/jd_xg.log 2>&1
# 小鸽有礼2(活动时间：2021年1月28日～2021年2月28日)
34 9 * * * node /scripts/jd_xgyl.js |ts >> /scripts/logs/jd_jd_xgyl.log 2>&1

#环球挑战赛 活动时间：2021-02-02 至 2021-02-22
0 9,12,20,21 2-22 2 * node /scripts/jd_global.js |ts >> /scripts/logs/jd_global.log 2>&1


##############长期活动##############
# 签到
3 0,18 * * * cd /scripts && node jd_bean_sign.js |ts >> /scripts/logs/jd_bean_sign.log 2>&1
# 东东超市兑换奖品
0,30 0 * * * node /scripts/jd_blueCoin.js |ts >> /scripts/logs/jd_blueCoin.log 2>&1
# 摇京豆
0 0 * * * node /scripts/jd_club_lottery.js |ts >> /scripts/logs/jd_club_lottery.log 2>&1
# 东东农场
5 6-18/6 * * * node /scripts/jd_fruit.js |ts >> /scripts/logs/jd_fruit.log 2>&1
# 宠汪汪
15 */2 * * * node /scripts/jd_joy.js |ts >> /scripts/logs/jd_joy.log 2>&1
# 宠汪汪喂食
15 */1 * * * node /scripts/jd_joy_feedPets.js |ts >> /scripts/logs/jd_joy_feedPets.log 2>&1
# 宠汪汪偷好友积分与狗粮
0 0-10/2 * * * node /scripts/jd_joy_steal.js |ts >> /scripts/logs/jd_joy_steal.log 2>&1
# 摇钱树
0 */2 * * * node /scripts/jd_moneyTree.js |ts >> /scripts/logs/jd_moneyTree.log 2>&1
# 东东萌宠
5 6-18/6 * * * node /scripts/jd_pet.js |ts >> /scripts/logs/jd_pet.log 2>&1
# 京东种豆得豆
0 7-22/1 * * * node /scripts/jd_plantBean.js |ts >> /scripts/logs/jd_plantBean.log 2>&1
# 京东全民开红包
1 1 * * * node /scripts/jd_redPacket.js |ts >> /scripts/logs/jd_redPacket.log 2>&1
# 进店领豆
10 0 * * * node /scripts/jd_shop.js |ts >> /scripts/logs/jd_shop.log 2>&1
# 京东天天加速
8 */3 * * * node /scripts/jd_speed.js |ts >> /scripts/logs/jd_speed.log 2>&1
# 东东超市
11 1-23/5 * * * node /scripts/jd_superMarket.js |ts >> /scripts/logs/jd_superMarket.log 2>&1
# 取关京东店铺商品
55 23 * * * node /scripts/jd_unsubscribe.js |ts >> /scripts/logs/jd_unsubscribe.log 2>&1
# 京豆变动通知
0 10 * * * node /scripts/jd_bean_change.js |ts >> /scripts/logs/jd_bean_change.log 2>&1
# 京东抽奖机
11 1 * * * node /scripts/jd_lotteryMachine.js |ts >> /scripts/logs/jd_lotteryMachine.log 2>&1
# 京东排行榜
11 9 * * * node /scripts/jd_rankingList.js |ts >> /scripts/logs/jd_rankingList.log 2>&1
# 天天提鹅
18 * * * * node /scripts/jd_daily_egg.js |ts >> /scripts/logs/jd_daily_egg.log 2>&1
# 金融养猪
12 * * * * node /scripts/jd_pigPet.js |ts >> /scripts/logs/jd_pigPet.log 2>&1
# 点点券
20 0,20 * * * node /scripts/jd_necklace.js |ts >> /scripts/logs/jd_necklace.log 2>&1
# 京喜工厂
20 * * * * node /scripts/jd_dreamFactory.js |ts >> /scripts/logs/jd_dreamFactory.log 2>&1
# 东东小窝
16 6,23 * * * node /scripts/jd_small_home.js |ts >> /scripts/logs/jd_small_home.log 2>&1
# 东东工厂
36 * * * * node /scripts/jd_jdfactory.js |ts >> /scripts/logs/jd_jdfactory.log 2>&1
# 十元街
36 8,18 * * * node /scripts/jd_syj.js |ts >> /scripts/logs/jd_syj.log 2>&1
# 京东快递签到
23 1 * * * node /scripts/jd_kd.js |ts >> /scripts/logs/jd_kd.log 2>&1
# 京东汽车(签到满500赛点可兑换500京豆)
0 0 * * * node /scripts/jd_car.js |ts >> /scripts/logs/jd_car.log 2>&1
# 领京豆额外奖励(每日可获得3京豆)
33 4 * * * node /scripts/jd_bean_home.js |ts >> /scripts/logs/jd_bean_home.log 2>&1
# 京东直播(每日18豆)
10-20/5 11 * * * node /scripts/jd_live.js |ts >> /scripts/logs/jd_live.log 2>&1
# 微信小程序京东赚赚
10 11 * * * node /scripts/jd_jdzz.js |ts >> /scripts/logs/jd_jdzz.log 2>&1
# 宠汪汪邀请助力
10 9-20/2 * * * node /scripts/jd_joy_run.js |ts >> /scripts/logs/jd_joy_run.log 2>&1
# crazyJoy自动每日任务
10 7 * * * node /scripts/jd_crazy_joy.js |ts >> /scripts/logs/jd_crazy_joy.log 2>&1
# 京东汽车旅程赛点兑换金豆
0 0 * * * node /scripts/jd_car_exchange.js |ts >> /scripts/logs/jd_car_exchange.log 2>&1
# 导到所有互助码
47 7 * * * node /scripts/jd_get_share_code.js |ts >> /scripts/logs/jd_get_share_code.log 2>&1
# 口袋书店
7 8,12,18 * * * node /scripts/jd_bookshop.js |ts >> /scripts/logs/jd_bookshop.log 2>&1
# 京喜农场
0 9,12,18 * * * node /scripts/jd_jxnc.js |ts >> /scripts/logs/jd_jxnc.log 2>&1
# 签到领现金
27 7 * * * node /scripts/jd_cash.js |ts >> /scripts/logs/jd_cash.log 2>&1
# 京喜app签到
39 7 * * * node /scripts/jx_sign.js |ts >> /scripts/logs/jx_sign.log 2>&1
# 京东家庭号(暂不知最佳cron)
# */20 * * * * node /scripts/jd_family.js |ts >> /scripts/logs/jd_family.log 2>&1
# 闪购盲盒
27 8 * * * node /scripts/jd_sgmh.js |ts >> /scripts/logs/jd_sgmh.log 2>&1
# 京东秒秒币
10 7 * * * node /scripts/jd_ms.js |ts >> /scripts/logs/jd_ms.log 2>&1
# 删除优惠券(默认注释，如需要自己开启，如有误删，已删除的券可以在回收站中还原，慎用)
#20 9 * * 6 node /scripts/jd_delCoupon.js |ts >> /scripts/logs/jd_delCoupon.log 2>&1

21 */1 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); docker_entrypoint.sh |ts >> /scripts/logs/default_task.log 2>&1
