Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDM4USEAMGQEZRQ7B6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C62F3DE9C1
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 11:36:15 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id t101-20020a25aaee0000b0290578c0c455b2sf22145740ybi.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 02:36:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627983374; cv=pass;
        d=google.com; s=arc-20160816;
        b=v6HQ05NhHbIRZ4cB66QEmJQGu/yTs+JK2a4aqMFxzr6J1wjYSUKDWMNtiCwQw7Y6Ku
         84l2kJpFC15FfHsuXJyRxgOcv0sXc/xa9a9NNtoM5Lqvm6bFfK4mky1n3hkO576ojJ8k
         a+lceilHofJUunXVK92Dkqic9MVNG6xbZNVIrPKYTm6ZZG5yZ+cy/SoN5YVrFzYfYWUu
         BV8wudEvk6lwCh/2DY0xoo8iEccZvmuA59b5ZieXqUvz9YovUHrtE5QuexEBVkDzAyKe
         Fi9wtKb6beDEAM66V3/kiMsjubydgsBOTzcuL+Wb8do53qN2cq80Ll8Tg5Q/XAQOcuU6
         mOAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ruSX5Cmo/w60s8nS39GM85NxlpLZ8N+wzQcYE73+0kc=;
        b=RwTkhHzIxVDTzNbN55SFIQxCz1x7n8huoZbjxz0T7wfm2KtYE1c6jgrV4zxYoXPSv4
         xoeNGDW7zeUUhDnPafyo4vA47ISwboztEiY//X9GnNMn6ptkcb57rSv8XpT9xmRWHSCL
         MLe1Hbg3jILU67x/dkLZg6QE40ojG8TeCUQwvddOIzglF7PvJk5IBecl2p4vaR2o7Dw9
         GntZBwDwHPlGERNDmzDknMy4auZcmV67Z+VPMOvl6AA0pUU+rTrmq9bZkNRTIH8ZHyNy
         ejDhDcUyyqraw7Nnwab7BakVLVDofGGxmMh7iCD9PtkkptUBJK5XY+bqJeJQet/ndyV0
         9C/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ruSX5Cmo/w60s8nS39GM85NxlpLZ8N+wzQcYE73+0kc=;
        b=pgq4YOo/soakQ12hVcLMC7zVoMcycpg9C1htgrHycJXTo5lAfqlGmPT8snzt4y9np/
         0qcDO7B+YQcohrcYqwWVnXRhPBLKPo4E8a9tCcU+dv9QOkjPogm8morJPui3BzhLyxQQ
         BA6JcuWBc1dKm+RhReCrz/6nAxBIvMfAWFC87vsQDFFfm1cuxAaERPKYkmEaVJVj7TjU
         LBWwq5AZ18OhnOLwjVCQp3enpF/uSTbGZekiHV4N8r+3iZnXCKjznFKR+CqYOSampcRX
         mjcKj/TXIFbCqSLquEMqqzfO9jzhM6W+IYpZyuLWxDPzQ07QIFLb8kRmFUyme4hOJHMi
         EyvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ruSX5Cmo/w60s8nS39GM85NxlpLZ8N+wzQcYE73+0kc=;
        b=FUKBzSmASQ1PA3uD+7OrIIDsJf7xcBTrlJYz/8QoWmCHwxYt36md+pq0rhYzkEnElZ
         RP/fXcjTJq1YaPyUVZej6LJQosuP+Re8rWK6UPrxN3hiQT74cwudoGQzpn4EqgMTbQSc
         jzP06g2wnhfOc/a3O55xpnBNLZeUca5Mbhgw5H1KXZ1789AJwdx8hhBkuHDjNDJ/W37j
         9fJK59Mli3Ex9M5HkmKPSK/7/3OFlhJqem61gX9R7KxWhoUgnzIE1uKM4FMum6G83D84
         rbIvbIDDHBnEWuzoKDOEsMBr6rdPT3JvQg4zet3WladYSocE1X4UimXeJk+I58ZPTyCD
         8AnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zOfC0Wc0Ql1jm71Aq3OCsIsNBs0I4mB/AOS2ZwNMGwL5lX0TJ
	ViJ0Uxu3JowQyCtN9YOO2/4=
X-Google-Smtp-Source: ABdhPJx+sTv/BXzwg/TjzHMM6sPknew9Go/BqqENkqzMMYBfcZIB9d0FVG3moaAr7rFrbZkpVWPrXg==
X-Received: by 2002:a25:38c7:: with SMTP id f190mr26686057yba.5.1627983374133;
        Tue, 03 Aug 2021 02:36:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8748:: with SMTP id e8ls305568ybn.3.gmail; Tue, 03 Aug
 2021 02:36:13 -0700 (PDT)
