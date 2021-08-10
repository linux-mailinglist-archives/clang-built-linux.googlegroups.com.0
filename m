Return-Path: <clang-built-linux+bncBD26TVH6RINBBRPRZCEAMGQEJTMH7WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EA13E552E
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 10:28:55 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id s8-20020a17090a0748b0290177ecd83711sf2237875pje.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 01:28:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628584134; cv=pass;
        d=google.com; s=arc-20160816;
        b=xhDwpAjj9CbM/wJ/o/C2PWrHmtw/qIlquAmyF0/XzqqXtvTogimF2RAxn/2W2Ig3KF
         a8sBIOvBX36tlZ74gde4jEnyLvmGJxwu/JfJy7BCPhP/jgsxi30CwRqmXsbp6ayl1r2v
         3i2yb6FOLKgbl1aDeKVjfgMy8fTuOCbV8R8QAWH2ed4o+Ia5jhA+wEgMRKcqPTCaoifH
         2fo33qSnIoiKGUKtCPXKKcdnqy8/Ml/pJCesCUgPy0aZAIYkqly9H/19vQkPCL3fOPIx
         wqBdLYK5ejgy/QPQt4Belkt2CzvBWrXdpBRNcYm2IqyVbUb16/7matHoqe4KRPy3ROlJ
         TSGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:cc:to:references
         :subject:sender:dkim-signature;
        bh=AVIjGQD4+ofyFFJmoR3XKAL0JYEdFt5d/VtaitleYHk=;
        b=MBNsN3nI8ukJ75j5XTA/tpnGMX2na4v8Xw28/OBV595qrrYsmUX8apVWzfSLubMGYK
         ZZJ71lppipxyG5hZAkPd4IvJ4xRxOCSH6BGHwt08m2+51uQj8bbwJOq6evPfAAnOq/7T
         wcLHWiZO33yaUxfni9iHO88if9KS5jAQwePi93KkHuSopSEpUTuUJnkHumAwqm1VEiwz
         8NNkxL/nfTm7llNz4F/9yJH6QaxNZPcClNNJngrvCsaj0205T9sSTxR5KcTshbPuC7kn
         mmbpJuATnQq9FDKUsUIJZfo4LGtMZuQM5FKFxktQu4rvB0rMnUSVMeKAlb/5wylVr7Z1
         XuIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:references:to:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AVIjGQD4+ofyFFJmoR3XKAL0JYEdFt5d/VtaitleYHk=;
        b=O6EjEzjALX3S7BeXmC7UfJ6YmhAubMemQZr1Rm6M2LMySvT5vXaNuDrGv9Kzggj5o/
         uf1mUcF4QALbUVDNF15Xb79WsTIEKT1MF5WUit2oswLAdJRyOyrZRbDSGItlrclWCBcw
         c6SqpIdCPg2L6DloDUMFz/gwH+h+gE2nZPUjoFxLN9LSv3URtEDWJM3fPccfmy2KK72p
         ssCWGybHV5PRLlgF+0Eri8rgufz7sBMUoSBuElZT1tgNov5IHqVAUnj3Je2pkJcMn+oY
         8WDerqNdRPy5dC4sewrjkGLf+gsMvkoxL08g3ajalzfJgI+Tv//ErXmMiLpxfkZuhPET
         lifw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:references:to:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AVIjGQD4+ofyFFJmoR3XKAL0JYEdFt5d/VtaitleYHk=;
        b=iY2SVOeiRwd8EsgJ+wNAD2xwiPveDD+jIpH/+iqkNQpKtWEm3r9AB44LhcqsYnQtdA
         cHTN8MSOAENW/tKHzYrN8LUcGbOWVTZChaOrMPs3Wyz/ttiOfK4eX4GWx+K5vrDLRNB0
         XJiMPktsCJqpnfaQcs9p3/0MTiZ1pzOlPPN7vq1cLCT373BXT7tMyRxBxtIGTBxwXjUN
         AAP+/NAopqmOWZxjA2Mg5OmZalbRkkyF2sisEHQ9BCNynsm2KXbCBoZ0vgdeHQIEtHoO
         hmn0Zm5n2iyuKw0Ti/PgTRIGQaCKiI+vLLGy85syINu/uPQsYY+gveKpzGULPQA9Bpjl
         u7Fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531OK/T1IIdDtsgkVqzLOgOBj53iTBT2N4VL8JGgR0D9eX6uGGa5
	tWkZlocUDFyyLdIDiEYJaBY=
X-Google-Smtp-Source: ABdhPJwgChZMa5OTbxUQL78Fx214gShC8D5rvOLABStrRE1mIvFI8AZ+Q9+EfnCkHp4JMPtENtcsyw==
X-Received: by 2002:a63:2541:: with SMTP id l62mr643118pgl.183.1628584133702;
        Tue, 10 Aug 2021 01:28:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:79c4:: with SMTP id u187ls6997475pfc.11.gmail; Tue, 10
 Aug 2021 01:28:53 -0700 (PDT)
X-Received: by 2002:a05:6a00:84e:b029:3ae:5c9:a48d with SMTP id q14-20020a056a00084eb02903ae05c9a48dmr22608804pfk.20.1628584132879;
        Tue, 10 Aug 2021 01:28:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628584132; cv=none;
        d=google.com; s=arc-20160816;
        b=wlW3ZfYnX/Woy/KUIiQAkAHNHzRxdywdJGMJjHtyNfbr/MiOx1PygMXo72fb4ea1xA
         Gk8xgG93TIcj8//aWV1u29ZhmjdRlMSZX08CXJdu7ojGjSkqnWmHQjGd+kDZHlPazObe
         m7HOOynyPOgHeuUBELEBaNAKkuflHnhXT52KMGd4xzAAZ6IR4zg5k7aFVbSPb5SaeyDf
         YcCPS4wwKs6AVN5YK9HNEZMptOU3xlamd3c0/RXXLSvrIvZ7KNwDYTRW/GdaK0QJhrwp
         NzTzywwcTsX1oFJ8SKEruYCfM+UKfoBnUplon19ckYoGzgSMwa/mLKwzOCe/kl82rFma
         jA2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:to:references:subject;
        bh=FyT5clJ/NitvQkRCD2/aG5bs1RQdUX+iR1LxnL7PwvY=;
        b=basKY0bC3l4DEEm2uvVLFK9UX4Xpp/+e/TWGTglzhcE8BXDWSlu/llj4b8Fba+VHh5
         tGhQbdEErlsQrLh56Li+rnaxgSmV/5GqhDZwakmdftSEtk2vHGoCCTjsFWvSUO5wrbYr
         gR/yJlAD3lwANXzuRMuRTSfMFw9cBDz9zXGA25RcT8jlr853W+HV/TLrgpjtJqfdc0+D
         i+Fr86uQmzwX7hbadOIdGBQ0ga88Gw/8Hc9ztXf9VeYkUMF+KCHfMhYqUh0zh23jZRii
         Sd2kZ/grnFS+bmTWUUvT97ggp2szaHDBDy2J3S/jjArprK6cbF9xdBiEnC0l5Vl+qsJT
         dJbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id r9si793887pls.4.2021.08.10.01.28.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Aug 2021 01:28:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="211753518"
X-IronPort-AV: E=Sophos;i="5.84,309,1620716400"; 
   d="gz'50?scan'50,208,50";a="211753518"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Aug 2021 01:28:52 -0700
X-IronPort-AV: E=Sophos;i="5.84,309,1620716400"; 
   d="gz'50?scan'50,208,50";a="515704161"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.249.174.223]) ([10.249.174.223])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Aug 2021 01:28:49 -0700
Subject: arch/x86/kvm/../../../virt/kvm/binary_stats.c:139:3: warning: Value
 stored to 'remain' is never read [clang-analyzer-deadcode.DeadStores]
References: <202108100300.KhG8IeJu-lkp@intel.com>
To: Jing Zhang <jingzhangos@google.com>
Cc: clang-built-linux@googlegroups.com,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 LKML <linux-kernel@vger.kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 David Matlack <dmatlack@google.com>, Ricardo Koller <ricarkol@google.com>,
 Krish Sadhukhan <krish.sadhukhan@oracle.com>, Fuad Tabba <tabba@google.com>
From: kernel test robot <rong.a.chen@intel.com>
X-Forwarded-Message-Id: <202108100300.KhG8IeJu-lkp@intel.com>
Message-ID: <e8357945-e380-3dfb-fea4-2d4e600ecdeb@intel.com>
Date: Tue, 10 Aug 2021 16:28:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <202108100300.KhG8IeJu-lkp@intel.com>
Content-Type: multipart/mixed;
 boundary="------------51EBD5D82AF5DA65966C7641"
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

This is a multi-part message in MIME format.
--------------51EBD5D82AF5DA65966C7641
Content-Type: text/plain; charset="UTF-8"; format=flowed


tree: 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   36a21d51725af2ce0700c6ebcb6b9594aac658a6
commit: cb082bfab59a224a49ae803fed52cd03e8d6b5e0 KVM: stats: Add 
fd-based API to read binary stats data
date:   7 weeks ago
:::::: branch date: 23 hours ago
:::::: commit date: 7 weeks ago
config: x86_64-randconfig-c001-20210806 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 
42b9c2a17a0b63cccf3ac197a82f91b28e53e643)
reproduce (this is a W=1 build):
         wget 
https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross 
-O ~/bin/make.cross
         chmod +x ~/bin/make.cross
         # install x86_64 cross compiling tool for clang build
         # apt-get install binutils-x86-64-linux-gnu
         # 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cb082bfab59a224a49ae803fed52cd03e8d6b5e0
         git remote add linus 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
         git fetch --no-tags linus master
         git checkout cb082bfab59a224a49ae803fed52cd03e8d6b5e0
         # save the attached .config to linux build tree
         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross 
ARCH=x86_64 clang-analyzer
If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:206:21: note: Value 
stored to 'client' during its initialization is never read
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:207:34: warning: Value 
stored to 'c' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            struct dtv_frontend_properties *c = &fe->dtv_property_cache;
                                            ^   ~~~~~~~~~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:207:34: note: Value 
stored to 'c' during its initialization is never read
            struct dtv_frontend_properties *c = &fe->dtv_property_cache;
                                            ^   ~~~~~~~~~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:220:21: warning: Value 
stored to 'client' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:220:21: note: Value 
stored to 'client' during its initialization is never read
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:236:21: warning: Value 
stored to 'client' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:236:21: note: Value 
stored to 'client' during its initialization is never read
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:252:21: warning: Value 
stored to 'client' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:252:21: note: Value 
stored to 'client' during its initialization is never read
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:253:34: warning: Value 
stored to 'c' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            struct dtv_frontend_properties *c = &fe->dtv_property_cache;
                                            ^   ~~~~~~~~~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:253:34: note: Value 
stored to 'c' during its initialization is never read
            struct dtv_frontend_properties *c = &fe->dtv_property_cache;
                                            ^   ~~~~~~~~~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:270:21: warning: Value 
stored to 'client' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:270:21: note: Value 
stored to 'client' during its initialization is never read
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:297:21: warning: Value 
stored to 'client' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:297:21: note: Value 
stored to 'client' during its initialization is never read
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:323:21: warning: Value 
stored to 'client' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:323:21: note: Value 
stored to 'client' during its initialization is never read
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:413:21: warning: Value 
stored to 'client' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:413:21: note: Value 
stored to 'client' during its initialization is never read
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:425:21: warning: Value 
stored to 'client' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:425:21: note: Value 
stored to 'client' during its initialization is never read
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:439:21: warning: Value 
stored to 'client' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:439:21: note: Value 
stored to 'client' during its initialization is never read
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:455:21: warning: Value 
stored to 'client' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    drivers/media/dvb-frontends/cxd2820r_core.c:455:21: note: Value 
stored to 'client' during its initialization is never read
            struct i2c_client *client = priv->client[0];
                               ^~~~~~   ~~~~~~~~~~~~~~~
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    arch/x86/kvm/../../../virt/kvm/eventfd.c:385:2: warning: Value 
stored to 'ret' is never read [clang-analyzer-deadcode.DeadStores]
            ret = 0;
            ^     ~
    arch/x86/kvm/../../../virt/kvm/eventfd.c:385:2: note: Value stored 
to 'ret' is never read
            ret = 0;
            ^     ~
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (5 in non-user code, 1 with check filters).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    7 warnings generated.
>> arch/x86/kvm/../../../virt/kvm/binary_stats.c:139:3: warning: Value stored to 'remain' is never read [clang-analyzer-deadcode.DeadStores]
                    remain -= copylen;
                    ^         ~~~~~~~
    arch/x86/kvm/../../../virt/kvm/binary_stats.c:139:3: note: Value 
stored to 'remain' is never read
                    remain -= copylen;
                    ^         ~~~~~~~
>> arch/x86/kvm/../../../virt/kvm/binary_stats.c:141:3: warning: Value stored to 'dest' is never read [clang-analyzer-deadcode.DeadStores]
                    dest += copylen;
                    ^       ~~~~~~~
    arch/x86/kvm/../../../virt/kvm/binary_stats.c:141:3: note: Value 
