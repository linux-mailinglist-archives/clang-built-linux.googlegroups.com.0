Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPFM6SAQMGQE7KI2OTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A713283EC
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 17:28:46 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id e10sf11689418qvr.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Mar 2021 08:28:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614616125; cv=pass;
        d=google.com; s=arc-20160816;
        b=V/4d4Aoi6MbTHoozAceMGUS83DB5IRc4ewe50W6+a2+qND0aCr0anFUnNtt3dEPeih
         jMy1/pWqKMZIGrajSdroob7GW6v19lD6weDVNnaO8POqqcySdGgGJBtKJPTdwl4hSfHI
         sRW+GPl2tie5qBxaZuykqiLL+P9V4szPaWK7MR3ld4yu1PuUMdXlGRPHBUWKNJWDMxTr
         IBvH2L/f5ZYYvfaH+ejpmqrq9p+Y2LI2TehGy1X9quV7xyeV3nugFuoCRDsOZRKyn5yc
         e0RQXnXG6oAfS0MXOg92GEVfsghuAVKMCr+iKARMuvqF3cApWjiKt95AlF4R3VJO3moF
         KsJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=3tG6iffLvChikDYhrS12ckx73s3+uBmwPVw7Ye3n6gc=;
        b=XX29Zk14DlI5ZdqK8D+o60qTXVPptSwRBI9EISroNAuHWQLQjJJ/PHu8uE2qT0FtDz
         r5Yd/VYwfTcdd2EikjItmQfO4F6VFzkIPAa5UqaaAdJhnVw3GZ4ecJMmUe4L2QPBI1HN
         jGx59uJ7Cq6Gy/n3WCE6pTqiIZLI8aj2y6P2uql+1tkz8+gQ3xEEUrFFy1v3Gp6tIu8W
         mVw54LMdDOsMqDFM22CZfigYSIuQZ1lWkM2pfflIiPu5M37j1upGJxKjOpI9/YHlAHgI
         OCB3zU9QE+CuH2cZb//3N+2uEAdhRmgaa9R19/cgSzpHS/TsAlR/4tbHbQUOKr9BnZWh
         MiqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3tG6iffLvChikDYhrS12ckx73s3+uBmwPVw7Ye3n6gc=;
        b=Jacjm9O7CRNO6Y9zNovLIQsBCIvN169NXJzYkpKqduFlVdt94GIfuSOHznbSnVlaBk
         P5Pr9P53iKivi06gu5kU9+CEVOzPfG2zXg3MkBCgo22jz49EdQ8OkjROMEub7taH0zWw
         Be0a1jfkhipHhL0fkfW8NT4tQa02ujL7sML077V1fV7xKnaOtsZVKAXhLG0nwPQhAnaf
         NiUMPjyDvmA8Fwf3Y2muGqUW3UydIoWZLIs9bnISQBVj31w6j3IsGFg/l/BrE5FsGJIG
         FK9W0QPJLBO9276GMe3mtCp4U4EXKDThm44PI6hvvxIa5nq3Ukk+DC9fXvPtBBIO80CL
         SPdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3tG6iffLvChikDYhrS12ckx73s3+uBmwPVw7Ye3n6gc=;
        b=IleHxtwO/gWo3+ZEi3+Ofz+ljNpflaVU/IxGNK5pG1HOv19HzGr74NDN/UceumhpWn
         sDTZS0U0035EpujQiyZuwG1rFWGjYstC5GUfqEPGFj3H14zyTFZ4BwjW5csREbKhT1g2
         Ss0kPXFBTjU6eQAkr8FWJQyy30LPYoFpkSNE7nPCkjddVHtUnknvmStuOZ4ximHTRe64
         x0CJAG1txo427eZ8uMBzsX9PaAb+GMAbjXCbZjbO9U4gHHG1pn3sfX67yijx/VpjO9uL
         4/6Hi718O7+zQKHkEtB1k8PJNrWw8w8erVLxD/ejopNgXk6yyjoLI8lURPuHnqPDHarN
         ZxmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/4wQbrfZ+RNM9eurQLOXuhCV3KStSLB5KWpKfJpEOfPDFpy3u
	UtiOqBG0IW//8FwPcuvy6r4=
