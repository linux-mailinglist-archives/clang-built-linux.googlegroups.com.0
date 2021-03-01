Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBHV6KAQMGQEHREW36Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FBF327B4F
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 10:57:25 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id b7sf10203577qtj.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Mar 2021 01:57:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614592644; cv=pass;
        d=google.com; s=arc-20160816;
        b=cKsADGBN+m+2Cnk219HnNadPuFNOnixdEOMgoVf8NWehKeWynLW7f1B8xJ58ZJlqSL
         pXexOfVDx2DH5s6Gv4yctJHKbSyqRGPiNclRoLMa0ZAH/uRK55xJw2Z9XS7DCKS6Mmef
         ceIfKvn1MlQ3VbKgRFHe7a/1DzmXnRjL4lNeSVYJpBWtmb0nJ+qomAjOCDYqqklpD/d8
         5zldAjRMASr0vGdobFJXBWqSgrwT49eKLJP/7lJ1zpLIRbAZ7SL14kdBRs9ane62ieKG
         zfWqfZdwO86ZWmwiJw0apZ2r0OHtziHnngkZCJxBeLZufS7nPxA7MMm8KjSOAya5IDCE
         ztsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=hVVw+qJNV2O7OUjCo7QrOwwUPnSRahGIgIuSm5jrjCg=;
        b=O7ugzFc+pg7sAVUPEFnaOHbTVrlj9KhXkFkbUSdSLEGd38Ft4qP1iGTBKR2EuHETHi
         kTN89RE+FoyRzJbbHAktznHVCGMRtSNj1YH2/JhRXum4Qii403PFttzTXv6DjmikiJ0B
         W6/NmKFJtNEQmCf/VTE9WRohEPuKBdYeWBZKymvZNFNmkDrUphir0cqpLm8OdyBjrhbM
         JTpJ2eLT/YDzxKuJexGYBXJaDx6NW4z158WZxWE9529zZV0RjcjE6q3b8hXl7/BQa3T2
         N5vZKEjt2KceNDcborzF9jZtGXSsT+cisFK5was5c+nOEN3ULtThn8yeUnz1isGkBFQW
         /pag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hVVw+qJNV2O7OUjCo7QrOwwUPnSRahGIgIuSm5jrjCg=;
        b=IDAJiCcFxLRgxUSw2qyk+y2tOtWmM5Ifi+akmYVVkhPsmC1RZAkBVCRZB5Lh/WhIB+
         scRS2Ua/CHZQ5B+XrW+BP93LHY6pSm8Edy/kmFf2Bm+w59L9BQC7Hz8krZ4eK3JjFc6J
         KToEdEX1VWIAXIuRQtYAbNMFgHHE7nPbdvWIMek+qEUN0RU7L+/g/fsiuyWnmI2yTUZF
         0bdi9c+///tj30R4MQVO/Yim28ekqLCedB2C7UVrTMQ21lgHoDcjNxR6R3mkTgSPhfeg
         CjdKJRHA2bm9v+WAuEBKk/q+fFL9o+5P7zocyYZ+Q7JnHywrwwPtL990EH9EzE3KK3cB
         e8CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hVVw+qJNV2O7OUjCo7QrOwwUPnSRahGIgIuSm5jrjCg=;
        b=kr8MddKdHzNTNcTiYs5iKv2STEKeEh1YjGi8ugV5IQrVuOV3HGTXnufHEb8l4QPINf
         99p7rHoq856tqqF8rdu/eI1VBAOvbpeOnd3AHlD3P/Na6E0SozjQU9/Da3maaGJrCPAc
         +9ppupX99vTvezgnwM5xAvkA7St+Vf5A/aZiBooCCsuWXD3PKNguvly0RxVGUwscPhyx
         tJk2bVI7qAjG3Nhd9C8fzmqXRoybMo+E6jTRtCwHKzj0akYMKOFVFOvOob/9gmI3pNHI
         AZ1YTIlw+anIxdfDZnFMwfKljcKIKgc1GQHSb/Q+8HmkCgabfn8p7/mNY5uaQwm49gAb
         rc1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530m29PvH7TkOwxVsRb4JP/zAoO0GDIKjFxMRyWHRPjAqOmCw2Yb
	+354rh0V11UTUZI6NYNXu4M=
