Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGV6W6DAMGQEWP4F5DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2753AD9E9
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 14:12:12 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id k11-20020a54440b0000b02901f3e6a011b4sf6686377oiw.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 05:12:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624104731; cv=pass;
        d=google.com; s=arc-20160816;
        b=zLB6ANKOcPSlC2ZKXWnY65tcy+LJ3E5pe1koT6GMqAsdErbrx5NjvPqmRo+h7Rxyec
         t3TWqU0sM9lG6gDQQ/B9Wy14CzuQ7xmvBuXnf+buor9CTYgjkymZfUoPpsifPzqKLys5
         /fpIF3TgBxu+2XffMklS7xme0BlYaAg9OBzJbPcPfTp+NrxKxAZg5Ddd7bIi1PhmCUE0
         koJO2NVElFsL57O1A3N+91hoAAUz1C2SFshv2Du8lBTR0VdPAW1VxS2193hf9HuhoG8P
         DWM3+Cgs5cLfP7mVuk8XoQHpTaw2q7P9PNf0tZgI3bbOb+2Sm2LClubT7SPjC8E3E1mJ
         0lJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=DxjaXDEhgn17ZTDB6TBcdPHyZ/8FgWqHbQ8v4IsmZ5s=;
        b=VRL8iSjKkVVWeLtDUgDIZyLbesONx5zAkaU2vKQJhyI/J+4l8wR1luENQfst0EN8JL
         oREfdIZP42+jz0hsMvid9RUyzT/x2md4HEuZWKZ1h2Ca8xzyQEv9YWvLry0UuPyr6I6C
         eky0GtkgObIGyvU0M6GhV+WwcKBQH7A/QMzc46A5XaVmrtXT3ortcqaHKNFbBuSyx6SM
         dk5/NUSDir6H/w6BUnxd+jga4mbMQ9Vg2qO/AKgFaPAihtNndazfD6vratc8hr54PlwV
         GmGscWsrEUX82zXqEpIGFZn6C1bikgmK7hNs6OSNMVKAWfjeH/pw+dG7s7TMw5W8D46L
         qH/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DxjaXDEhgn17ZTDB6TBcdPHyZ/8FgWqHbQ8v4IsmZ5s=;
        b=KokCDjSxewAaxkh8+mN2XVD/NDl9AEks9KrpJJ7X7ccr2R+Bx0yQKhzYC+w26psAQX
         tLKh9VemlSFbZiF3X4GpB0FAvEP/Mvw0T7Sn7R/A0skQ4Y0AP9ICQqHiNWsPCjIRq0qx
         UKnhxKRUoKKP+koNdkOooURtj+BetLt8aC+TOgHu8KVur/6GZNQNSh2tfkrY/ZbmWZ5v
         IlMVtX6cwHiOd3wx77Qtzty/4JqxS46906JSccGhtjsvF41e/79h9waMRGdBerbGuiS7
         C0JH985wvfE4aheUf9JvvuU3iOyfSnLMgBdf3Dib4MqitacHNQ0QpeC+IONvuy+9PLdJ
         RUkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DxjaXDEhgn17ZTDB6TBcdPHyZ/8FgWqHbQ8v4IsmZ5s=;
        b=hneksFVDAPMvVz06QNHiHew6+z8Te6BqJD6Sc30m07dZmof3AxCOl+BivSwrBNSaq5
         O6qtq+o+zDAHbvxaSXIwDF/67zfjnR53nz7TX67jom8S4k3e9NJ4NLlI/368JbDeoEnK
         gNbhGp9vIReA4neEidJRUqtHt8mzp4ZtM6m9YuHDoTnZHaenlv1YSSdgcfIDMkUgpelq
         l1jk+h7BmteNtCrlgT0jLs17zBI7x7rOTx2futFOXOx/7Czp+/QAsqSQIm6Q8vYfDPIu
         wKcHx+Tiu9PyG44pdyOJAhKEloD8xgqBUT9UAey4GnqtbYnuZBsgnWMqpGE1tw+u3/Ls
         S7Eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uv9S04poz3FA2BXEc/mM48kCHaKXmb4lRigDL7sXlWmpVIPF9
	vmXrgE1i3Q4ICihPZawKs60=
X-Google-Smtp-Source: ABdhPJxqn8EcKVzxXQQ6jBic7haqz+F2oO9dHdUdzhqUOnYxlu+k9IzcM0GDSCRWWWuyYDvFJOomRA==
X-Received: by 2002:a4a:9b0f:: with SMTP id a15mr13021002ook.4.1624104730757;
        Sat, 19 Jun 2021 05:12:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:bd6:: with SMTP id o22ls4182860oik.1.gmail; Sat, 19
 Jun 2021 05:12:10 -0700 (PDT)
X-Received: by 2002:aca:3285:: with SMTP id y127mr10595285oiy.115.1624104730194;
        Sat, 19 Jun 2021 05:12:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624104730; cv=none;
        d=google.com; s=arc-20160816;
        b=StTvyQfVjx1JaRAIr+DtxD2n4v80cDqw/zgQLZVfC0p1yx32IwNiEIdGm5Q3S3xDGR
         DFIq7seMHTIrQr1iUFAFuWRLI/K2Fh5FXnUfv3saL59EZsaJR4XQA/XU0F5qQ9tlGVju
         JTgB7yBvpewciJAoWwCNANKvM2znHagrIDGGaiYMkx/jU8GhvRMIbDcKmG0mxlX/ghk+
         2Gt//xWy4wRIS5HRJ6soaKOQDA1gwLbL7C/3U63crpbNa0QRXPkdPxnnyUNgJfUXzczs
         5VIadfk/VjAWXFIeHkRRrm6GOJfXb3B0swUlyLy3Z42z2gUY203c5WUYv/N9F+qMZMXa
         lq2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=9KTcTl4NR7k7CRyfkjp/6ysLfOtVdKCJKG8NDwSbnpg=;
        b=KEfON9Mc5or2Of/GRaHCzuw+LLL76aSiCLO/XoH+grGoqO+bzx4UgUu8B/8zaXjB5n
         pjNOJfIr2XMfzD8NlcrHlLeLdjZ16dw56c+MXVBAgQIPXPyrDG5O4LFsA3wiquYLyfD+
         hfDl6Gp5N7yxxZ0HDU+p2faGtJxIyVdf4rVipCVXlRJMliCaIVhvXZ9SV5ip/jU4RlIa
         jLO1/uM3wYtVyzy5KSgeo2fQfgdaIiZg3bXsJKluExWzjlCeGqo5C7bIDJgI/S+Zzj11
         vkfVoTHniLw2uaEn0HI5nueMt+7TIO9P6FLdbW/OLqVsH5EQknZjG7co91UcE65cIz7p
         Sf0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id u128si1190363oif.2.2021.06.19.05.12.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Jun 2021 05:12:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: eZSqvAabiok4OkzlbCjp3DYEnlErlqCwDOgew38EjWhPHob21VtWArXZmVab1faFEKROUm3lhX
 qnggdPtssyDQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10019"; a="206706606"
X-IronPort-AV: E=Sophos;i="5.83,285,1616482800"; 
   d="gz'50?scan'50,208,50";a="206706606"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jun 2021 05:12:08 -0700
IronPort-SDR: lTDdYQUmJE4Dw83ocK+8qFPjvedct2F0cCYnGc1anZDgepfH6e1MupcMS10VLguK92BOXl9C4r
 pO8seBpy5EAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,285,1616482800"; 
   d="gz'50?scan'50,208,50";a="422477599"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 19 Jun 2021 05:12:07 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1luZpW-0003YD-Ai; Sat, 19 Jun 2021 12:12:06 +0000
Date: Sat, 19 Jun 2021 20:11:09 +0800
From: kernel test robot <lkp@intel.com>
To: Felix Fietkau <nbd@nbd.name>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [nbd168-wireless:mt76 10/100]
 drivers/net/wireless/mediatek/mt76/mt7915/mac.c:1169:6: warning: variable
 'stat' set but not used
Message-ID: <202106192002.O0jzWMW9-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6TrnltStXW4iwmi0"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>


--6TrnltStXW4iwmi0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/nbd168/wireless mt76
head:   61a1f99dd1e3c145fce9d601b52e7adb8f37322a
commit: 223fd4f843081059bc8f8d8ba6363bfcc2e5848f [10/100] mt76: mt7915: rework tx rate reporting
config: x86_64-randconfig-r033-20210618 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d1baf2895467735ab14f4b3415fce204c0cc8e7f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/nbd168/wireless/commit/223fd4f843081059bc8f8d8ba6363bfcc2e5848f
        git remote add nbd168-wireless https://github.com/nbd168/wireless
        git fetch --no-tags nbd168-wireless mt76
        git checkout 223fd4f843081059bc8f8d8ba6363bfcc2e5848f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/wireless/mediatek/mt76/mt7915/mac.c:1169:6: warning: variable 'stat' set but not used [-Wunused-but-set-variable]
                   u8 stat;
                      ^
>> drivers/net/wireless/mediatek/mt76/mt7915/mac.c:1257:21: warning: variable 'dev' set but not used [-Wunused-but-set-variable]
           struct mt7915_dev *dev;
                              ^
   2 warnings generated.


vim +/stat +1169 drivers/net/wireless/mediatek/mt76/mt7915/mac.c

e57b7901469fc0 Ryder Lee        2020-04-25  1139  
338330bd26b1fe Felix Fietkau    2021-05-07  1140  static void
338330bd26b1fe Felix Fietkau    2021-05-07  1141  mt7915_mac_tx_free(struct mt7915_dev *dev, struct sk_buff *skb)
e57b7901469fc0 Ryder Lee        2020-04-25  1142  {
e57b7901469fc0 Ryder Lee        2020-04-25  1143  	struct mt7915_tx_free *free = (struct mt7915_tx_free *)skb->data;
e57b7901469fc0 Ryder Lee        2020-04-25  1144  	struct mt76_dev *mdev = &dev->mt76;
4c430774e01b06 Lorenzo Bianconi 2020-11-13  1145  	struct mt76_phy *mphy_ext = mdev->phy2;
e57b7901469fc0 Ryder Lee        2020-04-25  1146  	struct mt76_txwi_cache *txwi;
e57b7901469fc0 Ryder Lee        2020-04-25  1147  	struct ieee80211_sta *sta = NULL;
660915d052c606 Felix Fietkau    2020-09-01  1148  	LIST_HEAD(free_list);
660915d052c606 Felix Fietkau    2020-09-01  1149  	struct sk_buff *tmp;
e57b7901469fc0 Ryder Lee        2020-04-25  1150  	u8 i, count;
5342758d5522db Felix Fietkau    2020-11-21  1151  	bool wake = false;
e57b7901469fc0 Ryder Lee        2020-04-25  1152  
f8a667a9af9198 Felix Fietkau    2020-08-22  1153  	/* clean DMA queues and unmap buffers first */
91990519298e23 Lorenzo Bianconi 2020-11-11  1154  	mt76_queue_tx_cleanup(dev, dev->mphy.q_tx[MT_TXQ_PSD], false);
91990519298e23 Lorenzo Bianconi 2020-11-11  1155  	mt76_queue_tx_cleanup(dev, dev->mphy.q_tx[MT_TXQ_BE], false);
4c430774e01b06 Lorenzo Bianconi 2020-11-13  1156  	if (mphy_ext) {
4c430774e01b06 Lorenzo Bianconi 2020-11-13  1157  		mt76_queue_tx_cleanup(dev, mphy_ext->q_tx[MT_TXQ_PSD], false);
4c430774e01b06 Lorenzo Bianconi 2020-11-13  1158  		mt76_queue_tx_cleanup(dev, mphy_ext->q_tx[MT_TXQ_BE], false);
4c430774e01b06 Lorenzo Bianconi 2020-11-13  1159  	}
f8a667a9af9198 Felix Fietkau    2020-08-22  1160  
e57b7901469fc0 Ryder Lee        2020-04-25  1161  	/*
e57b7901469fc0 Ryder Lee        2020-04-25  1162  	 * TODO: MT_TX_FREE_LATENCY is msdu time from the TXD is queued into PLE,
e57b7901469fc0 Ryder Lee        2020-04-25  1163  	 * to the time ack is received or dropped by hw (air + hw queue time).
e57b7901469fc0 Ryder Lee        2020-04-25  1164  	 * Should avoid accessing WTBL to get Tx airtime, and use it instead.
e57b7901469fc0 Ryder Lee        2020-04-25  1165  	 */
e57b7901469fc0 Ryder Lee        2020-04-25  1166  	count = FIELD_GET(MT_TX_FREE_MSDU_CNT, le16_to_cpu(free->ctrl));
e57b7901469fc0 Ryder Lee        2020-04-25  1167  	for (i = 0; i < count; i++) {
e57b7901469fc0 Ryder Lee        2020-04-25  1168  		u32 msdu, info = le32_to_cpu(free->info[i]);
e57b7901469fc0 Ryder Lee        2020-04-25 @1169  		u8 stat;
e57b7901469fc0 Ryder Lee        2020-04-25  1170  
e57b7901469fc0 Ryder Lee        2020-04-25  1171  		/*
e57b7901469fc0 Ryder Lee        2020-04-25  1172  		 * 1'b1: new wcid pair.
e57b7901469fc0 Ryder Lee        2020-04-25  1173  		 * 1'b0: msdu_id with the same 'wcid pair' as above.
e57b7901469fc0 Ryder Lee        2020-04-25  1174  		 */
e57b7901469fc0 Ryder Lee        2020-04-25  1175  		if (info & MT_TX_FREE_PAIR) {
e57b7901469fc0 Ryder Lee        2020-04-25  1176  			struct mt7915_sta *msta;
1daf2522fa1604 Felix Fietkau    2020-07-26  1177  			struct mt7915_phy *phy;
e57b7901469fc0 Ryder Lee        2020-04-25  1178  			struct mt76_wcid *wcid;
e57b7901469fc0 Ryder Lee        2020-04-25  1179  			u16 idx;
e57b7901469fc0 Ryder Lee        2020-04-25  1180  
e57b7901469fc0 Ryder Lee        2020-04-25  1181  			count++;
e57b7901469fc0 Ryder Lee        2020-04-25  1182  			idx = FIELD_GET(MT_TX_FREE_WLAN_ID, info);
e57b7901469fc0 Ryder Lee        2020-04-25  1183  			wcid = rcu_dereference(dev->mt76.wcid[idx]);
e57b7901469fc0 Ryder Lee        2020-04-25  1184  			sta = wcid_to_sta(wcid);
e57b7901469fc0 Ryder Lee        2020-04-25  1185  			if (!sta)
e57b7901469fc0 Ryder Lee        2020-04-25  1186  				continue;
e57b7901469fc0 Ryder Lee        2020-04-25  1187  
e57b7901469fc0 Ryder Lee        2020-04-25  1188  			msta = container_of(wcid, struct mt7915_sta, wcid);
1daf2522fa1604 Felix Fietkau    2020-07-26  1189  			phy = msta->vif->phy;
1daf2522fa1604 Felix Fietkau    2020-07-26  1190  			spin_lock_bh(&dev->sta_poll_lock);
1daf2522fa1604 Felix Fietkau    2020-07-26  1191  			if (list_empty(&msta->stats_list))
1daf2522fa1604 Felix Fietkau    2020-07-26  1192  				list_add_tail(&msta->stats_list, &phy->stats_list);
1daf2522fa1604 Felix Fietkau    2020-07-26  1193  			if (list_empty(&msta->poll_list))
1daf2522fa1604 Felix Fietkau    2020-07-26  1194  				list_add_tail(&msta->poll_list, &dev->sta_poll_list);
1daf2522fa1604 Felix Fietkau    2020-07-26  1195  			spin_unlock_bh(&dev->sta_poll_lock);
6425791d350301 Felix Fietkau    2020-09-27  1196  			continue;
e57b7901469fc0 Ryder Lee        2020-04-25  1197  		}
e57b7901469fc0 Ryder Lee        2020-04-25  1198  
e57b7901469fc0 Ryder Lee        2020-04-25  1199  		msdu = FIELD_GET(MT_TX_FREE_MSDU_ID, info);
e57b7901469fc0 Ryder Lee        2020-04-25  1200  		stat = FIELD_GET(MT_TX_FREE_STATUS, info);
e57b7901469fc0 Ryder Lee        2020-04-25  1201  
d089692bc7938a Lorenzo Bianconi 2021-04-20  1202  		txwi = mt76_token_release(mdev, msdu, &wake);
e57b7901469fc0 Ryder Lee        2020-04-25  1203  		if (!txwi)
e57b7901469fc0 Ryder Lee        2020-04-25  1204  			continue;
e57b7901469fc0 Ryder Lee        2020-04-25  1205  
223fd4f8430810 Felix Fietkau    2021-05-07  1206  		mt7915_txwi_free(dev, txwi, sta, &free_list);
e57b7901469fc0 Ryder Lee        2020-04-25  1207  	}
0f1c443ca9cfa0 Felix Fietkau    2020-08-20  1208  
0f1c443ca9cfa0 Felix Fietkau    2020-08-20  1209  	mt7915_mac_sta_poll(dev);
5342758d5522db Felix Fietkau    2020-11-21  1210  
d089692bc7938a Lorenzo Bianconi 2021-04-20  1211  	if (wake)
d089692bc7938a Lorenzo Bianconi 2021-04-20  1212  		mt76_set_tx_blocked(&dev->mt76, false);
5342758d5522db Felix Fietkau    2020-11-21  1213  
781eef5b34c57d Felix Fietkau    2020-07-24  1214  	mt76_worker_schedule(&dev->mt76.tx_worker);
660915d052c606 Felix Fietkau    2020-09-01  1215  
660915d052c606 Felix Fietkau    2020-09-01  1216  	napi_consume_skb(skb, 1);
660915d052c606 Felix Fietkau    2020-09-01  1217  
660915d052c606 Felix Fietkau    2020-09-01  1218  	list_for_each_entry_safe(skb, tmp, &free_list, list) {
660915d052c606 Felix Fietkau    2020-09-01  1219  		skb_list_del_init(skb);
660915d052c606 Felix Fietkau    2020-09-01  1220  		napi_consume_skb(skb, 1);
660915d052c606 Felix Fietkau    2020-09-01  1221  	}
e57b7901469fc0 Ryder Lee        2020-04-25  1222  }
e57b7901469fc0 Ryder Lee        2020-04-25  1223  
338330bd26b1fe Felix Fietkau    2021-05-07  1224  void mt7915_queue_rx_skb(struct mt76_dev *mdev, enum mt76_rxq_id q,
338330bd26b1fe Felix Fietkau    2021-05-07  1225  			 struct sk_buff *skb)
338330bd26b1fe Felix Fietkau    2021-05-07  1226  {
338330bd26b1fe Felix Fietkau    2021-05-07  1227  	struct mt7915_dev *dev = container_of(mdev, struct mt7915_dev, mt76);
338330bd26b1fe Felix Fietkau    2021-05-07  1228  	__le32 *rxd = (__le32 *)skb->data;
338330bd26b1fe Felix Fietkau    2021-05-07  1229  	enum rx_pkt_type type;
338330bd26b1fe Felix Fietkau    2021-05-07  1230  
338330bd26b1fe Felix Fietkau    2021-05-07  1231  	type = FIELD_GET(MT_RXD0_PKT_TYPE, le32_to_cpu(rxd[0]));
338330bd26b1fe Felix Fietkau    2021-05-07  1232  
338330bd26b1fe Felix Fietkau    2021-05-07  1233  	switch (type) {
338330bd26b1fe Felix Fietkau    2021-05-07  1234  	case PKT_TYPE_TXRX_NOTIFY:
338330bd26b1fe Felix Fietkau    2021-05-07  1235  		mt7915_mac_tx_free(dev, skb);
338330bd26b1fe Felix Fietkau    2021-05-07  1236  		break;
338330bd26b1fe Felix Fietkau    2021-05-07  1237  	case PKT_TYPE_RX_EVENT:
338330bd26b1fe Felix Fietkau    2021-05-07  1238  		mt7915_mcu_rx_event(dev, skb);
338330bd26b1fe Felix Fietkau    2021-05-07  1239  		break;
338330bd26b1fe Felix Fietkau    2021-05-07  1240  	case PKT_TYPE_TXRXV:
338330bd26b1fe Felix Fietkau    2021-05-07  1241  		mt7915_mac_fill_rx_vector(dev, skb);
338330bd26b1fe Felix Fietkau    2021-05-07  1242  		break;
338330bd26b1fe Felix Fietkau    2021-05-07  1243  	case PKT_TYPE_NORMAL:
338330bd26b1fe Felix Fietkau    2021-05-07  1244  		if (!mt7915_mac_fill_rx(dev, skb)) {
338330bd26b1fe Felix Fietkau    2021-05-07  1245  			mt76_rx(&dev->mt76, q, skb);
338330bd26b1fe Felix Fietkau    2021-05-07  1246  			return;
338330bd26b1fe Felix Fietkau    2021-05-07  1247  		}
338330bd26b1fe Felix Fietkau    2021-05-07  1248  		fallthrough;
338330bd26b1fe Felix Fietkau    2021-05-07  1249  	default:
338330bd26b1fe Felix Fietkau    2021-05-07  1250  		dev_kfree_skb(skb);
338330bd26b1fe Felix Fietkau    2021-05-07  1251  		break;
338330bd26b1fe Felix Fietkau    2021-05-07  1252  	}
338330bd26b1fe Felix Fietkau    2021-05-07  1253  }
338330bd26b1fe Felix Fietkau    2021-05-07  1254  
d80e52c7b6c4d3 Felix Fietkau    2020-08-23  1255  void mt7915_tx_complete_skb(struct mt76_dev *mdev, struct mt76_queue_entry *e)
e57b7901469fc0 Ryder Lee        2020-04-25  1256  {
e57b7901469fc0 Ryder Lee        2020-04-25 @1257  	struct mt7915_dev *dev;
e57b7901469fc0 Ryder Lee        2020-04-25  1258  
e57b7901469fc0 Ryder Lee        2020-04-25  1259  	if (!e->txwi) {
e57b7901469fc0 Ryder Lee        2020-04-25  1260  		dev_kfree_skb_any(e->skb);
e57b7901469fc0 Ryder Lee        2020-04-25  1261  		return;
e57b7901469fc0 Ryder Lee        2020-04-25  1262  	}
e57b7901469fc0 Ryder Lee        2020-04-25  1263  
e57b7901469fc0 Ryder Lee        2020-04-25  1264  	dev = container_of(mdev, struct mt7915_dev, mt76);
e57b7901469fc0 Ryder Lee        2020-04-25  1265  
e57b7901469fc0 Ryder Lee        2020-04-25  1266  	/* error path */
e57b7901469fc0 Ryder Lee        2020-04-25  1267  	if (e->skb == DMA_DUMMY_DATA) {
e57b7901469fc0 Ryder Lee        2020-04-25  1268  		struct mt76_txwi_cache *t;
e57b7901469fc0 Ryder Lee        2020-04-25  1269  		struct mt7915_txp *txp;
e57b7901469fc0 Ryder Lee        2020-04-25  1270  
e57b7901469fc0 Ryder Lee        2020-04-25  1271  		txp = mt7915_txwi_to_txp(mdev, e->txwi);
d089692bc7938a Lorenzo Bianconi 2021-04-20  1272  		t = mt76_token_put(mdev, le16_to_cpu(txp->token));
e57b7901469fc0 Ryder Lee        2020-04-25  1273  		e->skb = t ? t->skb : NULL;
e57b7901469fc0 Ryder Lee        2020-04-25  1274  	}
e57b7901469fc0 Ryder Lee        2020-04-25  1275  
223fd4f8430810 Felix Fietkau    2021-05-07  1276  	if (e->skb)
223fd4f8430810 Felix Fietkau    2021-05-07  1277  		mt76_tx_complete_skb(mdev, e->wcid, e->skb);
e57b7901469fc0 Ryder Lee        2020-04-25  1278  }
e57b7901469fc0 Ryder Lee        2020-04-25  1279  

