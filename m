Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7HETCEQMGQETTMSW7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id F02DF3F74C7
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 14:07:25 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id u3-20020a6323430000b029023ba96595fdsf14042974pgm.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 05:07:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629893244; cv=pass;
        d=google.com; s=arc-20160816;
        b=V2X2vJkSeGAO59odBrcQPn37qWEL7tkqlGvoMiTjrMkMQ/T/LbVKj1daffU8HUUv1A
         kB5KDpWyKmCkarKWh9f7/JH9J9okUkmYwvM1gCi4PZ/+p16C4QWtBLeIRv/173AroXIr
         68veOe3IR/7fQ/8dsQVTpekkl5SL3I1hBn3BSmS8yU0b76kACirPQ6lGsyTsNcniw50N
         OjxbKzeBOQMmSbFGmEPtmUqHpEmwNtwb/+P1T+unl/3lqwICtIt1eCF4XQOv387GfREj
         93QVHSHfS2tNyx9E/JEy9agCaUTfXyqSKqonICYIh/VYwT80x5qRuhZ7bOxTxgxhr4DF
         Li/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TBc2t+FnswMzDGhBUaQYUlLJryGcnRMcTbWMP/MMdIg=;
        b=r9EgbW6isrWZ4Xf5Axqsmxanz1ZJb6oIQud0mFw+5s9kRvHRP0/8VwkEpze0CiPB4o
         3YTI0nC+NA/vWHFyjloemXt5KOZVdNGmrTtZw/24YpFc3pkw30DZ1xbIwVOmOl076h/u
         wGtUKjJuwm/Vl1Yx6B1G2CYU+vmH1698MlONjrsSCE+HfyX004qUFuXtYfkbqJbIedcN
         1rcwhkJIMDtsPkNV0RNa7Sgp4COgAoey+CRldkdcokQNhXGTglixNVJACOdde9VrqEwT
         LyWFhviM1ka4u7J6nypw15GClJHz1Qe+slhbcTJuckpolB71C0QHXz9KZv5r+cNPixZr
         9fRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TBc2t+FnswMzDGhBUaQYUlLJryGcnRMcTbWMP/MMdIg=;
        b=AI8/PPpVmTeG1z1OwdkhoDnVosEEp3ccaiWWjf+2lcCxymWdD3JksIcNCfMYp34kX+
         r53BUmCNwL3w43VAuKSN19wE8NR/2Gf1XrpPVtS2t/9+rRke1to1gUDQoANH7k+t5CfQ
         01sLFIl7nLxDPBMBLtj/aIpNP3Uay+xZ9/CuSHWbuMvZ8nrhIK3ecFKPNCpvr06Iy5pD
         slopT/x7MIGNH7lMdcZQt1AF07bm1mgLYdAH6RWpAEspSDoh5zQhSayqkJzP37+hpK1N
         xjqquy1ApUJ6kKQ81j+K+Dv00W96VJLajTunL/Kz2bSdcGgbnTwG2rpcLuW/ofb2O8bs
         Hujg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TBc2t+FnswMzDGhBUaQYUlLJryGcnRMcTbWMP/MMdIg=;
        b=aqbsQU+w/xMdLjS4NoSYz3C1979DOKs+ct9eECZhFK9KtOPmmiwKAhmXTyal9RKtF/
         2wmHGLctfIRJrlR23TxbOcYdus4DB6zNkUYM+cprF/vpN66PSlrlbO1fYvPn90ye3LD9
         /aJ4memZzx3MxGlOeRHAHlFDo80JCxkSmoIkG5Ii+eX0UJ6UGWrW6OEJElOaTqAllHpD
         vwhWMRuYlmxTp4HR0ijroqCI5EQnT6HJwrV7twgaEpuNoN82D/+S6GCnEoK3vvybqGRe
         WPztZgpTG7vv9BnAozvMx8pZTZw/QzyhvNA8S6bcvaR/kSSrYbN+DuWnxgD4PciWfr4+
         iNng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Z/cNEOE927l8g1NBim5b6r9gPWJ6OHWnwIjN6sRPkJp5ylp2P
	vtXeQn1T1Vjc3tFMnB59vQI=