X-Google-Smtp-Source: ABdhPJxAXofbfEvfbeNrb+L0b/U0fYkrAL+fWCvdOY/pApOrFnSMYrBMccor4fxFgx41bhYGks7aCQ==
X-Received: by 2002:ad4:584a:: with SMTP id de10mr13920507qvb.50.1614592644629;
        Mon, 01 Mar 2021 01:57:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:991:: with SMTP id x17ls8680868qkx.2.gmail; Mon, 01
 Mar 2021 01:57:24 -0800 (PST)
X-Received: by 2002:a37:44cc:: with SMTP id r195mr13432879qka.224.1614592644084;
        Mon, 01 Mar 2021 01:57:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614592644; cv=none;
        d=google.com; s=arc-20160816;
        b=Lg8brpk/W/2FSDJeew4t8n0lQ1c4vzrOnfuOMWVH4TglRR61V96mgKCGq4TE25v+wB
         Oyu2G1Knnxd7aLs14Dq/Sq72ayknlTxVyQqqpYOYDj8g5+Vpaz8AFRh+NESeanBVK34U
         gebkFRCsO4i3hcOzxXwaDU//Hc1qsb8Upkzm9n6lCZAikkzVszCvcI3WjwR4PYwTJlfl
         UjtkLJ86g8SMOHEgben3iZuF5wzlgyx+9lnbO7jy47w77ly0ZdgpNwq7sB8TL2BDA+X8
         WH6B0B9qUpl2ozBtoXXHNYA1Gko5ehZ8BGtK7648bisjg8Vj9Bsr3vUts+spGZkins/8
         K8Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=JcL/yw8LsnXXhIksdS6O8OpwdIO3w25bM+qhBhx3Lx8=;
        b=oNw7HZ60/EG3zhaOBkJWKWrarPK+MVD735hUgbsnL5u8H2QjSzA/LqfBkTCJN9trLS
         F9c+AEAMJzP8KoWA7ev09K/YL7JVA/jNsEqMqlycdr3IDyPIYR0XefyTRnwiRkcqXJY7
         6ZZWhPSVQ+FguZ42IB7dzacpkVCAtWEIrC7yWp7Hk/opJfoQo4NUSGL2+KW6qYiBgOf0
         18AR3CRR6Kxtayq9tXoGqYewOisxL1wpxjHAi8tkcbusTro9CdCVHjIZTMwS2ZZIZvX9
         OYcWw2tdpPBrV/ATn48QyMfTKfNsiiufsjDvUwWzJTQH0jrqxcOhKhwB8wohpAffKjO0
         e/4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id d12si680513qkn.0.2021.03.01.01.57.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Mar 2021 01:57:24 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: +QUXwidYy/JP2Y64f7QTnfDpPCHVZbqT5rSq2xrqjdS4eyzckFuWMTTqVGws8LbXc/u+m8/vxZ
 3cFY2o3WXd6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="250466875"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; 
   d="gz'50?scan'50,208,50";a="250466875"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Mar 2021 01:57:21 -0800
IronPort-SDR: KB07lbaufVh6UwKREF7UVEEFUfTaBzHD3GIC+sal13mUVycPfHYK2aSD1KxIG9YS9cVJXaso4q
 QvXcu8ef6RIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; 
   d="gz'50?scan'50,208,50";a="406157594"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 01 Mar 2021 01:57:14 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lGfIg-0004Wl-43; Mon, 01 Mar 2021 09:57:14 +0000
Date: Mon, 1 Mar 2021 17:56:18 +0800
From: kernel test robot <lkp@intel.com>
To: Mordechay Goodstein <mordechay.goodstein@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c:183:37: warning:
 taking address of packed member 'rxchain_info' of class or structure
 'iwl_phy_context_cmd_tail' may result in an unaligned pointer value
