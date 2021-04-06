Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFHNV2BQMGQEAKO3G2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id A556A3549F4
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 03:17:09 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id o70sf11557635qke.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Apr 2021 18:17:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617671828; cv=pass;
        d=google.com; s=arc-20160816;
        b=HuT6OzchIB6Jf3cDbreN1sg+vU30yGwBPq+8tCPPT1Lrbil5bCsreT1IWR26wkDkBI
         F2TBZ5Fzh4jbzplPTd/M1f4JUIcApQgYfyu7rpsYN9sDaPpZZutLg0jXDyy9OtxPROzz
         mYuIqjvkUOkTBD++y4Gx+uKmEdIDKhJmxlAsq7CuklWV7VCq+Jc/3hUZcwTvIrR9q3hX
         Vt10nNEpOYvilB6tjSJlmqyYhnw44Fs2j84+cv3SWw4owoIgX83uhOx7LLR88Sd7xuij
         UDi5jrUNUK3OGOmGHBKb2I7d9zCeiB+tXxBAxFpqnxn91OQ5agPdKSuIK2KGATI3ocv8
         sAMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=2dzAxt7Qkbw/NHU+xDJETox28GwRXOVyjCXFCMAoIXM=;
        b=go0lHtQQBq/BcgmhdB8qGgG9i+QIyjKz0T9OW6TKowAaERVTduQdJoz/9607KsbMIn
         QKkq6DRbLMOg9jGR+Utbn3C9MbxMTpr6lkVMIphwPaW34qR2Xn7ynUIFfKnKzAylGHBM
         21zSdMus0uqU+IR48Gb8rqdt5vQq3YALIBvmuURjXc/9jKGM9Pj34RSDEDO7DJPFEvS5
         En79hFCYATzNchtNbzt+7TxaIhZwsFnxun8jc+I+DzPeQFaJ94zO485pHQ8wbo1j7Ync
         Flk1jWOq4JAkFyW5mi2iCZxbiG59gLJhlUuHX1iNMD14CPr+4drkedz4B6HCKFPLofoV
         HPXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2dzAxt7Qkbw/NHU+xDJETox28GwRXOVyjCXFCMAoIXM=;
        b=kD04sqEa06k7QKH/jxqD+BpecHNeHDZRFek9nb96g71zljhbkgQpqluU3amXzNCQhX
         p0DBY29/I8KmjHRfX0QjBI0WUQ2lo7FO8O07wnUn9LcKs6TR0VpOEx73hn/F1R4nQjkZ
         1jI4JVNX0TrTfklP9bctreUpD5FcwiYFIYkgoOfldyDmuQmdjGqpRuEl/bY6odSmRQuc
         Qu1EW05bvAIPJsTagLnw8ClqYntnOIPNZwDpBpRSEsqZruyHPXunKU3YMt8ZOPHJNlNA
         vMNDCdJQ7RwUxMTYMeifVmABtEyelgudFzHlrFoqFJozmr+rxP7JmwIesmfYPa5uQNe6
         4AFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2dzAxt7Qkbw/NHU+xDJETox28GwRXOVyjCXFCMAoIXM=;
        b=M8sAJWozvyI0uElB0OIw/zUYalFIgQX7LVEopCrQ7uKAGRMrHcoOE7AYJ9MOmUnGtd
         nSjBwtxSRfnybMLjkaQOysrYp7qvwGj5k7E8PeXpof4FCGM6vv15jb0zI0yEA9YGNDwO
         AVR53ukjhaqf5QMVPzLq6jkJMC5f64SVceTXdXneBkiguZ6S20O6YmkS6gGKXX2FFOBt
         q8EHDVPn4svi8bEsEnrFyHToD5XFQ97XInWnxgpcvzcvN5QFvqUiI/Eo48Uz6vTfgXh0
         UBAiMNypn9xAt19yvNnoeR3Q5c6s9ManKCM4WGhuAAUZijBSR95CN4ry2GVao+AD9wgh
         tT7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531y9MpGxH/Kj6qLGE/IY+bLYsVW8hVOGyHHqDF+rrvYWe3frMvK
	HrgAYoLD1BSzOiKX2MdrnsE=
