Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBONTXH7QKGQEFC5DJSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BEC2E82A1
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Jan 2021 00:07:39 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id h9sf10779254pgg.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 15:07:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609456058; cv=pass;
        d=google.com; s=arc-20160816;
        b=qF7aBvU2fsTvakSHEww0N5+IrFz3R9Pgk20dGNYHrdqKGl8o9fQAEyIOLprn27IFlY
         Sg47EHH4q4SkXFbi2ZqjomhSyf9X/gDTHCmx0tUh0Cn/1YxCpjWBPCTVKMIPw4Eq+MeW
         RpSqAVyWi4pCpijH6LFBl8guNmuGbrCP8efyLp4VphdRQYBXgktOvJ7/pniRcC4S4bVU
         NZNGopmMfOkOd0H1v3sYj+q03ZWEyb+ezNAwKhDW2rthDLWRJcYP6bXsctl5tkdzGfiQ
         Cue6a23AkWHXEfqzCbetSZLxTUz9ulfe5PX++sDUacdAPaDuPimcL47Amo9H0hjJDhKh
         Fasg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ItIboB/Rgh8cIcSxhgLmkPwjc9vckkFECDaDWFWG6x0=;
        b=y3OWPTc+BZCetK5TopXfVlvBCxCAOOirsH+HUZVvWJqOcqUiMFCjtCiNL0en5uGMmq
         aWw2BqSTW8vxXstP8PNnwgUs3fifDVxycEo5FAf0xwihTpr4+yckxjo7HM8o0dGtLpjd
         joaiO+pfGchRE2QPJ4lxC+m27udWN7SV8tLMO3eadxF5oZR3tcxorw1BhaHgata73m15
         n4mytY6fClT9NbDNOgTIjm14tA1P7rVIemWlxXLEdgZ5o2cWZG1LRnBFybvhZj6nXn9A
         h8mARBJ12csOPY8omodQgaU2Y1pqphS2DNfCtKjm1YBXcpUaMQgarOVgrQWSxcDm4Ro4
         8PrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ItIboB/Rgh8cIcSxhgLmkPwjc9vckkFECDaDWFWG6x0=;
        b=ERDCD9pJYaXmAM0n24C3E1VYFa7IzfrPMCPGdZtMREWcrGiqlXsTD91gyfWUHGOpTF
         FLl0AEEeIQ8LmCfIVHIsdl9tkN01uTXaKd4U0Rgh6enxOlBqjWQ51GsGgSKVGE+E7cdd
         u6pNZEIoaxDf3NajQfO1SyjkryPWMsvntR6Hbzv4GJ47yKMOYAM0PX9dlT3SHV6931Yk
         uhO5ld+cmFg5zRJUvRN7U24O0DIMvtyuPGiNDbDSI+i4pYxmiCYjrc6rbyH+mCK4MDtP
         pGzubx2uRBPNuRdJS523cTSASbtLrwDz+o8rR4j6eD3yAqm1DZ3ncR3D0+7ytNXGeSOJ
         Nw4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ItIboB/Rgh8cIcSxhgLmkPwjc9vckkFECDaDWFWG6x0=;
        b=h8YMu/oRJtjz4TPlUBbXL7IZnLdiJMIHxpTv+XC7BMhRW6z51x3Vf2tw5R51362yPU
         gcMHbp2RkLu7rg9SuclvAqIvv3LJkdytO3IIju6pGCzMWMjDW69AbkDp+AfxuyzM3IT1
         yUt0xch08SCFqih1EBw63NXnWEUYMcD4Ij5mNijjsNaIQl5ypg/6EA30Pnv08enwzVIF
         RMyNC8piYld43mC2Xo1ZvFBuuCNmaKXsLuuvhXP9TWowrPb+hPOrjSMRCTfTEqX6YUfY
         FPe4Yl7saQnURqrjs6CTBdV8cw8zev7jUvfqWtd5MiASyB/1xhAM4T3qMceyJWg6O4L2
         lVSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dKjsC2e5hdIBsUr6xgddNqBu/+4mcbju5iKuTmrURNGDE/KIH
	ngY616GKVEW+PmffUeq0/5E=
X-Google-Smtp-Source: ABdhPJyX/Ws80vHNg4p4lULKjtO/g1cvvRbVoskErG+NuzPe1149mD5qBIh4xE97xyqu2pMzy29+ig==
X-Received: by 2002:a63:cb0e:: with SMTP id p14mr37551909pgg.408.1609456058067;
        Thu, 31 Dec 2020 15:07:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9286:: with SMTP id j6ls25441518pfa.7.gmail; Thu, 31 Dec
 2020 15:07:37 -0800 (PST)
X-Received: by 2002:a05:6a00:1623:b029:1a4:e935:87a8 with SMTP id e3-20020a056a001623b02901a4e93587a8mr35824813pfc.26.1609456057360;
        Thu, 31 Dec 2020 15:07:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609456057; cv=none;
        d=google.com; s=arc-20160816;
        b=ZpkHe0ikFXVHS3mlwjrwJtUN34i9jMRQVwGWfNPZSSlHmp6qDgP+VoI0kEaRpcfK5S
         D++Iv5OuRuHTkWNc5d0oA4kTJGvZgBL9i0dIPcT11R5zOF+QFq2CkjPsheDdQRzdb4xg
         xbhfAOnBwyzveknYaJB/eD4BNq39Y+YSNdbOStPDzCPKtx6Uz4967pNTEtTGwGvbpEUF
         iYLc8YaXq9dUaevDJ8TCUw2jfVaCr4+3XLHJ9dGBJQq9VgeVxrQFxnAEyXi9o0wAgLwi
         TiEqC6G7vlWcMxZnlQbPgf0oczUTPrxw18gLOGR6D7Eb0FAdANNMp5xsrw/w0/sGhee3
         QkUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=UtWnggIqvSU7M1ox8UIIKDUcDMbfM6gg7+HOMOu0KuQ=;
        b=g+deDuq/L4lQBd+DNjOOtALy1cbXnAiugKOEvmAaDbjqNjA1+F1VMmxR9PTdFlOGWr
         MBaOlJ+KKEx3FKoqGtace+SlUsK7GFY9TBhKbxZ5dLLp/M3Nj6jvVCw09N7q6ysJtqmC
         ZQHjC3Len7CBNhBWX/vMVSsi0SwXXx+rbFr8ghm3nAI1WRfNe7lll7T+SqCBXKl50JWL
         UhsJlYfGnoix6XyuwbfoXZVb31nyn+nZMOpsq4+GoIYIkgSW3Q7YV/3VSFrrOpf1HxpK
         8/jIqjBwC4eyjVfJE1IEQr3oD9XYw83wQ98EwyNF1gnZmp+GG2bl7toIzkJTSc5dGde1
         DWHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id b18si2841104pls.1.2020.12.31.15.07.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 31 Dec 2020 15:07:37 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: ORAxfhMZaORLp6NDn29P0g/9XFZHx5XG1ywQfldLsbzlHmKsv275tBjlfSKpomxR7Gx4lIwB/t
 7t7HqqjngFhQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9851"; a="174170466"
X-IronPort-AV: E=Sophos;i="5.78,464,1599548400"; 
   d="gz'50?scan'50,208,50";a="174170466"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Dec 2020 15:07:36 -0800
IronPort-SDR: 23ZHTvd1f8eAetsOphn5azKsKgTO5kSyIRM/kMy/mXHBw+6FI4wetEGPWNjVe6REnHetb7LmQT
 r86c66eChMbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,464,1599548400"; 
   d="gz'50?scan'50,208,50";a="348594691"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 31 Dec 2020 15:07:34 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kv72b-0005Do-Mv; Thu, 31 Dec 2020 23:07:33 +0000
Date: Fri, 1 Jan 2021 07:06:49 +0800
From: kernel test robot <lkp@intel.com>
To: Johannes Berg <johannes.berg@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>
Subject: net/wireless/pmsr.c:164:12: warning: stack frame size of 2432 bytes
 in function 'pmsr_parse_peer'