X-Google-Smtp-Source: ABdhPJziknsoZLovYtyP9QPPEuFWssUHz+kHtcXX9HCmUsc5zSQAMPG/6G+CEjBMFVBGSzHApybFUw==
X-Received: by 2002:a37:4cd0:: with SMTP id z199mr15688270qka.164.1614616125071;
        Mon, 01 Mar 2021 08:28:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:4cc:: with SMTP id q12ls6586021qtx.0.gmail; Mon, 01
 Mar 2021 08:28:44 -0800 (PST)
X-Received: by 2002:ac8:746:: with SMTP id k6mr9040105qth.303.1614616124431;
        Mon, 01 Mar 2021 08:28:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614616124; cv=none;
        d=google.com; s=arc-20160816;
        b=gpBAlxVIbyMnYIzKv8r46kYSFHZGdI1QXsIsV644CkgTWnBLR9YpGhQwVmLSnyCE7L
         LgehhVUvLM+cNs6L8k/uxdkrOV+bUdXSYV8jRVdC9hesBdq6nvFkGjIkLAITC7jc3mdj
         oMmP8g0YeFG8PrTEwyh35Yfo7U/yseie2YajhfcexaS7xjl5gFcqNPUkrYpHOwi2YAKJ
         wzPBynnICFaos+p3/3QQxPY0F/CH71099b9barhdze9D/FinAPJCcn9RB8X8v1wauygH
         skRLYXWUTbNMimabg6VYEBe6oGboYggxFMyiDhVAXudb5LGkmy/QcyD+cDWO219/9co3
         +SNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=r6XXTccA84HevlpIM9Vpu277D7DdxSPBr1znI1vcQDc=;
        b=Mv44tlBlcXtxGiqaphxCiID2I6l2anSIwxu3vrsv7PI9qVhjL1BTIoUSxMCSSi3j4e
         apeGmhF2pm+6V7veqzcYCCg8+vYqE1mSR30tGlPd12CIZk8wfDuZxYfJ/QjzQc3dnw6i
         8mVRqcsFMTWSjRgnQsxSTN5C+iHKmb8P6edy/Xb8fdz7QFjCBHpeBkfMpp3pEfMAeSqG
         y1zHJB327/X2yzSel/W5Y+s0krjbgo4sBpQUyRre/KobgCGtXlcnjBxczhFh3CeIqRuR
         4qd+M0cbL4s+mplr3gzH9bHeBAEpa1bIGTJye2cIaDuvscWufIC/v18DxHb76AXyCuq2
         4bag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id d29si523442qtc.5.2021.03.01.08.28.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Mar 2021 08:28:44 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: gExB1ti1zJhrmbw4zoiGjzuDLbQrb/EMmIm1VIBVMtyeMvxAcdDWy+tHfKoewotp3Qj/eaxO5U
 MHDSUbaDBZZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="185841558"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; 
   d="gz'50?scan'50,208,50";a="185841558"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Mar 2021 08:28:42 -0800
IronPort-SDR: pLJ0aD8QSXoX3tGLyaG574i2m00FQC3d4c5UPs/3A4Cvq2rigE8kEb3VtpSWLo2EkTvPhbeSJ6
 q3VKTLdH3axA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; 
   d="gz'50?scan'50,208,50";a="383115309"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 01 Mar 2021 08:28:39 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lGlPT-0004e6-9M; Mon, 01 Mar 2021 16:28:39 +0000
Date: Tue, 2 Mar 2021 00:28:24 +0800
From: kernel test robot <lkp@intel.com>
To: Wen Gong <wgong@codeaurora.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Johannes Berg <johannes.berg@intel.com>
Subject: net/mac80211/he.c:158:33: warning: taking address of packed member
 'rx_mcs_80' of class or structure 'ieee80211_he_mcs_nss_supp' may result in
 an unaligned pointer value
Message-ID: <202103020019.PdfZV3v6-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="y0ulUmNC+osPPQO6"
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