X-Google-Smtp-Source: ABdhPJxrqAlwSo+ieNcD52nC8MEWnIISnfx5TY7ZV210twsp0VPthipgfRC9ZNG+xf23njqF2tOQkA==
X-Received: by 2002:a05:620a:228:: with SMTP id u8mr27218684qkm.443.1617671828657;
        Mon, 05 Apr 2021 18:17:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6c3d:: with SMTP id k29ls7117841qtu.5.gmail; Mon, 05 Apr
 2021 18:17:08 -0700 (PDT)
X-Received: by 2002:aed:3001:: with SMTP id 1mr25327657qte.344.1617671828123;
        Mon, 05 Apr 2021 18:17:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617671828; cv=none;
        d=google.com; s=arc-20160816;
        b=EzyVViVPP/kIRJnq3aay8apNOwZMZt/hxLFJngPcqTCHZr6cnE8jroHDwQbXfL3NWu
         0wJM4AlmKP66YYDDScUk7VjxCqJJIAfYQZ2qkaIbNdkwTJlx7yvfNs87ORDd/3N5axur
         n57U1/9TdAWbJNLGOqJcBkpWKWsp7jq1MvdglvziOKGjRApu+k74YHV8p00VE1x5XafK
         V2RLHLDBHQX/esXNtxe604NzFvYOM/pkKsuVsurk5kCOFggyKDgCX3m9BgtoDFZEIpPe
         O7idMd866Tfy/IGGLA1CXXjDdHKcgAkWMzxDH81qYSEPZfVknIZ7/i9a04otl+/Jwflj
         YDXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=q/nJYieZkdVnESwzmZ9Kuee841zaVee6BE99dDE7szM=;
        b=EO3cZcQltX8IvXtjq2NKPzGot3PW4hgZcz6Gr/FV97whExYv+B5PLe6+SIZtTm54hD
         DGvO+lK0yqWA3ld2xcSV5m4x7n9bcoABLD9HbLcnBCOX7a5CJlNzqcG5hxaXhBvl3nct
         /b1r5GwxaLU5ZCadrW46+ywRuKEb0sxmzYgD/H2pED6pNNwGhv1N8yJlFvv4Jp9Bu/++
         XJujeL2pAv2mT1NK1LPWTuji+Nr1zil8WynpEFR1N6KDenwZBlsux9UqH0Hs0Qub6VUI
         N9yGGV0DO+nBjggd/JsvCXtzfsiKZE8m0Ks3FmOiFbHhrJ9dz5WgY9gjd1mPiQsXZ5Tx
         eMVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id r26si2362497qtf.3.2021.04.05.18.17.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 18:17:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: 8IvXFiYv/4tTX0XImBMYY+9pdxJKXaNGUNtiQbt4s0kowTAsHNjwiSZaWl+36ZBmV3iI0IOqa7
 Z3micNuur1qw==
X-IronPort-AV: E=McAfee;i="6000,8403,9945"; a="193069257"
X-IronPort-AV: E=Sophos;i="5.81,308,1610438400"; 
   d="gz'50?scan'50,208,50";a="193069257"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Apr 2021 18:17:06 -0700
IronPort-SDR: 2ebNu8Qa0RjjiFTfVOC6FWvyHA0hVi7+e3nUQ/HDX/tgjGr03Z/ukhjHXQFbEq9jCCnb0JLkgl
 2qXt4j5VUv9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,308,1610438400"; 
   d="gz'50?scan'50,208,50";a="609077945"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 05 Apr 2021 18:17:02 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lTaL0-000Azv-BI; Tue, 06 Apr 2021 01:17:02 +0000
Date: Tue, 6 Apr 2021 09:16:31 +0800
From: kernel test robot <lkp@intel.com>
To: Alexey Avramov <hakavlad@inbox.lv>, Stillinux <stillinux@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	akpm@linux-foundation.org, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, liuzhengyuan@kylinos.cn,
	liuyun01@kylinos.cn
