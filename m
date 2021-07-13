Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTWEXCDQMGQEVP77KXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B983C7A32
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 01:31:27 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id e24-20020a5d8e180000b02904dd8a55bbd7sf15808312iod.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 16:31:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626219086; cv=pass;
        d=google.com; s=arc-20160816;
        b=zgId3Lvz+sKPwBKqkezoVKG1SHNizAPeOGZ/7CVKiphRplr5ghTz+cAB2QsXSjvHTX
         IJ63HZKP3Ek4fW/8yP5QR5b09TDoWH9gkxA7h2rgjqcLDuUohTUiJlGGXNEbZEP8pXgu
         kFuC1JGsYi0pxdm+FHWPQr3OPxv5uIZ5y78t+51s/Z2Hk67NFVd4UTwMkTNjrSzumZft
         hLko5xxQdaCUMpTQAk+AwyAp2ib7DFdfVQNlHhJvGbGx40CYH6KwMSVT+bEggFXruSaQ
         mWlEV2VJMe7uzMsIvJB2Wio+xXV6p9+PE0jMRUbbNi9TnY14FBiea/42uAEAVSAfeKv4
         d68g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=YKHs3Fptzwry02uXIcnb8Dz1XbLza5FrhYs55l5zq9w=;
        b=RFfGAPbwT5bmYtWccZkhZ9Z4govOQo6CtQSF59KVF1pe3sytVXTteksQD07yINYu4E
         rZUBMdL01fwqkTPRGnrvztZEyHwRWcfk5Yv+pYY1G61O8pk0ihVRS71fBqa3+GHtkbnA
         jShNf/JquHIBDoGfJDTSK52YYBPI52jn0PtwSaYzsHntVVB1KmcpF6NNhnA6el9YPmll
         ZdeF/sWJ8m/DE3XpsVUJ7dOYdcoh9v7UxP4FXfCaBtAIe6pHbihT0InoZX+VeZTKPX7m
         TuQoVEKF1IlqnOmefQyO/s8WFXprNY6JqtdSN4oSHKdX2ct0ojzCu9FaZuv5pT9C1BGt
         Rclw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YKHs3Fptzwry02uXIcnb8Dz1XbLza5FrhYs55l5zq9w=;
        b=EJdF3inZzJS+ZLCmWe62L+y0YZq68OxgcHGfh+VLwLFcCzrpOfakg9LHF1srOnCZba
         Kw0VlHAl7/J+lp9VJ8sJz4TPjEmsTVnbEdBqaZbDFGBjEWMowcb9ovgZBn7tz9tqj3N+
         KhExVzE6ue9sPocGDJpZYAMdBPGFhTo6kxNUJAgvz4WeoZIZ5XTiFKdT9RasZlN8+ToN
         YAhdYiEC+Y2kjdci2Pfl5yr2k7yoklduEQxwF21pGp17ZjZL/a/kVr2O8VyiMlA+CYj2
         lGQkpD70AubFsOnvl/bu6nJrK74R/UGOqGG0zWb/ws10uOlJLQEQfhF9yUnaQo4x4rpL
         l4xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YKHs3Fptzwry02uXIcnb8Dz1XbLza5FrhYs55l5zq9w=;
        b=KMU6pHVDXiNtHDOWKLFf0+uw6rmR4b6b+RZ/i0uL9HU/O/jI+vKpNXNGnQJdO7p7g5
         c/JDIGnNJwv0CrC+A+bae67SXjc6BFE9x2HS3RNyNkL843u9sTBp9Zfd3Y4UpO4Gx5iw
         mrR8LW7hqUkg0d2ZUWwhlM1gVi/l3JF/EfhKZqRtCiq1IZKblJJvH5nqW/B8wJ4vyWQu
         ODn/BuDdnO2Zu/NyEmeQU/YViCXp/FsArouPzhX5ahq0pYJzsOqtqdzJOHLwVcLPvF0a
         ZFYTM0iflYZmMdZ4jRQI8b1ucr5sKbSESL90Hi10c2YWDTD9Um052bmCPpSkpLvmPpWw
         DL9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KmaCJO575C0EI1n6gUdJUZSpueGiPfiCdEAluY36dDAsrLF2A
	HL9Q9EDPd7zj2e8n40p8VkA=