--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   fe07bfda2fb9cdef8a4d4008a409bb02f35f1bd8
commit: 7f7aa94bcaf03d0f18a6853d8f7dad6a4d25bbd6 mac80211: reduce peer HE MCS/NSS to own capabilities
date:   5 weeks ago
config: mips-randconfig-r011-20210301 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b077d82b00d81934c7c27ac89dd8b0e7f448bded)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7f7aa94bcaf03d0f18a6853d8f7dad6a4d25bbd6
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 7f7aa94bcaf03d0f18a6853d8f7dad6a4d25bbd6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from net/mac80211/he.c:9:
   In file included from net/mac80211/ieee80211_i.h:16:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:14:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:202:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from net/mac80211/he.c:9:
   In file included from net/mac80211/ieee80211_i.h:16:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:161:9: error: unsupported inline asm: input with type 'unsigned long' matching output with type '__wsum' (aka 'unsigned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from net/mac80211/he.c:9:
   In file included from net/mac80211/ieee80211_i.h:19:
   include/linux/netdevice.h:559:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           } while (cmpxchg(&n->state, val, new) != val);
                    ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from net/mac80211/he.c:9:
   In file included from net/mac80211/ieee80211_i.h:19:
   include/linux/netdevice.h:559:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from net/mac80211/he.c:9:
   In file included from net/mac80211/ieee80211_i.h:30:
   In file included from include/net/mac80211.h:22:
   In file included from include/net/codel.h:48:
   In file included from include/net/inet_ecn.h:9:
   In file included from include/net/inet_sock.h:22:
   In file included from include/net/sock.h:61:
   include/linux/poll.h:142:27: warning: division by zero is undefined [-Wdivision-by-zero]
                   M(RDNORM) | M(RDBAND) | M(WRNORM) | M(WRBAND) |
                                           ^~~~~~~~~
   include/linux/poll.h:140:32: note: expanded from macro 'M'
   #define M(X) (__force __poll_t)__MAP(val, POLL##X, (__force __u16)EPOLL##X)
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/poll.h:126:51: note: expanded from macro '__MAP'
           (from < to ? (v & from) * (to/from) : (v & from) / (from/to))
                                                            ^ ~~~~~~~~~
   include/linux/poll.h:142:39: warning: division by zero is undefined [-Wdivision-by-zero]
                   M(RDNORM) | M(RDBAND) | M(WRNORM) | M(WRBAND) |
                                                       ^~~~~~~~~
   include/linux/poll.h:140:32: note: expanded from macro 'M'
   #define M(X) (__force __poll_t)__MAP(val, POLL##X, (__force __u16)EPOLL##X)
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/poll.h:126:51: note: expanded from macro '__MAP'
           (from < to ? (v & from) * (to/from) : (v & from) / (from/to))
                                                            ^ ~~~~~~~~~
   In file included from net/mac80211/he.c:9:
   In file included from net/mac80211/ieee80211_i.h:30:
   In file included from include/net/mac80211.h:22:
   In file included from include/net/codel.h:48:
   In file included from include/net/inet_ecn.h:9:
   In file included from include/net/inet_sock.h:22:
   include/net/sock.h:1994:12: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           old_dst = xchg((__force struct dst_entry **)&sk->sk_dst_cache, dst);
                     ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from net/mac80211/he.c:9:
   In file included from net/mac80211/ieee80211_i.h:30:
   In file included from include/net/mac80211.h:22:
   In file included from include/net/codel.h:48:
   In file included from include/net/inet_ecn.h:9:
   In file included from include/net/inet_sock.h:22:
   include/net/sock.h:2244:8: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           err = xchg(&sk->sk_err, 0);
                 ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> net/mac80211/he.c:158:33: warning: taking address of packed member 'rx_mcs_80' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ieee80211_he_mcs_intersection(&own_he_cap.he_mcs_nss_supp.rx_mcs_80,
                                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/mac80211/he.c:159:12: warning: taking address of packed member 'rx_mcs_80' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
                                         &he_cap->he_mcs_nss_supp.rx_mcs_80,
                                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> net/mac80211/he.c:160:12: warning: taking address of packed member 'tx_mcs_80' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
                                         &own_he_cap.he_mcs_nss_supp.tx_mcs_80,
                                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/mac80211/he.c:161:12: warning: taking address of packed member 'tx_mcs_80' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
                                         &he_cap->he_mcs_nss_supp.tx_mcs_80);
                                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> net/mac80211/he.c:169:34: warning: taking address of packed member 'rx_mcs_160' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
                   ieee80211_he_mcs_intersection(&own_he_cap.he_mcs_nss_supp.rx_mcs_160,
                                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/mac80211/he.c:170:13: warning: taking address of packed member 'rx_mcs_160' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
                                                 &he_cap->he_mcs_nss_supp.rx_mcs_160,
                                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> net/mac80211/he.c:171:13: warning: taking address of packed member 'tx_mcs_160' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
                                                 &own_he_cap.he_mcs_nss_supp.tx_mcs_160,
                                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/mac80211/he.c:172:13: warning: taking address of packed member 'tx_mcs_160' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
                                                 &he_cap->he_mcs_nss_supp.tx_mcs_160);
                                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/mac80211/he.c:174:29: warning: taking address of packed member 'rx_mcs_160' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
                   ieee80211_he_mcs_disable(&he_cap->he_mcs_nss_supp.rx_mcs_160);
                                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/mac80211/he.c:175:29: warning: taking address of packed member 'tx_mcs_160' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
                   ieee80211_he_mcs_disable(&he_cap->he_mcs_nss_supp.tx_mcs_160);
                                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> net/mac80211/he.c:186:34: warning: taking address of packed member 'rx_mcs_80p80' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
                   ieee80211_he_mcs_intersection(&own_he_cap.he_mcs_nss_supp.rx_mcs_80p80,
                                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/mac80211/he.c:187:13: warning: taking address of packed member 'rx_mcs_80p80' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
                                                 &he_cap->he_mcs_nss_supp.rx_mcs_80p80,
                                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> net/mac80211/he.c:188:13: warning: taking address of packed member 'tx_mcs_80p80' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
                                                 &own_he_cap.he_mcs_nss_supp.tx_mcs_80p80,
                                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/mac80211/he.c:189:13: warning: taking address of packed member 'tx_mcs_80p80' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
                                                 &he_cap->he_mcs_nss_supp.tx_mcs_80p80);
                                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/mac80211/he.c:191:29: warning: taking address of packed member 'rx_mcs_80p80' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
                   ieee80211_he_mcs_disable(&he_cap->he_mcs_nss_supp.rx_mcs_80p80);
                                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/mac80211/he.c:192:29: warning: taking address of packed member 'tx_mcs_80p80' of class or structure 'ieee80211_he_mcs_nss_supp' may result in an unaligned pointer value [-Waddress-of-packed-member]
                   ieee80211_he_mcs_disable(&he_cap->he_mcs_nss_supp.tx_mcs_80p80);
                                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   34 warnings and 1 error generated.


