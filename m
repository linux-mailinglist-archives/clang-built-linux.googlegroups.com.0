Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKHV66DAMGQEXEN6ETA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 220D23B957D
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 19:26:02 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id p8-20020a1709028a88b029011c6ee150f3sf1756962plo.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 10:26:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625160361; cv=pass;
        d=google.com; s=arc-20160816;
        b=zXSyMyC9oTrVpNaJwywDjkZoa3bd1M8O7ODfALdVUae2lX4Wx+Bad3OWfbR/1Rysql
         WXT3Sdt2YXpyw9SNWQs89E6lqvZOdjXK5UMX10qqEZAAbWqvLPl1zWjJqso/11KjF0QY
         WybVbLxqxeKMGd2fYrNj8zF0inO3v0Gn/53R9qMHxRafQjaQkRUozK64WNsYNt0m0AtN
         0T/joSawlD99vyBd6uYJhhbkawWbCHe9ZvRtBcYRD4u6Ky3NiO1jRuo6E9wMuH/X5rR7
         MI20j97PTbkBIb2QJxqqrUvDQ7XE5fJK/tI5EXp5FUJ5sgWjXHjn9gMSaKG5RvAur0s2
         pijA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SfuY9BOjW+CjtTmE9LjYE7QdRezFEqFuXZesW137MdA=;
        b=PZjjb0Ko1SqPqqA47NWfgkcbpJ+zXZ7HKJH3obXgF+w5FVRmorET4LSfBaoXKl71Ox
         Y921g9D02vQYiKtyisDpgpA/XqMoC5VQH7w8hC6ieBOPtNp/6zPNIaGy3Sl0yyNshz3T
         nDmYuCFr4JJNNpRI9vQIIJE5xccmE78lbe7WpfMTvvlfkVDOPwy+ppUgMqpOpHGK3Bpe
         Z9zWHU+R18G7TS1al8GGi0BN1oGz+tLtYy+XP5ZnoNwNSw6loPRkYE4dlpJ0nxnZ9qgb
         xP4xUddqzzmx2gZfjiq0fptFoikRAY94G1tO3LWYhgo5dOQUCjSW6oE+8HKTWPiLB8N4
         pnNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SfuY9BOjW+CjtTmE9LjYE7QdRezFEqFuXZesW137MdA=;
        b=S+viEd8uaTZAIQE+cgi2u0/RsrgejxG15kuXejWb3qu12f+fq2oiO4M9DsvscyClhv
         rqA6PRxDg3wh5jgoYAk1RaPXTvRyN2hbEd5jIxSdPevmeR9yTRJgpchYVXCuzAN/oPxb
         IFe97HXCFEVtLpLldDyFpl2znbxtsOlFqyFp1GO62r2C5tywQqNUFTA9PnWIVuDFKVD0
         kJkhGogw0h5b6klPU0FuxL4nnguydbGFRZzJk5QBaWbRyJrC6Ft0JTHBMggOqN3nFQ59
         OGpoXZxTuzuqUb+cjthQ7RNNfMhJDH0/V2UZUshFU3G/dAUGai/okAnID/e43SvYfzEc
         riOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SfuY9BOjW+CjtTmE9LjYE7QdRezFEqFuXZesW137MdA=;
        b=lRcCP38zbaJ5tB2yl0o9Eu4TBqFhWpd3ANjNT/R9wBtbql7iDTpcnHDJmANzWHLcsC
         xJonN6J/UynDW+2sDnHJWejxaNLjI/YsgFecFv2WioiBCdzCu5sLCOyBcljkC/VWRWIV
         Zxzt1XPG/ks2qIs+GFD23ks2jqsaD6u4nTHz+93/LK++ZDqasB24IvH6D2N50l2qkjO3
         hwhFZjWY/fsDl0AfagIUgdwcPWNtWczsd+eLTpAXe/NmZRJexswM51YgUnowLCFxaoiH
         XZx8uW7fDjv7TUYk4iyKZARGtsCWSIVrD4xTbnNECKgmtwE4fev07REMhvADMcdEx7aD
         dmDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pXD0+qNp7oLDo6LSzMgg7qpzWOA2+5GHJTJODoUjKmH5KvgLn
	SjhpDpyA80Qt0toJd9tLnCY=
X-Google-Smtp-Source: ABdhPJx9CBEb8MP8u4KuGCEPuqr4OHgx5EEJK6xwjWqQMUVesAkN4R7TtIQdG7Drs1L2XwIblRD0hQ==
X-Received: by 2002:a05:6a00:1648:b029:30c:a6a2:99a with SMTP id m8-20020a056a001648b029030ca6a2099amr752736pfc.25.1625160360757;
        Thu, 01 Jul 2021 10:26:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b418:: with SMTP id x24ls3676158plr.7.gmail; Thu, 01
 Jul 2021 10:26:00 -0700 (PDT)
X-Received: by 2002:a17:90a:d206:: with SMTP id o6mr11167561pju.142.1625160360135;
        Thu, 01 Jul 2021 10:26:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625160360; cv=none;
        d=google.com; s=arc-20160816;
        b=TvUWJVsZ9ZQfcA8xj52kEbLgKNoA7lMc4Hxn8rd7ry0uqus1CitVKEnqH+yfKZVz4j
         BLbaXOBt/DaaularCx7OJnoiAU9JWh1f2rhgtQ4GoRPOBx65QJCQDRVig14be35P2tlV
         0oYiU8mPenbKes+r4SCBU4bPsYlV7niJinNbVudlu3E5bPSD9bi8wb0qVfHjejSUuivX
         PodmeqFinxWz+DjYPTbkMPM/Yc14MgNkr5fNPJsd3f+8WwfMmtScA6XlxSSlIDpNNMfX
         rnjcCqh5TC6k5dhv7hChMcTFeDmm3UkAEPiu4AHIAO63rmw1W5JYIhB6jDIttVxbwlIS
         5ZPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=3tNHn07gLqgn9XmbyoaB2A8mmia2VailjAxeY/nf+eM=;
        b=HoiZVUusJaP5WGiTx5aSf5pPeAI6t5XrJdy5LDZf5ocXILtcW/UBYNl6XqvAyFe/3C
         zFa1DNiOUPTcsxCpDIFNBqYWaY0ICsfD0T5bDMYtoK1WCTN7E0mz5gco7vhWIiIzCI40
         KysGn2UFUKfA8lwMSJ4CQHUkYnc/B0s/zS5LCyamwLYRUoDrFgy04LtjI1qssVtW12rg
         AtT/X/lwvffdyEglZumWYJXlHydaAjiTvFXgLYS3S2qs5cdulOs+TOAeP9MgM/zSqCmD
         eMWBi2AwFE13OqhSHeutg7RUx4liqMeGMVLOm0HBYGuArVuKmkjxFYX8FN+54WIy9dty
         a7gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id z18si91271pfc.5.2021.07.01.10.26.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 10:26:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="195747177"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; 
   d="gz'50?scan'50,208,50";a="195747177"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jul 2021 10:25:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; 
   d="gz'50?scan'50,208,50";a="409006966"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 01 Jul 2021 10:25:52 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lz0Rj-000AeV-GJ; Thu, 01 Jul 2021 17:25:51 +0000
Date: Fri, 2 Jul 2021 01:25:27 +0800
From: kernel test robot <lkp@intel.com>
To: Wen Gong <wgong@codeaurora.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Johannes Berg <johannes.berg@intel.com>
Subject: net/mac80211/he.c:158:33: warning: taking address of packed member
 'rx_mcs_80' of class or structure 'ieee80211_he_mcs_nss_supp' may result in
 an unaligned pointer value