X-Google-Smtp-Source: ABdhPJzjH60XivsrY8kJ0+4j4gK/7n2GY93OSaB5LZJ9iQZlB9nCie7bokQ79pxzpxJpjJP7k9U06Q==
X-Received: by 2002:a02:8241:: with SMTP id q1mr6210816jag.134.1626219086082;
        Tue, 13 Jul 2021 16:31:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:4f16:: with SMTP id d22ls123344iob.2.gmail; Tue, 13 Jul
 2021 16:31:25 -0700 (PDT)
X-Received: by 2002:a6b:6205:: with SMTP id f5mr5034867iog.60.1626219085448;
        Tue, 13 Jul 2021 16:31:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626219085; cv=none;
        d=google.com; s=arc-20160816;
        b=fV1qmEGjVh1qkVd+1fnt7QQGd8Lc/9a1f0uQWHqTl3AIk6KNW8bjpGFggAEymiUG0m
         bZWqrBOVWLH4fs2ZBpMzyMx+W9kcsVXwfZmXAY4eD7lpURmzyfhqFcffASz7jK3UTWly
         vfW9/gPzR6Ljv3PVGpyOMqoykgtrhU88rHNx/igPyaLjrubGR4/AgNqGuEnBxG9HLCTI
         OnqG9//AGTKcmLMCluQjyCNcn5eTBZXb/0c6D25LMEmHqJc6brKNr9nQzJA+czv36DaD
         z2fYHJjNYQhaE+ao7Ly4yb4dY9mbnBhLChANIX1O4FJZZnhNw0hqdfX1THCKVj86QmBu
         hkag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=FIDiUlFZuISJTu2kJdQWAD2NAMdZoSOjGRaY7zS1j4w=;
        b=j0aVgZ5jZyxigIHKxTPOYjQ1JJMdj16zeAUDAh/SR17lPjQivbq6iYLiSpicUmlgPL
         0G3lFgmDlW+iQ9DGHWBKyCcuS42wNhX6H9tJipSxhjWjr4/gCcZs3nbobocD/WsptCNu
         opUzB8bcrcNqTYbPTJ0f5KLloDfAfBkPQsNwAChwRgzSSSm1/PuhH7fuRSQWQ86+kcJC
         T5fVuIk4v0yZcW3WA9O2tZUgCXg7PT9FQxZy3jvrG9QxsJlC7CJOmTQr1dk8o861lxjx
         OgAj6N30eVhrVBh95cClJW+WaqBTh8sQOTv8uNJoHkD6KClj4dkMBcbahuO2KjrEvi0p
         GNuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id i12si58823iog.2.2021.07.13.16.31.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 16:31:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="207240504"
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; 
   d="gz'50?scan'50,208,50";a="207240504"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jul 2021 16:31:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; 
   d="gz'50?scan'50,208,50";a="630202592"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 13 Jul 2021 16:31:21 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m3Rs1-000IFw-2S; Tue, 13 Jul 2021 23:31:21 +0000