X-Google-Smtp-Source: ABdhPJxbkCbkAOII4d19hn6uV8Dwyw1z9F6hfuSTw5leabMVXayje0Kk51UtxrmzEfCP+9mZ4RlLvg==
X-Received: by 2002:a17:90a:cf81:: with SMTP id i1mr7680050pju.76.1629893244570;
        Wed, 25 Aug 2021 05:07:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e845:: with SMTP id t5ls895930plg.9.gmail; Wed, 25
 Aug 2021 05:07:24 -0700 (PDT)
X-Received: by 2002:a17:902:ecc9:b0:12d:a202:76f4 with SMTP id a9-20020a170902ecc900b0012da20276f4mr37548330plh.34.1629893243700;
        Wed, 25 Aug 2021 05:07:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629893243; cv=none;
        d=google.com; s=arc-20160816;
        b=iQM1bE/raOjBujB2egiSiv6CkEy63SYl70TI9HSz6ze8SFyj13qdc6Oxo9uGppBE0H
         Y9XQNIa6KNU50KF9hmZLxCu/KnQDlPg1A7oV8b156VVr0m3OFjpcQ2k8KrywEI+hE+1P
         un1V4MRKEsBx5J2cznYJ/z0jmJQVDjlgFSokMxTtsKfca0jl5TuoIPwjjpvXT4EbBV+s
         +7/y6DKjJpuKQN5yGds3PVsZsTZNxzC/OoXppdob7lz2dVHu4AEbfFvog7i6I4WWf5hV
         x7M9tYvdqCPkyTGGRHoeEfQ+Fl4GBPQFFWXdoNeJ+oQet/e9TDjN+w+EzUZHa0rVr8UY
         vBXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=d9N5h6Hh8x5/Esgn3y/7ZehptCk7EI1bShTORRXXwRg=;
        b=Azp3HyEv3sx6SqLaME0ph/yoMHq58bwOP+0HJ0KFD0T5D9h5qwB1EKmxMx6RrSnQGW
         /HstUr+LjojA5Gv67WdD5j7dT2qYN4zOVMoFYzfD84LE0h35XZYJwDyxPhzYXLHVBGuF
         +nvXkluYJOBgb9ybT9sDsd7WFvsRCKsWQhH3PeRe5HxQPt4u0uYZI/WX1tx3M+k1tiX0
         5BbVrCLC1iaGAshyx4mwl9xlujDHe3miiGDi/buDJX9y7QhfuGfY3w/hX6mbFy+9kWWb
         OGX+1gJqqU+hfZyz2pbk0RQEdLyEKvORfJzjAxnyCmajc95vlq8+09som4feEb5LJSSj
         v0eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id nv15si194252pjb.2.2021.08.25.05.07.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 05:07:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="217229216"
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; 
   d="gz'50?scan'50,208,50";a="217229216"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2021 05:07:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; 
   d="gz'50?scan'50,208,50";a="464757168"
Received: from lkp-server01.sh.intel.com (HELO 4fbc2b3ce5aa) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 25 Aug 2021 05:07:19 -0700
Received: from kbuild by 4fbc2b3ce5aa with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mIrgc-00007c-Un; Wed, 25 Aug 2021 12:07:18 +0000
Date: Wed, 25 Aug 2021 20:06:43 +0800
From: kernel test robot <lkp@intel.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [linux-stable-rc:linux-5.4.y 1142/1473]
 drivers/net/wireless/marvell/mwifiex/cmdevt.c:217:22: warning: '(' and '{'
 tokens introducing statement expression appear in different macro expansion
 contexts