Subject: Re: [PATCH] mm/vmscan: add sysctl knobs for protecting the specified
Message-ID: <202104060958.P5b08G8p-lkp@intel.com>
References: <20210406065944.08d8aa76@mail.inbox.lv>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline
In-Reply-To: <20210406065944.08d8aa76@mail.inbox.lv>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alexey,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linux/master]
[also build test WARNING on linus/master v5.12-rc6 next-20210401]
[cannot apply to hnaz-linux-mm/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Alexey-Avramov/mm-vmscan-add-sysctl-knobs-for-protecting-the-specified/20210406-061034
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 5e46d1b78a03d52306f21f77a4e4a144b6d31486
config: s390-randconfig-r006-20210405 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a46f59a747a7273cc439efaf3b4f98d8b63d2f20)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/a5eeb8d197a8e10c333422e9cc0f2c7d976a3426
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Alexey-Avramov/mm-vmscan-add-sysctl-knobs-for-protecting-the-specified/20210406-061034
        git checkout a5eeb8d197a8e10c333422e9cc0f2c7d976a3426
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from mm/vmscan.c:20:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from mm/vmscan.c:20:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from mm/vmscan.c:20:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> mm/vmscan.c:2819:7: warning: variable 'clean' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
                   if (reclaimable_file > dirty)
                       ^~~~~~~~~~~~~~~~~~~~~~~~
   mm/vmscan.c:2822:25: note: uninitialized use occurs here
                   sc->clean_below_low = clean < sysctl_clean_low_kbytes;
                                         ^~~~~
   mm/vmscan.c:2819:3: note: remove the 'if' if its condition is always true
                   if (reclaimable_file > dirty)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   mm/vmscan.c:2812:47: note: initialize the variable 'clean' to silence this warning
                   unsigned long reclaimable_file, dirty, clean;
                                                               ^
                                                                = 0
   13 warnings generated.