Date: Wed, 14 Jul 2021 07:30:35 +0800
From: kernel test robot <lkp@intel.com>
To: Felix Fietkau <nbd@nbd.name>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org
Subject: Re: [RFC 7/7] mt76: mt7915: add Wireless Ethernet Dispatch support
Message-ID: <202107140756.izJpEu6N-lkp@intel.com>
References: <20210713160745.59707-8-nbd@nbd.name>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tKW2IUtsqtDRztdT"
Content-Disposition: inline
In-Reply-To: <20210713160745.59707-8-nbd@nbd.name>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--tKW2IUtsqtDRztdT
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Felix,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on wireless-drivers-next/master]
[also build test ERROR on mac80211-next/master linus/master v5.14-rc1 next-20210713]
[cannot apply to wireless-drivers/master mac80211/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Felix-Fietkau/Ethernet-WLAN-hardware-flow-offloading-support-on-MT7622/20210714-001409
base:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git master
config: powerpc-randconfig-r003-20210713 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d69635ed9ecf36fd0ca85906bfde17949671cbe)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/0day-ci/linux/commit/16ac1606c5b18e61fb25775d621cd218f17bb913
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Felix-Fietkau/Ethernet-WLAN-hardware-flow-offloading-support-on-MT7622/20210714-001409
        git checkout 16ac1606c5b18e61fb25775d621cd218f17bb913
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=powerpc SHELL=/bin/bash drivers/net/wireless/mediatek/mt76/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/net/wireless/mediatek/mt76/dma.c:6:
   In file included from include/linux/dma-mapping.h:7:
   In file included from include/linux/device.h:15:
   In file included from include/linux/dev_printk.h:16:
   In file included from include/linux/ratelimit.h:6:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:10:
   In file included from include/linux/list.h:9:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:32:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:309:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
   drivers/net/wireless/mediatek/mt76/dma.c:111:2: warning: unused variable '_offset' [-Wunused-variable]
           Q_WRITE(dev, q, desc_base, q->desc_dma);
           ^
   drivers/net/wireless/mediatek/mt76/dma.c:24:6: note: expanded from macro 'Q_WRITE'
           u32 _offset = offsetof(struct mt76_queue_regs, _field);         \
               ^
   drivers/net/wireless/mediatek/mt76/dma.c:112:2: warning: unused variable '_offset' [-Wunused-variable]
           Q_WRITE(dev, q, ring_size, q->ndesc);
           ^
   drivers/net/wireless/mediatek/mt76/dma.c:24:6: note: expanded from macro 'Q_WRITE'
           u32 _offset = offsetof(struct mt76_queue_regs, _field);         \
               ^
   drivers/net/wireless/mediatek/mt76/dma.c:113:12: warning: unused variable '_offset' [-Wunused-variable]
           q->head = Q_READ(dev, q, dma_idx);
                     ^
   drivers/net/wireless/mediatek/mt76/dma.c:11:6: note: expanded from macro 'Q_READ'
           u32 _offset = offsetof(struct mt76_queue_regs, _field);         \
               ^
   drivers/net/wireless/mediatek/mt76/dma.c:129:2: warning: unused variable '_offset' [-Wunused-variable]
           Q_WRITE(dev, q, cpu_idx, 0);
           ^
   drivers/net/wireless/mediatek/mt76/dma.c:24:6: note: expanded from macro 'Q_WRITE'
           u32 _offset = offsetof(struct mt76_queue_regs, _field);         \
               ^
   drivers/net/wireless/mediatek/mt76/dma.c:130:2: warning: unused variable '_offset' [-Wunused-variable]
           Q_WRITE(dev, q, dma_idx, 0);
           ^
   drivers/net/wireless/mediatek/mt76/dma.c:24:6: note: expanded from macro 'Q_WRITE'
           u32 _offset = offsetof(struct mt76_queue_regs, _field);         \
               ^
>> drivers/net/wireless/mediatek/mt76/dma.c:154:23: error: no member named 'tx_ring' in 'struct mtk_wed_device'
                           q->wed_regs = wed->tx_ring[ring].reg_base;
                                         ~~~  ^
>> drivers/net/wireless/mediatek/mt76/dma.c:163:54: error: too few arguments provided to function-like macro invocation
                   ret = mtk_wed_device_txfree_ring_setup(wed, q->regs);
                                                                      ^
   include/linux/soc/mediatek/mtk_wed.h:120:9: note: macro 'mtk_wed_device_txfree_ring_setup' defined here
   #define mtk_wed_device_txfree_ring_setup(_dev, _ring, _regs) -ENODEV
           ^
>> drivers/net/wireless/mediatek/mt76/dma.c:163:9: error: use of undeclared identifier 'mtk_wed_device_txfree_ring_setup'
                   ret = mtk_wed_device_txfree_ring_setup(wed, q->regs);
                         ^