stored to 'dest' is never read
                    dest += copylen;
                    ^       ~~~~~~~
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    7 warnings generated.
    Suppressed 7 warnings (7 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    7 warnings generated.
    arch/x86/kvm/emulate.c:1521:9: warning: 2nd function call argument 
is an uninitialized value [clang-analyzer-core.CallAndMessage]
            return linear_read_system(ctxt, *desc_addr_p, desc, 
sizeof(*desc));
                   ^
    arch/x86/kvm/emulate.c:3671:6: note: Assuming field 'modrm_reg' is 
not equal to VCPU_SREG_CS
            if (ctxt->modrm_reg == VCPU_SREG_CS || ctxt->modrm_reg > 
VCPU_SREG_GS)
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/emulate.c:3671:6: note: Left side of '||' is false
    arch/x86/kvm/emulate.c:3671:41: note: Assuming field 'modrm_reg' is 
<= VCPU_SREG_GS
            if (ctxt->modrm_reg == VCPU_SREG_CS || ctxt->modrm_reg > 
VCPU_SREG_GS)
 
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/emulate.c:3671:2: note: Taking false branch
            if (ctxt->modrm_reg == VCPU_SREG_CS || ctxt->modrm_reg > 
VCPU_SREG_GS)
            ^
    arch/x86/kvm/emulate.c:3674:6: note: Assuming field 'modrm_reg' is 
not equal to VCPU_SREG_SS
            if (ctxt->modrm_reg == VCPU_SREG_SS)
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/emulate.c:3674:2: note: Taking false branch
            if (ctxt->modrm_reg == VCPU_SREG_SS)
            ^
    arch/x86/kvm/emulate.c:3679:9: note: Calling 'load_segment_descriptor'
            return load_segment_descriptor(ctxt, sel, ctxt->modrm_reg);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/emulate.c:1727:6: note: 'seg' is not equal to VCPU_SREG_SS
            if (seg == VCPU_SREG_SS && selector == 3 &&
                ^~~
    arch/x86/kvm/emulate.c:1727:26: note: Left side of '&&' is false
            if (seg == VCPU_SREG_SS && selector == 3 &&
                                    ^
    arch/x86/kvm/emulate.c:1731:9: note: Calling '__load_segment_descriptor'
            return __load_segment_descriptor(ctxt, selector, seg, cpl,
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/emulate.c:1547:23: note: Assuming the condition is false
            bool null_selector = !(selector & ~0x3); /* 0000-0003 are 
null */
                                 ^~~~~~~~~~~~~~~~~~
    arch/x86/kvm/emulate.c:1548:2: note: 'desc_addr' declared without an 
initial value
            ulong desc_addr;
            ^~~~~~~~~~~~~~~
    arch/x86/kvm/emulate.c:1555:6: note: Assuming field 'mode' is not 
equal to X86EMUL_MODE_REAL
            if (ctxt->mode == X86EMUL_MODE_REAL) {
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/emulate.c:1555:2: note: Taking false branch
            if (ctxt->mode == X86EMUL_MODE_REAL) {
            ^
    arch/x86/kvm/emulate.c:1561:13: note: 'seg' is <= VCPU_SREG_GS
            } else if (seg <= VCPU_SREG_GS && ctxt->mode == 
X86EMUL_MODE_VM86) {
                       ^~~
    arch/x86/kvm/emulate.c:1561:13: note: Left side of '&&' is true
    arch/x86/kvm/emulate.c:1561:36: note: Assuming field 'mode' is not 
equal to X86EMUL_MODE_VM86
            } else if (seg <= VCPU_SREG_GS && ctxt->mode == 
X86EMUL_MODE_VM86) {
 
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/emulate.c:1561:9: note: Taking false branch
            } else if (seg <= VCPU_SREG_GS && ctxt->mode == 
X86EMUL_MODE_VM86) {
                   ^
    arch/x86/kvm/emulate.c:1575:6: note: 'seg' is not equal to VCPU_SREG_TR
            if (seg == VCPU_SREG_TR && (selector & (1 << 2)))
                ^~~
    arch/x86/kvm/emulate.c:1575:26: note: Left side of '&&' is false
            if (seg == VCPU_SREG_TR && (selector & (1 << 2)))
                                    ^
    arch/x86/kvm/emulate.c:1579:6: note: 'null_selector' is false
            if (null_selector) {
                ^~~~~~~~~~~~~
    arch/x86/kvm/emulate.c:1579:2: note: Taking false branch
            if (null_selector) {
            ^
    arch/x86/kvm/emulate.c:1603:8: note: Calling 'read_segment_descriptor'
            ret = read_segment_descriptor(ctxt, selector, &seg_desc, 
&desc_addr);
 
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/emulate.c:1517:7: note: Calling 'get_descriptor_ptr'
            rc = get_descriptor_ptr(ctxt, selector, desc_addr_p);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/emulate.c:1491:6: note: Assuming the condition is true
            if (dt.size < index * 8 + 7)
                ^~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/emulate.c:1491:2: note: Taking true branch
            if (dt.size < index * 8 + 7)
            ^
    arch/x86/kvm/emulate.c:1517:7: note: Returning from 'get_descriptor_ptr'
            rc = get_descriptor_ptr(ctxt, selector, desc_addr_p);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/emulate.c:1518:6: note: Assuming 'rc' is equal to 
X86EMUL_CONTINUE
            if (rc != X86EMUL_CONTINUE)
                ^~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/emulate.c:1518:2: note: Taking false branch
            if (rc != X86EMUL_CONTINUE)
            ^

vim +/remain +139 arch/x86/kvm/../../../virt/kvm/binary_stats.c

cb082bfab59a224 Jing Zhang 2021-06-18   12  cb082bfab59a224 Jing Zhang 
2021-06-18   13  /**
cb082bfab59a224 Jing Zhang 2021-06-18   14   * kvm_stats_read() - Common 
function to read from the binary statistics
cb082bfab59a224 Jing Zhang 2021-06-18   15   * file descriptor.
cb082bfab59a224 Jing Zhang 2021-06-18   16   *
cb082bfab59a224 Jing Zhang 2021-06-18   17   * @id: identification 
string of the stats
cb082bfab59a224 Jing Zhang 2021-06-18   18   * @header: stats header for 
a vm or a vcpu
cb082bfab59a224 Jing Zhang 2021-06-18   19   * @desc: start address of 
an array of stats descriptors for a vm or a vcpu
cb082bfab59a224 Jing Zhang 2021-06-18   20   * @stats: start address of 
stats data block for a vm or a vcpu
cb082bfab59a224 Jing Zhang 2021-06-18   21   * @size_stats: the size of 
stats data block pointed by @stats
cb082bfab59a224 Jing Zhang 2021-06-18   22   * @user_buffer: start 
address of userspace buffer
cb082bfab59a224 Jing Zhang 2021-06-18   23   * @size: requested read 
size from userspace
cb082bfab59a224 Jing Zhang 2021-06-18   24   * @offset: the start 
position from which the content will be read for the
cb082bfab59a224 Jing Zhang 2021-06-18   25   *          corresponding vm 
or vcp file descriptor
cb082bfab59a224 Jing Zhang 2021-06-18   26   *
cb082bfab59a224 Jing Zhang 2021-06-18   27   * The file content of a 
vm/vcpu file descriptor is now defined as below:
cb082bfab59a224 Jing Zhang 2021-06-18   28   * +-------------+
cb082bfab59a224 Jing Zhang 2021-06-18   29   * |   Header    |
cb082bfab59a224 Jing Zhang 2021-06-18   30   * +-------------+
cb082bfab59a224 Jing Zhang 2021-06-18   31   * |  id string  |
cb082bfab59a224 Jing Zhang 2021-06-18   32   * +-------------+
cb082bfab59a224 Jing Zhang 2021-06-18   33   * | Descriptors |
cb082bfab59a224 Jing Zhang 2021-06-18   34   * +-------------+
cb082bfab59a224 Jing Zhang 2021-06-18   35   * | Stats Data  |
cb082bfab59a224 Jing Zhang 2021-06-18   36   * +-------------+
cb082bfab59a224 Jing Zhang 2021-06-18   37   * Although this function 
allows userspace to read any amount of data (as long
cb082bfab59a224 Jing Zhang 2021-06-18   38   * as in the limit) from any 
position, the typical usage would follow below
cb082bfab59a224 Jing Zhang 2021-06-18   39   * steps:
cb082bfab59a224 Jing Zhang 2021-06-18   40   * 1. Read header from 
offset 0. Get the offset of descriptors and stats data
cb082bfab59a224 Jing Zhang 2021-06-18   41   *    and some other 
necessary information. This is a one-time work for the
cb082bfab59a224 Jing Zhang 2021-06-18   42   *    lifecycle of the 
corresponding vm/vcpu stats fd.
cb082bfab59a224 Jing Zhang 2021-06-18   43   * 2. Read id string from 
its offset. This is a one-time work for the lifecycle
cb082bfab59a224 Jing Zhang 2021-06-18   44   *    of the corresponding 
vm/vcpu stats fd.
cb082bfab59a224 Jing Zhang 2021-06-18   45   * 3. Read descriptors from 
its offset and discover all the stats by parsing
cb082bfab59a224 Jing Zhang 2021-06-18   46   *    descriptors. This is a 
one-time work for the lifecycle of the
cb082bfab59a224 Jing Zhang 2021-06-18   47   *    corresponding vm/vcpu 
stats fd.
cb082bfab59a224 Jing Zhang 2021-06-18   48   * 4. Periodically read 
stats data from its offset using pread.
cb082bfab59a224 Jing Zhang 2021-06-18   49   *
cb082bfab59a224 Jing Zhang 2021-06-18   50   * Return: the number of 
bytes that has been successfully read
cb082bfab59a224 Jing Zhang 2021-06-18   51   */
cb082bfab59a224 Jing Zhang 2021-06-18   52  ssize_t kvm_stats_read(char 
*id, const struct kvm_stats_header *header,
cb082bfab59a224 Jing Zhang 2021-06-18   53  		       const struct 
_kvm_stats_desc *desc,
cb082bfab59a224 Jing Zhang 2021-06-18   54  		       void *stats, size_t 
size_stats,
cb082bfab59a224 Jing Zhang 2021-06-18   55  		       char __user 
*user_buffer, size_t size, loff_t *offset)
cb082bfab59a224 Jing Zhang 2021-06-18   56  {
cb082bfab59a224 Jing Zhang 2021-06-18   57  	ssize_t len;
cb082bfab59a224 Jing Zhang 2021-06-18   58  	ssize_t copylen;
cb082bfab59a224 Jing Zhang 2021-06-18   59  	ssize_t remain = size;
cb082bfab59a224 Jing Zhang 2021-06-18   60  	size_t size_desc;
cb082bfab59a224 Jing Zhang 2021-06-18   61  	size_t size_header;
cb082bfab59a224 Jing Zhang 2021-06-18   62  	void *src;
cb082bfab59a224 Jing Zhang 2021-06-18   63  	loff_t pos = *offset;
cb082bfab59a224 Jing Zhang 2021-06-18   64  	char __user *dest = 
user_buffer;
cb082bfab59a224 Jing Zhang 2021-06-18   65  cb082bfab59a224 Jing Zhang 
2021-06-18   66  	size_header = sizeof(*header);
cb082bfab59a224 Jing Zhang 2021-06-18   67  	size_desc = 
header->num_desc * sizeof(*desc);
cb082bfab59a224 Jing Zhang 2021-06-18   68  cb082bfab59a224 Jing Zhang 
2021-06-18   69  	len = KVM_STATS_NAME_SIZE + size_header + size_desc + 
size_stats - pos;
cb082bfab59a224 Jing Zhang 2021-06-18   70  	len = min(len, remain);
cb082bfab59a224 Jing Zhang 2021-06-18   71  	if (len <= 0)
cb082bfab59a224 Jing Zhang 2021-06-18   72  		return 0;
cb082bfab59a224 Jing Zhang 2021-06-18   73  	remain = len;
cb082bfab59a224 Jing Zhang 2021-06-18   74  cb082bfab59a224 Jing Zhang 
2021-06-18   75  	/*
cb082bfab59a224 Jing Zhang 2021-06-18   76  	 * Copy kvm stats header.
cb082bfab59a224 Jing Zhang 2021-06-18   77  	 * The header is the first 
block of content userspace usually read out.
cb082bfab59a224 Jing Zhang 2021-06-18   78  	 * The pos is 0 and the 
copylen and remain would be the size of header.
cb082bfab59a224 Jing Zhang 2021-06-18   79  	 * The copy of the header 
would be skipped if offset is larger than the
cb082bfab59a224 Jing Zhang 2021-06-18   80  	 * size of header. That 
usually happens when userspace reads stats
cb082bfab59a224 Jing Zhang 2021-06-18   81  	 * descriptors and stats data.
cb082bfab59a224 Jing Zhang 2021-06-18   82  	 */
cb082bfab59a224 Jing Zhang 2021-06-18   83  	copylen = size_header - pos;
cb082bfab59a224 Jing Zhang 2021-06-18   84  	copylen = min(copylen, remain);
cb082bfab59a224 Jing Zhang 2021-06-18   85  	if (copylen > 0) {
cb082bfab59a224 Jing Zhang 2021-06-18   86  		src = (void *)header + pos;
cb082bfab59a224 Jing Zhang 2021-06-18   87  		if (copy_to_user(dest, 
src, copylen))
cb082bfab59a224 Jing Zhang 2021-06-18   88  			return -EFAULT;
cb082bfab59a224 Jing Zhang 2021-06-18   89  		remain -= copylen;
cb082bfab59a224 Jing Zhang 2021-06-18   90  		pos += copylen;
cb082bfab59a224 Jing Zhang 2021-06-18   91  		dest += copylen;
cb082bfab59a224 Jing Zhang 2021-06-18   92  	}
cb082bfab59a224 Jing Zhang 2021-06-18   93  cb082bfab59a224 Jing Zhang 
2021-06-18   94  	/*
cb082bfab59a224 Jing Zhang 2021-06-18   95  	 * Copy kvm stats header id 
string.
cb082bfab59a224 Jing Zhang 2021-06-18   96  	 * The id string is unique 
for every vm/vcpu, which is stored in kvm
cb082bfab59a224 Jing Zhang 2021-06-18   97  	 * and kvm_vcpu structure.
cb082bfab59a224 Jing Zhang 2021-06-18   98  	 * The id string is part of 
the stat header from the perspective of
cb082bfab59a224 Jing Zhang 2021-06-18   99  	 * userspace, it is usually 
read out together with previous constant
cb082bfab59a224 Jing Zhang 2021-06-18  100  	 * header part and could be 
skipped for later descriptors and stats
cb082bfab59a224 Jing Zhang 2021-06-18  101  	 * data readings.
cb082bfab59a224 Jing Zhang 2021-06-18  102  	 */
cb082bfab59a224 Jing Zhang 2021-06-18  103  	copylen = header->id_offset 
+ KVM_STATS_NAME_SIZE - pos;
cb082bfab59a224 Jing Zhang 2021-06-18  104  	copylen = min(copylen, remain);
cb082bfab59a224 Jing Zhang 2021-06-18  105  	if (copylen > 0) {
cb082bfab59a224 Jing Zhang 2021-06-18  106  		src = id + pos - 
header->id_offset;
cb082bfab59a224 Jing Zhang 2021-06-18  107  		if (copy_to_user(dest, 
src, copylen))
cb082bfab59a224 Jing Zhang 2021-06-18  108  			return -EFAULT;
cb082bfab59a224 Jing Zhang 2021-06-18  109  		remain -= copylen;
cb082bfab59a224 Jing Zhang 2021-06-18  110  		pos += copylen;
cb082bfab59a224 Jing Zhang 2021-06-18  111  		dest += copylen;
cb082bfab59a224 Jing Zhang 2021-06-18  112  	}
cb082bfab59a224 Jing Zhang 2021-06-18  113  cb082bfab59a224 Jing Zhang 
2021-06-18  114  	/*
cb082bfab59a224 Jing Zhang 2021-06-18  115  	 * Copy kvm stats descriptors.
cb082bfab59a224 Jing Zhang 2021-06-18  116  	 * The descriptors copy 
would be skipped in the typical case that
cb082bfab59a224 Jing Zhang 2021-06-18  117  	 * userspace periodically 
read stats data, since the pos would be
cb082bfab59a224 Jing Zhang 2021-06-18  118  	 * greater than the end 
address of descriptors
cb082bfab59a224 Jing Zhang 2021-06-18  119  	 * 
(header->header.desc_offset + size_desc) causing copylen <= 0.
cb082bfab59a224 Jing Zhang 2021-06-18  120  	 */
cb082bfab59a224 Jing Zhang 2021-06-18  121  	copylen = 
header->desc_offset + size_desc - pos;
cb082bfab59a224 Jing Zhang 2021-06-18  122  	copylen = min(copylen, remain);
cb082bfab59a224 Jing Zhang 2021-06-18  123  	if (copylen > 0) {
cb082bfab59a224 Jing Zhang 2021-06-18  124  		src = (void *)desc + pos - 
header->desc_offset;
cb082bfab59a224 Jing Zhang 2021-06-18  125  		if (copy_to_user(dest, 
src, copylen))
cb082bfab59a224 Jing Zhang 2021-06-18  126  			return -EFAULT;
cb082bfab59a224 Jing Zhang 2021-06-18  127  		remain -= copylen;
cb082bfab59a224 Jing Zhang 2021-06-18  128  		pos += copylen;
cb082bfab59a224 Jing Zhang 2021-06-18  129  		dest += copylen;
cb082bfab59a224 Jing Zhang 2021-06-18  130  	}
cb082bfab59a224 Jing Zhang 2021-06-18  131  cb082bfab59a224 Jing Zhang 
2021-06-18  132  	/* Copy kvm stats values */
cb082bfab59a224 Jing Zhang 2021-06-18  133  	copylen = 
header->data_offset + size_stats - pos;
cb082bfab59a224 Jing Zhang 2021-06-18  134  	copylen = min(copylen, remain);
cb082bfab59a224 Jing Zhang 2021-06-18  135  	if (copylen > 0) {
cb082bfab59a224 Jing Zhang 2021-06-18  136  		src = stats + pos - 
header->data_offset;
cb082bfab59a224 Jing Zhang 2021-06-18  137  		if (copy_to_user(dest, 
src, copylen))
cb082bfab59a224 Jing Zhang 2021-06-18  138  			return -EFAULT;
cb082bfab59a224 Jing Zhang 2021-06-18 @139  		remain -= copylen;
cb082bfab59a224 Jing Zhang 2021-06-18  140  		pos += copylen;
cb082bfab59a224 Jing Zhang 2021-06-18 @141  		dest += copylen;

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e8357945-e380-3dfb-fea4-2d4e600ecdeb%40intel.com.

--------------51EBD5D82AF5DA65966C7641
Content-Type: application/gzip;
 name=".config.gz"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename=".config.gz"

H4sICKtTEWEAAy5jb25maWcAjDxJd9w20vf8in7OJXOIrc2K/c3TAU2CTbi5BQB70YVPbrU9
mmjxtKTE/vdfFcAFAIud+GC7UQWgANSOAn/+6ecZe315erh5udvd3N//mH3dP+4PNy/729mX
u/v9v2dxOStKPeOx0G8BObt7fP3+7vuHy+byYvb+7en525NfD7uz2XJ/eNzfz6Knxy93X19h
gLunx59+/ikqi0QsmihqVlwqURaN5ht99WZ3f/P4dfbn/vAMeLPTi7cnb09mv3y9e/m/d+/g
74e7w+Hp8O7+/s+H5tvh6b/73cts9353vrv9/HH38ezDx/c3l+cfP57v9vvfTm7Pbm9/++3y
y5eP708/7s7/9aabdTFMe3XikCJUE2WsWFz96BvxZ497enECfzoYU9hhUdQDOjR1uGfn70/O
uvYsHs8HbdA9y+Khe+bg+XMBcRErmkwUS4e4obFRmmkRebAUqGEqbxalLicBTVnrqtYkXBQw
NB9AQv7erEvpUDCvRRZrkfNGs3nGG1VKZyidSs5glUVSwl+AorArHP7Ps4VhpvvZ8/7l9dvA
DnNZLnnRADeovHImLoRueLFqmIRNErnQV+dnMEpHcplXAmbXXOnZ3fPs8ekFB+53tYxY1m3r
mzdUc8Nqd4/MshrFMu3gp2zFmyWXBc+axbVwyHMhc4Cc0aDsOmc0ZHM91aOcAlzQgGulkZ/6
rXHoJXYmoDnshQS7vUL45voYFIg/Dr44BsaFEBTHPGF1pg1HOGfTNael0gXL+dWbXx6fHveD
xKutWonKkY+2Af+NdOYuviqV2DT57zWvOUHBmukobQzU7RXJUqkm53kptw3TmkUpubxa8UzM
SRCrQZUSM5rzZRJmNRhIMcuyTpJAKGfPr5+ffzy/7B8GSVrwgksRGZmtZDl3xNgFqbRc0xBR
fOKRRpFxGE3GAFKNWjeSK17EdNcodaUDW+IyZ6Kg2ppUcImL247HypVAzEnAaFiXiJxpCecI
OwVyrktJY+Ey5IrhOpu8jANll5Qy4nGrx4RrF1TFpOItdf0JuiPHfF4vEuWf9P7xdvb0JTiz
wdaU0VKVNcxpuSwunRkNA7goRgR+UJ1XLBMx07zJmNJNtI0y4vSN1l4NzBSAzXh8xQutjgJR
ZbM4gomOo+Vw1Cz+VJN4eamaukKSA61mZTGqakOuVMaGBDboKI4REX33AP4EJSVgMpdgbTiI
gUNXUTbpNVqV3HB/f7zQWAHBZSwiQkxtLxG7m23anDWJRYos11Jqxm5ZYkRjvzzJeV5pGKrw
FE7XviqzutBMbkmd0mIR5Hb9oxK6dzsFu/hO3zz/MXsBcmY3QNrzy83L8+xmt3t6fXy5e/wa
7B1uO4vMGFY++plXQuoAjAdOUILSYrjRG6gzxSpG/RVx0K4A19OQZnXuuB7AA+gSKb8JpDJj
226gnlYD2mArtVFKePsOuqczN7FQ6PbEpJD/g700ey6jeqYo1iy2DcCGBcCPhm+AA51NUB6G
6RM04UaYrq20EaBRUx1zql1LFh0HNMbhy+cuZ/vr812suSjOHIrE0v5n3GJO2m1OYSIrQr07
h4MmYNFEoq/OTgY+F4UG/5glPMA5Pfd0TV2o1omNUlD6Rnl1cqF2/9nfvt7vD7Mv+5uX18P+
2TS3KySgntZWdVWBY6yaos5ZM2cQU0QekxusNSs0ALWZvS5yVjU6mzdJVqt05J7Dmk7PPgQj
9POE0Gghy7pyNqtiC24ln0uXucF/iRaEDNgB7M4MoyRMyMaHDP5QAqaBFfFaxDolRgTlMNXT
tlciVqRKa+Ey9p1TH5qAdrvmMtyCJq0XHHZ11B7zlYg4QQZIcagXRpRymRyDz6tkmtBcqIig
BnwHlxj0acHlAF1HjZTyaFmVcOhoW8DVcQyQ5WWMbszI7phg+uGMYg6GABykUIl1x4T6kphz
nqEuXRknRDosYX6zHAa2vojjo8s4CJugIYiWoMUPkqDBjY0MvAx+X7iLgpaJyGFelmjsfPUC
0lRWYHvENUdnzxxlKXOQT58XAjQF/6ECzbgpZZVCSL5m0nFL+xjDUzciPr0McUC/R7wy3qjR
qaE7FKlqCVRmTCOZji2skuFHaCOCmXKwXALCEEc4FAhFjjZw5A5aJhk1J7BIz9GxTljv1ni6
N/zdFLlwY22P04MlUgfJwPFOao+cWvNN8BMUiLMlVemtSiwKliUO3xrK3QbjtroNKgXl6FLK
REk5M2VTy8AVYvFKAM3tLlIiPIR4eDDGuUjiZh3mGEYY4FW7kQ1QOGdSCvdslzjlNlfjlsY7
0r7V7C/KvRYr7rHYmA8Gw9W5RIj2SXjeFTaBkskgTiCW7iwnGBft3LAimLyAUMHTbsvIzRJB
QOZFY0aLmlZiWhiXx7FrzayEATFNH/Y4XHl64qUrjPlvU5vV/vDl6fBw87jbz/if+0fw8Rg4
BhF6eeDTDy7dxOCWTgOEzWhWuYlZSZ/yH87oeOG5nbAz9hMmtcwrBmcnlyRYZYzOWKisnhN7
q7LSsbDYG85RgsfRMolnhdI6ScDpMh5JH6xPxDJlIjKQLWJKoy2NDfSiKj/N2CFfXszd0Hlj
ctbeb9egKS1rkwgB8qMydmXL5k4bYzL01Zv9/ZfLi1+/f7j89fLCTTMuwch2zpmzL5pFS+s5
j2B5XgfCkKM/KAt0mW00fXX24RgC22CKlEToTrsbaGIcDw2GO70M43aruseNvfZozIl4JqGP
+Vkm5hKTFCYkI0QfY0ccaEPAgA9g2KZaAE/oQIQV19Yps9EnRCROPM7BG+pARgXAUBKTJGnt
ZtY9PMOaJJqlR8y5LGwKCcygEnPXMLaOuao4bOkE2ChQszEsG3uo1xD4N+DsnjuOkkkEms5T
IUBtkn7OxidgnzmT2TbCVBd3nIdqYeOeDDRFpq4uglBDMZjfMCtuNo9sLs0owOrwtNs/Pz8d
Zi8/vtkY14uPghXQOiSnMtMokwlnupbcOr++uG7OWOWGstiWVyYn5yqXRZnFiVB0JlZyDV6B
KChPDsez/Ademcz8ifhGw2Eigwx+WD8qIhydFhFQKLImqxStjhGF5cP4bXRCehsqgXDb8XS6
lj6GcMbsmaNNU0P8ltXS2zEbL5Q5cFcCfnwvwZTPsgUBAccG/OFFzd28HpwDw/SPZ0HbNkvX
xJanK9QL2Rx4rVl1nNbBuZeLg59NtaLGMYB0lXtdbVNIKAIU6owhbvImsJY5TOL6o1LXKuOZ
bPa2qjE9CFKV6dYhHfZnRbNLv29BhoxKVHWoXeqiH+QTHHRaonNhyCL6skgWPc1DOmD5gSQq
r1REA9A/O6NBYNcpd743CFXtc6vhuwIMLvAEcGWbtLl0UbLTaZhWgX4AX3ETpYvA0mPyeRUo
Eghi8zo3CiBhuci2V5cXLoJhC4jWcuXwpwAFbVRW48V6iL/KNyNl5no1mMLEqJJnnMxAIiEg
u1ZtOMFr2wyqYtyYbhfu1U3XHIEvyGo5BlynrNy4dylpxS3TeQmiOBfUGTLgOlF6XkthjKdq
JCvAfM75AgY/pYF4kTQCdb5iCBgagOoMHQj/IsTwBV7tNmMTAcFZ2+jpWskleHI2tG9voE22
AO+6JjRV7sbmbQNmFzO+YNE2nCA31zVweJPqHjHgHKdna+/jesvrRAAPT493L08Hm5wf+GoI
Nlp7UxconZTiGKFKVvnaaYQRYXad0yrLQTZmrFzzwKNv3fOJVXiy08ac4K3VGWvvI31jWlYZ
/sX9bEGPIz7QUU0uIhA90C/Th6LoQKT1DgSdMkPoe+NLTZxmLCScZLOYo2MZODZRxWwph9Ii
8vQE7iTYbRCWSG7JGx3rABonyCIywhPtwUMs5sGNDuocBLwR9fjARggWaBzMKTJQq0F4Dvxm
63oGNZmhiGSdX4F3lTW/Ovl+u7+5PXH+eJuCCU4IREqF8b+sK4oNUGLRAuYdfQOqHWDiNOwN
MN4NrFHND+yhJeX1mNWB2orL3D85BXFTSFOdk2UXgws4bKW2l+3Nkm/ViMMNrlYbcyBNmVD5
ZApxLCs+AuaFJ4ZSi43bmSeCZPb0ujk9OZkCnb2fBJ37vbzhThwrdH116nCDdU9TiXePLnlL
vuHUnaxpx2gxlAMMbCywquUCUw7b0XiYJqSssWQqbeLaTT1V6VYJtDkgu+D3nnw/bbnYTaRj
agNFktLAXX+IihcF9D/zhKANxVexcpLf1tSECtLzYUOUTVlk9D1xiIm3zXSqKI8xZkJxo60Z
MJZItk0W6y5dOJXvzMSKV3jf5WZsjoWUoxNkcdwEStRqqLRC0cJMhg12Uch6fWgN6NNf+8MM
TM/N1/3D/vHFzMSiSsyevmGJopO2a6N3J3PThvOjS6YOoJaiMvlKh5HbLAHvIxw3T543KuO8
8lpQOLvWwbbmzZotuSn2oPgoD5Cnoi0ARZmTyVj/bs00CHoiIsGHjO5UggH3yoGNfnUsZVhe
gXotl3UVnpNYpLpNbWOXKo6CQYCFNBgrS5txOZSTLRvsEuKatS7IWNWOVUXSkjPqmlQxHRXh
OirXvbQj+Ydl2iRfNeWKSyli7iZ6/IlAqxCFQS4GC7dgzjQYym3YWmvt63fTvILZKZVuV8nG
HTSjvRi7oyVpNg3MREeSA98oFdA2hDTWS5wE+8UyPnBEqahy2gYFg7LFQvJFmEX21pyCr8iy
YOaoVhChNrECzWUsxnB1OSgcu2WYLaurhWRxSH4IIzj0yBoiZK2Svmy2NJYQvoH6pf1Sg5KC
G5TVi1brTW1BhyXKMCCyDD6ncx6278RdsbuLOddpeQRN8rjG0josKVwzib5KRhE76AZWcUfD
+O3tjaI/BQKOsHal6Ut7K6YbDdHc0XOA/08khoBP8b4YmBAcugn3CvRvF1t3hVez5LD/3+v+
cfdj9ry7uQ/CuU7cpkqNiN79wOL2fu+U3MNIreB5o5vU1KJcQVAdx6QW9bBybgrf6SE0p2t/
PaQuDUYeuwV1KTPXQ+hX5IR4xq1FRDrM/Ftbb7Zq/vrcNcx+AVmc7V92b//lXN+BeNrYzbHT
0Jbn9offavOVnVNkUDCbdHqS+nhRMT87gR35vRbS82mFYqDlaRZDWJwzzGZQEg6hYjEPfX+8
yp+T+zOxcLspd483hx8z/vB6fxP4RSbjNRmWb87PKBaynqx7l2Gbwt8mGVNfXliPGJjNvTlr
a7f7nsNKRtSaRSR3h4e/bg77WXy4+9O7kuWxe+cP7iQEV+6dicyNdrLOpLvEZN1ESVsfQWXE
ynKR8X4A/1LCgDA2NlmmUUxga1b3Xw83sy8d4beGcLfobAKhA4+W7GnOpZse71ow3+WXbruQ
JLwqb9sbzJ151Ww9dFRDgY15Lkq/hZmbfbeCpR8hV6HOx9b+ZtDmiLFixh9xlYRzdFlmkF+9
xUSdKVRs424fNeRHb7HzbcVcf6cHFmXj15hg4yYBr1WXNrEelC33PSvsrEXiVW1gHr8G1r9m
fgm+PbghToX+4BlL0tcxNPsp4zay98/fnEEeHFNw3WJPrp58o4C+0Wrz/tS9owRPPWWnTSHC
trP3l2Grrlit+uCsu7a/Oez+c/ey32H49+vt/hvwNqrvUYRmQ/KgNsSE8H5bxwXAlkG8b29L
SV37CSJ9sInzieytfXhlojrMniUTj5BG97Hm/Idoqy6MosNivQgd2SBSwrsbLJkFSWvmas0c
IcUCGrzMrGVBMJKZRsAuYDBM3JYvSbqWeDlKAcqKbm+HwXA7oSrXkrqw+S3DrPTjEkDzKsOG
kiczYgoRZABEE4gusVjUZU0UGSg4OeNu2BccRA4IrIzGdEVbrThGULzLhk4A22xuzshirfYJ
nK0hadapAHEUo4tBLABQTbwtGLqOphrd9giHVDnmV9pHa+EZgMMJUojpB7ysb/kIXYQQz9ZJ
kceDD+wmO6brZg7LsbWmASwXG+DdAawMOQHSP2BV9/JgzA0YLmDuw9TI2loE04MahJi/q7GS
7Rb5Sbzh1AaRPw4lyuRQSULwmfI21WCSRCQYy+UplJa7rDTYuvX26jIgpm21t10TsLisJ+pN
WjcL/Sj7lql7IUngllns4FN7oniECEdAbc2Oq3VbyNF6SHNQGXBVMPSoIMVVyA5k8p6ky2Nl
YJ+DR78TCCDM7gUptrePckZUrwXitlxmCilCVkS1BVGmUW3LsfsUgtEvNaMFeBOvbEL9f+yF
jRXfEsWjDn0825yHzZ1SLvA6Ca0XFi1hIvaf4hFTWbYHOBZAholCw4UGCMSgCyHJqVSZaOvi
jdYRd/dfPAK14/AwgGpMUKKFBfNtRJrYPr4RGq2beTRJHAROjTBAKddFiNJbDDODuT0S1+QS
vDK+0FtAGkhT5vcaKgOJcZ2yvqlBXBRiqBZs0LFYOCTTcn37CHFs42GDhX1n0xdADhht0Osb
H1Q/Siza7LrzyqulpIWzwKPoY825sJUM1H4js4WnRbUNPfrja5Z2pSia3LGHEwgTCXXjR2jw
VnT39FmunZLHI6Cwu+VksjsFGlaExdkQyrdXVK1nMVwNgb11i4jJzLVTr93dUI+5ovOTpyGj
Tw5Ys90+VWwdJEo3TD298FV5W2kNCshUGtPyaS6t+yDQxiNRufr1883z/nb2h63A/nZ4+nIX
5ugQrT2pY3tk0GwxM29r8IeC5SMzeXuCn7DADK4oyILnv4mcelYF1sDHEq4Mm/p/hUXow7cq
WiXpskXLUuaJdBPW9odYdXEMo/Nnj42gZNR/qyGbvHk0mOStbQvEc5Xo3YbPaUN4+MWEScSJ
jyCEaOGrpBARGXKNr8EUmvD+vVcjcsO69IpM0AX8rNOrN++eP989vnt4ugWG+bx/M0wAGiCH
AwD7FoNC2uYTYxkjqEHShqu64QVHRl8EDW+TrS/vWhRVnDoxamEFG+wvuEXIDSPrOFws6hKj
IJmvAwy00Oa7C7EZxtyBTqPINYWA8legjQZmylhV4WazODZHZDacUq/dw5NmzhP8ByMI/2MB
Dq69P19LGNwNboa7YqMx+Pf97vXl5vP93nxNZ2bKoF6clMZcFEmuUR+NDBoFavWWI8UWSUVS
VP5rHAvAd4cTb0HwbiavyEzxFNlmTfn+4enwY5YPefbxVTpZXtQB+9qknBU1oyAUMrjJkrvG
fQCt2iKAsBRqhBGGw/jdhIV7Xd1SLFSZBT6NOXo7QYfVXq6Nev9Ne0uWp5V8hO6RVVlM1K3T
xMD2lKuJcS2MUglEDYW7gxk4VZU2zoEpy7ygaGjRsAhQ+zLfUjBHveduZ9tgeZ1y6KLwssHE
E5Kj8qDronOxkEcOrY9J/gZP44aMUSKTf2oChwILeoxiaXT43MhWc5fo5vp5AScjMiQmFVUz
3fGBOR37ZY1YXl2cfLz0CJ+u9/cPgXgHkK6rEpi9aDN19IsrKvxzzA4R9rFszbaUASKxc/tw
kkyW4Wn4eVDvzc7SURVRxllh6sSdNvPK2KlqYpOlMj0sUV5/e/fjN+FrI3X1m7O/ZEx6XZWl
o96u5240fH2elO5Hwa5VHjBX12I856G5z27jK58u5+uu0qRCzc52aYVjbqqtrLdW2wtWe4zK
vN4iwnUwkMp+7ASATZKxBWWHq7bWsRMZLk0xuv/VDtDC5rte7jpMShULBgwX4EUhXU7j0mkC
f9emLFF2utRZb+CmbdjAZn1YUOxf/no6/AG++djSgaJa8uAFDLYAKzBq28FDcmIz/AW227vr
MW1h70HcsolXKonMjcNCQmExWHFK94xBwvADPqT3KQp/daKyD8vxS0D0lXWF76DxZX1srgzJ
CgNAqgr321HmdxOnURVMhs2m5HdqMkSQTNJwXLeoJjx8C1xIZO683hBkWoxG10Xh10eDqwgG
oVyKibsk23Gl6cIUhCZlfQw2TDtRGIB4jH5KZGAQVkwDRTWRjzXQfrluIzJk0KSjqmv2h6/j
apqBDYZk67/BQCici9KypNkWZ4f/Lnpuo6xNhxPVczef0NnVDn71Zvf6+W735v85e7blxnEd
fyW1D1tnH6aOJV9iP/SDLNE2O7pFlG0lL6pMJ+dMajOdrk5md+bvFyB1ISjQntqH6YkBiHeC
AAiAtPQsWfI6Jszsii7T06pb66gq8f5Gmshkl0Cf/zbx6MnY+9WlqV1dnNsVM7m0DZksV36s
s2ZtlJL1pNcAa1cVN/YanSegfrQY3FU/lGLytVlpF5qKnKZMu6yTnp2gCfXo+/FK7Fdter5W
nyY7ZBGvMZlpLtPLBcEc+C+RQYmOvcwI/QbwriSLPPH5PQ0IndrOCUdoVjqnu01sbmJY7La8
gATek8SedqLDc+zhxpUnkw/MIT+iUc2H8qShp4ZtJZM9P8+aaSg+9viURnm7noXBPYtORAxf
8y1JYz7MMaqjlJ+lJlzyRUUln12hPBS+6ldpcS6jnJ8JIQT2acnn18Tx0GEUfJdjLqFDkuN1
Lui+J9BOfreGHSYqQu3jxBZWlCI/qbOsPbkwT4x4QfYLJrb1HgdZ6TkDsYe5J/r64Anp0qOi
WwoCrZcinYNOopCd+6juq9pfQR4r/uDv0j4hTVlJj+vkSBOnkVKSY676DG1QtXxw3JG290RQ
6dK0TNzOOpH25vPl49OxbuvW3dVODj+6z6oCjscil5MUHp14PSneQdiitDVpUVZFiW9cPNtg
63Gj3sEAVT6+s8OUMsy4nmUlUuOVM1a82+M2CyZjOCC+v7w8f9x8vt/8+gL9RKvZM1rMbuAg
0QSjttBDUPtBleWAGTeM2mXHEO3uJOsui2O/Iaow/taWBu0IRyYJEM2FOdyUF9zU40h6Up2J
8tD6EtvmO364SwXnlOuza0vKOx7HnbM9p8IkHVTVh30DzUtTRccHeU+bKdtrV19ME80cLSOF
YXodRNSHGkh69uTe0I7pj/RSSF7+5/Ub43ZqiKUiRgj87fOFKGPrPtT90eXBVQSoDWLGxjRu
pM6OiN8gCWfSB3BkG647wBh/PE4fYFoRV1zgnf5KOeFIHawXs/k10RPpkB9MzvA3yNDSNSWe
kJLkbnYnysyFJLabi6GpJ51pRcIpsdonXDlT5EtZjDjt+u3km7oULILYylxh9sZJTySnjiip
j1taH2byIkCdyiKWmNBvVxV5TaLd8AtikkEAGnORIU4y6iFS6owKpLlwrHm7Ukb8Yabr6Zyw
6LijhwCwAF8o7EDD5JsacOhY5V1amsJaL9cIRRXiP9zuHbecbyfqSISLX7Yx2fIupn2sl8vl
zFe+JumMg1fqUQe97k2EZCxvvr1///z5/oapTZ9dHnbSbkEdm/t4/ff3M7qb41fxO/yh/vjx
4/3nJwmfgH11djfaWSdtn0wRwDH9jUb6R7+nEpzRQm87kFpz28B3qanmFuv9V+jo6xuiX9yu
jHZCP5WRAZ6eXzCrgUaPo4gJnidlXacdAln4KRmmS3x//vH++p0OOqbXcDw2begQy+SggUm4
dtcentd8HAlpwtCoj/99/fz228WlpJfeuRPAaxHbE3a5iMH43qT0QgUBTsLGDqSNTJjcO8o9
emkZxxFru6iiUiZ2aEEHaGslb8NgCtdmDlTJi2P9ZW6Lch1Bx75BZq+bdnLTPyFHh2eR76Un
OHsg81xljLUeM/TzsG1fPS4+ZDRMtEdoR4Q2djQfk8L66cfrM8jnyszTZH6tYVreNlzhcana
hjO12p+u1kxz4UPgbSFXaNVo3JxdrJ42j/EHr986ue2mGIz7ozHeOEQdRFqybB9Gqc7KnZPn
0cBAQzrmPFMD8T9PorRgL3fLylQ6RCXpHNo9Dx4Cft7egZ/8HAd/d9buObZMh1fm0Ric9B+W
gXOgNn7S0w4ylL2TC9NmDJPqxPFpaFLXUkv/0k4wKIbwXgjDQKIbV1LJk6dpHYE4VR7joCFA
/tYV007vwUczFZKZIKWO2Jf6RD0oKy3a9GZOO+qCpOZ5kAPRp2OKeQC3MpW1tN2yKrEnF23m
dyvt/OkdTKUyI8ywh5e2Q30HPAcTEA3R6iuyH+JAPqS9cBPMp76z1xaidgJkpiGDMXVOm26r
IfjyWWtLFt/IDtK5JjeAaYLsHuERdUioY1+NdTIUoE663uIDdp+zSzujL+3AT71S1IQ7lk8/
P1+xqzc/nn5+GMZIPouqW/TB9/B+pOizblymgunQEYUMVX+YTpqi23KEP0GkwRz2JpNs/fPp
+4cJobxJn/4izBxrKopSuZ3HWiX6RsCiMFay6TkRZf+siuyfu7enDzjOf3v9YZ0VtMM7TiRG
zFeRiNjZQAjfow4zBUNBaJ/UNywkZKZH5kXnRuDW326Bwz7g1THg/TOzw0wXf5NwL4pM1GxU
PpIYh+r8rtVJ89uANtbBhhexi2lHZcDAQrfjzo2qS4/hhCSf0zDGWaKmGwIxcKZxZo0efaxl
SouDVeIACgcQbZUJCB5Pc//KMlL9048faFzsgNoMp6mevmG6mcnyK9Aw1eCo4kWKf8uhn08W
+YYMBuV21UyaL+NDByRlCbUNKzZHom7S3Xq24D5T8TZEHwuPxRtJclF/vrx50eliMdtzwpdu
rI6tP1UtzTRem/SkZq5GtejKMJvHNF7e/vULyvJPr99fnm+gqI4l+5hBmcXLZeBpn0on66U8
9M2yN0idAHTCkpLXj//+pfj+S4yt9Jnr8PukiPdW6MFWB0LkIBlkX4LFFFp/WYzDcr3HxvgO
wh+tFCF9DCvdprlAnP8oAB3HJTCOp3EMrfo3tMNSRd0agcitsIejnnaIQELgXe0cyi1N7sRV
PtwAYOd1E9MySaqb/zT/D0EBzG5+N245E8VCr14kowvgXj852J8GQxXXC7YLOdppdTtAe051
AI46oIuW7XDXE2zFtnuhMJzREUQsOpb62QVS7NOj2Ep39LVQ6UsGUXA2MDe/kgnzc/MmdSBO
2bDdcLQPjhaZMxDzu4RbfQboz/dv72+2Mp+XXTYos6hPmeAsKARuePTrx7epDBgly3DZtElp
hy5bQCoBg86QPVBZVW4xxYCd7/oQ5TXlo7XcZa0nO6aM1WYeqsUsIMb6PE4LhRldMX2gjD2K
xgEE55RNyFQmarOehZF9LyFVGm5mszlxiNCwkE+kB8cgKBoKtOM0XC65jHo9xfYQ3N4SE2GP
0S3ZzDj+f8ji1XxpSRqJClZr6/epU0RdL15FeHJybpskqiNts/NYoWqamBnz/DetSnbCDtVD
awqItpajXBzSxPnmNywDaEBUtWGgzaKG84kST9cJ1zPwNqpD8pJMBzZZzNjB7yiyqFmtb5fM
8HUEm3ncWC8KdFAQ09r15lAK1TDVChHMZgtWhnf6MfR8exvMJmeFgXpdW0csbBEF+nYvJHc5
SP58+riR3z8+f/7xu35l4uM30Nufbz5RPcDab96Qlz/Dxn39gX/aJ3eNoh/bg/9HudNlm0o1
x73P7S30YNF5VEvirmYybkoG1GbUCWmA1w3HErplf8psqzwoIOd74f4ek7ibzAeViPFC8WGM
rRLxwX56Ns7a0537u61t92G9D6I0xuB3uwXD/qDgQwSKQdRGFgjftKKvCZ7KKPfozIQvj4Vi
YGwypOxQ6NvQCTWTLYZIjPawD2Pug8FqdKSR6Oa3uRPfiy/BGODaYdJivzdBzeZNVCHETTDf
LG7+sXv9+XKG//5r2qqdrARe7Nvj0MPa4hDzN1YDheObM0EX6sHu78U2Wad9FMPqKzDDqLY1
cZYHqNm8COBcabubf1vkic8NTB+ULAZbvz86BvCRP93rtDQX/IlrEfHeW9A1dLjinZZKL+rU
+DBo6PHY7LawP48Jr43vPU5k0D4leE8F6BeK9YXHWaGSXk+t+si3HeDtSU+afjjYU/BJsI/n
GccO7YpueWPlaVbwlaF1zNdAEBT5lSwwS0VuBzZjc09wYgPfmcdUgDrBqSsavqcP5aFgE+FZ
5UVJVPYXP4OMp0E6pS7uqisF7AVd/KIO5oHPebv/KI3iSkIlByIYpTIuWJMf+bQWbv5NMeGg
9ECq1bVOZNEjLRS0vGEirn1LrC/wcx0EQessIOuOC76de3wYs6Rt9qyF264QOEFeS+LCEt3X
fM5D+7sqZpeUzopS0JznderzskwDL4LfSojxzc6VZWKeOKYLfrvg3SvhvEa2xO+1bd7w/Yl9
K6eW+8K9wLIK43ecSZrrKnb2h1fWEnQ4dvKXbnPOiGd9gx84zyYCQ+W8SclHJ3mkmtjhmOOd
EgxIW/K+ZjbJ6TrJdu/hSxZN5aFJ5f1R+jwPe6TTCKaXB5Eq6ojXgdqaX8YDmp/6Ac2vwRF9
tWUgMRaU30j2bWvrEx1nSaPnmhafEOXljKuMK6Fs30SapGzifPurzvturCgNPa/XwTS7PjzT
8jCPpSCa2FaEV9suHmnCRAtl0jzaBe5Z9zTrk8MxOgvqJiSvzodch8umYZvQJ/8bZzdgs+6L
Luc+oZt5wib2vI8nwD17UTa+T9wzhmJ8xS18LQOE7xuPB9cuC2b8opH7K8OuXw/B2E573L5m
V2Y4i6qToA8/ZafMx2DUnSemQd09cMlV7YqgligvyILO0mbRejx/AbecGMBsrDpfRO/O14eL
rsU7tV4v+NMQUcsAiuWDZe7UI3yqldy/MUfdBh25dpTfLuZXTnwzu8K+LrexDxW10MLvYOaZ
q52I0vxKdXlUd5WNbNCAeG1ErefrkNvJdpkCZE4nVF6FnpV2avZXVi78WRV5Qe0k+e4Kl85p
nySIlRjWnYO0jil9W1dSmpawnm9m9HgI767PfH6Cg5mcUTpPTcKrU9aHxR1pMWYxv8IIurBe
45VFva1BnIfVxw74g0BXl528IiuXIleYTYoYp4qrZ8J9WuxpVvf7NJo3DS/k3Kde8RPKRN9g
H/qeja60G3JEM1VGJLz7GO2bvmC6Kru6JKqEdK1azRZX9gI6S9eCiAvrYL7xhLIhqi74jVKt
g9XmWmWwDiLFco4KA54qFqWiDCQV4tSi8Bh0NTjmS2Hn87QRRQqqM/xHn3j0RGMAvN3hdF1Z
k0qm1EFQxZtwNufuZ8lXZG/Az43n3SBABZsrE6oyRdaAKGXse4cIaTdB4FGVELm4xktVEaOF
p+FtIarWxwXpXp3BAv8bU3fMKccoy4cMFqtPkAW2yUv8GBCWe04LebzSiIe8KBV9dio5x22T
7p1dOv22FodjTVimgVz5in6BLuogX2D4qvIEyNaODXBa5onye/jZVgefoyxiT5juTtacM45V
7Fk+OpkODKQ9L30LbiDg37iyCjfXXHbh3cUXssdUeiKXO5qokX422tGkKcyHj2aXJJ5HvWRZ
+jMUqC1qB7xR6fDgiwHLjF/yyRHFOy9xxXmADA7gE6xVY8nzcOUokLrAw/vH5y8fr88vN0e1
7W3vmurl5bmLzUNMH6UYPT/9+Hz5Ob05OBsOaP0a7ZiZOWg4XE3MjPDz0oMw9WHpE3RooZmd
k8FGWWYrBtur/gzKSRrvoioliSSPIRoex7eykiqjgchMoaNWxCEFSHLeMbVFfAZdRTRIj+AG
oYBD2vFbNsK+pbbhtYf+8SGxZQEbpe2nIqe2lLPnruN8Zhmgls70dZAduTWygRGNT44Jj8fQ
KWvQGsxzieNXWatj63FwgP2y8N4tmKqV5HzakJVY4ZWjeKuSfLJz5fcff3x6rxdlXh7tJybx
Z5uKRLmw3Q4DQFKSXt9gTOq1O+JhbTBZVFey6TCDt+wbPiHz+h24w7+evtHXzrvP8LllJ1aC
EHwtHgDt1iZOLNB4O1tD4fNUMx/ciYdtEVX2kw4dBBhUuVyu117MhsPUd1uyrAbMfR3MWLcT
QkH9TixUGKwufpx0GQCq1XrJFpHeQct4I0FPsi8l539D8DpWXvBdrONotQj4zCg20XoRrC/V
Y9YRM7pptp6Hc757gJrz29Iqt7mdLzdXiGLuOmtEl1Vghy8NiFycnVfmBhQmd0CL0MWCGaVm
xNXFOTpHnPw10hxz39KT92oVcnaVcVKysK2LY3wACD+153Qxm19cgY136aOBqPU8OtoPa32n
HwOjriUDd7jEGlT3wmkH7yFtlEeg2xOb44Cac8r4iE4kU15cbKuIge934R1by75iLfME39oP
AYyYI779m9lufANOixVRzKGUTMRZ5iR+aUDWGbUFjAVqe8+lhp6jqpIFV2gW7bX1lGsMpogt
qq0PtSXZrUccZqakiR3HLpxl8tWTy2ogejyI/HDkbuDG+VXLWRCwVeBR44ulGoia0pN4aqAo
GzbUf8DvlIxW2+li10maOJtOh8YtquJK2M8WWEBYubfr2w3RGCdYjycYIURJuc1sJZ5Ft/X8
1kNyhJNCNrGsfI3ZHsNgFsyvtERThd4eoThb5KKVcb5ezvikQYT+YR3XWRQseKVsSroPAo7p
UcK6VqXzfBJDYJxvPXUhxcLnVmuTJtFmNl/wFWHS95JaV2z0IcpKdeDdQ2w6IWwJnWD2ET4l
pkRF8kMSkiaek2epbWQnIPsauC+KRHpuoO1+AJtjo9gJ0QMA4d/Fyr7xsylA7Ye15Uc6VlAb
q1bq4XbF30eTDh3zR0+gpD1kd/UuDMLba9Pi2BIpjrfB2jTnCK3J5/Vsdr3hhvY6owCJKgjW
1N2b4GNgtaxph1BlKgg8axo4zQ4fS5DlwluJ2oerOSdREir9w1eGzEXjufAhhdzdBvxFnE0F
4p4/bplMG76fWy+b2epK4/XfFYYo8KOk/z5Lz6lQY8zZfL5s2lrFPMnAq7nFkNTr26ah0QOE
AGTvoPENLai9OkisUI6Vjl0vwfx2Pb/QSQma0NxXFXRPM6frEwmU4cRr3Et3e5WuylpPtCnh
GzIVHtGBkqm/sfdUHYT246AUl+1q5WVfzXrlSXlH+l6q1XJ2e50hP4p6FYbXjvJHLWfy7a2K
Q9ad9Z7JBx1m6ePkjzKXtSQLsNMdfJn7q0xOT1tj+Hz6+awj7uU/ixu0nZCU/JUd7c3EDTkU
+mcr17NF6ALhXzfCyCDieh3Gt6zUYQjKWJZqUl4qtwbqFFdFnLuBwXW+lkxpAMrI+zvdB1XM
URu7AK39ONmHHWIfZYIGovSQNlfL5ZqBp4T1D2CRHYPZHX+YDUS7bO2ed52xnJvpwQOdM6IZ
y9VvTz+fvqGpexJ+ZQIPRksh+7ZlLpvNui1rO523CZzxAs1bQl/C5WosPNXpUjBBgvtaTBc3
+vP16W0aBGgkN5P2PCZRSAaxDpczFtgmoqzQc00k0/hwm84Ew5FF2KOC1XI5i9pTBCD+bSSb
eoeK7h1fSWwczD0tpfnqSePYOwKbIq/aI6YEGN9osLEVPgiXiUskokHDMjWQ2fgsyh8uZK+x
SXXWCAzQu0ppHnh0SbkOKO/YJD4+MXxbh+t14/s8LVk3cNJ1OWRgyd+//4IwINULVd8uTWNh
zMc42iiOT6a7R3jXw0AwTGvgUFCtzQJ6y/xqx0d2sBS9u+89YG9JKo7zpvSAL3wVrKS6bbiZ
GHCu+OASbuNsNff4uHQk3eHwtY4wwsWTg4eQXiVjbSIdsirDSVcBNs7cPHSwOwUjXCKSGYkR
2Q+kv2pNK/NdKppLpY0UXJGTqSjdqKAhwJ2wZqctWVxXqT5QmWbkGC6PWY88AUegcCre6SEv
Hgufh9wRb77Zu/3DqU/jM04NwkjMMAKcF7A70HDN5h96fdt2nB4lOq8RjgQ0jAoLAMCr0ry+
42Bwap5E+sU6KLv4H/8ikGUmQX7Lk9TupobqfHkYjUskS43BCEDz0h87qJrIXOEbg+0uYk2s
ms6+PzUAJXcO6BxhvuVi77YQU3oWO0q9ndRszda5e3ORzFcP1PnXQGzLBHcNOZI5t94jgryN
PoK30WIecAjjicKAu2y8E0wjy4OwzfBRWWIMkp3W4hzZrwzjqyv2a1j5ycl4AQTe+I9DyVpj
Ybns44NAkzQOGNGzYviv5IYPhizuHnayfU/Sh0mygj7Z4UTUtBSYbr6qo9KP2vJajk2E6Y5M
ErLplTEcFtObYlvbxywFCAHZrxJ7EnCKUH2Hg4kkyEYJ4+4ZNm7hIxKfqCZXuADMjk0vJGR/
vH2+/nh7+RNGAJuo845w7cSPJjyzh6d1vJizBpaeooyjzXIRTNrRIf6cImAMuKqytInLlGf7
Fztjl2/SyGnRnlasaKIyBEXpviAPZvVAaHk/iljZoOpgTq9xBDuPohsoGeC/vX98Xkw9aQqX
wXK+dGsE4GrOABsXmCW3y5U7dgbaqsV6zfnqdyQYo8d82WYlb5FDvHSUPxultDWQQLLaraCU
suF8chCXa4NGSAvpgNCZzdoZJuNpDQv16EysBL13s3SrBvCKvXHtkJtVQ8tx3Po6UFkVkw2v
0+gyGYR0yTEVFEYO8dfH58vvN79iWrguZ9E/foc18/bXzcv/UXYtzZHjyPmv6OTYCXvcBEiQ
4GEPLJJVxRFZxS6yHj2XClmt9Sjckjok9W6Pf70TAB94JKjxQQopv2TinUgAicTTfz18FW5h
nwauX8G+F8GMfrGl5yLynMfPQOBF2VWbnQwZYF/RtuCuxmNYW2xjTIEFSavsS3/IKixGui1M
jxUgsLIpT1YHGPSQRbmq13JUZHDzEXbBcls2luLQwL30HTBlwgD3Fq2rmh49bRfg5Ec5vK0J
08szmKMAfVJq4G7w5EOHf5+Jk/xTM36/f/9D6bPhY61zWBpaqUazEINfgP441Lj/4lNaVkn7
I3ZrUkK1YQVMpCFqCIaIuCrHXeXoABX0w3ulZ2YRmvcDFt9cr0/BU85CbQbOxcMiQBniBRoG
zFkD8DWJMNpRltFmqsT8DhxbM/Z2h4bbHoJjzlaS562OtkUiPPbtzf23l/v/McI7jx/07ZUw
zq+5/Yqu6q3yYYibwXVWuJV5n/N5f4HPHm6ge0KH/irjOEIvlwm//afhMuvkZywlyBFLkLkJ
gKCsE40B/tI2LIfgpA4wPKaNCJSLHOs++khu8paGXcDxuh2YugthAb6QH1kw/eYwgTl7OHw5
VeV5ka3+srvIKESLXFldiDeDbz3B4Md8HfaX3hOGYcpWtoNV74ei8hIWxaAL8RuKI1dR7mAt
+1GSZX27FftGH6VZNk3Vd6vjwfPywMC2KZtqV30oDdZrH/L8lnXtX6hXwbCuStsQtbnKc/Vx
7rvj7lB15cdN3lcbN2sqkunD88Pb3dvN98fn+/fXb5jfuo/FHiiNWL5k7gDKuyipCfMAoQ/Q
DTQxSYNWcQgyDp14NnwIVccI1TmuQ/w266Pq8Nm+TKl0gG36zAcWQph8JtUPowHFh2c4n+6+
fwcDTMpHLDuV16Zo8VaUcHH2Pa8l4Um7DWaHn7PyPGIlwWbF4y7BvBFVFVTmTVxJPF04w6KG
jaW6rs3giQt1oiYh0PO/Dqg4/VmstXVCOMc1rCptz/HzYVWepboAMCRo5BUJn6udiEtkdq/r
uSNxHnG9vIvlmQx4SX34+R0mTrR3KHfnhZYT7rOoM8cMU7fxBrr3IEOdHoqldrhQy5Ih8Sbe
5mtuxcuX9L6tcsqJ5e6lGV1WpaghtS4+rKxD9ft+hz+VJxlWBWSXNGfMq10y/Jbtfr/2fe1k
2V0LmHjdhmmEHbYPKE9CrBGE5vR9dMhZz3S3i6HuxPk/jzFySgKkriWAr8YVx+fmwnH/cIV7
vYxVz5/9TMaB7rbU9JjGRy2odhQWWrDn6DMLqj5hxt5vrZqRD/qIy1vErjP5AouEzMiJqvaL
PKT2pUvtSQ+sgKfH1/cfYNEu6/vN5lBuMm+wdlkQMLSPLZo2msZYLBkLX6ZIfv3X47BKa+5g
8W9m5EzGdwCFV/8eq9CZpehopMfM1BFybjDAXG7P9G5T6R0FyaSe+e7b3T/1o3yQM6wJwSw2
01X0znowZQJEEQJsrjI5OCJTAfLJbnEDycNhej+ZH2O7nAYH9X7MP850GHiypO/tm0DoBWDx
n/tAT+Uw3VlTBxLuyVnCPTnjZRD5EJIgHWfoIJrdKx9TO5QdekAwPbXW1oZPiE73hho1mLbn
Rt9tb4tM4bpUmGF5SpkC0KGuNKe82GYPdpPDETHA8mGPMeFxSwKWSRuxVQ2GQxAbe7OrrIdB
+OWan2lAsI41MohGirXW0+ncRyceOnXp3apzM2wQVYgNizh+vvpMk4vudmYB5imJDW6Lz36w
6K9HaE2o2Ovu1CAlEo7eWA1kKWEIXbjiJkHkR5DakQglF7eKwJ6CNg0NdTFisrsFmAUycggj
hCbYt56t31m0bAw3P3UfxoxgEsX5DokptnurZThJ4jR0xUJjRIQh5ZdAGuAAZQkOJCHDsggQ
g1QWcig4uCc5lnIPEJtOIFP3blZhhHmTj82+yY6bUlQcTSNkLG32dbGuuq2b6KFPI8aQzBRp
mjJNo1paS/57PVXGNpciDpurW+QO+u7uHWwOzLqZ4nEXSUSw4xmDQZtOZnpDAv0anwkwHxD7
gNQDhEaf1SGSYE2kcaQ0CjCpfXIhHiDyA2hZAYipB0h8ohKGFmnb26ssm6MLk4848iSmuEk+
8VzE0wA74dAB5qQn+sfAe8tFbMeFWr4lgeDAyrPOGsK23vlwjgjf1mXX5EhdyeAPGL0tywKh
95cWaaQcfmXV4Zqriz0etO2OLlh0MUXD2IvQ9B9Uc1HWNSgSzI9hZKnYLSyiVmjlJQTsSSyg
os7B6XqDf83ChPn8IxXPcFEAeiTuUzZI6vJtg9T1pmaEm358E0CDrsFytQE7BV/vaxz42ndk
2FbbmKDL26lOV01WIvkCeltesGxVjPmC+cx9pLTHgSvG2sSy4N/yCNETMDgOhFKkk4sXuGAi
RwA56aAaREGJ5+aDwZViSUqAeiTDLI85AugclPiyFVGK+SUYHN4yRRS9uG9yIANf2GamDaUj
cRBjZrXBQpBJSQIx94lNlzoBMIQkCZG6F+86xNh0KoEQz0ccY31KAgxVWxJK8b1WM49oTKxZ
dbQhOvf3ecwiLOG+7WjI46UO1JS7NSWrJrdNn4nhkIBqCZF+28QoNcGpiGkCVLSfAB27FDfD
HBtGDQ9xYXypwwGcYMLQkdqkSMMDFS1xymiItoqEosVRLTnQgdnmPAkXB6bgiChSqF2fq22h
quv1S/ETnvcwwpCyCCDBGhAAWOwidbJr88bx9B6zt+YsxSfxtvG9fzR+3a36Dr8KMeBgzSEZ
BTI2cIAc/kTJOWr+Dg5PC+kXTQmaBqn8Eib+CBtGAFDiAWKxC4Hkr+nyKGkWEKyfKmwVpkju
ur7vEoYKbECrYQZ1TigvOL5G6RJOMQBKxLF2qHYZDVKsxgXidfefWEL6gVXY5wl+bXBi2Db5
4ttKfdOSAJ2kJYJtKhgMSHUAPcKaV9Ap2v8AYWjkgZFBxLzL2+OwNnDBmMcZAvSEYuusU89p
iNDPPEyScIMDnCB2qwBSL0B9ADIqJB3VjAoRayxxUL7Y2sBaJ5x5rzLpXLHncRWNK6bJdmnN
oFjK7RopzngytOjeOA0g4c3s3yydV2S3gSf8g1D/mXF0N5BErC4RiQkVPPJ0fdZXIhAIdmNq
ZCqb8rApd+IK4ODkLxZl2Zdr080PIo3MltExks+HSkYUufaHqu1cvCiVW+Jmf4JMle31XHUl
ViqdcS0WnPJu2mIh9U/k+9gy6sviJ37pCONifgXDKttt5K8PBM2Z0yUV5Wl9KD+PnIv5FgHx
M/s1jyECmXhMVDhJPt19Qz1u5fNZsoXzOkM3Ky48nlI6jd6jGtbeiu35pp165ZMtvtvn16Lv
sLLM4wVYwyi4fJBZwYLXyXBesijLKXe+XaxgxdXn4iLBvnbeZ5ou62KVrB1tDHdnMNXSraDy
u65ame8PAB3bP82bTGfXyOZ/Ms6jPA7GhBscaLlnjm6P3+OTHOMT60tSBh4RnvaaN1hcRIPN
OE1VSKlF1JO3GP7x4/lePnftBCIdvmvWhXWxUlDE/p/pwS8Cfim3E8+bjfKzrKc8CXyxcQQL
5JOlgX5MI6mjB4aVjUtLgwtGsyP0yGIMLsp4eELBMfmkGd8pqmcvQwq2XdYmYogRzaB+Ezn1
15vCsX0LWe3yeOliCxVURr23RycWPNLSCHu2wSYYM70G0DjakhWZk/BiN+1AxBqsaWlMsbDj
sBi5tllX5cbyVlBBCu58L+QpFfT5mB1uEff+us2Ft5tJ6MwwM7MOFhW/oOdGlmu+7c9/lbGA
xSj6/vuUd3Ez266lGZHG0IffW48nTljb9BZZhho0adLTKW/2hV5zAlCeTnbeOG8b7tnTnHF/
D5R47PGJVmPzQiKGHr8MsHVaOFF55FJ5GiQIkToDVpI921czju3YSLSPw9geG0BL7cTHjSiT
fCj7o0nBTnhHmmdbfYLtu3YyBcyLScd7FoS+kT87oBnfdGW+pPe7KkriCzLVdA3TV4QTyRq9
kn77hUNvoBb1S5frBrWgGVGUssKqYOWVZxdAHIRzX5OCwLo52p+0Wd1knlBCbReTgHkC8khv
PXy5MgTyscozu/cZGVD0hZlFMPAI9cUci+U4IU6CeYydg09wSgIklymhOBWbAQAD9YE+sjD4
FyI9ZkSyY2F2bQDEoxlL3fBcE5qEiNC6CVloaQzlAmnSpHuzZZEo/1KUiNopYran2FG4zGHD
SGBVoaDZlQ3L6NRWKJLG7fSAGqGuwAMYkosjRvgXIVkXCAsWbQ6ZB2/h8iINI9ui63MaO2ae
ItqZOEiHvha54aXf3fVZvWMC4iXYOjNWZxNpMqIdYF1dSugA+7o3jstmBnEV/ihjkuy6Y1Oi
0sUKVi5gF7lgXtzw2BiVM5jlPefokZLGU7Aw5Zho17TXMFXpy5JHmxz5fjTuFwXotj4iAwxL
impGi4WgTZTtWMj0ATpj9kQ4I1VXpyHqU2nwxDQhGSYZdEccXlAEZpoEzalEKI7whHoqWGAe
g15j6vOQccyuNnniJMbSFyYXM6caA+RxtCxb8uj2jwkZNpgFmZaYBTJsgWTwWLaghXGKl3dY
oJhzgoknpr1jgjzF11AaV8u5J5a5xgQWIsFmQovFV0WAoXH9TBaGKoXJYvUIRs+aZxZx4SNi
aItjpquGnjgP0KM9i4fjwgWU4pDugj6T5Std9p1YCxZBME++U7mZ95B17UpcxGwrK+JyX+3w
wNfax8qIXiz4oY+scK061pw8GzEz02gvf8RWb5j99o3DBJYaI3FI8ewIG4/iZ7QmEzOCRtpY
4lF7o/n7QUEkGwmX1YRrujqYr5DujReESxlPi1mQvazOVtXK8Mg6eBdQ+bC2mvMsKLt9X60r
3YCQj8pITHikG7GYpIhtElJq0dSmmZ4P0f/bY92VXHCgxRUsh6zaddus2J9tNiM3c05mM1EH
wKyqfXfhR8ZVcTjJKCtdWZe54cQ/3Kv8+ng3Gnvvf37Xr4cMdZI1Yo/PqRaFqucHrv3Jx1BU
m6oHy87PccjEjSEP2BUHHzTe0PTh0plfr8Pp2qRTZK0q7l9ekQdlTlVRyteqnB6zlw6aRlSt
4rSaw3oYiRrChxtOXx9eovrx+cfPm5fvwvJ+s1M9RbXW82aa6ZWv0UWrl9DqraGqFUNWnLw3
MhSHstWbaicV9W6jx+SQ4puyofAz1MYsX2DrOuu24qWdaw5/YQd/iu282xdG/WD1YLTKFLDH
qSW7IUT9Y1XvSJDyi8f/fny/+3bTnzTJ8/kYNGXTZNiBlYDUQ3A6b3aBKs5a8SbW30lsChKB
68V+pqxbfI6UbKWIstTBaK32u2u97zr4hbWXYD7W5bTsmkqMlEkf7O6R1zCg8mocL5gSlsN0
KtyfJr0vM5boVwyGUV1Fib4+VYFbTNrMSbQJbh7dFjCK0GlKBFR+Jf9CMxcb7lUGcL30GXaz
YshZliVJEG9dqeuYx9SVqnZKfANsdVxTa0qa6chYl3QYb3v9aHtGikb1/WqDymuyut7bamL6
sNsYY3uudHVQZicIc8EaVt+5+YDNCBUl/qb6oHgsh3CR3KRJ8NRmRSND/NX22TV0fzvDuKcD
zCFLjGpsNPmnTry7DWLH6ECmW0XTXTv5ZuHhhCYjSiTnnKW8iEz7mGRq68fXh7O4i/e3qizL
GxKm0S/ju4Oa0hNy1tWhLPqTqYEG4vQEmj3t6dflFenu+f7x27e71z+RI041x/d9Jg971DH6
j6+PLzB93r+Ie7r/cfP99eX+4e3t5fVNxqp5evxpiFBN2Z/GLUeTXGRJFDqzG5BTHgVuJ4Px
GkeE4ZaVxoI+3zp0qq4NowCRnXdhGGCb2CPMwog5AwKodUgzpwT1KaRBVuU0XNnYschIGDmF
BuvXcJucqbpn8TDNtzTpmvbilqLb775cV/0aFs74Veu/1nwqpEnRTYx2g4JSjNWrcXN4E519
Nm68IsAUERco7LIpcoiRY/06q0EWdjRq7CS+J+UVx6rnBNuSmVAW2ykCMY7dtG67AH/cZOh2
NY8hp3GCNBnML8Rzq0jnwFZGQ28Tu1ZJ5NTZSB9qxxqRLSP6frJGZtjQO7VJEGALxAE/U+42
T39O08DNl6AidSjo6Abm2OsvobqHofUu0WnvjD6NdNWEJE5J8wtlo5LRjVC0Dz88L8jW3ac1
sunMoHVu9ExJxx0tIMih276SnKJkZm5UG4B3bTpypSFP8RA5A8ct554z0KEhtx2n9uG2UclT
hWqV/PgEyuifD08Pz+83IqyiMf0OurMt4igICRbjQ+cYNh2NJF3x83z2SbHcvwAPaENxAOLJ
gVB8CaNbPMDdsjD1aEFxuHn/8QzrECcFYaiAEUuhB6DS7U/VJP74dv8A8/fzw4sIb/rw7bsm
2m6VJHRHY8NokjpqGFlcdr2MoFcMns2jXeFPX5Xt7unh9Q4K8gyTjPucxNCj2r7aiSV97QzT
vMPI24oxRINUDdQe7rytMfg1voD1fd6Zmji6TVCRemsuIUnRnIVodCcF708BzYgjbX+icYRS
mWMUCCpHNLekL6UMZUM/Y3GE+3FoDH6DaX8abjg5HyWe1JKlTLI4RfTp/pRQhnvzTwwJXVJV
wBBHfoUsYDy/SeJ5Xm9k4GA8LMgVB5Fu7aQx3hZpjF44mOAkdPrn/kRCzrgr7dTFMXqIPuiD
Pm0C3bFEI7u2uiATbLIBoMX9Eya8x5PpibmPPAGnwBPJSOMIl8w9wUHQk6JBwx2CMGjz0Om2
u/1+F5ARsqWyZl+je10Kzi4pTcjViLunoEOR5Q11UlNkpE4Pv7Fot5B9dhtnzlpEUh2tD9So
zDfYEoLdslWGXVGYNLItrOx5eWssBnCtLyeEGmjYJtRofTDuOZ4ZjY8ktOdHg6E4pwkaLmGG
Y0fFA5UHyfWUN3opjKyq5fm3u7c/tFnMyX1LYoY/0Kw4hLcMetozwXEU63kwU1QmRFvZE/1s
I9iYtSl+3MmtapX1H2/vL0+P//sgdgqlYeGs/SW/iLXcmt7dOgrLdSKfufEdZExs3JgwHdDw
3XIS0L0BLDTl+r1MA5Q7fL4vJej5sulpYF5KtNHY4zxms6HugCYTNZeUFkpQNaoziUfVzVh1
OnrJaUBR/zyDiQXBgogIP+c0snqpQQbrPBUq0cQ9p1FoHkUd161TAxVWccyWeyDBozrqjOs8
CFD97zBRPCMS82RyyIXnyzIyHow1hYLR6cEazg9dDJ966q0/ZqkxjZrjlhKW+Gqt6lMSon6K
GtMBtLGvyS51GJDDGkc/N6QgUFuRpz4kvoKCRca8gagkXVe9PcgN2vXry/M7fPI2vu8gndfe
3u+ev969fr3529vdO6xJHt8ffrn5h8ZqbMN2/SrgKbYWGNDYiGyiiKcgDX4iRHPwDeSYkOCn
V76AiSlKDBFT50gq50UXWtdGsVLfy8Dh/37z/vAKC8938QLTQvmLwwW/wCf3qAeVm9MCuzMg
S1ANQ1LP6o7zSHfOmonhOOsA6dfO20Tad/mFRobz5kTUPSFkCn1omoyC+HsN7RdiJviMpk6r
sS3Bt4/Hpqac2+2/ii3NOfGmuOuS1j+WcOhrvpyI+TIwXavGZgssdw/rK2rGsBPkU9mRS4pN
U/KjQVkUJLDHg4JUO2F5gcTwtZf6OBMjzIsrsbjnyoxjW65zP7HHL3RZ/ZaNzEYHk6PFB8PN
KauI6JzpIU/n+k6I3rf7m795B6CelxaMluDvTw7NGf9QFJosVxTg2Nbs1KNDZ3TA6PcN7BrW
/dzpJKqokb89d5c+xm2EYYgySy+IIRgyaygX1UrUfbPCyblDTgTZKZ2i+87tAU6RITsUEbOU
BJyt08Dt5mW+1InFKA5jfyctKMyvB7fFgR4Rj2+P4Dj0NeVokKUZpW7njy3d9XtBYAoXLgf7
Qu/D+TCZeHuvUBmcemrQE19BY/DpGqU0kzErWd9BTnYvr+9/3GSwoHy8v3v+dPvy+nD3fNPP
Y+xTLie+oj958wudkwaBNfT3B2bGMhiJxK67VQ7LNneOrzdFH4ao27cGW3PkQNVjKygyNI87
i4jRG/iMlOzIGbWyqmhX52B4oJ+iGk3Ds7MyWCWx6airbn13xbKyMxNJF3oFjEe+oDqE5qVB
N/YKmbBpQfzb/zM3fS5ugPpUpjRYonCKtDD602iyb16e/4+xJ2uKJMf5rxDzNBMx+21TUDQ8
7IMr05XpIa9OZ9YxLxkMFHTFAEVAdcz2/vpPsvPwIQMPHCnJt2zLsiw9/uwF1H9XWWZzm1ZY
O7sdbpXQUNgugpv6RHM1XnNJHg3GS4MW4OT+8KrFKLtYWNPPrjbbPzw2LRbpjFKujsgrhxeL
RTU7JWDeNoLG/bQn6BHrZqSBzrKPqoEzd0LIyyTzJg8A3S2cNQuQkc+o1ejiYh6SwMVmNv8y
d2aJOm7NvM0fl/4zb+lPy7qVZ7S7PJVKRmUzo2xiVGqe8YKPupjD09PhWb3yf72/ud2d/MqL
+ZfZ7PQ3Olqdt198eU/WdIPH2act71Cl8m8Oh8c3DDEEXLd7PLycPO/+CS2vcZvn225JmDz6
1iUq8+T15uX7/vbNN7VkieGNBj7Qhb1tu4VA9TCX6FjESSFd8pWgR2mVsI7VgbtOwMm1aDBm
UEmHM4nt+CB6zwKYqR8cbgYNsNYkvt487U7++nF/D+Ma+wrF5YIcMjKZSre4uf37cf/w/Qir
YRbFblx3I2vAavvMPoQq0Y/oQzsTSdpYhNPATPjrJp6ZQtyEGR8GjgVPuGpNOd2c8OPDfQ9D
vHaZkMpR6bsZKwvydWaaok1IyVJmRt6ZMEZQBr/QGMT2gDLQoSKXfqNXpicfVG9enH0hK6dQ
VySmupzPA9WuMG5qTc8Lo0uIlxB+24aXcR7GcbUxVWw1n335mlUUbhHDufArhWF1tImKwlxl
PuD6IY80zq1ICd76M7Vdlq0dzFlNnVTE/lqVOr6eRTy5ZG9qXiRNSvQbkNVsPbWv1dkYmfRB
iEYR4GV3izIH1sGz0UN6dt5w2x2DgkZ1S4mmCldVpnMXBWprzjIbtuDZtShsmI6h5sIEfLnA
sk1YbcNyFrEscwmVXtCBbauaS2kDod+SUoXqsrbiEdotqWsrTMlz2ZkBpBUs41ZIZQX785pv
3cHIF6L2BjpZBoJDKWRW1qJsqUtBRK/EimWxsMuBgtVjKAe65W7Ja5Y1JXW01VnztSwLETmN
2NbKd5MNFWi162YvGtp/FeL+YIvAioHYZi2KlNFx53QLCylgUpSUgx4kyCIn+IIC8tgFFOWq
dKudlYnAWRDIOmeJiHIYEu4yZNbUbr/kbKteMrhl1FzzWqgMgW+CymXj5Fai+bLLVnmbNYIY
8KJx+KKsG35tg2DpRodSwGRG1xhAj9Ur3jAMaug2qIJpi6tmaMSqjOGzioJ24tZTbJWnt7Iw
MzfA4UlZ1QJ2c7dOksE4XgeSSJbLtki8NGhcHvRIpygazshw7xrHMwkrLpdexm1RZYEHjYoj
ctorlZpz+KiRyYDoqXLPWd38UW7dIsw5JValPZYw9yV350STwsRy1rIWt5mukmfeAiJEXjaU
nITYjShyp8g/QQLGOpoZDTBneK2C/tzGsAkFIlGqDlBOCLu0pUVwtS1lFW1rR+2KUyxwa7se
M1Shx9XWWAkyUzet4d9OyJSWArSTIEB31kY+gZeizlVk5bhcFzo6vSmL0Nnrw0Qen8ilRkjv
pJRDBy6HUqeTBpVmQFolDPKHXHRlGokuE02T8Y4XsBsbKyLiibeICMaXXk0taKeXSNBmlfDD
ARsE8G8RipeCeBD5oIVMdmkUO6UHUmgnTqr7kAibakhNI7z6/vNtfwv8k938pE/WRVmpDDcR
F/STD8Tq0I2hJjYsXZVuZcfReKceTiEsTjgd1LLZVu89NS1hQPUplrrotUI64OOWljkPTvNI
vVfxrx7Vexn9ZCY9vB1PoklLERMvzPIo+O4QcTJ2YjKPwKDjv4nCn81+JlmzpJZ/pGBZZMcq
V40WyxzSBpJEi6+WV5lcBaEHeqtHEdxC+eIChsEhR1kbtjnH5Rhm/S11Qan8ZgOaUqZiwfzE
eXNtNQTE3kZE1GZa8DXOXkPAxi992qdg3SAQ+RglyYAcYXeiIljUeG4rQJDv0jUG0ikS7p+t
gNQ/16j0cLC8OJ8zp1ilWPjiFabA1EF1wp5RiS7O30t08cU+9yt40GWEwuownzMvVQ8PLXeK
xvG8pyqBTrfOCeDcLyKr5rQXmakCc785PfzdiiGN5atFQXuHRyjqtS7fuDocnY3pXUJBTJdC
DvfEs0vyXlOPwehdxIQ2EUN3CF5eTRbNr07DXYPsMf+vk5npZs7hVKWD/+tx//z3r6e/qYW8
ThYKDwX8wBiWlIBy8uskrP3m8PoC5Ve3c/JsA/3jtQZ9IZErnsKCuP71chFsqvbIBjtvbrlT
HhnesnVXUJnkZ6fn45WENknElzfN4fX2uzN/7brUzeXcjo03dmTzun948Oc8yhOJfg7qDKFG
QP1zMlqRRVTCopOWTTCTvKFPPRZRymE7XHBGvYe2CEcVVbC8qGo/yoRFIOyLZhvM473pOdAM
DqnVyKqu3r8c8Xr07eSo+3ti0GJ3vN8/HtFU9PB8v384+RWH5Xjz+rA7utw5dn7N4BDPi8ad
d0M7lbuIABKOqPbbYQtb8MZxQEvTVUrFRh3C7e60X5zarWiM0ziLIo7+i0WmO3/Qud38/eMF
e+bt8Lg7eXvZ7W6/W5a2NIVx2IDfBWzTBSVFcDgZdbDqoUMAGdWtYe+gUJ5TC4Q6NBlPWLTV
8dTNXlVIT9qy0fzrfEatEAopLmdX1mt+DbWNYnrYzIfxs1Mfujm79Ooo5rR7vR7pmGj00JC5
hUa7sbsddMILyjiqbiLbPh8BGITj4vL0sseMOSEu5N4iRpfIeFVibIYTzHDV4ONW3ojpy+ec
GddDUzI4piWi4FYx3ehHDyStgmd2JZScbLA9Oo9hXS6T2PTs3R9bAWbfuvXwkjVYI7/lVbbp
dEZjkg3MqGLT/bktvuVVF1dOwpFO3cmkWGSXJzl9zJloqF5fY9Gup58e6gFssRmA3OqAHqCi
WRtqENm6zZPLLtik3qmwgx4HNHrc756PxoAyuS1Arve6ED7J4xfAF+2SclmiMlqKjFbitn1C
knMB0eXlimv/SFunHogNLyo9geTZEisc8H6giWBbDeh0nGZNKVm7iYVErSJ16rfdE8JnFwmq
jYip0CMSLAOiNg5ViIjR1wSFYObraQSA8BWVtlqt7QOj9zc3dN8DDexx1KqrktetefRCUL68
mJ07tVyabyGXABEgx7VKDXDqYGA1+LaMbaBDUpQquQO1JsgAUY5wCDCw+oYCJ5a+RsFz2sE8
VLNbbCt1lnRD4+KKZjgImfJblJukdabGuKHXBUzY3M7FZhINQQm/JQdrFVfkI2MVrwBTWZkp
aEEGydY4vBiQvWat37cHSSPf374e3g73x5P058vu9V+rk4cfu7cjpb5MYZBd7yPjM9z3c1HZ
bHbPw/GFyH3DCxBks6wkLzgQi26l+KqJUuPYoFNF19A2C7iUNg2s3yC4URiQX/qWCWmF/QAc
/CxQx1zjHYpTQpcUjeWSS8FAPm1URQfPN1b7ejRuhogm2inXomyyBVLbOQNTY7ZTW62MqxVe
bE41JZnKJOzzCfR0BRwf5U570Y9bt4GzMnfgUWVdbhPDPNUhqfk2pK2EMeIxrUqDE37ihSYZ
6oDxWUYHO1qcoSSEXEu8U+WjtIYSx7TSxZSyqzD8nHVHOaIaOJgTxRB++Yb4FnSgihEr06ai
kmXVe8mqumxKL9n1Qt1cTidDWkHJs4wV5WbsAooh23qJXo/NXpqGpUee6eg6XVnVPBGBG5eB
GM7FVRbYx8fS6vKsW7RN80FeLAGGSlB9Q10noc/pKDNuL+EDJxGsMdetsZkMhFAsr5jlrlFp
KZxMRpjnhNtA4bvbc9sJh4GVYn5GhlV0aMw4dzbq/DyQdRRH/OsX6phhEikrwy6qyOwtLVkv
Rq8iY5tO17ISBaxg18M2Ej0ebv8+kYcfr1SwGsgUFm482Jm2WgBdZPEInewCqbxGPTMTGWy+
ZuOriJogwwFDEw97vZJWHN+EGkj4ntN+iHZPh+MOHRVRWqaa410msGtE7otEYp3py9Pbg99P
dZVL64CmACoEPHVsVMhC+gnUcSVBjR4CgkkNuWSor1UvY76hVdJa2E5OtaYCWv6r/Pl23D2d
lM8n0ff9y2+ojLjd3+9vjbsYfaH49Hh4ALA8RFZnDneHBFobF74ebu5uD0+hhCReERSb6t/L
193u7fbmcXfy7fAqvoUy+YhUq7P+L9+EMvBwCsmf1fOAbH/caezix/4R9V9jJxFZfT6RSvXt
x80jND/YPyTeHF03wI2W1/aP++f/hvKksKNy6lNMMe3MQyS4YTXpP0+SAxA+HyzXc33MOBWe
Tj0M78oi5iC5G+KKSQSSHe5brDANSC0C3LokbAE0enT8H0gN5wax4m7NiUvIqZkgxfKCktb5
pokm1Sn/7/H28NyrX6gcNbny7H9Jvz7uKZaSwWYU0ExpEle76+J7BQwGnbuiX8X1hBgdmvY1
MxE4/t5NxKUd4KVHVU2BjsHCmdbN5dXXM+blKfP53IzK0YOHq3MKQfpWNtEN/D4jX2mio0zT
OHFZJQzPzB3PxdLackhVetEYOkD46HIpbAAzhXIEiNhS+iuQa5xuYXlFqSYQo+/pG7vdiICt
PqnKgPSNBE1ZhgvE+RdEQgO9C347a1T4B3zCrkB4X7Tjwxz4hI1gf/dgzhWDNGJXp9HGcn0I
0EaK0/NLG7Zk19zK9YAPnIkJuMoF0n91QmWNCb2pOywFpoAFH74SHYEhiwXEESyqkgRimiFO
hQ37QipPAevHVtJQHZcsmKkmII4PFpW6vSW9QCG2WWduuQDqMuKuXtTflGMR3wxqCAao1GeT
cZNLPwqCsKJf99wzlrwoWY2xjSIxIy8G0EiPwSJYlVFj2irXXPLGdsZtCIiIW9RRLoGd4Sui
nf0qskZMUbFUe6t0eyJ//PWmttKpsb2erwO0pQZEm6gkRzBRxCLKu2sMbQRksz7p0OXptqs2
rJtdFnmXStN810JhSmuoANnrmqFYnue0FGy3wkiuQrLa/q2nw2m08Ia/2r3eH16fbp5hUj0d
nvfHg61KGsp7h2zscGZ5kZauD88eFJyE0BXnTt+fa+KlVDGBKQNHTZRr7/DDGLPnu9fD/s7Q
xhdxXdq2/T2oWwiQdWrgQLqjh6xGQcW2b8WzL4Co9R9WK2NJUp/jomQDqxyYNGYeda1z0M8V
1ifH15vb/fODP1FlYySFD63B6BZM2pezEwo1dNT6jxTq6ZedH5xV6j5MU2m+MjBw4826W2CP
X8K2Qz5M6oPlGpZIA6TXWjtXMAAPxH4c8QmZmyShuWypkhu6ZOK6ZLDD9MfHFFmmMvpDdIUs
N0UVMKWbPKkHqmhFPQtQVItaxGbsrT4FCMP8T+5he5VDhfYEUdlWVnwDlZ9WM/mCllc9FL6W
OTWUI5otWzJZIWCL7UNwsqgrzr4E7nbHFKGNsuFUBeA8UFaWxq8tBPK6UkQvSJtsKUxtBn7h
HuaIsjIT+cK0h0KA1glguHmbg2r4v+CRNROgz4tgaI/SldaGyzNb1tGmOnu0TFDLvnmEi1iU
8m6NTwW09YMhfrFMxKyBKQhiBaulNfISQz2LDSQyGsE3KB46Jgg9rFugjgq6mepLvKXsEC9s
i348SqJGcWtR0COPlypRva3cwOQmxQq26obakJdyvOkcesYFCA1Qh1CLSZlG0JfVbdlQYh4q
8JfyvDMXdQ2zQMsWnzJZ/RkBiBLA9S2Wmbhcoav8bQCGT1hEDdzWwR+zAIqEZWsGs2EJIlW5
JhtqpMJ9kXYOYhBtoDtVi4m2GGQ5b1hUVuMVWXRz+900fyg4spZnItODG9aYnSkVs3uAkc7g
FI1IhWzKpGa0ND1Qha/CB4py8Qf2YiYC87VvlZar3nY/7g4n9zBdvdmKuk1rOBXg2jZ2ULBV
HgT29zK4XVcOAQq8TeYAK5ZwfLkkrFiPChWlIotr83pMp8B3FWit7xqD6kRVq2Rva/m75rV1
G+jIO01eeZ/UAqQRG9Y0FktrsMBQMxeUP8i0TXiTLcwiepBq/QQFuUoFSefWzdv4MiERCSsa
ETmp9J9hak+isT/SxsonpDbegJ5oeE4tmsDksG5fm1TGDHBWEvxezZxv64ypIdifVFmIPP/P
k0N+3tGuPOqybJCC1iWoqqmZEcTjutcbtcUF2fieCBkHpIK4cNoaC8kWsGW0cUU9WQES6sI1
qdWNF+wSpaHcwW3H/cTesAp0jWhlW9RV5H53CeywRi/20PASEvEq7ZZUD0RiKSenUfilFzIz
OBkC8Xp7DcwvedTWfDI5mIpAqjVneNmEbJzSFUGqtsIr6zBezbxAXX2TtwlKu+qd8Gqxwnex
gdtqRfiJ+sl18SHNe6wZlTHrAmzNVFoSdVXRQ1iYdnnwMdjs/ueX/dsBw13+6/QXg2cz5LKY
qwX5/Iz2yG0Rff0UUcCHrkV0OaflbYeIHkeH6FPFfaLiIU8LDhG9QjlEn6n4Be3N1yGifc47
RJ/pggtate8Q0a5eLKKrs0/kdPWZAb4K+NS2ic4/UafLr+F+giMX8n5HX6NY2ZzOPlPt05Bn
eKRiMhL0UdGsSzj9QBHumYEizD4Dxcd9EmacgSI81gNFeGoNFOEBHPvj48YEoi9YJOHmXJfi
sqOPvSOattdDNNr21mUe8EAwUEQcn6t9QAKn77amr+NGorpkjfiosG0tsuyD4hLGPySpOacf
tw8UINxnLGB3NtIUrQjc9Jjd91Gjmra+FgGBAWnaZknP4jijz1RtIXDaUkq6sltb9wmWQkPb
P+xuf7zujz/9yJAoOZiSB37DIeQbmo124e0eBEEJZzbgAUxRiyKh9/de8cDjsIgCiC5OuxKy
VL4QwlQ6JG30DpWS5ESzRUNlqe4rmlpEpFq2p7R0qz0sIKuMmffHC0pbhotqo8RrmMmZ5/Jh
zKJipNubJQjjqEnRGl5b78vw+IQqlhzYIOVZFdB9jWVI4EN6PowkTZmXW3oKjzSsqhiU+UFh
Wxaw8p+qw5Z4fSTo6TeSqTNECdJoJumJMFHCVEbqgN46cYd3BHZSJAWcv2uat0WgJXxFGSkN
j8km1jOfU0Aj/vPL483zHVqL/Y6/7g7/PP/+8+bpBr5u7l72z7+/3dzvIMP93e/75+PuAefp
73+93P+ip+717vV593jy/eb1bveMuvBpCmvT6N3T4fXnyf55f9zfPO7/d4NYw6gtUudvZRa7
YjV0gmiG12HGcYiiQu8Vdv8BEPgwuoaZWNAXDyMFHCSMYqg8kAKLoMcA6dBqBC2QjQd77xKj
oj5IO3rcI7trQId7e7QacpfSsQ9xoStHddzrz5fjQUczPrz24SaMYVHE0LyEme+NLPDMh3MW
k0CfVF5HokpNxbSD8JOk1uN1A+iT1kVCwUjC8ejmVTxYExaq/HVV+dTXVeXngKb0Pqn3dMKG
W9fGPcp9RkwmHJUq6l2Pl32yPJ1d5m3mIYo2o4F+1dUfYvTbJoVN1oP3d7fO2It8dGFc/fjr
cX/7r793P09uFa8+oLu3nx6L1pJ5+cQ+n/DIrwOPSMJYMqKfeVQDgtYt9LXPqXfuQ/e09YrP
5nM7rpiHRDt8MxN9t/3j+H33fNzf3hx3dyf8WfUHhqT7Z49Old/eDrd7hYpvjjdeB0VR7g84
wJ5cuhSkKTb7UpXZ9tTyeDxO5ERIYJQgAv6Rheik5BSjSv4t4IJl7OGUwVK58tq/UKbMT4c7
27vmUO8FbdmvkcuFz6mNP8EiYlbwyE+b1WsPVi4XRHOrd+u1sa8thpWCb9c1Gal8mHppcHQm
1DAAQTxbbagBYviwqWkpIWLoEbTSHCZoig4EhkFxetN6sjms1BRwA71EVGUFtB4bxPuH3dvR
L6yOzmZ+zhqsr55pJA2FgcuopXCzIfefRcau+cxnFA33maqH4zynym9Ov8Ri6c9XsuwgL4wj
ja96Ls49fB5TsDkxELmASckz/BtmizqPtdtzZ8Kn7JQEAoNKfkahZvOLMHJ+Ons3ZSANtRSl
jHL8Mq7jZ1SaBqS3RRnQ9WuadQXlhTNWo9gp9uoKMbKmXtP2L9/t1x7D2urzEMC6hpDKuDSz
dfmuXC8FycAa4V2DuPgAL6GziCwT/iY8ID5K2O8asCh9nnIWJkW1wNASb6sALK24MgmMqryz
sQAlMYMRajfFLSIm39VNyLOOxzzUvOX/V3Ycy3Hj2Pt+hWtOe9idkmytV3PQgQHdzWkmM6jV
urBsuUur8lh2KVT58/cFgER4oD0Hl9x4D4EILwAv0N+wW826pU/WoJ9+EIiRrRMSxC0nphIb
lsFZWUMLJd5MFZYNh0bctro8tmsNONKTC57eHZJjFMf5KBPn3WQFFuQRUCfQvTM+0+VtE3R2
eSHRqfJ2ZcEAuJN4520/hCa/Haj4376+qV+/fjo9vdmeHk9PRhEPxIC6L6as7WrJYNN8Y5du
jQe1ANGsPpgZgkWfKS2kTH6LXDCCfv8sUJdXaDzcHoW+UU1Cl7Wf9j8jGkX0l5C7iG2Tj4fK
cLA4Whf/6+HTEwbZf/r2+vLwKIhVZZGK/IDKu+wiEOm1ecO1IpSYSGLBrKjVURwRxmRmtTqj
yKBF/1ltwdahQnAemZpZGur64lZdnZ+vzlJUqHKaWoYZnFkLbW1LLFOyqFwrhx2wZynHb2on
G3Yl/bGqFF4w0+00RpcIt97p6QXdyUB95JQkzw/3jx9fXp9Ob+7+d7r78vB47wYmQWMV3Ano
Ed3Pl+viVdavtG0+My3qpDuiy3w9bAydLaMHoixqlXRTh7EIbSulxNghzs2C1IZhJyybHmP2
DwJdnbVH9PavjGmggFKqOgKt1TCNQ2FbAhjQpqhzDBkLMwRDsLZS0+WOX0BXVGqqxyrl0Bi6
mB8abOeI2VcBo3I0ThAPA/KKaVejnU1WtTfZjo1fOrXxMPBadYNCE0WAbMvC/tK5DdhJwBfq
hqNBO8csm7IMaK9TdO7t0mxivUbc3zDyYZzcBlzlDLUyE5QmKC+LTKXHS6/DBSK/ZWqUpDsk
kVDpjJFG3toAGhGmMk/oy6TEYXCcQ7U1s25WfG2zw0QPlTgPIDpQYA431D6Wot23X36LlKSo
N24EChBJhDawVGqDJA8R/0LEv7nFYv+3qwLrMnJmad2QHwwpkoiBhoYnYuCFBTjsRjshnQb0
LezxoDTN/hRG4LvYaejyxdP2trBOoAVIAfBWhJS3TtyqBXBzG8FvIuWWlGtIAr1OJI71Z5p5
LhHddVJOqNtas5B0XXJkimARg75vsgIIADBKQlhASESA/NjOL1yExnuTQ5aw3A3VVSVoWr4U
1ErlU8+AkvJveDCKMZa09OTo23JSVJg876YB5HWH9OqYMPa6InIWeUyjhkBgW42WRcNIVZ2B
wCu+t/bbco5hY+ac4iTw+6g1Cx9sYl82zjjx93zwRWM0bTZrSEl5i4+8dhMYngmkDMlAtGoL
J2xeQ0kStsDdu+MiUZJ8ZPbVdd434W7bqgHDejab3N4bdh0K+znZ/GPmQS16PzlvTTNoZPeG
aVOO/c4zBJ+R0NR8sgM3GzPmbH9I7MAjVJSrthm8MtIMJmDQsC5vz+yXbZRwxPlfksz7kor7
NGrkKCr9/vTw+PKFQq9+/np6vg9tHkgK2tNkOaICFqIFpPNAxA5amDqjBEmnnF+z/hvF+DAW
ari6mNcf5hbNAoIWLpY5SNEqWI8gV14Et+VEHOsEY2GunBkbg1yh5Cf0Y5U2wL4n1XVQQcy+
Ri3AP5Du0qZ3spZFZ3jW3h/+Ov375eGrFkSfCfWOy5/C9eC+gGk6pNeUoa/FmCnH09CC9iBT
yWxjRskPSbch/296AbEeJKUGCVtmhT6W6Cuc7HA34JmhoU3p4DjVb/MUg5kW7SC6+3SwHBO0
XcMZubj8h3VGWuAQ6O5o27J3oO7Su2PSO/lddwodjdGwH46eSJX4U3qVUfqRquirZLBZlw+h
MU1NXR7Dads05I441lwlKYttPb17KyUfYEqg/ac845jrCtSO8QaJ/srsc2dslB3GDF6Uo1/d
hbRn6cLm4c5QlPz06fX+Hp//i8fnl6fXr24gSsqTg7qaHQXRKpxtEFSNi3N19uNcwmJHbbkF
7cTdoyEWxgT57Td34WwHBlOi7dkTL7GmgeITNSFU6Di3NsOmpYiVB7EqIv972Mx2X/hbqLBw
mrRPatAK6mIobpUeqUYimN0YIw+R97rMajDFuD+20mQDWdbyUeSKP6/R74rNEI4yL67jtiyM
oj2d8IpkBSuNBalgsKrHiHUgjxxPXiVHbRHnfq6PnJdR1hc86+2sJwSgMtJWCodzerh6UQaD
jNNL9AsEvA06X5E7urObqGHNf2SjQMKIOb8zNFTouFwlXXk0J9SDwSwDvQOq1zbAkvur9xcu
fCQeDTJgv7+6PBNhJPp3YzugrOMNF+GscOJ9mdd3vwdKT51fXZydncWATgPehMx9M6pov8KY
nSINogESA7UmYC3vgj41Dvn/jPW+Rtu8piu2ds47BxOo+6h0IgvDMRw80HRGDmkIfdKy9zrM
t/At2xo3B4PlgLi/RLxdYsm+UT4JRc8yczem7cTmxizpEYU5dTNgojaXgXErCI8FzqS6MIGu
nyyVwlbDnHTiq8DS8OTcMHF51wAvTTyLn5nmMs7hxq9ll8y3X4Pn+ki/A5d6XazjSKxwEqZ5
YtoupBx6LUAzKYGdhzNpICs9sDwxooAtSRuw+XONo2pKy5jto3N0XU3tdnDpgYGEJWRDoZUl
b1AA7CQ+aHWzKZNtL9bUQ1hjoxqX45gLjTAgOgCO/0RWk3ZlXcxG1iBZAQlp0BIUlzDa1h41
dLwEKb1p1Z6FvYWhRTfnusJvRcKx2E8Ssp8FgCvi3gVonsPQ8OXDhvYHIOfbUIhAQ29UT+tm
YZ157qXdXMaxUXXmZXj26IgngO84FhAb4CDSm+bb9+d/vSm/3X15/c4y6+7j472tvmKGCLR3
bZx7HaeYifDVuQuk64NxuJopPN5Zj3iSB1hk+xoLMzSGQEdfbRPQVWxE6kPYKXFkPcqzZSK7
3OuVInPZUz1j0GGmT4IDXrUiTvhhy2AstDZxkoHGcfxp5fan3VhvWRqwNjarADNonvyLyzNp
IhfEn8+jh+tP4+EDM/68cZxKScbjrxH56Pr2Yz8S0KQ+v1L+MosxLvcKRG9j8hhDtZrv1iH3
XHFQUo8+wcOZ3SvVesyT37jQtHERCf75/P3hEc0d4Ru/vr6cfpzgP6eXu99//93O5oLxOKjt
LV1N+UEU2g4zAAhRORiAKSWpiRpmPBaVgxDwu6O0Fa92x0HdqEDXs+LaupRdRj8cGDL1oNWh
50kgQRx6x0WeS2mEHkUl7wzVBgX4kNNfnf/HL6YLl15D3/tQ5swUxkij/LGGQheIjHcRdFR0
2Vgm3QQK82hae+vvFI0dnXKTbKZUqg0Zq15wtl5YTeJAUwd0B31M4qEDl3UR7z7nA7KJNmV4
VZ9zl4ekGCxvcnN7+jfOgGmSZxyTI5QOW3TLp7oq/G0T1qE1pIr2nNKFEjqBjDXmagXSwCrN
irS3Z4EytFwlyvWF5f/PH18+vkHB/w6fwoNrRnxWF4T2MAKJe+Ii960ENCKTJOiSGAxKH0ro
IEejVma0BofsRgbvd5V1MFP1UCRlH8wCHABRX2GalI0CocrGIPSKWWdrx9kVsQpGB4zuRURY
qwwKTKQBBy0W2wxh6oMQMoEGRt5+TqwKkam4M+URyw9aBu3octHuAt906+woJxYnE6RlpwuR
d5qWv8rO3Y2S43xxug6Fr2p3Mo659t+YQxYHTodi2OH7ky+/Smg6xhElY/gF9KQLWtXgioJ1
QbeZk46bUDC0DpIBwtQXLl4jaHZ29AqBFOCNvm7aA2a6Kx/Is4cxfCdvqnicmctV6WEqHTcb
e8YpLDLhO6Yw8AdI+aAD1Abr1HZKVXD2uw/yhwbtGZ3cb0gjhvvLX3wUF+k9MGg6uuFiey14
X4qGHpxbAAKzKbwooxYvl63+YHZARdgIKI4IGY5rd4CzGa9WVUXjzY7emHrz+QwOTnKdtH5y
RA9k3h9gycU76hT4GewEPRN0m+6RYCrXdj+YB4MqiPbLI2CniveeNdi03QRlZo38crkFs50c
jbs/1nCcfVSM+SVmnuSp5HMRvS9Ydv3yoi+eNAcc9JGUZBQQTd6l15WPP/4Zuz4a9k7vgSEB
dtWu8CNrcH8LeY4TSOcwVyXobGKleYPG27UIiL59jgqMy+ohFYkjOgsaD+QMokKRK0p/fv7u
Dw4Nqy+PTI8Jhrh3k65QUSQnmY9lbaCI672Nx+/kP8ejdxyJiDCSFiaFQe8OcBRVsqfdutbP
flNsIt7zjKAzY5SFWm+If8XiDjCOUenXbwYpym2hX/CUxWu1bMQY9kcXjQsL5Mofl+8ludLT
BAJ+FGoKQsJOeoTRhg9jb9uPXb43Tz/EyexMOHatSFt5uo1U4HT1uesWp+8RypRsYGTeRHZF
sUNCUsdyioW4avhBaE+GkZFX9T1MYEcH/OwmkgzBwlByNIUZYwysSXwMny1pww8ySMHLpkhc
sTaJzgW3YGQ2X1eqivXP53mid2gxHXA7orc/KuqzDmB4ZH3gwNNN5yzuXM7GFXSqfQFEKwbu
VreNjIbT8wsqz3ghlmHCj4/3J/vqa4/DkmzHpOt0JypwW8lI9idw2t+f380vrI0uH+fe1mjG
Pmus/HD62rsHSaS5NgTXe5drpASFHQjaJG3ynVeQ/6/c54Os2/O9JPKi3kuh4KJURU1pMeMY
6/Xz4jpi4pouWhtszRXenqIh5wqcTCubssEcVfEDbluFrjB81aFwGYXzXdX7i/XjRF++Uzf4
YrcycWyDx1aTkvxpsPrM9f6h8j0AhkYObEsI7HYQh6fFEDP6YcOEMRI1hqA3AaN34Rg0dxOL
zksYHd4sBs9u3hzG/JoICmLeyt7er2x8+PbGz/Rqw/Wj1srk4MUDmmeu9NGuTT46m5DNWiyz
OHlbpMUgm+K6rW2KrjoknaQb8h4ygXS9j4hbPeqtR+GPokGkmECoKgM1UNLFTCN4ges+e5qa
hUy/+aPwoOLzex/UlJnU7NgBDfuXYLpI5D+rzCaIUcNmr/8HAvitCXW8AQA=
--------------51EBD5D82AF5DA65966C7641
Content-Type: text/plain; charset=UTF-8;
 name="Attached Message Part"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="Attached Message Part"

_______________________________________________
kbuild mailing list -- kbuild@lists.01.org
To unsubscribe send an email to kbuild-leave@lists.01.org


--------------51EBD5D82AF5DA65966C7641--