Message-ID: <202108252016.Vh4p0GRo-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZGiS0Q5IWpPtfppv"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
head:   e32f4fa1b24d825b2560ca9cfbfd9df44a4310b4
commit: 62353048e2d4e398cfc22dbee3e1a7f6f535dcc1 [1142/1473] kbuild: support LLVM=1 to switch the default tools to Clang/LLVM
config: hexagon-buildonly-randconfig-r006-20210825 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project ea08c4cd1c0869ec5024a8bb3f5cdf06ab03ae83)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=62353048e2d4e398cfc22dbee3e1a7f6f535dcc1
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-5.4.y
        git checkout 62353048e2d4e398cfc22dbee3e1a7f6f535dcc1
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=hexagon 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/wireless/marvell/mwifiex/cmdevt.c:217:22: warning: '(' and '{' tokens introducing statement expression appear in different macro expansion contexts [-Wcompound-token-split-by-macro]
           host_cmd->seq_num = cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/byteorder/generic.h:90:21: note: expanded from macro 'cpu_to_le16'
   #define cpu_to_le16 __cpu_to_le16
                       ^
   include/uapi/linux/byteorder/little_endian.h:35:50: note: expanded from macro '__cpu_to_le16'
   #define __cpu_to_le16(x) ((__force __le16)(__u16)(x))
                                                    ^
   drivers/net/wireless/marvell/mwifiex/cmdevt.c:217:34: note: '{' token is here
           host_cmd->seq_num = cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/wireless/marvell/mwifiex/fw.h:515:53: note: expanded from macro 'HostCmd_SET_SEQ_NO_BSS_INFO'
   #define HostCmd_SET_SEQ_NO_BSS_INFO(seq, num, type) {   \
                                                       ^
   include/uapi/linux/byteorder/little_endian.h:35:51: note: expanded from macro '__cpu_to_le16'
   #define __cpu_to_le16(x) ((__force __le16)(__u16)(x))
                                                     ^