>> drivers/net/wireless/mediatek/mt76/dma.c:165:23: error: no member named 'txfree_ring' in 'struct mtk_wed_device'
                           q->wed_regs = wed->txfree_ring.reg_base;
                                         ~~~  ^
   drivers/net/wireless/mediatek/mt76/dma.c:298:2: warning: unused variable '_offset' [-Wunused-variable]
           Q_WRITE(dev, q, cpu_idx, q->head);
           ^
   drivers/net/wireless/mediatek/mt76/dma.c:24:6: note: expanded from macro 'Q_WRITE'
           u32 _offset = offsetof(struct mt76_queue_regs, _field);         \
               ^
   drivers/net/wireless/mediatek/mt76/dma.c:314:10: warning: unused variable '_offset' [-Wunused-variable]
                   last = Q_READ(dev, q, dma_idx);
                          ^
   drivers/net/wireless/mediatek/mt76/dma.c:11:6: note: expanded from macro 'Q_READ'
           u32 _offset = offsetof(struct mt76_queue_regs, _field);         \
               ^
   drivers/net/wireless/mediatek/mt76/dma.c:326:11: warning: unused variable '_offset' [-Wunused-variable]
                           last = Q_READ(dev, q, dma_idx);
                                  ^
   drivers/net/wireless/mediatek/mt76/dma.c:11:6: note: expanded from macro 'Q_READ'
           u32 _offset = offsetof(struct mt76_queue_regs, _field);         \
               ^
   drivers/net/wireless/mediatek/mt76/dma.c:634:13: warning: unused variable '_offset' [-Wunused-variable]
                   dma_idx = Q_READ(dev, q, dma_idx);
                             ^
   drivers/net/wireless/mediatek/mt76/dma.c:11:6: note: expanded from macro 'Q_READ'
           u32 _offset = offsetof(struct mt76_queue_regs, _field);         \
               ^
   drivers/net/wireless/mediatek/mt76/dma.c:643:15: warning: unused variable '_offset' [-Wunused-variable]
                                   dma_idx = Q_READ(dev, q, dma_idx);
                                             ^
   drivers/net/wireless/mediatek/mt76/dma.c:11:6: note: expanded from macro 'Q_READ'
           u32 _offset = offsetof(struct mt76_queue_regs, _field);         \
               ^
   11 warnings and 4 errors generated.
--
   In file included from drivers/net/wireless/mediatek/mt76/tx.c:6:
   In file included from drivers/net/wireless/mediatek/mt76/mt76.h:9:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:32:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:309:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
>> drivers/net/wireless/mediatek/mt76/tx.c:700:20: error: no member named 'wlan' in 'struct mtk_wed_device'
               token >= wed->wlan.token_start)
                        ~~~  ^
   drivers/net/wireless/mediatek/mt76/tx.c:725:21: error: no member named 'wlan' in 'struct mtk_wed_device'
                       token >= wed->wlan.token_start &&
                                ~~~  ^
   1 warning and 2 errors generated.
--
   In file included from drivers/net/wireless/mediatek/mt76/mt7915/pci.c:7:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:32:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:309:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
   drivers/net/wireless/mediatek/mt76/mt7915/pci.c:100:25: warning: unused variable 'wed' [-Wunused-variable]
           struct mtk_wed_device *wed = &dev->mt76.mmio.wed;
                                  ^
   drivers/net/wireless/mediatek/mt76/mt7915/pci.c:165:25: warning: unused variable 'wed' [-Wunused-variable]
           struct mtk_wed_device *wed = &dev->mt76.mmio.wed;
                                  ^