X-Received: by 2002:a25:1f46:: with SMTP id f67mr27170474ybf.421.1627983373558;
        Tue, 03 Aug 2021 02:36:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627983373; cv=none;
        d=google.com; s=arc-20160816;
        b=n60rTjncriWVwG9yEbai5WHaRexkF9eQPmwd/CJNC/BCMqvptZ6ougwLdy2GiggAtp
         Hv+sIjtX1KFNdE/3ez/GpaqyvfwJ/W4e7kpJ9mTDIqvRU1AZeqcbIBiAlQefJwz37DI1
         j3XycTOadtMTVmgUHm5OxMN/nlRf3sWL22SmNXoDlsbMQaNdox74Xo3Jo3bWUMGpoaKu
         LGaYtNqE0Y+w5vx2+CGX5gTR6AQGYaXuejgTJQ21UoFLdb2ZqAQzB5r3yiDlE+fpZFl5
         iKVXxw9v1CVnHc2mbFLnmvqnJy0KL1QENyeyWyQbCXBxWT5LeoSFnkT3n6okO1+wRVSv
         kbqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=uLSDx7yAEGt2cWzN1EwKbsXXv3E7qLF11Be1f6r0zOA=;
        b=GgsxUXrRPyx1J595050wR4HCc9BY+rdJImn2WufUwep9R572ZA8gxXMxus+Lo7yDhm
         nmRklfI/5YnfuDDYpW0TBAgNIYeozXzd90Nji2G4Wsakbrctm7Qx0hB29izo+bsJzDb9
         hWYh0hgu8rYoDFaieDwO5n58ley1YIZRKWRUUYJq2RVcwxhLvNCVj5qHZaIOPE79/fAD
         jAJl6SROh6KyMfbQY0a/y+xhODAp4qm6bcggogWF8MWIArTL0AxGxTqhr7eyybjHRfR3
         z2nCG1JLmVdyHniSnarb3AOCnZIBLo1pqCHRQbFTO6cnnHN9if6cLzygM62svCAEq9uq
         UhIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id z205si1132711ybb.0.2021.08.03.02.36.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 02:36:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="200832596"
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; 
   d="gz'50?scan'50,208,50";a="200832596"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2021 02:36:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; 
   d="gz'50?scan'50,208,50";a="502301217"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 03 Aug 2021 02:36:09 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mAqqG-000DmK-Sk; Tue, 03 Aug 2021 09:36:08 +0000
Date: Tue, 3 Aug 2021 17:36:00 +0800
From: kernel test robot <lkp@intel.com>
To: Amir Goldstein <amir73il@gmail.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: [amir73il:fsnotify-perf 3/5] fs/notify/mark.c:198:11: warning:
 variable 'sb' is used uninitialized whenever 'if' condition is false
Message-ID: <202108031757.lTxFKThS-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="uAKRQypu60I7Lcqm"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/amir73il/linux fsnotify-perf
head:   7446ba772ae107ab937cd04e8800236d6235dc4c
commit: 73c769c1b2c30c19870d29f2153bbe1c1750cc88 [3/5] fsnotify: count all objects with attached connectors
config: s390-randconfig-r014-20210803 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 4f71f59bf3d9914188a11d0c41bedbb339d36ff5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/amir73il/linux/commit/73c769c1b2c30c19870d29f2153bbe1c1750cc88
        git remote add amir73il https://github.com/amir73il/linux
        git fetch --no-tags amir73il fsnotify-perf
        git checkout 73c769c1b2c30c19870d29f2153bbe1c1750cc88
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/notify/mark.c:198:11: warning: variable 'sb' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           else if (conn->type == FSNOTIFY_OBJ_TYPE_SB)
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/notify/mark.c:201:19: note: uninitialized use occurs here
           atomic_long_inc(&sb->s_fsnotify_obj_refs);
                            ^~
   fs/notify/mark.c:198:7: note: remove the 'if' if its condition is always true
           else if (conn->type == FSNOTIFY_OBJ_TYPE_SB)
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/notify/mark.c:189:24: note: initialize the variable 'sb' to silence this warning
           struct super_block *sb;
                                 ^
                                  = NULL
   fs/notify/mark.c:215:11: warning: variable 'sb' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           else if (conn->type == FSNOTIFY_OBJ_TYPE_SB)
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/notify/mark.c:218:32: note: uninitialized use occurs here
           if (atomic_long_dec_and_test(&sb->s_fsnotify_obj_refs))
                                         ^~
   fs/notify/mark.c:215:7: note: remove the 'if' if its condition is always true
           else if (conn->type == FSNOTIFY_OBJ_TYPE_SB)
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/notify/mark.c:206:24: note: initialize the variable 'sb' to silence this warning
           struct super_block *sb;
                                 ^
                                  = NULL
   fs/notify/mark.c:263:22: warning: variable 'sb' set but not used [-Wunused-but-set-variable]
           struct super_block *sb;
                               ^
   3 warnings generated.


vim +198 fs/notify/mark.c

   186	
   187	static void fsnotify_get_object_ref(struct fsnotify_mark_connector *conn)
   188	{
   189		struct super_block *sb;
   190	
   191		if (conn->type == FSNOTIFY_OBJ_TYPE_DETACHED)
   192			return;
   193	
   194		if (conn->type == FSNOTIFY_OBJ_TYPE_INODE)
   195			sb = fsnotify_conn_inode(conn)->i_sb;
   196		else if (conn->type == FSNOTIFY_OBJ_TYPE_VFSMOUNT)
   197			sb = fsnotify_conn_mount(conn)->mnt.mnt_sb;
 > 198		else if (conn->type == FSNOTIFY_OBJ_TYPE_SB)
   199			sb = fsnotify_conn_sb(conn);
   200	
   201		atomic_long_inc(&sb->s_fsnotify_obj_refs);
   202	}
   203	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108031757.lTxFKThS-lkp%40intel.com.

--uAKRQypu60I7Lcqm
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
HuWwXqSQuBL8P2Chs4546gAA

--uAKRQypu60I7Lcqm--