:::::: The code at line 1169 was first introduced by commit
:::::: e57b7901469fc0b021930b83a8094baaf3d81b09 mt76: add mac80211 driver for MT7915 PCIe-based chipsets

:::::: TO: Ryder Lee <ryder.lee@mediatek.com>
:::::: CC: Felix Fietkau <nbd@nbd.name>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106192002.O0jzWMW9-lkp%40intel.com.

--6TrnltStXW4iwmi0
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICCLbzWAAAy5jb25maWcAlDzLdts4svv+Cp30pnvRHb/izp05XoAkKCEiCQYA9fCGR7Hl
jO/4kZHlnuTvbxUAkgAIuvt6YVtVhXe9UdDPP/08I6/H58fd8f5m9/DwY/Z1/7Q/7I7729nd
/cP+n7OMzyquZjRj6ncgLu6fXr+///7xsr28mH34/fT895PfDjfns+X+8LR/mKXPT3f3X1+h
g/vnp59+/inlVc7mbZq2Kyok41Wr6EZdvbt52D19nf25P7wA3Qx7+f1k9svX++M/3r+H34/3
h8Pz4f3Dw5+P7bfD8//ub46z29Mvu7uzj//z4eLyjz/OP+y+nF7cXXw5vzj9cHezPzu5uDm5
ufm4/+Pu13fdqPNh2KsTZypMtmlBqvnVjx6IH3va0/MT+OlwRGKDedUM5ADqaM/OP5ycdfAi
G48HMGheFNnQvHDo/LFgcimp2oJVS2dyA7CViiiWergFzIbIsp1zxScRLW9U3agonlXQNXVQ
vJJKNKniQg5QJj63ay6ceSUNKzLFStoqkhS0lVw4A6iFoATWXuUcfgGJxKbAEj/P5prFHmYv
++Prt4FJEsGXtGqBR2RZOwNXTLW0WrVEwNaxkqmr87NhrmXNYGxFpTN2Q2rWLmB4KgJMwVNS
dHv/7p23lFaSQjnABVnRdklFRYt2fs2cKbmYBDBncVRxXZI4ZnM91YJPIS7iiGupkLN+nlmc
M9/Z/cvs6fmI2zzC61m/RYBzfwu/uXaxYVsemRIs4a0OcSGRLjOak6ZQmgucs+nACy5VRUp6
9e6Xp+en/SD7ck2cA5NbuWJ1OgLg31QVA7zmkm3a8nNDGxqHjpqsiUoXbdeiX1YquJRtSUsu
ti1RiqSLyPIaSQuWOJqlAT0bnDQR0L9G4NCkKALyAaqlCwR19vL65eXHy3H/OEjXnFZUsFTL
cS144izPRckFX7vjiwygErazFVTSKou3SheueCAk4yVhlQ+TrIwRtQtGBS5y62NzIhXlbEDD
dKqsoK5W6iZRSoZtJhGj+bizL4kScL6wh6AdQOvFqXD9YgXqFxRUyTMaTJaLlGZW6zHXtsia
CEnt7Hr2cHvOaNLMc+lLx/7pdvZ8F5zmYK94upS8gTEN/2XcGVEzjEuihedHrPGKFCwjirYF
bHabbtMiwhdax69GzNehdX90RSsVORgHiQqeZClx9XGMrASWINmnJkpXctk2NU45kBIjo2nd
6OkKqS1OZ7G0YKj7R/A3YrIBJnUJdocC87vCd93WMCjPtMHtT67iiGHAiBF5hj/o4LRKkHRp
2GDQCAHO8EykEz2CMw82XyD32YXpLi13jJbUG7Q6D/aHAqj95PKBZpM1qVSvTQcSvWHw0dut
fiVIZ9khMv3RQBbQD8Mrdw3+KMMgtaC0rBXsRkWjhqMjWPGiqRQR28hcLI2jym2jlEObEZjx
akyabcHCaB4we1A379Xu5d+zI2z+bAeLeDnuji+z3c3N8+vT8f7p68BYKyaU5kmS6gEDjtB8
56Mja4h0gvLg6x8to/FREpmhxk8p2COgUNHNRGlB51LGt1qyqHb6G3vRSwYsgEleELvJei9F
2sxkRB5h51vAjc/CA8KHlm5ARp2DlB6F7igA4UJ1U6tTIqgRqMloDI6STMdzgn0sCnRNS5ed
EFNRsBGSztOkYK56Q1xOKnDSry4vxsC2oCS/OnMRCedhBxoEQlaQ7dUHiCn609Mj8zTBM4jw
V7CWVvvtZeLKqH9OvtecsOrM2US2NP+MIZoJXcZkS+Ojy8ikCo79g5pZsFxdnZ0MjMAqBXEQ
yWlAc3ru6bsGghgTlqQL2HRtYDq2kzf/2t++PuwPs7v97vh62L9osF1sBOupTNnUNYQ6sq2a
krQJgdgx9Sz+oFgTtM0welOVpG5VkbR50cjFKAyDNZ2efQx66McJselc8KZ2jG1N5tRoNOo4
L+B7pvPgY+AXG9gS/jjauljaEcIR27VgiiYkXY4wepMHaE6YaKOYNAc/ANy4NcuUsw+g4eLk
BlqzTHqm1IBFNhGkWHwO4n9NxVskGV2xqBG2eBAZ1JnjGVGRj4Alk2lkmtq/iwwhebrsaYgi
npcBQQ14jqC0Y3Nb0HRZc+AL9AvAY/UiD8PwpFFcdx1dPVhvOIiMgl4Fl5fGIi+hFYnHFrBZ
2pcUzgnpz6SE3oxL6QRpIgviZgB04fKgnLJRrDlg3DhZE/Lg84X32QbD3Yw5RzvvKyMQOA52
vmTXFP0vfY5clCDCfvQWkEn4J6alspaLGsISEHfh6PowRjSfwVilVDsZRtuGHmwq6yXMCEwk
TmnAhjauBCeKQeQovFOfU1WiyzvtmJlDH/nxuQmr3M6MM238zahXhUrYtc5aKVclc7NDzq6P
lzZ4JwSCo7yJTjhvwGF2JoofQRc4O1NzdyWSzStS5A4P6CW4AB1juAC58LQfYV7ugvG2EXG3
jGQrJmm3nY42hv4SIgRzdfESSbalHENa7yx6qN4WFEHFVt7R4LlrNzqPCa02HGhRhknADCsI
nIyS6IZJ3QwbhKdebKr1lYZGdQf0TLMsqjMMH8ME2zAerNPTk4vO/tpkcb0/3D0fHndPN/sZ
/XP/BI4jAROcousIYc3gD/o9BvPUSNiVdlXqCD7qqP7NEXuXuzTDdUbVWYgsmsSM7CgVXtYE
rL2ONQeJLEgSk0LowCfjcTKSwCkKsOw2bgr71uYN/chWgADzcqqTngyzOeDzeszf5Dn4SNqB
iOQ/gLkVLbVxwow1y1na+e9OGMZzVsRlRKs5bai8sNVPAHfElxeJGzVu9B2D99m1OiZFjbo0
oynPXGEzue5W63V19W7/cHd58dv3j5e/XV70tgndQTB/nZPlLFmBf2Oc4RGuLN1LABS1Ev06
UaEXbDIXV2cf3yIgGyd57RN0TNR1NNGPRwbdnV6GORImSZu5mecO4fGsA+z1TKuPymN3MzjZ
diaqzbN03AloQJYIzCNlvtfQ6yMM/3CYTQQH7AODtvUcWClMfkqqjLdlImCITQYCHU11KK2V
oCuBeaxF416geHSa1aNkZj4soaIyWT6wgpIlbkbM+uWypnASE2jt+OuNIUW7aMAsF06C95pX
FE/n3Lkz0Flc3dg1BBK8CrkgGV+3PM9hH65Ovt/ewc/NSf8Tjxcand91DjEHY06JKLYp5i5d
c1fPTZBUgLoDG9bHnjYugTlQIxF4NDQ1ykHr8PrwfLN/eXk+zI4/vpnY3wmmgtV6qqusI5oC
pT2nRDWCGt/XVwSbM1K7oTrCylpnVh1u5EWWMx1eDe4lVeAjsIkUEnZjOBP8M1FM0tCNghNH
LrIezCQlyk/RFrWM+U1IQMqhFxt9OGqNyxxCb3b1GEJ6kxO4+bwE1snBAe+FN2aWt8D94K2A
IztvvPsw2EGC+SVPoVvYZNyCy1isUOgLDAbBMljGGHaCVrHrITCrwfgmVV03mE4FjiuU79DV
q8V4rpFcV0jRRfsW/omwYsHRR+iG72dKUlEZaPRIy+XHOLyWaRyBjlb8Zg2MUdRI90q0bnwG
18dZgW2DrYbDtnmOS5ekOJ3GKRkIDDh9m3QxD4wq5tRXgWRBUFc2pRaNnJSs2DppKSTQnAER
TSkds8tAqWkZbr3YB+lX5WZKum1mEmMsWlAv0obRQacZkfKCM4sAUYqH9ha/2M55jA87fAoe
HmnEeMTrBeEb97ZoUVPDdh6XZyWL9F5pOyPRKQNLk9A5dHQaR+J92gjVeXshYgDADAu0tf61
jmYHvN5ux6oSwpgxUFABnpKJb+3duw6Z8cLPE2bkCD9HYiyA40w/Pj/dH58PJvk9aJLBb7eK
salQPmIh5YhUkLoY9OAYn2K6mgJF71ZOTMhfyekluE4TSq274wJnoukT1d421gX+om50zj4u
9SQ6KWcpcDQI7aSJAKGZGF8rQrczBH7QtnmiRcYEyEw7T9CtGZ1aWhNTMSIVS2MGyfgN2oyC
WwD8SCLuTo8e4hAPr8W2u+nGm1FH+FlR0DmwpLVNeN/YUHRk9rvbk5OxI4OzrnEsbJZuRwYy
wA/8oZeLaTHwjLnEcFc0dRiqIBGyONqJspvxQGo6mNhpc/2LSee1owxLJdyMK3xCn4kpdk0n
4Xab++08mSDDjcccgNYAg1bwVgOhwNSxmqDQ3zpZ6uyv10VTsimHzAia3SfrAeI+Lel2xGuG
VsmNZgF0Wd/sdCAcnVBAgInMSVmS801kGJq7OaKcgRA0iQ8p2cYNhBfX7enJiTsTgJx9OIkO
DKjzk0kU9HMS88Gur04HPjfO20LgDaA76pJuaBpznRCOgVIoneilG2TdiDlG79tRf5gXixtK
QeSizZqoR14vtpKhOQENIjD4OPVFFaI5TBdYjTE43JrtMG+KKay3+oWYcV5Bv2det1bwA1Xs
DRGSbHhVbKMLDCkn75LTMsMgAbVDTNUCI7J82xaZGqdPdZhaQPRc42WPm+Z4K0QaHSLJsrZT
4i6uXNQogRj+m+ANZbFX1MYQP/93f5iB3dt93T/un456JJLWbPb8DeswnYBsFOOaGzgvrjDh
bYyFbTvau/7OZJ1Oo8BWVqTGAgvU6Y77VwJ/4cpBFJRflIeogtLaI0Zt0EEHP6OEqHtJdV1L
jOPKgHgqsAFUWiy98Trn3NQPOetdfwajtkZtnucsZXQoo3irfWRFIQXPAw7o43o8Ugc3+tSx
u5ZJCZaKL91LPMNObL5Qtq4Mm9RuOkdDbM7PLE77WNLJhDmBU22D0vnEDZvprU6FmVDMTiFF
XmcqXEfNQtDozDVU0FXLV1QIltE+HzM1EChCW2nlulgaRWI6V2MSosBvcRwNA22UAl4Nu4Fo
dGs3zlBM9bqC+fJghTmpAogi2XjHedRD0TgdrgkKjCll0NUQZVm3eQrNsmISOVovq0s2ffRD
p2Q+BzcGjdPU1NUCfGpSBNvc50lMjjlm++xGoT/V1HNBsnD2IS7CwFOTqlPkOx6yIvyvQFJd
B0/DQbfVRYMpGxtrBZKQRD1w3dJ1RcwYjVQcXVS14Nlo35O5iKcrrFBkDdYiYrp/jS7kpHnU
5PBfzIccVASpqaNofLh/5+eSBwKGtPMFjZcXDSSUVZ+mdskQCGkTU6NdyWqVT3dv/g+rLHs1
zPDCF5iURYXWhB19BqCrA5vlh/1/XvdPNz9mLze7hyD67cRxqnIq0rrvmN0+7J3nE1g7FVzR
drB2zldtAd5DNPPnUZXUfcTgoRTlk513abkokxhUl8JzvZ9+GX0sqP36kOyvnRdTi/j60gFm
v4BgzvbHm99/da4IQVZNMOwYV4CVpfngXuLgP5jXOj3xUsVInlbJ2Qms+3PDREzP4t1K0rjP
IsxlC6ZXglBrK3OvhmpiBWZ190+7w48ZfXx92HUe23AHjXm1PiMxGQptzs+inDbuW3ee3x8e
/7s77GfZ4f5P77aVgMKVaakVuOIpd+vNe5Q2cmFRtUHXXstBCnuk0zYWvGXudT14xRBKulcZ
otRKzfjEDmLdprmtcRjMiAvtnHx3UqoB30GCf79pxVrFsrNJWl78sdm01UoQv3DBIiQsNprW
5Xxe0H7C7jWFRmAiTOfblJ90sWgszeKV5AUdVjNC9Z2MaFZ11ikqCHdnv9Dvx/3Ty/2Xh/1w
8gwvve92N/tfZ/L127fnw3FgAoyRV8S9CUQIle51aEcD/oauQXIUcoDqS38zkJe4i4YtBCb0
S1ign6VAVA7+vT3zv2i8FqSuaTjzzsvGTICtYeqDvoKHMRC2wG01GG3xRTQwRMIU4pqmcLpx
cPr1kWuo6hqv2wXmEBWLFndhokmZFyNLcNcVm4+u3PVyU3Y26Vgjgd1qoxntFZxVCf8fjuiT
znqptbvAHuTfzWtGsbeN4aytXyMlRNLouBdk6+2BKdTffz3sZnfdpG61gnIrNCcIOvRItXm+
y3LlJMXwtqghBbse7TGQxRwR8DhXmw+n7u2txGva07ZiIezsw2UIVTVpZB+4d3UQu8PNv+6P
+xtMDfx2u/8G60BLOIreTb4mKOXRGR4f1jE7BKVBOsjcDEdtyKemxHuFhMavQc3LQx35Y8o3
V8GVmbvFQ0jcVDrLg/WIKQYDgQePV3JYRQyBU5v4pam6IwbLwsxHpDBgGV5yGyje98YQvI7D
bTeYW8ljRXl5U5mcJwSZGB5Vn0wONCDz3ODh1ZbucQFxeIBEjwGVCps3vIm8mpFwFNr/Mu+J
InEPhEUKU1K26HJMgErEZIsmkPbqoBxtupm5eb5pqmza9YIp6pes97UOsnsgYV7cmBZhl7LE
HJp9eBmeAbjdIFZVZioNLKf4HpWhM3Vq0ePBx6GTDRfrNoHlmJLZAKcTwQ5a6ukERFh0h6UE
jajaisPGe8V9YdVbhBswFsP0lK4GNoUUQQnx0Elk/K7GTdgtwpRt7NQGGX4b61YW9m5x04Kl
WVCbrtFlY1E0vhGIkVjuMtJgKvTtjXM4GasSLHNh1jOgsO3MfeYELuON5zcN65Q0xSqpN1C2
5GigGDUZEQ6K0GLMvftUAsEZEk+sAPYK5jMqqxkU7d+A4+bx0aODPlVYKB6+cZ8gAEl3XXiE
Y5Y8tnlrhrSWBXXNScin6fj521toXdikvPcEmu4vXzwZ4xB99uTJNkfZabIouAzBncau9MUb
GC8s3oow5yRdZCgjE4DH6tQwF6srxTQSJoMOg4izM8+1tlbb0Tqy7oqWplib6YgrzxrMAaOB
BWOt5T2yfXTD8DmeeZ0bOQgcGnFAwtdVSNKbEz1Cd+8TW4JXBRkQ6DlE7ZzfaiisHMSne786
NsiwYGae//T1nH7QDlG8bylsYeX5WcJMrUdsIXiK4TbEYEOL4T5saaZsi/l60gmCidt2bb0V
+Aiqezgv1htXSUyiwuaGRaLNY6hhRTXs7flZd//n2/PeqwPXI+a6oQ10S6vDprZ0HTzXVGzr
UTHo4INOY0bfZ2Es6Ogx50gSpx5z+IrTFp2DuOt66bg0oDtuGar39VO++u3L7mV/O/u3KUb/
dni+uw+Thkhmj++t8n5NZrPi9gXBUF39xkjenuD3o2DG2txrjaqz/yIq6fkX+AUfZrjGQL9e
kFiPP1QtWZUU6ijzCloHzyNUU0XBpkWPHEpvBg8zXoBnmkuRdl9GE7yTGVGymGm3SDxegf6m
NZdh4x4/+V0cIaH/nRqTZOE3ZYSEyJdrfIsm0W72D8laVmoOjq9Ih0FYTrK4evf+5cv90/vH
51vgmy/7d8EBmke14eVi4ldc4msxmUq8jPjsV3wOzwtBv6DY+ih8YpbIeRRoviljSMD1L9IU
nQumYu+/OxosRM7GnYLZ4UoV4YPpERarfiZ675JIukpK+EOsk/jCGT6DBhW3DUft8SmfKEi1
3bZl/G2OmTpqqDx20PpYsGq4dt1qhBql2endIBcSJWhzWwQwLgzcHY73qCRm6sc3txy8v+XH
x1P45M679uIQXA11AN4Nkodq06YkVfzhZ0hKqeSxCqGQjqVyciow2Vy+NR+d0FY0XhAcEgsm
U7aJk7LNQBilwGLwKEXXQ8nmZGITFRHsL7ovSfpm96XMuPS67xhEZphvXAahJ9YRb8B0JtEZ
4ZcBYPLd1LFNj9pAJzrl744wlPhk5Zut5ZzFNwR8KzG14V3bpoqtdklEObHLmON8e4/xm4cu
P745rKNSnBG6+7JAuFwhLj9jttcXbIBhOMW4D9Y1Meb7gvjw4t2RVWjHuClTy8A1910qB7nc
JlR47xU0OMmdVA18aDvN1j3wHpQLIKceSg9fg+NNsmd3WZ0OowCfGB0la4hS0T0YBStDKY3i
mLES5TqgQN9Vf5dTprvRJUXTJGIdI0AHrcKQSSe46xoNCMkybby1KY455d0jzTahOf7BbI//
NUMOralmszcdA4V9796dLP2+/z/OnmQ5bhzZX1H4NBMx87oWqVR18AEEwSIsLhDBqqJ8Ybgl
dbdiJMthyTPd7+sfEuCCJVGeeId2qzITO5hI5Ib7H+9fQMMPufwutHP0u7XGCa+ysgWBda5j
kF6txTNEkjZcOB5AAwKC3nGfuho8EUqBLmisb7rj5ePL6/e/LsrZKByows96Hc8uy+qgOBAM
gxGzTok29r1vRh0HFzzfQzqg8PWTkFZpf3BTLkCP7VQo9voOvsED1eBS4kiXDgZjWqJQF1jR
6quWDhy4xFoYyCAaqXW/FH1v8ZTcWr3RMPh4HDWLOm8abxhU67V773YEXp/6I+hbP9DTxPTU
rl0d9I2hpvVGWgs32hT1wpikUWnz8XKx21j2XURNE7tXGWV2mwsvSYYTPnhjdYAWTAkxoAa0
P0E1fLc8tWMx1Y8gengEuVIGgLXdGj0hiI6FlB+vnZ1h6YqQUp/dfumf07WibmYjLct8l9so
bfEZd86OFthe4tFRZ1rA8waeK5DjHClaJJJ8MEb/8cPD42/PX97V3cir+7Oo62KuNjnEq/VI
11ldpOGUe1QyjHGPk3/88L/r316fHz64NE4arhED5ZzWI11Huhnt0mSGBGPwaMuzy2oTl2Yt
o0b4nM7DKNzNCe/oGScKoQOQXU1rXqpTgIPxztPYicznverIlSbbmiLo1Tewx0524Uc/KNag
A8ei2bMU/+8j5lKn61qNa59W5SA86A+6z1nh+jXcwDA8Ewmvx1K20Bg/UGcm19ocDxJu7hvH
YAtANsL0MV09vv/n9fu/nr7+Hp7P6gS5YV5YKUDUWAi2yiDkO6JcB45GHgTK2t4UbYFPeJc1
pRagUCwMRK0h5t1VuV3mwuRagZyFaFWKYLzJ9jqYDvPBU0SistNj6t99mlPhNQZgHZ8UawwI
GtLgeL1qIqJrMsi9dsUpD9iV2FD07aGq3BuWEk0VD6xveMRxwBQ8trgrMGCz+nAONzeLNwDL
0pM8jmMyMmOma8DAI6s9D9cG6n3mgloqRrBb/SEVwZ52KRpy+gkFYNW6gEkPd9SF1tWf+2m3
IcOZaOghsRXcI7sf8R8/3P/49en+g1t7mV7h2k61sht3mx43w14HpTrucauJTAIlCD3sU4Jr
LGH0m3NLuzm7thtkcd0+lFxs4lhvz9ooydtg1ArWbxps7jW6StVNqId47fZOsKC02Wlnugqc
BrzDTPjGGUI9+3G8ZPtNX5x+1p4my0uCi0pmmUVxviK1BnGPoVKojYUzGkjLCob0kjQ37gkj
WgF2aSl5dudgdBF1i9CmOXXWlsLT2ioaY6zHFaPiDFLxn5TSKNeVNMKRmxRfJrWOaEBJ6ziQ
qp9qqBF+DciCRKLVAJk0q80Wl4yLVaS/ScPTPV6lZkMSV6oeVUf67WK1xHXOKaOqNDLeonCi
INTPFTorxI65AsW79pLU4EmvVLSC2kc/rQV2MeIiTYWljYKfoLO2JcJudWXVS0RiRZnntScC
bIr6JAimpeOMMZiUKyudwgzrq2L4Q2dvU3u2aolzrFq0kAgQnUH1dQ5NvNgfyahD01LY7Y/H
H49KBvtlUJA5CWgH6p4mt+53BsC8TRBgJmnQmr91R7BoeI1/4RqtWdptWFtjK/5HILjLB5Qy
Q4q37LYIy7dJZm+QeeRxqQXwLBI0MlVL/EEGJEqqwo+3kSCVwOjOTJT6v62Smso1TTj68hY6
hK2GvEl+siA0r29YWOVthuwOqnVqAS1oawdMONfkBs1nPRVFtlueoRuLn6tovpuEBQtfgxys
9/n9MIhLgVGLPn95e3v67enee9oEytHCuycpANjAvcThA6KlvEoZbgIaafQRfxmZAiDITmGL
h/VqXq8BMHoZzoxzgJ/ZkboD8ijCFgC68Vdedwc3kI5oP5/sNEd2mnK7LtZgrZQQYY3nttTX
gHKIwA5gg3vOnHrNQkEqxBcEXiV3rg7Mwh3W2ElmEZSsJWhH9PM3GIKSSuf+8IZMaOv3gYDP
ZF3gaWtHgj0UnINCdJmm9vg9QEE3wlJ/tgEjlYxVxKUFIKkIfi+eugnPBp3ppeT+5GvoTQLl
sD5RecDc8qfBiEKG9YH8EkJh72FNl3UazhLPGNYdIxpHtAnzUrRBYVWfbiv+EQ4Umte/IIiB
i/gVtxSQYMo4x4h55hwgKcUyUKYV+ELLGt7Lcew+Shgg2oSP26gFq47yxFuKX+uORtrBpDe4
TsArR4OeZ7pHFAGrB1i/l/i5rJHAQT2FolNDJfHu5TKuNTKjUhJqlKJYKyYl4W7sUQ00t03r
cDb43csSu1NqlNpg/gpXVGK31sGEqu9QjW3ttRDmYuVt76YDywvErdtedcnt9KDMoOa7eH98
e/e81XRrN+2e4bZufaloatGXdcW96O9JNxlU7yFs9aK1TKRsSIoKO9T+2uHlrIacnKuDAiUU
YyOA2Qe0n5a79Q63cCosl56+zsyPujKkj/9+ukfiK6HU0XTSqenYUfSiAThZBKOCNBpeDZQU
FJxlQe+C6tKBiLS7pVtTVrAuqH7fIF38RKrPPVd/rSOV3xwJRCkIylmW+qXlobpEt67CdZBC
tvOaFOZcjM49PY+l19dYJh69ajpur8pSd9BluHk0SLtVeKMZEEhCSItIMHIzz4Y9F58I5NPx
K2WlBPJIbQZbUk68BdwuNwtvUeeV8NsY+3S+y0Mrbsmi8wu6C2wGBf7VsX08UEyZwP0tAg7n
Ea5tNj34tpmsYPiDSciXZx1dkbQJmeKCjYg4cGWQLhsZz4k3rHBMJCOkd4S8E4Q8uD4VGjQ8
h2GDpLgLiLiVLYdme9AHWE4vRs2w1PYl111kpIXZYgUEnGq/ZjW7rpl5JKMQkTomeO7r6oAa
nkdq8OtUo9Up18H4wfZpgrQNvjKjMzqQBKnDrF4aNTWq1rGoRjt50P0mJWHG5gl9cpZk0Kss
Q4g2xjUUQTQUnAxk2zgebhZ28kf4b6g+fnh5+vr2/v3xuf/j3dLFT6Qlk9iDcRO+YKlEWggm
yK5QjqZW14fDKetliZiQVe371U8oJR8mtWRhitq57aJEQqVCOnVN+2/IciQ3bUgFL97EwrMm
Ip5I6TtkTEghz4ypTQv533TDzOqYSP5cX2D0OUT4lqQzJm77EZ/shkdvvjvvbr0Ts9OfI43t
4q+RUMIz+wjhWeCoAjBVSyB5cAhOTHCmzUTeFxxHVhnOckV49XQvQHbzmIFivMFAkm/XP0cJ
w6pPha+wGSOaPbAaqfsWqwnzqu2cGBnhBXj6OekP2rwFR4zhQhOIhzHR0AREqeNzrn74NVcN
wUvHIoGTISLlaRII+w9rGgPe1fWoboNqdawAUuGQ+93yLPV/hPnRQOgBXmy8uiyRjjMSMcNo
nBTYWQsoSPzp1t+LtnS7UUoeAND3HwGnk7z4vYsnh6MQzaB9XUYfOkhG51bpJpoECDyVFwCJ
+zQG5CYj3kjAJ0/LEgbmIo0hRyeFcRFcp3J2xqP2SWQ0gjiXQd2q714NQJM+PLpkOpROfYNB
0s+QClGuhkQQORzbAoCPPNlj4Vmzgn/w+/2QpcuTY03ggoLdv359//76DM9/Pfifp1460qRH
4r70oZs2N5i+OuHWUCibterfZSR1KBBAIAsmOusG1IWs0Q/euksGkPmxOXfhADV4YcXn3HQ8
1uowLCq8/dlBvQho+ASdfhzXisFGUsVpvDoYldgZUTbqbhAw3kamxoyzzQ8VJGsRrETnYcTD
pxadYvXRuW/ZOmAz+y8OrmQpJy27iYBh+tcz7limHmHS0FK2iQMdvjiTAD4Dh/EXd0BFXSsx
Hg0eMK3rJNRTj/8aT523p9+/niAzCux0+qr+CBL/6PLpyZuB9DTW5PLKhkAKpDwWrTSWhete
QGWzv+6uqgNOzMsOd97Q1Up1UW2W6w43pEB5uGu08ALFuf4plnenth8lIrr7+pyjKjfdjVta
l95kQXiIuoxsQx5BmlYwuvnJhJlEaXvMoKLxN7zh/rfOdCfVUYNpcvVByGRdeR3V7Ga5u/S2
5AjGtvuh4iLnrkJ4+EBj3c0O15cmtfJwRT+3D43//+uvivM+PQP68dw+LeuEHxkvvHGN4JBb
WjjYkx5u3grw2V7afT7TJaPw+/LwCHnnNXo+Q+BtXqzjlKSsor44M0Cxbo8opNc2CjkfPl2v
lgwBzR/0qDn56RCmGCT8nJzOUPb14dvr09d35y0A+MyrVOdYQRU3TsGpqrf/PL3f//HTU1me
BuV8y6g9pvNVTBebrug9ORVAJcMPCnUOO1zcVciZ3zqguafcrVQVTA5hwitB/3n/5fvDxa/f
nx5+twMm78BrxGb+GtDXuAu9QaqzvsY0BwbbWvLxAKllzhPnjiHSzfVqh9TBt6vFbmWPFYYE
wU4mAH+uuyGCp7YZYgD0reRq981VjHDtPAe+XfAI7tq++A4Eg8zddH3b9UEkc0AeE+Pn6g7l
YKN/CUvTvIxolkcKHUzdU8/MY141/vLt6QEi1szGCzasNRVX1104FVTIvkPgQL/Zot1VJRTH
wozSI0nTSSOLWF9HpKNzbrKn++GOelH7Dt4Hk8XBOKXPy+yAh3jyKf5ATVZbCjfMZYQpxnyo
MPlA7awqJYUXZC8a09CUD1I/RhwsxZQK7vlVcbfvc/ezU5CvbwLpW34KTwtbl+eubciczPGD
pbKby+kMTWboyEBmujGixGl7VFSEaeyGvk96YfNk+3EKsJurMaH/OM6DWgugVeqNOhWxXk8a
94bJsBjoTIay6nIMiXWQKjQR0RGOA6nONmC5J8wvIOk7tUH/haGPhwJeVkvUrQTyJ85EsqZu
BFnD9k4giPndc/ux6gF2svmRAZWlw7yGss1tAJOUJkFpvrZ86CDZm07uo7dUZm85QGX68B4z
1LhZOMLvb0qG+6BVSE6iWMiwapIhQKrtvsBfKUvaZU8ErpDTuA6TdUG6LNTJUvWFsCYQpN+e
Jdx50he8OiCwp+wT1IiQSXW2Uv/EHaAHArmyjR4fV6zm3K/XybE7Tsx0uNdVZVJpWYxzX8lI
jhA0ECxtrTHXjj9VnYFM3EbiexQWInXTNpF2BRBc1LZO9jQFvKmTTw4gSFYD1ZlAYgfm7Ms6
c4N56mz04nBgQ/ZNi3d4zwMInQvANafEAL2w9vsIU8yQE8dPcKbWLij4DWimUbuA4f6MFlEg
fg0o0m2317sN1vxytcVc60Z0VevxzGO0g3d05M5gJ9H2lCkaSnx/fX+9f312czdLokpgjVXC
fcBhSDpib60xD0l1UFtI/UCqGUkc83La1K4KhMD7CPgHP5SHi4SUqdr+XKxXHaYNGkmLuhZB
tzVUB+FqQ8f8eOmI11lDal32JWw+bRLcg3aagp/gZbc90+WGlGGP4Qko09n5CVUbpw0wbjSx
nllweKHpEX19GWRzON+Y/ba9scRA3dji/mzkjXRXw7jkHEsWXokBagzNyBTrIqgRBkqZ4BMl
rcVJ8lOJKpw0MiNJAzlUXrxCGRYHoTEtafZOzOEM7IdtgmAyGjQxYFo/fmP0IrKnymgXnt7u
reNzPLRYJetG9gWX6+K4WLlPb6RXq6uuV7dXjMkriaq8c5kwT0pIeup8hbmS22r8TG55VvaR
l/HUtO7WK3mpHTzmHrUlK3opsflVAkVRS3hrEZ4sA08Jx1wnr67WV32Z7QWawFdJL4XlcqhP
eKpu7WA1c1zXAAH5DaKOEyKVu+1iRQo0UkMWq91isbanyMBWuH58XKBWEV1dYY49I0WSL6+v
F5ZoOMB1h3YL62aVl3SzvrIutKlcbrZWcmfwQBK5bb6RDjNJT32nX8cGBurqcEdlx5gDfEAN
+nSZZsz2MoDbr7rSWn2jK8+VQf9Wm011gDT9ankF3kMm0QfTOegDVZOBq72ysmJUBqD/gN4A
Lkm32V5fBfDdmnabAMrTtt/ucsFkFzTA2HKxcHRoXjengSXXy4XnIGNgvv15BqqPS6p7zJh9
cEgb/ueXtwsOXhU/XvTb7m9/qOvTw8X79y9f36DJi+enr48XD+r7f/oGf84z1YLq1H5L8v9R
WbhVgZfAhQM7KrQ9Ay639iuX44N7jgVlAvYlyh8mdNsxvFyeRoLbjubufCxRbzB17zrduvcw
9Xt+lcekxG4YhTPvbn7HkNHcYiAJLfujnRpO/+5bO52p3v6koPXosOZ/Fi44JwmpSE8s0AGS
Pzvs9ihI5Zu9RmWufQLMlUJSVNuDCn4MX5h4fvzy9qhqebxIX+/1jtBxIL88PTzCf//z/e0d
cthc/PH4/O2Xp6+/vV68fr0AqUsrVaxzBl6q6tQlsHe9tQBs3DalC1TMRXBMcACkVFhsSyjU
3pIIzW+oytkfE1Rgq2+1Qy2nehucRsCTR5DeITKUvRSVapWhxQex2OmmzizOa9piRgb99lej
rv/ZxApg4u//ePqmqEZ288uvP37/7elPfykG3QImMZ1x7Zyk2jLdXC6wwgajDoE8iNfGVhK/
JFgEWomgH0KZVOPWIBEzg105RTdQnWVJTdB45pFknh2/rGK9m9USG3nzOfICpjeaSK8Io5vz
FxBS8OVVtw47Rcr0+tJWnE6IlvNOhHC9SAh923DwiUbXVUlPq3Oj0+LVIqwzF+16swnhn7St
tsLaknS5OjuTQg0LK8jb7fIaUwZbBKslMoMajlZZye315fLqXGdSulqoleshQQz2OY34isVy
aepBH083Ep0NzksSiV6eadTsLzHn9ImioLsF22ywFtqmVOLn2QaOnGxXtDu7P1u63dCF7Y/t
7vzxG4b8qMMpFH6+OnmqCUWytP0c2HWLehFCAUtKheKpnXhKQzw2qXswNG3eKP2bkmf+9Y+L
9y/fHv9xQdN/Knnt77Y+Y5rGyMvreWPQ2M1iKmu/uD4WsOJ9Jpgdy6e7P11s7NXTGKotUFXE
JqRJinq/x/3lNFrq2AhQUjuz047i3pu3NhJepIO1cDSfgMno2UVStxz4dyzr1AnPy0TgBU/U
/xCEdm6Rrk7fIBsRdmSSgfzRBbN1Ct4ddynSPF6vt6vtaysmr5QpdhKgUVGJMZPYX+/5hxgG
9LBxAl/fAW2sE/D+n7rPBm8BTWoqTBYY9A++3qVVYi7XWZGxMgoJqbvt2D6ACf0Vz8kJ6lpA
ht1RWWJVbzaRgWMbLRFIoewgvYyjRlpijF0s17vLi79lT98fT+q/v4ccKeMNgwCHuXsjpK9z
N8pkQqhu4KbqiQLPHDGja3lnXyHPdtXS4oOLOxi2B4NTJNhwiCOx7yEWD63YFLYx74S6SnEm
opVANin0f3/A5St2qx+dsk1BldFu2YJvhvny6CBPRko3KBQg5rn0pKlJCgmrgsjQiaSpD1Xa
1AmPR+1ZxPp5gjMdGV5pp/CcDGzWg4i3DPbPhBQgEuPWF0IhWBfFcRFFHbsYBgTYY0RmUDff
Q4rfi/eRBCqqfzKS51kNlJpH+TAjPNd5RV7c3+DIoLXMy/ltiwHTWJiZpRzwQSp4f9S7taml
Oinw8R5Zi7mFDNppp3tVUdq+YvJQ7eFF6Nx+BrmhThHzu1cCq6umHMCLqyWuIzT4hmAi4YCE
5C1+O7Qud4s//4zBbb46NsEVP8bolYi9WkQRruLBR7oab0jLg/Aby/0HYiqiDInB60qO6a50
PGig5SNTX2PTrx2nQ1ZYovzgfrSmV9eXrtvoCN9inj3HummZpcRr70Reu6eg1T5JiYglPLfJ
9gxVadskBaENV3U5T7FKMDVHLLRO4ZbhedCNdq2VDJ0+UpLP9gZnFbFnH22qjKd40X7P57H9
ET8H7RbUmVC1HJOPbKrGfXIE0kf4z/+NYGuAQDQ5N79g9cLwXRdc0hZ4pxUi8jUrRCxjVbHE
1aBdZMLNORY9eWYq6rz5nVQEXfLA4VLNiOW3Ab/8WFnDe4qOpUQtYixRmtPGkUfTU4w0OSuk
G5c1gPoWn9QJvT6PxnOBzehj9pOe8abxfCDldvcnfh9mYrdWV3n8SHEqldQZLAt0skghnWUa
z0VGO3Dgxz1DUsX7UX1J6p5uc0upbYPRJ/Kh4J531Gq5uMR9zDUx6jJ12VkWlBOvQGzst66m
UPV2ucCUNKrWq9UmyOwxdtkPKMOIIDDoTIahkeozsIOfUWWkUew+luBkJGoYg6T0jrCcRU4I
8PTJSjTXAaDErXfwAVB/gAY+u41xUqneWRcSRZgKQlbaAO+AGchnbpUa1B8zDMpZk2Dw6Imc
HT7xVlqBs8N5m5XHT8tth+4+81SzZV85MpRu8r2aSXPeXeXpqt8bNj9NrQ4CyJjHrCakWFwO
vglWieW6W/Y+fxuxlfTGnFcOjwCCVBKMtwCKOfKMgliSCvzqc1rsGQY7Zh6UxT7i/EBOzH5w
k1ecopR8u7rqOnT9tLHMYVRLlJUwnbXBo1tEsnHucS87BT9G8qZ2sSIKEWkEMLHqLmM9U4hY
mcjVLCuXC5zv8D3q5DHPrdZwQ2aHeeY/lY6y5KZuPIaP1EKaIyucNSqPm8v4MVQeXXZRwh2J
2L+FsH3ZO7LcbAfOMUuiN+iDAfLmzioKv3zFUv1/jD1Lk9s4zn+lj98e5htLth4+zIGWZFtp
UVKLsq3ORdU76d1JbTpJJdmqyb9fgqRkPkApU5VJDIAkxCcI4pGBbNoP4UgPzYDBiRn5Ls/A
Bn5Opgt6KVzTcK9Bj552h16diHpTD/LuI3Wzei7AePkDvhqj+isHiBx+y/8PIXvujAch+B1s
PAr/Y0Eq1GdRq7AmPbRqdIYEYeVYuk3Djafn+D/BEtGvL7nTdU3d+CytNMKVzki3+41zlpCh
NvV5ysYRrSp8tJ20RR1t5ttG62uZl5rwLLLs5YYlW9Vm/m24eTRaO4+ng7HGeU1olgCtChUi
vqhPZW3mlqWwGvTBeS7A1P24oMKa6ixqBiqsNbqnqjmti6agtwNf2+Xv6HLdxjzemIKfTljA
TdUXAm4m4p1hqP7PpnzTkesBHRK48dk6RoVihIJaR6sUzhF799MLFMXTMp8in9eR/9Hz45gq
Tf5zZHwhYaHRAEezfH6oscsdoedRA0SNhRJC/WlvJPtwsw08i5qVHrXwTECZNo6MZvtAE+TU
ghLgTHeKKtoyCzYbq2Sgp1nlFSOQXeibJ6zJQC/oDeo3kfVirzV6rqcgOK9e1PhkMMQ60rbP
tECdOqU6UHuvg6Byta44Ly++73ium5Y9r/R7X5wvvbHaJWRtca5TXNfUK7fyvaUDkpDxFuHy
4IzemmKhgougB2VXZPiNVaMqa5fOpSL1s2c2e734DZrO8lYWUxjAYavZ+BzzXBvOvDjqRhXs
8Who+LkEgNoPibAqByUuTw2en614KgDQrStvoGXWg4YXOZhjnE7gNXTGbqHHcoD8TGYxdnRj
8tGyfIAq1OOk45ZHqFONcJoeT0PlaZvkZW3pxZUWT9VkHtQHk3ZScVnQjEa7YLdxoDGIuhKo
PX7SZJBg9O2Tprs0DZyq0kRV9dOoasyeTzVE0PDVJgM+yjHTTYrLDBzerWJ3tNTneKrNybW8
d4J2D2krLyvV0JsdLG0dhxt5Nr+1AquBPtgEQWYWULcJHMjFTpudCZWmQ8j/836rFvfBTyPk
60W0DN6Af/wd3wcW/5Ok7XDf9A0sfepttBaP3sQ30euhHbNdNPbvCD+3BrNZQOqI+2Lo083W
mbNPE4fYQ5kUiOy5qUQgX6EpPIfROBypJp+s55f1QXNegUcCPqPLjNkN5i1cB5xh1rB9lgbW
whKFdikCjBO7EyR472ngWvYFY4XJvrIcP/F9LOxOxlM1lR7P8JptAQ2XyOMNspNYCp3maAHA
ANMCTfV3xmM5AEVMTwsmQ8O8GTDC2kKP+i+ZK/sDMULRCShYTojgiG8O/FKXoPEyEVLvbuzb
AD61qO+YwN31ZFZdfNJAnL+SWkzRZiCd9TSn7txOw2X7tNsEeMjYiSDdxJgPmkCrSDWTHRLA
Huh/P/34+PXT699mklY1xCO9DA4bCj4dYkGIm95olOKQMT3MbbwcmbWKoOvt0Zu4UWluBv1i
YlJQSBV3+mM2dWXuka09a7JxABKXI0BVz/Wg248glc3klf401rbmD0hxDG7bJnDKlKi/s3Lw
QqoZQNO2RQNctSrdmBKR9DIN6dFYFBxTmCxJEzYDJGybwN7+vjca38qqs2EADdjZRx3NNSUo
IKmFtiIETFh5wL/iafjOX77/+O37xw+vDxAicDI2hCpfXz+8fhBG84CZwkCTDy9ff7x+c+2P
bsbVDn7dX6MpBGAy/LVoGgb4e5pREr0WmRTU1AsLwEqhSbAzxKsd/n7H4dIVB8dCdCjf0yMg
jz6kzo94hVulEjLUL1F1/J69SqgkppWumsNn3feCPomtB20BsgKectDfm3A0bg+qaF3zG68U
UQ3qKUqaBS4sQHiPpmaALYY2WwsQRGgDQWTsDwDigsUNf2/h2D0U+GkU2IcBtmEY/TgJhfgS
6Yh57+r6cDCjT3PIbrPxRXfm2MjBzrg4MKxkOHEqiK36JZD/a7tFDagNEuOhRsdEWx9mG+pK
U4kx58EdJgM8vJn9sYywv3FAap9o50AhPxGk9IVGUWqS6702oVRkX9/wAJk/Gq0xF1ylI06H
Bj3TKfRQU9kNnBUMFYhG6VHN6CTvn3OCf51OJa7XRY0+Fil1RkeedYclBb1V28i0TbuHE76x
EjtdRWLqW3nU5NubfgZxtsT2pSmqczPlGfz2GLdNKFvlKuD+DVugj57QloDjB76j+Rj+P4x+
h0xn+vn74eN3SL/+wQrSxQeRywvYwJN6MByABUDG3ZnnOzoq282mbwyt5JF0IJR4DAAuXARX
PTn3dHsQBlqGmHJAX1G0vGrK1u4+FzTckTwW1QFFifnwh/L8AxPjT6/fvz/wz9W76nazTU6V
iGkUuNNfKbze4DKAMh4Y8eC7Mhak9fQjrZfxeStMiZGoxCXLPQ782l3+Ssf2oGfemyDzA6e0
Gf/89b8/vN4rZd1etL1B/LQOcAk7HiHKmhlFX2IgazsrHu2M0QJHSd+VA+CcqX75/vrt0wsf
iY+fuRT5rxfDx1+Vbi5cqjVjWJsYCECN5si1yFjWFUU9Dn8Em3C3TPP8RxKndnvvmmc8TYxE
F1cZEMQCwii86aPgiyYtCzwWz8LNT+/GCcYFZVx61AjaKErTXyHCzErvJP3jAWfhqQ82EW5l
ZtAkqzRhEK/QZFXLkiDAX8BnqlwlIeriNFqmrB4fPeE7ZhJpKbdMY2sqcAqRocfjSjoT9hmJ
dwEeNlUnSnfByqDKRbby/TTdhvieZtBsV2goGZJthGtM7kQZLh7cCdouCPFL30zD6isb21tn
pexyCUu68u11ces9FgEzDeTCgqvMCuPqMXZlCjRVfizh7RcC363V2Dc3ciMr38jE7sB8SXTu
dJd6dZ5zxkRdK736xOJwpWMbvq/jxqzaBN7y/Walnp6GY99csvPqWA/96udlpAX99jKRlVUK
maH949jyqxpKpR0cC3h+ZkBKbY8pliARCaQ9CeslAfSKPJj8h1zJMvfkTdOWpvFmGJva16uS
kORJsPMfoaTPwrka9yCW0W14nwtOvbUcKIEoKPYJuR02XCzte1M1K5FtxtpHTxZoJVsMSRJH
m9UvlIT7LbyV9yUmy8506T6M5k81kVmwTdIt7Eg+jinlmzUa70b1VUtqU0Ul4eLIOBQFHoxS
o8kLSOjaeWq4locON8WehqoibDz0tSdjuSIqRXjIvsA9CmZJhUt9taL0Mv049O/27pxpIWso
P7SWFs9zQbzm05Iio8EGjXwrsODRV4nginLQ7anXFf3FGEtz2bUsjsIg1Sicr7iIv7wMtKSi
hC1V0GbHaBNv+ZSil4Xv5GRplODbrKK40bXpAyRifthfKmZO1/SkewanbXx65SQJ043qSTRE
lCLbb6Jp+TiVkHyotgsbDT9wwnhP7HUnzqGYuPVllGxxJwJVMC/4gstBx83vQ6RzByDvrmJr
W/0uoIujic5TUZxgFVmU4jVLzP/lLauDEDesvU8fL3MsC8FEAB1c1sMRFtgbWkfLneMvK4BW
BCQTySjm5SpQRxEdzIKIsJKNBQ9zFXPJptdTfClIaEO2G4fj4xZfGQqJKZ8kKormd4+Xbx9E
9N7y9+bBDiBgfgISedOiED/HMt3sQhvI/y/ihOmKEYHI+jTMkgAPlAYE/IJt3ckUPCtbhjmm
SHRVHjjaZgNybFog5YQHxG9WyyyEhy4bDH5rCDVpVYMWnw2Yo5KW4QbISm0yiV7ezxEP2CPy
RfLKpbNzkaOih5EltHAD1SpFEDYDZj92TH0i1Ut/vXx7+RNewJwQhTJk1l2jhB0Tl7oc9vyE
6c00e/KJSYCRQpUIvg6Rl8FBe5rB7PXbx5dPrp2UjOs6FqSrnjPDT1gi0jDaoEAuabQdeG8V
uQgg1Oj5onQ6I+KqjgjiKNqQ8Uo4qO6ZPScmsiM8UmFWtTpRJr21PRyYjxc6qhgILj8alaPR
PzQCWtRc+DvgrdfdeCEd/74dhu0uNcTJn0k8XPZFnXu0BTqhNMwYr1DbCs/5zbTVM1Dmqp15
7cM0HXzj1FgaPISEr/EgNcwP9U7s4yhJcI7mRCVoybI+FbUZ9sts1eN8bLRe+naViUKE4sbZ
A8O9MAkcZHPUc6PKYK9fPv8GZXgrYkEKBf5d5WrzRuiBb7rVxrvzA4161Uag2rpwahb41qMy
NIj4VuVx0lRkwijFz+CkqEO4mFATo/5KXBt3Ay4X0LhbxjtrcML6+8mXxUtHj3128RUF3PrX
ldRdFRw284XhvHs2fGpV9m6pCXHfkwK7P85cWizdThTge7HQ+VZFgXyoh3Lifon0zGDL8ISw
nmaQYVygARfGtMRd0RX2HaNOhZRRZHu59mnkSQA37QCLmyIrj+XV5V6CF/ivwCoZc+BQ+Cd3
6FmW1YN7EEuw9/hkWRCXDC4PKiKSB+3HmCkapoVR0kPR5QRpUZlGIx89GU3/whRTwuq7npzs
k9BDunxgggPURdpH2eUn1PoSpwPjUplpZWVhvOOgrEVbNqIVmOiFiUO5CPyr7E6k7snSZc54
g7TPdweRyYdvKna7nSdylELDO3HVrg2VoCprCOa4PFwZeNeIvCrliS/1qnHlBpHDxJ2YEuwd
BpDz3gfbCOlZ1naL4hnr6dZ3DYOar8Xhgne3RPlYam4VsjHxtbXQVlkdCgLqKWZfS22sGlD7
1DRpfKzBSSO+yO78CSFSI9+nzBRzzryp2E1nfVdJk1S7PZm4qs7l86jCgamvNIarDCtWAAub
R/MOCIYM4sHwhHpnOTYh8zsOl5HQAiemB/dq3jdUszsSuSAMW87zdUqr43wevD9bWVY0jOgW
XpU30wrHQfbYuseuUgKhi9cVcia0rXxnVz9VrCmHrGxpOZ75OFR6hQIqktrlduRigYHwzvIx
DFd5AZG0ib8n0sQUXkCnR92TAKZnwxagG+mzc96cbA5B79YcberHjI0HqgfrkRctgAsCA1m3
wpHHxL5ZRQ89guOQg/OZ2uy4qQhumpHSBBLp1rqyoQWKlSER3JrAUQqjP5Cd6Wt5R1l+dygF
TA3M/OXODxdgu/qU4U34dss7hZUB846Y/QfcIv2jYZs1I2TC0sXmYEhxVqe8pIvFM7486xPe
+sCvtng2XNK2EClkvjtK47eHP/1KpXn70m3mIKsfJfW425hGonf4ziPDZl2Ia+NbiIcoDH20
KPte9uZN90Z0aZfPc2Oy1tdOj4QI5nT2VggHhoAXV34JibRsLhxib31TT7emDyj8hnc4TC7n
29YpOxcQpBNWk95bfcb/oOnM+cLKIDTonU0uj1XPsFe/2ZAptcRc7YxorAgeUx5Pb29Oy767
QMroVotWY2AOTdPPyfGknVGYIUZeobEUhdsQh41NC3FU8ccFjhbqWC6TGQaBgACPA4I+fQHy
zEvpZwkAwetFTXTNP0Zwm/318SvKMpc7D1K3y6usqqI+GZ2rqvU5D93Rsm2nXNVnu+0GC8kw
UbQZ2Ue7ACssUX8vFS5rOLadboCXSROYFya90xithqytcnQKLfamWZXK9AjKYw/fjEoZZJ5J
5NO/v3z7+OOvt+/WyFSn5lDqdoMK2GZHDChlgkmjblY8NzZr4SE33H1CqN3xgTPH4X99+f4D
zzFrfKuIPL/FgqDP2HhrDoMTrF4AaZ5EsfVJAjayXZqGDnUa6A9ZCsjvW6E9sCoulIfDMt0E
9qorGW5gIVDUGgwIOL8zuatFnJAQBfKv2aeRzaMMNMKX0MU3YSCK+z4ym+bAWI+rr2D72FmG
PmFD4drOmKhijGHvch86RBOZkL7vu+DP7z9e3x7+CYkGJf3D/73x2fPp58Pr2z9fP4BL0++K
6rcvn3+DBA3/sKc56A+sMZ7cI8351u8D32QbhpLY9IeMhql3ft79Kt1i42ODmtQLtMpQbwxH
BgeQ6eYndh0uStXm24ncjFh5qkWuGSyrhpcW9TcRRNo13ShdnMKN7wwpaHENzc+Qcpw11cyr
4gQZj+RScQm8fiezSRoE5/J0rkht5JOVcD0qv1hU1NqoQaytWuswFYimxf1kAPnu/S5JreXw
WNDWzL0A0KrNQuwCJ84BIRLbh0MfRx5LN4lO4tA3LSEi12Dq4gR48JgvwHYgrz6eChthPmnX
Z+tITeQNd04TG1hG1mdgS/mEx2Q9gaydr2sH39KRydMyawp0pfnyJGCPW3+Xs20W7gJc4hb4
s0hr79Fwyp2S+uL1CrRPFSWQnvu1QPFL19FjRTTjE98+f6ljfn8Ob1b/8CvJ04XfYjtzesu3
kUOrO+ECfH7p+4lBx6NJDQ4hpC/1BxIA32hvD6tyw/YPixtyxURXqOWUwLR7XQMuJgC/W01C
UvE3l94/v3yCE+d3KaG8KLdY9JCa0rKa3UUaNvL70nR6NT/+ktKcqlE7wmw5BxENNeyRlfod
zitkGUPaXw7W2V3Jm505XwCoEsj5J5Uggqx6kHh34RyBPHF2UkWEBITJFRJfvmH9XjR/3FbT
62R5zQDCr6HM0JblNxTMrpkJn5mhJVyvOOrscdFkrQ9OccQZ9e9rW8MUjf/0ptao+1aQT476
LXv489NHmSzPvnlBPVlVQsr2x+mi7KKEIYrdvMKpSY5+ikZmX9xm1v4NCbVffnz55l4D+pYz
/uXP/2Cv6hw5BlGajpknl4dJAK87hobDqXsup65m81yZ0pwrxHjqmkurWchwuAzz4NLDfe54
4cVMmxqoif8Lb0IiNG0ITHTVNvaZiivCtkkYmm0IOJdVedfvEAzV8sRNwAMN0tQwvJswOUnB
AOfSYvvPRDSZhTiN0awNt2yTCu2E0+qENaaYwk1RZBZaZWV90g+OGT4E0WbAPoYfgEdMtJnw
0p4XK6ksVPDprmiarKgaz4qYvngOFsS8XkZzdbflgTcjuJjw8bTDvmJCYncSmyZ26xYXmgAb
Z3XVQRH2a7CBCrBE0QZFmHpqjXyIGFkPUywVHBEKjDvoIkHX6kCpMF30ggsfE5nHJP+Obteb
qln4C+20No39zUXHRSVs7mz1RL0m+Xg47bIewZLnviNlhXVgdi667vlaminmHDIICyOS8y7w
PEWEtlmuuExYkUdkGzh0zWDZ5M98kbpuaii20GJW5KTjN5NHt9W8qLng2uuxJSZUUT2ewUgH
WEJ6pKC07Nnh0mEn+HzUFLSsS18VJd9mLM4dmnewiruVDwT0sSyqHGulKm6lw6e7oV7qrmTF
2uD15UmNEtKS/8Y5b8sDcceAA8NowEYXMMlSfdRKBT7NJW8cKIMiRbfWpShTGs1KA4IiQU5t
jog3QYqcoYymYRjjiDhGz3RA7WPMIHGmyOk+DiK81iFBe0DUGmC6doMi2uK17pMYG0yB2i/1
maTw9MB+j/TZU8Z2mx0Cz4/hoN8E7wXgSZMdSuEuiEoWWRKkSz3KCUJcwmJZyosu7+ksp/Hi
gHGCdIecvywfImQYec9IVz23JSqMWxdaovyg32BDVbUE8l2ZFx8hvHdc2P/+8v3h68fPf/74
9gmNHDbJfTK24BID57E9ZsinCrilLtSQIJFPWHfPOCqF5NI2xGm6lCTJfo/09B2LLF+tKHLA
zthk7+NNFsZ1Ti7d4gBqZMESL6hIdC+MpXV1qZZa2MfRchOLM14jC5arwS3XXLrF9Xsnw0Sk
O5agq2rG736ljS1BplD3nqDfyeG/NGl3i3zvlodi94t96Imq5tLhSkqXLvulMdkVy1NgR/A4
BC7hAVOl37u69sxndk5C3T3OxsWePUHgvIueY5Nwfc0LsrU5AERb9NyesBGmGLaJUs/OJ3DI
lVHhtsQz+QTv/o5LQm/HDVv9vdl3wjjnwOyE4IrmPiOiuSzo/fG7LEfBS8tS4bZDbusAhbj4
aYz0j1DXe9QYoOcPl6VNRRVj/tMmTbJDRk6hxOzEUGe+2L3M0TYwp5ND1pdj2eT8JoNZXU5E
2luCU8H8olDly5vJTMhv879Iyap8SS+h14jum3eCgS3vnNpXxJjnLUIXoHudRrCyZejMbR1R
jb5++PjSv/4HkdVUPQW/6wlTPFfb5wGOV0QjA3DaGL4fOqol/GKJocJkg2zC4hkU2UcEHJnC
tE8DTF8F8DDB2w3Qr4iTOEIvLhyTLK9QINkv7boyOiXOZYxymQYJuioBky4fzkCyXzpGBAHe
Z1GA7CD887b7RN+lvZPLKQrmbsS9t/CLW1IFCA8CsUd3y5621yRBgwjMW//TpazKQwd2p3Ob
cFUwPCwVYDwS1rekP49VScv+jygIJ4rmaF0/hKUCmLO4tZTdkxkgVKr87QuKqIE9syN2MknD
ORmWzCwBwPGKCTMCrV4eLEa74iQDvKmd4O3Lt58Pby9fv75+eBCqSeTeJgom/OwTkTp97dlG
NhJI87Z3OJf6Z29FUjvNsG7uz4kRiER+Ey9xAC1kW/ITHntOkJFZlNGNVSeAhxNzDXUkVpri
eAfGTnIqoZMvpdkZ+Y20B4f7onStAQy8NV/HYw9/bYKNw+z82ITYWxh0nWlHJIDCcMZm7lzd
vIyV2f8Yu7LmxnEk/Vf8NrsR07G8j4d9oEhK4pgUWQIksepFoXF5uh1hl2tcrtmuf79IACRx
JOh+8ZFfEjcSVx57I4mmH4yW4CGezqXBZ5kYT1SwIjRS6DZZQlKTt6sPX4QQ18vbDSVLGNuk
CZhr0pg5jOYk6UZiUOBOaO4pExvNIcU1C/QCHyuTiW1Ti7gKmIDqNydbHHDzQlc9SNObLUIO
8CIrvLgbSblUTQRKBx7Fw5nVZ1LqTpI42WVxu4B+lhhFpCTK1Ng0gih1Pqwcpj2MK5MzeGw9
6FGLBDBmMfb6xUERG5psjKIJxRIrqbF1RKuXsu261VU5lVXQKVjFA/jr2/tvEgVnFYboVbPx
vegKzvqjzBQzgDQA+Yk1cSXGvnJXYJv6WYZfSgoxwecCrhYi5jvNsK2NGDeWdGCUUAvBJQdF
HFuDQgbwNRK4ED8po0x77F9rx1mFlFMf//x++/bVbl/pb9NcaQQVlnALOZhSbne5GmqAounA
x6LD9HhhCJzSiiunh6OVrqRD2VY/Tc1mFS6orB4YmjLIfGtikiiXtiiK7o3RlGIXsa3sJjbm
yrH50jsCTIt1tkq9OFgZrJuKVcjvLpjzVrHosoEUxuaSy11ZGTX7R3H4cqW0NXilMqcpA9oh
S+PEKVDmbazdteDUztlBkxqCvm7ENM5Cc6Fog6zESob4ZNRgxIBbdjhhJbPFs3SWhpFzPzDJ
n7pRvQ0SM5Q/5GjHAXtsSEOA5oNpKXXw9Vw31N43dO242do7AaDiB3OJs+3K3o0PqJK+hBpF
7hpILSD1UktuANjuxpJ+pAf97Vbagc82Wlbb8DY7P729/7w9ry0WxW7HtgCF0JY2KtyX96cB
Xa3QhKd0L0ofXPyr2Azw8vi//d+T1EDsbj/etdIwTqFRx73a9poQW7CKBFGGnUeVz8dSy3/+
0r90GKDvbBc62Wk6lEjZ1TqR59t/HjUxxlKSapD7Gt1Zzwykq/WSCTLU1YuNdlAgXPZpPD72
IKOnkjhyDkIcyLzY8YVq+qEDvrMSDq/DOg927aZygGIXmrOmfq8DvqN2NX8DRguS1X6KzgZ9
CMz3CGB0zI7PRDdUVMhSUQ+/gFHZhCfWD/ng6GkaiTgZ8TOqyiU0Thbj6V8o02C8nRoY/Eld
LiBUZjBwZZwUt0pUOYVK3dyyCAe3gVILjufImjWP0csthQsurILQlcbsbfTD+v3VdlixPFbZ
7FOWjc4t8EFaR2GZsLTlsQb7Uh4paiHKNFXsBS0Z90u5fHcAe2A8SfEZOQ1D+9muiqA7VZsH
CGcJjNpWSl5oFFV53RSUyXFHAEfp8ZcngHKA8voKLBOfvS0jBQR7WIiJCicDL9Fk4PR1UdIs
j2LsXDyxlJfAUy83JzpIsUQRbyo987DMhNxbyYozBHaSbb3rr/U5tJHFR5sBkI1qqi4bQiN2
xaGwiNPnm08whka71hLQVYdNcF99coMVvZ7Y0GHdq0fVmPjYyPBTCAf+y25BiWEiQ2MJfG37
MtV/8vu7Mlb4uPRCu+3gUBGkWKp8D7aWIm9ntTpzmjRMYmxALAxl5CeBomKplNOPwLEfUqCq
ptz8TjAlMR7pQEnJde7RWXKkVYQOVrfZYOVgPR758drM5By5Z6cLQBCnOJDqroIUKDayQ3my
fK2uwJFnnt3iACTqUWaeVd0mjFKsROLYtpqdPMKl9nzZFaddLdbIyLenyeQix/7wSGMvRPrq
SJmki7GOghUjxMbh9lS3siByVUG+PpXE9zxsTs5NJ64K0DFS5XkeY5qEx0NME3AELpcYS3KD
ZI89ZfDsL1pgOf7v9dxo1zyCKO2eDEsG4Uny9s5OU5hHV/CdTMBpf+RrW1QNwbbKC0Pne4Gy
8dWB2AUkLiDHi8EgtDdVDl8XHQqUBy6/JTMPTV2WljrPeiEYRxLghaCgGPXRxynWYHvqe2ia
oEW/liIp+UODneLYXLfFAU7R7FTc2gz3Ga27Ac2TbZ9q0mFhD2aWYzeZz6PI0OCVgZjxq7Xh
dijYp3QccLWriWMDEbNRv8kTR8l+FM3xWg7H3i74hA7kZIMVSQK0fyri4xbTMwNEFiddh37M
7wxXPm7ie/D5apcHImiNyDiCi3Yv3uJAFmx3GBKHaUyw8k0RLIxIUmYCpNx3aKdtKaH1icKe
abXrdm3sZwT3wTlzBJ7qO20G2F62QMkBQuVvEcXBRvbNPvFDtIebTVfUa2VjDEM92mk28Kop
RbudahyvzgSwbXXNT/MxxGL4R4luNSeYrUxHPwg8u8jsLF0XuxoB+HIeY6URUGpGAsC4crSB
BbRWYL6djH3Hx1Hgr80hzhEgo4EDETKJOJBgzcMBRNjChjVAFyZAEi/BY41pTD6mWqdxJBme
c+7KOfTTcG2QMZYEXTw4EOYOIEIakwMx0mYcWCshus1cJNAQolsPWiZxhJAHEoQZ2kX1YRv4
m640t1szwzGNA/UENfd6l6DUFKdiA6rDdy2MvrbvarsMnzBdhh0FFRgtQ+Yog8MQQGFYnZsd
P19hn8VBiG2QNY4I6SoBoMJmKLM0dEQCVHmiAHsunjgOtBSX6w2hujdYiZeUTTakewFIsR5m
QJp56K4QoNzDdUVnHqfV2sxBihDfgfRleR0yZyCWpVW2WZw7NNc7ywmC+fWlg4VzpYCqapRj
hs3Pi0gtyIaiLgtmnG2Q0RHBAEdcQIUj/PMjjnJtDzc5rcK2cF3NhOzaYKvZLiry0DnCoICd
eVbLxngSuMlbK15Hyijt0PVxwlbnsGDahHmKdFq5h+sDK/y5huNrH4dCzIZv5qCUpPjCzrbM
CfoWvpylSj/IqsxHVsWiImmmH9xniLVn9sGIaQ5FgEYKUxlGbMt3YLMUX65SbLXadyW2ZtJu
8HFhwpE14c8Z0IozJPLW6w0sq4cZxhD7iFw8NwX4nJQbVhtMsqTAynSmfrB62j7TLAiR9rxk
YZqGyGkGgMxHRQxAue9yy63wBH+BZ33Scpa1wcsY2jSLKUFrwKDkgFeOTbX91lE7htV77c0G
c4Bnzwhw7ul+sJjZ6L3no4FH+FJaaDb7kgThqp1B+SYe/nhHHPHUJqa6q4+7+gBxjuTb1JXb
e1w78r+enWaPPV1N4OXY8DCaV3psBoIVu6qFQ7hdf2bFq4frpXEE7sS+2MI1AtkXaMh07AMI
PgVHelW9d+LTE8TxuYhYXYBhUxx2/MdKgayCzClV9Xl7rD9NnKvtUHfwrNk4AnlMXKZ293LN
CdHukHwkDP70ltG2ELOus+n34UxbZtJQF0dswJLTIVvLefIgg30LSrhrnwLMxm6IfXvfHO8v
fV+tfF/1ky5IoTl7LRihKtY+LHIvCeyGAYuYhSiDjb8/Pt+BF7EXLCwY95chZl7ZFqqQH7Nk
7tXz5DxxLiKgwz28iXbDWrfy5ElfXivKFtGebI0AIzrD0haLfGMcYeSNSBXmwkgWfBhLjYzV
tLSkahHsY21OCC5agvvjnonBHZol3vS84Ju319vXh9cXd8dIhQy7j8HW4EDsCQB0os8AWQ5n
Zrwo9PHP2w9W1h/vbz9fuBswZ5low3sKWxXWZhj4fQztivCI0VhiAMSr7V8dC3akX+3vj6sl
wuXdXn78/PY7OrqmOBUOFlzFACkTT+zTz9sz6wOsx+d0+NslhWUZrZIzCUXYgaGouyfu90yu
wN3Lib8gWGNoDpbwy6QY4Zdm8qG/FJ/7E0UgERqC+yW/1gdYliuEC4KtcyfskIhnwdykaZJl
l9v7wx9fX3+/G94e359eHl9/vt/tXlkTfHvVG3L+fDjWMm1YBa1OmROsREzHynpj67cUCSEh
nw9VZNEMACXjsTttZ9QhwNkAVtp7Gdsicu4HHychUiy5LNiAUKy1yMvNmd3xYB3jJTlaxUtV
sFapcM0lGaMIK//M86VpeFTbVaYp7u0q03TzsM4lF9QQgnWsM5IuDxLvAyaa+0fG5+F8Chcp
unxEGlfY7URo/0tzsPUibClrfs9fLYD0P4v2YHVZT78e8tDRVoqQRss/HMbI87L1Acz9TSMj
ku3sjrRB051e39dqfDqMDVrfKVLL2sfsCByCOtCRlmgawvRoLQlK0mAc0dLDZfkHLSp0WgIP
/Z5thQPnlGNgemoHJ84DnK/l3I8QpYl9rm2cKZjTrdaX+/a1hzdfxyA1RdKQ/nDdjZsNKmoA
xMRT1RS0vsfF5ORLfH0gSzPBtVpIV0J6gSfi8Ush6IqI4KalqyNJhNrGij1b1a+LPlr5fv6B
rOJr/SrHZN62KqbKT6fmWOu1L6pzwba4bBdsjImibToIpmAONQVOfc+Xn03CZMP2yWEW6VT+
oJ3VOpEMsc/mGC31YF1lDNMCzZKwxLcNHcoAnbT16dhPFcHOJ5vU88xKwrswwWwGL8UWes7g
TkLPq8nGlUMNd6xaJRtWvasxqjjtXB+qXmi5unzmwguxH2xdmTHULN8eX0EngcsNloxOKP1A
tsqizgtPL35oFvtwhr7CJpUwVdETSTyzKcrhFFtypyPlZOjn6nTGEqabVNZWFdLcpMjxGVxm
agWart30QjFqlqY2MV+Iilwv919WhmY9jGzsY1HI+BGyqxurSZvcC10VPzRl6sEiqNaCnfyi
dBzNhKSzVUdKkyW7XkuVKnTSNCz1QiPvptsN7NRjZN0NMGNdU5aHG0g8PWcIuVgEvp76qWtV
KTpZff32z9uPx6/L7r28vX1VNu2MYyiRo0xFRYDwqXvYnB16QpqNEUKTYGYQrPaFyq6QtZ4o
rvse1MTLBk1c43Blw3HSl3o2MkgWj3Jupiihrhnw1z7ORLZtQXBzNTWRHRvT17LD7/k0xsFx
1yeYTCX9JeLTv35+e3h/ev0mQ13ZFw3dtjIOnJwirDM12qQur81JRmdbwahhJcQVnPiXJEzV
+DwTLdC9g3T8XD/EscNdDv+soEGWepbbepWFnQauJ2LElhUIhN6GYKelw33+wrVvS2d9WKPH
uae+XXHqZPKqTU9IcBwCb3To9gCD6Vtloemq9qJnJn8rWh6cHOIaMjOefYCjWiQLGljtSZrS
4cEG+hLOyI6gHfC1PJi7m2W2BrY+S3CzrRnGCyVhH1V3BxB8DdxvwlzXYeMI90Qm/Gk6096x
HfSlP96T6444u7r0Q822QiGaAeM4NARJgL2icnBkRTqyeWcMnTGI2QHJou+bJGJiXzpM1YE4
Hi1PqnsKkTOcfQwwK7EVIk1JWKy8n07F8X4OE4TUBc4+mnsSIIBHAnXvN99e87FV7incAKLh
j3TO7rhtK72+gqMdCHHRDQ9BBjjoAZwWdOjK62ZEF2KFhxoJfyJJYIwIbvNedn2lBdhlgG31
DlRuB4WqQi6oIc0n0yljJCKWJZLOD8xOASbMSKzRy+kZpr2wwKppyUzNotAqWZZ7qcUKhmRI
tlmOuvFa0MxIniah6vFvouWpQZvu8cwWOtCxdk16uBTQk5mMkRRrPEm5atN2pko7aS1L1oG4
8xyep2nAzonCOkSnzV4MtMSP95mH6dVxTNwP6X1B6nLaSOjbgyZKk9EdZ4bzyKtFR36ki/W4
fDPRJVE4w/3njA1mRc+y2Iyx5+GlpN3g2lDIMEzHstNbbrYCVWi0uRZdGDJpSkkJXWnk0w5h
HmG6JwLM0iyzEmw7c/QY3ijAjsj3dNfrwvwIVzXgUGqMDdvNxELNPYRXGC5ptYPCsjqErkEp
8TiJkVyELws9PaBniXsPIb1duOTS7AzDLj2jyvVWR5gY1YM000sbeaG941QZEi9aYYCUL60f
pOHatrXtwticm5hPEE4XrkTMwSVO5M4yWJ6W9JHZl/tDsSuw2xi+2RM+YYxdvCDKbaq9owxw
lU3eIl3so4ZjE+hbywn3V4Jr7c+wS2YxMPKwFEPf2ppbLLG3sk2dvaho4uQSZbodKhec/b6D
Fy24J3XJVsli2szpnwdO0SxY5LuYmQD3BMumIA8w5ZJ2nIdzEEPCi8tWs6bd1pAk0mMCSrTn
3PJQquc22/hda2VBnF6qpGqDHpDXddidP578BWiPHRPRaeu+cGybsWbzqG9poUdFXlggTvup
aMFkjJzwVl6YQVWIawrN7EvbLFxsq7bLEuW0qUGwi0sxDM7rWRJjKSpHeRur4lDdHSnIgf0a
8LabbNkcjyIzG78JWG0TM36WgpjjaoGUEzmSK+KtCuFZTu84KCeUPWzEMRXNGY6bqDKoxhLo
os7AcHVTZVAWhziMURM4gynTTSEW1LGLWhjE0RH/WGDnGLWS0dji2NFBDWnZoXu9BownCVK/
wLqArZ1JiE4Q2G+lPjZkOBLg32RpgA4zvnmJXd9o2xodyjK84q1YyVcrDjxJmmDlUY5rKBar
2zkN4qc5Nxa7sCyJcieUOL/KcRG1nN9wKA7weSGPcKvNNp09HYmLg6cLE2YoDizAG1Ve4swr
E8qRolZHOg9rEjyDwWcdEzgSH+LIx/d+KlOWxbgHbJ0pwbYnKsunNA88tPnYoVn1A6cjAd7k
lMeOc3yTOIQjYBl+U6wzObaMC5M4T63WeNg0BcFKCK4boxhtCvuQr2DbbPTQ6TJsT19q38NT
PDMRjs8yDrnkOwfR212F59Lh7cxVDI5DhznYM7gglCpWbg6eyOZ63pwInotq+kT7U7kn5bGG
hypKmwPuRkj5WNxhrBbQurRQIBplHrpIzO40sExpd0ZvxBYWEnRD4aGzASDio5mSuMtS1Zm8
AnFnHWh61m2HgrU7eOtHx43Y7m/6nsfTxbLkDOdjvd3g+x/BMFwcXxtnBhXiZ6TruetKFGcV
8pICHy4MzIJoXUpxnvSA9x476sc+E0irKSgXKygWaHeGOsYktWPgTPcvH2atX8eYWO6Qixz1
/0LNdNczFoZOFeVGBc+a35+sH3qmECJI8mdw/o8B8/EdQyYnprjcaYtNs9ngEqR03ciU023m
i0o59LTZGtFPuOoURxFlEo1H4obW1URmh8uWYkmT06Y6nq/FifakbutSy2CJEDIdet9/fX9U
33dF8YoOXhOnEvzSUXawa/vdlZ5dDKABRtmhVuMwinkswJHqmkKNrE61rnYjuCaf+H+BlfuK
Q9nUGBd680zVOzdV3YNtjtkp7B/w+NKqMrE6b6YxIR28fn18jdqnbz//vHv9DhcPSruLlM9R
q0jkhaZfgyh06OyadfagKR4IhqI623cUBo+4oeiaA19SD7sa29bwnPYQAutFI3V1F4C7QK09
OLK9HITLQcUJrV15ZTA+vH57f3t9fn58U5rGnDNzG0PTOqeNwnasP52gt0XzCB2V58fbj0f4
kvfuH7d30Nlnpbz98/nxq12a4+O/fz7+eL8rRFDEehzqY9PVBza8VUsEZy04U/X0+9P77fmO
nrHawTjpugKLbAHQQXWcyXmLkfVtMVC4cfMTFao+Hwr+iAkdqu2cOFpDXHNS87Dm17aHWI+4
FjBjPrX1rGY0VxOpiCpRZmURUWvx792/np7fH99Y495+sEyeHx/e4e/3u79tOXD3on78N7vf
QWHHLSv5OGZbjcCQvwsdmVSczoZuPxAMqToxjJodml5XtG1fuj4ku2nCb5/eHi/gbPa/mrqu
7/wwj/77rvh6+647U4bW3jbHuqLKNFKI1+YwnKjaDXpzKz1w+/bw9Px8e/uFKO4I0U1pwR/K
hRXXz69Pr0zSPbyCG+q/331/e314/PHjlXXajeX08vSnloQQGfRcnLR3ZkmuijQKLenFyDlb
ii1yXSSRH5uNKOi6zwUBdGQII4e3fcFRkjB0uFmeGOIwwi6NFrgNg8IqUnsOA69oyiDcmNip
KvwwsirN9hiax4qFqvp3kWJ8CFLSDaNJJ/3h83VDt1eBLdZyf6nPRNDWisyM6rSSGRRFEmcZ
ugRqXy6Ll5qaudSAzrBZB0EO7d4EIMqwHe2CJ2qAX40Muyd0uUszR5hLwbGB8FfOPBkaJ2aO
jJhYxHviGZ6H5Bhts4QVMME0CeY2T33faidBtoYAv+yDIH0OumwHY3YOsR/ZSQE5RuYVA1Lc
IaPEL0FmdwS95JrjU4VqtRZQ7SqfhzHU3GHJJizGPOCnGGXUwbi+acPeHH+8AVOr1uUYxEL4
6PsQdGw/fluZKamPOrdR8CzGh7mPuhJUcUtQADm0u52Tc8dsitFnkgnPwyy3hFdxnxlvjrLD
9iQLTFGrNd/cVErzPb0wSfSfRzDovHv44+m71UenoUoidtizBKwApJjQ8rHTXJat/xEsD6+M
h8k/eMZDswUxl8bBnlhC1JmCMD+tjnfvP7+x/cmU7GJ2akBiAX768fDI1t7/p+zZltzGdfwV
13k4lamtrdHF8uVhHiiJlpXWLaIs23lR9SROp2uS7lR3p/bMfv0ClGSRFOjMPuRiAOIVBAES
BJ4uzz9fF18v334on5rju/YdYh7zwLNliO4J6EvloZ8N+hin8XDgO2oK9lb1fH7//fJyD6U9
wQ4y2DyzBu/TIFjNm4sPn1z6wl4hsAtcRKvHuBN0PRM4CN0S4gvg/u0qfH9Jf0begPXosnU8
NpdZZQs2EAkNZts6QjdEgyX8Vs3QefKzYGUJtaoQ0N4aCgF9sq0Q3NKfynZFh36evl9bmr6+
1eNgtZ2JwLJde3qMoit8TaZUuqJX9PCtVzfkMJZKf7bZBJQ34oReEWK/bLcrMk34hKa2YoCv
yeBtI9r1N/P10orVyiNYPG+2uWOJPaRQ+LcUJqRwLRfKV4qKPsC74htHPdGewK4705sB3Dou
Rd06c9MCwX0OIXO/rh3fqSLygrmnKMqycFxJMys1yMvMtAp7vWTtdphOdFZfHbMoJ4/2Vfys
W/X7YFlQzQ/uVozOC6IQULcXV/SSRwmxswMmCNnuRtERGRCox/Fmw++0/Gz07iE3lgxgcyN0
1EeCzVz1Y3drf64Lxcft2p1tBwhdzZYCQDfOumujXG2k1pLeLv92//rVttmxGK9Nid0ZHe5W
9klGn4LlSq1Yr6ZXKqrUVA0mrcLE6ZZ7cyjkGXi/bf98fXv+/vi/FzyJkaoIcV4mv+hEmleZ
xdFQIQM73d149FMHnWzjqUH4Z0hVC59XsHat2O1GD5apoTkL1itKzMyp1nQNeeMZDj8m1hLi
ckZGuuPqRJ5qNBo417eMwYfGdVzL0J4iz/E2NlygXdbpuKXjONZenzL4NKCW/Jxs3ViLiZZL
sbHEVNQIGSiEZIDBOae4lt7uIsfRhf4Ma3ntY5L9ah6Hdni2ujgO7T+oCpTcXy2rfLOpxQqK
m932DE05sK22jeor3HMDC9enzdb1LSuyBiFsn9NT5jtuTYV003g2d2MXBlM9A5vhQ+jYUts3
CPGlyrXXywJP+Hcvz09v8Mn1RFl6bb6+3T99vn/5vHj3ev8Gts3j2+W3xReFdGgGnqCKJnQ2
Wy31wQBeuZa56/Gts3Xo+KVXPOlFPmBXruv8Rz/M7aGuDsSVpQslCd1sYuEbMSepAfiElxaL
/1q8XV7Agn17ebz/pg+Ffvxfn+4sTR6Fc+TFsdHsFFfsrIXFZrNcU6dGE9YfNysA/bewzpZW
bnTylnS8wytWTXUnK2t8VZFE0McMJtdfmY3uwZSxKDsa7N2lqpWME+1tNiYwXGkC90q53VJz
7szZD9nLzn64jzobWpyOs+U4Fs/9sQCP3C4R23LhnrbGMI7iInZnXetR/dSYX8mKZgwM4urm
+urLogyrCbs2C+1n/8aiBU4l3eRliwTsn0a/YI3N+or5yJk7Y51+xNfubEEibzeLd/9sAYoK
VJwbHUA0/XZl6L+3vj2ogLetScnevrFQQCIYyz1bLbV0i1Pn1TNleS15auarABZjQCxGX9en
ZdVpiKOfU/e4Kj4iPlwjwjoOA4HtOhXQW0MlUjpJ+Ygimu22jsn8PHIpKeCvCNaNPdhs6Viv
V4KlS7r/I75uMm/jzxrdg61TjqLbkF0fYxe2dbwJLmNVPkfDZmLdSVFobDzLsJEu6wrap2Tl
eqyfNQKqL55f3r4uGBiUj5/un36/e3653D8tmmlh/R7J3S5u2htLDLjSc8gEf4gt6wBjH+ut
QaBrrowwAmvPNWY3S+LG952ZuBvg9OmbQrCiUgf2eJgpk5VwwTrGhsIOm8DzKFg3uz0e4O0y
M9sriybvCwadZCU9ivsgpSK+LeHUcreeMbaw2Da0jPUcoVWhKwj//nW9OhtGGBvgpj6ylGqw
5o6hlL14fvr296CK/l5lmd4xAFBbIvQONgVyt5QoaSf3dj+PRueQ8UBg8eX5pVeN9LpAJvvb
0/m9wXpFuFeTfl1h2xmsMidBwgymwdcRSycggObXPdBYwXgI4JuLQ2ySzGwiAucKLmtC0HH9
mxrQahXYFfD05AVO0Frx0p7yHPKJ+yjOfaMD+7I+CJ8ZHRVR2XjcoOQZL65uXdHz9+/PTzKk
7MuX+0+XxTteBI7nub+p/kCzo7BR7DszpbHSbnCsJpHuDDL3/JCNS17uf3x9/PS6eP354wdI
WHXhsITaI/uoA0mjWYZtwjpW006RiBPHtIn2vC7pqDMYQjqtDq31QWtcK2mm4Ie8ygIFTfEO
R2hcgVQ7yXyA6HOmujchVibqEzzboYsfXUt3lwucv0r1Jx3hu3BEkSVD7blouqasyqxMzl3N
d3RwD/xkJ/3yyMjcClVWsrgDczlGX5/8yPSH5kOXIzJQACKbxhi2tmY52T2gJOEJzzsZ12js
tzEkNhx+J/bo/EdhBfDCVb3AS8vhwngBIm92/Kl8hzE/oj1ob6RpMBCINHNVV8QRXpwqeYy4
3ZxuIAPNG+BW23rdpM7nB8VY6D7OIi3jwRUI41Ieu0MR87o+2CY+ZxnwdyqqjJ3NUu7KnMfG
+f94b600Ry2uZjFXE4VMMPlmtGqMCWJ5nFQHnb6HdSI1WXBARCl5ejARTDWNIcIX73pvpei5
Gr2UfoMfT18eH36+3KP/oD6oUBBGUlFd3f5ZKcO2/vrj2/3fC/708Ph0mdVj9qmL6UfcE7oT
KTkLNysa+7MXDIsxB7MoDy1nBxt/b93AYF6AdLuyjnhX1WXI//jXv4w1gwQRq5pDzTtguZK0
IUZCkhskJmmbceY+v3z//RFgi/jy588H6OODPk2SvpeJmFSAKEwcu50MldtTleF7HjXiFiFI
jOiui1liDphSWXKwz1hfGiH751QZLM+MtxgmvmYRr0rY8uyCXKm/DTNW3HW8hZV1a5B7alj8
+Cq+q3KVn4mx1cccePzLI9g5yc/Hz5fPi/LH2yPs/sRikVWNHs5jmG7UeZw5/8ghHmlckgY5
o8+OIV8OHETFi/gPULNmlHvO6ibkrJG6Qt2yDMnmdFXNeV5NbQOFc0aDvsxjH8KDOB9Z2vyx
odonYN9VuzAjQJzIUmS6Qy033T9cYtxvja+++4U2Ad0m3HL8gEjYNq3IPi6YhXfa/JjsTrPK
JBT0iciqRST5kNtYl2E31kGesMSjtWPcOTB5RnyE7SxPzVIlLmtjex8/nGyZAfIuLKO9tftp
DZPWzfalihX8mjNjFL3V/dPlm7ElS0IZWaDltQAOyLjZ+oEEuLv76DjAmnlQBV3R+EGwtekc
/Tdhybt9ig+JvfU2JlooKZrWddzjAcR8tqJoQKPtopxu1c1B7Unmd7kzEp6lMevuYj9oXM3C
uVLseHpKi+4OgwGnuRcy9e2yRnbGDDa7M5i43jJOvRXznZnK0xOnWYrRoOGf7Wbj2tTVgbYo
ygy0+MpZbz9GjC7wfZx2WQM159wJbNdsE/kQFKQRDnmDrRCmRTKsahgkZ7uOnSXV+4yzGHuU
NXdQ5N53l6ujZdomSmjoPnY3ZPy96YOibGXobMl17mzZzohWq7VHHhxdiXMGO82pyzO2c4L1
kQcu1aUyAwF56lBDxcQoB2CCkq68rFPBZWjmssE4cVvaGUX5QMT4Bziq8YLNugv8xrbK+w/g
bybKIo26tj25zs7xl4V2THSltLzzpRtes3Ocwuqr89Xa3ZIHXBQtertaCiyLsOzqEBgxth1X
TKuT5eIAK0asYncV3+bDiZb7e0YuQIVk5b93TrrHqIUu/8fVbjbMAQVVLAOP7xySY1Rqxsjp
uZKUOyiFJuHpXdkt/WO7cxNLF8Cgr7rsAzBQ7YoTmXhxRi0cf92u46Pj3ixUOEu/cTP+q0LT
BiYbVpFo1mvLcGgkpGyVjzZYdFp6S3ZXURRNjC9KgJ+OYu+T49XUh+w87Enr7vjhlDCKrE0F
qDjlCRl4q988XmlgiYMWl3SnqnKCIPLW2smSsZeqn4d1Gidc19eHXW7EaNvxdPgVvjx+frjM
LPsoLjBvOxV/U6L3aVUWvEujYqUf0EskDDseSuHRgLmnjcIcQEWfCktDZ/AlrvKs2WxdL7Qh
tyt3xkU69nCy7Wq4b0P1sRp2SupYPGHYL8y4GVcnjPWR8C7cBE7rd7ujTlwcs+nMy2gInl1U
TeEvSe+zfmrQ2O8qsVl5M1lyRS1nQk6kyNXpho7U2VOkW8czDlQQ6PlLE4i6ycgf+uHTPi0w
m1q08mGwXMczPgVzY5+GbHjXsvJuYm9/uza7aODJ+70Z2dowwjGH1q5aus4MLIpVAFO2Wc0/
qGLXE45pz/dvp0GIsOK08vWEyyZ+TYd908jiyl4+DOWsfDwMI96LzBdrvo+rTbC0acWTeTAH
yndJhKCZSwmjbUXCQSew2Qe+oXbzpmBt2po9HMC3cvTh6jwZxxEA2BnygdVRlRjWSJTWNVgP
H3h+mG07mUtfqiFDtNwzt8c2LE/Sd9SQSmlOKcW7urQeag+JTwjrMY9i2vez59LYEp5atgPl
1/nmpgmKIr6Els+JMVfJ3fVOb/dy//2y+PPnly+XlyGFl2Kt7UKwgmJQQpUtBmAyXMJZBand
GU/I5Xk50SwoIFZj4WIlO3xEm2U17AwzRFRWZyiOzRAw/gkPwaLRMOIs6LIQQZaFCLqsXVnz
NCk6XsQpK9QTL0CGZbMfMHQvQ/iH/BKqaUAE3/pW9kJ79YzDxnegYQMDqWd58jIkOoRGn9qE
9T7wSntYdJelyV7vYw474nA5ILRS0S7HEWlguY96hMYuX+9fPv/P/cuFysOHUyRXIMm2gK1y
6hYYP8sqoT+ylFOt/47OYGt4hnuICkcWo8sHYWF8BENF+jgB6tByoQ9ssVTVHhz8hBnlVW1N
e7YCDnP14d2adVyEG8t4Y5bGYw4DvT0gmVJGgMyo8xPCFg9zopg4RWWIOm31ihBAVCPB9oAW
I8W1EropqfHSB9cN34DdTD99Qk5moPfTfllYp7xmsWFZc3Y9a8mAtSxTX191vhRt6qAJ1hox
Ra9AyzPBCc+iiGfG4IqUstiRi1OTD1sZ4QXlIF5JRDv7h51MYV/BBhHiCdFZl/a8BOGY6hL7
7lyXGsCP9U1tAPV9oCuW+Dn7tGUZlyW1QSOyASVYH/QGNFnY3YzKWU0n1paih/IoR+nB6jwt
zMkaoLCdshzvFKjeaDTRQTRlbvQq4SV5GYHtOTHN/wtAR81jDad9D4IaJofjuZApwJqcDPMp
GdKkBch478ETTPZNqx1IiYHYLWszzLvk1CwDo5VJmcW7VOyNOmNmKMg6l8rAunRFOUdTvsy5
vmWFwASnEwWTQUiS2OSpEWtdcWFdsljsOdc3x/0ZtsVWnwmBrnlrc1jzteU5Awr9nFVkROy8
knbxVP4IIeMUIXJQtcaXS5T21mdHvv/017fHh69vi38vgGPGKEmTd8lQJp4yRhkTAoMDpZEy
zogZozVN0KvQ1r9SkyldKfqEO2a+HYLwrom9gFqTE8kQRZ1oB8Y3JMBjCNLvZMsq+nh+oujz
L/b5dokCBNuDvf6LbrEYI25SFrtBo7/GnZBjLo9f1DPGo/zVAK58h1FDJVFbEgOWZXCih6AP
f3uzznnswglHpRpQhsUWT3oiGTJnzNvVBp6zzqpp3Uy4MF65ztrCrXV0igpKHZ9ohijldJuB
WUgvhF8sxbEW0EIFmGhmZCRaPZcmvdKNrExKsvKZX9n0jSgPhdZiKTj2YLPNpAQA1drgJ/S7
aXh97kRT8yJpqCCiQFazo/rhYU9ahFjekAB8tEvFj8sndPfED2YueUjPlnjxoc6EhEb1gV4u
EmtZ9hJ3ALMwm/WSZ3cpxROIREe6WtGVelgKv85mu6LyQGdgQGTOIpZl52ni5RfydZYBO1dg
OQgdCGOclAXeBKnnJCOs2+3MPnH0oKPfFkt0xo0sairy4x0/mwUmPA/Tms4WJfG7mr6Gl8is
rNPSYiciQQu2QhbTAegRDw2S9012grNtzo8sw8D32nC2KT/KGy99XpPz4KqgEaeYadoANdyc
/PcsrKmLQcQ1x7TY6wcEfacKAWZ3Q7oSIEEWVeVRdRKUQB6bgKJsS7NwPHfExWNlR1D2c5gS
o2c5jFZtjkDOzjIlog6tec+B5kjkaVSXmBDeVjXeH9TcWFP5IWtSOcc6vGhSs2tl3XDK+w1x
FSvwqBH4TRNmCvjWsqh4w7JzQdnlEo2ZlKNYb+AApMxpFQ3TJsyOgOZVyFusyL4y8D5FNDa3
VUlRoyeEPjeCoQuACZO3g+Z0ydPKLC1oS0pSNJzZZAXgeCZAqHOh9xuqqrKDAax1Fxa55vAC
mYmU1rOQolfPO8mstlbkrG7el+ehxmn3U+DGvKvLM21Ls1kgMgTntn0M71CS3PzmgDthVwlK
R5OSKE3zsjEW3Ckt8lIfpY+8LvWxGyG9oFdJzzHshmoeKzkcIFgwacMhNDigh/em6/BLp2BZ
JVQHOWqHvvoRk1oEXmn0m3Sl3EeM0FLLajNBwags4/REajdmVWaZalRXvNT4tgDj1GjcVKW8
uwSCztBSpurIInon2jxeiF2PEGbH0UsVkFc1anSZJb7plZ+f/e2L+Pv17fJ9wR4eXi4P92/P
L4v8+fPPbxd6eMWh3mHKmbtQq+X/VZhZ1nUQlQIpeowBX+7B9NaOtifWQzwRYRjBIP3wCIc+
K0SCQ1al6HNoJYD/FrZUJ4gHzR7GnoluH8VG7ZYv+vzAci6QCLtqBk1FePX179fHT7AGsvu/
tacj1yqKspIFniKe0q9gEIttlyH0SYqG7dvSbKz2fcOTmnXVng6nP44hiXz/cbleO/Nvh7m+
0UujCyxOOO3H2ICQpk8A8MO6BHbpn6WQNHlO5ucCJbZJozs1oHUPucbCHaKtfn9++Vu8PX76
i5qe60eHQrAdB70FkzVR9YmqLrswK7UqxQD5Pq9s//z6hg7n47Oi+EblTbrLu5wO7jGQvJea
U9H5Gz053Iivgy15wHTFg22Dbmpa9u6CH0fdYzQjObpI4MGOZlxeoZ09/bVCJPU1UG1K+h2t
pAxr1IcKsGa6/REfChUJnxujaFIT0yZLuHk4IilY4TtesKVU7x4Pqon25rKHHj0j5IjR8ihf
+ZargokguEEgz7JoJ7UJTx8mTnhKkxixq6VnzCkCt95pNqt97hZbUcKPvOVp/lVUhsBO3YdD
SB8eq0Q1+2ArHlOsBL43m4EBbs0qjDRm3tS+l5iEkwrMdsUGs4GpAofoIYADmfMnz0nleiAa
EkAZwI2aPGLqkZpuQoX2fZl/gJmvzHZVR0rblqgpCZ45LGHsbch4A32DGz9Q34j2fNGnNJrV
XwhrOQVvTqEaiFtCm4hhTgwTmkXB1j2ZA6KkGzb5PfjPrFtlMwt+qhU2ZvS1k6TCd3eZ725v
CJGBxtMvMAzpJN8I//nt8emvd+5vctOsk3AxHAj+fMJXa4S6vHg3GQy/KUfycs7Q7MqNgTAT
0/b9zE4w9QYQH4kYgwum5HoTngzCPg3twOjzBYVig4qne8VqIUD7Eomktf1IVreE3jUtpLU2
aVUpceEw2nDz/PLpq7FNXOemeXl8eNAODvsGwtaT8Hq+xQ2IzpZFUyMqYe/al43Z+QEbp+LO
Wv71XY59NEZS8o6cJo2qw6+JWAQWbdrQiqJGeUv4XnvJ+4dIkiflsD/+eMPgD6+Lt37sJ/4v
Lm99fgF8bP3l8WHxDqfo7f7l4fJmMv91ImpWCPRcMpl27LLMfmId54rRTmoaEYitPi2GrQw8
5rZuAddx1SPt671Q79PxOlyI6Zp9POy+/+vnDxyZ12ewyF5/XC6fvmoxB2kK1XjdpUUasoI6
l+Ax+z/Orqy5cRxJ/xU/7kbs7Iqkzod+gEBKYpuXCUpm1Quj1qWudkzZqnB5Yqb2128mAJIA
mJDV81CHMj/iPhJAHryDrQEjTghew9n/l8WaRIepGy49aFoE2BPmy3Ww1pwha+RJwY8cVHHO
1BuhmKyfwNoed9MQK+JTwVGFy7jQFo+Sap3e9OeeTIHV5eUp0cpqRKto0Bg7w6b3NoreaiEI
pnLlAHpdSrty45fs2GpdaDLhChX26NMSOSFPOzg7prB8H+VBy4jIJTmntH7YxTbRgRSl/Nyh
qiOwQ5HhTwhyWjQtRd7HLrV/ULbJLDfV1ywkTPKshVHa7nMYqXBAM6Os2EiWx+1+m2iQ6RXB
goF8vsuSFm3kEOhr01x5LnBJ44u3ydmJrMsNDRlo9W77qZKnIVawve2qAFUeurhO0fyNyl4a
2JkBA6TBXSWvVyzv8JIOgs6RAlstYCThUxftMXBodAsL5C3GUvHoT2mIDH/iT9g2QTaIvY6p
bloxAcloLQeGmo8wp3aJJeKe4srjg/dQoq91aJ3JypM/P71dfl7+eL87/Ppxfvvb6e6bDB40
ffh09D/0hbOUEKwre0U/Nmnmua9XALIVBxfw1wvVl2FfJ58w3OJQKI5+CKynEEXxKvoNbLV9
y9Uu/Yw3h7+Fs/n6CgwkdBM5m2SZp4JTQ9vFpYLdAsMB658oAyjn6ZCcOTY0gKMKkgiWnecx
pa8oE7N1RzpW1ogCQQ/dajYDmNsBPRckgXDu4WdsW3EPT86EKefhyKSJHyRdUfx1uJhTxAXR
EEjuBHUhogH36l9r73dKTxW9MYWfkVyXR6k87LLktkoUT9K7pGUe61kLptNPjBYRDdsrZWVD
OMmgMkRadSMW4cyIh17yBt1wJPgYqEJ5jStJs1zaUQjUiwJsyD/fv6BvAPf4wZ6ezt/Pb5eX
83t/d9Vf+tschX798v3y7e79cvdVe7wCOQ+Sm3x7DWem1LP/9/lvX5/fzk/vMmaGmWYvjMTN
KgoMoxhNkGqZL5OcP0pXh6r48eUJYK8Yt81TpSG31cr2xf3xx9qeDXMfHISJX6/vf55/Plut
5cVIEJxH/nl5+7us2a//O7/911368uP8VWbMyaIuNpEV+uTGFPR4eIfxAV+e3779upN9j6Mm
5WYGyWptTmVNmHSFNykVS+oMBwS8kvhwNH2EHF69iGE+zg2l+0hac+vpqPwMjxNNvbPJ44io
bElDBjGRD98eOUPHBFFJkqKGDAKQCJjJJ8vST8dmAPl14qS+Lvk9GgCSX4hj0ZqS8EjseBLX
R2sdUw8xJ48pj/r2c1mTRh+6ctUxghpKayY9o7++XZ6/GuNEunOy3hE1ZMypb/ltyWrSBCet
k0f40+HzPDMNCh7htCqdfTQlBgbFY6H4bTmf8jmkrNlROIgmottVe7YtS0NIPxap+CRExWqX
hraxZV2klo6yyZpIlCTqsKUFQC0oYRBkGFG0ClKPoRXTeq5jNTOQyz1FLCu8tplyeo2dSeY1
e7yS+Snd1swymB0qJm04Y3y9mzJt/cie2i8mbtHIe+Wee2Q1UXt8VrV0neBgpUaxx3lcm8K0
b1M0z9qZxgNpksWYoBWe9JDjAw5mJDpL2kU9Tc0xtaStD6u63KWFfQh8yPZUoaDtoPOj5WqG
z5FjMu16OR4ZJwcTVGHoHm0dTPjZbfOSVCU5ssdEfTAeEeUyiB+JbQYTC8NrWeqfI6A5SC9l
2zIzI/i2uZ1glYDw+Wir0bQpg2UWqfToT2GyfmoSLwBvZQ8xVSV5X4trSJYIq2GQbBYLlR8q
2z0wBrwVj9tj03gOlFJRs9vnR0rdSnqFyViFqnu/LOJQHLMFrH5URwToz4y+Y9kdf08bcdTJ
UyunBjRsm5k3EfsKV0N+nzTdjpk6ctVgxTNSjHIaRHs0oYkFCK9kKZV6DixasXP71G9Dh7S4
r9igaTPuTyZDHQ93jONdZOqxSCO++CjD/jHdflq2Icqc1sM8lM198gmaM8s8UkOoVR0d3R2p
oXpKCuoSQmv3FM1sNgu7k35zcxLIkyIrqbVYsU/bxtLUzMVkavWjrgwWXQIbj/UKUPGkgH05
gZWtOlIPab2XjmF0j12uOQ8B/YYiG04bx1MdpM3mt01X7+5Ts2F71oFVtiyj6XQFZX48rww1
2Ww/mZXV4D5Gc8aj2ifRJPlqqYaoUZgKZJd6AkeFLqlWAD0BgKJJcakc18KsNa8WXZUu94rW
4taktbbiSSVBrjxW9Jf1SglM/Difv94JGSX5rjk//fl6gQPSr7vnwXTeq2GmbMBVyHflmQ1V
ra4onN2el136o7Q07XZ18tDvlO58yutdBgvXY61GtsWDRbvX/XLo2vjH3aqQAf8maLT1iWLy
GoRXS2jSPJDmoCnMwaSbih895GkvI7bi1Fg1+BN7JisfeX9njN5cvZqYefUWbl2VVrSUj15Q
0JugzooeejlsQAydwvQwothlBiWChWS1MN5BtF7ekLq1RmhmpCTNrqzqZE8rB/dQOY1dc/6B
uQdRb4+iZ8ct2awHxOat/6AyWDZVdtwTZa7LqFOb/rW8qBoZJXG05Pr9Ew1zeGYoZ8EPvK0H
afz+aKxIPRCdHsKJxBjc6glcJ6Jm7ffLoDYmX/jRq2t9/uP8dsYz/tfzz+dvdoT4lHt8+WGO
olq7i3d/6XFbRnZyBxHTetljRbRCxZoybrdRm/l6QTUFbKlLZQE2ZQmepx6GLXWYrHQRzSm7
Lgdjh5S0mQGl4WND5vaNqMExvcAbnG0erNczsjY85slqtnSu103uJqQiZZkg6eK84xWZN74d
4YOUMLWiHb5gdFPvkzwtaJbyNUJ3UJhXwnRjYH6GFxvZ/T6xJB3kPMB5nNLlQl4mglm4ZuiA
P073ZKYtWniRnIplOXPvgwcmeTI1AGULMgaZ7okvyCrmOQiQ/Ys9lec2XgW0Sx+zW9IWtnH9
qGU1FCpZlIXnqQGTZ+k9y7qGnAfI53m4CoIuPlXWeiYZ62jh5ofn7mVEl9dgd3tLZupZ92XB
yOZL0WnAFM8/7QvTAKGnH+pwSizEtAqoRDYlitqmGf4EyU6EM/siWPJTNKNntORvfKylVNGj
+l7dBVzvesCsNmt+Qk9BnkUTQ6aP2hP4zgxU002+aI5bEmwwdDGJAVoKaxfNW643LmtgpHm7
zsnp0zMtla+BSh18B+bDKAh/O78+P92JCyciiGofUR3fD9pllsg2clEF3RMy2YWFC1oJ3sWR
HeiC1jNfidqAjkhhYzDOzy+X1YAk2ffEIMQT7UR0Kpx5sVeNKYp+y6TK31WpRMaVaM5/xwzG
9jfXO7wsR5svaijlTYhuFP0sWOKgENcAab7/AIEX6wpCSikKdEh3gPlAVFHQpDl8mNw2rpzk
roBhN7gdvI9cMA0NQm+bBKEu3zXE0K6+sgDm92qv2vaWsgM+3+35zqMT4EKv9jsAxl71Q5Li
CmS5WtJSp2KpPfr656gD+AFiz5MPENdqKgFXR7hEnKRjyWvdpXLa7W/qKwVOq3TG/iJ+e8PQ
HNAB+7jECPtLiYa3JRreluhqcyWp1Ub13S0NBFjVjbfkCcJPcr0WgFFD76bkrk8VBRmmyrXa
TqbvFfCti9pyZet406jVkozb5WL83YVMvXLfko7eD7zJrYOIDuTmoJaU/voEoxvrSm6AmY6f
K+DbVloFzT/M+nTrKr8OVpQ9j4ORph0+1kfrrsQM666vGOvoxvmmoBi4pqwTn1juwD64QjDQ
LM5uSbKgH6Km8Fu7FaEftxDRrX7s1b10Dachf17AJJcD3wWUJVMaYqe+aFaXVC/fL99Arv3x
/cs7/H6xlEtugZsPKXjpnwseBdBsVUZ5A5Memfax4GQDINd67UU0W0RX0mIrFS7Q/kYe4Csu
oDT5ehPQsXttpIjbBXUDNKDqKjccZLDqAWQS3q1n67lNzfMJOQUyq4SwQxsO1OXMDL+e6pTn
M/Pk21Np7Hq2bG1qNlLH09GAXs3JFoHWUoAl6fBqYG/smL0jnYz3PLLNqJtIzabUWGE3S9OV
M1KzkWplrJp780GBTQMn4yuXrMAbmjqps06EjGVifLeetFV11BzPh33CRk8/wBBVo2JuJic4
ruFAXwVk2HvU401FpQHG5T+XqWmimZwkh77EZJXgo9ZKKpM68rike9KUFXaLaCJy+N5fBaWP
QiQd57r66zk1d4UeTUtziCFRNvCEqoqpyMYqIbrmWKMiFrS9ZyER3cNSyJhJDsYpyNp2QT5m
6i9/X3f1qcHQ/Tqhy86YMlpZAFuhWIyphLTyny52sDCbShNDihi5RFW9SQKKHC5mTnmG6ga+
Ag0IO/8qT7sKbaNgrY7TkzlzYAE/7Jxt4h4X3pZTlmXySn6nGxJydEs5SLe+q986KRLBnNvV
JE9OoXu3V39mtGN4yVxhiF/yFhO5a7aK2HySIpCdi7gJd1oMSabN5Uc++T4ycFczu76KygI6
r+2VaksAv14F00RqoK7WZGarzfW8Nlez2tA1ID01jNw5UbzNgiIuqXaDjY6kTl4NFJ2+6h7Y
9h3pSN/Qy7EB8JzNBgDzZgys5X4WOW8E4gBj1q0wxjjj1d62VRw4+6QIkU2zIg/rKLbwFfr1
QB0NB6Cmp8wT9h33ycLiNhXNhRVmSb/KaSdc5vt3xJfzwQ8BoqiFbVGdYLLbD9hDEiqSXRfB
SnQ9GQ2cX09n4U9nCl3eDJ0Ht0PDW6GszpfzmyqNRyMhO4GbzyqaC3SMZWj3S+gvsgUKPe0p
ufPoehJyWKS79JS401BRu6rmtOImYrRuS8lRJ5sqYFXHdulMhuCbNXYgzYiYWyFZKtSLJ9VN
pL68rbYDxPTU7QIezGYCmfSHi1naMexHblg59vQAn9UnyQ6s2k3WRR2W1zM+LIMlmTN8WBM5
z2XGV3NN/Tku4esoIJJdAyOM/B8iP4omBUXyOmoo+oFEnyJBkeMkpMj1fDYhbzBLqk8Q720X
YxVsUvSJ7FHPRQCMmuqQJrRvIQRk+xxf6CitzDRLi7Y7cSskjJH550/Fg/36OaAOj6JKC9wW
TLZxNSIu/3h7Ok8fQqWtKHq3+2VTVJRgc4tITk2Xgsho3M3Jn53tdgqQ2yx2kUAVNXeMbLXC
wNRetX/49/q6iNkpLXg6fNmT073y7DRhPHas2rrUXdPk9QwmhENP2wq3tUmxpOHO0luo8jGb
flPHRC2cOXmVDzPyIHxZKosep/inZr2YzaZFKSqer/p60eOTxSrEb8OvoJjIN7h5XklH9Xa8
bbEgsAvk1HjvQ6kQDd2KK6kXMNTr5AoAd5a9NEqBXv+4mFUqGgyxRlt1aZBo8iiEkxPdInV+
WuVSazjl9KavvM1XKaXNq3iimUyXXq0ancibEQNQJavJ/QMRdY66uhLuyMib+2ljy13zw0b6
XSrr0uUXB71o8Nyow0DNm6N1MOtFzRLalB71/ZdNTi/Iia47tBm1n/f92hqaQ4d1hHMir62j
1ED13KRqfkUNX1UCNPeToZuaetp96IbeuBBmDYcGDGbTBadXz6DJkH5pjo6erojjrEEnfNJS
EHJZzh1dFOvm29kNhvHB0mxbWn69pDnj1hO3ZrBcyQ9UC8G0YLD8Rbjo1I8wYDEhc28bTBv9
OXDaQRb6C4SVz/2u7zapmzTJTuky+T7SlZf2284li7xHtzS9cYeqYj7JQi0TaUXev+D043n8
oL4y5RIQrXKxV2mZ09IGyrJg2sZQkK5V0tIMfaRorLINdiRRu9KhmzSPNepkXQFou92Xy/v5
x9vlaSpC1Ak6B7bV8UaaUs4mVJlO1RHWKEB4WkrwyjQsJkqgSvbj5ec3olAVNKi16iABXTlS
K6ZiFsbNlqKM5bDI6rEHfaD5OUhwuYPrlLFWVumHvsfYB2iG1ZvZwnx9/fr4/HY2guApBjTf
f2jfueXrHf/z+cd/ovulp+c/np8Mt56GiFLlXVzCYC+EDtwwVtpm9ypd/dOYuPBpOytjZs6K
k60jq+lSv4uJI2lxqTD7Fg+BabEzJMOBY5TmxWYmyRVmbqY5WiITFVE1lMrIdAV1UES0doA1
3njlMhiiKE1zIM2pQqY++eUwqKJNSzDuGpsAP+nsKBcDWezqyXTdvl2+fH26vNBV6uVuZfE7
rkOQmPQOanuclGQQ4URDazfqT1RqPgT0Fb0fkSVVLhDa6n92b+fzz6cv3893D5e39IGuzsMx
5bxTtmtjbfAaXmTlo03ZMXMjPZpL6QOIlLHh+kk5Tepiy1A5rhjDO5NClJnldvqj0ir/c/+d
t04drI12X/FTaAxrStbCgYCKrmbmk3SVBiwcY/71L29+6pDzkO89QrTiF64dUa82Ok1cpp68
ooe9u+z5/ayKtP3H83f0sDcsSpP+y9ImMR0/4k9ZTyBM7Kc197itk710C/TbfCzU7Zlrj8ij
GgGxsund2hafYTNjppcZpMFkrhnf7W2kfLN5rE2PZHo7sdQkRpq99BrsUVOj98VEFVxW6eEf
X77DbPJMfCXMlEJAt1thgtS2BdtyR0YqUGyxTR1ZJMusCYSkKq6HeEC2EPWQpx6OVkCwSyNA
HAGGX8HhkRdCyt1+FYqqNiUIsm3sdU4fTSgJoRdV97VxVzJQ01L1nCVx9Ex6QlsZ65Oe93JS
1Cx3F2V5yAV59lRmDcZj5OWxynwXCT0+uoo30UZnH+U5ftiD5Ehrn78/v05XF93WFHfwFnmT
zNLnXUn/Bmgl2uesf97tLwB8vZgDXLO6fXnqI4mXRZzkrLDssU0YjEc8wrDCNXKlsLjFCXai
5oiJQ/+2omKmHz4rGSaEujS36jOR1hiGoVaX/NoBhWyGF5OP24aXqa6HxuabNKmyRzcHlsXo
cy9KThldkNiqMp012pBhRsQ7Y3QlLRox962R/Ov96fKq5dxpmyhwx+Ds9btyY2K8q0jWTrDN
nFS40ADb9YgmDgb40dzWh7H40iDZn3LO2mC+WK2I74EVRaQe1ghYrZabiP52tVrPKcVJjRhs
1BxyUywC02G1pqsFFhUL0CGe/Y4mAXWz3qwi6lVGA0S+WMzCSYZ9uAiKAUsK/B2FplIUnBLN
EGVxbIij+lYMY5ZaRVT0ZEvd/Gg5FcS0nR31sQm6DOS2htor8E4/ydPdWC6gSIKRArpmgqqR
4R7wAQuGdNZ/1NfulGyPOAO2pkEaipV4l1YkTceNPJGe7qyaKjOgrkjoIBMoONj+VGQkU2xF
7nHN0V+91RVPKbcp6vpil/MQG9g4GuiLyNwZLDjjF/Mw7GKyiHpJEHVpyNWpOTxS9N2pnGb+
mtI6vqWg6HHTR9fHAIqLkRxAcD/mpjyJ/Hv0+IMom6w9JJtuPQ2u+u9OkN/YlelzFbjZDJDQ
hIjHSYRTTe7hnqKpBbz3xjX169dPmrjNovnCE2FWclfGdNYE1x/TNmdzj1P7bc5hpZnGUzbG
ZujRkotZRAbThN6s45m1GCsSrfYieR7/I0YMKVnCLqJWcdniTY9AX1BOb/Q89Pfh8O9bEW+c
n27z3bf89/vACd/Rz2YehZG5NOZsNV8sJgSdpkF01PqAtJ4v6Hi+GNAh6HTYKZvqEoyQC3nL
oddt/dSWL0NyNxPN/ToKrKgZSNqyBe1c4N9wODmM0dVsE9QLc9Suwo1lmg+U5WwJ66r08MBq
BodJagsA3GbTmiml0tSc2cGs9f0Ni8lJhBcy6gOTAksnW8ShzcEbEWnAbJM5KhvMnFSS4pRk
ZYX+h5uEW57Wev0QE45vZ1mN8pFTeHmf0YYLT/EP7Sqw2i4tGMakptH9Ja6Th+m2xfNh3q5i
9zMVqsT9wmBzNHj3pAjcSBfUuCZoeDhfBQ5hvXAIG0tUQ/EtWpKzk7WbpemSIOdVBPueKcoo
K1YZs2Y5c2toskFARDfrvtrmSdF9Dq40h7riFKym26NgR5AarBmIL7/e5JTsCLINnZxSSPtU
l26V6mLRLINJMXtuL+qrcppa1eHK7S2YVpCJTZKDpMvLeAgbY8koyNQLmfP44qun4sY7qVvt
uAAkQXTFRNMGM0OPXmqE8Nk6sBpHUgWs9dQaicwcTgNOK5x2y2Bmk7RKSNs3/V/1tLt7u7y+
3yWvX03Td9jJ6kRwliVEmsYX+vL/x3c4lzvixCHn83BBL+jjB/+Gv91AayT/NX+7/M/zi4wB
J86vP60LAdZkMLarwyRmpGIkn8sJZ5snS9OiQP1293LOxZqUWlL2YG+wVS5Ws5l1rhM8jmZX
BiGG161TnOR7JyrNMGGEKSycPq83rdVuboOo4NnPXzVBes3ll5eXy6sdt1oLSUpq1UF3aPYo
l46hF8n0zXGXi8E7oGrPwVM1uuuZdp+Uurg+5BgOfy20eggTVZ/3UK/xxmnCdMQ6u1A0z4zW
2XtthjH5Rc0bejwvZkvLqgUoEXk1AYz53HJ0vVhsQoywY8Y5/n/Wnq25bZ3Hv5Lp0+5MO7Xl
S5yH80BLsq0T3SLJrpMXTdr4NJ5tLpvLni/n1y9AihJBgu63M/vSxgBEgiQIArwAEjqprBLn
F3OPXR9idgJhNCkqi6aDDHZzPZ0GbFqybtklJWTzYDIx1z2xn43P6e9FQFdKjIxh629SaA+y
bNMGQ9aHs9k5MUyUngQEq39ODk0vbnfvDw8f3dYkFbdom2XX4FZhiCEqCmo/UeL9GOWQ1dQB
JAS9u0skmjCk0ki9HP77/fD446OPDf4PZuWKovprmab6AFjd51hjvG3Mmvo1Or6+vRy/v2Ps
c/fFo4dOEpb3t6+HLymQHe7O0qen57P/gHr+8+yvno9Xgw+z7P/rl/q737SQzLSfHy9Prz+e
ng8w2lpJGM7nesy+k1vtRR2ATW1O6wFGp7uh36S5MzGylWfldjIyX+V0AHtV6FSG+h4dRG6B
aNaTYESWOX8jld4+3P56uze0o4a+vJ1Vt2+Hs+zp8fhG171VPJ2aZgruP47GZjSiDhIQDc6V
aSBNNhQT7w/Hu+PbhzEqmoMsmJhPHaNNQ/2LTYTeDnt9JwoD4IwQm8mhsyTyJQnbNHXAPl/a
NFtTK9XJuXJpjd8BGROnZV1UIdAkmCjv4XD7+v5yeDiAtfQOPWXJYwLyaCvlwRPbF/UCs3Tw
Wvsy288tT2zXJmE2Debeb5AEZHIuZZJssJkIZnVL62we1Xsf/NQ3bTIhVumJvlFJ744/798Y
QcEgjyI1Y2hHf8JoT0x/S0RbMLvNvWORTpSMDL9hWgmyNpZRfTFhYyVJ1AXdORH1+SRgbbrl
ZnxOn8ohxLOdFcJaNl6wT+gAQxOKAoRPcAqIOd1yQch8xhW7LgNRjqjHp2DQH6MRn4Msuarn
wRj7nTMvtTlUp8GFepdNjNMBF3AvfSVqHMw8E5iv0yAoK/Mi3J+1GAd0R6kqq9GMneaaO5WE
1vT2q9nI3A7YgfBMQ3plSexBZ7Li0qGMDb68EOOJqUGKsgFRM6ooge1gRGF1Mh5PqCsAEP6J
bHM5mZgCDhNvu0tqakp1IDpNm7CeTMdTC3AecMPYwFjN2D0PiVkQZhF0fs7tLQJmOpsYLd3W
s/EiMJbQXZin2Ls2ZGK0Zxdn6XxEPBsJMcNi7tK59Vj6BroeenrMmoNU6ahrH7c/Hw9vaseR
UUeX9PW8/E1EWVyOLi54PaE2wTOxNmxHA2ht3oo16DijacYUQOq4KbK4iStqiWThZBZMja86
pSzL5zetddU2ug/UnoWzxXTiRdhWjkZX2WTsXZGuRSY2Av6rZxOysLLdrwbm/dfb8fnX4V8H
2wfMtsS9JYTduvzj1/HRGVNO/SR5mCZ537WnVZE6lGmrohEYNZMud0yVsk6d2fXsC2amebwD
L+TxQO5eQZM2VXfHXfnRvJKWaeuAz2pbNhwlGWf1QIGUaosCkpwgaDCRCGYI8Xx/Xa9qzvHn
G9wt+o9gU8psuLePP99/wd/PT69HmZqJGSe5LE3bsvDkqRtGJtzWDV6H7kLr52v+ntq/Uz9x
NJ6f3sBuOQ5naIOjHVAVGtWgiPi35egFTz1J0tEhhjWVPQMqqRJtytS20D1ssk2AsXgz79ll
5cV4xHse9BPlD74cXtGM44ZJLMvRfJRx95WWWRnQ7TP8TTVflG5AqxtaLSrriUcTlpWVMmNT
jrjlKgnLseXglOmYBFuRv21lBlDQwtwKnNWzOXVZFMSj8BA5IecJnfqVLeDWzNl0ZCjdTRmM
5kYn3ZQCrMW5A7AzbjnjNBjbj5gUyxw+c1EkyG7En/51fECfB6fL3fFVbbw6S6S076g5lUSY
FiFp4nZnbg4tx5bBWybsJbdqhanWqAlbVytPWJJ6fzFhw0cAYmZKABZhhJpBg2NCnIhdOpuk
o73bpSc74v83k5laMg4Pz7gzQ+ebqRRHAtMXZCU7SSgiS/cXo7lpACoIHYomA6eBi/AjEUSQ
G9D8tn1looKI1b1co4xDKc998l0We8Loq2dwww+1IJk3UhDoywKDOHl3iJahrhM15k0TBPcn
tJS6D0n9QCvtrtR7ql3GFZgcVgXqqpJdkH4UyR/VYfO+ccoHMXF5oa7uG7DuqSAFbpLlrrEr
TlhtrjD7MeUdIME5LRPvITbmixcJlItzurbq7+SZ0urd5jps7BHtTng97EGH1XZRGJEsTDjo
kGKDVCHPVL19Li9+JzX/+FN9ro53PSxm+5r2gLxNFmXqvR/hsgzFxXwxs7ug3HOX8RBjRCIH
sym2P8TjWy/b+joY/8BRUnTHuNa862KBWJ2ooj54a4NVYxGWaeQnwGNgDyP4HM6pr+GjSyhc
NuEc1R4H8mA1Ct9i08GQ92ftWpskDoVfFAC9qfi0AIgGdx1+mZerJVQ+2f5Dn4dVV2c/7o/P
bsJnwNDREDC9E0NHYTr7SiCdsYEin+6KhDzPUwMPEzRE4tK6ua7RUB23WutbhDdiLGmMi4Ld
GMuSjZgC9XSBnqJky9jXHKKSY5tP3VjcLBS3vJ9UXfWBF6ChUcy/cEQdBaR1E/v8LSTIGz6x
W3fZBusKi2yZ5OY1P0ybvcZrGWWIyXfINUmCy2peZmEtcPtAe5q2PPTiUIrwsss/OGxNYlZN
mNJhEnju6qm0mvB1ETaCuw6lMgKgnHbPbz4oRjQbGfiYAvf1eLSnYoRw+T6M3eLq8GpxtEpj
lkeC6K4weGRGJjTwZaBRaLyI5OVJLVzrb25rLvnAZQqZYuqvK7sp3crmluVfdAy8Cnfbioq3
lhQlXvA5gWYjHBCK/mWQ2+Hdsx5eESCBmQvDanp3dk9h8jDU7Q2plbNyPOOjPXdEbrggm8IT
5Edh+5wFNqdafbh89YplnW65hx+KCmOzGAEAVNAWnVnDk9BDo/FVulmwcsY212f1+/dX+U5m
WAEwTU0FOhOTqn4wQBm8HPxpE41gbV7hDf2iIS+jES3T37C9ih9gzBrkh13z4GsVxgQouUVP
4fGFu8GZ/fnFbz7HoEb4esD+VE6RxVKGRfOyp18Tpw6ZSzQOhKQyDAEHOUHjMmZZAS24ltiT
tSCR7A2kbEUuMOvcxwk6dzz1q1tgZ0MxKgOOYvHB+gQ8YplHlsQxkJF2ZFw5rpY2r1WHeBAT
isjrgO0dhKMoRWzGZ1lkhfyJhhpcGmFJByVQDTvR7X1gm6Kq1H15UoBGR6eEXBPVoAsq1ho3
iUS6K2j3ywceMkVNl8qXSk+yx5uzerA9xXcRLNQQku+7kBf+SbRJcNVEy8UZZUz9A0teXmjJ
JyVrK81ftFr22l21DzDcDzP6HUUFhp5nCqpYIZPzmXwqlG5r3J1ndIWyFqSc+ORIUTB9pB7k
QCXA5bbx5BQ2CRcytqF/OMAra4NFDh51nYR0tHuUq0wQxUlAVk5OdLJEy3rsVmFQHz+PiN6u
aqc2AO/rU/KOFJvoVC/h02QpsB6bVuruUlT7GZqckSeHr5w24PaWJ+c4OMzlpshjDJkNgs4b
tkhYhHFaNL+rUFqwJyvsgq1cYbTyE8OirCMQeUtBdk+eSzr0CuqKhISjeqzzsm5XcdYULQ2q
S6g2tZSt07zL4vw9oNuHsdRPtK8SMpgJWTQkvI9Tyi3Lw0NP+WvPmcyETmoflDZvSb1+8raI
koJQnlTnw+ts/7LR0zTXZRzSDujcwajsskU/MEg5OzSa1K4fy/rr1k/utuYTM4JwFmUdatXF
9DYsp+BNJH+cRahO8Dz44JswsXhr1PbOeAIMQr8wVmBPMe0ofD3TJJvp6LzToQSB+zoAhh/W
aMmdnPHFtC2DLf1IvZlkVosoW4zdqUG1SDafTRlVY5D8eR6M4/ZbcmPcFMHNv865piYXeCeY
uNcyqZQzehnH2VKA5GQ0W71L4Z/M/X6stAMKu8UDGivxtrp7lMBFo9TnJ8R36TnA1/OhGQ+j
S3EtytS6+DsgDFiUxoD4M6YbxFFTcnttWUgGFH560i8jJi37u+jl4QXTf8jzngd1BdLdhsO3
9WFm+JAIiLJwDrYZPn83j5JOlGd4moJX1DCU5Aise9tx9/J0vDPYyaOqSIxkqh2gXSZ5hDHq
SvqAmmBXnORaBahbEPUfn74fH+8OL5/v/+7++J/HO/XXJ1/xMnF1HacrDKvGCotuTr+Vlizz
XZRkJN7FMpWhV6B3Y2608wgphg6A32EqkoxAlo0R+of8KFayYON2l2RAhoJrl9skNY+qhXHE
ku/wM/qzP5UiQLm1mJAqNLgIi4ZEY+nefcerLRuNRX2pHfoYo6w5PGhsYcb5Vih8IKiqJEFm
ZG1WMJerlSybi9jnY64nsNqk6kZPTdbNSnvXfVKLY5Zy3sDpF5nT/aNeCeiGDopAxwdzvrbZ
yHc1dOO6ZOPFYZ7uutSdbz9uU31pPG+rIhumKqkY8ZHubr7DgC+dTtp8O3t7uf0hz+ttVVSb
h3vwAy9PgvG4FJanMKAw0hC/P4408o0Cd7QOuLrYVmFsRL9ycRtYwJtlLBq77g6/aioRcoOm
NH6zsReHZiNP8kj8wA6OF4dPlNSum429ogC0bkisoR4ORtWpwsomYQqTZ83mUw5mqPRHuG9p
hIHAmBHZutI7mmYLbRwG7eaUtIqBWaKOtdZPByUPPs1293V0pOGOi/DSU+Fiz7VgWSXR2hCF
rrRVFcc38YDtq+1shxLXFH/8IVl0Fa8Tc58WlDQL19E3XEi7yow+MaHYJg+m45lHdnW7SLHa
MvXnSVF3wlKKsM0n+vaVTcibJqT3s1L1/1B3TWJ/wM82j2UYiTYvIm6OIUkm5M4KDdJiIDbb
pV1qh+lCFHKKA6lqWDD8yGWMMTb4GyQxGxtymzYJiMdebsnb10O5gHbZFt/Trs8vAm5nCLG0
0Qjp86O7F0udOIwlLF2lsWjCOoSqdJfURUUivNQJie4Kv2SEpq72QSumSWbdcyFaqYK/czB2
mcbAzEECs7TxaNpebUXULvwFylukYe5V/v3l0NM0+o6pRTX4MPFVbOx7YKRq5AwmvNH5fazi
BuxvcAqaLX3LnRUec9EKDKWeyh1/Hc6Ut2EGAwtFuAHfq4DVF+N21MYY7QReWWtgQaoxLkRN
wsLXGAfX9FPifRO0pk3XAdq9aBpyZKQRZVEnII4hd7qqaeo43FZJc219P2lXvFAAbtqy5joU
li1la+nxVVKjfc9/86dEDE360+SaRCEyWGX5QgLn0hX9HG9PY2x0vmF7H4/rVd31e08LK6KE
MdTLRjXWuHvaQfiG9Vjot/Cyixrva2RPXG1x9zkHOuke+BkZbAMCFjUMCjdxhhriVbuLq2RF
JCNPUm/LV4E1mBKAve5COanVCFZqHSpOGEwS1Z1uxQJUeufA0wW8Kxe32vGqLItMbwqO4/SG
vyKq8Td141myhnKrlPcDboo89kkmjq/pCFoy1s9YjLZNFYeCgLuKKZyK0uylJI1lMo0kN0OJ
gj+NATCuPXgoK87D6rq0OtUEg1m2rn24JAeTDKx6/E1oUAabawbUi7aDQF+5weOZZJ0LVOmk
1rxolFBrBW0DEgWQ8RPJaAuFYIfpaluwZ0ESDiZRIzew5QK4IiEZJUHYmPGZt02xqqdEdhWM
ijPwRwAhce1UlO+WnrkU0EOpuLakqYuQ8eP+YKxbwDLOMhWqnagAhYBpzYukswJ0IPcThwJP
B4s1+Jz+gl2FphHFEud0myY1a6wgDcqu2WE9zC3VwLFcGcFBZL+pPoy+gCP+NdpF0hhwbAEw
0i7wfJSseEWaxIbI3wARXWy20cpZjHXlfIXqHUZRf12J5mu8x3/BSmJZWintPJhENXxHIDub
BH9HsVKkIdj4pQBPZTo55/BJgbHua2jgp+Pr02Ixu/gy/mROqYF026y45yiSfVK/gjA1vL/9
tfjUy2+jl+FBcpuTNoJEV994e+9UZ6ot29fD+93T2V9cJ8sYW9YdcQRd2sFXTCTeEDLVggRi
X4NVCgt/UVkosGPTqIpz+4sE7M4q3MjpZzoIl3GVm4JobRg2Wen85FYXhdCLOQEm6AHOSQ7N
zXYNqnDJrmZZnK0iWAFisIjNTW3gfYOhoZI1nt+rPjAmsfzP0o0wc3ei0l2uN8HdERocgTqU
Kxsmz4kzo6SiEvk6tiw6ETmy1YEs+dHIlVVALNc5q4geiNuDtVhbj1SGPvSZA4Ao063N2dJr
Pix1rw0s+EhDUH9mA9RvZT9YmTVqcLPqDVvKbm+NU5bkIE8mpMgskk1p9d1Vvp86jANw7vBu
7BdnvoaVoNsrQ5zU7167XGLCjOU12Nh/jEfBdOSSpei/aaPRONRTBGDYDUhz+mv0tEd7mUOq
TWgWQ9GLaXCqDjQ+/41KTpRgt1L3zimOC4eab77RMK5Y+wuzrb9nw2Hh069/nj45REMaBYrB
bCn+wq1Y6B106Um3CYplx0vg1tElCtJ+A2OWWx22hlun521VOKVomPcpUk/g7h9ozMkNBE1k
7CDYqJuEHHuA6fitqC5NTcudnKTmuVVqjB5nQiCBtkJasEL4AgeS84kRJ4pizmcezMIMumNh
yP0YC8ddN7dIzv2fs7GELJKxj685Db1Icfz9CouId2ktot+3cD73snjhZfFiwj0JpCRmRHHr
48CHmV74u/uciz6GJGCQo9S1C0+p48DLCqDGdo2iDhNun92sakzL0+CAdqUGT3jwlC9kxlPP
eWpHPjWCD39MGuEXs57kd30+tri9LJJFW1FWJWxL6TIR4qovcpt9RIRxCnakp2ZFAH76tipo
PRJTFaJJPMVeV0manix4LeI0CW2xl5gqjvmVQ1MkwLbIuXvLPUW+TRqXZ9kPimcL02yry6Te
UAT6YSaHUcq549s8QSknfqoCtTkmskiTGxmr4vStC7JlriIoHn68v+Cb56dnjI5gOFGX8TUx
TvB3W8VXW7weId11bq2Oqxrcd0z7APQVmNSml6C2n+JIlf1Aym6jTVvA57IVvFmJVHJLKAld
Kr3ud4tjG4FRL59pNFUSmgkqndVTQ6iF2xfULaK8lYRKpxFLvKMERo3kijdHdGmlaDacK4FX
C8CvjuIcugd3wsKivG5FCga/IL6nQ3QCBf5+mi5FSHJiu1TYiroUPOeropK7c+oon70jIBp5
UTyuMhBHO7sci5bd8Menr6/fj49f318PLw9Pd4cv94dfz+RSUd9rNcwej52nSZoiK675s8ae
RpSlAC48yXI0VVqIqEx+M44Y6OY0RS1W+NIn4XeijdrAoyu+5Rhf7TeUoI3sXM8dTX+KYV+Z
WCtW9MbsqU/lkzPiNSSeJgJccYWvWKIWIxFUeHU/apdFwbsT8Y5TatrrGyatMG5wQoeAA3H7
eIdBLD/jP3dPfz9+/rh9uIVft3fPx8fPr7d/HaDA493n4+Pb4Sdqss/fn//6pJTb5eHl8fDr
7P725e4gA18MSq5LBfbw9PJxdnw8YgS74z+3XfxM7XSHciME94Jb3N4A57lByW3iylDuLNVN
XBV0LBJ864YPN/PC8+bKoIFpqytih4wQdnWZSLn5D7LS97B5SKAp8LoGJTBSjbEdo9H+fu1j
79rLiq58D9IidzHI5gasCoU+8A9fPp7fns5+PL0czp5ezpRSMAZFEuPZhjBfHhJw4MJjEbFA
l7S+DJNyY6owC+F+AuO/YYEuaWWe4gwwltDw5C3GvZwIH/OXZelSX5o3G3QJ6MS7pGDSiDVT
bgd3P9jWfmoMqyAXTXmW6lCtV+NgkW1TB5FvUx7oVi//Y4Z822zADHHgMv2vM+BJ5pbQZ5xU
u9Dv338df3z5r8PH2Q8ptz9fbp/vPxxxrWrhlBS5MhOHoT0tABZtOGAtGGilwMOxSteSjHt9
pbtqW+3iYDYbXzgFDqh2v5jrRov3t3uMG/Xj9u1wdxY/ypZjaK2/j2/3Z+L19enHUaKi27db
pyvCMHNHnIGFG7AxRTAqi/RaBl10p+86qUFSmPZqFPxRY3rDOuYfkOjuia+Snb+DYuADlOZO
t38poyqjyfLqtm5JLmBq6Iq7nK+RjTtRQmZaxOHSgaXVN2fQitWSYaEEzvw87Jua+QYMbkxl
6f8s3xijY389IJ0B8BKK3Z5RahF4U83WFRG8NrDr78vevt77BiUT7pTfcMC9Gj8K3GWifykQ
HX8eXt/cGqpwErhfKrC6DOhOLkRywoJwGK8UVOCJEdvLVccudJmKyzhYeuCuUHVwOb0ZBpvx
KJI50hgmFe63jK7Z1fGE3PTCADy1nm0xvZ5E3IZGj3R1RpbAXJZPbl1FW2XReD5ywPVGjN2l
AYAg1XU84bQtqK3ZXKH97AHVbBx0hTDlQxEcGL7hwEwRGQNrwOZbFq4J8q3kypVD18rxbfOk
F2Nlph2f70moxF71ukIGMJJZ1AAbxdqCWXxbJayEK4ROVeFKdIdX4uPOSZHFaZq4q6dG/O7D
blEBVaUpmenh0AaMONvf4MYK3yjEzRiOAUoZcQlcKZLQ0/zzT9sG5KSNo9jXUSvrVpG1oP9v
ZUe2FDmO/BVinnYjdiegGhjYCB5ctqvKg20ZH1UFLw6GqWaJbqCDY6Ln7zczJdspKVWwD31U
ZlqWdaTylsTyDOrDMQKhstJ3l4pwOmhCgzHQsA/3e8KIPp6xpvA/vt0ocdkaeGiCB3RgSG10
/2UTXQdprO/Te/X58QfWi7S122EyydnoSxY3yoOdHfs8Ir/xR5r8jB4lOkaHHtWg1j8/HpTv
j3/sXoYLKqTuRWWT9XFVU90xp+f1nO7N6rw3Ecac797KJhzwtT3rG0kkqQwRHvD3DPX0FBM7
K39SUA3qtabq9mRAeb0JEg4aaLjrI6mkZ3IkMIG1r/yNFEZfDvYkLUl/U3N05bayPWM8c+TI
tUEMwyMmKxeu/v/94Y+X25e/D16e398engShLs/m4mFD8Dr295CJbFmnRDIIRN7anXBDhR1h
IBhV+NOQSHM21lKIxOuI3V2mpIltTIra/k5PhPv7nQRGdhTO6ia7SS+OjvbR7PvqUQCUJsDT
/SSigIy02ki7Pl2jRWyTlWWgChwjrCLPziqRYWmXpIqiGewlMYSS0ZrMf2lXIro5qUKdpkKl
xmyx/x2GVJi4CdvqeQ2/CQb1M2/JBGVnwkpmDOsVs8PjKNCNWLx0nBFcRf7xb+B9sjo7P/kZ
y31DgvjLdrsV+0bY01kYeayflPrMX72WbliWerFehHsJ/VgvxJ7EVcvg0TrrCgOTOlZmcCpt
+7gsT07EUqqMtoiAM+R5oCUVt6kq2y2+bH87A+XM6Sv7Bt1tDFYRBzv2pRED58ZZcSKAxBxN
sNs/mIiJ9vOtfrg9qJMbLAXf52l5AVqVSKSKXhRpAJkVyzaNZZsy4k1aIO5z6XEdhx6YRfRJ
bWPxMlxrC4KWGBgLqhrVpHKdCIFuj9lnJLsqAt0lLCyTT7SxqngmLOc5Ra6WWYyF4GSONeHd
KC9r4GZdaGsMFThU3JBKC1rB/g7zB1axIL76NCTNEuecMcEmaq6LIkUHN/nGsV6NiKy6eW5o
mm5uk21PDs/7OK2NWz31EuOqy7g566s6WyMW25AofjNBtOz5yUtOeCqrAI9LLuRsiQ7pKtXZ
LpQGZXz8o1SIt0x9JZPz68FXLKfxcP+ki4zf/Xd39+3h6Z6lx1Os2+iVNJEIU4d9fHPxyy8O
Nt22mCE9jYz3vEfRk0x0fHh+arlvVZlE9bXbHWkcdLsgWMaXmFcR7PlEQeIz/s//gDpdKz2I
msBthOGHEZgSHT4x3ENz86zEz4MVUraLYb7yoPheR1ly2lesVPEA6ecg48BCr1lND8xSiuqe
osLtWNmIUqKkMGs49FJYQ7ywxVArs2nrMsbAiJpqZfFVzEmAdQewJdYGbTMeMjmgFlmZwF81
Vg/hcUGxqhM7CAmGqkj7sivm0EvhC3QQTJT776jizE1THVAOuGnhkNAlXBhPQJ0C85jiotrG
qyVFH9TpwqFAf/YCrVEmHzvjIzG2AfwF1PPSXJJjSZ0xnCFZa8lp8dGpTTGalhksa7vefurL
zPk5Bjh5cGBx6fz6zD64GCZkSSaSqN5EQT0WKWBKRa4e25am2P71G1/Jc99LELMgR2PR/3ta
BWWiCvGLnRB0BsUCCy78BrUlULFtO8+NVvMcqBNAz6BSyzyefvruUPw8Uov94xHzDlii394g
mM+zhqDVS5xBg6ZSVJWkRRmCLOKmNwOM6kKCtSvYvh4CCx/GHnQe/y701o3SM9jpi/vlDa/6
zhBzQMxEzPZGBFvWPAt+LMKNrc5hMUI4GkiKSd+oXBV2deUJimF/ZwEUvJGhWjhQmxT5iwTr
L4tKhM8LEbxoGJwSQdcRKMBatB1lpEbFGfCvNSgMdR1ZwXRUEIBX6tEgzM/sLVaL8KRgDv6S
vnGJQNQClrzADeEQgfXg0DbmsmfERUlS921/emwdJM0mU23OFh2SxvzFCKjSGk6WAaGdlruv
t+/f3/D+mbeH+/fn99eDRx3hc/uyuz3AG3j/w+xrGN4Fggy2hJG5mP51yNjhgG7Qj0a5OhJj
5FSsob9DDQUC7myiSNRhccByECEL9AycsUhaRGCl0mAK4jAPo+AhCWXLXC98xrcp132MqmPj
f8XP7FxZjnj8LYbnDisjt5P64vwGY0vZIq6v0GzGXlFUGXBx9v6ssH7Dj0XCS55lCVWzARmH
LfUubmYo9liSJlkeh42/ThrGPwboMm2xJohaJJFQlhyfocoiPZcNFgq9NGOWM4ee/eQiAoEw
qA5GLLUCeLG0Vp7ZkEqp3NlHuCuxvltvxYkBwC0lNFJ3ul5Iv8i7ZjWkVbtEFDFbxA6GovE2
Ea9GR6AkrVTrwLTMDkIhSFWzMcOtga2uuQoTcesikgIA1fz3aMmsB3ruuJzALv1y5HA7MHJQ
nAj64+Xh6e2bvv3qcfd678eEk4x/SbNqdVSD4yiXKzvFOuULpM1lDpJ5Pga2/RakuOowS/t4
mjatXHotHE+9wODToStJmkdy4YDkuoyKLN7HFDhFH0gZBuF3rlCpTusayDkPoMfgD6ggc9Wk
fDaCIzy66R6+7/799vBo1KxXIr3T8Bd/PhY1vLrfRHV5cXZ0PmNaJ6yICo43rEtYBJI00yjR
lrJGMl6vUrxUBpOKYdFynqO/r9H1PDCTt4hafmK7GOper8rcCk7WrSwUlYfrytgUrMjwOtOZ
FCylt46p4JMpKyNkDVyvxMJOgRt6+Ms2aXSJB1If29cfTarvZ2eB5oxclw93w45Kdn+8399j
SGz29Pr28o63YbP5KiI0NYH+XbNrIxhwDMfV5saLw59HEpW+ykVuwVzz0mCiRgm632QWMKPQ
CNPQ0Am3CRhNRyIM2yS6AktR7WnHjXHmZ4qW5ZaJdTbibymRe2TN8yYyFXhQGNALcsqEQez+
98UNT8ghBMFI78hyY7AyS+BTk2qPDmb3p7k/JJjpznvG487HdnlBM0opASk2LZtQMoluGQlJ
LglnpqhNKfJjQlYqa1Spz3yhaSxIFFwLtYJNGDlRs+NkaZrN1uUZHDIaNNqk43K9/q0LG7pA
aoXnqutmdSGSENg+FUUKDITfM9ADGdU/k2RdmwyThUJ9wasQVo5r3aZAUbnqhlpvH77MuCWG
0/CInQB5Nx+IA7ksSBHyztMOMUsbZKYcuKbf6QGzZ/A02+7w8JY7AVJWYqhSLOCLovU+TqCb
XRd9taTEK79XazmPxn3wEy/J6raLvKMvAIaxwHpNmF3hoi5Rx0DV2ZVRjSDcMApzTFkKptuK
RMN4XeTzugmB0ayONqMTWDTWd9lzbLMBjYSn9BksrnmUQEs1sWhQYS2rjdMt93XTUUAI1WEF
J2mSNF7Xr3Kbm77Nae6yw6QXPy/SIipU0pmkhP2HyYJO1und4m8s2V9R8XJterg4Ojx0KEBP
H7nX7OTEfb4lUwz5TWh7NxduA9Nn8erj3vHibcqVc+mcsRIA/YF6/vH6r4P8+e7b+w8t+Kxu
n+65DhDhvTAgrSmrjpkFRjmtSy+ObCQpi107fQVanzvk6y0MAbcqNWrR+khL0gflKCo4Ib1D
cgcEiU0vD6cZrhPnrciPF3wvjRTaBoCfBMyrqESa/X1nhB/33SUe+86mFl/Wr/CWiDZqJCa6
uQJhHETyhEcA0/rSTfNFtH816NxhkI7/fEeRmEsyFmN3PKoaaKK9OIyOIS6CSW27yxgH/zJN
A7dLG1EGzvaCglG1WwozNyZ57h+vPx6eMJsDPvLx/W33cwf/2b3d/frrr/9kV6hj0T5qbklq
tmu9qGq15jX6mF6MiDra6CZKGOlQkSEiwFEIy1zojmnTbepJOg2MAD7vnUgy+WajMSAAqA0l
4joE9aaxajJpKPXQOTp0OaLKA6C3pLk4OnHBlEjTGOypi9VSANUKNyTn+0jIjKLpjr0XZSBq
5VHdgxbUDa3N3AVkqINDHrUKDQFNnqaWYWZ6GtcDRWYaIVMSpWjggAugqXDi1cOWHCdDzNsf
98jCakE2lTaJftcmylrJvjGYhP6PPTAyCRpxODUWuXX+2/C+LDJ32fjP0BzSgxOMbASYzNqV
TZomwCS090uQOfWBGTi9vmmN7c/bt9sDVNXu0GXNqwPrmcskdaAKlDI0m0zQk3QxAlkp0IJ3
T3oSaDNYhTmzk2z39th9VVzDqJQtqPZ+KUlY6hIHNtyHAkxclgR6SOBrnYVqoPgA3rwqwUNL
G3FY1XZ6TnJ1AxEqPGRkGiWE2ZHdjHd/gIVNr8JFl6jjVAKiX9JahQM9UwmfB3v4HF55ZWTt
mgxG/hLQFV1BX0dfu/SB6F4t4+tW8SLiGEY9bQP/RClVpb/ZKvywZqay/Vj41Gol0wzWzYWz
AwVkv8naFfoLmk+QJVmN4gfagD9DHtVeqwZdkO4Lr8W4CYcEazTSOkHKSoFo7TWCgfjXDhBY
RqtUbpp2kLF5lYvUvYntg5Xs7PNuseDjmq4xYwTpLQ8K/IPuSHTboRnUnQ0jmaBTR/wcrz0D
kGrEBi/YwO2eJTACqzg7+nJ+TB4vo6JOpwspKuKNQJNCrC+uMQa+1LJgmP2laTzu9PPsVOJO
zsnhbQH/ZPFp0qjOrweTv3VZHea/GPs7CdFdJT8VaCuZLwMP0AV724RniaaLDG0KvTFkuUJq
Pid/UkijxMsIXC4wlYRQ2pPRH27PpOpkDG9PyYjowp6QkSZYkcKwOPKroBYiOxLiKgqyX93C
sCfd47PI9vlDcQ6NXdnmvBVpvSicBd/blRt9EZWqLWvACNeeE9pzbkKAORbsdcvdZu3u9Q0l
J1SH4ue/di+39ztWNwl7N52QWkX3TJeO5m5B0622HITNFXoAkBEGZM5BMkH3lKql+utVIRNN
FGpBnDHcHh/YMm31HSQCndA/vyz8xMuiLG/ySHIHIEobpz0zj9PgWNxIHD9qp4gu06GeVehd
mRpFEqeHcNYCc//4y7jXxWWql7Fae6a0JioBbNiffYUb0stCEBxc6GhvtYJJSXEhbo6Re8Cm
XYu4AYnNr65BaFoPrYubZd/OsGT8Imsa7GKi4g7jNSxvlNYC5plePXIJbsd1/T+eHTjENOcC
AA==

--6TrnltStXW4iwmi0--