>> drivers/net/wireless/mediatek/mt76/mt7915/pci.c:238:30: error: no member named 'wlan' in 'struct mtk_wed_device'
           dev->mt76.token_size = wed->wlan.token_start;
                                  ~~~  ^
   drivers/net/wireless/mediatek/mt76/mt7915/pci.c:322:7: error: no member named 'wlan' in 'struct mtk_wed_device'
           wed->wlan.pci_dev = pdev;
           ~~~  ^
   drivers/net/wireless/mediatek/mt76/mt7915/pci.c:323:7: error: no member named 'wlan' in 'struct mtk_wed_device'
           wed->wlan.wpdma_phys = pci_resource_start(pdev, 0) +
           ~~~  ^
   drivers/net/wireless/mediatek/mt76/mt7915/pci.c:325:7: error: no member named 'wlan' in 'struct mtk_wed_device'
           wed->wlan.nbuf = 4096;
           ~~~  ^
   drivers/net/wireless/mediatek/mt76/mt7915/pci.c:326:7: error: no member named 'wlan' in 'struct mtk_wed_device'
           wed->wlan.token_start = MT7915_TOKEN_SIZE - wed->wlan.nbuf - 1;
           ~~~  ^
   drivers/net/wireless/mediatek/mt76/mt7915/pci.c:326:51: error: no member named 'wlan' in 'struct mtk_wed_device'
           wed->wlan.token_start = MT7915_TOKEN_SIZE - wed->wlan.nbuf - 1;
                                                       ~~~  ^
   drivers/net/wireless/mediatek/mt76/mt7915/pci.c:327:7: error: no member named 'wlan' in 'struct mtk_wed_device'
           wed->wlan.init_buf = mt7915_wed_init_buf;
           ~~~  ^
   drivers/net/wireless/mediatek/mt76/mt7915/pci.c:328:7: error: no member named 'wlan' in 'struct mtk_wed_device'
           wed->wlan.offload_enable = mt7915_wed_offload_enable;
           ~~~  ^
   drivers/net/wireless/mediatek/mt76/mt7915/pci.c:329:7: error: no member named 'wlan' in 'struct mtk_wed_device'
           wed->wlan.offload_disable = mt7915_wed_offload_disable;
           ~~~  ^
>> drivers/net/wireless/mediatek/mt76/mt7915/pci.c:332:14: error: no member named 'irq' in 'struct mtk_wed_device'
                   irq = wed->irq;
                         ~~~  ^
   3 warnings and 10 errors generated.
--
   In file included from drivers/net/wireless/mediatek/mt76/mt7915/main.c:4:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:13:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:32:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:309:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
>> drivers/net/wireless/mediatek/mt76/mt7915/main.c:1056:33: error: no member named 'wdma_idx' in 'struct mtk_wed_device'
           path->mtk_wdma.wdma_idx = wed->wdma_idx;
                                     ~~~  ^
   1 warning and 1 error generated.


