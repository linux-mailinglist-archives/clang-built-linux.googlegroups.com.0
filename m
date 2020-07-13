Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBWM6WH4AKGQEYI4MLSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4E821D585
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 14:11:07 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id g85sf9129323pfb.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 05:11:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594642266; cv=pass;
        d=google.com; s=arc-20160816;
        b=sMh+kVVRZ+JIZXiqZzrIwZhqzhXJdpob6iNxK+r6ORux2i54EQKARfOrUNG/B4cIxm
         3ssBCcRdtnfiRsqlfoWTj92PrZKsipexkTveodiywxfzNQ5YrFrnjdvVBKN4nfNsb5cD
         5j7SoaKMsBCuxI1hJbcLvE9OuXHh67neuU1q12Y/vwKoKXG3aeAbynIGka3Ja3bsXwXW
         iL/Lo19qLjtoAL84FB4GaE/gkiVTDR7bxn032tjeQ68H3xsANsaudBfmv3v+aqW+IRcz
         cHh7Zenuza3nEuhk7RPQpy+hf+l72t0XdNARsPrbMnm7Y6t8eCN9NfYUqWSux7Jj2bVo
         fGnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=GjAATZSSnNduPqegGhOy4jJHt7V/j+vj67gQxWUMoro=;
        b=pz7VIO6FfJdWwOT2uGh94/ziwSwFkRqvBYJLuZt1glstJIYWtDXdC3Uhm2ZORsw8SV
         cVQZPXaOHcXjLsNgDW8aAoAd1Lm7xHdQTC77GTeZtQJrVVAQRRw0ucsGtHEHKnWJ4ahG
         ehuaZ53OcYZBBtiT3p4VrvG3lVexRpv6vSYNSybyq1oCqR+MKoqafBgfKIM6UgFdoinx
         JPoxDOH/wQA73y5C1S1Fp1ykwk32xB7BZbDWLF/iI/EtOwdtcNNXq+Zul27CL9Av6Uya
         bon8CBnGqAOJHX4Top0TegSu/O4WJX9cuQOT15yLH5kZEzS8K4F4Or1Ibo98ha0Sia+/
         I+mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GjAATZSSnNduPqegGhOy4jJHt7V/j+vj67gQxWUMoro=;
        b=Qk6lJmA5uwlKSVerbs7Xxpfy9QOa8C6i/5/WJ4r1519OP4GXqYXyo6HKJ77LcQ0ySS
         MxSJ3AVdgX4ZZJMQUvtWWqf5tiT5tJk6Gz5ZX+yhO32PDjRaRsKRjs7DayLiimezdT2T
         7iZ9Am60rGFlm5fgSibpVb0DcV0MYxvilWyC+9SoKvezVaCE1RBEIPfUe+e7Ytvlb9Xs
         3lNZvaKOcr+q7FCdIQpuWyxPtm+k4REFJ6NFcoCLUWsqH2Ce75/+qzDBLTniF+XEq11F
         WYX6q8egmnxtX9TZjmvAJus6kQRG8a88bG2dgg4mcPeVjxgXpIpCD/x3VBReZzCrL4nU
         A60A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GjAATZSSnNduPqegGhOy4jJHt7V/j+vj67gQxWUMoro=;
        b=R+VO/+Y3D0JkelX1+SwHcwFzifgJFXtZPCswnLJ+lUgf1kfSre+aIBWfx2eBoEFppZ
         LhhBjIq7tuI8XGLaAmW6M95V3J7mC1jLUUC0Pg2izLhU2ntWU/iEObcqXo0KAaMG43w7
         ZvP8endkvkrkqOhdq9ndZc4Gdq/cJSd5P0SI777Y6sR7aAisRKu4AsXTOHbEUzfFgNmP
         twQV3JpKgNlfhD+i+lAtgYjll/wtGt74XFvwB4WXtztS/Hziu2YZrJGl7HgWAIFQYIlJ
         ZGCCAv3TSb0/lhOcGWuYQDp4JCo0RM4CinkUgD5q/m9iSHSHjilg4OGIjFTU+8Lh04my
         pCXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531btOQEIeI6pe1h/Lzyw3KqWFCh2Ce2r6cIkME4vLn1obd+V3fM
	zsxXt2Zyxj733rFL6AB+VD8=