vim +2819 mm/vmscan.c

  2706	
  2707	static void shrink_node(pg_data_t *pgdat, struct scan_control *sc)
  2708	{
  2709		struct reclaim_state *reclaim_state = current->reclaim_state;
  2710		unsigned long nr_reclaimed, nr_scanned;
  2711		struct lruvec *target_lruvec;
  2712		bool reclaimable = false;
  2713		unsigned long file;
  2714	
  2715		target_lruvec = mem_cgroup_lruvec(sc->target_mem_cgroup, pgdat);
  2716	
  2717	again:
  2718		memset(&sc->nr, 0, sizeof(sc->nr));
  2719	
  2720		nr_reclaimed = sc->nr_reclaimed;
  2721		nr_scanned = sc->nr_scanned;
  2722	
  2723		/*
  2724		 * Determine the scan balance between anon and file LRUs.
  2725		 */
  2726		spin_lock_irq(&target_lruvec->lru_lock);
  2727		sc->anon_cost = target_lruvec->anon_cost;
  2728		sc->file_cost = target_lruvec->file_cost;
  2729		spin_unlock_irq(&target_lruvec->lru_lock);
  2730	
  2731		/*
  2732		 * Target desirable inactive:active list ratios for the anon
  2733		 * and file LRU lists.
  2734		 */
  2735		if (!sc->force_deactivate) {
  2736			unsigned long refaults;
  2737	
  2738			refaults = lruvec_page_state(target_lruvec,
  2739					WORKINGSET_ACTIVATE_ANON);
  2740			if (refaults != target_lruvec->refaults[0] ||
  2741				inactive_is_low(target_lruvec, LRU_INACTIVE_ANON))
  2742				sc->may_deactivate |= DEACTIVATE_ANON;
  2743			else
  2744				sc->may_deactivate &= ~DEACTIVATE_ANON;
  2745	
  2746			/*
  2747			 * When refaults are being observed, it means a new
  2748			 * workingset is being established. Deactivate to get
  2749			 * rid of any stale active pages quickly.
  2750			 */
  2751			refaults = lruvec_page_state(target_lruvec,
  2752					WORKINGSET_ACTIVATE_FILE);
  2753			if (refaults != target_lruvec->refaults[1] ||
  2754			    inactive_is_low(target_lruvec, LRU_INACTIVE_FILE))
  2755				sc->may_deactivate |= DEACTIVATE_FILE;
  2756			else
  2757				sc->may_deactivate &= ~DEACTIVATE_FILE;
  2758		} else
  2759			sc->may_deactivate = DEACTIVATE_ANON | DEACTIVATE_FILE;
  2760	
  2761		/*
  2762		 * If we have plenty of inactive file pages that aren't
  2763		 * thrashing, try to reclaim those first before touching
  2764		 * anonymous pages.
  2765		 */
  2766		file = lruvec_page_state(target_lruvec, NR_INACTIVE_FILE);
  2767		if (file >> sc->priority && !(sc->may_deactivate & DEACTIVATE_FILE))
  2768			sc->cache_trim_mode = 1;
  2769		else
  2770			sc->cache_trim_mode = 0;
  2771	
  2772		/*
  2773		 * Prevent the reclaimer from falling into the cache trap: as
  2774		 * cache pages start out inactive, every cache fault will tip
  2775		 * the scan balance towards the file LRU.  And as the file LRU
  2776		 * shrinks, so does the window for rotation from references.
  2777		 * This means we have a runaway feedback loop where a tiny
  2778		 * thrashing file LRU becomes infinitely more attractive than
  2779		 * anon pages.  Try to detect this based on file LRU size.
  2780		 */
  2781		if (!cgroup_reclaim(sc)) {
  2782			unsigned long total_high_wmark = 0;
  2783			unsigned long free, anon;
  2784			int z;
  2785	
  2786			free = sum_zone_node_page_state(pgdat->node_id, NR_FREE_PAGES);
  2787			file = node_page_state(pgdat, NR_ACTIVE_FILE) +
  2788				   node_page_state(pgdat, NR_INACTIVE_FILE);
  2789	
  2790			for (z = 0; z < MAX_NR_ZONES; z++) {
  2791				struct zone *zone = &pgdat->node_zones[z];
  2792				if (!managed_zone(zone))
  2793					continue;
  2794	
  2795				total_high_wmark += high_wmark_pages(zone);
  2796			}
  2797	
  2798			/*
  2799			 * Consider anon: if that's low too, this isn't a
  2800			 * runaway file reclaim problem, but rather just
  2801			 * extreme pressure. Reclaim as per usual then.
  2802			 */
  2803			anon = node_page_state(pgdat, NR_INACTIVE_ANON);
  2804	
  2805			sc->file_is_tiny =
  2806				file + free <= total_high_wmark &&
  2807				!(sc->may_deactivate & DEACTIVATE_ANON) &&
  2808				anon >> sc->priority;
  2809		}
  2810	
  2811		if (sysctl_clean_low_kbytes || sysctl_clean_min_kbytes) {
  2812			unsigned long reclaimable_file, dirty, clean;
  2813	
  2814			reclaimable_file =
  2815				node_page_state(pgdat, NR_ACTIVE_FILE) +
  2816				node_page_state(pgdat, NR_INACTIVE_FILE) +
  2817				node_page_state(pgdat, NR_ISOLATED_FILE);
  2818			dirty = node_page_state(pgdat, NR_FILE_DIRTY);
> 2819			if (reclaimable_file > dirty)
  2820				clean = (reclaimable_file - dirty) << (PAGE_SHIFT - 10);
  2821	
  2822			sc->clean_below_low = clean < sysctl_clean_low_kbytes;
  2823			sc->clean_below_min = clean < sysctl_clean_min_kbytes;
  2824		} else {
  2825			sc->clean_below_low = false;
  2826			sc->clean_below_min = false;
  2827		}
  2828	
  2829		shrink_node_memcgs(pgdat, sc);
  2830	
  2831		if (reclaim_state) {
  2832			sc->nr_reclaimed += reclaim_state->reclaimed_slab;
  2833			reclaim_state->reclaimed_slab = 0;
  2834		}
  2835	
  2836		/* Record the subtree's reclaim efficiency */
  2837		vmpressure(sc->gfp_mask, sc->target_mem_cgroup, true,
  2838			   sc->nr_scanned - nr_scanned,
  2839			   sc->nr_reclaimed - nr_reclaimed);
  2840	
  2841		if (sc->nr_reclaimed - nr_reclaimed)
  2842			reclaimable = true;
  2843	
  2844		if (current_is_kswapd()) {
  2845			/*
  2846			 * If reclaim is isolating dirty pages under writeback,
  2847			 * it implies that the long-lived page allocation rate
  2848			 * is exceeding the page laundering rate. Either the
  2849			 * global limits are not being effective at throttling
  2850			 * processes due to the page distribution throughout
  2851			 * zones or there is heavy usage of a slow backing
  2852			 * device. The only option is to throttle from reclaim
  2853			 * context which is not ideal as there is no guarantee
  2854			 * the dirtying process is throttled in the same way
  2855			 * balance_dirty_pages() manages.
  2856			 *
  2857			 * Once a node is flagged PGDAT_WRITEBACK, kswapd will
  2858			 * count the number of pages under pages flagged for
  2859			 * immediate reclaim and stall if any are encountered
  2860			 * in the nr_immediate check below.
  2861			 */
  2862			if (sc->nr.writeback && sc->nr.writeback == sc->nr.taken)
  2863				set_bit(PGDAT_WRITEBACK, &pgdat->flags);
  2864	
  2865			/* Allow kswapd to start writing pages during reclaim.*/
  2866			if (sc->nr.unqueued_dirty == sc->nr.file_taken)
  2867				set_bit(PGDAT_DIRTY, &pgdat->flags);
  2868	
  2869			/*
  2870			 * If kswapd scans pages marked for immediate
  2871			 * reclaim and under writeback (nr_immediate), it
  2872			 * implies that pages are cycling through the LRU
  2873			 * faster than they are written so also forcibly stall.
  2874			 */
  2875			if (sc->nr.immediate)
  2876				congestion_wait(BLK_RW_ASYNC, HZ/10);
  2877		}
  2878	
  2879		/*
  2880		 * Tag a node/memcg as congested if all the dirty pages
  2881		 * scanned were backed by a congested BDI and
  2882		 * wait_iff_congested will stall.
  2883		 *
  2884		 * Legacy memcg will stall in page writeback so avoid forcibly
  2885		 * stalling in wait_iff_congested().
  2886		 */
  2887		if ((current_is_kswapd() ||
  2888		     (cgroup_reclaim(sc) && writeback_throttling_sane(sc))) &&
  2889		    sc->nr.dirty && sc->nr.dirty == sc->nr.congested)
  2890			set_bit(LRUVEC_CONGESTED, &target_lruvec->flags);
  2891	
  2892		/*
  2893		 * Stall direct reclaim for IO completions if underlying BDIs
  2894		 * and node is congested. Allow kswapd to continue until it
  2895		 * starts encountering unqueued dirty pages or cycling through
  2896		 * the LRU too quickly.
  2897		 */
  2898		if (!current_is_kswapd() && current_may_throttle() &&
  2899		    !sc->hibernation_mode &&
  2900		    test_bit(LRUVEC_CONGESTED, &target_lruvec->flags))
  2901			wait_iff_congested(BLK_RW_ASYNC, HZ/10);
  2902	
  2903		if (should_continue_reclaim(pgdat, sc->nr_reclaimed - nr_reclaimed,
  2904					    sc))
  2905			goto again;
  2906	
  2907		/*
  2908		 * Kswapd gives up on balancing particular nodes after too
  2909		 * many failures to reclaim anything from them and goes to
  2910		 * sleep. On reclaim progress, reset the failure counter. A
  2911		 * successful direct reclaim run will revive a dormant kswapd.
  2912		 */
  2913		if (reclaimable)
  2914			pgdat->kswapd_failures = 0;
  2915	}
  2916	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104060958.P5b08G8p-lkp%40intel.com.

--PEIAKu/WMn1b1Hv9
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--PEIAKu/WMn1b1Hv9--