Message-ID: <202107020120.My5MzpqI-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="rwEMma7ioTxnRzrJ"
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


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Wen,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   dbe69e43372212527abf48609aba7fc39a6daa27
commit: 7f7aa94bcaf03d0f18a6853d8f7dad6a4d25bbd6 mac80211: reduce peer HE MCS/NSS to own capabilities
date:   5 months ago
config: mips-buildonly-randconfig-r005-20210630 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d21d5472501460933e78aead04cf59579025ba4)
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
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:161:9: error: unsupported inline asm: input with type 'unsigned long' matching output with type '__wsum' (aka 'unsigned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
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
   18 warnings and 1 error generated.


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
   159					      &he_cap->he_mcs_nss_supp.rx_mcs_80,
 > 160					      &own_he_cap.he_mcs_nss_supp.tx_mcs_80,
   161					      &he_cap->he_mcs_nss_supp.tx_mcs_80);
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
   172						      &he_cap->he_mcs_nss_supp.tx_mcs_160);
   173		} else if (peer_160 && !own_160) {
   174			ieee80211_he_mcs_disable(&he_cap->he_mcs_nss_supp.rx_mcs_160);
   175			ieee80211_he_mcs_disable(&he_cap->he_mcs_nss_supp.tx_mcs_160);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107020120.My5MzpqI-lkp%40intel.com.

--rwEMma7ioTxnRzrJ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICO7e3WAAAy5jb25maWcAlDxbc9s2s+/9FZr0pd9ML5YlO8454wcQBCVEJEEDoCT7BePY
SupTXzKynDb//tsFbwAJqjl9SKLdxQJYLPaGZX/+6ecJeTu8PN0eHu5uHx+/T77snnf728Pu
fvL54XH3v5NYTHKhJyzm+ncgTh+e3/754+nh6+vk7Pfp9PeT3/Z388lqt3/ePU7oy/Pnhy9v
MPzh5fmnn3+iIk/4wlBq1kwqLnKj2VZfvrt7vH3+Mvm2278C3WQ6+/3k95PJL18eDv/zxx/w
59PDfv+y/+Px8duT+bp/+b/d3WGye797P919mJ/Nd/fvz++mn2b3F9P5yfT9yaez2Wx2d3rx
afd5+mn3n3fNrItu2suTBpjGQxjQcWVoSvLF5XeHEIBpGncgS9EOn85O4L+W3GHsY4D7kihD
VGYWQguHnY8wotRFqYN4nqc8Zx2KyyuzEXLVQaKSp7HmGTOaRCkzSkhkBWfw82RhT/Rx8ro7
vH3tToXnXBuWrw2RsH6ecX05O20nF1nBgY9myllSKihJm22+e+dNbhRJtQNckjUzKyZzlprF
DS86Li4mAsxpGJXeZCSM2d6MjRBjiHkYcaM0HvDPkxrnrHfy8Dp5fjmg1AZ4u+pjBLh2F+9j
7fqHQ8RxjvNjaNxIYMKYJaRMtT1r52wa8FIonZOMXb775fnlGe9Oy1dtSFgE6lqteUEDkxVC
8a3JrkpWOrrqQnEw1WmH3BBNl6Y3gkqhlMlYJuS1IVoTunTlVSqW8ii4NlKClXIxVv/htkxe
3z69fn897J46/V+wnElO7WUqpIicFbgotRSbMIYlCaOagzaRJDEZUaswHc8/Ih1cmSCaLt3L
gZBYZITnPkzxLERklpxJIuny2scmRGkmeIcGtc/jFK7ucBGZ4jhmFDFYT8WqWYE31M4tJGWx
0UvJSMxdo+puO2ZRuUiUPdnd8/3k5XPvoPqDrHVbowaRNB3ypGCcVmzNch3YIs2EMmURE80a
q6gfnsD/hBRDc7oyImdw8o7ty4VZ3qBdzOxBtjoHwALmEDGnQZ2sxnEQWODKVMikdDcEf6GX
NFoSuvLE18dUku4t0VsbXyyNZMrKTip/fbXQB3JoL65kLCs0cLWup2XawNciLXNN5HVw2zXV
4DLSovxD377+NTnAvJNbWMPr4fbwOrm9u3t5ez48PH/pDmLNpTYwwBBKBczlCSOAxOP2VdHq
TGi0dQKKLkFPyXrh63CkYjQIlIEVgrHa3XwfZ9az4PY1WAOliVZh4SgePIsfEE6rC7BzrkRK
asNihStpOVEBhYazMIBzNwI/DduC5uqAWqqK2B3eA+H2LI/6hgVQA1AZsxActbmHQMYgvTTt
7puDyRmcmmILGqXcjU4sTtAIZeOaFV8qrXqsqn+4Qmlg9ogDcuGrJZg0z4imAuOfBNwET/Tl
9L0LxzPKyNbFn3a3i+d6BUFTwvo8Zn3rVempNXDNSau7P3f3b4+7/eTz7vbwtt+9WnC94wC2
F1XC5NPTC8e0LKQoC2dfBVkwY+8Nkx0UnDJd9H6aFfzl3J50VXPrczcbyTWLCF0NMHaHHTQh
XBof054RTZSJwAFteKyXwdsFdsEZGzjGetKCx2qwEhm7UWcNTOAG3LhyqOHLcsF0GnnLKyA+
8a+9PyZma049g1ojYCRalCPrZTIZLMG60Q6qQEdaFNHOVjDOUwVcNWfPpVYmV94NKChAgmKF
fckxHIiyh2pmZbqaoVn1ktFVIUD90C9pIR33VZvjUotGfdygE449ZuBVKPjw0KFKlpJrXw1B
1DbylY5q2d8kA25KlOg9u6hYxk2i0qlSfCTWB+RInA8YN0exhKLHtxfQd4g6J2n2IYQ2raXq
LrEowLfxG4YxgNUMITOS9xSrR6bgH4E5rS+EBC4G2wZTgZVGzTEMc8Kc+IFrP4CvfoMnoazQ
NsFHa+4sv0jcFY16nAzSEY4a5rCGu4VBtRmEfJU2DMBJFZf2U48q9nGg1vL2f5s842467Uib
pQmIxdXUiCjWi9qSEkKz3k+4Fg6XQnh74IucpIlz0nadLsAGsy5ALT1LS7iT7nJhSumFOCRe
c8UaMTkCACYRkZK7wl4hyXWmhhDjybiFWhHgncMEyIuQiqSZM3DOeMQ293T3JRW78rQki1gc
B2+51VVUd9MP9S0Q2Jt1BlML2njKujRV7PafX/ZPt893uwn7tnuGqIqAs6QYV0H82wVLPvN2
TdbODiYJRnE/OGMbyGbVdI239abFOgzRJpKrUJiWEs/3qLQM58VICMcuwaXXqf8IN+vpMKoy
Eu6SyHzuLn5JZAzhSRyeb1kmCWSINoiwgiJg6kNzXkOamlX2Zg2xTsJpz+BAJJbwtFLsVsJ+
RavVa24DGHvq2e3dnw/PO6B43N3V1ch2eUjYBldVASW4DUtHUnBLWTjJIfJ9GK6Xp2djmPcf
gpjIXVWYgmbz99vtGO58NoKzjKmIiH/sHZ7QJegFxXwFZD9O85Hc3Ixj4YxYjtFq/1o0ETGB
HOxqfHwqRL5QIp+Fva1Hc8qSkBNxSc7nrvJaVAGKC3/zcKHNigmutSbj8xecHlveWs6nI4cg
CSjxKnxbFhzirtMw3xoZ1rMaeXEEOTs5hhyZk0fXGqJ/ueQ5O0pBZDZydzoe4jiPfyVQG5jl
GEHKtU6ZKuVRLmBhhQofbU0S8cUok5ybkUXYg9fb2Yex21fh56N4vpJC85WR0dnIeVCy5mVm
BNUMIqyx+5WnmdmmEiJGMM1HKIoQRW1Yh2azn4suN4wvlk7W3ZbYQMEjCcE5mBIvEq/CepFx
Dd4DkhBjw38vm2JrcDhzNy1UkvqQyohhChyoAWKF06iyKITUWOfDaq4TGgC9TXoZken1IP5D
bDt2KXSRlou6hNDbIlfEeOlhD9GwAXctVl4pqsYTNyD05oVICp0kvt309swwoPrI3Yehoqx1
3rA85iQf4fkjNHUGm6jerAg3gGgovSJjFe0b8Mtpb5gq4IR7yQuEz7PTHl06BX0BvahKHub8
KPryvC0dev7cFUfQ6LceBWSwxOQoAyMQvmEOj5l9WiOQguZxONv1qeEXTTBoLdOB/wyJ/Aal
MlTOwTZq/IaRlREQbPnRvQVL1iBMxK5FDlllqqgbKfkyc0WGgpbOuWgC4aG2qirZ+vI0uPbz
eQTXuAqZfIX8/5DAD4gjr0awqHoYOPZVslhAdnrSFMHdUq6MwUWw6jHJGpc2DKxD8cP3r7tO
YewKe8zXBMw/TD6/8ErdGL9i1mym56socLAdwfl8FTnpHxbmbe3vBrybPaTL6by7FrBksIuo
4r4QUBEKyRKm7ZuXg2lMTVxmhalqTu76k2J4U3EY2FDAlUNgdb88RojC2qrCO64yIrVlLSRM
QaWow+veajNFhsBNj2vMGR8YxYZY8i33oZVq2gL+mg8HqOuc9rZPFI9rY3EyRODJjsHh5CX3
za6vjeDtvKzbN599rDfWk03lowoCyS6MAIvkT5qXrmPxJvFR1csF01VBsHoBkcwt9GF5vEHZ
VBostYSUjS7L3PF7QZdTA20lp2okAOW+PPnn5GR+4nY1VOkhKj4WApzxHtzeAJEksFzkMT3x
eOQiZqo18c32NqMZeMZDpjXzCnaO//43O1yNbNZixaXal3HXAte4y/O5p0IVGP/KSIFI90nw
NPxaD5j5RWBhAAfhXPrPitORwB7Zn4XDeos6H0Oh/Mdxp6F6pCcxItG0L93ui5tLYOp2I2xZ
6OGESqKW1nY5mf3yWkG6n+JLj0T9+Fz/dzH39QTrLcKpfGO7iea5ibVX/agORUCQVUDIA1oP
+FCSaIOqNPHoBnwk2fwQI5rF2JoDka3IgowaAsBB3KSB4ZEc3WWGUUIq8LXpWJHJerZmRRgd
xyzgCTDtXVXvbANcsaguego3LlXg963jjN5eJy9fMWh4nfxSUP7rpKAZ5eTXCYMI4deJ/UPT
/zh1M8pNLDl2Bw0fBblrCbOs7JnFDG6QkXltkTOeOw9lIQKyvZxehAmaglnD6EfIkN1ZQ4cO
G4N1G7O24v5hebjaMTut53H8Q/PbO3kgFH7u5yNzN4COeJ5kXVhtj6t4+Xu3nzzdPt9+2T3t
ng/NWrvjsdtf8gjissq8F0JB3uva/jqLUqj1LrrLgitc+AUoC117sI9F5spxdKFthF9RZC0F
IFocv3/c+YE/j/ueGyFmIdYmJXHsZZkuEjKBcgQFSXZbRQTxtxNP4v3Dt6pU3OXLYQI3+q7W
7EIGO7Qck4f909+3e3+a9mQyCBczjtVQLagIl1w6KrEB91+15xyhLML8BjQONyddKKXkcHfE
1siNzi6fBnVKk68hGQzOvxBiAdKGsCTDyD1Iw7OtiVURWBlilNsuUANMETcHp3df9reTz41I
761I3YMbIWjQg8Pwoq/V2iuMYydKSVJ+M5b+VTktGB2SG6wCmnWsWh1ratm3+7s/Hw6QqL3t
d7/d777CSoIXuXKl/nsUxFcm8YIlUdXNR5/7Grw7ZlXVTQJDPmLSkZLIZnSdOcB6MRbQMUYA
c4S9omPzVVkhCGmR4xsvxQaanuVBN9+49gjbD3sxL4cto/lGne2hVv2KTwWVTAcR3lOfhdgF
WAe5FGLVQ2LlBrNOvihFGWgug0Cysh5Vx1tvW5ixQDqoeXLdPDn35lYZXKO4bqvtr1WyBQRe
YJCtD68l5xeSKjrlJtTdpryjc9e1Ibm2z/02JWmblwNEta88QttNpxhF8iMoLBtV1b9OkSrM
mO7YneOpM6qF7GmggxkbT0cb6iwaTgbCxmW/p/hf+8sqpfzXJrNGtXLM/fCZr6lv9OhABZoc
kVF8CHMCJhGXKaRKeEMwcsVn16PYwCLZFu6fyKteUu314LRqakc3CVxoG14Y1iOwEwRvgD+q
i+wCfJ2wbIyJS3IxVNYmgdOiiMUmr8al5Fq4rfVY5IrK3jWiKUZ+2J4EPikOvcLOTtGI4XEH
/WUtRcxrYHq/Utztte6sl8ZraraFbecZOGSFq8tQXcG6BA7ZZ+tHqFj/9un2dXc/+avKDb7u
Xz4/PFYdlZ3rBbLAm2d/E5as9hF1B0D3+npkJm+t+AUGZuM899p8f9DjtSUFbTLspnDNuC0u
KHyDd+o69h5gY4WxzTB6cEW8sLuirgp1mGeF/HZFU+aI73OrhwaQQ0s+NPH9dShJm09kwo0T
3e5Co3ldcjw6sD3HIUYtyTScl3o0pyNljR7VSAXCp5pdhOoNPs3Z9HQgdmW1Sy0v373+eQsE
7wYT4A2T4CWPLQKbEjYQmEGSkzu9cRBK2lJHuAEuBxMLjvg6i0QaJtGSZw3dCvtkRreoqrba
FMINt1Myqps8258rAwbbtlBYw+OjFFUc7P1V6X2l03VgQmiOQZqPwq64SC2CwJRHQzi+1i0k
18Huuhpl9PRkiMZcOh6CwUsIrVPPVw5xIJuNq652W3WFxBrBkMNHok0UFgbHbmmW0+sRLBV9
KQInk131F1G1AiWhs7WHgq+dBUl9VtUnXAaml9dF3eLicR0QmASOHd3RoIe+uN0fHtBITvT3
rzsvUwTBaG5Hk3iNT15Bu6ZioTrSbqEs4R64S9t7M3rqOihy4HayK6wIDWAYVfE29+Gia1V2
Uhyg46J6NsaexPrbt+4Kd+jVdRRUgwYfJVeQmTZLSK5Mc9aDtmJEui21waKbv9628kX8Tlui
8mn3q8zrk1UFJDboLgaxF0Zu9huo2BIhheM8xjH9wXITHjqAd/3M9hjYP7u7t8Ptp8ed/eZz
YtvWDp5edUWnsaiho7CJoWOpAFSnq312ikpehHLGGg/2mXbnh0zqEnJ7ImNLr8o3u6eX/Xen
0jLMptsHmd77ie1HLcBR2EcKJ9NuH3Cq7LcX4eFnV2bhGnQrmxVjhW279A9fFSnEk4WuLhE+
MXQvDNXXbxFaft9W2MtGRyoN9j1SMvRhnnXN+EL2G+swTCVxLI3uv4ja1Aci2MjNdrMMv66A
ZIn7ydtKhSp/TRhuw++M53amy/nJh3PXWQ6TolARMWVgyOq30k4MWbiX56YQI+Wxm6gMGcMb
1faLdqQ1zB5ykBnsj0mJ11LLkupK8NhbHjJGcdMKGchAM4gMuZR+XlswaR8S+x8QNTE8GCn/
w9wu+cBWJ0wgiReyj9+ETusHVWqE2XIVBEeqfpC39yrfHf5+2f8F8f7wQoFurlxW1W8Tc7Lo
bjLYxK1nIbF+l/Ugdoj7aQIsJ/yFAfZrYBEhI/aT6K7fqUaBqtvgCeQJuVe+CHMZ1iVa4DFn
Smzxs/uBfY6sgyjtGINMFo47kjxe+FbRQswaONRVkt5i+5TAL2Q8KyRNHIlanhcnp9Mrt1Lb
Qc1iHeTlUGRA0TGMGfVUpvptwIF6rV1p6l0s+Bl65gD3ma5cXmt8fEuZD051QX1LWIRuBy/i
2BGz/YlhlVtQ3J6eOXxJEbl2UeDGHClxxhiK4Cyc/OC2x740iqnDOc6xz0sJ/ILeO3bQGmID
ttAB4Bc9zH8Jb2D2igTX1FKA9yj6MaRj5blwJwgjBt/gNWbBv9NZ4X5jgEJBiFko4dNYFUEb
6EMhDihzbBl6clnkymmDWSrpHsuV1KHQT7pdKjKxn2m6FbGt18VSRXw4VSHdzykcBE0JZImx
vzeJX/Wpa+N/1BFduT/6fXs4LsG0s/qfLfjGdHLYvR6aWk1ttQeoHsI1wM5jPskkif0m52ZX
JHcliO8RkmzChPiM48ReAFhs/N8fpx9mH/r8uBK6GGQsgJnEu28Pd+7zljNqXa3MhWwHIJUO
QGApfAAlKcXaIH71lHvuA7FEf5iO7DZJ2XDGhRyAPpL8xnD416y/89Wa4BdykPWwJPjVIW6h
zOe8P3CL3zfg5OGHVawZklCwZ/drBiu0IFNArotlsP5kNZby4GSWgr5/fzIyHUR/+HcS+1Nm
w1VkzTz9BWTe8kZXUZFp+GO+PduOLKfAJshK4D1V+Uiw2cUHskzVCxoA8SnfhycX0/OTqQ/r
TtiHN8vob7VdXrhh2yHB+cdp0u3RA6s3i1XtMbWrKcaUQiv4c+xmKJH49toBGqoA3l5xyFEn
D/h10+fbu13vii/5bDrd9pSEFqdnI8CBjjVgo0heFaO6V/Xh3O2aShWNrukCIw0gGKrEEKhi
BJ72RbewtKNnU6tMj8TbVkSGs1m1GEDLxn472+5tz5+9qlRVXxyH/+8PAcPc+i/txKrY085i
P2wBL5hgbBAKQYE+Z25dswLAdrv3vx7K9iKEsEtu4zl34mWw+KaN2wxif7pfeGMxTyV187DL
rf5fkYRZNi/bHp8GaBiNl2FM1V5YNVM9vu0OLy+HPyf3lajv+z4w0raUmvoSdx0w/L6ixPu9
pDzSlZJ4sqnB9kvqYy07Li3M9a80mQ5/v+TSSB1OvhsaFQ5MKnSJfYBPQxgIVaKn/x5ALedB
cERV0TvlBkX0cnZsI5YoPbYNSzHb8JHOFYfIHurR/dpTDu0AT3tkA4vzbcgjOiSZXKfD0TDV
6cls5APCiqIARzHOO0qC6hbrNOQ8mjOf0YCGpiWjva+QPIL10vWyUb0lnw+CTF+jXILBUTtj
9QpH+lPoVa2CLpMrsHEqC38vNXqzG64JhztRvz3WINSb1Gt/aSDG+65hgz0Lfp/Pfzl7suU4
chzf9ysU/bAxEzFeV2ad2gg/sPKooisvJ1lVKb9kqCV1WzGypJXkndn9+iXIPAgmKE1sRLft
AsAzQRIAAVCDIDfJBMSt1RGlO1BXA3scRaZB2myUlzHNuH1BODGSrAQf8jOrC3XOk/ksemq4
gFIj0CHtYG1OdvF22httqO6ylWkS7ThE0PWmw4pG9lmjXExUx8zybp0OCmaKugxhUT9bDsRE
J9h+GD2ijsCmKSRytbCxg/nzX6H68tvP+8fXt5e7h/bHm32d2ZPmidi/0/P+mJsW9B9sdt2i
N006GhOuRrtMvleTkExfzGqnfxM2MKrhB4gV+4l/O8dzB+QFyoLYQXeVvVZBk75E+7uBdKYL
2r4HeCdbSsR4aotYPKUooLCjaPK0dXbCIiVT4gmWV1mCe85TC5CdO7vHeDnDeFY6JqJE7mVZ
Zr3pxeccYsUKasHDp3KbLAr29ZxxZkAg90fnAipIoOXybWmuXN9EbI8UBwKWiSpH1WnIsC6c
ujROe6MK1X+PsmyTwXbwLxGP6VO8hG0lKUEXpiAXzkT58ub1OG2t7293nfmErfQgnKFPryQt
nJDHLa6DSadSddTiee5txBC06LbFS8oOCRh1zOBaKmYMY6PtqQu/cdRVc2utYDdPj28vTw+Q
mWoiA+ueK5Hg5Fjx9ewbG0lbnClpCkqmUv1pYmgsKHgnsElltZI8PBypcTovJq4IIBND6ICY
xDtYfSaBbVTl7rw3UIuP/9rTXEnBZASUxgKbS46S30BrDJQpS2uwgJptf06GIvfHIgYjRzLp
IMIDS3nnsIwOOKslAk+nN1GHS8yZTA5OV7d1lAscVQM96eNkJzwW373e//l4Bs9tYLfoSf1D
/Hp+fnp5Q4yWtPHZ6UF87vuFV17NwJcdUL7hqpJgWJnWB1CCl5LmqiiFfXjoZZc3K18LSodj
dTBvMDNpAUqWRUJDyeFk7EqxSsQqP6ftufCwWaJlYZfF1MapJK/NdM0qUbpKotW7c6cVJLAs
40oPvHY2zkT3qzXMYO+niShdSr3qg8uFB0xNDDjy8QqypfpPAJaROsB7PGfcEJ5+V1vd/QOg
71yexE3k5ZafEp5p1iFbe6cyU9v17R1kHNLocbuFBJ/UMohYnBSRu210UGqh9iiC420UwfZf
12GQEKDxc/Q2qQ+HMLgl0UfKcNwkj7fPT/eP7jxDSgQdJ07OMCo4VPX6j/u3mx8fHmDirP7j
MtrLJLJNde9XMdYAOrE9R51h2uo9QLTDahtxUi1TNRjHja7vn26uX24vfn+5v/0T+4pdJYWk
LMZVvFqHl9YN6iacXSLDp4LMV0uiqIx4ZG/hurNOcmUzSEgr67rQ1KziSCfvAG3MhXF/BC/u
+cxFm1hquJOTTav9N+3VPVSSM0W5c1LauESd+D8prZSfHNyOOSXm90TRPrfvQXqw9iltI6ND
mESt18/3t+BNZlhiwkp9SSn4ct1Ma4wq0TaN/UnsEisqxNguqiSNkCpcNxo3J9eFp89jENP9
TadpXJSDV8joPGuc2/dJVpEee2pyZF7Zmn0PUZvisUD7teKbImaZL29QVZu2+vAyk59+IisM
MV4PT2rDeRknPz23JvDWUo96kPbjiSFb64hMGqU8D61ZCSXHUjp3phm7PRCSgPT7JIrQbs5u
AFs3uL5Lxu8Zrj0sb7phwvVtgY7htXs53CLUZHCYQWubtynb1klenqwVr3EM0jb0FGZLGNh6
yCEE4TZHWTo7higj7ItWJ7vcducwv1seRhOYyHgOZX+6cDv0Y4DlfEKY57ZfQN+SnS96rLFl
p9ySj3RKoD2rDcOkNkMBKtWnZZ8wE4dHTNfSEJZtLI0otDfvHLEhy16bIcG9k6DbHYcbgZq6
htrKoDUuMJbZU4EaSgzMy0YmaDWCXJZx9aPNyGcBTGh7bE8MiJFtsuW2d/+eO/6GBuAaZHow
HLa2zcGK0+4naDgRy6IwoWPWlrcrBGkXk7FNpX5q7hWT3WP0iH6+fnl14nWhGKvX2pfaE4ag
KLqcfVMqi8ZyeJcWEwOqTCmo8YxX2oTap6T2z0FtdmhZU0Z+IAB+rURGVa34WCd0egcV81rP
9FUXyPAp8FagBO4uM6QdIjAlg4CyssjQfe908vXsH18hrvoJ3LNNrk35cv34+qBfo7nIrv8H
O5nDF8gOalsT7iTpvnvmx3i815aQkkrbaWnyq60t5YZ3+PHkTWOogOQRIdKYWlAib51aNDs4
3nDuZzdO/eDaDE9D1BOGrln+uS7zz+nD9asSUn/cP0/FEs2RKcff/msSJ5GzoQNcrc5hn0ed
UTWAs5vOTVySWaOBCrbULSsOrU703QaYRxxs+C52gbHQPg8IWIis3z0UNFTP1UE/mDwWMsaj
B7iSU9gUepQ8c1YPyx1A6QDYFvIX2grFO5+rS4D6/Az+YR0QHOMN1fWN2hvdb1qClbqBeQP/
WIHnBjzF4bh1txID7pyF/azXkZXphyRg5NeO4r69KVqGs8h27gRokUiNwFAplkvtAIRbisgz
TWNcVWuEtkwpK1dKDPUvMGPHONVKrfH1HtRi86WtdIvvfyST6v/u4Y9PoDRe3z/e3V6oqrxu
BLqZPFoug8lANBTyWqfct/V3NO6BqzAQ35JmEHTnVDsgTG5/k8OXzpWLyR0nQUSVR/sqnB+c
MEKbD8AcprZBZyMSQobLyb4ospq0VBrG6z+I3byM/SX09h8aKcFYHO9f//6pfPwUwWfz3bfo
sZfRbm5dN+tQYKUCt7mdGW6Ayi+LkU8+ZgHjSqrUItwoQMwdMhYdigQwJLD7huaDYjboKXq5
iywuWC6OyL3XQpaycvfYHhU2cFrsfClDzD551iPyEoAI7hKYCKcoUnP5p05t6trBhnlSRHi8
PRSsOnuWux6lHhLFmLS/n0uvPjapu1GdHTx/4RPrIWUVbJT/bv4OIR3RxU8T5XE7TSADTZsC
VIMfV/Vv7iRrYXoK1Jf8Cx2MoaRA4c5WTyXOFdh0wGrjXeITSshecNIP3uC0JS45BFtRUhOo
Z2rngJid3OJdgBvTcor8VHSVjVbrUt+hcdw6W5ACtOdMp0EQ+zKLTcSTQ7BNtp0LeDjDwwAs
hJDljBpBT7HLjsmWu9uWrvkdwXV/VSU10oT32zxSsstquRhhsbTWgJ10TWkbx4JL7AmngJCE
IJZbgYBqj5cQ3oyAJvsuiTqU268IEF8VLOcRbkkxJ3KbUTCkh5eQ+0JpNycQcu2IPoOAuAsE
g0t2lKnYJJqA9Mb9DTkIzk66tA5g22QNqKUfxeuQrNls1pcrqlwQkqHwPboAVci+Wywq9GNw
z8BBWtXL09vTzdODdQypdYQKdzHXSPHvwrCLo/qu6gdlYI7rMp9Uoq8AhIDjE/KK21dV351D
Fn7DHb+WHOFllDqjDXmY0H3i0FsfHaYzaZUY2qSmPQ4LROjNggplQjRffnv438WPm98QkngF
ScO7kE8rRnDyVY6KhjLgdGgI9rEkDAuqQzB1YpEvm2m1OuK8BLrphWq9VbLG/StE2N5e/H53
c/3r9e4CXNAgAF6JqzoqzxSBLMN3t5ZTa89LW2RT6cHiQHr/9dhmMx0KUpQsYDe0YEXhtCsS
jjzVLNxWBxnFJzqmj+ndAfxu7O/QRUbR62JoU2jmNxLZKU+mF9AA7aWy6co7kelldBkTlcxw
pzRmf87JgGCNTNlWiWvIzGHg1IalMSYZ9MigFtDhMhuTIlMcGrvRSe9fb6bmS6XZCiUrqCNR
zLPTLLTEUhYvw2XTxlWJLI4WGGy+5HK3aXRowNRufczzq+4EGffkPStkSYugRsfLudIbJFWh
5Gk++awauG4aykFWfZPLeSgWM8sYwWSuGhHC2vCTIspKcQQPS3W48QgnstlXLc+ozUwbWaOS
F1Fi+95pMAgZdWVJQayKxeVmFjI7iI+LLLyczSytxUBCy8um/3pSYZTGbclVHWK7D9ZrAq5b
vJxZ58Q+j1bzpWXKiUWw2iCjDARDVXvPKzcgWajZUeJ1Ne+ezKLtaj4dw74abt1sdgNV58Ej
4pRMdQs5C9paCuvWrjpVrMC+cVri3PNDcuUPHwnh+J+qMonaffOpGmPgin9ClAN/BFP3tR02
S3YsurLZtkPkrFlt1vRTNh3J5TwiHVcGdNMsVuNcdGAey3Zzua8SYTFAh0uSYDZb2HYSZ8yD
JLJdB7PWzS1hoD6POQur1AFxzI0R8suQOPKf168XHNxxf/3Ubza9/rh+UUffG5iSofWLB1DM
1JF4c/8M/7TfjW2xI8P/ozJqU9R3VbZmYuOc/a9fzsbFS0hWWUtf6e3nb4n7e4gKaxPIQ6BE
5QjOvqvRfTeJ9tYVmGZwlkVl3bmIjmpIz/o+O9uAd5xn92zLCtYyqhA8ipggo5l9igx7h85z
F9tvpMdJb6OpHu6uX+FRk7uL+OlGfwp9J/D5/vYO/v+Pl9c3bXv7cffw/Pn+8Y+ni6fHC1WB
0X9tCTpO2iZVggH40KO2WhNxKjCwW1gTYRlwAiWNAcgOyUkGArIIfRoNaPJ0s1rCJ3+PiJPs
4EkPa5f1hA6NFNLxJbOnBF7v4yV6MBDgnfjYrzmYaLB6qtL9Ev/8+68//7j/J/ZX0SOevo/l
6iFjjOO0s6D+UHB9U5umo9MMt3tFOE/ZdeJF0GPKNJ28s+OQjHa0aWm1La1CMqoG93qSZEkn
T0iiVdg006GyjAfLZk4g8ni9oEpEebxaEHBZcwiZJgqIJTLG2/A5Ad9Xcr5aTeFf9aMTBTU5
IgpCTyb7gQs498Q59dMnN8GaUuAsgjAgZkrDiXEXYrNeBMspooqjcKa+Rgv2IGI0A75IqFD8
YdCn80FMaxdcX/WS05RFl7NkRR3O41fMlTw3rfXE2SaMGoohZLRZRTMdGq3XSvn24+7Ft1qM
EvT0dvefFz+f1Cartm9Frvbi64fXp4uXu//6df+iNubnu5v764c+m+TvT6qzz9cv1z/v8NOM
fRcW2ouE3NWAwRe+N/L6nU9GYbimfKQGnpSr5Wq2nQ7+W7xaUpNyzNWsrEPf3tLvK5Cvr7fc
T7YUncxPnSu2PxyHDV7ar5cCFf6FE41qSBcm4kCdbVd3puuFfkfg4i9KEPn73y7erp/v/nYR
xZ+UzPXX6ewLOzB7XxsYkWNQICeigZIUynpktLcUBejzoPsgAQgwkfYfpDOlaoKs3O1QriUN
FToPRPeEzDgPspfIXp0Pos3G00+gdN0OjPvL9Z9UAcGEF57xrfoLubj1KO10L8jkyIamroZq
x/siZ0hOvVl51q890NqRZin6ZoLiX8tmYs0FWFBcN+vukc9tCYmKQdT0WF50LBKaDIBWOZFW
xHIO/sf92w+FffykzvGLRyXf/ffdGBhvixG6NrYnJdQBR4gRGsxz5HWpYVFyotxoNe5bWXOU
ckm3sEuUrOhtX6GiQJ3fznQy7TbLUFysRgiehQvUK6mlGUoCJ7Jx5tjjKYYU9QkZIJPHekuy
b9oNJJhCpkSL5cppaDBn0W3pIDCklW51Grh3Nu4471PIT8cZIyN0nHtVRF1Javsh98Sd90+u
lJWdUgLgB9phHDqTsn2MrLTq5yVEU4myQI1AtBoXEpxXY7SeYsgqK5TMVSWxMwptvKVHIQpW
iX0pUT1yz7VfzolDtmGT2APV55niuLNcm0x8uEyypT0jAFVTawPaAf9dpx6TCY+mBxZCA/me
1PgTjdZRp9Ye3n6joscQhZDewnsyigWR8JI5TAP3Sw7XHX31GBdpxCdpxg6JWwNc0MsrzyfX
wQeoE+ocNF9OIPCY1RfXrnP2kl+zs/KCvYVoPD3iNwHMb+xn28HwRWtPyKiTvEPqkGIl5Qbh
xsFEtr9dBxtPfqNfJklyEcwvFxd/SZW4eVb//3UqfqW8TiAQ36qtg7Ql2nMHsNhWIQEuSnFl
2yvebd6yyOsgYzdRS4882QlKT2qnULsaMsJryOC7Y8b9+PzrzStu9nHWlnlbAXRMNqXOa2Sa
wi1Vl7zAKWgyox7oq2tDkjO1gzUH47o9eGw+XKt5Qhl6nJrB8SpRc+Ot92t55VxjGnhyeq9U
coK5+mnPlc9/xxRQK1Fr9OOX6CEti5F114JXoA2TywkTbei33hyiS2I0I4k8bK0tcoB/k8HM
tswjxHpGdvybDIMVlQVsoIiySqwhoxNVPO4SBNarDWV2HuiyA3R5Op9JdWmiHadVg5Pge1Vq
J0JIy4fzOw94GbHVIqCUYptkswg2ZHHDw+9/qyzfzMP5u+NWFHOUQc5qoFnPl+9+6DwSxJzl
VR2EAfGZRXESbXWu4SSZFjMSLQFVmkBLFymSs7QllwFRVkpfU8eDoHrh+oWNX6zM4pSLff/m
IzUrQpZndmbUqWfR6NhXlIpuRB6LA76HHlF7U+79jypkTho6xyn7JpDQPs6K2vAWZMsyD1tZ
HqO9grxXdeNZ2RGr1Aqk2jRZhQjukgelSZEGVGuzRUZ9ALSV8Dx7r7FCSSSMfrUC0CaXK4zT
ukXQGNXN5eUaTY5BRFesogRHg00gKy1E+0zK9RjPvYhDJHIccqKxah6cFDLdKCRvaJXZ4JXU
wbek36iZwSgIZhWznS41/CSapkF+4hqME55003ylBHrJI4EjnVwkyhs3nJBC4VCMdg9rlTaj
+k50fKSYW90eoTH6ABaczlU4EETlltQKBoJdGlrGqxFc84ocASBa0kYykii1MEvyUpJd1g/S
s4i+8B2oBI+ViFdMnuR06WROxm2MrRkLx3RGefemDL4dc9Eh+VTkQHVmdc1xsNOAA1Nxlnky
jY7jhKdQSjJWDNNAenpiGAJSQyY1gZFnHqsfxLf9vk+K/ZERmHh7SdS0Y3kS2YfQ2Max3oIf
cdpQPCuWsyAgWgEZEqIhp0Wayn7fB4HbNPVh3JxMA7YSGk/7pIxUjZ14agCngrOVlQHBrG79
gKulOJrfrc4BGCmFHR17NpJXMqHDTC2qPSvOjEyabhEdtuqHp5kq2TFB5gDqiMzxoRg3KvPF
ZHBwboioTuy31ywg2DKqpJYcu8XYFJtNlW9WZF47m4zFYr2xfRUwcr1Zr9/BoUzIU6znQCII
zW0/iY88iDqYhQE+FBBe+xTldnI5hD4qgZk3Ea99E7g9hsEsmNOc4tKFlOxqU0EOGMhPwqNi
M8diNiK72kQyZ8GCUkOmhLvAfoEI46UU1dQza0ry8TfqCB2PjCnFwmcmsUljdjmbL+hvCh7Q
lW3gspF7lldiz+3UgDY6SST3zapaixn7aCUYom5detpoojnKsGwj0+NXLsWRLrkry9h+/gEN
TJ2wSeXrO894SKenRFQ6QSLZL7ESV+tV4Kt/dyy+f/TNkoNMwyD07AQgWfowJT1kveu1583M
9gKcEpjFTXZbaYxBsJlRzgKILFJn38yzRvJcBMHCg0uylMFr2pWHV3Mj25M4SGt0zCDDtAdf
JA33TE1+WAehZwXISOmaNE4hTMoI+kPEsk3lspmtfCu4ZqLaJnV9VfE2pa7kUR/5rvTum/rf
NQQUfLh16n+fOeXDi8bW79MUo8RyA7mqjGJEEeRqv218nT3nl2vPzblNBic6+LaXgsuPFksO
72x4ZjmPgvl6Q1lJJtPCJXhikGOWYrHx8bTiOb2FebhLocPZrHHC46YUHqY3SO/wDHr90edE
r5IgJsxb6RVoBM8S5jHSIzLh9Y9GdDKgdQpMlKd2XkEHVyXezsKbBx/34VinSlidewRjRNps
UMwSmvZKrJazdeP7LN8TuQrDjyWZ75PnNOnDvsz4tubtKV1+JKXU5T7vBKS5Zyv8JpaN52D8
Dm9LcTSszl7DBZmRKOcLh7M1CO0NGoLETQPJtw4knVnLr4d0awtThnHnnurS20pXBwldyBzZ
ojsYFRrVoZhbwXLZXyzsr19udf4b/rm8cP068J5ARH05FPpnyzezhXUaGaD6swsHQ+CK1chi
10EjXolpFTvIuRnN3fYUZxlqy/EX4PSLLQbX+f0SrSgQ3FO6YDV4Te20zaotUUeZqblhlagm
Q4Al3pK9NeZ4j/XwqGmI0YB2j+PuekhbiOVyY7czYDKKVQZskh+D2cGyjw+YNN/MAtt9hmKe
4TaPulQzd1Y/rl+ub94grZsb4iLtt1NP6KE1tVayxDyFlzGJnw0+yZ5ghO3PU5iiG8HwdmKM
/A3gNbXLTVtJO9228Uz2AruIqnA5hFRlOgkbZGfqHjzukhO8gOfeJBNBp9LrmM/IvhbuEJtw
OXOZpQO3cVLVic4L806KELuACWok6wpWy+WMtSemQIUnF49Nn4IlkIruQh3Mma893zstNk30
0XhyLR5t8SrrkUXd/h9jX9LkNq40+FfqNNEvJnqaO6lDHyiSkugiRRZBSSxfGPXs6m7H2C5H
2Y6ve379ZAJcsCRYffCizCR2JBKJXC48AE9AYTvMQV8XWyTF0BfnXH0dU2pPz4+jkQWZIJy8
qa9q2gaZgge/Up101Ynui6zXXbCU7pApbZQybkrOYhmF6Q4SP0wvA926/EbDOTO2rM2u95KE
FpJlMmCUbmIRpmU6Kugo1aLzsTirhuJqbZZk18q0lrTAKNPwGGJbVBhzisjcNJn5fv0VSwEI
5wncrtS0chUFcZUUMetCVTWxMvuoCLJWfXVXcMByU8rOZiJaXq/NIZ0eKu3fwn3bdx3HWDwC
PhiLUbMZXKFv9xOJrDwU912FQTr0hsyIlVe4GgU7jUyxI5TB62ee0eoTw7WN/t0bY6vkrJCA
5sk1Id+x2oBxP0Vc9kYrF4y1PFYeyqs5LhUcASXFawTi7elgWXYeWnPYMjcqGV69ya4vaDtG
V+8YeO1WpBMCz98XXZ5aHOknqing3Ma2EuLjuz49cqZObC6V4l/sVPEBeUZIONw8InKrfmbJ
RPv0kneYW9p1Q7hdm3vqMEQDabYyEaD/qKVnM+rtLtUDAzmI6tDkGtqyUc8jM38KkjDHbQxY
RzI1kNPfHmsggr0rxtE1yuha6o4/IQ8MtkE7jY0NZd1wnKQ8o0eQZXg1Cqoz+ifwqxhStIUt
jyXctEnL0HmnYIDRzNxgHGxtNgpa710/NHd0K5t5SUCpKGOz9rVPX3Pm2q7F/mLMvnHEkikO
5inMKckTM9+8vWrLal+A+D6ijaR5dsnYkd6JeKSQy35GcDPNdfUtwauUK4JecdZ3U3oXs2Mi
RvQ519zoVpvJ8choV+5z876paZbJ45EWyMHGQ56hoEAZXGL8k37KMjjBeKRWOFvo/CvXbA2d
q/YCjc9F4J2lqLbjFgdEOW2rpJqZIk4Qq65s6xLfZvOKLIej7zM27mtpW0wiO8I5gYI8t1mN
Z42C/aJ9ipnq1i/l1uynRIPCmAKVedQw3Ua46uZyAJkFxCN8d2WDsXtk5+AFv08Dn3rlWCnE
cK2NXjEoSXXno+qEv2Dte3el4ZkGNmvP0mt5IXtW9/d0l0QuiM1ScVqoMpfsD0RvM9hVSpr5
BTPAhUNJCZL3co5tNNUqMx5+cvKE5alJP9h1G+hKxa09M8nqD11VMKd1oCVhnaGBLD1nnRcM
ssW0tdKlzcW1VvOTAOSeDo6DQeP0jYl8isMx+Kuk44Dfqtapz+BPSy9WGczpSmbEIpjglGp4
+kLYx+sfcLezrKOVyhMJGrCJa9QXCgVnbXku+LXBKB3x58u16RvaEgjpeNGW6peylZqvPeZS
6prh0RwY1vv++1Z1U9Jxtud3nUzRWIPIVT0qVnwzhEekkutbEHoo0jnvhLneVmX0NOndBUQK
jE4sgrAbl2DsgmlqLxtm4NhzW0wYROXMQ8RGLFWOPqWdxaQdsDVXdIhIOz8///j07fPz3+ia
C03i0SmpdmFIcKGjhbKrqjgfJX4yFarZIq7QWtaszOCqzwJffVydUW2W7sLAtXZvpfnb3kUM
t04VXldD1lZ0msbN4ZDLnyLwo5ZTnTHNUpSPXHVs9nJ+9xnYZovDL1a2aJMxNrnmGt1md1Ay
wP9C7+it5CKi8NIN/VCvEYCRr07E6uevjBN6+ZNRVSdk4sp5EPmAlEN4yj21ynLWl8swllFu
fIhCX/xAb8qZP7BRFxKOvZZ5mcISu+jfsZKF4Y5yKpiwke8Q3+wi6tqLyGuZqr0DgDC8WTf0
P99/PH+5+y/Glp8i9f6C7uyf/7l7/vLf548fnz/e/TZR/fry9Vd0hP+PPnU8EZc2aEKmss1H
vzNGGWEjq3iuvwFWKghM5560vObUw1AadU5aUcsngJ0MaMzPxvvmTKljOdpM1MUZFrJb3WND
ochBZjqTvrgcW2BSUZ7EQ1WtaEg+JFas6curE8hBNDhuvnHqHSoONflSznFHz9HYQVEXV0+t
Vkh82ibW7z8zTPjAwnn7jgdUtVR8Ko+nKkW7ZLWqsj4a2xTE4KqlD1qOb1p/0Lj6u/dBnDgq
7L6o2ypXYVWbyWbbnDEXiosrB/VRqLr2CGishTtR0dcoGEjNFccOTC9vustYC2y4m4odbXFj
Q9St0vkLMHxSLS6T1LA/Wr2V7dnewnawxP0BnAjtZt01hOoUwV1ZanJId+8P2jnnZ17gapON
OV3hqKu0HcbKGrNc/aMz247yPOco1KrovNku7fBL2YF61F2xsVF9f/EdSmzmyMs5KsfWu2kj
A3eYhwtcWDu1g/w5ZNy3dau3euPdRkaPB+1okdI0KuXdakojyNsg8i1q0zSlltRaNVS2Bg1V
uxsMej0Ppogv9zdIwF+fPuPJ95sQTp4+Pn37oQglKgsvG3SouViZSl6dNSa4RtGVm9Psm/5w
ef9+bBjPy6vU0qcNG+HeZ10ufXm2B9MTBztGQNZjMslBbJYeS0e9eo5PUqbWG9j/JdPEiAMr
ZZsCqyRoLF/K7YKjzDNukgR4dDwKgzEMMWqzfjJiiAL9qrpiUIa1nsc8usGF6V0jeuOTuUtk
d3C85GrZBhAkEpRoMH7dFyYHbXlXP33HBbnG/zB9dnngllnqkmHdzg8GDdafYsnJRJDxtJZ+
LFsXClrlyi1AO0xvrqv8Z+IReEtufcBBqkHEmTGz0ylkhORG4dML+cIjCCLldJeA44kZc4My
34MJLft9qsYn5uBLj2q/itKmcm2GnmlSAs4jpCHXN1plwcximwa/aYGQBKzNSn1SAIpJvSzt
BOy+d4lvMCdWXna0ZMBpkM0p9U9uzFpZBzK/qsDgS4umEpoRb62iOYj9eLW88U0B7fEJRlGh
IMJQwLcY6wb/PdhrBGHSintn8X9AXFXHzlhVrdqEqk2SwB27PqN6v9VzxOtDo/AOJgJRZEbJ
C4oMhcwpejXil4ChsKrD7nlWBGX+UQodD+VFJeVQapanZ2hGWnQiQSNOObUSlFW9QG9jX4qt
+0UnHV3HuddK6JTIHQiCwfI99WMOGtmDVibIqZ5euYBNe0+Cm4mhORToDhqhwQweLtpXlH0A
gEGAxauCSssyNylZ5GjbE+VaVvIsB8o8MEqTMX1wMgZ1MTZQy+AHcN17tlsIJ2otD1szUvel
ldEo/2otQRAx7RhBjGWBBkSbTaPVKCDbKpSEZHUTDSVtY87XIU+67FJS/IL2HOBbPL3QPyRO
i2WHKEMq5tCmzarycMC3fL1n/TDsrI3cMsMC9ICJ39WqFgFchukcDQ3tWAr/HNqjdjK9h8Ek
zlYE1+14fNBD/rY8y5ght3JZSFJumuZWOD+rXhjp58QQkxCliUzwR8RSkflS07R7HsqqYIaI
01dF5A2kzcW8DYz9JYTTsrbLOoKEPYIkiEHMz33XkM/ieOzquUKmNJ5SeTUMAqt54ANLDsyT
HFURfigqemFRzuRc099nDS4Hf/6E0Z3XgcQCUFe/Loe2lbTH8EON1AOAuRAiTzemz6xKDAp2
z19IlVJnFDfPVauYMMZdS8JNx/7SiD8x9+jTj5dXU1Pdt9DElw//V0Ksz9k9HCthkmBQLzUB
jbhSfsX0EXft6bEq93cY7udc9Lemu8fMb3wdsD6tMfPc3Y+XOwzTDNcxuHV+5Dke4SrKK/7+
f6QxUSrk+11OD2m0VWpqeUaLA2IJ4FgotqQTgAfL5+G9RNKe0PVmiuYwj6D2Sdk9qOecuDiZ
xCIrtLQ/FuB4pZ66OXrNeypDp6S4XxQgjybjLPkoapHW6cvTt2/PH++4Yta45vLvMBiwSH2r
lmfqsQXYpsiWsCPThUyBxLuX7UvZFa8Y9M7NOmltIBA8HNmix1Zwk576iz7i4iJia4cU7EgG
5zeRN1eGFWWmmQ8JcK01/tDjP47rGCMyZ0PeUCkKuk59mONAvAVoVZ+qW65RlY0+lhi9JLvq
wwWc/3xk6iOyQGwYOM8EFitRsS73ScTkzOYCWpzfC99atbC6zRJa/SvQQh5Xm14PmV76wDQa
fiAsE6bXqmlglXWZpZ0xJl1Oa2w5kqV1GuYe8J9mf7EVO4mSaiPZGfk1vnpqcHORAZ8ah1v6
aDQNDtKMNF7hWC5oaUUJuS2JdLDwt1QH1pTGOHiWqoyBvQ5JSD1AceQty7mCRq1iwE0xMnPj
CkHMVhiKZPpYvLdSpxh0VD1KNhjm8jzIoc9/f4ODzWSkU3A3nY3mZ30DHm8jKha1RczZt0NB
PX2I+Mu5P5jLWMDxTLJ1nJPE+rS22SEJY31We7gHeolrrAEW7KZ8q5JaUBsacQYd8n8xZJ7J
F9OufK+9QKoE+zx2Qo8OpDcRQDfd+kZZUAiGnu6cMNS5vNDrqEW9S8/vx763CRLGA9nEFP1d
4BPMNInDyLojcLqBwekjziovmXTR2ma3RCoT87RYihvzip6z5oZHsOcmRi0ckZDP6it+5+pr
dwJ7+vJ5qIck0oG3KkJTMbWEyYv9iwEMHWXnmstsye2wvfx0OwixdPpk0LdCXQ37AwXzzBOs
gjOXUitMO+2kn0wYazqH/7j6hKBVk0B5gdbGLoczd3LwX0zpjN4uF8HNUQAB0I30CriHy84Y
fMGljAM48/0kMZhKyRpmnp1Dh4FeqGgAoqwG7tJK/muiAyKiKNubHdOOH/IdaCmZKIEXcf30
+uMnXEY2pOb0eIRzOu0b88yr4Z5yackKyYLncm/SsN5cvArPsrz76/98mt6SjJs8UIpXFB6v
shmUMiZMzjxg2TZM4lEYRaiSP3BvNUWvS/wrhh1LcjCIXsm9ZZ+flIQ8t9kcpj8VndqESYWg
ZAJdwNhFJ7QhFG6noeCeleaoDSHWqkLq+vZSKBsshUKOESAjEiekEYHvWHrjuzaEpQ5AgLyZ
2b6yDk5IhuaRKdCMhCw1TiyNTAonsGHcWOZ06gKRLvzNreh4YljqiV1g2aVtK0mtLkP1F8o2
TwVe4WHTlS3Ns3Gf4kMY9QwGfDLZeaH5uTjSRlxVF+p1acKL777IUHQ5nkqboKijWyiXGqZG
kaHQFiJUWWFcexTAnIi2xpkLSrM+2QUhdUOaSbKb5ygJcSY4znfkUK0TS2SjyGWp0J+S+Xwm
gqo4wi386lP1Tv61G1+zvWzdPo2TAC6lzWkB2J4y+J5L2j/gk4DEkTWEai2sI0/5A9X7GZ33
4wUWKKwBjAm+OYE8+JglidJK4pIm6MtCGVrPGagRFRjiU4HQlzJCk2Q8XIpqPKaXY2GOAEa5
ihXHAQ3jUQPDcSATbXQCrjmw2n0p/saMKVmLBcvlzii+lR06jsxMg2K9F2+S8CPf3rRpRZkt
q3o/CpVH6hkjfOob3kI3iEhrX6kTcLHY+VQ5/HmN1XtKWT7TwKoL3HAwNwZH7ByqXER5IRUX
SaaIZStnCRFidcR0IArmY3OskWaXbNNAh/2Aaty8nvjiRBt3bxe45lKcQ1mbQ9L1wC2JTrHM
i32ppHULcNRAdveSMddxaIelpbvmZdig2O12oXS8duewj9xE35w8t7D2E4ToXAdNdkVC7y1C
Aog0PER0kCkHbA59l98lV3jgKibjCobq1EpQYzBMqkxEhDZEZEPs6GYAivRFkylcOWCohNh5
iv/TgujjwbUgfNeh29HDeNAOzzIFOR6AiDwLIrZXF1OKioWC+WSyX5ZpJhMzYijHQ3qen/jI
Sm1vCwtBP7Qu9SVa7LRXm7etoMngr7TsxqztSIsgjaxlF7MT3L2sL1Qz0QXJIksCiJXCpVM9
LgRCK2XUW4b3Y1rvTQTm4hiIDw6xCxeIA9VMRCXegQ57MZOEfhwys9gplJ8aoHb5qof73qVP
ezVh34w+VqGbWJx4JRrPYdQ7yEIBAmVq1g1gYoGL55f0TDXnVJ4i19/aUCW+qEwc0fi87BPq
9JjR77KAaA+w2871PGLb8Excx4JANNkJRIO0oxohTqetXSooCOY0IaYwcZaSY0uMPoVqR3WH
I4gRQJ8xNyTYAyI8l1jJHOF5lkYGXmAxk5RpLIEiZAqiSTzaKsVQEeERY4rwyImITnCMSx4w
HBXRqmyZZre13Li6LqZHSeA2Vzom/yaZNkf4tnZHUUDHmZAo9OBfEupf9IhaW3XW+uLcN4ut
hq444o7fHM4+i8Jge8CL88Fz93UmGMBWO7sYWJZvNhNYpGIsN6+2OiKI0U6ShNK0Ibkb6nhr
QAGdUIUlZMUJWXFiqXiTFVY1ySFqkj3UO5+uYhd6ZIBIhSKgGAtHkA1vsyT2o+0jG2kCb6t/
5z4TOsmSCXWwjs962N9ktxAVx9sMDGjixNnaZ0ixcwjhenKNImtmqf+GsNJk2dgm1rCy6wAd
knBHCTVtLWJh6B/QYBSjvSiiGstRm8LoHmOEHYjjs9zXY3Y4tKREUp5Ze4HLf8taW1S1ibDz
Q29TcAOKxInIi0zZtSwMHFrJthCxKkpAttpc4V7oRMTthR+2cULuG4FCi6FLlWp+hRS1n7hb
4zydcMRaE8eYQ58hnhP7FCfnGEoaENw/oU9SPwioWxUqaqKE4HF1C2NAFNXWURwFPbFl26GA
45qo4yEM2DvXSVKCd/UtC5zAozGhHyl+JxPmkuU7xyGPSER5pH/bTDHkbeFS9b2vIpcutL3V
+umoUch2WFbhl00P0purie172v1hxp96St4DMCWJANj/m2zLqc+295bdkXy5dtUFSEiERFfA
hSdwSN4NKM+16AUlmghV49vNq1kWxPUWd5lJqCNT4Pb+jmg+y05hxIPV1baZRIrN441T+ATb
YX3PyM3L6jqihGCQiFwvyROX2KM8I4tnQ8SktJfC6CbbXPmceg6x7RBOCWcA9z1q9fVZTPC8
/lRnIcEl+rp1HVIW5xjq7VshIIYB4AHFXBFONrhuQ5dct9cyjZKIDrY6UfSu55Ijfu0Tb1MX
dkv8OPaPZnsQkbg5jdhZEZ4NQXaNY7b2ORBUcKr0hPghUJGaJFlCwiY5Ud7OKklxOhBFa2Ys
Mpy+HmFcrWqsXWfcuoJwoTNVYqtOIEwxW9HRy2YK1qd9iamm5ED/E66oi+5YnDE+NOqHm8NB
5Dcea/a7oxOrTjUzFNMQY8qnETNZ08LVTJoXIvTBsblCq4p2vJXMEo+f+OKAujoefXijs/IH
GIl85DnNzI6rBVL9+veNREr0nuR/bbTN1qasvUgzLAHLvCpMTF5cD13xYCLWSb2IsOMmSrX+
5t6FxNrCgBITmOjOlEZ0/u6LBE/qWoIv5d37G8XNlnBmgQ9NVz6YYNYWaUc1m13OSUnVtFDM
vmobzUErYHNoORQ2ik/Ve19297emyTdKzZsrMZOTP7LRQ9QNRx41kuiRSNQypTv+8fwZvSxe
vyjR2zkyzdryDpiNHzgDQbNYXGzTrQHzqap4OfvXl6ePH16+EJVMfUCX5th1zW5Pvs4EQhj4
k1/A/dYcWISzThnAqeXW5vHG989/P32H3n3/8frzC/fcsfaiL0fWZMQmJHcUOmlubQKeTtb2
Ybi5pvMujUOPJpk6/Xa3hP3g05fvP7/+ae+zCHNDDavtU4lZAm9sNkZAtrZZK+Dtevj59Bmm
bGNJiYdtdAnDF5sxrdKulptnLWFt3/vB20Xx5kgvEUC2iLiHp72b9yfY8ajZvPAnMmNF39I+
O+WNZJs0Q4zgDgvi3NzSx+ZCv4ktVCKsKI9zNxZnPLGp97eFHNM+czcuKHgVBRY0e2QHNj8J
355+fPjr48ufd+3r849PX55ffv64O77AAH99UU01l8/brpjKxlPRYGVLgbbk7aw59PJYrTYi
4oV8wVG8GF/evPVrib2KRznyY4Um8t+qIFIqmNc4t2o2ZlgBi9Q1mBkow0SsC9GqpzYLQBcb
J9qRXeL7btju0mSKttGlySzN7NIUHdtEvC/LDq36iNZWA6Y1kw70ScdATugSs2N4oxMpq3de
5LxB1O/crkZty1ZvkYql9Y7ql/D5Cci2zpEvNoo+9NB1x3WIcZnCNBGY/EYARRwKsh08JMDm
OLTnIXAceptIK52HcdvqDkh2XV+SjZgNTza+BoFtKIkxnoMWE6MPt10fjeK6ntoIwpOJ3gcs
9ixLaBVEI21EdRHVbBAIvR5fzar4HF+qFsFUNc2AYbXFN3O3yu6A0gQ1jqxHv7uthouQVlSn
+bloaQaPknEc9nuyVoHeXB51kZdpX9xvssI55h4xqpO7IdnwtK9SFm+V3IG8wOAkVcZxBnbv
UwU+OatS6wndBV0Csxz2ZsO7PnfdHb31+PG/0ey2TnZuRPb5WqI/X7+539KqrGPXcTUGmoW4
OLVVGPmOU7C9Zf6FL5NazuRropcE0nTAtyNZEEYSDBy1IPgBV5XBlVf4/rEHzqgMZNrF6ncY
0EGd0flOYDaJewnrbZIJYsdPLG0u62MLcqZWqAiGQn8hcHmtfFC3OPCObYdhfMNIGxnMTpB6
2vxd6kpeTOI2x9Jf//v0/fnjKgxlT68fFXGqzbY3aIlBLm607l5r8+xGZatzqbFcK5Vk1LwX
4TZnd503igEKqhiGicUbBmtFyevA9iqJnsIYYSIaOM8DoBHPQUjWLbqSF0Nfkqq+lWTydlmX
VSo3UV5vqTGePIrHHz+/fsCQB3N+OePyUh9yLRAqQmZbfGnpAFQk5Tu2aZ5p5MyP5XSMM8yT
XH5EqIzFEVOmTHsviR2qGWsYNA2OQdAw7JQILL8uugV5qrKcflBGGhiwcOeQ/t8cPXt1atUK
43QCpmfbQUyN4bwp/bcYnVLOz8gHh9vPD3ox04XBFq1KIqFjsC4EodpwcU/QB0/cL+zFuPI7
BIdprqwIQ8fq+72/szgDcBJxma/a1JJoDImOcMBjUA82HskAVnyUM9dXnB8koBobUEZo1mgc
1XqRRwf04egBWtulubUdgxeCmCcMFpUvT2UUAM/FKbZ8CxRhOHAK+eNTj2EtcaEQ3yESeqE4
eKOkVsqOnwhg2UmfH6H2b8kIoRz/wCLZGRxh3Ds5q5tcVuEiQndLRhj3CXIcvV4Bph5OFmzk
GBuAux2EpM3RhBa+zOZnACedTVa07Jy8Qnc+AU0CE5rsnFjt+eSQRVDuYqKFAKZMzzm2j/xI
45QI4+XIsPlqLl3O3g9zHmilwgyBlupWF1b9q67oqfASiJIcXSSxQMDG1MJ/FwLdVWVVdWV7
Fy6Iox7wT2kWLBY6gAc/qVAbN+0nuSuSO7MM7kPHp1/YOToL+5DMK86x94mTqFMyXT51RsCK
zOiSjC6DONKThwsE7LBC7ExP6xEjXPY5vA4t5gAce/+YwJ6i3T04AXcUsfGsdD+EjmOoBNM9
JjHc7OKU1VsofPv604fXl+fPzx9+vL58/fTh+52IM4D6/dc/nhTNm3QhBRLLUSdwcxjEWTn8
76vRZB0M7NzJmXI4nMc90VdQj8HUfB+YeM8y+yGxRGtQYEmcaAuox4iWF31OuWIFhNfx1Fhi
XPN9kVZ1SuaHaVnkOqGcDpwHaJADKizJztXmrIEc1F5zuMVJaiHwXNpjbe4o9N+37eMJH8pm
HlLBCQFNIqr1StgICerRUHOjLRgtyuaEg9POp/dbf6sCx7duiykihbGZsNxb5Xqxv80Gq9oP
fRtvkkJzaGupz/ww2dFOuxzPo2fYzgqMtqMOz+o+oErHIsCK3rEJvCGxzhRK5El+hrEgrrzA
GKo6dC3uazOadGoSSOp05lDaXH5CB6TV3IT0XW0ZTmpuxRdXghui6hJ/xIBRlw3eWspuWbDd
W5AQx15zqvHJQg+7RZDgq4a+hNbPLQFyJo7ve7CHeZhB+6kANJyCaaebUJBpHLivD/rY6hGe
uGC6PHYpimEewqG1bUd2LMVB22Qan1ZsZeQDZvOeveoGJ8NYWV04gfR4ACviUA6YDrup+vSo
cIeVBPPTXURqS3ahx3glRvsPbv6xkFO1giB+VLiogtIFew0ZOTS3X8lQt5BEtDG6SmWJBiAR
5aG/S+jWpGf4h5J2JRKheLB8z3Ua299rKg4JM2sKiILtbrQyjaGAkJaLdptXMbJ/moJx5YB2
CsZTXUE1HH2sSYs0PYd+GL41oZwsIWMxrESqvmuFixsy3ciSVTufvFUqNJEXuylVNpygkW8p
eznWNktHsS4mB5djyAnhrvy2WlHk2e6QIRWpKNk8XcKIU59sKKCiOKK+wvt3mER0U+fb9xuT
T13GabIkCqjYnRqNfDFWUXgjt6G80NqJZGe5DWlUMX1N1KhIjzN9NBLbaM8aCNs40l46OpFH
Fz8pwFRdq4qPE9+GgjG0NCxrXZjfNxrWhoFLN6tNknBnKRpwZFA4meQh3nkWJoZKkzeZGBJ5
lBitkoTkvppUNRaMbDC/Ytp9mTISkaVw7lkOJV2BQ5II9cpmX9pDMjhki9vD5X3hOuT+aq/A
vyPLMHOkJRiGRrXbPgTaW021jD8nd219oodmscLaLJtT4R36OqecMUhkz5S+uWQnlnUFPpz1
mClhs3ShCyLaTmiEJGQfJBZljUxUX73tcWNe3aay8b6KYi6NCuskjsg1OkUSIVYCq45w36JX
kBDn900z5dwhOiNIrl1x2F8Ob3Rc0La37SN4vimQ7eG3n/FaqwmmJYrHxHVIVwWFJvHkK4aG
is8UCj2y3MgnJQBTH6PiPAtPEVoXz6cX06zB2ewMpdDRsC6ZlFAj8mxLWmCDf9EKvGjYOqko
bQwcOahUhGDpsmQJ1L5S6Dd3FROSE8J5SpXuy70UOKPL9DM2G5Vg6lXZqcsRc2FlTQ43NHpH
ZFM2dEq3lxV6dQg5N315KJVoTwUmT5VM87kZDQerrZkIR+CDKD6f35FGPPO3GNdOyXLN23OK
fc/TCxWmPSkZo2pBH10vBZp1sBClR37kFac1u5zh2h7SxyKn6akjQWAw4YnS6Dlw9foWgVYB
l4oVCeLp5wog6dLyzE5p3tx0MmWw5oGSVSkyAm78GA5/4/t93l15NmFWVEXW/76E4f/46WlW
Pvz455sc0XKapxSu+6k5VQILt+WqOY791UaAtlR9Wm1QdCmGkLUgWd7ZUHNQehuehx9ccVIg
baPL0lB8eHl9phJLXMu8aEY65fU0UA0PHFTJ+ya/7ueHGa1+pR6l/iWR3Ms31AyZE7LUg8Wb
PSNK4OXnn/789OPp811/NUvGdmIq+jRP2x7VaW60dh2RU2qTsS7PjYXRcLICE2AzWGAlbMeq
YRggxmKnCeSXqhBKLJVi6g7RYHnNmm88YnxwW03TbrcA5GGNCSptpNEtdWxa7M1iN44m+aiw
4/WbQ8lq9OhNz81Y5/1VMndb4HJA02tQrQtZGO8o4qVYdvacEDiKW9/j/tHxpsVPnf3GYBPe
QWlzik29R7hHgYVI7j5QM99ia60SBtrNO8/LP3x6fb5hSNRfyqIo7lx/F/znLjXqwe8OZVco
wyYB4ThpL9RWlt1BBOjp64dPnz8/vf5DGC4JvtX3KTdwkD5CUxmpVethMOQe3D5Eip/uSq5V
ogSNG13OXLoQBf/8/uPly6f/94xr+8fPr0QDOf30hGuyfYHt89RNPNpUQSVLPDnGiYGU01+Y
FcSuFbtLktiCLNIwjmxfcqTly7r3HDUoiI4lwyUZRL61eE+OUqHhXN/S5ofedVzLIA6Z58jO
4SouVC48Ki6w4uqhgg/lIGcmNu4t2CwIWOLYRiAdPFd5GTWmXDNCkPCHzHFI9bZB5NEVcJy/
vaRd6g6hdCFJOhbB2FkGoL+kO8exzCQrPTe0LL6y37m+ZTd0iWerD6bDd9zuYFk6tZu70O3A
s3WbU+yhPwHJXSh+ITOS78+cdR9e4eiHTxb/Sf7E9P3H09ePT68f7375/vTj+fPnTz+e/3P3
h0QqcVrW751kt1PZLwCneB0K8OrsnL8JoGtSRq7rKMExVjitv+DyCCxx8oGRI5MkZ77LlzjV
1Q88z9f/vgNO/Pr8/cfrp6fP1k7n3XCvnWsT38u8PDeaXeLmsTXrnCSBrLhfgUtLAfQr+zeT
kQ1e4KpPLAvYo/XJvLreJ/cP4t5XMJFysIwVqE96eHIDj5h0L0nMmdzjXrTUyT/a7ejp3/po
p685PKscNVLVPFuOQ1odzF8p8fO4fFIwd9j5WvkTC8hVFdWKEjOif8XLH4xWXVLcNZZGiZK0
iRDAmAB6xirAZWjJesVrZ3Ai0UpVvuSZb58wzIiV6m0Tg8xFgWUV93e/WPeX2tgW5ATrVCNy
MDrtxfocCKBnjASuVFLrNG3uXC2migKM3E70LjAm8Tz0+srW91q4tdf8UFssebnHkZdDpcrg
zADHCCahrd5YgO/sszp1MVHLSg87R1/QRUZyez8yVibIxZ7TEdDALTRw11de4hvLWIBtQ8h5
rdbi97kLRy3eNBuDN0+SunHBwcWaTYeCld0iS0h0jidGzSOXi+ebg+TxVxsRvKBnUOcZ7vd/
3aVfnl8/fXj6+ts9XPufvt7167b5LeNHFdxvNjYQrEPPseRKQHzTha7txX3Ga5pZBb/Paj90
7eu8Oua975Nh9CV0qG00AY1SHQyTavIz3MUObUfPF+olCT1vhGGyrRUswF34U8nybQYlf7pT
w3VOmyl5g0V6DlNqUw/1//V2E1SOnaEzhm0ncBki8Jf0ubNuRCr77uXr538m6fC3tqrUPgKA
OtGgm8DVjdmQkDtzO7Eim7VMkx7t+90fL69CsjFkK383PL7TK6jO+5Nnk6I4UpNHANbq25DD
jPMAbTYChzYrWfCefa8IPPUOytchXKV9fUGz5FiFRhcRbBVg034PMqxvspsoCjWpuhzgjh9e
9fL5Hcizr1Fk7b7W1FPTXZif6kWlLGt6jzYW5Z8VVXEujHWQCU3YahD9S3EOHc9z/yMrIQ0N
zMypHUIobDUepV6AjHuOiH/y8vL5O+brhbX4/Pnl293X5/+xyvqXun4cD4RC1lQZ8cKPr0/f
/kLjbyMb8vWYYgpnSZcnAFyRemwvXIk6oTD6UNlerr5mpp93tfIDXQHLMd+XFFROp4rQvAWu
OPAkClrqXo7lORBYUR1QS0etESC6rxlObquc1hP8sJ9RSq2HPaYEJqI1rcjmWnRpVTXZ73BK
qq2qmjQf4eKbo1KvvqWkMeXUuazI1NL7XhstAJDNP2Kq7jol249ds+HwO3aqi5rEXmv1N8tO
Rb6cAF4G6+nDy0fUCb/e/fX8+Rv878Nfn76pnB6+A1J85HLU3FsGCSsrN6LDQM8k56HlWrhd
QrIZnSo0smLaWiwEmK6e2bvehVNeZVQgFr5Y0woWa8naKn3UVlVTF3kqt0GuQq2hS/OCjCqH
yLTOYYOphQvYyEp9I0yIrKTCzUkEaOTa9p3l8yOGP+B76mAq0NOsvfsl/fnx0wvwxPb1Bbrz
/eX1P/Dj6x+f/vz5+oRvBBIjEsWO8Jmszf53pUzH//dvn5/+uSu+/vnp67NRj96B0eJStaJH
RifB26xI7s+5uVyLVJqTCYDZrtLsccz6wXyom2mEIXNIgufgeL/7NLquL5YCR+DBJ3XLznjM
b1aVx1Ovz/Z9vZ/XrmW1XI+F4jrMYcBULOTCYXVR/Hd9Zmymyaf1UNa00/tKE2JCPHztt20M
QRYLGr1vUz11OZAvxRLJtcwXv/hCsIjvcEB+vNu/fvr4p/xGLH1knE8zfEnCw37+91fi2U6i
PXo2rjIRlG1LVgKDl1n62zW9NbK0RMaytCrepNIcilWWNcXps/Tgklf6ukmtB3N9TI+ecgvH
CjCeX34D7luXBKa65kyv4WGwxV+rx32TnWzLFt0DMBW0zmXb9FxU83zOzKF9+vr8WVsUnHBM
9/346MDFcXCiOCWKwkhJIz4fgjChPnRJJOzCxveO0499HbbheO79MNyR6r7lm31TjKcSjWq9
eJfT5SJNf3Ud93YBzlBtFzgNrgFfXugMTFGVeTre537Yu75PN+FQlEN5Hu8xOEpZe/uUtIRV
6B8xZufhES5tXpCXXpT6jqV/ZVVioJuy2vme5epv0pa7JHEpQxSJ9nxuKhA8Wyfevc9SuvJ3
eTlWPbSyLpzQcklZiO/L83HiujBgzi7O5XQB0iQUaY7NrPp7KPTku0F0o6uXKKH2U+4mHmUe
Ls3jZBFU5TuR2o8qFNB7xw8fLB5jKuUxCC1W3yvdGa2tqsQJklNFvqpJpM2Vxy3iq991qOGR
SKIo9sj9JtHsHEXJu5DU6bkvh7Gu0oMTxrdCjqG9UjVVWRfDCHIg/vd8gXXckHRdyTAT4Gls
evQB2pHNaliOf2Af9F6YxGPo9+R2g79T1pzLbLxeB9c5OH5wdizTZTHI3RzlLn3MS2AHXR3F
7s61FbwQJXQIfIm2Oe+bsdvDTsh9ctYWW7Qod6P8DZLCP8mx/UmSyH/nDI6F4yh09XbbJdok
SR0QFVkQesXBsYyLTJ+m/7Ls5gAF0r0uyvtmDPzb9eAeLTXC3bcdqwdYN53LBmd7C03UzPHj
a5zfHHJdL0SB37tVYSEqe5hY2CSsj2PrcChEpEKJpk12V7LS5ozZbofAC9L7dosijML0vqYo
+rwZ+woW442d6OXYt0CRO17Sw6a19GyiCfy6L9LtMeek7dGlOVbfXarH6UCPx9vDcCS5w7Vk
ZXNuBtxxO095n15ogP+0BSyooW2dMMy82JMvmpqoIn++78pcTvMqCQgzRpF2VnXXKg0rY5Tl
Zy4NW3l/doK5Rq9Q1AKQHhdcAzIdiAA680Sqaq8rKAKZUNXvIteYJxV7GexSKwo2I9oP2w79
Gi9wINZiRoW8HdAL6FiM+yR0rv54uKmtOt+qVVultQn1EG1/9gPSfkcMO177x5YlkWdwuQVl
Hs+sxB1UJjaHMkFT7hzP8oQy4ekUTgLLY2lMK0Krvj+VZwyUnUU+jKYLgpm1lr5hp3KfCj/6
OLJJexpZYNSo4im3MYIsUYdUxapJuzgejs1DSyf1nPDsHIUw04kmR+CXbe56TMm6zW883F4Y
+Fx6HiI/MOqU8THtX66Q5a29fBherXbUhqX5NQ5d14ow1Y58P9envE3CINIbrCDHd7HnWjWa
y8VN1dMK8Jie8JErJ7Mwy3TYPIKxmVxJ6V89aB2uB76lqgrYEKms4+H0r4UJrPK9CTSvpFff
uJYU/Tm9luQDHk5dl7XHi/5NPbADlfmZj33ZdXA1fChq7ZZ6rF3v4stvueiChZjTkPhhnJsI
vPl48nqREb6cuE1GBKp/64yqSzg//Qfqcj+TdEWbKnrrGQECQEiXiqKBH9pVFG3lWu8QIKxT
F7VDZwsJI9QTPADp8WDnmn2ZWwKxIfb94/mhbmGTsottDoV6UNPz5wdtuXaupzGvWpcUrqUG
YOlVyViqXEmKc8+fL8aHS9ndL/q5w+vTl+e7//7844/n1ymMt6TXOOzHrM4xFeraXoBxd5lH
GSRrouZ3Dv7qQQwCFJDLcRHhN492fi0Y4XWBTTigRXRVdcKNQ0VkTfsIlaUGAub/WOzhlm9g
uuI6tuVQVJjXZcSApwoJe2R0dYggq0MEXd2h6YryeB6Lc16min6S97o/TRh6mPbwD/klVNPD
4bz1Le9FI4fZxHEvDnA9LDBqh9qB6zGtyr06J4vG+IsErUFumt6K1KJRm4Xdh727BEdVFtdf
T68f/+fp9ZnyY8CJ4ayN7ktbK2/eAgJzdGiQk0/iIv1pVrUsduVkP3xpDFp52SPcmy1Py4AG
Tq1/IHxSLOQgnsHE9NqslTXrLc284OJX2njcq6sSfoNgWv8eyONy7TzlI8wGgO+tTIEyNxeh
H9Uu8PCfJCfDLY4a8dSG7cor5QSKfYxVYRWXTAojRck1WBB/9FI6KkB66J4VsaxLa+MEneFm
I/f80VXD9CxAuniFSmsWQEbb6kPccSA+eKMW5qvb0zc45sTr1ZIF0JogdKVIs6ywrF1Wqvsa
fo++GshmhpKJKQ979WASv2GfIjsd267JDkwrDPE8JV4LJ9QeFbOP1mVZNMBnS2v/7h/JVPKA
8cURKxMjaGsoOF4JQ4WNbZq8aVy1gz1cxHyt9B5uTnDo2hjKvVJqW+ufZ2lXl2dKtAbkrYbL
aKgN463u8Z7aNa2NjQ4pGhdqX7kWa0+c5RPwe5iQYtRjBEvdVFJVTQAxqpW+aHz7uqxZdrFI
Xcgec8sUYTbZ49AHoaxQQ27ZVPmhZCcFmKfJoG/GKSoUXXpdoI6qqQudo+1hvsmrGp6bXZPm
7FQUOvsXN2rLrmNo5BmrbLuOXY2912mrn4QcNtu+WN37FsLzBW1W2Pq2vBbBGM9noqzLBUXX
Cp8Q3oxWsgMtOKuEZH57heQKhxzdyunCKJJr6hTBQqFNjEjeNCPfqp3l1PdT48n8qgoJbOrx
kN2PIECNbXb/u2MpilVF0Y7poQc67DBIrawwY8HjB3Bd5Fo+/mA9vV6buXiW0lFEyKHUpk39
iFhgC4HQhZAzv5DMSo+tbmezPm/MryVZ3Erx/yl7tiW3cR1/xXUetuY8TB1LsmR5t+aBpmSb
ad0iSracF1dP4sl0nU5nNunUbv5+CVKSeQHdsy9JGwApXkCQAEHAnoF7tPNT7PsFlAqUecKC
22Rc8E/5dyiLfXMQe1XD0SsyvIxpRkaGHrsk040fb073VGMJWijjhsv8BNMeVKMdBbq5vQeh
GiAdA5rdVm8aqkmqXHOPH//9/PT5z9fFfyzAi2p8ie74F8LNGi2IlBYQv+G2ggFTrHbLZbgK
O/OiR6JKHqbRfofGNpME3TGKl++PZo3KAqKpBhMw0gPvA7DL6nBV2p897vfhKgoJbvwEiukh
speAlDxKNrv9EruLH7sWL4OHndtpZdjxFKshYEOopyWYT5zmEGuV3igeuiyM8ZvcG1Fzwrt1
o1Bh+pEW3kiQaGM3pEqLYyVAQ+hUKJK735nSKaDfEcg0RU30Fs16iY3nHI4drRyLMoW1QUVY
vNsGGX9vic6pRG3wFhRNGsf3h8eOhKe1SyWsQDAyygj+waMY6nWBBxq5kW2zJFhiDKx9vaUD
rSq0x3mmS583ZMxUXggzyLOriRYZbwC3aoxHhdHz++X71+fr4tNofR6DIWBxM/YyYgWv0bNe
mc1YzQQofbTvg8X/RV9W/Ld0iePb+sR/C2eXwl1LSnHm2u3gFZ9dM4IUAqFTGhorSXu+Tys9
zAxfaLzG0drUkYccXKR13883BnQWZvVeM1XBr4v0vRCKSWUEudFQYgYCVJ7eSGjRd+EYHHls
kOP3PhXjdV/pWa/h5wUCfZhxhEw4pE4UgpZpHtTcqKXKVCBfE9TQ0gQcTlnemCCev79Jbw3e
klMJbowG8J1YMEYTJEQFlrgoJ3oNJ1oPfu4mULpPAspp6gic50ADi62v37MK00QnKtX9n2bx
vxF2RY7BGAVIqHkXgmoM8ittTS87bnbnCNkbeH4zRaA4VnXWuE2xh83mSr1rLHanr0PbV3gN
tCsuRwKec7CgPFUcSzLGiDP5oIcgKa09BZJBQDZ4apsLupMKRYGJLrnQOToc5ysBjOOghH7t
limbfrUMLj1prU/UTRFdwBCNQqFCE3McXGpCN2t1vW/CnagtEgjDZJUv6tpacXgnuoYc7aEv
O+55waAGBDJiXfogidEYJrexsZaaYPWSVOGwQroqM8KDYS83u2YhZ6/ypTFF20lbNmduGyRC
FWrs7jGO6QKKyZnN2SQL0hR/36jGma98L40lvmNswFyLb0h5G2EJTNKnqe56M8FCBBbZsFNo
AradeqhtNEwC5ZMfWtQUe2Mh1zVZBsvErI6WDMbJZO7hvM8rhOkl3CrPV2EaOLBkGDCYUCNP
chJ/mrg4Nl8lz9DYuY23JNWw80najLQFsYdYyH8HVpCzS6hKr5DSK6z0yll1deXjy1K3RQMg
p4c62juMXWVs7++6QqOeCjd09g6vlaGXH3o5h8XyigfR2r82FB67+gbsrkxNDz15kBCc4K0P
kKWvkTQP1u6Yyyj/6eATYxPaWp0PdbsPwsBaZkVdWLNUDMkqWeXO6UKcRYgnyhmgqzKMsZOf
klDDwTpttazpxPHfApZ5FNrfFcAN/nhtxnrCYqv9g6ShJ3aFhlfizHcEAEN1zevfrA0wDK3B
PJc7JWSkUnLIfpUPrLTgZnK+rfEWgDm1u9CsrF0SsHJCXaYi6oTqaTTg21wB7O1BVQrH0G2e
32NNcmkgBaV8SYm+45nI5KYvvkeKLn9w+6fQymiIdUThOduXQkHEbgRMQnXL5anFY0g2idSV
t6+hApgPxD6EaXixwdgbnYmNwvtYd3PQKGSwJl95zqJlvPKykItQOUGkdZ6zQhwtL7wTE1Xq
CtjMqu4329ytUjR+ZAmsD2Ujhq/qXFQD/CH2bdGOD/lvycoRWrLikWXtg7VX07ASmgpIb6RD
VQDl7mZ2ZQbDc8w7gTUn2p4E9vEQwJQw8t4DnsMI2lXxIAwLt1AC4Qftvst0WmxH0KCM8lhE
s9CIIjSVAvehxAU3dYYCDwi4E5M5hoO1MEcijtTO/gkdODFPMii1GZTU494gJ7pGs7nBiXrb
z75TB5a5RmwB1CxITIwL6YTqdpYMX+27g4EVOrsuF/sD6jEF1UxLa3pZ+Nf1I4TAgAJOvAGg
Jyt4gmI2hVDay3chNrjttRPkDLrsdhZhY7z8mkGstYC8N3ZuCeth4Xk6t82LB2Y4OSloVzei
Eb5CbL8VJ2e7kfQAL2Dsz9MDE78wjVhi65YT1loV1b1K02VUVBIq5IevoqatM/aQn53uK3nq
+3wTBnqCNQkTw9UxSMG0FaJ2aSHPQozpujsABTPt6woeH93gN5gzTjlEPLBhBanMSiF2cl3a
VLVF9EF02aTZ5+WWtZk9DPud5zJEIou6ZXWPW32A4FDDzu4ZxCM7kiJjVjO6JI1auxWitXIZ
eGp6OOdmLT0FF2tqV3MSBw00cZJqTn6S77acITi3jqnHIGAQ/NZTK+uspr0j25aYs9GdWHUg
lUn3IFQGJsRPbc1vQaWJwALmmc32Ys+uj7iCJNFifEDeeJotfXZKMbVW60sxgq3dpJKcVTJw
A9rmipetChhtxaF41znLVGyheZvjjkSSoC86do8Lqo7ZlYpdmWEuZYATu1P+YDauEac3IYwE
VxvDqYH9wq3JKzFeldOvJu9Ica4wjVKihZQrqLUDjUDlpovAvQVMTUDHUFtYNkJyyAdd1C4B
9wmD3Y0WPGsyfH+W+JpSgjmyAFKIauOAr2DydZ35bXgdphvuq7Mj8aTDtzihWFPHOzicfrFA
eQEWvNzqofhuU/SWMG711wFy2cNLTMKZETN/BlqMYIwFL4XK+64+w0e8RGKr8K9OIaV4nvtO
FvCYZ1/aM9QdhG7SKbuzp2APx5dLwyOzp324+5C3tTlIJ+JsIyfGyrrLbfk4MMH53q5AzfZA
6OhzJo4uUqKYYyjEH3iXoF758nhSNNa0lmJXDkPD+wI7dMnTmDiJ4qdBdWp2lpcGGCmmeEbj
l+wK54g75lfmPsJzHuvsaIS9cet6eb0+Lxg/eGuUupAg8NeLVqHCw5TZgu8UgttjAvFXBHIc
l1swGKzMrBvqX9BGrj5QZnrDmyPrPCfobxZvK3dFAReVuHyXylLRsItKhWRUVVVWLj6p0LVU
9I/wy4GaU22SKaO5Xq6qhNCnuTLdqiQm04m/fPr+8fr8/Phy/frju2QQJxI/VDGa+cG/jDNu
9XwnqgUfPyl/DUEmixp3b/b41N1eHm972hUMDeMxjiKXw7jPIYvm1tTalLLb1UI/EBscXJ/B
K6xQR6uZua2qr99f4a54iq2GJLqW85Csh+UShtvTrgEYBWbjiwPNtnuVAt5GGLZ6HSqGr8q5
npXshh09fhDUQYzaFoGX3YMurm7wY77F8snPBBADxS65bWkpPuMplk+j8NOBtvAER8jHS9fZ
My/xXQdMKSOA3avcYWkJ3fECgYqGXCqhia/1+wsDC/pA5cEJDnK7f8OiuWwMEtJtArSr/IBu
PzNeRca5V315tBtGKy7TCQL6rYbNPGQMWT30YbA8NC4XM94EQTK4EwuIKAldxE4sZlHZiDAa
Kg5r0SoM7iyl+raUTAFhzMwbhWGCzF7cMBENV7pl08AWDY1C8y2LgYdZfevb4EUZeerPyJFV
lHnrb7zzd+uALedrxVUIcA6WhTJL7WeW2mEWozs9utB7MPoic86LNLg3420KQTo3a7fGqbtf
bKBMlAL3GbowV16hC/r8+P27a7WSmwMt7cZJXwyPpyrgTxluUZB2w9Kw48mGVOLM+Z8L2e2u
Fiplvvh0/QviZi6+viw45Wzx+4/XxbZ4gA34wrPFl8efU3qBx+fvXxe/Xxcv1+un66f/EpVe
jZoO1+e/ZGDYL5Ds6Onlj69m90Y664yigHZyax013Wng5UhHdmTrTOqI3gkdQ5x4vGM00TGe
hZ7reJ1M/I0qZjoNz7J2ucFbC7g4Nhlmwr3ry4Yf6g4vSQrS6/dWOq6ucmXYRLEPpC0JXulo
SRNig9AtXlrs9Zd+m4RmqlFli3cjIwKfsy+Pn59ePmOxJKWIzWiKvjSUSLBoKPVWL8S8idil
wMgqHjlSBICXQ+09qykCWw4rqPF+Xrar6yMXIqs3R1aCEV4upWjI9FxQN7CqRQ5U8/z4KpbQ
l8X++cd1UTz+vH5zBlCubfFPsvSE8J6pMo6+hprx/RDrKVxnuDTXqiWnTt9SfpVErOxPVyMF
l5RRrBYsiFqF549cstLJl8cqcLNqCeC8/chOFIuYMqJCs/EAMYZz//jp8/X1X9mPx+dfv4HD
JXRg8e363z+evl2VHqFIJv0K4goLEXd9gSjtnyzlAmp3jsUS6ji3zRi/d9xMIoaAPgjW5zwH
q83OUT5unwDFhtUZ82cYhNAtLMv9AwrHonXiRvmGsZAjgLxQltPI+doTb0XKC+ndhdZq6m6e
6vOSoeFRRlyYWLpi1nf9YEm1/MhzZxaKfF93YOX1Nt2KbWsO5ygh6XlNEx8j0jOYNEtbBLFM
Gn09hXYduA0WxFHF5aWSPyipRF/KndArCO8gGrQe9UCOAxMa5va4dxZc4TviCA4UeveRbVsI
nWkdo+sTaQXTWWA44rj6A887dfjZsaHrPVeQigvBj3138hKcRWncZ0R+6YMcwgH3OpFCtQeW
3YZxMGz9RFwo/OKPKEbjdekkq0SPUShHk1UP4JMlE5xxS88X81JzuBfS3wgI7VQd6lhVEuzq
RE5/Z51mpZEW2d/pAPeU1sk3J/sid6oY5LmlnK5uYVE2f/78/vTx8VntMfh5tDlo91pwrwc3
0TNm/kJVN+orNGdGXHJSRlE8ADHgPf0F+5FKs+2odZF+16+Ybi+2C+PjstdFY+nd0l4Fl1Bz
NtAR+e7Dar1eQhWoVe/OyJicsyfZPkcDvpwb3fdW/rx0tCkRmKloKXDbBesgwK5lFN5OIq9V
BtorK90qd8Dh6AM9he8p1/c0Co8A6d6t55BFnEchml58bIZMuZwOblkOB5YgQVOKKAr53gmy
c+tc2v386/orVdm+/nq+/u/127+yq/Zrwf/n6fXjn5gJdxwuCFzKIjkCsZ0RRZv0/++H7BaS
59frt5fH1+uihBOGs5xUayCEf9FJxdCaQBVxQsNirfN8xFBW4ekJP7FOd3Mo9URDzakF1/Qc
A9rRbQXNZQtuvghoMpSmE0bmDDW92oF4lI1a5lGVfPRv2DahuC+QBeB4dtBPYzPoMr7B57zW
Xd5veGvlAaJltD7AX/e+dWmKblfaRRWq3l1ISzjBr7ZNOinS734IqLpNgHVOoHL4y9sMcVws
+eF+RwQZb0g7xNgXxvyz+AdG88zd2mX7TC3qhszqY47BVU5tBMEjT185a7EbZG26BnKM8LKA
wk8PWv22KQ+jiaitvzg0WwrJECq0czv4X3fFv6FKVmxz0ncoh8MDHhMx5kQf7P4qeDnIkp52
ajS6i55E1YOzpseud/anwLQoTkzeITttuY/tSUH1kJfaKHBnwXVsV168NSE2TABPQTF8M9XY
kgThOjHXh5MSdKx97+cMQdeg/vITNtMtMqqvSgBRjo5002aWVIU4I3OqcQvhZ0ZnVAAmo2WJ
Ft2RGEzeiLYVKSSh2Za+Ys2B5dbs0e3aDJ8AwKPM8e6XslTMXQ8RNvsqy1tLfGQn+zcujwV8
W/T5juUFrtiNRN6bjBF/YNF6k9JjuHT6IbAPmMYwNcvZluTWwnYmFA6jK3eMekgO6Km85wd7
9GF6ErHvWzJktJrCqcBqS18NVvPoe2cjPfD3DmuNAUTxSwB5MKBlmEbWnmLd8N24esgr9M2f
tksJeYKtB1ImugO2FD2nAqPMhxvbaisuL3nHqNmuEeaeOMac4V++fvvJX58+/hvPRT+W7itO
dmCz5n2JPoEWa7l2DlV8hjgf85+T7E9LsVgaGaRHzDtpV60uUTog2DbehBgYYyC4mjcdo+Sd
t4yqgMEukzPbPFIaTnqh0bqosfsySbdtwUxQgQVGCF6hVFd76Z0nRwliIzgHbVlsDkpgtohU
Qg2KN4ZdRCFa5gkGp9A8SlYxtscr9Ck0kmqqltMyifQoljdobENpu1xCMsOVBc+LIA6X0dKU
PxJVlFEc4da4Gx5T+SZssgqtrwFwEw7O4AB8iUaYkGhQSMPIKSXvMT2vflSn663gr8v7fost
E52kJe+tiWwo2YjuOR8d4dKm4P/yfWzRRJsVFhd6xsbuh4smXt7rrMDHwzD63vjrlnEoftpA
wclY/+PB4YoR/kYPgSpBQ5NItAoocoFIEbpRZsbFdmtUpBOLMiM0CFd8mcZuK0/YMy+JavM9
JJrTjY1q3WRhugztoemieBM51Y/RTvz9L2kQrVNs+5boitsro8q7YWu+4RrlAqN4aBPlCERJ
EqMxPhS6oPEmGNwFV5JhvU423gbKsDGbtbt8Yz2VpATWXYgIjzKvdmGwRU9hkgBC4CSb0CnI
eBTsiijY3GH1kcZ68WcJbHlN/Pvz08u/fwn+KU0c7X67GIPd/HiBmE6Iu+Hil5vH5j8tkb8F
c2zpiqEzREj1jmQxCI5zugmp4XxFODjCqaC51mwzMQX9G0scDGTBMrY3JtZES7fp+zIKVu5F
DYxS9+3p82d33xtdz+ydePJIc2JOGNhabLOHGn9eahBmjD+8TVV2mIJmkByEet0JFbezuHbC
I0F4DTxtek9PCe3YkXVnZ2onAltCov0cnQlvPnlPf73CveD3xasa/xu3VtfXP57APAepUP94
+rz4Babp9fHb5+urzarzdLSk4sx4p2d2j4jpIh5kQypGPTghr4zgJlZBeJFV+QZOvtHTbfjS
joYEJh3xbUcvRvBkAAgJu0rSIHUx00Fxrh+ABypUizOmiQGWw73DgZr1jMApFMw/vr1+XP7D
rNUfmxGw1bE0XxvLCRaYxdMUWl9bXVBCaMA7+K4eNmWGS3OM1S2JEA309Ctrj4ZxFDyV4fuI
djGRT+dab69mItTQPlGQ7Tb+kOthdm+YvP6g5Vu5wYdUP05P8NHhEinAo7X+NnuCZ9yM9GnC
L1Sshl6Pv6Tj1ysf/HLKOhSXrI1NbMIczmUao9e5E4V9FpvgYu9NNmZAYA2VbsztHqdBE2Eb
FBtkhNSpQE+9MWHah3SJNLXlMRWTgDWV8SIIl+mdZiiK8E7pEAs1MJEMgiDGRr6huzRGs20b
FMskcvspMVESYW2SuLszKilShOfLVdCl+IxKDDDX3UndZutlHN4bze37KHxwvyyvy9JkwL6t
rtLQZCzzBNO4S4INNsxcaH+bJaaxThQ7cbiIlgjXiIWuu59q8DgNcPoQneq8FNo2dvqdix4F
Aca4Ah6FGDxNlwhf8LhEgJmQJ+m0ccPbdVO2IlO9QeqW8JVHXvnkW4zDVxE2TBJzX2oAyeYe
J0ipFCQYH7WbtZkmzaUYVmJm780TCJJV6pF5Qhzi9yjawguDu0u+pM16E1u7KqToUVEH9EmE
qK/uRumMVxRGqOBXmMvhhJ/RzSYjQliy7IaidSvcm3W3QwKRK2x/v7sdomXN0f0tTBMUHpsp
wnRMfG8mYMtM48uOlKw4YxOuCN7i1sQT+UojWYfpvW0QKFZp7GmC2JrfLIwIkIyHq+UKHRiy
WcZvdEuQJLi2P8uc7iFYd+TeTlCu0g6bM4BHMQ6PNwicl0mI9XH7fpVigqltYrpE5DcwLSLu
lREIh8dLdMuh4dpjAptJvPep2sLzx4udiFSaIefs/vXlV6EQ3l9IhJebMEG2venS0EWwvTJR
u2Ox48Vl15Xgmt0iO5C8U0WFprxsPUpdw8socP2IlM2bTYRevs/z2a6CAZk48CZoReeXyGQD
jpMSYbNb3A37M10a48dg3lcJHmxcoxjuU3TDahPdFyHlPbUKPN4zEpmOSLMwVd4Nd2vfdeIv
n3v1XFF92CyDKLq/vfKuxFz9bhxPGqyVYKTE3Swmivn20FFdpOXdnbPp8ZCDEPqilSBnngjw
ybgnzgaENwTwckS3SF4dfVq+LKhcDbAl04XrALvOuBEkEao1desE00MH4GxESq4jTEhyCCiO
nq66LPBZQ28yx/b2mePn8OvL96/f7ousOZnH3KpMMPf8OtaB2a8PNMxxQqkEpyVxc54Rfq6o
WH+X/yPt25obx5F0/4qjn3YjurdFUteHfoBISmKbNxOULNcLw22rqxRTtmtt187U/PqDBEAS
CSTkmjgP3S5lJi7EJZEAEl+mJVsD7vKOlTLUrOVSJhILkS2KjQY0HVGkT4dr2FUG/gBcLjZM
LGRbdDXLjlnvYjA6zsZFx9esa5j9GFsL6JkYUCsvlAtTZWlGpBU0zoLgiDSYpNraq+fdjjUz
kih17H3AACtESnsH7TIusxsrlRUAkB1bRPUQXdBwVFBNr+qO0flfRzqj8Yo63jiVGZna1whQ
yhj9umAQOXp9Requtjxb6q7FFDH1KnQGXRy5x4GqXNcb3ehjg9TxziLkR0yQkxXf9w+kYo82
24pe0MWD0439bEXfajreMqPXKSjMcNKxeu35KiURTGTHmf3TZoUvTe9hI6tq+H8M9COmS+1m
1/2Y5Vl5HIM0+obCJ2c89z3VXnc7bo8qQYxv6ATSpXcHg7crtoVxij8yDP1wK1vVwhXXVFcM
PbUGZx47MyCAlAkMvLHGp37Jbg0WOcDSbs04uuXRdFrXx6zxuVD1hciXPKib2qyvNtJBFf04
oJUzoQPIH6EMG1ONx1/Pp+d3dGQ8KHK6axKAeTQfr40KXapZI/f1fuOCLcjcN1mOW+hW0qkB
rPJBxYnfYsU/pGNATbMVgMvTfAO19EQcVUK7lNWWQB8rF9fdaJv9kXhfM64mO9b43gTVEBmG
+kAcDmIP3nkZ5ZwKnFqb1lljgBYCIynSgmQw800BEHjaxJX16hFyjrPeZierDzJwm+1l1s2e
k08GBa/YzDES7mFDXqKBDdA5gONANZFC1G+4i947RMs/e6Tq+LGeQuEhSVIzKmlBQstq7how
MU2oBU23kCP7GqOYbwaxjxbbOdaZFpIGhhhcadKpYBFGNna9xW9wxyc7KtvEBxox6QCPH2Wb
ug5s54fXl7eXv9+vdj++nV5/O1x9/n56e0dPJ/TE+Ui0r/S2Se8UKMxQAU3qUk5Z67xl28zE
qRLrQGqi1qnftgk7UNV9rFQN2ae0u17/EU6mywtiBTuakhNLtMh47I5UzVxXZeIQ9YWdYXlK
cs0aO/acLcL5oUtKGupXi2Sc9bW5JAbz4KfEAOWTksRycl3SbeB+WdKuluTOS/NLmcF8hjG3
x6yTPbWHRXx4x+hNLBGJ/TkciuvlxDzv0PRlOJs5nQdEYfc79Gv1V11WG/s3PqMvyQ7tfC5f
8at7W6EE3971m/dhF6eQoB4eTl9Pry9Pp3e0t2Ni+QnmIQ5rpYnTCbmYWVmp7J/vv758hifL
j+fP5/f7r+B8IMq3C1ssA+PIUfwO9X1Xn/elfMySevZf598ez6+nB1hYPWW2iwhfSGiSB0a4
5/aBb3HNPipXGT733+4fhNjzw+knmiTAgAaCspjOyZb/OF9lKcmKiT+KzX88v385vZ1Rqaul
iUotf6sFtbdYfHko7I7T+z9fXv8hG+XHv0+vv15lT99Oj7JiMfmVs1UUmfn/ZA567L6LsSxS
nl4//7iSww5GeBYjKzNJF8vZ1DNifRkoV4vT28tXcAX7sK9CHoT6KYHO+qO0A0gbMTWN3bmM
MkrHIlELlQJCMNfxJK20A70xeNSz1ANGdNTz5vH15fxonq/sII41GuJKxC56XbHGWH/yNu22
SbEQ209TafRYz8T7+3FN5t2m3jIIM0/vLfkdh8dgY2EQyHaDQ5+L3x3bFkE4n153G4SFr7nr
ZD6Ppgs6AIyWgbB908mafiNnyiwo5zFDYBYlRBVUVMALSSG+YWD6Fhj0yLwHQfQZTXdifY8c
6jrVEJguAzLLqXTvsLOs40TMsYvt2rDlcuEJQwp8Pk8mIXMLFfQgCAOiUJ7WYvmjr8R6kV0Q
TOi4EL0ET4IQ3wW6AhH2FEEcysfEFIjIqgNndqELeLtYRLPGbQ1BX64ODr3Nyrs8pgZcm/Ol
MCwvtcE+DuYBfUUwSlh39Ba/TkQWC3xzqXm30puvaqmZXcBeYAgGgIw7ySpT2mCVTBnQzZdp
khXmixEgwcI9UK75YoIff/X7AlBCTUXtxXoJodGKW2bGPOg5CEq0Jyr/UJcso1w4xKpeo5Bw
PUfBQDtkAKh3chlgMqjPa7JkK7Z3Fr6AJQUAmejgBA645driQTmqs6lcyDWmzds/Tu8IXqkP
4oc56OgPjq+hcTf0wwD5WA7qRvsrXtexDG/wwyI4TxB7Om3l9Vw1WJxEvhPJWwBRJrK7xUHt
AWdil0XzxcQDN8HrQgJRShk0HTaJoM8B+Q9kPMffNR/w5votPr3eEi9NjcMlMfzTISPy+WGa
56ysjgQUonJY73ZVCxEGjSmo6PgQqsrruDtWAbkw8H0D4SzGioyF7CBgWpwb00T8ADg4MX+u
97UrCGFFamYe2yoveCuTgdZ7F/TRRb++DI/q5MMA1hTCxPv79HoCw/RRWMCfzbPHLMbQM5Aj
r5f2bW1vvv9c7sanwiE3Xe/BB9PDXFkuKwZXOmnS+9heRIxA9ajHZfHYRNRGjDoja8OzmTBD
6DSCNbO36wYzoNczLEQ+kcIii4mnLdZFsFxSZrchEydxupjMPTkAd+WxTkwxrpSU99SlF5Su
HHl6pNWWJchZ5qnWNi2yklYfhpQX/sFsvrCoOXbiAnJ7m88n0w+aDu7MxF8UQA/oN1WT3dgT
J+fBJFwyoQfyJKPd5Y2s5cXS5dLzKt6VbIvRaQ0+/frLEKiOJePkmD7EM3JAF0Udui8XzAEn
9vtL0pnC7NrsKFZuebprtRG8JqnIaK4yc5Zds7xrA6Qvu3UbdHG8h4a18+tZSUattVIiLsJF
EHTJobZy1S+s7RyFATGnHYNMdrdl+OVSz7ymYwgarZPpFw5WwvhuW+IT4J6za8hTQ80tZfAt
J1FJHhv3XN7gCjRiJq0h3k3tm5DCHJgF8/hAP6i3BVeeIQtGxZz2BbKkyBjmWIaCFMCLAI2w
1KQArgbWCzk31hWgcxmWwjF21nBAZFkWBdYKklbanSGpHrXZsxEAhsbV/3x6Pj9c8ZeYgLjN
SrjaEtXa9s/kzFJNrnJtou8+LLFwRsO72XJkz9hCS8PCNXnHABm/mLXEb/d6ZismuGgq0iYh
24no1B5zbSy6zfSTRt25tAFVnB7P9+3pH1DA2P6mxhwBPglmGy4mgWdGKaZQk9aDrQuyWbGl
X3e5oockjYXshWpBGDYlcaHEtN39fPXWSf3zwmKV+XnhbfSzwr4bllFmvpjPPM0CLLX8XWoY
KRUzu9+8oluxvfH2hJSQY+CSgOr4yzU6yJiKP1upYvNxjmKjlk3YTzX8KL/+6RoI6YB91DIg
tP4JoZD91OeEdvV88gvqrM2SWS28tVothk71lSBEfm4+S9HL81mJpGV8qUjw3/z404UU7S+M
pJZBRO2FLZm5r4GApTWAt7pS5udaSIqKER1vtpcKvNwjUuTwc1NoGSyiCxktIlet05LLS9ks
o0EZ/UxOWiddztBt0EvC9V6eS31osVny9CEtLc8SygvIl3dZejtYyAxD4EKZP7neStmfHg0g
O8w+UmQWeM46JMucC77TFmSKGNZKj7ctT2Sevr58FubQN/0YCh1q/ox4X0PpV7hNeExWGrgj
Q8qyWQT7M+yYKLd8dczhkc1yha7O6xuxLsbdcrI03gQCtSgccibIrOa8QyUM1PkkWCKPXp33
dBLQmqwXgISULTvUbX608801/WKyhYmoxQtFnZtYswMVNcpIjVaU7BwftQp6runU2Weikq3m
AboVAnqu6fTxrMhXdYIn46E+9nfqVOTnr1Y0FZ1LGZmsqAsrI93SarZ639Of6Pyonr4RQ1ON
FDMINYDnQaJFYHq6g39Txuue/sOgb0fiULQg5zVAc4E+1HyyuSG9rLwtMfILkQ2Rv7rn8CcU
Ha0+ZDk1DF6ux8XcfLwFDdHuG7gth7YwygHOzZxzCKE7nVBHlX2GbimqT2xyX21gPJkM3byK
Pn4ojFdoScUiK3CUFTD9lPiYXWjCLPUDKKCIjqT6AEdWkW3p4bts+YGBU8AVCqA0yzuB7GDp
091GHXdp2jUoumOMnkzIc9KNbh1REOTvOfPpA42hM4y0SA8hJjWfWGAX0Sz4KvQ84JL8JVtE
zHPSrfm+M4iR77FMBz711nbkOsd4irz4qFTmsVQGgTV1mzyy44nVfpKaBgR1saSIK7Liqw/q
TYamGrkhnekHXbTyXAIMfHI1MNjuyFF0cqMwsBdUE66WJHVFU2cUldmygjLfTiKncfhODF/v
p8FzhG1ahl1cb60MNSvysCBmgvgFAN88zS0B/ZJBpATtbp/GIm5b01yhM2iT0olhy6N4Ph1A
8/BhJp/VB3hDQ/EUrGsXCb1yiT+9xJx9kHgWzi3+0Dm9xBRVjxykg2j4s6KsKebTn5UVxjmX
TRuTgARaTAhUe+R/q0PQeYpBQqGnESR3Gl3OQvZ6tskOzpWEonZ1QyLNyodZRrlPiMHj1RI6
h2ZEDHNkadqfzyapaeBcbiheDcE8fK8FXbFldjmbFfmhqhbxHjXtvswO3SaIg8mEA5NOOJtk
HYOx4qSWnACuRXFaUqa5XMJurgtwyI3DmMosXXnqC+dCNgr8ZS8FP4ycvIAcRUR+wFhG7cUM
d56Eh+hCMy/hvUFIVaSZut+6gmq4ZJDGREMvthkgWppbSKAOmNv2de62gGsJorK7W15npUQZ
NoNdD1TfszNDQm6gn8jEHih+U6LGgeBNFjzDpFLztOj2GmjAODvgL99fH6ggG4BviB4ZK0rd
VOsUTXDexM5Nr75aVWnIidHflLoiWkCjSLhAiwOKxIXc4Ylxvb4gsGnbopmIKeQrPjvWsGD2
pWuqhJuY29TqNrdJTcLcmquJ66+UmsE77pdQ3tF+voKSuCCgo+R6P1sDOnRtG7v114gfF7LX
wyFZyzh1oJCp6RPnNV8EwZEooc0ZX1woAF44+7l1kxUsvPT5Yp40qb/TS9nArRhbrLa7VH9b
nfGWxTvHswF4Qr9EIW1IaAn1Sjr33gbLyVRzei/EGt0p1HmkMGf0FOX1cmLA+wnGYVFIlMcM
KyzWFmkuPoh2XVVc7nmIpT9HGZq2I8o4zTSsi79HpIdK19SXuhXeRX845v6EYxb7Y/qJtdNN
ExfI222gF+3eA7ylTe1KdNyljNsCrXbp0Betx4VJVRoeirE2y+mX0P2IO5KgB8sIZnrRGLvK
gYafC2lyTZsoqqIZBCy5E6tze7GVeQvQJ57xEovWDyj1M0wvfZ1vT/ueISpABxntBVCMUAnE
DzEaodfn07V7dm4tbkNCluXrygBvgY8vgGJ6wPbuqcWO0mEKFqeLQJk2t2KI6/T9uBFrsaxa
oQoaW0lDdQgyPdZV3eTjSFJAnbXDkXpWU8/DYWGtk7gvuB+oUu+IFGbEC4AbKJIbW1SajAXf
YiqY/VhQ1kRmOTaksLX2onaZTeL7WoePU37X8JLp/HAlmVf1/eeTBAO+4sMDWpQaXh1vWwBR
sfMdOXAI9hF7eAV/QU6qS/6hgJnV6DT+wWcZI17mKt/mbui7qF5CPcCFA75211T7LRV0p9oo
ccMkgehBXpr9KHgYrX0Ke/+iPujCBtkR6L+ihuIOhflSFFYqjmrWU/ST9C5pu3VWJmLWc0Io
ybjsiPWdPPZc3/WthHfNK9gc3F6ouhTpm8S78Pi5avzbbP0g7+nl/fTt9eWBhCBOi6pNwQmQ
9GgiEqtMvz29fSbAjWoxV81PlwSJvEB0iGKWRjACRVHXfQD8bgwLiwMEm6uhCMwHhaiag/6A
NzDwuq5XAUI3Pz/enl9PBnCSYohm+S/+4+399HRVPV/FX87f/vvqDRDs/xZTK7FeBev7S/5C
wD4pcLiYlQfz4FtTpecW43vT1b4P+yVqG2flprI5hckZXx0SdVCVU87JuG6GNQ1cWE5h0aWu
wA0JXlYVwjbTvDpkTmpbRleZHGtEFc0VfRVA6i6jPKwHLt8MACrr15f7x4eXJ9839/vC2htE
GDKUkV1IB1zJ1TjZRg+Qxap3vsf6983r6fT2cC/08M3La3bjq9vNPotjjdtCFA2m7HbfoiOs
pGYMju1KXtkmXP9K+IPyFRT+/xRHegTLxgf/UPNrHXHlLyo2rP/6l+/j9Hb2pthe2OyWNYqW
SeQos0xlQO+r/Px+UvVYfz9/BeD+YZK6kYSyNjUDNcBP+XGC0DZVnqeNWfLPl6BDPI1+EYQW
0GaOMZlbiEx1EEYUpolZ0jDLfQTo8o7utmH0rg0keOz1ewQ24XHSw4NQVZcfdfP9/qsY0t6p
pNwrxOoDyL4J9URLKW5hNwtbxXLL2PJ1ZpHy3LQNVQTZBOJK5LVCszA5N/D4a+DgOol1gX6u
JbncQo+xuQmk933MbVxyuUWx3UxYjcYP2XbmnBpvQ8dVU2xt4NaG0jp3PJY8wxyWpPHyadRf
I4O8KjfSTeh0C9plxUjpcSMYBeh7PEOAvvQ0BOYfZkHeBZr8wNMsJJjNyF56mmXluco1JNgl
iaJa+/bZYxZT0rXd4Hv62nN5bQhQt9cG27xGNsippxF919aGBHlvPRj622ZDmv+J2CRkJbrB
qoZjHu+C3SP1Haq8ZdtUqKV9nV9Y4KV89B/IUzc6e3nGqMyT3v44nr+en72LoEbtO9h3NVpr
EIlxNT619CL/cxZrX+9avnjdNOlNX2v982r7IgSfX8zFS7O6bXXQEaW7qkxSUPpj/5lCQiXD
qQWzYg4jETC+ODtQVo4pB6GbeM3i1FOS2Hyp+0b0EU5MRdi36V2ifhStv93gwwGMyXwymerQ
20k3tmOXHlDkH0Tuyy6r2Ih/SYrUtbkpxSLDHEk2xuFGemzjMaRR+q/3h5dnvZ9xG0IJdyyJ
uz+ZGbJSMzacraam24OmQ3wlR7hgxyiazSi6DHjm5CIZSxw3YWRBnBTyXlsK1G05CzBUueao
VRscmQD/y59D0y5Xi4g5teLFbGYGo9NkwNEiP1swhDqAEPSh0VDCpqjMSDdJYizV+hw7aViB
nKcUPV3TB7R6lyFM/A01T+DZYS5M/9Zw64DbxbQwA9MCKCUiyCOYbV0YhudAsg9lioP4DaNQ
wcIZ2xA46S7Ttos3CMVCcLINfTarHmR1ZVp48GjBhvU81k/YElBak0Z8LLWk6BPypkYxedWB
46aIQ2hig65vDHBfqAk4m4aALEsPIzlDeWO6HWcmBmIG4IMKCZCgdbERWMkgY4BgRNeQzBQX
4qeKTd++sAu7BlCIDqFzAllHBBuxChFX/dMMhWWkcURlqRz0/CASmiL8tg/kZR6wK4ZOQO0A
US17fUoDr40zSEOv0bZIz6We0bDkmEemW6gmaMwyi4jiiUviIrSkFqGObmIUr8gQ4YSc4AWj
vWYFIzThi8Tv6cT5jUFaNA1VdF3EQmfKoG+GkjCp+GsRh5tH6AkLl0j5JiwKKPNOjNommRg+
YYpguJJLQjDBo0rsfFSpEQCb4BE/8CCIzCU+BHPs+UNFr488ofr/+hj/eR2oSL+jEoqj0BOH
V+xyhe0983Zmz7cwBxB/TvuyF2w5nZkIPAXEfQ06jZ1sZgF0OgvBQc94imMsxgPl9ig489Bc
t3nMIvQilrfXyygIMWHNZhhm8P8DwrCTOJBCSwjjG8+YxWQVNFStAeQvNJ9piN8rNAcX4XyO
+OEKIS5IiudaG1iUc75gTBcYbXE+waWI32LRk+ArrGF5nuYetpqaZpliQNBlLubLLkClIsB7
+O1824IMMQtwkcsFymoVRiir1XRl9cHKEwOBJavpnA5uJVStRKoQpuWlg2CLPdhBqwBY2DaC
s11WsFkS+pId63By1AkN2nKJaXAfKQEP7DJi8LqbBN5KJ2wF+nBb0+UneRniktLykOZVDZjB
bRq3ZpiZ3o0zMXQ22EvFMZxh6i4TNrKxMO2Oi8CAfslKFh6POEl/OY2JxXGRaNLwSSoSoqdB
8zoGYA03jYw04kvUxuF0YVRQEjByjiSRr2kUxxigYicQTEKLEATm8qcoSywSTtFBBZAiT4An
gPaZk6tXEdfCqjcu0YEwNSOOAGEVGHOzf3svY5bMJ3g8mMzZAl6bHq22LdKy+xS4PWIIwLUP
F6qFbP2S7RcqljZysPL0ldwrHWD7pxEb8Bmm3EVlVg1HzuFCplJA8M1gedI3/a6pcJs0JcQ5
XOKxOuxt1YeaaxPEocI5yMBTOD2XA70rqkQHHLd2AeqTTRi6gW6Tko18tITiFpgcXJW2ELMd
5yJd7KTOMHtFOn7Gk2VANWHPNPFke9qUT0JjvClyEAbR0iFOlgD/Y2cRhEs+mYWO9Dzg83Bu
SYsMgplTb75Ykc96FHMZTRGYoabOl0tyROtyZDh5Os82j6ezqfHRh8086KfWkM8hEzsQiavq
Ge36sO3Yp/tP8ZE3ry/P71fp8yO+xxImZ5MKm8lz3+Ym1tfE376e/z47+5dlRBoBuyKehjN8
xztkoHL4cno6PwCusAw7ZNpX4MLY1buOpyU354JipJ+qkWNsRtI5jeIV82WAdGvGbnzIhgVf
TMygnjxOook9mSQNbTwUSYHeGolFJbMmA/W3rSP0bI1HaDdy+LS0TZbeC8tuJRWt6fzYR2sC
UOH45enp5dl8pkwLmLuOgutG5PpTlOcAr/t0Q6bmVoXXQyqlge29zCCw26/N+yQ3Y2sLhCtD
89CWzuLpPtLg12peiClyr0YzMuON0TubzKk7JsGI5shgnUXYgJ1NwwD/ns6t3yv0e7YKGxXE
xaZiO1iQIup4ATjIJzWZzcNp41rls/nSgTVH7NXcuwkU7IUn8KRk0VuM2WJuGfOCQj+UA9Zi
Ql9TAI98lCcs+miCbP7l0oyLltRVK2xdtOonfDoN6Tr0VmLiCZokTLqA3umCsTc3YwEX8zBC
v9lxFhhx3+D3MsSGXVwDTBRtvE1XIYpUp9dtX3SnDFiTZSgWIipDxZ/NFoG1ugnqIvKgAGv2
PKB3mmolc2o0IMZfmHhDeILH709PP/QFEdYvyb4o7rr0AGCBeKKrixvJ93PUqRu/IDAcHiJQ
dlQhWc3N6+l/v5+eH34MqPf/Fp9wlST89zrPe9cp5SIrXRbv319ef0/Ob++v57++Q0AABLQ/
CyOzzIvpVCDeL/dvp99yIXZ6vMpfXr5d/Zco97+v/h7q9WbUyyxrM43MF9KSsAjM0v/TvPt0
H7QJ0ryff7y+vD28fDuJ8WGv7vJQc4LVKZCCiCDNbRKKl8qSY8ND7AYgaVPS3FsX22COziHh
t30OKWnoHHJzZDwUWzhTbqTh9AbdUs1FvY8ms4mtfPFyJvcb6hDQXukkazxDJNnjEaJp77Rb
sSuk8Wj9HaYMjdP91/cvhonWU1/fr5r799NV8fJ8fn+xltVNOp1O6L2r4lFrLlzHTQKMRKhp
IVl1shYG06y4qvb3p/Pj+f0HMSaLMAqMrV+ya7HJuIPdyYQ+VRK80ArO2nNaHpp7H/Ubmzia
Zh2979p9SC2FPBP2qQnRIH6H6FjT+UgNhSiU8Fn089Pp/u376+npJIz776LRnIk5nVizSRLJ
5VDzFjN7jk7xWfu6yPQ081wjZHrGUT6Dx4ovF+bhbk/BzThQkY14XRznRvtn5aHL4mIqdMiE
plrmp8mxZjPwxIyeEzOalPFZZHr25ryYJ5zeA1zoPFMHQNt3KmoQQR2XPjkg8vPnL++Ucv4z
6XgUWPbcHs606HsFlke+yMSCJfQO9fKG1QlfReaZmKSskM3NF1FoHhyud8EC36ADxYMIEwvD
KVh6kCkEj3zhKRhRaNz7i99zc7bB7/nMqNK2Dlk9MW/fFUV89WSyQTr4hs/FNGc59fBs2Pvw
XCxmEoiJ5IQGR1ICMxjIn5wFoXnr0dTNZBaik81GRcbqfx9E101jjgxWoZ7N2aEpRjTusmIy
SsZ4/163oi+NfGtRkXAiaabvVRYEEenEJRiWW1h7HUWkShVTZX/IeGjqwJ5k7ckHMlIJbcyj
aYDgeSRpQTrV6eZvRWPP5uh+SpKW9CIHvAWZoeBMZxFqlj2fBcuQcg8/xGWOO0NRIqPTD2mR
zyem5aQoJiLIIZ8HWCN/El0WOrfOWt1g1aDcg+8/P5/e1VWZoTTGmX4NiFXURAeGeUl9PVmh
42d9ZVuwLYLfNcgee8mUQB0sKEJ/oUWsKOJo5oQywwpYZiRNpwvjYFfEM+UARDOwKWgzrRWk
ZzdFFEz8i4gl5qwjvRs01UWq875/fT9/+3r6l+3QDqdAe3rJQWm0BfHw9fxMDIFhkSL4UqB9
PX/+DDuF3yD61fOj2Bc+n+yKwLvhptnXLeVhYfWVev+rX41e9MdQskjSOq+64xtuOIoMn0NX
Wi+dz8LyFBvcR/Hf5+9fxb+/vbydZRQ4Z0GVen/a1RU3T8N+Jgu0n/r28i4W/TMRum8WLowT
84SLmR4hfT6bmqfykrC0r5oEifJdgxMJCxcQSEFEr6vAm0Wee6lpMDGdJto6B8PebHLPt5Lt
IPrENF3zol5JUOwnf3Yqidpdv57ewJAiVdm6nswnBe2puy7qkDxkTvKdULooJlNS88hjGO1q
z+4oi2toJo8HR50HwQUHDsWmzWjBFEoRrbEFn/kiQQErogaE1pV1k3J3Ayqp5Pmt4lhbnHZm
7RGHxgknc0OLfqqZsNYMHwZNwCX1xL6Q/qzD7unR+H2GMHyuAcyjVYTuLVxhPYZe/nV+go0W
zOLH85sKyegqALDTsNWVJayRD3g6EzquWAehOVNrFJq22UBISHxRypsNDSZ4XEV4ARSUGRlz
ALJA8xssjGhCQv4f8lmUT452UMwPGuI/jq64Quc7EG1xgja4H+SllpzT0zc4W8Nz3FTJEyZW
mrRAYR/geHe1pMakUJFZ0bW7tCkq5WmPZlJ+XE3mAXmoIVnoWrQQGwZjNMvfhrtAK5YkbDdL
SkgHAIcDkmA5o0OFUq0wJi1bOlTBoUjBkZy6Hbs1PEfFD7V6YlLvgTtkB0TpJ0xnqH2I23iN
8xl8XlwyYN7YJehXkeQHSX7a5BkFOyaZw3NIg9gjrFifd2toJiCk9SoyA/4CTUN24JS7bH1o
MSkrtjhhVhwDh2L6kmiSWD0LS06YTznALVlkNdRxBiqchd2CeR2tyCc2iqmuTHiMoNk0C5xr
vAk5x1XKJQZxnFHUPsCYVYR0IfF2rXyKmHEKLEolHmJL4GRH+rEh8KRDeVJcQMkRQnXMVvOl
f8hZmCOI53klJ1naGbyt93aVeycTT0oHslASFaIdamyxIi3jOk8sKnil2E0PmBW+4lqrD6Wx
TZBE59pfIt1OfPmC/wnORj5fsUhZGrMaf6ug7RqlpFBpCtLJ2xmf0OBVm53m5urhy/mbEY6+
XzyaG+gCdEQqZntGHukvw5lxbiKSqrB9cW28kflTgu6wDLmG9INATOsY0tUZPf4HOVErogLD
w4JPLJAyyCbQo0AWQh5VTJewLW2Mt0RmNBlgEFXeLbkvR2iAHilOfHGSIriJPk6hMHzIxELt
iQx4myKPfqCWrdjGjrQeT0OUFlfFOisxUk5eVeUWfNLyrPJUdBDZtXVmrEAG/ZBS9DqW1SeL
A17BSeMcApbq1ux30/YANPYINYuvPSu0isokfvQvwlEHAY+1OzIqh+YeeTA5uqkknMCU1nVa
wrfAara9xCKy9kdyy4XQh948wT/UzlCtg9tbN6uclW12481Mr3BuOmfxcbkqwETHmrWbHJwZ
valNIDTEUC+yK45eAhismvQXUwJmGDInNURu9KZUN+XuN0gtXtTBjNoSapEqhqDeRFoADb0w
boYIUt6sB2zJJ5rebfN96n7pp7uS6m0NZdmHL4tQRAGLOVePWNR2b3d3xb//9SafqI7LAQQg
bIRCFGzjDmAkyng5XaLY46ojGL1JBe/0qpY+bgA5J8ahcXC8lgCbVnRflFo5c9LxZzUfkKqG
Sj45yVcfJAdsI3hMaH+fnBnLtURw9qTusWJyKWSs7yMvCFnPdHMf2BEYlKQ9MYiy41YKGRYD
4skmAIGOlUyFayYKHCSTS42uwVegZjSMAwipUIWXKq5iDEIuxnF5j/kpgbGJHlNhC51WRzIl
D+XgSWjbDnKROMCsZbi5JBnVx6in27oDEmbVNPAazqpqz7bbkhDhYp4jC9DksfxQ4YLlO04Z
E9CtbZEdxQphTkuDqea8ToQqq1SFPRUsEVjKwOS4NDggZKJYpsrq0szo7Syn9moV6w7NMQR0
UGjyJ4LfCPsMzykFthctZvL9b74XdlTTEWpJreOy731jQ0lA1fCMlY9tRRGiYvu2yJwZpPlL
iaHu73Oxb+rCZSl2zNy0vRDL1RfAUlXChRZ1dEF/SbYuB6cDvEx/HYG933CrAQTxyIk5CYxd
Qi68ciCLnWRNVp7V9a4qUwg3IwYfdSYHYlWc5hU4wjZJalVJWnvuKNKwgzcQ3MfDhaFlNbGG
rakpqtshkg5aZsft7xpYvBS7oU1atFV38KsrI6eMPvq2pOQY8TTWWDYn6ivaBAITuYO7YRK9
jeikMYIBLETe6o3gB/LX0deZI5AIqAgYNbhzMF82+wV+wjNqWR+E7NWHlmrv6pSyN0FIb7aS
WkVowa2mmVLZKvYPgq0XDmx46Dfu+w15EGlKqCbAqXU8hgsadrAe3SY0WZHddAPzwsI97nF3
sdV94LAO5yxBJKon2sVegEb+1MPPdtPJghqI6qxFMMQPX2/Jg5RgNe3qcI8zVhAFji5IimUw
P1ILIivms6lWOt4h9OciDNLuNvtE1EcesumtKrafxZ6gzuo0wlUByIogNO8Q1UoJG77rNC3W
TIyooojxEMR85/uGc1O5blc+pswX8fTbHNhl6EuE/joEbRSGJAAYgw6ssiRPRQl/prGJxxuj
bhU/YZx5LlvXNo6w2qicXiEKnbyDeVJukcYp1nho1YhPLqhdF3CSIp4LOwjAXIwb1UtZG9sv
Rk1Z0fLI5wZ+9+Ct3W2TtdRkUkIFk1C+/U6MPT++vpwfjUujMmmqzADz0QQJgAq4zCZIHeaZ
txdWKoUAwf/45a/z8+Pp9dcv/9T/+L/nR/WvX/zlkdC2fcWHU6NsXR6SrEDn3etcAuuJpk+p
JaxMQAIlaCm052ojcxjngipJhnAePzlhR1MCEvxAP+0bHkWUh25ZYSWV5CquWgSyqWFT0s2e
Uz2sUvZ74RQQXZ069NzKDOKjWIBl7xQJ5pZT3sBV9soGCvLWRz4G5QlDPTMsh/68BxFRI2/m
sF3q64xLlQpc1Mvst2EtkaXa369eY6jcjEe7GmhVJbFLKQ9cNOm2NqH41CNVqwiJV93TlAP1
7dX76/2DvAu3D8ZF7a2XKxDoQlh2a2aZbY4EgKa3htuUYKiHHojEq30Tpz1UKMnbiZWzXafM
yEzp8HZn6p6e5tWtg8C2pbCiBzYX+T4RyYRlcjnf2oNpPwhIzUhe6hJ90NdLn8AZv7pi2xhn
cx4OBMIxdooKXr0GRWa9fHRY8sqOyLgXdJw+bIn4QE2UQQqW184+WBy4eg32OI73UkKLT+33
HD2vYPHuWDnAN5K/brJkS89zyU821JU2qnpRq8obgAm4HJ51ZSrRhrqySjyFCaGCyf064HlR
ZY4S8OryB0FX8BWoImLW4/g5krZOAX+JrEibUhq82OdtVufpUZ7Q2g6HBJbsHl7DbxerkCGl
rcg8mE7oV9cg4Pl+YMnwOYatQtVhMMaEAq7RFR7PKhIrOc8KgA57MgkaNhYhqErvRfHvUllz
aD73dFgfPcpkEJFZVxCTNrIVyyBzCUkyrvYgSrURjvtQgXc0bJYTY62R1FgMRtNqsaD41Ou4
89fTlbJwjZ49MPBsalMxkABKhpv3dBuJb2/av+mxDTvTttCE7sjaFl1c9Yy64pkYJDE17XoZ
nsZ7YUzeWemjzhMiQPCmHbnHFJkV61joB+tCJONgNvry+9PPOjoszRAWMG6JdatKMAvuaRdb
YRAStY6vdSwe1Rq2RLOHQ75SMKVx7ZRuIekpIuPi41uyWk26gVAs2YY++SyzXH0lreJCX9t8
qspUtYWhusY2MEcPBMfA40lRhMEs44nVJgRgBuEsBFn52BnuVGUC8Bt3SIIeHWkZN3diIa9K
rNINhugBsUIJmwV+e5S7bLWWOmjc8LJqRYOa2SeKROoRyZGQo8aHsiEPiyIxx7hEwSsyLhRg
abTPzb7CwFaSINaqVh6DSX0EmFDUMUMjuFr+ljUl8mJUZGtsKWLbpOgW72ZTtN2BciZWHOO4
UWagcCTH/e2+rTbcntsW2zseRSP6eJXor5zdWWy1tb5/+HJCzsQbLjUIachpaSWe/Cbs/t+T
QyJ166haxyWAVyu4gPDUap9sHFZfDp23cquu+O8b1v6eHuH/ZWuVPgyZFs3Agot0ijJU4KCE
qGEsGH0MllgYOTXbpn9Mo8U4T+38FaVPk1UQh4On7R+/fH//eznsusvWUgyS4PgfSmpzSzbN
xc9Xpylvp++PL1d/U80iEbmQ/yMQrrHJLGmHwobCM8j6pAG2PKRnF0jCFbmJkyqJ0JBizRY6
vGosltiE5kljPqK/TpvSrKu1sW+L2vlJqVnFcJZoRc7AhiXxNHb7rVAda7MITZJfYe5di00i
9KXYw5khEuWfcU3sz6PczjFUecZjqcUhaltaUCNTqLPbqrk2pYwNdo5/DBFyfjm/vSyXs9Vv
wS8mux/anRjaxpg0OQs/Z4HCtSPecka7rllC1EG3JTLDH2RwFv7SyZe/lkjg+azlPPQVOY+8
aaZeDnq/YPEoECJLZOWpzMpEGcAcE0rBShP60pjAL7gGiynOTSh1GEnd0pMgCGcTPyvAmTEe
Zxmdf2C3W8/wDZqeH9H5Te3h0jNoDzFTwtdNPd+aIT155SsxoFyWkcCUztF87g/06ypbdo3d
UJJKReUCZsFiOK5jJc4JyHEqdsUxbj1FF6bTvqnsz5G8pmJtxqgz+UHkrsnyPIvdArcszakC
t8KsunbJYsHJEQD+wCj3WetmLz8zYyVV73bfXGec9nQBmX27oXCD9mUGo3msgiZ0JYDv59kn
Jk3o4SR93GxX3S1ylkTbUQVjdXr4/gpPUl6+wZs6Y9HWB+BDBeG32Lzc7FPY+9rGWr+mpg3P
xPogDFsh3+igauMmSOdDn5o04GuROAK9raM2C1rAXK/vumQndi1pI9vBrnQnrfgsVkyy5H4v
3CVFyqVbXNtkMRncc9w1WxRkMvT56XWT4NRMnrT2Szw7pOJ/TZKW4vtgYxJXtdh45GJfxZTR
MlTWEaMsSbGfg52LOu1F5zetaIdYpi3EEFJxdS43SlsV1R190DXIsLpmIsMPcsorltSk7+sg
cscKRjQXZxtwNcxQJGoj3/g6qW5LwIbwHBxZu/uBBPjEJWv32Ogc2YzfFUUKw8E3LjOzwuJH
H+mtq+Omy5LjH8HEyFhe0RVwGEyfYYJAuSVlDAmejSK48H4vMHB/OT/d//Z2/vwLJbVjfNfx
HcOgf4RAaD+cuiA78wBiubIFtSTZYn/88vblXliQKB95DyrMbqHJ6WMUEBK2cULIGBJi2DYs
46n9+T29W1dVC2DP5LAy+toaJrhPhMrcp13KmvxOZuio1vRA5d83wqidmOlJz4s/fvl6//wI
CFm/wv8eX/75/OuP+6d78ev+8dv5+de3+79PIsPz46/n5/fTZ9Dzv/717e9flOq/Pr0+n75e
fbl/fTzJV5vjEqAjnT29vP64Oj+fAVLl/O97DNYVx9A98nygOzAx1MX2CtRaK/ZPxoaEkvqU
NhWebhn4ToO3flmRAfEMCaEUjWKoPEACivDlA+6poFmHFq5MDDUtsRHmABYw4qiRDdOz/e06
QDzai25f+LFq1CGcedvO70ob0lbRxBYwru9s6hHhgEpSfWNTxOhO5mKCxNXBcOqG9bXqrzDj
1x/f3l+uHl5eT1cvr1dfTl+/mSB0Slg05BZF4EXk0KWLKUkSXVF+HWf1DgVFxww3iVQXFNEV
bczDtpFGChohX62Ke2vCfJW/rmtX+rqu3RzA9dMVFcYl2xL5ajpy8NIsWOuJqYATDoFurTNu
LbXdBOGy2Of2YOnKfZ470kB0q17Lv04O8g8xKPbtTph8Dh1buJqow6fokVt//+vr+eG3f5x+
XD3IQfz59f7blx/O2G3MQMGalrgDKDVjFQ60ZEcQm4Sju7p+xBYkhpL+/n1zSMPZLFj19Wff
378AEMPD/fvp8Sp9lh8BgBf/PL9/uWJvby8PZ8lK7t/vna+K48Ltvrhw230nbHgWTsQCeSdR
imwBlm4zLrqdGFI8vckO/k9KRcZCjx76D1pLFMenl8fTm1vdtdvH8WbtVrd1B33ccqIT1o5c
3tw6ctVmTXxYLarj/64jMTPEWg7ROoleZ4nYBrZ7amnv6wpBzfq74N392xdfGxXMHYK7grkt
d4TmtCUPKnkPD3J6e3dLaOIoJDoCyG4hR1LRrnN2nYZu6yu621Mi8zaYJNnGHa4yf1veO1CL
ZErQZq6OzMS4lE8aYqLrmyIRg93fWcCfT+iEPvN4lIhIoIh+OikL3CGKbCnyLCBWyx2LXGJB
0OD6aI2f7fSqddsEnrApWuK2tox7ZSmcv31BnguDAnGni6B1rWsvCKPnFp60ehl9GANnhLIi
zfPMVeQxg2MKK/aBwXOHEVDnDjUhPmLTr2SOXmQ5Z5d6ule6VNq0qdOSOnQYenPq1KS9rchm
0/Sx1VRHvTx9A5iXs4ZAt79049ly9mr0U+UUtJy6YzH/5M5HQdu5+uUTb4dwmo3Yy7w8XZXf
n/46vfaQv3RNWcmzLq4b8sK5/5pmLWNu7J1CJUdrT6cNJI95zuhMIbEeXS7cKffPDDYtKbhx
13cOF6y0jjKle8b/q+xYlhvJbfd8xdSekqpkMjPxeJ3DHFpsSuKqX+6HJPvS5fVqHdWsPVN+
bE3+PgDIVoMkuu1cXBYAsvkEARAAZen2hD2Jy/HKOtHUU84wAR0K5G8i1AXJjOUCHQ3nlg7p
++4te65d/HH89fEGdKnHby/Pxwfh6MN8nBIfIXithIWGCTztiTOEl4qFh1NJwtldOlvcksio
k0A3X8Mo90l9kPgOwodTEKRXc63H5/gkkrnPn07T6d4x2VAimjig1jtpX+kt6tw7UxQT5kZG
WBlV7hWw9dcIXVjMK8saKZvP8nvqvHmUXifRko0vImttANl0PTA4b/sgaBdvI8Th/nAmxRoy
UlVxLTXZmi4PYCNtYYAT7WdQvSqKz5/9UH9GVKpWl0W7xw+80irbkGs/GwgjuFSyNdQjwefe
Zzk+UJl81WrVi/Ij4p2vaTI5e0MSnNeaszV1a2SjOF92yVLjSn5leBR69EjzQCGwjY53MC2L
PCtXRmFY+Gv40JHIa+KnTi4/hAKVqiGxDeUPedAEStTD5nstFVKtb/hiNlWKrRORVbfIHE3T
LXyy/ecP/+6Vrt0NkI7cLauNai7QFWuLWKxDovgZQwUavE2WsWiUwMKeX79Z4S1Npa2HHLn8
uVuoWILGtNW/k8L/9O53DBY63j3YdGS3/zncfj0+3DG/YHz6StMdAH7yp1so/PRPLAFk/dfD
f99/P9yfzP3WXYNfrtWeo1mMb778xKztDq/3LTqhjyMpX+KURZrUV69+DQ5ftclM076BgkQH
/M82a/DVesOIuQyGUxKGtYFWfm4eB+sXulAgI9ZSUhX0VExqoC1W/JDGbDNeVxbARTXMOw8V
GTJe4JPKXWu464wq69SL465NrvuiyxdQxcjN7C1nksV1VsqEvsMDKgBjVqnx5d5hS9VqjaJd
r/Jqr9YrulartaeeK2BWIMZy3qo+nvsUsVIP32+73i/l2xXgJ7+/ZkyGMLC/9eJKdnf3SCSX
KkeQ1Dt7WxaUhFmSC517wqXylC/FvC9AForNJ4q92RbaS2DhpGXOe3xCgTpFMf9+2lCEpjqG
X6MYBlK1fw14bcXHAArKm1AzQqWaQV0bqe8ZdK3EWs7k9oF6J5ATWKLfXyM4/N3vL84jGIWJ
VjGtSc7PImBS5xKsXcPeihANsPi43oX6hS8dB8XJE2/uhr71Kyv0xIj9tQj2dGwGd5pysK25
g8DAdBSTfOAHhYG19GItd9ojx+RtkllvYnasNqUCAchsNYxQnTA9Fa/xTOlFPloQOo/3HntB
eMqvxQt8ERbDUzGSGV0QQraDuCRN677tz89gR7IxoOtglSU1RrStSYFmjGxnyjbzLLlUFeYs
iQPDGAU2ZI7HN6vMji7b1FXX114/00vOhbNy4f8SPHKKzDmEDnVm132beO3HbGygd0kyY14Z
79UK7rswMqNlygYIo21rNOS3tTeXML/DItqmTRkvrZVuMatjuUz5IliCwA9SVoVzzhuNcNGl
GekvflwENVz84IdGgxGUGZ/0BuPASza4sOywF9wASHe9qa5KXg6Wjp2h0X8Y87lILifl4pdk
5TlAo9dPsTrNmugIHYkT4biRYaJZZ6n5VzyoDllPIrM5JJzLKb9T5bjuhPTv9gfZkaDfH48P
z19t9uH7wxO/8Wf+1sAaNpQJXtw8Dq/w/WvRAmajTkF4WGUg/GSny9OfJykuO6PbL2fjXFtR
O6rhREFOFK4hqc74Ak2viiQ3KlR4PHD03DroEgt0E+l1XQOdHIUwOXgn0+rxj8M/no/3TgJ9
ItJbC3+M/euWwJA1BX58Ab3+4i9sEYKC2mBEOWfY6MxCxjZAsY0MUI2vngCPT/hNrO0oSOTk
GpibJk9axWSQEEMN6csiuwrrWJYYMLzTyQa9+1xKzlEOf2u/aZTIqnu8HZZnevj15e4OXSTM
w9Pz4ws+1+MtxjxBBRZUglrKUOfa57nSDDBi3jv8O1OQLr2JLsdwwJl6JtxSiI/SAbZZpR4X
x99CAaLF47FbNImLKzPXurdzNwapIHbqe6BxQlGUDEzmP8XwpuH1BwGjHXS0bjAkYGAlztvl
VBkL68BdCoohPt7qx3bZWhBPZ6jkKIply13h6dKkYJemKYsg2szWBxwbVq10zLjVniXscKSx
cp2E4yODBRxXOWBkOcHWSj5FHbIk2btRrUG4sVS6SG1E4WQbt3nciG1OV7QTLrUnmnoRThMA
qxXI+asmmkCdY2weOjMJ82K3McpA0mCygaNeYRzXEjZBXJGHls4C6/y1SXDBxsZoi0UHWTx2
i3LcDSAJWsUg9LkaV2Ew9WubFtbecSPRu/Lb96e/v8PHG1++W560vnm488+6BFPHARcsS3Ek
PDxG7Xb6ywcfSTJS145gVJo7VK5bWKtcMG/KZTuJPPkZcjL6wltoXNM+8vnBL/RrzPvUJo20
HneXwPOB86clOyfJkGWr5jHi8yNqHcmB+f/2ghxf4BR2jwRnsgW6SyEOQwXBm3yp7nAt4kRs
tK6CKFRrA0L3k5Eb/vXp+/EBXVKgN/cvz4cfB/jn8Hz7/v37v7GXUjAWlupekVQYC71VDWt/
JvSVasDOhLsT9aWu1Xsd7dsG2o/Fov0sk+92FgOsr9z5LuXuS7vGi9WyUGpYoN2QD7Wu4k3u
EDMcEhRQlK2aTM+SuYGyt5VOxpZ2HbUOdgcqNoG719jfSLNq1DIsNBp6mtTWuktMO5Mx5P9Z
J54a0tYJt6SRLIVeqF3RgOYLq9yafITzx55p0Yq1G+6rPcd/u3m+eYcH+C3aN5kI6cbVNBKT
R/DcsTahGxPShkyAYClMD53ERZ8mbYKCNL5EZXz/2NnG+21XNQxP0ZqEDKHWD0B1Egvx5naU
ilXXY0LscKEgfLoEhuCzUh4OD0aSpU+s/dNHr1Y31aPJGID6splZVn6PwrEGPmxF7JpO5ZlZ
seH5IHCh6VayO6HFr1BXbenZYoBHLbvCivvU+noKu6qTai3TDArUMljqtgIC9jkl1SCv4joN
SDAulwYVKStMJ98EFMoVtLWwI4nqVj5XROAEV7aNkUw6CSbt5mE6BBj2oKcQOkyY4cVH11Xe
oAnHBCl7Hdr+EiO9R4rCCgL3AWa7xCfn6EIyra568oek3XF/hKNX2h40SiAEkTjIxsXhbfSB
1ZllaH/xicdw4kXAYGCQyEbmmqeUugHEk2ld6xqFF2+E3UEXmVCZXI0Cce8y34kbKxgMbvlo
D0/PyMNRSlHf/jw83tx5L+ltukK0+w+cD00BZe3SDhruQ1YuaaFOUzNrn25twiKZalyyNnx/
+Nac3rhBj/1QhAbBGcBuDVSeXxPSC/XVsMXwdglHH/eRc5Q6Fcs2aSs5rlr5EK/lGm95ETw3
BRokWLo2AhPlaJIejks6w0O2vUBzdHR+12g+bsqsxJzzkwvGM2lPk4H2gzx+wnRvZZnzM/E2
isdOTJSnHq/1HnMUBMPjzIs25K6JkY0XzGGvlAHclvsAShtxyRtGYGv7lEMrEd91RspiTri9
NfaHVUq6nU9R49VWi4apycGwvhh+MZNKjix2dW3yoL/QMcxJE9YBOnNoXAg6jG5qYYRkMGbV
cqoddAO9RkMl5nkak+oYzCxp2vH2IGrY0tQ5iICTI+JyVITFOjJlTrfVhW5Ox8/SHtS5SmCJ
TFNYu/dk21q6xeaRzUO9zpjg9RR3GppteM4TnYf5POd4siczU34dDLgpVQcsicsIVqZeGMtE
G6H6wdj9PxTrUfuiyAIA

--rwEMma7ioTxnRzrJ--