X-Google-Smtp-Source: ABdhPJybYRN5p0x/lco+9nG6u2LYhsPx8HP2u3jxVaKgvh0ACEJ8PzJXFUvO+uhAVdJVTvYouDoIOg==
X-Received: by 2002:a17:902:9009:: with SMTP id a9mr24631373plp.252.1594642265564;
        Mon, 13 Jul 2020 05:11:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9344:: with SMTP id g4ls2986871plp.10.gmail; Mon, 13
 Jul 2020 05:11:05 -0700 (PDT)
X-Received: by 2002:a17:902:854c:: with SMTP id d12mr4230641plo.45.1594642264863;
        Mon, 13 Jul 2020 05:11:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594642264; cv=none;
        d=google.com; s=arc-20160816;
        b=zL3YJaUdqkbwPLhlAa+miAgZ+qvNLE3Ietr3t2kQNTlMppcYWcLMxdS/EIaZ5zfcWf
         sA+JHSANlPXMMBNMog07VzOt2ekZwmd1mXOSYGsQsclyq37YiZNB3fA20/CsmtJzsB8D
         4lTVFlwt8yqXfi6T4X5qdYhNAG0GyoLdZhFhffBGLy/jXGQxX1nOa2IhtI9eQU2EqCm9
         1VAGQD9IuZOXUtY0VsqHmc3eOACY/3LtTmbfZuuUlw53PrHf+xB0Xs59Zj2nEUljuJa6
         asbtfNfnRLZBxiH91nISwb0UfpO9v+2xXj1YfV7pygK6qo379R/5CMcfWn6bVY2EFdCn
         eVsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=I3oumP/311+A7vRO/DDp3YF3N9hq7UvISLxxFscLbeE=;
        b=f3VF321w+9Oz+gk8hL7xA1iJNyEUHa7bYzXcXBBDKxTEW8prhSxa/marRbj09D/RbI
         /CJ541fcB9PWSRSaI88wgjUoi3D5nbA8ikP1MqPIKkQid8ZrZROiuiBbXSJqEUInIRyX
         UHspNjHCHJZvJVFX1PEWjamTHotx5hE5DkOkH7xswFzFh2zr7ddD1hUKi2Q9rD34PFf7
         pDwrKS4auRgcRQwWOS5rU2xW7mA6ITL1pATld/4oIiAYy+2zsGJevMtm5juw3LEethxe
         RDNEF4cVm2F0uNlS8hdfs92hkk/pEX4dD+sibCcpjdCXHmmRKOxDhgRrEhAWz1P6wCWl
         L4DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id i3si1060893pjx.2.2020.07.13.05.11.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Jul 2020 05:11:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: c3tcmj8mE0yw47+eFKpiugppXGaR4b51tjkIuCh31Kf5wCuig4UjoeR5iYM3VVr6fOC6RRIEXC
 4IGQBtaqo6YA==
X-IronPort-AV: E=McAfee;i="6000,8403,9680"; a="136765603"
X-IronPort-AV: E=Sophos;i="5.75,347,1589266800"; 
   d="gz'50?scan'50,208,50";a="136765603"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jul 2020 05:11:03 -0700
IronPort-SDR: y5VzLcAOlKfc43/jO15iS5xgmx6+vZGRbqAbIbfUz4mCRPzR3o7hPaagzi0YBqxBwU6XU/b+dR
 6J0XAcTQmmZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,347,1589266800"; 
   d="gz'50?scan'50,208,50";a="299178311"