>> drivers/net/wireless/marvell/mwifiex/cmdevt.c:217:34: warning: '}' and ')' tokens terminating statement expression appear in different macro expansion contexts [-Wcompound-token-split-by-macro]
           host_cmd->seq_num = cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/wireless/marvell/mwifiex/fw.h:518:46: note: expanded from macro 'HostCmd_SET_SEQ_NO_BSS_INFO'
           (((type) & 0x000f) << 12);                  }
                                                       ^
   include/uapi/linux/byteorder/little_endian.h:35:51: note: expanded from macro '__cpu_to_le16'
   #define __cpu_to_le16(x) ((__force __le16)(__u16)(x))
                                                     ^
   drivers/net/wireless/marvell/mwifiex/cmdevt.c:217:22: note: ')' token is here
           host_cmd->seq_num = cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/byteorder/generic.h:90:21: note: expanded from macro 'cpu_to_le16'
   #define cpu_to_le16 __cpu_to_le16
                       ^
   include/uapi/linux/byteorder/little_endian.h:35:52: note: expanded from macro '__cpu_to_le16'
   #define __cpu_to_le16(x) ((__force __le16)(__u16)(x))
                                                      ^
   drivers/net/wireless/marvell/mwifiex/cmdevt.c:325:15: warning: '(' and '{' tokens introducing statement expression appear in different macro expansion contexts [-Wcompound-token-split-by-macro]
                   cpu_to_le16((HostCmd_SET_SEQ_NO_BSS_INFO
                               ^
   include/linux/byteorder/generic.h:90:21: note: expanded from macro 'cpu_to_le16'
   #define cpu_to_le16 __cpu_to_le16
                       ^
   include/uapi/linux/byteorder/little_endian.h:35:51: note: expanded from macro '__cpu_to_le16'
   #define __cpu_to_le16(x) ((__force __le16)(__u16)(x))
                                                     ^
   drivers/net/wireless/marvell/mwifiex/cmdevt.c:325:16: note: '{' token is here
                   cpu_to_le16((HostCmd_SET_SEQ_NO_BSS_INFO
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/wireless/marvell/mwifiex/fw.h:515:53: note: expanded from macro 'HostCmd_SET_SEQ_NO_BSS_INFO'
   #define HostCmd_SET_SEQ_NO_BSS_INFO(seq, num, type) {   \
                                                       ^
   include/uapi/linux/byteorder/little_endian.h:35:51: note: expanded from macro '__cpu_to_le16'
   #define __cpu_to_le16(x) ((__force __le16)(__u16)(x))
                                                     ^
   drivers/net/wireless/marvell/mwifiex/cmdevt.c:325:16: warning: '}' and ')' tokens terminating statement expression appear in different macro expansion contexts [-Wcompound-token-split-by-macro]
                   cpu_to_le16((HostCmd_SET_SEQ_NO_BSS_INFO
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/wireless/marvell/mwifiex/fw.h:518:46: note: expanded from macro 'HostCmd_SET_SEQ_NO_BSS_INFO'
           (((type) & 0x000f) << 12);                  }
                                                       ^
   include/uapi/linux/byteorder/little_endian.h:35:51: note: expanded from macro '__cpu_to_le16'
   #define __cpu_to_le16(x) ((__force __le16)(__u16)(x))
                                                     ^
   drivers/net/wireless/marvell/mwifiex/cmdevt.c:327:22: note: ')' token is here
                                            priv->bss_type)));
                                                           ^
   include/linux/byteorder/generic.h:90:21: note: expanded from macro 'cpu_to_le16'
   #define cpu_to_le16 __cpu_to_le16
                       ^
   include/uapi/linux/byteorder/little_endian.h:35:51: note: expanded from macro '__cpu_to_le16'
   #define __cpu_to_le16(x) ((__force __le16)(__u16)(x))
                                                     ^
   4 warnings generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for FRAME_POINTER
   Depends on DEBUG_KERNEL && (M68K || UML || SUPERH) || ARCH_WANT_FRAME_POINTERS
   Selected by
   - LOCKDEP && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT && !MIPS && !PPC && !ARM && !S390 && !MICROBLAZE && !ARC && !X86


vim +217 drivers/net/wireless/marvell/mwifiex/cmdevt.c

5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  177  
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  178  	struct mwifiex_adapter *adapter = priv->adapter;
270e58e8898c8b drivers/net/wireless/mwifiex/cmdevt.c         Yogesh Ashok Powar 2011-05-03  179  	int ret;
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  180  	struct host_cmd_ds_command *host_cmd;
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  181  	uint16_t cmd_code;
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  182  	uint16_t cmd_size;
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  183  
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  184  	if (!adapter || !cmd_node)
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  185  		return -1;
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  186  
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  187  	host_cmd = (struct host_cmd_ds_command *) (cmd_node->cmd_skb->data);
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  188  
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  189  	/* Sanity test */
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  190  	if (host_cmd == NULL || host_cmd->size == 0) {
acebe8c10a6eab drivers/net/wireless/mwifiex/cmdevt.c         Zhaoyang Liu       2015-05-12  191  		mwifiex_dbg(adapter, ERROR,
acebe8c10a6eab drivers/net/wireless/mwifiex/cmdevt.c         Zhaoyang Liu       2015-05-12  192  			    "DNLD_CMD: host_cmd is null\t"
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  193  			    "or cmd size is 0, not sending\n");
600f5d909a54a8 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2011-04-13  194  		if (cmd_node->wait_q_enabled)
600f5d909a54a8 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2011-04-13  195  			adapter->cmd_wait_q.status = -1;
9908b07465556d drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2013-04-01  196  		mwifiex_recycle_cmd_node(adapter, cmd_node);
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  197  		return -1;
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  198  	}
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  199  
a3e240cacc93a0 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2013-03-15  200  	cmd_code = le16_to_cpu(host_cmd->command);
74f202aaae0a95 drivers/net/wireless/marvell/mwifiex/cmdevt.c Swati Kushwaha     2019-06-21  201  	cmd_node->cmd_no = cmd_code;
a3e240cacc93a0 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2013-03-15  202  	cmd_size = le16_to_cpu(host_cmd->size);
a3e240cacc93a0 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2013-03-15  203  
a3e240cacc93a0 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2013-03-15  204  	if (adapter->hw_status == MWIFIEX_HW_STATUS_RESET &&
a3e240cacc93a0 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2013-03-15  205  	    cmd_code != HostCmd_CMD_FUNC_SHUTDOWN &&
a3e240cacc93a0 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2013-03-15  206  	    cmd_code != HostCmd_CMD_FUNC_INIT) {
acebe8c10a6eab drivers/net/wireless/mwifiex/cmdevt.c         Zhaoyang Liu       2015-05-12  207  		mwifiex_dbg(adapter, ERROR,
a3e240cacc93a0 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2013-03-15  208  			    "DNLD_CMD: FW in reset state, ignore cmd %#x\n",
a3e240cacc93a0 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2013-03-15  209  			cmd_code);
9908b07465556d drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2013-04-01  210  		mwifiex_recycle_cmd_node(adapter, cmd_node);
ace273551b7c9c drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2014-02-27  211  		queue_work(adapter->workqueue, &adapter->main_work);
a3e240cacc93a0 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2013-03-15  212  		return -1;
a3e240cacc93a0 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2013-03-15  213  	}
a3e240cacc93a0 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2013-03-15  214  
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  215  	/* Set command sequence number */
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  216  	adapter->seq_num++;
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21 @217  	host_cmd->seq_num = cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
aea0701e221e46 drivers/net/wireless/mwifiex/cmdevt.c         Yogesh Ashok Powar 2012-03-13  218  					(adapter->seq_num,
aea0701e221e46 drivers/net/wireless/mwifiex/cmdevt.c         Yogesh Ashok Powar 2012-03-13  219  					 cmd_node->priv->bss_num,
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  220  					 cmd_node->priv->bss_type));
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  221  
8a7f9fd8a3e09c drivers/net/wireless/marvell/mwifiex/cmdevt.c Brian Norris       2019-06-25  222  	spin_lock_bh(&adapter->mwifiex_cmd_lock);
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  223  	adapter->curr_cmd = cmd_node;
8a7f9fd8a3e09c drivers/net/wireless/marvell/mwifiex/cmdevt.c Brian Norris       2019-06-25  224  	spin_unlock_bh(&adapter->mwifiex_cmd_lock);
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  225  
da25186fc605af drivers/net/wireless/mwifiex/cmdevt.c         Stone Piao         2012-08-22  226  	/* Adjust skb length */
da25186fc605af drivers/net/wireless/mwifiex/cmdevt.c         Stone Piao         2012-08-22  227  	if (cmd_node->cmd_skb->len > cmd_size)
da25186fc605af drivers/net/wireless/mwifiex/cmdevt.c         Stone Piao         2012-08-22  228  		/*
da25186fc605af drivers/net/wireless/mwifiex/cmdevt.c         Stone Piao         2012-08-22  229  		 * cmd_size is less than sizeof(struct host_cmd_ds_command).
da25186fc605af drivers/net/wireless/mwifiex/cmdevt.c         Stone Piao         2012-08-22  230  		 * Trim off the unused portion.
da25186fc605af drivers/net/wireless/mwifiex/cmdevt.c         Stone Piao         2012-08-22  231  		 */
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  232  		skb_trim(cmd_node->cmd_skb, cmd_size);
da25186fc605af drivers/net/wireless/mwifiex/cmdevt.c         Stone Piao         2012-08-22  233  	else if (cmd_node->cmd_skb->len < cmd_size)
da25186fc605af drivers/net/wireless/mwifiex/cmdevt.c         Stone Piao         2012-08-22  234  		/*
da25186fc605af drivers/net/wireless/mwifiex/cmdevt.c         Stone Piao         2012-08-22  235  		 * cmd_size is larger than sizeof(struct host_cmd_ds_command)
da25186fc605af drivers/net/wireless/mwifiex/cmdevt.c         Stone Piao         2012-08-22  236  		 * because we have appended custom IE TLV. Increase skb length
da25186fc605af drivers/net/wireless/mwifiex/cmdevt.c         Stone Piao         2012-08-22  237  		 * accordingly.
da25186fc605af drivers/net/wireless/mwifiex/cmdevt.c         Stone Piao         2012-08-22  238  		 */
da25186fc605af drivers/net/wireless/mwifiex/cmdevt.c         Stone Piao         2012-08-22  239  		skb_put(cmd_node->cmd_skb, cmd_size - cmd_node->cmd_skb->len);
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  240  
acebe8c10a6eab drivers/net/wireless/mwifiex/cmdevt.c         Zhaoyang Liu       2015-05-12  241  	mwifiex_dbg(adapter, CMD,
acebe8c10a6eab drivers/net/wireless/mwifiex/cmdevt.c         Zhaoyang Liu       2015-05-12  242  		    "cmd: DNLD_CMD: %#x, act %#x, len %d, seqno %#x\n",
acebe8c10a6eab drivers/net/wireless/mwifiex/cmdevt.c         Zhaoyang Liu       2015-05-12  243  		    cmd_code,
92c70a958b0b6b drivers/net/wireless/marvell/mwifiex/cmdevt.c Devidas Puranik    2017-03-09  244  		    get_unaligned_le16((u8 *)host_cmd + S_DS_GEN),
acebe8c10a6eab drivers/net/wireless/mwifiex/cmdevt.c         Zhaoyang Liu       2015-05-12  245  		    cmd_size, le16_to_cpu(host_cmd->seq_num));
868093a9df7580 drivers/net/wireless/mwifiex/cmdevt.c         Zhaoyang Liu       2015-05-12  246  	mwifiex_dbg_dump(adapter, CMD_D, "cmd buffer:", host_cmd, cmd_size);
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  247  
4daffe35436674 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2012-04-18  248  	if (adapter->iface_type == MWIFIEX_USB) {
4daffe35436674 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2012-04-18  249  		skb_push(cmd_node->cmd_skb, MWIFIEX_TYPE_LEN);
317049204cd3df drivers/net/wireless/marvell/mwifiex/cmdevt.c Himanshu Jha       2017-10-06  250  		put_unaligned_le32(MWIFIEX_USB_TYPE_CMD,
317049204cd3df drivers/net/wireless/marvell/mwifiex/cmdevt.c Himanshu Jha       2017-10-06  251  				   cmd_node->cmd_skb->data);
4daffe35436674 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2012-04-18  252  		adapter->cmd_sent = true;
4daffe35436674 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2012-04-18  253  		ret = adapter->if_ops.host_to_card(adapter,
4daffe35436674 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2012-04-18  254  						   MWIFIEX_USB_EP_CMD_EVENT,
4daffe35436674 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2012-04-18  255  						   cmd_node->cmd_skb, NULL);
4daffe35436674 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2012-04-18  256  		skb_pull(cmd_node->cmd_skb, MWIFIEX_TYPE_LEN);
4daffe35436674 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2012-04-18  257  		if (ret == -EBUSY)
4daffe35436674 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2012-04-18  258  			cmd_node->cmd_skb = NULL;
4daffe35436674 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2012-04-18  259  	} else {
f4c5d5991590c4 drivers/net/wireless/marvell/mwifiex/cmdevt.c Xinming Hu         2017-05-23  260  		skb_push(cmd_node->cmd_skb, adapter->intf_hdr_len);
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  261  		ret = adapter->if_ops.host_to_card(adapter, MWIFIEX_TYPE_CMD,
d930faee141bd0 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2011-10-11  262  						   cmd_node->cmd_skb, NULL);
f4c5d5991590c4 drivers/net/wireless/marvell/mwifiex/cmdevt.c Xinming Hu         2017-05-23  263  		skb_pull(cmd_node->cmd_skb, adapter->intf_hdr_len);
4daffe35436674 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2012-04-18  264  	}
18bf965702058f drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-04-06  265  
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  266  	if (ret == -1) {
acebe8c10a6eab drivers/net/wireless/mwifiex/cmdevt.c         Zhaoyang Liu       2015-05-12  267  		mwifiex_dbg(adapter, ERROR,
acebe8c10a6eab drivers/net/wireless/mwifiex/cmdevt.c         Zhaoyang Liu       2015-05-12  268  			    "DNLD_CMD: host to card failed\n");
4daffe35436674 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2012-04-18  269  		if (adapter->iface_type == MWIFIEX_USB)
4daffe35436674 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2012-04-18  270  			adapter->cmd_sent = false;
600f5d909a54a8 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2011-04-13  271  		if (cmd_node->wait_q_enabled)
600f5d909a54a8 drivers/net/wireless/mwifiex/cmdevt.c         Amitkumar Karwar   2011-04-13  272  			adapter->cmd_wait_q.status = -1;
9908b07465556d drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2013-04-01  273  		mwifiex_recycle_cmd_node(adapter, adapter->curr_cmd);
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  274  
8a7f9fd8a3e09c drivers/net/wireless/marvell/mwifiex/cmdevt.c Brian Norris       2019-06-25  275  		spin_lock_bh(&adapter->mwifiex_cmd_lock);
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  276  		adapter->curr_cmd = NULL;
8a7f9fd8a3e09c drivers/net/wireless/marvell/mwifiex/cmdevt.c Brian Norris       2019-06-25  277  		spin_unlock_bh(&adapter->mwifiex_cmd_lock);
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  278  
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  279  		adapter->dbg.num_cmd_host_to_card_failure++;
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  280  		return -1;
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  281  	}
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  282  
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  283  	/* Save the last command id and action to debug log */
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  284  	adapter->dbg.last_cmd_index =
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  285  			(adapter->dbg.last_cmd_index + 1) % DBG_CMD_NUM;
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  286  	adapter->dbg.last_cmd_id[adapter->dbg.last_cmd_index] = cmd_code;
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  287  	adapter->dbg.last_cmd_act[adapter->dbg.last_cmd_index] =
92c70a958b0b6b drivers/net/wireless/marvell/mwifiex/cmdevt.c Devidas Puranik    2017-03-09  288  			get_unaligned_le16((u8 *)host_cmd + S_DS_GEN);
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  289  
18d60501335756 drivers/net/wireless/marvell/mwifiex/cmdevt.c Xinming Hu         2017-12-12  290  	/* Setup the timer after transmit command, except that specific
18d60501335756 drivers/net/wireless/marvell/mwifiex/cmdevt.c Xinming Hu         2017-12-12  291  	 * command might not have command response.
18d60501335756 drivers/net/wireless/marvell/mwifiex/cmdevt.c Xinming Hu         2017-12-12  292  	 */
18d60501335756 drivers/net/wireless/marvell/mwifiex/cmdevt.c Xinming Hu         2017-12-12  293  	if (cmd_code != HostCmd_CMD_FW_DUMP_EVENT)
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  294  		mod_timer(&adapter->cmd_timer,
4587eea5b787b8 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2013-04-19  295  			  jiffies + msecs_to_jiffies(MWIFIEX_TIMER_10S));
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  296  
18d60501335756 drivers/net/wireless/marvell/mwifiex/cmdevt.c Xinming Hu         2017-12-12  297  	/* Clear BSS_NO_BITS from HostCmd */
18d60501335756 drivers/net/wireless/marvell/mwifiex/cmdevt.c Xinming Hu         2017-12-12  298  	cmd_code &= HostCmd_CMD_ID_MASK;
18d60501335756 drivers/net/wireless/marvell/mwifiex/cmdevt.c Xinming Hu         2017-12-12  299  
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  300  	return 0;
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  301  }
5e6e3a92b9a4c9 drivers/net/wireless/mwifiex/cmdevt.c         Bing Zhao          2011-03-21  302  

:::::: The code at line 217 was first introduced by commit
:::::: 5e6e3a92b9a4c9416b17f468fa5c7fa2233b8b4e wireless: mwifiex: initial commit for Marvell mwifiex driver

:::::: TO: Bing Zhao <bzhao@marvell.com>
:::::: CC: John W. Linville <linville@tuxdriver.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108252016.Vh4p0GRo-lkp%40intel.com.

--ZGiS0Q5IWpPtfppv
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ZGiS0Q5IWpPtfppv--