vim +158 net/mac80211/he.c

   105	
   106	void
   107	ieee80211_he_cap_ie_to_sta_he_cap(struct ieee80211_sub_if_data *sdata,
   108					  struct ieee80211_supported_band *sband,
   109					  const u8 *he_cap_ie, u8 he_cap_len,
   110					  const struct ieee80211_he_6ghz_capa *he_6ghz_capa,
   111					  struct sta_info *sta)
   112	{
   113		struct ieee80211_sta_he_cap *he_cap = &sta->sta.he_cap;
   114		struct ieee80211_sta_he_cap own_he_cap = sband->iftype_data->he_cap;
   115		struct ieee80211_he_cap_elem *he_cap_ie_elem = (void *)he_cap_ie;
   116		u8 he_ppe_size;
   117		u8 mcs_nss_size;
   118		u8 he_total_size;
   119		bool own_160, peer_160, own_80p80, peer_80p80;
   120	
   121		memset(he_cap, 0, sizeof(*he_cap));
   122	
   123		if (!he_cap_ie || !ieee80211_get_he_sta_cap(sband))
   124			return;
   125	
   126		/* Make sure size is OK */
   127		mcs_nss_size = ieee80211_he_mcs_nss_size(he_cap_ie_elem);
   128		he_ppe_size =
   129			ieee80211_he_ppe_size(he_cap_ie[sizeof(he_cap->he_cap_elem) +
   130							mcs_nss_size],
   131					      he_cap_ie_elem->phy_cap_info);
   132		he_total_size = sizeof(he_cap->he_cap_elem) + mcs_nss_size +
   133				he_ppe_size;
   134		if (he_cap_len < he_total_size)
   135			return;
   136	
   137		memcpy(&he_cap->he_cap_elem, he_cap_ie, sizeof(he_cap->he_cap_elem));
   138	
   139		/* HE Tx/Rx HE MCS NSS Support Field */
   140		memcpy(&he_cap->he_mcs_nss_supp,
   141		       &he_cap_ie[sizeof(he_cap->he_cap_elem)], mcs_nss_size);
   142	
   143		/* Check if there are (optional) PPE Thresholds */
   144		if (he_cap->he_cap_elem.phy_cap_info[6] &
   145		    IEEE80211_HE_PHY_CAP6_PPE_THRESHOLD_PRESENT)
   146			memcpy(he_cap->ppe_thres,
   147			       &he_cap_ie[sizeof(he_cap->he_cap_elem) + mcs_nss_size],
   148			       he_ppe_size);
   149	
   150		he_cap->has_he = true;
   151	
   152		sta->cur_max_bandwidth = ieee80211_sta_cap_rx_bw(sta);
   153		sta->sta.bandwidth = ieee80211_sta_cur_vht_bw(sta);
   154	
   155		if (sband->band == NL80211_BAND_6GHZ && he_6ghz_capa)
   156			ieee80211_update_from_he_6ghz_capa(he_6ghz_capa, sta);
   157	
 > 158		ieee80211_he_mcs_intersection(&own_he_cap.he_mcs_nss_supp.rx_mcs_80,
 > 159					      &he_cap->he_mcs_nss_supp.rx_mcs_80,
 > 160					      &own_he_cap.he_mcs_nss_supp.tx_mcs_80,
 > 161					      &he_cap->he_mcs_nss_supp.tx_mcs_80);
   162	
   163		own_160 = own_he_cap.he_cap_elem.phy_cap_info[0] &
   164			  IEEE80211_HE_PHY_CAP0_CHANNEL_WIDTH_SET_160MHZ_IN_5G;
   165		peer_160 = he_cap->he_cap_elem.phy_cap_info[0] &
   166			   IEEE80211_HE_PHY_CAP0_CHANNEL_WIDTH_SET_160MHZ_IN_5G;
   167	
   168		if (peer_160 && own_160) {
 > 169			ieee80211_he_mcs_intersection(&own_he_cap.he_mcs_nss_supp.rx_mcs_160,
   170						      &he_cap->he_mcs_nss_supp.rx_mcs_160,
 > 171						      &own_he_cap.he_mcs_nss_supp.tx_mcs_160,
 > 172						      &he_cap->he_mcs_nss_supp.tx_mcs_160);
   173		} else if (peer_160 && !own_160) {
   174			ieee80211_he_mcs_disable(&he_cap->he_mcs_nss_supp.rx_mcs_160);
 > 175			ieee80211_he_mcs_disable(&he_cap->he_mcs_nss_supp.tx_mcs_160);
   176			he_cap->he_cap_elem.phy_cap_info[0] &=
   177				~IEEE80211_HE_PHY_CAP0_CHANNEL_WIDTH_SET_160MHZ_IN_5G;
   178		}
   179	
   180		own_80p80 = own_he_cap.he_cap_elem.phy_cap_info[0] &
   181			    IEEE80211_HE_PHY_CAP0_CHANNEL_WIDTH_SET_80PLUS80_MHZ_IN_5G;
   182		peer_80p80 = he_cap->he_cap_elem.phy_cap_info[0] &
   183			     IEEE80211_HE_PHY_CAP0_CHANNEL_WIDTH_SET_80PLUS80_MHZ_IN_5G;
   184	
   185		if (peer_80p80 && own_80p80) {
 > 186			ieee80211_he_mcs_intersection(&own_he_cap.he_mcs_nss_supp.rx_mcs_80p80,
   187						      &he_cap->he_mcs_nss_supp.rx_mcs_80p80,
 > 188						      &own_he_cap.he_mcs_nss_supp.tx_mcs_80p80,
   189						      &he_cap->he_mcs_nss_supp.tx_mcs_80p80);
   190		} else if (peer_80p80 && !own_80p80) {
   191			ieee80211_he_mcs_disable(&he_cap->he_mcs_nss_supp.rx_mcs_80p80);
   192			ieee80211_he_mcs_disable(&he_cap->he_mcs_nss_supp.tx_mcs_80p80);
   193			he_cap->he_cap_elem.phy_cap_info[0] &=
   194				~IEEE80211_HE_PHY_CAP0_CHANNEL_WIDTH_SET_80PLUS80_MHZ_IN_5G;
   195		}
   196	}
   197	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103020019.PdfZV3v6-lkp%40intel.com.

--y0ulUmNC+osPPQO6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
EW8quK60sg1iUo4luZ3/1+5F/tffAQA=

--y0ulUmNC+osPPQO6--