Received: from lkp-server02.sh.intel.com (HELO fb03a464a2e3) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 13 Jul 2020 05:11:01 -0700
Received: from kbuild by fb03a464a2e3 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1juxIS-0000ov-Q5; Mon, 13 Jul 2020 12:11:00 +0000
Date: Mon, 13 Jul 2020 20:10:30 +0800
From: kernel test robot <lkp@intel.com>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [frank-w-bpi-r2-4.14:5.8-rc 6/48]
 drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:4587:6:
 error: no previous prototype for function 'kalPerMonDump'
Message-ID: <202007132027.N0e418j5%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tThc/1wpZn/ma/RB"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--tThc/1wpZn/ma/RB
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/frank-w/BPI-R2-4.14 5.8-rc
head:   5cb9a61f79cdb4377e4422033ad0ec7081fd1ba5
commit: 35173ed0c4452691f8ef6cc00cc574f1c4102624 [6/48] mt6625l: add changes outside driver dir
config: arm-randconfig-r003-20200713 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        git checkout 35173ed0c4452691f8ef6cc00cc574f1c4102624
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   typedef unsigned int UINT32, *PUINT32;
                        ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:128:31: error: redefinition of typedef 'PUINT32' is a C11 feature [-Werror,-Wtypedef-redefinition]
   typedef unsigned int UINT32, *PUINT32;
                                 ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:115:31: note: previous definition is here
   typedef unsigned int UINT32, *PUINT32;
                                 ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:803:13: error: no previous prototype for function 'kalFirmwareOpen' [-Werror,-Wmissing-prototypes]
   WLAN_STATUS kalFirmwareOpen(IN P_GLUE_INFO_T prGlueInfo)
               ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:803:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   WLAN_STATUS kalFirmwareOpen(IN P_GLUE_INFO_T prGlueInfo)
   ^
   static 
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:891:13: error: no previous prototype for function 'kalFirmwareClose' [-Werror,-Wmissing-prototypes]
   WLAN_STATUS kalFirmwareClose(IN P_GLUE_INFO_T prGlueInfo)
               ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:891:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   WLAN_STATUS kalFirmwareClose(IN P_GLUE_INFO_T prGlueInfo)
   ^
   static 
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:926:13: error: no previous prototype for function 'kalFirmwareLoad' [-Werror,-Wmissing-prototypes]
   WLAN_STATUS kalFirmwareLoad(IN P_GLUE_INFO_T prGlueInfo, OUT PVOID prBuf, IN UINT_32 u4Offset, OUT PUINT_32 pu4Size)
               ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:926:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   WLAN_STATUS kalFirmwareLoad(IN P_GLUE_INFO_T prGlueInfo, OUT PVOID prBuf, IN UINT_32 u4Offset, OUT PUINT_32 pu4Size)
   ^
   static 
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:970:13: error: no previous prototype for function 'kalFirmwareSize' [-Werror,-Wmissing-prototypes]
   WLAN_STATUS kalFirmwareSize(IN P_GLUE_INFO_T prGlueInfo, OUT PUINT_32 pu4Size)
               ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:970:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   WLAN_STATUS kalFirmwareSize(IN P_GLUE_INFO_T prGlueInfo, OUT PUINT_32 pu4Size)
   ^
   static 
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:2122:6: error: no previous prototype for function 'kalQueryRegistryMacAddr' [-Werror,-Wmissing-prototypes]
   VOID kalQueryRegistryMacAddr(IN P_GLUE_INFO_T prGlueInfo, OUT PUINT_8 paucMacAddr)
        ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:2122:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   VOID kalQueryRegistryMacAddr(IN P_GLUE_INFO_T prGlueInfo, OUT PUINT_8 paucMacAddr)
   ^
   static 
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:3818:14: error: no previous prototype for function 'kalFileOpen' [-Werror,-Wmissing-prototypes]
   struct file *kalFileOpen(const char *path, int flags, int rights)
                ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:3818:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct file *kalFileOpen(const char *path, int flags, int rights)
   ^
   static 
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:3835:6: error: no previous prototype for function 'kalFileClose' [-Werror,-Wmissing-prototypes]
   VOID kalFileClose(struct file *file)
        ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:3835:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   VOID kalFileClose(struct file *file)
   ^
   static 
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:3840:9: error: no previous prototype for function 'kalFileRead' [-Werror,-Wmissing-prototypes]
   UINT_32 kalFileRead(struct file *file, UINT_64 offset, UINT_8 *data, UINT_32 size)
           ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:3840:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   UINT_32 kalFileRead(struct file *file, UINT_64 offset, UINT_8 *data, UINT_32 size)
   ^
   static 
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:3854:9: error: no previous prototype for function 'kalFileWrite' [-Werror,-Wmissing-prototypes]
   UINT_32 kalFileWrite(struct file *file, UINT_64 offset, UINT_8 *data, UINT_32 size)
           ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:3854:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   UINT_32 kalFileWrite(struct file *file, UINT_64 offset, UINT_8 *data, UINT_32 size)
   ^
   static 
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:4163:24: error: implicit declaration of function 'cfg80211_testmode_alloc_event_skb' [-Werror,-Wimplicit-function-declaration]
           struct sk_buff *skb = cfg80211_testmode_alloc_event_skb(priv_to_wiphy(prGlueInfo),
                                 ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:4163:24: note: did you mean '__cfg80211_alloc_event_skb'?
   include/net/cfg80211.h:6406:17: note: '__cfg80211_alloc_event_skb' declared here
   struct sk_buff *__cfg80211_alloc_event_skb(struct wiphy *wiphy,
                   ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:4163:18: error: incompatible integer to pointer conversion initializing 'struct sk_buff *' with an expression of type 'int' [-Werror,-Wint-conversion]
           struct sk_buff *skb = cfg80211_testmode_alloc_event_skb(priv_to_wiphy(prGlueInfo),
                           ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:4180:2: error: implicit declaration of function 'cfg80211_testmode_event' [-Werror,-Wimplicit-function-declaration]
           cfg80211_testmode_event(skb, GFP_KERNEL);
           ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:4180:2: note: did you mean 'cfg80211_vendor_event'?
   include/net/cfg80211.h:6542:20: note: 'cfg80211_vendor_event' declared here
   static inline void cfg80211_vendor_event(struct sk_buff *skb, gfp_t gfp)
                      ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:4533:45: error: too few arguments to function call, expected 3, have 2
                                   show_stack(prGlueInfo->main_thread, NULL);
                                   ~~~~~~~~~~                              ^
   include/linux/sched/debug.h:33:13: note: 'show_stack' declared here
   extern void show_stack(struct task_struct *task, unsigned long *sp,
               ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:4544:36: error: too few arguments to function call, expected 3, have 2
                           show_stack(rHaltCtrl.owner, NULL);
                           ~~~~~~~~~~                      ^
   include/linux/sched/debug.h:33:13: note: 'show_stack' declared here
   extern void show_stack(struct task_struct *task, unsigned long *sp,
               ^
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:4587:6: error: no previous prototype for function 'kalPerMonDump' [-Werror,-Wmissing-prototypes]
   VOID kalPerMonDump(IN P_GLUE_INFO_T prGlueInfo)
        ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c:4587:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   VOID kalPerMonDump(IN P_GLUE_INFO_T prGlueInfo)
   ^
   static 
   17 errors generated.

vim +/kalPerMonDump +4587 drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/gl_kal.c

238edc4f40490a Frank Wunderlich 2020-06-15  4512  
238edc4f40490a Frank Wunderlich 2020-06-15  4513  INT_32 kalHaltLock(UINT_32 waitMs)
238edc4f40490a Frank Wunderlich 2020-06-15  4514  {
238edc4f40490a Frank Wunderlich 2020-06-15  4515  	INT_32 i4Ret = 0;
238edc4f40490a Frank Wunderlich 2020-06-15  4516  
238edc4f40490a Frank Wunderlich 2020-06-15  4517  	if (waitMs) {
238edc4f40490a Frank Wunderlich 2020-06-15  4518  		i4Ret = down_timeout(&rHaltCtrl.lock, MSEC_TO_JIFFIES(waitMs));
238edc4f40490a Frank Wunderlich 2020-06-15  4519  		if (!i4Ret)
238edc4f40490a Frank Wunderlich 2020-06-15  4520  			goto success;
238edc4f40490a Frank Wunderlich 2020-06-15  4521  		if (i4Ret != -ETIME)
238edc4f40490a Frank Wunderlich 2020-06-15  4522  			return i4Ret;
238edc4f40490a Frank Wunderlich 2020-06-15  4523  		if (rHaltCtrl.fgHeldByKalIoctl) {
238edc4f40490a Frank Wunderlich 2020-06-15  4524  			P_GLUE_INFO_T prGlueInfo = NULL;
238edc4f40490a Frank Wunderlich 2020-06-15  4525  
238edc4f40490a Frank Wunderlich 2020-06-15  4526  			wlanExportGlueInfo(&prGlueInfo);
238edc4f40490a Frank Wunderlich 2020-06-15  4527  
238edc4f40490a Frank Wunderlich 2020-06-15  4528  #ifdef MTK_WCN_BUILT_IN_DRIVER
238edc4f40490a Frank Wunderlich 2020-06-15  4529  			DBGLOG(INIT, ERROR,
238edc4f40490a Frank Wunderlich 2020-06-15  4530  				"kalIoctl was executed longer than %u ms, show backtrace of tx_thread!\n",
238edc4f40490a Frank Wunderlich 2020-06-15  4531  				kalGetTimeTick() - rHaltCtrl.u4HoldStart);
238edc4f40490a Frank Wunderlich 2020-06-15  4532  			if (prGlueInfo)
238edc4f40490a Frank Wunderlich 2020-06-15  4533  				show_stack(prGlueInfo->main_thread, NULL);
238edc4f40490a Frank Wunderlich 2020-06-15  4534  #else
238edc4f40490a Frank Wunderlich 2020-06-15  4535  			DBGLOG(INIT, ERROR,
238edc4f40490a Frank Wunderlich 2020-06-15  4536  				"kalIoctl was executed longer than %u ms!\n",
238edc4f40490a Frank Wunderlich 2020-06-15  4537  				kalGetTimeTick() - rHaltCtrl.u4HoldStart);
238edc4f40490a Frank Wunderlich 2020-06-15  4538  #endif
238edc4f40490a Frank Wunderlich 2020-06-15  4539  		} else {
238edc4f40490a Frank Wunderlich 2020-06-15  4540  			DBGLOG(INIT, ERROR, "halt lock held by %s pid %d longer than %u ms!\n",
238edc4f40490a Frank Wunderlich 2020-06-15  4541  				rHaltCtrl.owner->comm, rHaltCtrl.owner->pid,
238edc4f40490a Frank Wunderlich 2020-06-15  4542  				kalGetTimeTick() - rHaltCtrl.u4HoldStart);
238edc4f40490a Frank Wunderlich 2020-06-15  4543  #ifdef MTK_WCN_BUILT_IN_DRIVER
238edc4f40490a Frank Wunderlich 2020-06-15 @4544  			show_stack(rHaltCtrl.owner, NULL);
238edc4f40490a Frank Wunderlich 2020-06-15  4545  #endif
238edc4f40490a Frank Wunderlich 2020-06-15  4546  		}
238edc4f40490a Frank Wunderlich 2020-06-15  4547  		return i4Ret;
238edc4f40490a Frank Wunderlich 2020-06-15  4548  	}
238edc4f40490a Frank Wunderlich 2020-06-15  4549  	down(&rHaltCtrl.lock);
238edc4f40490a Frank Wunderlich 2020-06-15  4550  success:
238edc4f40490a Frank Wunderlich 2020-06-15  4551  	rHaltCtrl.owner = current;
238edc4f40490a Frank Wunderlich 2020-06-15  4552  	rHaltCtrl.u4HoldStart = kalGetTimeTick();
238edc4f40490a Frank Wunderlich 2020-06-15  4553  	return 0;
238edc4f40490a Frank Wunderlich 2020-06-15  4554  }
238edc4f40490a Frank Wunderlich 2020-06-15  4555  
238edc4f40490a Frank Wunderlich 2020-06-15  4556  INT_32 kalHaltTryLock(VOID)
238edc4f40490a Frank Wunderlich 2020-06-15  4557  {
238edc4f40490a Frank Wunderlich 2020-06-15  4558  	INT_32 i4Ret = 0;
238edc4f40490a Frank Wunderlich 2020-06-15  4559  
238edc4f40490a Frank Wunderlich 2020-06-15  4560  	i4Ret = down_trylock(&rHaltCtrl.lock);
238edc4f40490a Frank Wunderlich 2020-06-15  4561  	if (i4Ret)
238edc4f40490a Frank Wunderlich 2020-06-15  4562  		return i4Ret;
238edc4f40490a Frank Wunderlich 2020-06-15  4563  	rHaltCtrl.owner = current;
238edc4f40490a Frank Wunderlich 2020-06-15  4564  	rHaltCtrl.u4HoldStart = kalGetTimeTick();
238edc4f40490a Frank Wunderlich 2020-06-15  4565  	return 0;
238edc4f40490a Frank Wunderlich 2020-06-15  4566  }
238edc4f40490a Frank Wunderlich 2020-06-15  4567  
238edc4f40490a Frank Wunderlich 2020-06-15  4568  VOID kalHaltUnlock(VOID)
238edc4f40490a Frank Wunderlich 2020-06-15  4569  {
238edc4f40490a Frank Wunderlich 2020-06-15  4570  	if (kalGetTimeTick() - rHaltCtrl.u4HoldStart > WLAN_OID_TIMEOUT_THRESHOLD * 2 &&
238edc4f40490a Frank Wunderlich 2020-06-15  4571  		rHaltCtrl.owner)
238edc4f40490a Frank Wunderlich 2020-06-15  4572  		DBGLOG(INIT, ERROR, "process %s pid %d hold halt lock longer than 4s!\n",
238edc4f40490a Frank Wunderlich 2020-06-15  4573  			rHaltCtrl.owner->comm, rHaltCtrl.owner->pid);
238edc4f40490a Frank Wunderlich 2020-06-15  4574  	rHaltCtrl.owner = NULL;
238edc4f40490a Frank Wunderlich 2020-06-15  4575  	up(&rHaltCtrl.lock);
238edc4f40490a Frank Wunderlich 2020-06-15  4576  }
238edc4f40490a Frank Wunderlich 2020-06-15  4577  
238edc4f40490a Frank Wunderlich 2020-06-15  4578  VOID kalSetHalted(BOOLEAN fgHalt)
238edc4f40490a Frank Wunderlich 2020-06-15  4579  {
238edc4f40490a Frank Wunderlich 2020-06-15  4580  	rHaltCtrl.fgHalt = fgHalt;
238edc4f40490a Frank Wunderlich 2020-06-15  4581  }
238edc4f40490a Frank Wunderlich 2020-06-15  4582  
238edc4f40490a Frank Wunderlich 2020-06-15  4583  BOOLEAN kalIsHalted(VOID)
238edc4f40490a Frank Wunderlich 2020-06-15  4584  {
238edc4f40490a Frank Wunderlich 2020-06-15  4585  	return rHaltCtrl.fgHalt;
238edc4f40490a Frank Wunderlich 2020-06-15  4586  }
238edc4f40490a Frank Wunderlich 2020-06-15 @4587  VOID kalPerMonDump(IN P_GLUE_INFO_T prGlueInfo)
238edc4f40490a Frank Wunderlich 2020-06-15  4588  {
238edc4f40490a Frank Wunderlich 2020-06-15  4589  	struct GL_PER_MON_T *prPerMonitor;
238edc4f40490a Frank Wunderlich 2020-06-15  4590  
238edc4f40490a Frank Wunderlich 2020-06-15  4591  	prPerMonitor = &prGlueInfo->prAdapter->rPerMonitor;
238edc4f40490a Frank Wunderlich 2020-06-15  4592  	DBGLOG(SW4, WARN, "ulPerfMonFlag:0x%lx\n", prPerMonitor->ulPerfMonFlag);
238edc4f40490a Frank Wunderlich 2020-06-15  4593  	DBGLOG(SW4, WARN, "ulLastTxBytes:%ld\n", prPerMonitor->ulLastTxBytes);
238edc4f40490a Frank Wunderlich 2020-06-15  4594  	DBGLOG(SW4, WARN, "ulLastRxBytes:%ld\n", prPerMonitor->ulLastRxBytes);
238edc4f40490a Frank Wunderlich 2020-06-15  4595  	DBGLOG(SW4, WARN, "ulP2PLastTxBytes:%ld\n", prPerMonitor->ulP2PLastTxBytes);
238edc4f40490a Frank Wunderlich 2020-06-15  4596  	DBGLOG(SW4, WARN, "ulP2PLastRxBytes:%ld\n", prPerMonitor->ulP2PLastRxBytes);
238edc4f40490a Frank Wunderlich 2020-06-15  4597  	DBGLOG(SW4, WARN, "ulThroughput:%ld\n", prPerMonitor->ulThroughput);
238edc4f40490a Frank Wunderlich 2020-06-15  4598  	DBGLOG(SW4, WARN, "u4UpdatePeriod:%d\n", prPerMonitor->u4UpdatePeriod);
238edc4f40490a Frank Wunderlich 2020-06-15  4599  	DBGLOG(SW4, WARN, "u4TarPerfLevel:%d\n", prPerMonitor->u4TarPerfLevel);
238edc4f40490a Frank Wunderlich 2020-06-15  4600  	DBGLOG(SW4, WARN, "u4CurrPerfLevel:%d\n", prPerMonitor->u4CurrPerfLevel);
238edc4f40490a Frank Wunderlich 2020-06-15  4601  	DBGLOG(SW4, WARN, "netStats tx_bytes:%ld\n", prGlueInfo->rNetDevStats.tx_bytes);
238edc4f40490a Frank Wunderlich 2020-06-15  4602  	DBGLOG(SW4, WARN, "netStats tx_bytes:%ld\n", prGlueInfo->rNetDevStats.rx_bytes);
238edc4f40490a Frank Wunderlich 2020-06-15  4603  	DBGLOG(SW4, WARN, "p2p netStats tx_bytes:%ld\n", prGlueInfo->prP2PInfo->rNetDevStats.tx_bytes);
238edc4f40490a Frank Wunderlich 2020-06-15  4604  	DBGLOG(SW4, WARN, "p2p netStats tx_bytes:%ld\n", prGlueInfo->prP2PInfo->rNetDevStats.rx_bytes);
238edc4f40490a Frank Wunderlich 2020-06-15  4605  }
238edc4f40490a Frank Wunderlich 2020-06-15  4606  

:::::: The code at line 4587 was first introduced by commit
:::::: 238edc4f40490a3a555d52edf3f7c7f3abb137e9 mt6625l: add driver-folder from 5.7

:::::: TO: Frank Wunderlich <frank-w@public-files.de>
:::::: CC: Frank Wunderlich <frank-w@public-files.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007132027.N0e418j5%25lkp%40intel.com.

--tThc/1wpZn/ma/RB
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AQA=

--tThc/1wpZn/ma/RB--