vim +154 drivers/net/wireless/mediatek/mt76/dma.c

    22	
    23	#define Q_WRITE(_dev, _q, _field, _val)	do {				\
  > 24		u32 _offset = offsetof(struct mt76_queue_regs, _field);		\
    25		if (IS_ENABLED(CONFIG_NET_MEDIATEK_SOC_WED) &&			\
    26		    (_q)->flags & MT_QFLAG_WED)					\
    27			mtk_wed_device_reg_write(&(_dev)->mmio.wed,		\
    28						 ((_q)->wed_regs + _offset),	\
    29						 _val);				\
    30		else								\
    31			writel(_val, &(_q)->regs->_field);			\
    32	} while (0)
    33	
    34	static int mt76_dma_rx_fill(struct mt76_dev *dev, struct mt76_queue *q);
    35	
    36	static struct mt76_txwi_cache *
    37	mt76_alloc_txwi(struct mt76_dev *dev)
    38	{
    39		struct mt76_txwi_cache *t;
    40		dma_addr_t addr;
    41		u8 *txwi;
    42		int size;
    43	
    44		size = L1_CACHE_ALIGN(dev->drv->txwi_size + sizeof(*t));
    45		txwi = devm_kzalloc(dev->dev, size, GFP_ATOMIC);
    46		if (!txwi)
    47			return NULL;
    48	
    49		addr = dma_map_single(dev->dev, txwi, dev->drv->txwi_size,
    50				      DMA_TO_DEVICE);
    51		t = (struct mt76_txwi_cache *)(txwi + dev->drv->txwi_size);
    52		t->dma_addr = addr;
    53	
    54		return t;
    55	}
    56	
    57	static struct mt76_txwi_cache *
    58	__mt76_get_txwi(struct mt76_dev *dev)
    59	{
    60		struct mt76_txwi_cache *t = NULL;
    61	
    62		spin_lock(&dev->lock);
    63		if (!list_empty(&dev->txwi_cache)) {
    64			t = list_first_entry(&dev->txwi_cache, struct mt76_txwi_cache,
    65					     list);
    66			list_del(&t->list);
    67		}
    68		spin_unlock(&dev->lock);
    69	
    70		return t;
    71	}
    72	
    73	static struct mt76_txwi_cache *
    74	mt76_get_txwi(struct mt76_dev *dev)
    75	{
    76		struct mt76_txwi_cache *t = __mt76_get_txwi(dev);
    77	
    78		if (t)
    79			return t;
    80	
    81		return mt76_alloc_txwi(dev);
    82	}
    83	
    84	void
    85	mt76_put_txwi(struct mt76_dev *dev, struct mt76_txwi_cache *t)
    86	{
    87		if (!t)
    88			return;
    89	
    90		spin_lock(&dev->lock);
    91		list_add(&t->list, &dev->txwi_cache);
    92		spin_unlock(&dev->lock);
    93	}
    94	EXPORT_SYMBOL_GPL(mt76_put_txwi);
    95	
    96	static void
    97	mt76_free_pending_txwi(struct mt76_dev *dev)
    98	{
    99		struct mt76_txwi_cache *t;
   100	
   101		local_bh_disable();
   102		while ((t = __mt76_get_txwi(dev)) != NULL)
   103			dma_unmap_single(dev->dev, t->dma_addr, dev->drv->txwi_size,
   104					 DMA_TO_DEVICE);
   105		local_bh_enable();
   106	}
   107	
   108	static void
   109	mt76_dma_sync_idx(struct mt76_dev *dev, struct mt76_queue *q)
   110	{
   111		Q_WRITE(dev, q, desc_base, q->desc_dma);
   112		Q_WRITE(dev, q, ring_size, q->ndesc);
   113		q->head = Q_READ(dev, q, dma_idx);
   114		q->tail = q->head;
   115	}
   116	
   117	static void
   118	mt76_dma_queue_reset(struct mt76_dev *dev, struct mt76_queue *q)
   119	{
   120		int i;
   121	
   122		if (!q)
   123			return;
   124	
   125		/* clear descriptors */
   126		for (i = 0; i < q->ndesc; i++)
   127			q->desc[i].ctrl = cpu_to_le32(MT_DMA_CTL_DMA_DONE);
   128	
   129		Q_WRITE(dev, q, cpu_idx, 0);
 > 130		Q_WRITE(dev, q, dma_idx, 0);
   131		mt76_dma_sync_idx(dev, q);
   132	}
   133	
   134	static int
   135	mt76_dma_wed_setup(struct mt76_dev *dev, struct mt76_queue *q)
   136	{
   137		struct mtk_wed_device *wed = &dev->mmio.wed;
   138		int ret, type, ring;
   139		u8 flags = q->flags;
   140	
   141		if (!mtk_wed_device_active(wed))
   142			q->flags &= ~MT_QFLAG_WED;
   143	
   144		if (!(q->flags & MT_QFLAG_WED))
   145			return 0;
   146	
   147		type = FIELD_GET(MT_QFLAG_WED_TYPE, q->flags);
   148		ring = FIELD_GET(MT_QFLAG_WED_RING, q->flags);
   149	
   150		switch (type) {
   151		case MT76_WED_Q_TX:
   152			ret = mtk_wed_device_tx_ring_setup(wed, ring, q->regs);
   153			if (!ret)
 > 154				q->wed_regs = wed->tx_ring[ring].reg_base;
   155			break;
   156		case MT76_WED_Q_TXFREE:
   157			/* WED txfree queue needs ring to be initialized before setup */
   158			q->flags = 0;
   159			mt76_dma_queue_reset(dev, q);
   160			mt76_dma_rx_fill(dev, q);
   161			q->flags = flags;
   162	
 > 163			ret = mtk_wed_device_txfree_ring_setup(wed, q->regs);
   164			if (!ret)
 > 165				q->wed_regs = wed->txfree_ring.reg_base;
   166			break;
   167		default:
   168			ret = -EINVAL;
   169		}
   170	
   171		return ret;
   172	}
   173	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107140756.izJpEu6N-lkp%40intel.com.

--tKW2IUtsqtDRztdT
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
XyT08q6Imnrn/v8B0WgJaD6pAgA=

--tKW2IUtsqtDRztdT--