Message-ID: <202101010744.QmQScg5Z-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YZ5djTAD1cGYuMQK"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   f6e1ea19649216156576aeafa784e3b4cee45549
commit: 44f3625bc61653ea3bde9960298faf2f5518fda5 netlink: export policy in extended ACK
date:   3 months ago
config: powerpc-randconfig-r036-20210101 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 6b316febb4388764789677f81f03aff373ec35b2)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=44f3625bc61653ea3bde9960298faf2f5518fda5
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 44f3625bc61653ea3bde9960298faf2f5518fda5
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:219:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/wireless/pmsr.c:7:
   In file included from include/net/cfg80211.h:13:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:221:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/wireless/pmsr.c:7:
   In file included from include/net/cfg80211.h:13:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:223:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/wireless/pmsr.c:7:
   In file included from include/net/cfg80211.h:13:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:225:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/wireless/pmsr.c:7:
   In file included from include/net/cfg80211.h:13:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:227:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> net/wireless/pmsr.c:164:12: warning: stack frame size of 2432 bytes in function 'pmsr_parse_peer' [-Wframe-larger-than=]
   static int pmsr_parse_peer(struct cfg80211_registered_device *rdev,
              ^
   13 warnings generated.


vim +/pmsr_parse_peer +164 net/wireless/pmsr.c

9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  163  
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10 @164  static int pmsr_parse_peer(struct cfg80211_registered_device *rdev,
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  165  			   struct nlattr *peer,
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  166  			   struct cfg80211_pmsr_request_peer *out,
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  167  			   struct genl_info *info)
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  168  {
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  169  	struct nlattr *tb[NL80211_PMSR_PEER_ATTR_MAX + 1];
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  170  	struct nlattr *req[NL80211_PMSR_REQ_ATTR_MAX + 1];
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  171  	struct nlattr *treq;
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  172  	int err, rem;
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  173  
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  174  	/* no validation needed - was already done via nested policy */
8cb081746c031fb Johannes Berg 2019-04-26  175  	nla_parse_nested_deprecated(tb, NL80211_PMSR_PEER_ATTR_MAX, peer,
8cb081746c031fb Johannes Berg 2019-04-26  176  				    NULL, NULL);
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  177  
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  178  	if (!tb[NL80211_PMSR_PEER_ATTR_ADDR] ||
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  179  	    !tb[NL80211_PMSR_PEER_ATTR_CHAN] ||
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  180  	    !tb[NL80211_PMSR_PEER_ATTR_REQ]) {
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  181  		NL_SET_ERR_MSG_ATTR(info->extack, peer,
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  182  				    "insufficient peer data");
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  183  		return -EINVAL;
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  184  	}
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  185  
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  186  	memcpy(out->addr, nla_data(tb[NL80211_PMSR_PEER_ATTR_ADDR]), ETH_ALEN);
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  187  
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  188  	/* reuse info->attrs */
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  189  	memset(info->attrs, 0, sizeof(*info->attrs) * (NL80211_ATTR_MAX + 1));
8cb081746c031fb Johannes Berg 2019-04-26  190  	err = nla_parse_nested_deprecated(info->attrs, NL80211_ATTR_MAX,
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  191  					  tb[NL80211_PMSR_PEER_ATTR_CHAN],
d15da2a2e813679 Johannes Berg 2020-04-30  192  					  NULL, info->extack);
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  193  	if (err)
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  194  		return err;
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  195  
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  196  	err = nl80211_parse_chandef(rdev, info, &out->chandef);
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  197  	if (err)
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  198  		return err;
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  199  
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  200  	/* no validation needed - was already done via nested policy */
8cb081746c031fb Johannes Berg 2019-04-26  201  	nla_parse_nested_deprecated(req, NL80211_PMSR_REQ_ATTR_MAX,
8cb081746c031fb Johannes Berg 2019-04-26  202  				    tb[NL80211_PMSR_PEER_ATTR_REQ], NULL,
8cb081746c031fb Johannes Berg 2019-04-26  203  				    NULL);
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  204  
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  205  	if (!req[NL80211_PMSR_REQ_ATTR_DATA]) {
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  206  		NL_SET_ERR_MSG_ATTR(info->extack,
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  207  				    tb[NL80211_PMSR_PEER_ATTR_REQ],
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  208  				    "missing request type/data");
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  209  		return -EINVAL;
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  210  	}
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  211  
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  212  	if (req[NL80211_PMSR_REQ_ATTR_GET_AP_TSF])
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  213  		out->report_ap_tsf = true;
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  214  
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  215  	if (out->report_ap_tsf && !rdev->wiphy.pmsr_capa->report_ap_tsf) {
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  216  		NL_SET_ERR_MSG_ATTR(info->extack,
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  217  				    req[NL80211_PMSR_REQ_ATTR_GET_AP_TSF],
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  218  				    "reporting AP TSF is not supported");
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  219  		return -EINVAL;
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  220  	}
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  221  
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  222  	nla_for_each_nested(treq, req[NL80211_PMSR_REQ_ATTR_DATA], rem) {
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  223  		switch (nla_type(treq)) {
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  224  		case NL80211_PMSR_TYPE_FTM:
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  225  			err = pmsr_parse_ftm(rdev, treq, out, info);
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  226  			break;
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  227  		default:
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  228  			NL_SET_ERR_MSG_ATTR(info->extack, treq,
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  229  					    "unsupported measurement type");
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  230  			err = -EINVAL;
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  231  		}
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  232  	}
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  233  
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  234  	if (err)
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  235  		return err;
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  236  
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  237  	return 0;
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  238  }
9bb7e0f24e7e7d0 Johannes Berg 2018-09-10  239  

:::::: The code at line 164 was first introduced by commit
:::::: 9bb7e0f24e7e7d00daa1219b14539e2e602649b2 cfg80211: add peer measurement with FTM initiator API

:::::: TO: Johannes Berg <johannes.berg@intel.com>
:::::: CC: Johannes Berg <johannes.berg@intel.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101010744.QmQScg5Z-lkp%40intel.com.

--YZ5djTAD1cGYuMQK
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICGxQ7l8AAy5jb25maWcAlFxfd9u4jn+fT+HTebn7MJ38adPM3ZMHSqJsjiVRISnHyQuP
6zid7KRx1nF6p99+AUqySAlyu/PQiQgQIkEQ+AGk/Osvv07Y2377dbV/XK+enr5PvmyeN7vV
fnM/eXh82vz3JJGTQpoJT4R5D8zZ4/PbP7+/bP+z2b2sJx/f//H+5Lfd+nIy3+yeN0+TePv8
8PjlDQQ8bp9/+fWXWBapmNo4tguutJCFNXxprt6tn1bPXybfNrtX4Jucnr0/eX8y+deXx/2/
f/8d/v36uNttd78/PX37al922//ZrPeTi8/npxcPm8+fP5xfXn66+PDp8o+LT58eLk8fTs5X
Dw/nn8436/OPn8/+61371mn32quTtjFLhm3AJ7SNM1ZMr757jNCYZUnX5DgO3U/PTuA/T8aM
act0bqfSSK9TSLCyMmVlSLooMlFwjyQLbVQVG6l01yrUtb2Rat61RJXIEiNybg2LMm61VN4L
zExxBpMpUgn/AIvGrrA4v06mbrGfJq+b/dtLt1yRknNeWFgtnZfeiwthLC8WlilQj8iFuTo/
AymH0ealgLcbrs3k8XXyvN2j4IM+ZcyyVnfv3nX9fIJllZFEZzdDq1lmsGvTOGMLbudcFTyz
0zvhjdSnZHc5G6N4yxTKOQzOE+IPa0inRp3wlFWZcYrzxt02z6Q2Bcv51bt/PW+fN53h6hvm
TUbf6oUoY39UpdRiafPrileceO8NM/HMOqrfK1ZSa5vzXKpby4xh8YycU6V5JiJCLqvAC/R0
yRS8yhFgnLCQWUfvtTqLA+OdvL59fv3+ut987SxuyguuROxsW8/kTSekT7EZX/CMpoviTx4b
tC+SHM98G8GWROZMFGGbFnnYkEoV86TZRsJ3EbpkSnNkol+Y8Kiaptqtweb5frJ96M2/38nt
4cVAkS05hq0yh+kXRhPEXGpblQkzvFW2efwKHpbStxHxHPY3B436C3pnS5AlExFYWyGRIpKM
k+biyIS1zMR0ZhXXblYq0MJgYJ5pK87z0oDUgn5dy7CQWVUYpm6JVzc83czaTrGEPoPm2mKc
yuKy+t2sXv+e7GGIkxUM93W/2r9OVuv19u15//j8padE6GBZ7OTWtnEY6EIo0yPbghmxoOdF
scPaErND03KWEry3nZIWwcPB2yRCY3BI/HX4idk6rai4mmjCikB9FmhDPdeNh7nBo+VLsC0q
MOhAgpPZa4KIpZ2MxtYJ0qCpSjjVbhSLewQUrA1sOIxgue88kFJw2PuaT+MoE9r4yguVEkaq
SBRnwR4S8/oPcunFfAauBfaIT3WK1+u/NvdvT5vd5GGz2r/tNq+uuRkBQe2hClGY07NLD1FM
laxK7Y8M4kFMDyvK5k0HYtVqgtXxjHsIKWVC2ZDShZ9U24gVyY1IDB14YAN4fcdfWopE9+dk
VeLH+aYxBWu642rQnvCFiPmgGfYD7CkTjLqmRGU6Ph7n572wIOP5gcSMP6oZj+elhFVBxwiw
zhuCm7PDP65nEP9BcwmHvRWDc0/GKXZxFuw6njHKO+K6ggIcLFGeOPfMchCpZQUxz4MsKukh
LGiIoCF8XzKOk4C2pIKE6yMDudndh57UO20oa4ikRI+OfwdwWoJHz8Udx8iNAQ3+l7MiDrFQ
j03DH1QMQ4gD+zlBBB1L8Cm4oJYj+kVf7rxFh2SPMVKeDwK9ycAzxtwFodo7ebi+TLuH2n8G
OxfcugCwpijRU25y8Hi2AxOHfrXZNASibzqDXZoF6qoBZx3IR6IyGPWcdiMV7V54loKmFB0N
IwbAKq3o8VWQRHo+Bx/BJ3iqKqUPn7SYFixLPUt3E/EbHKhKA3elZ+AZybExQYF9IW2lehCA
JQsB82hUTWsO3hIxpQS5jHPsdpt73q5tsQFCPLQ6veHGR5wRWJIdwEo0ndyZqgJmFXKDT8kk
S0JuhyR8vTn0j4Gmm4XFl0QsnuvjbPq2iN36B5td82vaWPKIJwkZFNwexW1uD9C4M8v49OTD
IKo2xYpys3vY7r6untebCf+2eQbgwyCwxgh9AJ7WeLCR04kPh9dE4p+U2A55kdfCajzK/exe
Z1V0CChBbs0MJOb0FtMZo/I1lBWYdCZpNhbByqgpb8Fi2AmoGEcR/1gFrkHmY0IObDOmEsBq
fqyaVWmawUIxeA1YCCT9EP+CWGZ4XntNMEaRipiFqVypZCqyAOw6f+niaZBehGWNQ/8yvvjQ
4vxyt11vXl+3O0hCXl62u32w2mWMwWV+ru3FB2KuBzq3TmI/EysD8Ms/fjw5wUbasC8I6uA9
nqcCdk8nwIEteRy2paUHcFOd4f5xRhzgW5TNex2B9/DKTiGzW1RFJAztEDP0NvHIDPIcULSE
3T8LX9VoEMheO/C68BRYYE4BUBSRSKki3kS3ZvGHK3vYdYmW52ceVIBkK0KVFolgnlrcRLvH
YIDOk+U5A7xZIMw34NPYEutgRxhEcXV6STO0G7sVdPrpJ/hQ3mng/jQ3iIvR+2IGqbgHOl0G
05KcH7WpULBJ41lVeFXEQmFmqa8+nh4mA2lRPK9TJl2VZVhWdM3QI83YVA/pWKsAaDoktNtk
dsPFdGYCo+hZSBMqCqlL7tE4U9ltAzm8HqxoSiiyMqDwrjTrdDcoqA3bHQKXuTDgyBjk186z
+IERB1Ul0dSeXsCm7lW63Ip1bW3eXYkcXF4/FoqIqxoXIrbSIsr6LI3esKajZMR1OApAFnWU
gGA/HaUJFuurM5qWHKMtgHYS7DR24+nhThYQK/x8q5zWpWdXndNXH3zfg0G+4FgUKPOD/31a
7TFUUu5Xw8K0tTMK/oFISLEo73XNwX80HtKLnfXrG7ujUBbE42nFtWcLvGQlJA9MMazLBL4Q
3iPTOvnAdAmwpiio3AEZwXUBTF+CWQkfoOZlWGHD5xqUEnIcMddT5dWoJulu879vm+f198nr
evVUl6W6GcNGh1B8TUIVuncrWNw/bSb3u8dvmx00HV6Hzd5xDsgXiW+xbYudyoXNGCA1NULM
eVGNkAyXI5QZRJgG09fWI2+4KuPD0CaJG3FQHBnn8TVRT8xr8RXQaRRsxyoTkwodmLKPMbcv
eBIWYMnZnT09OSEDKZDOPp5QGPfOnodWXUuhea/Ou3Op2qnNFBYrPQNkZgaxoMp6GCtsdwlY
YKcheXZjq0LkZcZhVQ0JziElxtoWRBKAtTGeS/TcHC+c32hOJWbSlJlfS6F5FPzlpzdzvvTj
g3uEIDfwqZiC1MSyUlMEoLde6YE7UMqiMPX1mgdHW97RCsAbm1QhUulK5FVYFgn8PM94bNrJ
YT6W9UYNAdYAuVFDP0y4MwiKDGGuCyKzaspNFqX+OWKW8SnL2ihnFyyr+NXJPx/vN6v7z5vN
w0n9n+/PPswdgO8FHIfp9UykEHYPEaU5dmyaDwHBAfw+rztiQfzjIotU6D5Ozw+uIE/cuWhX
juJL8LzWMEhZAPn7h4leYKXrFHRKr3mMaOBYbtfuZLeVo7dXb2uHgSkE3lkU++jU73gAXnjM
C0OOm9NEH9KAYmWaAryDhVmfhP915u7OIEGGOsaGIB6Sqo5xwABLmYnIKtixwSEohsCKZeJu
oNfgFHm1W//1uN+ssRL92/3mBaYMKfBQT/VmiYPqZ70rqTaeeUUwB3YBUPV3vKyTQ97j9JoP
k/kTNimEKEgbxmoJPIXkU2B6XhUw62mBddk45rpf0ag0d/V+IwobhYe29UBhOgjgYRT9Y9N5
H9TVrYobkiBLur0Rg0f1aa946OhpVbgDUcuVkoo6IO0OcV3/GYCqIVRHGOOCcb2pCa8KO9iI
9LatHPfE6xwdW3PG358DAljLiqTONhpNW+bjpZpP8+tek1eWsUXe7+CoITzu2rGc1bwR3Tal
kM5SgmTQQuCYQec6JGDJgyTj4dEPWGq/Ke6GYQqGAPOxmqUc3F+5jGf9mHjD2RxjE8eCH4uv
K6H6Ym4YmLBw/hmPqdu7FwRTk13+FK/MEo+f0lvjTDEAB9mT44C/8QqQs7Z5UMxxZDAiLBbc
9ZqJw9Efc6D59nfksaNTxwF22gZWHmMVyls5mVQZbDbc9li8xjIrIZ8vIReELecuE6CBEdvF
dXeltGD1Ox0GFYRj5QevskD09soGY0J8ll5VwTEWC0hywAH5J24Z5n9Y471hyj+KQ9vQYqor
UF7hX5yq39GQWc8FNdTzMxiDWx1CYa4CZWSTdPp3h+Z+KXV4gjqN5eK3z6vXzf3k7zqQv+y2
D49PwUk+Mg2C7+HdjtpEEts7S+nTSARxdAz9ouUPougBrQJkxIMPPyS44r/OcYinHmivzZbK
LBuDdmfuGXh+/9gxQt36j3PIJbQAq78OU+X2ODHSU7IRIMWwHSHnVAlze4RkzenJkIwIMTio
ccfUNUSsvReVRCPTTWT6/aDJ5tcj/HUtxIfMfis9EI0VpJJR2ALJ9Q0/gOqxui37x4ckg02b
45SBZZer3f4RjWJivr9sPHwFSjDC9WXJAg8+/YANEKvoOEYJNoaUpWDjdM61XPqj7zOImD7v
6vOxhKzy9NlcOm98zNfnUELHIhySWHZ04h1Sp6QqcvBRAaGTCNBZHJWZs5iSmetEalpmpBO8
nDMfw6S5KGAeuooIsVpmMCBtl5cX1FshO1+Ci+adfK8+m+T0eJDgjJw8VhZ0pyozakzbXZZV
FT/gmDOVsx/w8HRkBfwD7sXF5Q+YPJdBcbXFnd4mC7zjoIKMOzi/dlhEyEFzc0Olvgcpu9s7
3tYFLiHrkg3eJGiuA3euvCPPbyPS0bX0KL32887wfQdL18VpYC2199ElJDRVEQaAsCjNDECX
2Kr85moYMPNcyJuIIECmayVgy4yVJQI0liQKwb4ug9Slu7XjdMX/2azf9qvPTxt3J33ijlj3
ntYiUaS5CTPFA6wZkuAhTDQbJh0rUYYhoibk4Fmo2z8gpMkdDnoeG6ubSL75ut19n+Sr59WX
zVcyNz5aDWoLQeCZIR33B9pVgWoaVTavO4fSYEUSV1iDfv6Vo4O4BfyDSLFfXKqzS6aNnfqg
wa30nPPSnfSHBqTLDPBdaeqdU1beKYFbrLjvU1x6pDgaHBgL6Rmnqn9IjDgRzcqa/jleBAAx
vAQ019RJdntw4+YNzteJu/pw8sfFoWDjn6jNPZXGkI4VMYMN6BszZDxNccBzPvQ1qTtkpCml
lNSy3kVVAELuHP6TlL222Xx9fNYUJ7x6YNIez3u5mX8DAmeLhSoqXE/xjhygllnOFJXwlIbX
GRULDmvHd0SnazPY1NAGfgp8KviOsBqp5xEWB3nRFhrcvis2+/9sd38D3B5uOLC7OQ8PeFwL
hExG2RyG1DDAgt/Iey3Y1xdpMkpny1R5HfEJMoip9Du6xv4Vr5Dqircp+M9xFsAOFo+pYuo2
oOOodxIfvNrVJbXpYblgxF5BH0/Z5vx20OCJb9fJv7AAD63GWslJ6W5Rcj9t9Rp77CIwElHW
N+NipoN1hfYWD1slIXciw2dpy6IMhMGzTWZx2ZOFzXgISN1NaMiKqaAXqkOUYuSMwBGnCNZ4
Xi0JqTWHNVVR56n+aHI3oxE0BGgekjvBaUBei10YMUpNJX13paF1g6KsBBentpJuvNjENa0H
UY+nX473qYQGCmLHdtsvLrHuND2sPyH4wBNXkV/0aaNBS796t377/Lh+F0rPk49aUO4CFHsR
LtXiorE+vGKX0ipApvp6Ku49m7BkVFUXoNsjxGNaviDUHI4hF+XFOFVkdBBzxJ49+SQtzEAl
0GYvFLUwjlxAAhM7sGJuSz7oXRvEkXmgPyiz5vs4ehvUjOPbqB4mn17Y7OZH73NsEArjcRZV
ZqSgFtqUJvbckHscGBOsIX4IiAVXDLsjLqM0JX65qLVIQ9fs+gJgcjU38PR5GZRDgeNQwfVf
WTeSe6k+5t7uNhhyAf/uN7vBJ6GEKHgtpgH0+BueJuYTwwMYmgsANJESiX/RZtDXZjKIygXe
Py4Kh3aod6fYYfBRSNMMMhO+6IkbmtdgLMuap4UmS5crvE7W26+fH58395OvW8zRXmlFLQGV
9hY6kLJf7b5s/Mwo6FqflzZaOMJQpH1FEUxgj7kellvbkUDSA+nmsWngJ4qIrHFD/0BjDXcN
YXz4eNTUgvioOfXpERAWuhdJF9rtszHu/scedSMsalNBP2vy+3KhJ/vd6vkVr4RgvXe/XW+f
Jk/b1f3k8+pp9bxGONrdfgrE4YGhtGaAOQ6kKhnz2h3PqOv3eMLYQTDo2JSHmgXO6bWtIvhL
W/dQI4AKSDdK9VWWxcPJ3WRU3lLTUtmXIBfpUEQWHZGBxMFAklm/Rc+GcvORKFt34CMB2lGL
68E2carUs0CbvSF0NnXp9cmP9MnrPqJI+DI0xNXLy9Pj2m2LyV+bp5fucpco//1TvjptoDfu
DepKNDo/sJjlrWMIvGVSlW2jLw+dKODjccdL9FEcz6/HxgBaAB5RHjysvw5Aqf3JaMecFVO/
xFG3KnYT1NGO6KtR6LeL/79KaZQVKHWUpdEv5bEClV0MYljYCFivp7+QUDth7FN/rThg6J/3
Ns1NwKgHQkhttO4t1kWjeLIie1zBh2KPAwMoh0f9+TQ0IOAvHVR+XuqRjB2in4BcMCqkeCyX
J2f2fKQ7A0xB5Qs+S5g8epSRDDLgoMzBY6h/voGad1PAoaSWczMSrT0mbUpS7iJjxZgyFKRC
ZXb7o1klP1Q5Dt6akdconggFNviD8RdsTADsmeN9W+TUUsrhlrBJHB8iKv49iWORvI77iaaL
Rbaz4cEMyXdO7pzRt3Vjae66zVbrv3t3ilvxxAB88T0B3rwbJNE04JPFm/Qy+jMuwg+OHKlJ
u+vChculMMmmjqTG2PWMnf6U3P5PDfj8vff3JkC8riHX1yK6S6SJRjhHLhzSxs7bTO+HP/DZ
5mDHbBQCOhZ3eizH6aOlEmboC5LZGVnoIjY7sXfENIf1L6Qs6Tp+w5aHDg8dBvrQU+p8PuFx
EZZt65bxyl6WeVUdePA+BGKGZfNQ1sKyssw4Eui66hllixkrgw/uyhmYFn1j+CKTNyUjf96B
c47T/hign67VFlnzh/skWODdazZSjOg61ViD5ALrrZlGi3xj3+MnsXfKlxQav2qX2aIXNMGm
mLuLQB3Bl7xY6BtRXwzv1r4p9I6NyKXzIxX6vMy8YI/DxxY71TJsLUKYP9OU1bjZu+H1s33M
pM9BdxpzVCASna+VCTSBz1bnlCYdyVRF/xVFrKk6WvPrAq68o/yjZo9Q13yScNJqaaNK39rw
C+no+vBpRXNWMtlvXsNfO3HvmpvgTp2ruipZWkAzov6c8xAOBoJ6BP80ppU3Y7liiZtPc8Vl
/fdmP1Gr+8ftIYf2yhsMtqGvMXy2CcsZfo468jsrMGYlaSenpA76uDGw5XvY68/NbO433x7X
7QciQXkjKq853uqk/Bu7xU+a8MZpmizDvXGgzBKq5n/Lcl+pRwdzsAH/Y0Z4aHIYryHyT6yw
Ydpj+PP0j/M/wiahZVcKgIZJUr+9+/TGY17EIdhzbcuY9HdI620ubIpZFmP+i1VwMmogU5rx
JfGqqeq9KpRsxwcSx58+nfwfZ9+15DayLPgrjPtwYyZ2dQeGAMGH8wDCkFDDCQBN6wXB06Kk
jmkX3a09M/v1m1kFUyaLPbEPMsxMlDeZWWm0piAQBoDy4ZjxdR52GGpCGbY0w3/l2AKIKK60
omi1OWw/h+jvQwKxaTSCblNbpWqwIj4JzPePhUah3dyJaZ/WuMw0o2iVxPSzJXLShqgPiIkp
BSry9m3KggfK1RB+giK6TfLU6LUD+DQJuz17c1MYMO7m8fDr8v78/P5T3/dzEbsoO8Af4TSF
tjaHXAZ0N/uwkeIHGQufTjcQgk+NzACOMJPEP+OZqT+ILG1Lfm/iOJvTjWTgn/Y34mHRdk0S
FoOd5Qw+ZmiKLjpIHNHIWzazYaC6ET1konSLrIfAOHPmxmauVmj+otPiCk3yCu0vjmFTwkJu
CaIoQYeEIYhAX5V7ightWaHlLEIIvgon21ji3yZCNPke3GwYEb5qU8t0+oB7KE20IHgK7ktC
/fAjyfN9HsIFkElx3SQiNDU/YaS1rCHbN4o19dVGzfHotNFq4lD31J7QR77vZH5REq5GWN9E
aDODy4R81hLIxlgTMC481tXz42Xxn/vXy8Pl7W3cDAv0VAXY4rzAqKSLu+en99fnh8X54cfz
6/37TyEa2VR2kYihBiYwnixkk82uxmKR7WgZo5yccjHMv/VaSW0XokHMjnm7Md8Pa95EGAHg
b+nnUCoPejhZ+jfpTSbyb/z32EMZmJVSuNEBuq0zydAEObk1GecrzESrOvilvoAw2PQcJgL3
rSAeREm967kt+Lx+Bxg+hXfdrVm5MRHiRhQFDVLpKRww8APkhG3WhbkMLNmJLehRIzzItRug
vJxfF+n95QGjuDw+/noa1ei/wRe/Dye3+OAG5UgRJBGQxrUG6DNHaWZdeq5LgAZKqamIcHq8
UQxaYWgFCg8ZfkyPUV+eamoUBrD6oVy2mx6b0tNpJhb/H43a2Jq6DdGJWJYrslRSJVx5K48x
loVsdAdSEDtYpQ2fhlle0WsGOPeuqnL9lZk7BGJApM9MX8pVZQbOl3uXyUNaR7RdTR1FYaM/
njMvkPu7oexFpbuP77m7yy7Ja4NZGGzErqjJAw1OnzIO0X1HamPDy0yzpmDm4iyIoda29P71
8T9nOIvxEVN8fkqPPcaKEhmCCcQsCmMoUQplhpfjWJtwMc5fMfc83keqUAE9OUhIUz1RooGL
alwwrVO1RxPXk+fVkWmBJBvfaXwZn8yCZhkmYGCkG9IYgKORwRkK6VV/diGSEIsIyLw8afRh
n8OPcJPlWZeJrxzANkjmnfy3fOwMsLYWfScHIBpx61+LoW5HmCuaS6HsvYNZZVOeypogRKZJ
GfF7NCGnxLABJq/r+cSdb+BdhkoNsjjxk+kmquAgiUZ1xbQHqoiM8DWOeUkaqBRdPCsrRleB
l/Prm2zW36FT4Yr5Gsg8CCBERwRDiDigqlKdQEDDgLOIJGMNBIo/fqBZOTfM/mTLNUhFMNdn
FvjA8LStf4GewVWpvuJofhTj4LAx28N/FwU3eWGh0jo0mXjgl0V+/lsbxU1+A/tK6aFiaJ52
0l2v/uobQdmRDfhZB5TGWAB1drZpLF3EbaFSyjNW1ebpVO28BdTkkAJ7iKsXxxXWhMUfTVX8
kT6c334u7n7ev+gCKVtRaSYP0OckTiLlEEE4hjUhwPA9CwZUMQ80fcECuqyu9AAJNnCL3KLR
t2L5PuJzAW8cJSTcJlWRdGSYZyTBE2gTljc9Cyvb23JPFKxzFbvURyGzCZij9kcxAta6gCba
OVx6V4YrLICLifXK4MIOdei+y3Jlk4eFAqgUQLhpk1IOYGxeTtxd5fzyglraURT7/vzKqc53
GGFNOoI77kgMvcRRxXce00mFHhqFviYG8GDibxzOkayiLWcZSR5iXCbyGPqoS1wQvTx8/4SC
5plZ5EGZV9S+bDPnSn1Sg7WpgT8qDF2su6rD4BwoEorOJgMW7vh2CBZgO4FcPzv/nKLTWbb4
/u3PT9XTpwj7qLGtUiFxFW3pd+OPx4OLSsBayucQQhQdENsuZYIYbRdxMI/+eNsfm6yjnmVF
0jkeOFnStX050jgnPAG35glkVEkEQs8R3ycKyUbWQCD7N/D9eeypTosfb+R8DPzIP//nD7gx
zw8Plwc2wovvfLdyPciDdvazAuMEA5cQzeSIPu4IHAsTOYaroZBZSkuEE1Fxyihhc8IPSgcV
LCip9TIj4OLLyLQQGEkIWyOcIvgX92936tpmZPgXiObXu4COslWJmSJowRbXOCs9r+O4Wfw3
/9dZ1FGxeOTOTOSVzMjkvn9hGVnG63eq4uOC5WbvN7SAibjdLQhICms88uKdGD5HMqQEVnNf
Zp0hjwtg0XOwk4KaAJB7lZGom2rzWQLEt2VYZFIDRl9QCSaJGxUas4Hcd0C+SHRk5AhUB0kw
7mh6K1cMEshsArJLmkRMB8EDY2BQylGUR2Zs0InOkgIH0S8KPEiBrkY6FMmiVY19EaqcjwzE
3RXCbqfA03ADp12rQmXt0IGlAUKTO3oFiy2ZNoyuyAJmoa2ats+z1s0PliO+CcSe4536uBaj
GglAVWEF8nNxi3NJGTtE7dp12qUlMFqw3/OqxVcZnG18jBKqqeN2HVhOKL7xZ23urC3LVSGO
8Fw29qcDjBS7c0Rsdrby9DdiWJ1ri3qe3RWR73oCWxm3th9IDGJLXy0nDGV86ts4TeTUPoca
45jSWlBHXXjcPzqp8UVbsyXn8D7sHIGzHYAY+i261cBFePKDlafB12508jUocM19sN7VSXvS
cEliW9ZSPNiUZvIMNZe/zm+L7Ont/fXXI4uX/fbz/ApMxmw6/wBMx+IbrNH7F/yvGOLx/+Nr
annLOpEQLfZCZLzrOWvR0ztcv3Biwbn8enlg6dGIwKWHqjYqIq4VMQ1dtKvEEZN2pqRkzGLZ
ZDbW7RYwWMvIp2lLg0VyKSphUzdhFmNSKCkWeSQmk2HfSEFfGWRWmQqWdgBnCpVU9xBh7Roa
tHj/++Wy+A3m58//vXg/v1z+9yKKP8Eq+V14YR3ivrTyC/qu4VDqipqQW/KTiHJ6YG2eTh6l
jxGL0KfElmeYvNpuafMEhsZ3/D7EUPfjUmLd78b1+aZMSVtn1CTAGU+CM/Y3hWkxpdwAl1uM
mDzbwD/GRje18O0oBCjt1sbhyN6oTGWKThYDoG/iMNKhuxp4Ya3VMcYdpU/FER/m+5CWX4id
ILyId7QXI2mmNdiyq2kLuggOQyaFUd8AEsNDibwvwuphe0mloGLboS0wq6pGNTd5uU/XHo6F
TjB2CR8vuwojlTK9s/hcn5VxGso8OH/TU41BZj5D4kP6eiPbUI4wg2lF9vTy6914Po2PlnPP
EGAyDuHINEW2ULZC4Bg0dpNeJzmYR7m4UZQRHFeEGM8GcVrLUWf5gLmy7jGpw/ezxDYNX1cw
j4pNk4zBNy/SyVshayNgpsv+9C/bcpbXaW7/tfIDmeRzdUu2IjkoTKqGN0+ZWYvAv71JbjeV
8rRFDYKx79DoVo5WPEL6EKRX0cB+RrgxBY0zAhpVmyYk4NvUkRbwjGgMDhcSRU/6q88ke4y3
W4gs84RjIRxCOe/UhGzhcsfdSb5bTlRdEUdUySyyrhHRO2I+hAl5xLj7YnKOCYOh7HPFkWNu
KUbxqRoqxYhMs5HS0Mw4NEpLqGq7YxbDDwLzdZeUu31ItidsPcu2r88c7hBT1OaJKG2z0N9c
WdDMw8hwJHOCah/t+D4173k4vdUjKgjqIvCtU1+VUmANAWtChvHKXp5oqMzxDpiuSPI+CmvW
VhW7KULbs4iTxD1ZwPN2HRkMbTxLT6uV71l0Ozl27QJjW3eZ1ixAB2vHM3xbhMGSahZqmvoN
SBy0v99MEyeYrKtRC2a4Q8YPCvWAO3Wf11fmukm2GCC9aoYeGRvQ1a3vOXbQ18eGD6E2J6fa
gfmtkxsV0x3zpeVa5k9HgrETEnKvGAUN12SUBt5qqfe4PhbEYBJErLIrNGxYmwqzdiKvXcVX
S4zDteU5fOY/IPNdnUwiOhaBa+NO0TfEKXepfcLA1EbJvrSOv9bGNCpC17KItTggDJY4Q5lx
EtYYLT2H/23CRi8lbg4OHgR8TZm5IEbneyOd2kqOXpnQDUsmU5uXVdvVIMPa6nZsimypaLIY
SLY2QEhbSBZgDJZaLtEfhnLiQVRXikll88MB5piKSV1LLcBd6gV4nsb07M6v35iJSPZHtVBF
tkTyvSDUhwoF+9lngbV0VCCIZHWrQSXLfQ4aFEenuu2JDwbtBYEBUKGm9uKfNBEiKcmN4+uh
Zcp3bDPTH+6Vfm/DIlHVqCOsL1vPC2ibi5EkV1yTBsGOmptZ30LIF5xb/Xl+Pd+h6zBhS9J1
1BmC3QlzHtBWNCTOYDP0PFtio0DxUWPM/jlvZYZheYqYqQl9qiERF7zo4F4inaig4YA2S7Uq
WULwuDI5jmKjMLxqlVJJTgG/0dojVrE7mtPCwXdcVy9ap90omRUnibEJJVJ8NNPNrMZaw3LL
8qnyxDmyIA1/aoPWNb/lUzhRjzDtTXl0etDWi9hC7HffNfu2Y9HAuNWZLjrB2a8LudLd4mBG
I5Cb8FVImkAnIh7FRSRLtneQiyr2p1HjVPx6eL9/ebj8BT3AdrC3YEJ7iZ+FzYbvaygUxBVg
x+klw2tgpIZWcTRvhgLOu2jpWr7aSUTVUbj2lvaVMjnFX9THwHhd+bDIT1GdS+mvr46MXP5g
a4jGeIY64GLbT2F9sLRwNFF/k6acxfiTAlOOQOC/KGAoNlkpeKpsOgrR4G2e3HnxsSzVi3//
mi3rf3t8fnt/+Htxefz35du3y7fFHwPVp+enT2gU8bu6OiLcJVfmPE7QkYJZkKoaMgWtuefR
ZNTLMJIkRXKg7h3EyY/MI6Tnb37cK0bkJpDgJin4yhCXjOx3g6AKO2UIHgZomKmpwUai5sY9
GZFtVnSJIWYYoPnNrz///AVn09P5Aef5D1iFMMXnb+cXdmBNShpGWb3/5Ct9IBNWgzrVaZuR
h6FxrUlbAWdXHk4GGt6GZAy3hqXXC2JwExiHhJMY31yEU3eqUrRWjdCVACCznd18TR0FBK13
rinPXNmWdtfKP6QjnvOXMNCyMccMfrjHRy0pdxg+RsB5T1Rcixka4IeeRLbsakRoCwhhQ136
JYUlRTnLhnMzXrQ6ath0U3E/WDKD9+dX7TCquxoqe777U0UkTyxqcr27BVZ4gfpVU4i6xfsz
NP6ygNUMK/0bMyuF5c9Kffsf8YFQr0x4aM3KqGuoBwvsjJS0YACweMf4LD9ETxESZVapcu6M
n2TNFzQmmRF8xaruN+yIYolPDe0RTJ1EKCpPXGu+6rmhyOP55QXOc3ZSE/ubfblank7Mxpvm
vOtJljA1aDDMURoUH5UQCPzw7fAfy6bS1Ym9Iw98TtAY7h2G3eXHWGlIXm2z6KCN1ybw29VJ
hdZRcDqp0DYsQi92YKFUm72KyyqN/LaNRHmZAfmRrQDDIu7TId6BHAeZmrjpCmfQy18vsDWo
CQ3jGuQogyDFCUpaz8kH+AiDTz15CevMolafo40mh8rGO1xYRN7NPWmTO8ANJiIzyUptANdY
6QV2dRY5gW0ZbwVlLPnmSeMPx7jJvlYlreHiKsd4ZXnOlUkAAjuQCaTtw1ReSi8n9kQuKq+D
lUs9IU1Yz/e0r7i61aHzTwoUZBpKPriR6wVrddaZMtMKfArs2AEFDnyykLXt6BP6pTgFlL8z
x3Jdp1IYV/lJu0yfYXWCt1uQIlB5a9wJVSSlyTlKeqijjbYC2g1rf0K/VsYvFec3Nbk8fDSG
EWmdZUA//4pE9pGSbWcK9XaZMe2WZuuIBooNbx/O/0d85YQCOUOHAS8KcTAGeKsI/RMCe2hR
oXNkioAokyOYm4nq7iXR2JQyUS7FNxTvuDQisDzDF65lbIdLibEyhaE6QPRRE5lLps4PkcKz
TnTJq8AyIWxD1xNracLYK3F3yWtFYLRQtdSHB4q14Tg06xTzgM9AbSmrOPxvp7jBEqR5Fzlr
zzGVVHS+61DLRiQaajKVwe//D8rgRJO2TdBJJ8yTSo54MFCTOLTjLGgUrxC9+fNbGqrLBnUc
cgrq3BuYszDGlOwdnCO34qfjC53p8+HpBffsXrK0GBCm75iDJEPOnRiqn95FxeJQLtqywNS1
Z/nU5hu/DqMuWC+9UC83OjqWLV2aIwb3iE/diSJBYJk+Da61hxE41Kd5sq365EAtzZGk3bTU
KACYtAAqwwGrd37zxVlxNlhrx4AyvGGpVLv4i146sjbiHS3C5Z05dgEwtkczKsLHNsmpTIuB
vaDqtarw8aV1WG6zdRjAg6BP90neb8O9QR86lgpbwV5Zy+ttHojoa14icmyKvRtJxhfeIpTd
Eseuj3vkShHNyROO/fFDtqFFa+oRofFZIwKZTWdFNcIgtc1VsfVIlNi5vmeTqyLpmAqPDdHS
9yiuUOgJY2XJPjKrAx0Di3hpe+TJwlDra8sNKRxvRZe6cj0S4ZmrA0b7WnVtsXGX5LgPfPfq
6iJjC5rfjUvaTmYsrungvKTYtpFgH7W2ZTlE/7hERCHW67Uc43B3LAzJ2hifaQhySD1ujRdo
i4lv2jaTE6O3koYCiQY/fMNq3USYlE4rB8HSYYlkuwpurbaitbiMYqwLg4ZGBd1fifBKo8Z7
fH7o+f7r6Y55T5siVoEQpPrkpbF4Jc4XO8Jbd2WwoRrRDn2SoZ0AV0o41BJmX4edE6wsTfnL
cMwcicV3M0Trm6l2eRQbXNOABgbKW1snWu3OCOK1t7KLIxXCkVWi3BUzTPV0QUyBD4CU1owN
CLsFhbImoCj1YzGD8QtRAcN4xt4wcxjqcWRCulpNtnhEIgxE4AR1rxg2U+9hZLsEMyDT1I7v
rA2t2GX+0rFZ36Xt36G/VZtFLlksoqFKWkuFxWZfWt9R5kl92kEYN5uz1G5xMHXITViF4+TT
DbeQt1oZPhvVLXIL9HtphooqlBm6dglosNShcGGsCKAcJ3MCr+kLYsZTkibDgsTkq+0H2Fqt
PClTx94U2iJqko5OKoXIOkqBhXfpdcC+7jzrGjryOi+4gr8JLFPPmtLrfFFhhcA2iYhDs82W
K/9EIQrPstUeM6DpNGcEN7cBrCUxMPHm5FmWUkG4cW0TkIfolKvtCjJkO8ONOmvpiw7DEbiu
d+q7NgqvnKx57a6X5lFGrjAwDTNUkhd7teo6zAvSMQX5GdvyhN3NFY5ihmgOWSkngKCYlHvJ
4CR7NaEdW1nO2GqmdiXBXN+qFxIQUK781Fu0Jh9JBLRDFAZQ6qYAHJxzpB5qFB70tTtiwn0s
q14A4YNswz4xNPGY287KJe/zvHA9l5JjWZ2qSpkBmc5XK6eKdiAzkE+g7GLmKnrltuZA2eKG
MULtcpU7S7WSY+HZFs3WjGjjNB0LPFblahgs0GsJltaVYrj2WoNRM40YTzMxVUnWayptCjv0
ql3B3yZOSp0jRmbi5W9UzGAkqgKLVCh7tDSd1opok2NiYmdt2WBiLY7DbHdtjG06UaTZKYn7
Q5V3oZgybCbAFM77MGeef3vFvGymQjtH5tEw0V2tFXiIrfToIaFUnkRB+hbFY8xEyMEH8oOP
jET2/noJseeuA6p1A6NOotjFY6iVMcnkipyJiCczikZeZQrqRI6pylbLGN81LJ5w7ZCbWyGx
6c/TsPRcj5SVFaIgIAdU1XgL7gSMbf5gODnRwXOvdyFr87UrvmpIKN9Z2SHdCDjHfYMJk0AE
jMGKunYUEsdQB6qTKL2VTOKSs84uYrJjxJOogOR30PVKgcZf+VTZKAZ4gQmliAAqzjPsH2TB
/eX1NjEa/0oBa4vm8RUqh5YoFSqPtLBXuiNf2ip2Tdr6y0SBRW5bjnNMxUe1DUP5QQtrb2nT
01QHgbc2YWRuTcR9Wa0Nr+kCFUhG9vX9wJ+gDJUAzrt+Qqqy14xBy4mlR66+Ot1/TWyLxh3g
fPLNqMCw5Bhy/dGA1OQL9oz/wrIiqGEpReS+3fQHyRh/JtBEOAEFTAsFb52iDi3DmY7I1qAF
E6i8Ilj51y9pQcSjSsi3Hobtv17ExFxRJUDxln/9mgeawFmSZydDrUq6bJAmPBsW6dXCBTmN
LsJ3XP+j1cFFM/JBViVakf3QjVEUnO0apuCq3lwjow19FDI4Oz7uiCTXCbjpxYUo/aDaLxI0
XGT4eK/l4SbbCCaPTaRJcRjZnQz5mGeNIFZhrGSEsEdpRypxcLYUHWgwOW8keGFOtQGmibwR
Q9TKCHzCgbPpPx9MRbZVeUuVKdGE5W11vWKMcFuTVRcgC9xsYkP1p6L+qPasqMqPaJqoKK7S
sLE2RW7g6cMiGPY54P/84IOKrt3KNSj1EW3SYLFiiSIlhDkJ50i2iZsD87Nok5wnjBxMW7/d
n0d5EMPGiE8avEdhwQL3qFkMOJaHDui7g4lgiBJ/hYKlJjIh27gxoUajVhOeGTqIAzcZhWpd
FobiDnMfU0GIsjipDAmphoGqyq6pcslnLT5sdFFcr0eqfzRan9I4qRMy1YPFUyVrJQxBK3/c
v58fFt1BKHnqH7a0JMObIAZTJoRxWHd4zNi+iBqCzmF6ikqOi8OwCToJtbDiMF8Ipk0xpHtE
4n2eCCY0Y/5DvdniytXtsA/LfF4bQ0QWctdhlf+IEBfhdUJ5aUnRXhkI81I/PJzJMIZ8se7L
OSBx9Ovt/fnx/v9esNPvv55M9OjZIgX4F3FdHIJwLz2GyNjAWV9DSgpfrdyVbcSug2BlQCah
t/JNXzKk4cuicyzZhEbFGrgfjcygV5fJHJ8yf1CIbNfQky+dLSnQRdwpcixJryfhPCkVlYxb
Kl7wUmtOOXzqma8lkWyln5QcGy2XbSAaqEjY8OTYkiJeWxN2YGpfGlmmkCEamUE/rJJ9PI9D
oz4urwiCpvVheMngTmKJ+3BtWYZZbzPH9gzLN+vWtmvYT03gWKYZOeWuZTepYZkVdmzDUIhO
7xp+YynhAqmzRTx03i4LOBcX6SvcIvDJ5DnFFMhv7+enb+fXb4vf3s7vl4eH+/fL74vvAqlw
srbdxgrWa/VCADBIMpQsxrEHkHL/ki9QBhQ31AD0bZsgBagtA3HZy4cHgwZB3Lq2HCOB6uod
c6D6X4v3y+vr5e399f78YOx03Jxu5MrH4zJy4lhpazZsKLlZZRAsV/SinfF6owH3qf0n8xKd
nKWtjiYDimbarKrOFcUnBH3NYe5cX200B9PRW1hXvZ29JO1Vxvl1goBaKYrUruDhs/WVSvkK
ubrSLLVSvPqsgBKRx8m0JAF4/MbxbbWoQ9LaJ1Itxz4aDobYtohWMCSfKfqgm+ulpFBeRuhL
Sqh58n0KuKJWhNYyXLQnY5WtY+mfwC6jlS9sjW0CP7S1BcUHWtZ1T8u8W/z2T/ZiWwfS48oE
O2k9dVbEQAFQWf1sGcsqjmHTk1l8AZX7S+4CQPRuaRrG8tT5ltog2IwesRldT9m0cbbB4ZbD
wYgIytJ4wK8QrxWH0FqDrrUWDr0KZGiYruGylmFJZOtrHjekS+r5+HzEDlyUqmiF0KWtuBgD
oulyJyDfamasOrl4HCuN/xrbcAGjEFNN+WhwBUbDrWBce7j3A4ccIMcmocoQ8cNtNVYadi3U
WYKs+HMRPmImn/PTHzcgQp6fFt28F/6I2F0Vdwe5ZbKUdwI+2PB+iPiq8WyHVKuPWFsdu01U
uJ6tTWm+jTvXJU2lBbQnlzVA/VAFw/Souxn3o6WxGOE+8Bynh1Ewnf34HeMSuBdoG//zQ2Wt
zh/shYA4wtnB5li6WzirTb6p//vjJsjnR4QvsJTGeOIQlu7kvTwK0ELZi+enh78H7u+POs/V
CgB09dqCPsPprC7vGcUESx6XN4mm5JJDnBeWHYSxKxrv5K5Pt5+VeS83O0fjkhiUesEbkLWj
HboMauar8HmWdqGbsOrMc6CycVGsdtWl2wbbXFvmANS50rDbAGPqmrkeOC583/vL1M4TSPze
Qa6KyTcOsUbxbDaY+yF6VzX71qVePdjHbVR1TiJXtUvyhCXB4yvq+fHx+YnF6GYBXRe/JaVn
OY79u6ik0jQi48luEdJDrcygLNVowguPhv78/PCG0Q1gAV4enl8WT5f/mDcXD6uf0mnUTNoc
Vsj29fzy8/6OiPYQi96c8KMvsjoDxkiKU4zwuIbT6zTGHqJGHol4RtRC+5jBqdTMAtFN0WoJ
AEd4uplRRMnQuKLFoJt1lVfb275JyLgK+EG6waBeSYFvIZnovj8jMY8Ey4X2L7j+dHSehCxE
RTs6vQoUGA2qB0k3npMd6uMYJSSnA8htUvTMp8AwDBJuihNwebp7/oY61dfFz8vDy4VnOHqT
JnkIHAUcky8Xy8PQ5La/VFuKGMwNioqzdWC4lVU61X1LcME3NZOzEU1BRWdjHa+KJKYDfYtf
iZ06bBNtDR5gAI19aKKwwQgwu7igYrxMJPlBTinMCs6ajkXHo9IAI0Edlkk+33lvLw/nvxf1
+enyoMwRI+xDLDNpWlifubZ8BpJ23/ZfLQuWfOHVXl8CC+6tfWP3+FebKul3mGMYpP41KRdI
pN3BtuzjvujL3KebgaPxQZ1cD3y1riTP4rC/iV2vs0UH6ZkiTbJTVvY30J4+K5xNaDl0g4Dw
Niy3fXoLPICzjDPHD13relcxj2Zyg/+sg8CO6IKzsqxyDEZmrdZfI/LimWg/x1mfd9CAIrE8
9W6bqG6ychtnbZ2Ht9B3a72KreUHYwkHT4xNzbsbKHjn2kv/+M8/gabsYmD9Sd5k+qCsDiF+
wFaUpIuZSKo8K5JTn0cx/rfcw9RUJF2Ttei6t+urDk0d1yE9ElUb4x+Y3M7xglXvuYasmPMn
8HfYVhhV8XA42VZqucuSFuSnT5qwrTdJ09zC9SYEZ6Ya3oS3cQbrvin8lb22PyABYcowxU1V
bqq+2cBSiE1807xRwqLdYyIxP7b9+J9TJ+4uJPltitZ3P1sni9xjAlUQhFYPP5eek6SyiQxN
H4YftjfJbqp+6R4PqU2+sc2U7KU9/wLLobHbk0UO/0DUWu7qsIqPxjaOZEu3s/PEIiVH4ajq
YMayE0i4q5WhXomEHkc0OAij09JZhjc1RdE1+/x2OLJX/fHLaRtSZIesBf6kOuEaWzsKwzlR
wearE5iGU11bnhc5qn52eqqUbh2xtk2TxaJJtHAJjBjp4pp55s3r/bcf+n3NYqzFrekejXYw
hB1GHgduRD3vxxMxEjL2iuwVXDg9WkFox3SB6Y12WQ1MWRfXJ/RW2yb9JvCsg9un5mOyPOYT
y2toMPI2dVe6S187DpswTvq6DXzHMaKWylfAbMGfLPAd7dgA8Noi7WBHrOMu1dLwfp2nSiqv
22Ga4W4X+S6MHCaUMBSNKUKyTcjdMla+UoeCXWnVyHjKbpGRwcGb1kv1UgFwW/oejH+gsRn4
SR3bTmvZpPwLJNzMA7ZkWJ58d+mpRYj4VUAriEWyuFZLYIE548PKU98Jlb2lbwy5nKQrw0Nm
Ep3CJqq3e3loilOrAdKN2j6e2evq0QZXcVJ2TODpv+yz5maKW5q+nh8vi3//+v4d+PFYzQkH
YteQrHpuB8DKqsvSWxEk/H9MKY9SkPRVBH/SLM8bbuQjI6KqvoWvQg2RYQaKTZ7Jn7QgfZFl
IYIsCxF0WWnVJNm27JMyzuREF4DcVN1uwJBnCJJkW4JixkN9HWzRqXilF5UYxjFFu5QU2JQk
7sXogikaukRoYCcTI2SQCFul5Sg9YF87JVuVPu0/x/Cemr4DipEzRQLgsA1tWtIA5P6QtBR3
jAXVmACgUTrQ2jHzLZZnpM3hJtgrFTN3SlPF2Qak51O39AzPcthw7uFjQmPOabhvCzrgR8r1
po7Bqxybp0k6ErZFhf2KPEDIPcimaXO++/Ph/sfPd0wPGsV69qSpCuTGozxs28EOkJgDjMeT
s2D1IuE88DO+PhYUeHJln2qVcZ4pwslIRPgdaDTMOPWYJzHVAtVHbsaEMdrsW3TjGHJFx/IZ
aQR3b/37yRuKKJz5x1h0iECFin4RFojqwPPo8C3T1GD88SakWql7E8843bl1xslxTIXWHDzH
WuU1hdvEvm2RpcE9dorKkkINHoBkXYkUp/uDdT9+zywflSNwQKEiZ/4FV3sl/+qZ5ArnZ0kj
2ClHYqJ83zmOZLmiqVfnyW2rfaln6d5lsa6K3WVSyEf4OYd86hpg8rsduX6AsAmPxKrZEyUO
ob20FrUvlzt8fsGWadcAfhguUZQXBhhhUbM/qTUwYE8mFmDoWrILZKA9XNa51vckv8moKxWR
0Q5FefUTEADgF8UKMWy134aNXDVcqmEuBk1jhMxWSYHd1kOyYqlGGPltVaKiwzQ1fYLqa9No
oMVzVailJl/pzDZ8AotN1sRy67ZpoxWyzYHrq8hU0IiGGpS8Twx6q8zNMcy7qpZhhyw5Mu2L
0ojbRlGpIzTDsMEKqEvUxn4ON2QIFcR1x6zchUqxN0nZAmPTycEMEJNHpvhyDJsoQ5cnZXWo
FBhIAvpqH6H4o5akhAmTpuQyQHyzLzZ5Uoexc41qu15a1/DHXZLkV9YTMLhZxLLtqcNSwEQ2
ZLhCjr1NgSnYqV8BH8pWuOmzLGqqtko7ZVehgN8kyrZiSa7HNSfVUnZ0RnPEVU2XUEk2EQeX
IcaJgoUuTKoA7MWAi+yDpAvzWzE+M4PCqQG3DAmUZBsRPt1damdGAjV1JUkUZbQ/B6PJw5Kp
m8jkT4yiQW2+3L42RHW2CmO6OgVYJ0k8JPIVwV0SFhoIFh1cG4l2/kGxda4G4xfXD/mcwk4L
1L6GbSYphSegeYW3Rdh0n6tbrHZupgjVZr3L1A0OR1qbqCcBaku2hQrDRC96sgARbtqv+P0e
r+a+bg0BjvCAzbKi6szXxykrCzpkO2K/Jk11dQK+3sZwIRuCrLHxZMm2+t2eyuLIbue8lvMC
E5zCnJWEYmxYOpVMYvA02inDkwCc+JgWpMddlGmS9NQRpBj8aciOFoZMwgVczpjwkeh6mRzZ
FhZ4wASVjyg6SWf/BO3ZCUoUJZCwMxC2vhzIghFsGjxNSmAyML9ShNmOEp1zBFLKs4SVQMV/
lCnC0rUcb00LK5wC46FSlqG8jVHhu6KTwAz1VCiL/2Jp3WRg6sFixPpLh/rIXztXOmaM58uw
PNy8XuwA1xzcZCqD+xtvGAZEWqo9B6Aohg1AEO0wdFRRyDzLhHWo54kZ6xIF+notgRKIagQH
BjeUeSBIyXNC+6KXAIMOwWnaLuz2+pbgygJTiXoMWF4R6SXOUGIEGGnxxY4UPID3t3O9tTpg
XRSi/7AKzSNvbZ/UzukB26bV6/2ltXsKemZqfda6dpq79lqtZ0A4p8kobt7hzBzt3w/3T3/+
Zv++gDNu0Ww3DA+1/MJw9tRhvPhtvsx+nw9hPlh43xda8/VI1kr38hOdaothMSaOOqgs1te8
2LW9vCK3uLOiHih4ibOb+TRK3ev9jx+SoMpJ4SDdSsoAEdwrOW0kXAXH707M2Cxhiy42YHYJ
sB+bJDR9STKLEkVU08HxJKIwAlYmIxMWSnSyRkdCxQnPi8WmhY3k/cs7mua+Ld75cM6Lq7y8
f79/wLRSd89P3+9/LH7DUX8/v/64vKsraxrdJgTBLCmv9JR57X7c2RqzJn7UU56x3lhXzfQn
lPQij+sQ+WzAhVGUYOhXtAy5HYcJdtr5z18vOBRvzw+XxdvL5XL3U8w9ZKCYuCD4u8w2YSnp
ZGYo20cYTJQcGpWOt/Ej0jCOhykhhqCJi7BvMyHfaAK8Yg9nLDrNtlGz3ygozZ256aJeSpyE
gCKyl35gBzpGY54QuIu6Cg4gqoGABUwHvJ9czgAcNdj/9fp+Z/2XSDC66gqgckhLyWYMAIv7
8blOOD+QMCu7lGdmUlvKMHVjCPU7UdDmkaxZzYH5fv9LMN7DphAM3Uh+Jaa3RCIqrkdEuNl4
X5PWpTBJ9XVNwU9kSXGLjxfqeMyYPoIdv2/opM0i6Yq2cRJI/BUZb2Qg2N0WgecTPYL72l9L
gW1mhBwhVUI4HolQorKOmKb1Infl6IiszW1HzGEiIxzjJw5RywngRLNY6iMlYJCIUhyIKRKX
GjmGMSICaqyXdhdQQ83g/THudNwcUFBr/eaL61AS2LRj1CD0E0LLKTRNVITxgNZUbS2IH2uL
DJgzUKSFa1PVNbA3bBruiclURHpqfSUFCGHkZmoOgDGEmJlIgoBOnj32zyv0KtsYNmkwXWV1
phw74hGG1g4lqocykR7T8+nHlbZ9QQgj1jqsJMd2iD3IOryOnLGm+uH8Dkzv4/VqoqJq9bLg
7HCoTQtwT4ndJ2C8a2OJx1Hg9WlYZPmtoQQg+KgEch0CZuUEhhhsAs3yH9AEH7VhtSRmhSVG
WpJt0x5zCQKfPIra7sZedeH1RVwsgy6gbQhEEvdar5DAI66woi18h+ru5stSjjI3rsHaiyxy
feDiJENzDXj1NXq+RV2buoq+3pZfinpc689Pn5Dpv7rStRyQ0xZQczFOh1cH/yOPqSlgnH6m
rFxL92dFkbK9ACv7Srcxxrj3LOTQXNcMU1kwAXOQchgAQrc7Qs40KbeS3RHCpiCtu7Ask1yu
WTFV4cksYT1ssQrS/u/Yh6cMP6U5OmaGYvgWcYmCFFBNmClsPlo8ZvCBT3NAPG/ksET6uDbV
y8wjdlhQX2wLWts501BGYUfWYSUO9AAVFOrA6cYs28U0S9GUnXYc4fa2jPru1HPCeSYGHleb
zHFYxiI3+1QPJcQKTRXXh/bI4PQ0soL6ojokg2Ua1W1ONLogySsHMSDC1wYokzcGh5LR5k9u
vLDq9qfBhpV6kBelzD2msxw2uZQ5ExEx5vqiEGzd5RsMyhVJihwNibLxybPJc5zV3exbocO4
tfohgpBYLpa5O4x5e4iyuPuL+MngEFMkJeURc4hrYbXgLzSdEiAsoUpWdflGBTZZKeUw41C1
Hh4p4/7u9fnt+fv7Yvf3y+X102Hx49fl7V0ynRo95z4gHduwbZLbjazpbLtwq5jXzW9ZVR6n
GfkgsENDmCgXXt7gB3Mtqyop1+RICJOV1KG4YblqTSlkgompMOca+l0b35BtFb4cpR+i2TLV
GjgTsu4289ylnMlJRnqG1EMSlU2pAmUSUfEuY0QHYAETxVGyEh3gFJwkDoo45qPaRzVdHw8W
qg72l6rJqOy2wpeSnZ0AP0SeYfiG4NfXi+WxzjHVs7CSjsDFl3nF0mhyRQNLk90+/3qVkgbN
b2P4to8m9X2ddf5yI8/Z6N1KFSKUEWb5pqKam0Fz94JCibupYhLx+7sFQy7q848LU00uWn3T
fkQq18M4jnQyem4uj8/vl5fX5ztS9ZLgg6yu5xlqJj7mhb48vv0gWLkaOBCBG8OfzItWhQnn
6FiTVOJ0P6JF2TFrJscMGP2nb0fMxDnzURwBPfit/fvt/fK4qJ4W0c/7l99RK3l3/x1GLp5a
yh0wHx+efwC4fZb1UaOnJYHm36Ga85vxMx3LDVtfn8/f7p4fTd+ReEZQnuo/0tfL5e3uDNP9
5fkVNplaiMi/1aGBkdpnUTTwJeQ8f1QRV57/T3Ey9UHDMeSXX+cH6Jix5yR+nnvgtya5/HT/
cP/0l1KQzE8eor24oqgvJvX1P1otY/k1ul4f0ib5MvFz/Odi+wyET8/yVAxIuBQPo8tKVcYJ
cBWkc6ZAXScNBjcMubRDFsjsvVq4Kmn2UKCc0jd8SFmHbZvJJUq9jNUBnwekTw78/WPAJKcu
mp9bkr/e756fhq2qF8OJWebVz0rO4wGVtiFcvfRj7kBifM8e8HB7uy6ZsWAmGFNQEd+yPFTm
j+uu9Gw5wv2AabpgvSLDNgwEbeF5sm/vgEADD2OvgFeuGorfzsQbMMNk7Ps0leL3TrA+2pBg
SbSR4aqAKmDRgGPOIyLgb9IsZVQyeHiIglubaiH/b9qS32ikrNYW981E4ogkIEqplv8DeC6R
n+x3d5eHy+vz4+VdWqJhfMolLfgAkJPtbIpwKSpB+G+VJoKFwt6ychqqpr6JQycg/XxDV4qt
V4RNLEU6YIC1ApDjAt2c2phyjr45RZ/R9VzaDUXkOmQUp6IIV0sxHcUAUFIRAVBJ4gCgYElK
a4BZe56tpm7iUBUgBslkoTk9CeA7nsRbtt0NSApUrYjZhMM+Hq9zeUnwZfJ0BtaABTEZwvnA
+QaHmrpoVtbabjxx1ayctcQ1A8S3/D5LMb8OelDmeUJF+wG6tWhIEcYZU+TwtLgjkOdr1GBB
IMMijPhl2TKQZ0iEE0eCJuUhyas6mTLSCuz1aSVLAFkZOidWPfX43EXOciWb6SCIVOMyjJRf
KjzZrqx9RXHMJwNjFVHtLh3pSC3DPebbIIiZ4uiAd49quTGlZ+gzaUhm+P+j7Fm628Z13t9f
kdPVXbRTv+MsuqAl2VYtWYooOU42Om7iSX0msfPFzrnT++s/gJRkkITcuZs2BiC+CQIkHisr
KfEZAwj2IlfnbDAHXvrq6IsT3033lKuiOuMuN6QKKbs6l3cNM/Mln6EjhNaTe75NmI66HXvG
7Au6tYOvt8albUA3igoBdBUY8btCndfeE5ERj9v9ohLV315AKDNdNGJvUAWjaiT2hkpLYj+3
rzuQZatLXbo380jAgTGvbEHJflGI4CFxMJM4GI079m+bW3ueHLOrMhS3JjMDDei60zHWtPT8
fmvuOWxPmKE7q5yl9LFOptI0Olw9jG/WvO5qD4i+9t491dfeMCtVoCgqoPMEdCZjWY2XrAZE
a2Myrb9zC3WRxtmcWwXyuGpIzdBqh6uNXkU8Vx52qLc3JgSj0wq/B4OR8Xt400N7JhlY0L6Z
Rd0fjm5Grenp/DRBl0E2DJIcDHqkSfGo16dvisDqhl2TGw7HNP4ZcLzBNb3IAdYAVQ2HJsPV
u923r/6t0O7s8GnbDZj7p4/X1zrSlrmZKx1HRewyjgULp3UFzvjFoWwkw7MRtd2EyrV3+38f
2/3jryv5a3/6uT3u/otWgb4vq3h65PZH3aJsTof3r/4O4+/9+MD7bLowL9LpN9ufm+P2SwRk
oOhHh8Pb1b+hHowRWLfjSNpBy/5fvzz7y17sobH+n3+9H46Ph7ctjG3N9prZmMSz7ogT4qZr
IXsY+5JstjPMEuXSot8xgtlrALtVZ/dZUvZBWJE8Cl/fa/R50eSzfs/2a7YWqttPzc22m5fT
T8Lya+j76SrbnLZX8WG/O5mnwTQYWO/CqC92+NDYFapH1yVbPEHSFun2fLzunnanX2SO6sbE
vX7XjOkwz9kjZe6jIEedYXLZo3xB/7aPqHlesHbXMrw2RGf83TNkYafRmi3ARjmhRe7rdnP8
eN++buHo/oBBIJ2axKERMFT/NtfLdJ3IsRH7t4aYdIt4TdMWhMtVGXrxoDein1KotSwBA+t1
pNaroS1TBLOQIxmPfLlug1/6pgz7nsHG2odMm/oqR2Bm+wr/u19KPs+a8It1t0Pj3AqMWG/+
hl1luB+J1Jc3/ZYIAgp502JFP5l3r4esgzkg6Inqxf1el1oLIcB0TQAI78sAiFFnaJGORkOu
/7O0J9IOtXfQEOhxp0NvHzCFOmg/kfmuVUsbMurddLpcRBeTxLTsUrBuS4LB71J023IfZGnW
afGDyLMhjckUrWAyBx5ho8CJBgMzS4WGGOY3y0R0+2ww1STN+x3TECSFlvY6CGVbK8Nul81w
jIiBrWb3+11+7cDOKFahZOMi5J7sD7pEHFIAevlSz0MOYz40tUIFYiPGI+aalgKAwZBmDSnk
sDvuEXv3lbeM7EQfGsaa6ayCWKlZBrmCsXEYVhGogmTqHmA2YOi7lE+YfEC/8m6e99uTvo5g
Do/F+OaaSrf425gWsejc3LSk/6iuoWIxW7anWRazfkti6NjrD3sDo/8VG1QlqkP+wrYCfW44
HvTdea4Q9jlWo7NYpYV3Gly/dXMD9q8mtcTby/ZvQ0FQ6kzl40/zNdeE1Zn3+LLbO7NAGDyD
VwS1B8fVlyud1eLlsN9SFo/1zzPlslFfT/I270CHNjZZVqQ5R0nocnTEiJIkJRee5hyh8Tdf
XdUjvt3VabUH8UfZS272zx8v8Pfb4bhTya2dFaq476BME2ku9N8XYQi5b4cTnJm7800t1cN6
rEG1L7tmQh1QowaGngVqVMfKmwOgIZ9cPo1sIbClbWy7YQypfBTF6U2Te6KlOP2JVkDet0eU
GxgGMEk7o05Mnl8ncdoz7y3wtymt+NEc2BRNiZJiNhYiSaZ05EIvxaRKhgIQdek9lP5taw1R
3ySSwxG9wta/rY8A1r9mWIqKTcHNy3BAmzpPe50RKe8hFSB7jBxAw1xqRc0e4bNctt/tn7k9
7yKruTr8vXtFqRlX95PKZfPIzJySIMwDP/Qx/m6YB+WKLtNJ1zA5TkPq555N/evrgfmiJLNp
h7MtkeubvvkgAJAhq/RgEcTYH4/BviFrrqJhP+qs3XG82PvKNuF4eEHnv7YLdWKIcJFSM9jt
6xtq7uz2UNynI4BfBrERzyKO1jedEWuBo1F0xPM41UGlz3IHQrh0GTlwVjqn6nfPcAznGtzM
LTWXgR+ulw4Cla0He0ggFm0CpjnnZYrYakTMWpT363ho15PfcW8TFaaKM6KPx+xWRbpmHOOz
WzSwMSQSaF7In91OOU0xqfAWpWWaBhwhyElGRuclO53fX8mPH0f14n9uU2VyjAHOie5wBlbR
MjX6LCx5GKd7KfChtodk3NDAx5XdcpknWWY8klOkb9RNMVJENJQDonBCw3g9jm+xbhMXh+sg
MhpMkOlalL3xMi7nMjREKQOJ/WnpS+IFUYK3r5kfGOe3ObLNJ2il4AliQxb6UQBSy3cdw5Ac
sxNeORJuyg6xf3o/7J7Ikbf0s8S0Pa5A5SRc+pjYKW17wNBFNacejSxSe8/Rn832M4H45CN9
YRinVpG/ygDNqmKnF/O7q9P75lGdFvYekTmpF36gA16e4A00tYs/IzCmYm4inFtYBMqkyGBF
AUQmLWH7CFnj4Ms+lDZk0zwTxsO6MvvOjYA3Nay04nnZaJnP3YJABCjYwtKWEDoNAcMW64ss
d/TP30/TGW/jTqKrwQ8VLgMtWJcJjfaEmCpISuWTTIyzGhQfe4QQCBWrxixWWnGzFGwSoH0F
d2xh3I00CtZn8waixzCpTwt8u51d3/SMCyIEt2VDxmhysWnAx1XRsIO4TFLCDGSYGPa6+Bt5
ervZi4zCeMLG91KakKdDKBvXRUmxbMnFnEgjE7FlnqQfFnbo1KyYGhmplUDJDKQyUJlSkRmx
AAAUJrEwDrhgnfdKNjsHYPolZSgVANUjjN/rRVY5CikDr8h4n3ggGZSmgKBAhQww6KtqSvtn
RrUWqq7Uwlg+L98nfs/8ZVNAUfHEE97czLsehDCMgGOH6btCUPrvtLH8nVvLQBkEDoegH2Pw
YAyVQ6ZnXTeE/L4tktzYMevftg0pMo6vIiJZYvDhxhnd+KjCoWV8yK3p9VSSnM0EKCQMb15O
Rd4SDXY2lS1rNPE0ihZZw8qk13JyNxSN/SFGkZR5y2VGQ46j3t6KKtmOkIsombkN0mi2F5M8
s+auhvB7rcHCQgVJE9nLrHUpNcRZsQSBbQl0yumdD1agqdtldo3XM/ab6oIppk3h3X+WYeRO
3LTXtscekmVgjRC2kkpEbQwC7dltnqNh5QTN74HrczWiw1OJeEN/RftYNIO5t/Hk2CtBMs7u
U4y8yA4QUOCwsBxyKptQ3ucHNteHikgTCqfWMV+ZaPXAcliDAqCXEgal0WfWtM00N80AX31x
J7Kl5XRjlGjxWA3Ms4DIJbfTOC9Xxl2/BrFWUViAlxs7QhR5MpUDfvVopLl61JljLAuvkJxl
S+U8RT/GfFSYFMFiOw0UozSGGAm99FvCCXK0IroTKv54FCV8fgTyFaoOnBsHIcE0MKrrLY2M
AxjFJDWWhr6q3Dz+NLNITKU6E3mrHU2tyf0voE589Ve+Ek4c2SSUyc1o1LGPyyQKA56ZPMAX
U55RFf60tFF1k/hm6KvORH6Fg+ZrsMZ/lznfUMAZMx5L+M5q9koTcbsYEHVcH0yOkYpZ8G3Q
vz4zJbt8Dam/CRP0R5FB/u3Tx+nPcRNJZZlbq1gBnCNVQbM7dmgudl9fQxy3H0+Hqz+5YUEf
HKMBCrCo7JwIc0hUTBjYoy3MA/A4KBiYNAR2yin0SOPNw8jPaFKgRZAtaQOcG6d5MQMGNmHn
Rf93Ftfq6wG3x0TDCKX2ftU+p1yxwDHvkmxBqc4N9IJ0bgxZBeAOKy80CMNa4uhZQMyFdwcs
QEmQQZVvwmBlSHWn0uLdlXM+CKKiKVIMt+x8uhZ5zjMuhW4TTDWyvdgsSfhtDptEOJu5Zt5t
MsGSupvDj3r7fPu0Ox7G4+HNl+4niq53YjnoX5sfNpjrdoz5TmngxqyhgUXSu/A5915rkbS1
a0ztVixMtxVzoTFm0Jo2It5n3iL6fbdGo9Ym3rRgbvpt39wM24bihl6Pm5hBWz1j+lCNGDiJ
cFGV45YPur3W+gFlzYWQXhjak1DXwD3oUXyPb1i/rTzu2YDih3x5Ix583VYN56phdKvPF9ht
Geiu1a5FEo7LjIEVJgyDKcDxTwOU12AvwGivHByE3SJLGEyWgKJtBrdtcPdZGEUhZzRbk8xE
EJmX2Q0G5F82zG2FD6GtVmi6BrUsQk4/Nzofcv3Pi2wRyrmJKPIpzWUexcYPW3ovlqGnrxTP
kpgGlUt0C4zCB53W6EJyWRCn727pCWzcZGnj7O3jxzs+zDnhKBbBPeH7+AtE6NsCaiqdixtM
QRHCgQyqChBitAL2nkvra4Ffl918D79Lf46ZcnQkfe5rpFE6VuhpGiKcVDc8GD1CqhegPAvN
G8CahD3hVLQBld93Gegwgyivq+PfMyOvOkSGSOSUMIUiMAQmy8VdcmRiMuXTKYEmjQqovm+n
1/wwGJ4qAvOB2PlzWTRGh5x/+/T1+GO3//px3L6/Hp62X3Rq2uYkr2Xk89jSKCmRjL99Qgvp
p8N/9p9/bV43n18Om6e33f7zcfPnFhq+e/qMgQafcXF9/vH25ye93hbb9/32RWVe2qpX8vO6
05fT29fD+6+r3X6HlpG7/24qu+xagPFQzFLaVrkSGWzRMK+DXRLhjaPCiOH0XQFAMDreAhbV
0ljMBAXTx4XSbCPFKtrp0LsVVxQJRXqReAqcq5W2SX7NDleNbh/txv/C3v/NJWKS6XsbKinj
9k3qdwTv/dfb6XD1eHjfnlMbU21Wk4O4zl78VFgRzUQa2nVU4J4LD4TPAl1SufDCdE53g4Vw
P5kLyrQJ0CXN6HXVGcYSNhKz0/DWloi2xi/S1KVe0AeVugQviRnSKp5NG9z9oIpybM9qRY+J
K8UkCtybTp48WOeZKK1IRBXNbNrtjeMichDLIuKBbmvVf8wKKfI5HD/10k0/frzsHr/8tf11
9ahW8TMmMvpF+Ew1d1IwXfdZNU/jAs9zKg88f84UE3iZL/kYDXVnimwV9IbDriHy6ffvj9NP
tAd73Jy2T1fBXnUD7eT+szv9vBLH4+Fxp1D+5rRx+uV5sTv6ZlilmnIOZ73oddIkurfth21a
EcxCjEXYPjoyuA1X7FDMBbC9ldPNifLCwfPp6HZi4nENnnJvqjUy55ayd2nhBtQ/voJF2Z0D
S6YuXaqbaALXzMoH2eYuM58L6zHFjA95EV8ad4zZ7A7dfHP82TZyRsSzms1xwDXXg5WmrC0a
t8eTW0Pm9XvulwrsVrJm+e4kEoug546qhruDCIXn3Y4fTt2lzZZfL2mXFfoDBsbRDcs05RZh
HMKCVhY4vPl0zV5i/+J2QTy9dziDe8MRB+73XGo5F10WWLXdQXBlA3jY7TE9BQTrsVFh475b
FL5ITMyHuwqVz7LuDfcSUeHvUt0ILWTs3n4apgsNF5LcPgowOP9F7rUsJiF/NVZTZB4bm6te
lsndNGTXsUYwKTDqlSviABRczt6koUC1q/17mXOXQATtTqmRUbUW1dT/TA2LuXgQXMSaelJF
JAWz+Orjg1s5QcBHfG/wWQoK5aXFNeDWUHBhGPO7hJ2iCn4eYb3CDq9vaABsaiD16E0jkQdO
SdFD4sDGA27nRA8XFhMg5xxjeZC5mxon2+yfDq9Xy4/XH9v32mW1dme1F7kMSy/N2FfEumvZ
ZKZiC7pLBjHsOaExHJdVGH3uuggH+D1EZStA28303sHqBABpyAxMjWq9hbfIiHLQWtTFUWqo
WI1EPSewmgRmKbBVqJfdj/cNqHHvh4/Tbs8c2FE4qfgaAweuxCKqc9KNpevSsDi9dy9+rkm4
xY1IVnp16ThGhPD6fAYpPHwIvnUvkVxqZOs5f+7BWb5liZpD0e7mnMs+KuR9jDmVQ0/dWeX3
KQ0ZcEamxSSqaGQxMcnWw85N6QVZdd0VOBZm6cKTY7QOWCEWy+AormEfS4lX4zwW9TD8mFwY
hTO8kkoDbXih7EqqC7dm0aLX6p9K8ziqTD3H3fNeG64//tw+/rXbPxMrVvVOV+aYNU5f/GWG
oYeLl98+fSL3dhqv1UYyIJw5agB/+CK7Z2qzy4N1j4lpZHNfyb9v/4Oe1rVPwiVWrew1pvVQ
Ra0bGwMCj8r0lrathpUTUFWBzWbcvTWafokMaJczU9BBW3jeOmQSgsiF4W3JAqsN20EaW3p4
U5klsZXQiJJEwbIFuwzysshD043WSzKfva/HxI0BqO7xxMhTpG99BVHygavNlb2iF6drbz5T
JkBZYMj2HuixcF4YoO7IpHA1Aq8M86I0v7L8kBHA3qvbJLB/g8k9L8ETggFTusjuREv2Q00x
Yd8eADcy2L3J/D2a5SucuGqYR54gbL0rwxTbMen6GQUiDApHdSpgAvUDF/6ATBPOOVNCetDM
3oKCwMSUjFCuZCUXsfQDviUgLzHkCszRrx8QbP8u1zS/QgVTbg2pSxuKkTHfFVhknO/NGZnP
YVM4hUng224VE++7A7NCjzd9K2cPYcoiJoDosRhDiDXgZLHVDIB5JQEFzy9lEiVGKC0Kxbcg
ulUNHNRIcRPP8gfIViKy7NqElIkXAhdZBTCYmaAZeIUyxqZeHBqExollTP1SEG6HdEezRQdQ
Tu5TQdfNUrVf4yOVsdzCqbj1IlWCIW03sjnE6YRV5WgA296sDkYjEhk6bMwD03WoTgxQNfFs
yIjloetPi/mInEV61siwqmjB9uuRf0s48ixKDEtk/H3p8XEZoXEL4T3RQ5kLGmwyu0XZjFQR
p6GROssPY+M3/JjSHDuJStQ8g2M8oyIMuhwl9lmCc5uin47x2tCgAJMFOEG42AUaCYIgxNAV
Ov9YOY0KOa/fQduIYk+KqflY5y38IKWJ9iRMuLEI8e1yOaM8mPiWWuKE+aRWi14K+va+25/+
0v6Wr9vjs/vA62kPIEyvHYF4EDWvFNetFLdFGOTfBs18VcKlU8KAClzxJEE5N8iypYh528bW
xjZ6+O5l++W0e60Er6MifdTwd9K18x5QRuCoa7EP0erJIi7wUgUtu8+jP82gjcrS9luvMxjT
SUmBy6DvV2y5GwpflQZI/pkXCDAuabiE6Y8410ndVhBf1Xt+HMpY5JTn2RjVPPQCMM2Xtdl7
otyxiqX+RC3jst/j7sTpB9qGTadjpCvuHw/9v2gY82pF+tsfH8/P+OwY7o+n949XM4uGStmO
AjlN9UCAzdunnq5vnb+7HBXm56aSo4vDZ4dCZY359MnqPGXtFaSy+rPs6hosvncpghh9itgZ
t0rC9+U2owPFMhYznzC56tfZNgJ+t76uKeTC+NyfXBg4xMKfebgs4EQRuZB40zIHzbnjcrGJ
FJUjA+jf1YBURApHW6mJQUlLeSNihZ5gBHeuGxqNJqBWFZeq14s7No5ENaig2gIWGTmosEbg
uH+0QM0FgYawAbMUsLHOTVz1HN+USyx6kU+CFovhG807XF0c4tWZzBvy4tfJ3bLF+UCh0ySU
SYt/wLmO0tChNDyZoCeudBtVIS6rQiYpGi38AzIV2IRbCSYZmvu2NyvzCsVdf1sMMDbga7UX
YEv361OhPsO65AyLiklNzBnnKLx15adWYrWEQLiIgMHaFf8OjkKJEmVKfQE26nQ69lg0tI2h
yHTaOh4NsbKMkZ5gFqK2ZinwXGfnUcKB6VdUwdLX5+eFGV9xak/DYyoand3KHocWsI56rsxk
2OFWbUP/iylwX/vjFmRlMbQQyDncy0SNxdWIotkyOXMlENsDaVi5OzzAasBcpzbSr6dIdJUc
3o6frzAc5MebPl7nm/2zIc6kmBMYjYIS3ovKwKNrahGcOTpenRQpE7xZJtO8FTlJkhxjUceU
TNXzT2iqNnTPncfyy3kB4wenjrHm9cJtUIo5JAXswF7HrehM1toWi8Ruyt0tCFAgRvnVG2Tj
+XtpLrSxJEhATx8o9jAcXm8My4pTA6srfwqrucXZEIsp21w5OCyLIDADvVScHbhunDbpZLD5
5HD79/Ftt0dDCujZ68dp+/cW/tieHv/44w+azRp99FRxM6V/2CmP0wzzjDmeehqciTtdwBKO
CevKVcGxv618CfXwIg/WgSOOkdw9Jg/gye/uNAY4cnKnrBwtguxOGl4jGqpaaGnECANVzWWQ
FaK1M3Ua6SgIUq4iHFz1AuVmZFPtgE2Yo7dJo/zVy7bpG3sa1yri/zD1dbUqdgOq49NIzKhZ
LfJKK7CDUj3Q1rFY4gMuLG59a+icYfpUNRndX1rsetqcNlcobz3iVTrNfqgHKTQ7Xi1xBF84
Z2S73KOthq30bvowL32QgfG6GsOnOY6kBmdoabxZlZfBmPx/Ycey2zYM+6W2CIrtqDpOIsR2
PD+W5hQUQ7Hjim3A9vnjQ7JFivKuJkVZEknxIVFgXnNZSc7OVrNpELLcVEmWtbTyaOfgazD3
QqQF4Vtt8YIwlVjfIoAGEjmoi/p9ehQdBD4QlOsv5hXmWKdJjFwvGKhh9j0H8jo3lpavD4Px
jIU2rP/HiHJX3aZLInAdlbmDfxant78mvvE29AiuzMnG2d86hyKui54wAZamloxNmHpMhSgU
vLFHE42YYLZ3md1YhYZMJeEQ+h2sWXdXfXOvldSVFEjSD6tQ4W3CF3ocvUKc4vHqMcSgB56Q
Cm7teE2jVmEHwpieOaysvxg+1h0FxHz/OWQciDs+MmtsYx2bzxZ7vWtrrbSlQ/Rq5xRAljFb
arVmQ9kaZB3nDGT3eJSvfsI0gkF1KP/U0jQbFlscecM1HnVt3FSmHPg38OiY8d7YuX48XXKm
jIAYRlIMwmRfYLcA7uIJU3aCgNWlsEkEuw7UusMsL7erc2YzIKGPfNpemjOV8aH3hdRlfMUI
XLleM2ZJ4sdbN53WNusyYPI5lNo0KxgSURbWvFTWKmObyeJUahe8jA704hrKTuDMmkxzrPBp
sDD1h9IMRd7J0ocRMDnYpfpsk1pVksT5z4gUuXzCUcloqMOXBUb9IbFXcheVynv5EM5LyzHx
NaOAIeT3ImFZoOjjx5/3nx/fhGGwOnt9tRyrv9bDYN/bBiQGpkoYGYJVDpioYP4+7yTZusXn
ZdiBLxQmoStmPTpIaRrCRIVlxTc3YQk28kDt6O+c4zAYA/8J9wx0H6mii1G4pjVjLuypiCMt
OD43NDfthCkABhAqcX8MEcLHO1g+/TxxxGX38PnZwvHdgvL49CmZD+cbTqXZYTog0U/7ue1N
cynniTS9M73/+o0WPbqkFb40+PZdFAw+z523Vymav3filqBMvDmpoSxCxBCbHYxtbJxZsAyH
TcFF5UMRoHXnOt4cVCCqSczGpgQc0NGRvYsf26rxswjuGXRWFsMZQf+DKgsbcPqeAGOv84lo
ISRIOcEBw6u2yBAu5neGGcPRdzvNw1jA7G6oHXPPw1+sLL5EOQbYQMieYSdaHcJszvtJaBk6
vUWHmMaLWUiKEFrf0WveyfZYhybJvhg9PZJRpTOHF0y2649pxl6CRI5ewdg7ft7J/Gb6Y6f6
VYuI+G9Oj3KqetSDmoaxSg+O8gE3+DzJInP0nc9qlTpa8rKyEXwGYWqsoDPB59nvVf+v8USC
pBSjkCVKA57OmSiDI+nJUzv0ye+TUwsH32HRy6mw5SP+wQ8tuPLWJs6j2NeN0/NYiMoyl4Fq
BLMy47KJTqX5fJmhgS9pLIAVAxyb6jC798gp8X/P3uPs/H0BAA==

--YZ5djTAD1cGYuMQK--