Message-ID: <202103011712.RwExvGui-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="7JfCtLOvnd9MIVvH"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--7JfCtLOvnd9MIVvH
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   fe07bfda2fb9cdef8a4d4008a409bb02f35f1bd8
commit: a86821069e87755d8f0f98a9bc3e848098dd28e8 iwlwifi: phy-ctxt: add new API VER 3 for phy context cmd
date:   5 months ago
config: mips-randconfig-r011-20210301 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b077d82b00d81934c7c27ac89dd8b0e7f448bded)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a86821069e87755d8f0f98a9bc3e848098dd28e8
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout a86821069e87755d8f0f98a9bc3e848098dd28e8
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c:64:
   In file included from include/net/mac80211.h:18:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:195:9: error: unsupported inline asm: input with type 'unsigned long' matching output with type '__wsum' (aka 'unsigned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c:64:
   In file included from include/net/mac80211.h:18:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:7:
   In file included from include/linux/device.h:16:
   In file included from include/linux/energy_model.h:10:
   include/linux/sched/topology.h:254:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(task_cpu(p));
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c:64:
   In file included from include/net/mac80211.h:20:
   In file included from include/linux/ieee80211.h:20:
   In file included from include/linux/etherdevice.h:21:
   include/linux/netdevice.h:554:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           } while (cmpxchg(&n->state, val, new) != val);
                    ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c:64:
   In file included from include/net/mac80211.h:20:
   In file included from include/linux/ieee80211.h:20:
   In file included from include/linux/etherdevice.h:21:
   include/linux/netdevice.h:554:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c:64:
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
   In file included from drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c:64:
   In file included from include/net/mac80211.h:22:
   In file included from include/net/codel.h:48:
   In file included from include/net/inet_ecn.h:9:
   In file included from include/net/inet_sock.h:22:
   include/net/sock.h:1969:12: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           old_dst = xchg((__force struct dst_entry **)&sk->sk_dst_cache, dst);
                     ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c:64:
   In file included from include/net/mac80211.h:22:
   In file included from include/net/codel.h:48:
   In file included from include/net/inet_ecn.h:9:
   In file included from include/net/inet_sock.h:22:
   include/net/sock.h:2219:8: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           err = xchg(&sk->sk_err, 0);
                 ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c:183:37: warning: taking address of packed member 'rxchain_info' of class or structure 'iwl_phy_context_cmd_tail' may result in an unaligned pointer value [-Waddress-of-packed-member]
           iwl_mvm_phy_ctxt_set_rxchain(mvm, &tail->rxchain_info,
                                              ^~~~~~~~~~~~~~~~~~
>> drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c:206:37: warning: taking address of packed member 'rxchain_info' of class or structure 'iwl_phy_context_cmd' may result in an unaligned pointer value [-Waddress-of-packed-member]
           iwl_mvm_phy_ctxt_set_rxchain(mvm, &cmd->rxchain_info,
                                              ^~~~~~~~~~~~~~~~~
   20 warnings and 5 errors generated.


vim +183 drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c

   168	
   169	/*
   170	 * Add the phy configuration to the PHY context command
   171	 */
   172	static void iwl_mvm_phy_ctxt_cmd_data_v1(struct iwl_mvm *mvm,
   173						 struct iwl_phy_context_cmd_v1 *cmd,
   174						 struct cfg80211_chan_def *chandef,
   175						 u8 chains_static, u8 chains_dynamic)
   176	{
   177		struct iwl_phy_context_cmd_tail *tail =
   178			iwl_mvm_chan_info_cmd_tail(mvm, &cmd->ci);
   179	
   180		/* Set the channel info data */
   181		iwl_mvm_set_chan_info_chandef(mvm, &cmd->ci, chandef);
   182	
 > 183		iwl_mvm_phy_ctxt_set_rxchain(mvm, &tail->rxchain_info,
   184					     chains_static, chains_dynamic);
   185	
   186		tail->txchain_info = cpu_to_le32(iwl_mvm_get_valid_tx_ant(mvm));
   187	}
   188	
   189	/*
   190	 * Add the phy configuration to the PHY context command
   191	 */
   192	static void iwl_mvm_phy_ctxt_cmd_data(struct iwl_mvm *mvm,
   193					      struct iwl_phy_context_cmd *cmd,
   194					      struct cfg80211_chan_def *chandef,
   195					      u8 chains_static, u8 chains_dynamic)
   196	{
   197		if (chandef->chan->band == NL80211_BAND_2GHZ ||
   198		    !iwl_mvm_is_cdb_supported(mvm))
   199			cmd->lmac_id = cpu_to_le32(IWL_LMAC_24G_INDEX);
   200		else
   201			cmd->lmac_id = cpu_to_le32(IWL_LMAC_5G_INDEX);
   202	
   203		/* Set the channel info data */
   204		iwl_mvm_set_chan_info_chandef(mvm, &cmd->ci, chandef);
   205	
 > 206		iwl_mvm_phy_ctxt_set_rxchain(mvm, &cmd->rxchain_info,
   207					     chains_static, chains_dynamic);
   208	}
   209	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103011712.RwExvGui-lkp%40intel.com.

--7JfCtLOvnd9MIVvH
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--7JfCtLOvnd9MIVvH--
