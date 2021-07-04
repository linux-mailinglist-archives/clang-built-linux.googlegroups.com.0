Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZ7GQSDQMGQEJIWKF6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A843BAB10
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Jul 2021 06:04:57 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id f65-20020a6251440000b02902fe9dc6c80asf9578673pfb.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Jul 2021 21:04:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625371496; cv=pass;
        d=google.com; s=arc-20160816;
        b=q+mHEJ2gtM1fvA0VeQJEzHZzmZZgNkY1zDN1lmtMKUUNCVRRbKCDfdhgQqmBkqN/xm
         QTrqEhuttaburPYFwU9c4tOEw652iBqKvf5PzBuYIjlAnB2vclh2lAJMa3+4ZCBGKJGc
         5wlXX41ta+pETRHbMm6oMWb0U6Q81hxsTp5tqkgJCRRMlMepN8/FmumOhKIJ8Rw2ztok
         Aw0xSAQ7b2+0x+QRyWkOQ0x5YpPL4sqByGSTamWLzNjWIE8DvLWIScxtk7g7Zl7PWSri
         p/zwLqOiBKt2K5/SZu93/k3ushF0N336O73qsDXofXgwlvPUaAe7aKaKdHXxzBQAdCVJ
         ZikA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=R0iUScNbL5RRde/yo8ShseO2i/LNk4Jk+UrQiGo1tF0=;
        b=MeSMrqNUY/c37v3IJi/0secgKni7WvxNlCIhfoUPAd7hjo4wRc1ywGrThlO2d5eDKs
         B55Wm2r+awHMEkA1XrIBNx133nhLNw/hvlgw9TDXEl8RrKWkC7P18Re81sf+SWsV2c5h
         5d89pRQDu5wkmuCoxNQ6DFLVJ2oIDmVrdBFu5ZEEY9nPekXgKet387VYMn8MKThT5g3o
         qfzZ3LFqCbuH7SpGAfdmTQFpBJvf4oP3oyr7EOjBCt3ctR89Hcz+cgA9WE5h45OO2SvQ
         ZyKhewS3mI7yy0rQQyEPiP5F9IcbH56IwC/HQwFKVe2r8BRGIiUiVQjD6k2Oj77hIyZF
         q4uA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R0iUScNbL5RRde/yo8ShseO2i/LNk4Jk+UrQiGo1tF0=;
        b=EfX0DCtOxj/9cwt1ibI3w//OnnsI6rHroiAANe+cjdDy2s5AmyiRKmGJzdA/naMTet
         faJp9zC8Ykdx4EMRdlN/43S+gbFBwKzImKPGA3rJObbdA49YHI/N5jJwKQgFWlLGhC14
         4PX40XJpJKGc4r5LSn+V4YlB/9KSh1kifj8yeW+vjOCf+Or7V90ORr+8EdJwA/x+tb9a
         mYjL6XBcXEdC+J3IRIoek0xg4dF4N7LkRvT0sFwat4l1lSu1rV7JPQH3KlUMG4G3pMwI
         3Lxz+k2fRxC3u6bDuuVaV/jVE2KERYRH/X0f5Sk5wXijyaLkECzeib3bR3YbbFQTsYQQ
         pJaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R0iUScNbL5RRde/yo8ShseO2i/LNk4Jk+UrQiGo1tF0=;
        b=s6TRBimnp2jSngx8HvFnmTvOAGwr0VcVP6PgaHS2cYH+WI99OBtI02qPDu/0WnmKXR
         xKYzVVQoWH7ghWJjg+ja2OQ1Htxju0gVSMg9aegFuUzSFAKU7I3XZ/vP0ije3nj/0I1K
         Bolwvu5bzjCp4aF9Hoib5nHhK4ly3Lae8J8hCEUbG0oauuIGQ9ln8dlKgZRyy/YgjrxO
         kkFCyugBEoQgkr2c7jiSPiQK/BnCFPkDTTvv/sIJDog7Hg9nZwOASCe32M6H+VTCT8JM
         xIgcoIp/P9T9IZwy8RAWzFGSZelonIFnw6KsHKHEysUYkR5gvn+2GP1f4DqENt45uIQr
         8JWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532w6E9LS8dqKLPWsDuFtLQ7FV43qYHBsVQPyhk0waXnz320CGpG
	tTUpouuvT1Ezkcls5kSDbfw=
X-Google-Smtp-Source: ABdhPJz7WQsPUfdTpfXqw623RsntKL7PSwmTtplg6QL4cI0a4iZdq7pKE+jd8lzrHtwdHanHn/YOPQ==
X-Received: by 2002:a63:dc04:: with SMTP id s4mr8477338pgg.75.1625371495957;
        Sat, 03 Jul 2021 21:04:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f698:: with SMTP id cl24ls9606629pjb.0.canary-gmail;
 Sat, 03 Jul 2021 21:04:55 -0700 (PDT)
X-Received: by 2002:a17:90a:dc06:: with SMTP id i6mr7759688pjv.65.1625371495274;
        Sat, 03 Jul 2021 21:04:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625371495; cv=none;
        d=google.com; s=arc-20160816;
        b=R1SJwcnFm1xdaOgycy/RnxAlTzkNIvyM//MJl6SqVuGBdnbNpmh1oeTELoMneMOauq
         JAZTVaqAbtL/6c976YDXSgzzGHRARKTpTyVTI7jBTHluqMijultNkuo6nEjl+j9WZowj
         nsgP1ijr2xupeV6Ij8dhwmCx0QLAvSN9Roe+rJx00WPPcoy4aFpCXv9Msrw7qWUqU4mL
         gF3awYwzmep+w/N4VQYQHQRKvzfNmQ6jbyoNP9wHfG8xxfJ/YvEPkMZRgTwDvRg4muuh
         sa66EuJkSEQ7N37W4AYJwSBBsr7CJD3dFv1XBXOKS2VR9tgxE9gh+wxM7u7RTbdiIudd
         mamQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=7XHjCWcXZevfsdGyrddbX5EBsUDwpcvvwYHf83wsoj8=;
        b=NKrUCnLIU0P2qlfqvz4KQ+VzAtEOb9TRzEuh0Y2WErfFt8LOtWo1Z7kf3neP4iSSGp
         vAM80A9DbI2J6uqonQycp9ik3JWoywZ5geY3zQCG4gOHt85kGwvixgdk2igtwunRwa63
         fFl8DPTa591bWdKAUC/YE/fbsp96CNtny2LfPrOTqT9P6r1D2TjAfAZCGnoV0iDu8BhF
         ASmyD3TVkD/Q6LPihtMPN6uzU/LDsCnaF53elyUCcYGuN7pl3msFcz0ftsUUPataFeGa
         PejezfwaCo7kSY7kbZUaZok3rGxxk2J6xKuC8Zw6FnnzLTE4fpwRFadwC0eeX6RMwPad
         tRdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id p190si614520pfp.2.2021.07.03.21.04.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Jul 2021 21:04:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10034"; a="208895372"
X-IronPort-AV: E=Sophos;i="5.83,323,1616482800"; 
   d="gz'50?scan'50,208,50";a="208895372"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jul 2021 21:04:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,323,1616482800"; 
   d="gz'50?scan'50,208,50";a="643275331"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 03 Jul 2021 21:04:51 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lztNC-000BsW-EK; Sun, 04 Jul 2021 04:04:50 +0000
Date: Sun, 4 Jul 2021 12:04:07 +0800
From: kernel test robot <lkp@intel.com>
To: Muchun Song <songmuchun@bytedance.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Shakeel Butt <shakeelb@google.com>,
	Miaohe Lin <linmiaohe@huawei.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: mm/compaction.c:799:1: warning: stack frame size (2080) exceeds
 limit (2048) in function 'isolate_migratepages_block'
Message-ID: <202107041200.6rddW8Mw-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jI8keyz6grp/JLjh"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--jI8keyz6grp/JLjh
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   303392fd5c160822bf778270b28ec5ea50cab2b4
commit: b4e0b68fbd9d1fd7e31cbe8adca3ad6cf556e2ee mm: memcontrol: use obj_cgroup APIs to charge kmem pages
date:   9 weeks ago
config: powerpc64-randconfig-r031-20210704 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project cb5de7c813f976dd458bd2a7f40702ba648bf650)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b4e0b68fbd9d1fd7e31cbe8adca3ad6cf556e2ee
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout b4e0b68fbd9d1fd7e31cbe8adca3ad6cf556e2ee
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from mm/compaction.c:11:
   In file included from include/linux/cpu.h:17:
   In file included from include/linux/node.h:18:
   In file included from include/linux/device.h:15:
   In file included from include/linux/dev_printk.h:16:
   In file included from include/linux/ratelimit.h:6:
   In file included from include/linux/sched.h:12:
   In file included from arch/powerpc/include/asm/current.h:13:
   In file included from arch/powerpc/include/asm/paca.h:17:
   In file included from arch/powerpc/include/asm/lppaca.h:46:
   In file included from arch/powerpc/include/asm/mmu.h:147:
   In file included from include/linux/bug.h:5:
   In file included from arch/powerpc/include/asm/bug.h:109:
   In file included from include/asm-generic/bug.h:20:
   In file included from include/linux/kernel.h:11:
   In file included from include/linux/bitops.h:32:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:309:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
>> mm/compaction.c:799:1: warning: stack frame size (2080) exceeds limit (2048) in function 'isolate_migratepages_block' [-Wframe-larger-than]
   isolate_migratepages_block(struct compact_control *cc, unsigned long low_pfn,
   ^
   2 warnings generated.


vim +/isolate_migratepages_block +799 mm/compaction.c

748446bb6b5a93 Mel Gorman              2010-05-24   779  
2fe86e00040761 Michal Nazarewicz       2012-01-30   780  /**
edc2ca61249679 Vlastimil Babka         2014-10-09   781   * isolate_migratepages_block() - isolate all migrate-able pages within
edc2ca61249679 Vlastimil Babka         2014-10-09   782   *				  a single pageblock
2fe86e00040761 Michal Nazarewicz       2012-01-30   783   * @cc:		Compaction control structure.
edc2ca61249679 Vlastimil Babka         2014-10-09   784   * @low_pfn:	The first PFN to isolate
edc2ca61249679 Vlastimil Babka         2014-10-09   785   * @end_pfn:	The one-past-the-last PFN to isolate, within same pageblock
edc2ca61249679 Vlastimil Babka         2014-10-09   786   * @isolate_mode: Isolation mode to be used.
2fe86e00040761 Michal Nazarewicz       2012-01-30   787   *
2fe86e00040761 Michal Nazarewicz       2012-01-30   788   * Isolate all pages that can be migrated from the range specified by
edc2ca61249679 Vlastimil Babka         2014-10-09   789   * [low_pfn, end_pfn). The range is expected to be within same pageblock.
edc2ca61249679 Vlastimil Babka         2014-10-09   790   * Returns zero if there is a fatal signal pending, otherwise PFN of the
edc2ca61249679 Vlastimil Babka         2014-10-09   791   * first page that was not scanned (which may be both less, equal to or more
edc2ca61249679 Vlastimil Babka         2014-10-09   792   * than end_pfn).
2fe86e00040761 Michal Nazarewicz       2012-01-30   793   *
edc2ca61249679 Vlastimil Babka         2014-10-09   794   * The pages are isolated on cc->migratepages list (not required to be empty),
edc2ca61249679 Vlastimil Babka         2014-10-09   795   * and cc->nr_migratepages is updated accordingly. The cc->migrate_pfn field
edc2ca61249679 Vlastimil Babka         2014-10-09   796   * is neither read nor updated.
748446bb6b5a93 Mel Gorman              2010-05-24   797   */
edc2ca61249679 Vlastimil Babka         2014-10-09   798  static unsigned long
edc2ca61249679 Vlastimil Babka         2014-10-09  @799  isolate_migratepages_block(struct compact_control *cc, unsigned long low_pfn,
edc2ca61249679 Vlastimil Babka         2014-10-09   800  			unsigned long end_pfn, isolate_mode_t isolate_mode)
748446bb6b5a93 Mel Gorman              2010-05-24   801  {
5f438eee8f2e97 Andrey Ryabinin         2019-03-05   802  	pg_data_t *pgdat = cc->zone->zone_pgdat;
b7aba6984dc048 Mel Gorman              2011-01-13   803  	unsigned long nr_scanned = 0, nr_isolated = 0;
fa9add641b1b1c Hugh Dickins            2012-05-29   804  	struct lruvec *lruvec;
b8b2d825323633 Xiubo Li                2014-10-09   805  	unsigned long flags = 0;
6168d0da2b479c Alex Shi                2020-12-15   806  	struct lruvec *locked = NULL;
bb13ffeb9f6bfe Mel Gorman              2012-10-08   807  	struct page *page = NULL, *valid_page = NULL;
e34d85f0e3c60f Joonsoo Kim             2015-02-11   808  	unsigned long start_pfn = low_pfn;
fdd048e12c9a46 Vlastimil Babka         2016-05-19   809  	bool skip_on_failure = false;
fdd048e12c9a46 Vlastimil Babka         2016-05-19   810  	unsigned long next_skip_pfn = 0;
e380bebe477154 Mel Gorman              2019-03-05   811  	bool skip_updated = false;
748446bb6b5a93 Mel Gorman              2010-05-24   812  
748446bb6b5a93 Mel Gorman              2010-05-24   813  	/*
748446bb6b5a93 Mel Gorman              2010-05-24   814  	 * Ensure that there are not too many pages isolated from the LRU
748446bb6b5a93 Mel Gorman              2010-05-24   815  	 * list by either parallel reclaimers or compaction. If there are,
748446bb6b5a93 Mel Gorman              2010-05-24   816  	 * delay for some time until fewer pages are isolated
748446bb6b5a93 Mel Gorman              2010-05-24   817  	 */
5f438eee8f2e97 Andrey Ryabinin         2019-03-05   818  	while (unlikely(too_many_isolated(pgdat))) {
d20bdd571ee5c9 Zi Yan                  2020-11-13   819  		/* stop isolation if there are still pages not migrated */
d20bdd571ee5c9 Zi Yan                  2020-11-13   820  		if (cc->nr_migratepages)
d20bdd571ee5c9 Zi Yan                  2020-11-13   821  			return 0;
d20bdd571ee5c9 Zi Yan                  2020-11-13   822  
f9e35b3b41f47c Mel Gorman              2011-06-15   823  		/* async migration should just abort */
e0b9daeb453e60 David Rientjes          2014-06-04   824  		if (cc->mode == MIGRATE_ASYNC)
2fe86e00040761 Michal Nazarewicz       2012-01-30   825  			return 0;
f9e35b3b41f47c Mel Gorman              2011-06-15   826  
748446bb6b5a93 Mel Gorman              2010-05-24   827  		congestion_wait(BLK_RW_ASYNC, HZ/10);
748446bb6b5a93 Mel Gorman              2010-05-24   828  
748446bb6b5a93 Mel Gorman              2010-05-24   829  		if (fatal_signal_pending(current))
2fe86e00040761 Michal Nazarewicz       2012-01-30   830  			return 0;
748446bb6b5a93 Mel Gorman              2010-05-24   831  	}
748446bb6b5a93 Mel Gorman              2010-05-24   832  
cf66f0700c8f1d Mel Gorman              2019-03-05   833  	cond_resched();
aeef4b83806f49 David Rientjes          2014-06-04   834  
fdd048e12c9a46 Vlastimil Babka         2016-05-19   835  	if (cc->direct_compaction && (cc->mode == MIGRATE_ASYNC)) {
fdd048e12c9a46 Vlastimil Babka         2016-05-19   836  		skip_on_failure = true;
fdd048e12c9a46 Vlastimil Babka         2016-05-19   837  		next_skip_pfn = block_end_pfn(low_pfn, cc->order);
fdd048e12c9a46 Vlastimil Babka         2016-05-19   838  	}
fdd048e12c9a46 Vlastimil Babka         2016-05-19   839  
748446bb6b5a93 Mel Gorman              2010-05-24   840  	/* Time to isolate some pages for migration */
748446bb6b5a93 Mel Gorman              2010-05-24   841  	for (; low_pfn < end_pfn; low_pfn++) {
29c0dde830f8c0 Vlastimil Babka         2015-09-08   842  
fdd048e12c9a46 Vlastimil Babka         2016-05-19   843  		if (skip_on_failure && low_pfn >= next_skip_pfn) {
fdd048e12c9a46 Vlastimil Babka         2016-05-19   844  			/*
fdd048e12c9a46 Vlastimil Babka         2016-05-19   845  			 * We have isolated all migration candidates in the
fdd048e12c9a46 Vlastimil Babka         2016-05-19   846  			 * previous order-aligned block, and did not skip it due
fdd048e12c9a46 Vlastimil Babka         2016-05-19   847  			 * to failure. We should migrate the pages now and
fdd048e12c9a46 Vlastimil Babka         2016-05-19   848  			 * hopefully succeed compaction.
fdd048e12c9a46 Vlastimil Babka         2016-05-19   849  			 */
fdd048e12c9a46 Vlastimil Babka         2016-05-19   850  			if (nr_isolated)
fdd048e12c9a46 Vlastimil Babka         2016-05-19   851  				break;
fdd048e12c9a46 Vlastimil Babka         2016-05-19   852  
fdd048e12c9a46 Vlastimil Babka         2016-05-19   853  			/*
fdd048e12c9a46 Vlastimil Babka         2016-05-19   854  			 * We failed to isolate in the previous order-aligned
fdd048e12c9a46 Vlastimil Babka         2016-05-19   855  			 * block. Set the new boundary to the end of the
fdd048e12c9a46 Vlastimil Babka         2016-05-19   856  			 * current block. Note we can't simply increase
fdd048e12c9a46 Vlastimil Babka         2016-05-19   857  			 * next_skip_pfn by 1 << order, as low_pfn might have
fdd048e12c9a46 Vlastimil Babka         2016-05-19   858  			 * been incremented by a higher number due to skipping
fdd048e12c9a46 Vlastimil Babka         2016-05-19   859  			 * a compound or a high-order buddy page in the
fdd048e12c9a46 Vlastimil Babka         2016-05-19   860  			 * previous loop iteration.
fdd048e12c9a46 Vlastimil Babka         2016-05-19   861  			 */
fdd048e12c9a46 Vlastimil Babka         2016-05-19   862  			next_skip_pfn = block_end_pfn(low_pfn, cc->order);
fdd048e12c9a46 Vlastimil Babka         2016-05-19   863  		}
fdd048e12c9a46 Vlastimil Babka         2016-05-19   864  
8b44d2791f9125 Vlastimil Babka         2014-10-09   865  		/*
8b44d2791f9125 Vlastimil Babka         2014-10-09   866  		 * Periodically drop the lock (if held) regardless of its
670105a25608af Mel Gorman              2019-08-02   867  		 * contention, to give chance to IRQs. Abort completely if
670105a25608af Mel Gorman              2019-08-02   868  		 * a fatal signal is pending.
8b44d2791f9125 Vlastimil Babka         2014-10-09   869  		 */
6168d0da2b479c Alex Shi                2020-12-15   870  		if (!(low_pfn % SWAP_CLUSTER_MAX)) {
6168d0da2b479c Alex Shi                2020-12-15   871  			if (locked) {
6168d0da2b479c Alex Shi                2020-12-15   872  				unlock_page_lruvec_irqrestore(locked, flags);
6168d0da2b479c Alex Shi                2020-12-15   873  				locked = NULL;
6168d0da2b479c Alex Shi                2020-12-15   874  			}
6168d0da2b479c Alex Shi                2020-12-15   875  
6168d0da2b479c Alex Shi                2020-12-15   876  			if (fatal_signal_pending(current)) {
6168d0da2b479c Alex Shi                2020-12-15   877  				cc->contended = true;
6168d0da2b479c Alex Shi                2020-12-15   878  
670105a25608af Mel Gorman              2019-08-02   879  				low_pfn = 0;
670105a25608af Mel Gorman              2019-08-02   880  				goto fatal_pending;
670105a25608af Mel Gorman              2019-08-02   881  			}
b2eef8c0d09101 Andrea Arcangeli        2011-03-22   882  
6168d0da2b479c Alex Shi                2020-12-15   883  			cond_resched();
6168d0da2b479c Alex Shi                2020-12-15   884  		}
6168d0da2b479c Alex Shi                2020-12-15   885  
748446bb6b5a93 Mel Gorman              2010-05-24   886  		if (!pfn_valid_within(low_pfn))
fdd048e12c9a46 Vlastimil Babka         2016-05-19   887  			goto isolate_fail;
b7aba6984dc048 Mel Gorman              2011-01-13   888  		nr_scanned++;
748446bb6b5a93 Mel Gorman              2010-05-24   889  
748446bb6b5a93 Mel Gorman              2010-05-24   890  		page = pfn_to_page(low_pfn);
dc9086004b3d5d Mel Gorman              2012-02-08   891  
e380bebe477154 Mel Gorman              2019-03-05   892  		/*
e380bebe477154 Mel Gorman              2019-03-05   893  		 * Check if the pageblock has already been marked skipped.
e380bebe477154 Mel Gorman              2019-03-05   894  		 * Only the aligned PFN is checked as the caller isolates
e380bebe477154 Mel Gorman              2019-03-05   895  		 * COMPACT_CLUSTER_MAX at a time so the second call must
e380bebe477154 Mel Gorman              2019-03-05   896  		 * not falsely conclude that the block should be skipped.
e380bebe477154 Mel Gorman              2019-03-05   897  		 */
e380bebe477154 Mel Gorman              2019-03-05   898  		if (!valid_page && IS_ALIGNED(low_pfn, pageblock_nr_pages)) {
e380bebe477154 Mel Gorman              2019-03-05   899  			if (!cc->ignore_skip_hint && get_pageblock_skip(page)) {
e380bebe477154 Mel Gorman              2019-03-05   900  				low_pfn = end_pfn;
9df41314390b81 Alex Shi                2020-12-15   901  				page = NULL;
e380bebe477154 Mel Gorman              2019-03-05   902  				goto isolate_abort;
e380bebe477154 Mel Gorman              2019-03-05   903  			}
bb13ffeb9f6bfe Mel Gorman              2012-10-08   904  			valid_page = page;
e380bebe477154 Mel Gorman              2019-03-05   905  		}
bb13ffeb9f6bfe Mel Gorman              2012-10-08   906  
c122b2087ab941 Joonsoo Kim             2014-04-07   907  		/*
99c0fd5e51c447 Vlastimil Babka         2014-10-09   908  		 * Skip if free. We read page order here without zone lock
99c0fd5e51c447 Vlastimil Babka         2014-10-09   909  		 * which is generally unsafe, but the race window is small and
99c0fd5e51c447 Vlastimil Babka         2014-10-09   910  		 * the worst thing that can happen is that we skip some
99c0fd5e51c447 Vlastimil Babka         2014-10-09   911  		 * potential isolation targets.
99c0fd5e51c447 Vlastimil Babka         2014-10-09   912  		 */
99c0fd5e51c447 Vlastimil Babka         2014-10-09   913  		if (PageBuddy(page)) {
ab130f9108dcf2 Matthew Wilcox (Oracle  2020-10-15   914) 			unsigned long freepage_order = buddy_order_unsafe(page);
99c0fd5e51c447 Vlastimil Babka         2014-10-09   915  
99c0fd5e51c447 Vlastimil Babka         2014-10-09   916  			/*
99c0fd5e51c447 Vlastimil Babka         2014-10-09   917  			 * Without lock, we cannot be sure that what we got is
99c0fd5e51c447 Vlastimil Babka         2014-10-09   918  			 * a valid page order. Consider only values in the
99c0fd5e51c447 Vlastimil Babka         2014-10-09   919  			 * valid order range to prevent low_pfn overflow.
c122b2087ab941 Joonsoo Kim             2014-04-07   920  			 */
99c0fd5e51c447 Vlastimil Babka         2014-10-09   921  			if (freepage_order > 0 && freepage_order < MAX_ORDER)
99c0fd5e51c447 Vlastimil Babka         2014-10-09   922  				low_pfn += (1UL << freepage_order) - 1;
c122b2087ab941 Joonsoo Kim             2014-04-07   923  			continue;
99c0fd5e51c447 Vlastimil Babka         2014-10-09   924  		}
9927af740b1b9b Mel Gorman              2011-01-13   925  
bc835011afbea3 Andrea Arcangeli        2011-01-13   926  		/*
29c0dde830f8c0 Vlastimil Babka         2015-09-08   927  		 * Regardless of being on LRU, compound pages such as THP and
1da2f328fa643b Rik van Riel            2020-04-01   928  		 * hugetlbfs are not to be compacted unless we are attempting
1da2f328fa643b Rik van Riel            2020-04-01   929  		 * an allocation much larger than the huge page size (eg CMA).
1da2f328fa643b Rik van Riel            2020-04-01   930  		 * We can potentially save a lot of iterations if we skip them
1da2f328fa643b Rik van Riel            2020-04-01   931  		 * at once. The check is racy, but we can consider only valid
1da2f328fa643b Rik van Riel            2020-04-01   932  		 * values and the only danger is skipping too much.
bc835011afbea3 Andrea Arcangeli        2011-01-13   933  		 */
1da2f328fa643b Rik van Riel            2020-04-01   934  		if (PageCompound(page) && !cc->alloc_contig) {
21dc7e023611fb David Rientjes          2017-11-17   935  			const unsigned int order = compound_order(page);
edc2ca61249679 Vlastimil Babka         2014-10-09   936  
d3c85bad89b915 Vlastimil Babka         2017-11-17   937  			if (likely(order < MAX_ORDER))
21dc7e023611fb David Rientjes          2017-11-17   938  				low_pfn += (1UL << order) - 1;
fdd048e12c9a46 Vlastimil Babka         2016-05-19   939  			goto isolate_fail;
2a1402aa044b55 Mel Gorman              2012-10-08   940  		}
2a1402aa044b55 Mel Gorman              2012-10-08   941  
bda807d4445414 Minchan Kim             2016-07-26   942  		/*
bda807d4445414 Minchan Kim             2016-07-26   943  		 * Check may be lockless but that's ok as we recheck later.
bda807d4445414 Minchan Kim             2016-07-26   944  		 * It's possible to migrate LRU and non-lru movable pages.
bda807d4445414 Minchan Kim             2016-07-26   945  		 * Skip any other type of page
bda807d4445414 Minchan Kim             2016-07-26   946  		 */
bda807d4445414 Minchan Kim             2016-07-26   947  		if (!PageLRU(page)) {
bda807d4445414 Minchan Kim             2016-07-26   948  			/*
bda807d4445414 Minchan Kim             2016-07-26   949  			 * __PageMovable can return false positive so we need
bda807d4445414 Minchan Kim             2016-07-26   950  			 * to verify it under page_lock.
bda807d4445414 Minchan Kim             2016-07-26   951  			 */
bda807d4445414 Minchan Kim             2016-07-26   952  			if (unlikely(__PageMovable(page)) &&
bda807d4445414 Minchan Kim             2016-07-26   953  					!PageIsolated(page)) {
bda807d4445414 Minchan Kim             2016-07-26   954  				if (locked) {
6168d0da2b479c Alex Shi                2020-12-15   955  					unlock_page_lruvec_irqrestore(locked, flags);
6168d0da2b479c Alex Shi                2020-12-15   956  					locked = NULL;
bda807d4445414 Minchan Kim             2016-07-26   957  				}
bda807d4445414 Minchan Kim             2016-07-26   958  
9e5bcd610ffced Yisheng Xie             2017-02-24   959  				if (!isolate_movable_page(page, isolate_mode))
bda807d4445414 Minchan Kim             2016-07-26   960  					goto isolate_success;
bda807d4445414 Minchan Kim             2016-07-26   961  			}
bda807d4445414 Minchan Kim             2016-07-26   962  
fdd048e12c9a46 Vlastimil Babka         2016-05-19   963  			goto isolate_fail;
bda807d4445414 Minchan Kim             2016-07-26   964  		}
29c0dde830f8c0 Vlastimil Babka         2015-09-08   965  
119d6d59dcc098 David Rientjes          2014-04-03   966  		/*
119d6d59dcc098 David Rientjes          2014-04-03   967  		 * Migration will fail if an anonymous page is pinned in memory,
119d6d59dcc098 David Rientjes          2014-04-03   968  		 * so avoid taking lru_lock and isolating it unnecessarily in an
119d6d59dcc098 David Rientjes          2014-04-03   969  		 * admittedly racy check.
119d6d59dcc098 David Rientjes          2014-04-03   970  		 */
119d6d59dcc098 David Rientjes          2014-04-03   971  		if (!page_mapping(page) &&
119d6d59dcc098 David Rientjes          2014-04-03   972  		    page_count(page) > page_mapcount(page))
fdd048e12c9a46 Vlastimil Babka         2016-05-19   973  			goto isolate_fail;
119d6d59dcc098 David Rientjes          2014-04-03   974  
73e64c51afc56d Michal Hocko            2016-12-14   975  		/*
73e64c51afc56d Michal Hocko            2016-12-14   976  		 * Only allow to migrate anonymous pages in GFP_NOFS context
73e64c51afc56d Michal Hocko            2016-12-14   977  		 * because those do not depend on fs locks.
73e64c51afc56d Michal Hocko            2016-12-14   978  		 */
73e64c51afc56d Michal Hocko            2016-12-14   979  		if (!(cc->gfp_mask & __GFP_FS) && page_mapping(page))
73e64c51afc56d Michal Hocko            2016-12-14   980  			goto isolate_fail;
73e64c51afc56d Michal Hocko            2016-12-14   981  
9df41314390b81 Alex Shi                2020-12-15   982  		/*
9df41314390b81 Alex Shi                2020-12-15   983  		 * Be careful not to clear PageLRU until after we're
9df41314390b81 Alex Shi                2020-12-15   984  		 * sure the page is not being freed elsewhere -- the
9df41314390b81 Alex Shi                2020-12-15   985  		 * page release code relies on it.
9df41314390b81 Alex Shi                2020-12-15   986  		 */
9df41314390b81 Alex Shi                2020-12-15   987  		if (unlikely(!get_page_unless_zero(page)))
9df41314390b81 Alex Shi                2020-12-15   988  			goto isolate_fail;
9df41314390b81 Alex Shi                2020-12-15   989  
c2135f7c570bc2 Alex Shi                2021-02-24   990  		if (!__isolate_lru_page_prepare(page, isolate_mode))
9df41314390b81 Alex Shi                2020-12-15   991  			goto isolate_fail_put;
9df41314390b81 Alex Shi                2020-12-15   992  
9df41314390b81 Alex Shi                2020-12-15   993  		/* Try isolate the page */
9df41314390b81 Alex Shi                2020-12-15   994  		if (!TestClearPageLRU(page))
9df41314390b81 Alex Shi                2020-12-15   995  			goto isolate_fail_put;
9df41314390b81 Alex Shi                2020-12-15   996  
6168d0da2b479c Alex Shi                2020-12-15   997  		lruvec = mem_cgroup_page_lruvec(page, pgdat);
6168d0da2b479c Alex Shi                2020-12-15   998  
69b7189f12e006 Vlastimil Babka         2014-10-09   999  		/* If we already hold the lock, we can skip some rechecking */
6168d0da2b479c Alex Shi                2020-12-15  1000  		if (lruvec != locked) {
6168d0da2b479c Alex Shi                2020-12-15  1001  			if (locked)
6168d0da2b479c Alex Shi                2020-12-15  1002  				unlock_page_lruvec_irqrestore(locked, flags);
6168d0da2b479c Alex Shi                2020-12-15  1003  
6168d0da2b479c Alex Shi                2020-12-15  1004  			compact_lock_irqsave(&lruvec->lru_lock, &flags, cc);
6168d0da2b479c Alex Shi                2020-12-15  1005  			locked = lruvec;
6168d0da2b479c Alex Shi                2020-12-15  1006  
6168d0da2b479c Alex Shi                2020-12-15  1007  			lruvec_memcg_debug(lruvec, page);
e380bebe477154 Mel Gorman              2019-03-05  1008  
e380bebe477154 Mel Gorman              2019-03-05  1009  			/* Try get exclusive access under lock */
e380bebe477154 Mel Gorman              2019-03-05  1010  			if (!skip_updated) {
e380bebe477154 Mel Gorman              2019-03-05  1011  				skip_updated = true;
e380bebe477154 Mel Gorman              2019-03-05  1012  				if (test_and_set_skip(cc, page, low_pfn))
e380bebe477154 Mel Gorman              2019-03-05  1013  					goto isolate_abort;
e380bebe477154 Mel Gorman              2019-03-05  1014  			}
2a1402aa044b55 Mel Gorman              2012-10-08  1015  
29c0dde830f8c0 Vlastimil Babka         2015-09-08  1016  			/*
29c0dde830f8c0 Vlastimil Babka         2015-09-08  1017  			 * Page become compound since the non-locked check,
29c0dde830f8c0 Vlastimil Babka         2015-09-08  1018  			 * and it's on LRU. It can only be a THP so the order
29c0dde830f8c0 Vlastimil Babka         2015-09-08  1019  			 * is safe to read and it's 0 for tail pages.
29c0dde830f8c0 Vlastimil Babka         2015-09-08  1020  			 */
1da2f328fa643b Rik van Riel            2020-04-01  1021  			if (unlikely(PageCompound(page) && !cc->alloc_contig)) {
d8c6546b1aea84 Matthew Wilcox (Oracle  2019-09-23  1022) 				low_pfn += compound_nr(page) - 1;
9df41314390b81 Alex Shi                2020-12-15  1023  				SetPageLRU(page);
9df41314390b81 Alex Shi                2020-12-15  1024  				goto isolate_fail_put;
bc835011afbea3 Andrea Arcangeli        2011-01-13  1025  			}
d99fd5feb0ac1d Alex Shi                2021-02-24  1026  		}
fa9add641b1b1c Hugh Dickins            2012-05-29  1027  
1da2f328fa643b Rik van Riel            2020-04-01  1028  		/* The whole page is taken off the LRU; skip the tail pages. */
1da2f328fa643b Rik van Riel            2020-04-01  1029  		if (PageCompound(page))
1da2f328fa643b Rik van Riel            2020-04-01  1030  			low_pfn += compound_nr(page) - 1;
bc835011afbea3 Andrea Arcangeli        2011-01-13  1031  
748446bb6b5a93 Mel Gorman              2010-05-24  1032  		/* Successfully isolated */
46ae6b2cc2a479 Yu Zhao                 2021-02-24  1033  		del_page_from_lru_list(page, lruvec);
1da2f328fa643b Rik van Riel            2020-04-01  1034  		mod_node_page_state(page_pgdat(page),
9de4f22a60f731 Huang Ying              2020-04-06  1035  				NR_ISOLATED_ANON + page_is_file_lru(page),
6c357848b44b40 Matthew Wilcox (Oracle  2020-08-14  1036) 				thp_nr_pages(page));
b6c750163c0d13 Joonsoo Kim             2014-04-07  1037  
b6c750163c0d13 Joonsoo Kim             2014-04-07  1038  isolate_success:
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1039  		list_add(&page->lru, &cc->migratepages);
38935861d85a4d Zi Yan                  2020-11-13  1040  		cc->nr_migratepages += compound_nr(page);
38935861d85a4d Zi Yan                  2020-11-13  1041  		nr_isolated += compound_nr(page);
748446bb6b5a93 Mel Gorman              2010-05-24  1042  
804d3121ba5f03 Mel Gorman              2019-03-05  1043  		/*
804d3121ba5f03 Mel Gorman              2019-03-05  1044  		 * Avoid isolating too much unless this block is being
cb2dcaf023c2cf Mel Gorman              2019-03-05  1045  		 * rescanned (e.g. dirty/writeback pages, parallel allocation)
cb2dcaf023c2cf Mel Gorman              2019-03-05  1046  		 * or a lock is contended. For contention, isolate quickly to
cb2dcaf023c2cf Mel Gorman              2019-03-05  1047  		 * potentially remove one source of contention.
804d3121ba5f03 Mel Gorman              2019-03-05  1048  		 */
38935861d85a4d Zi Yan                  2020-11-13  1049  		if (cc->nr_migratepages >= COMPACT_CLUSTER_MAX &&
cb2dcaf023c2cf Mel Gorman              2019-03-05  1050  		    !cc->rescan && !cc->contended) {
31b8384a555d94 Hillf Danton            2012-01-10  1051  			++low_pfn;
748446bb6b5a93 Mel Gorman              2010-05-24  1052  			break;
748446bb6b5a93 Mel Gorman              2010-05-24  1053  		}
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1054  
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1055  		continue;
9df41314390b81 Alex Shi                2020-12-15  1056  
9df41314390b81 Alex Shi                2020-12-15  1057  isolate_fail_put:
9df41314390b81 Alex Shi                2020-12-15  1058  		/* Avoid potential deadlock in freeing page under lru_lock */
9df41314390b81 Alex Shi                2020-12-15  1059  		if (locked) {
6168d0da2b479c Alex Shi                2020-12-15  1060  			unlock_page_lruvec_irqrestore(locked, flags);
6168d0da2b479c Alex Shi                2020-12-15  1061  			locked = NULL;
9df41314390b81 Alex Shi                2020-12-15  1062  		}
9df41314390b81 Alex Shi                2020-12-15  1063  		put_page(page);
9df41314390b81 Alex Shi                2020-12-15  1064  
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1065  isolate_fail:
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1066  		if (!skip_on_failure)
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1067  			continue;
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1068  
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1069  		/*
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1070  		 * We have isolated some pages, but then failed. Release them
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1071  		 * instead of migrating, as we cannot form the cc->order buddy
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1072  		 * page anyway.
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1073  		 */
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1074  		if (nr_isolated) {
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1075  			if (locked) {
6168d0da2b479c Alex Shi                2020-12-15  1076  				unlock_page_lruvec_irqrestore(locked, flags);
6168d0da2b479c Alex Shi                2020-12-15  1077  				locked = NULL;
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1078  			}
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1079  			putback_movable_pages(&cc->migratepages);
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1080  			cc->nr_migratepages = 0;
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1081  			nr_isolated = 0;
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1082  		}
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1083  
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1084  		if (low_pfn < next_skip_pfn) {
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1085  			low_pfn = next_skip_pfn - 1;
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1086  			/*
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1087  			 * The check near the loop beginning would have updated
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1088  			 * next_skip_pfn too, but this is a bit simpler.
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1089  			 */
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1090  			next_skip_pfn += 1UL << cc->order;
fdd048e12c9a46 Vlastimil Babka         2016-05-19  1091  		}
31b8384a555d94 Hillf Danton            2012-01-10  1092  	}
748446bb6b5a93 Mel Gorman              2010-05-24  1093  
99c0fd5e51c447 Vlastimil Babka         2014-10-09  1094  	/*
99c0fd5e51c447 Vlastimil Babka         2014-10-09  1095  	 * The PageBuddy() check could have potentially brought us outside
99c0fd5e51c447 Vlastimil Babka         2014-10-09  1096  	 * the range to be scanned.
99c0fd5e51c447 Vlastimil Babka         2014-10-09  1097  	 */
99c0fd5e51c447 Vlastimil Babka         2014-10-09  1098  	if (unlikely(low_pfn > end_pfn))
99c0fd5e51c447 Vlastimil Babka         2014-10-09  1099  		low_pfn = end_pfn;
99c0fd5e51c447 Vlastimil Babka         2014-10-09  1100  
9df41314390b81 Alex Shi                2020-12-15  1101  	page = NULL;
9df41314390b81 Alex Shi                2020-12-15  1102  
e380bebe477154 Mel Gorman              2019-03-05  1103  isolate_abort:
c67fe3752abe6a Mel Gorman              2012-08-21  1104  	if (locked)
6168d0da2b479c Alex Shi                2020-12-15  1105  		unlock_page_lruvec_irqrestore(locked, flags);
9df41314390b81 Alex Shi                2020-12-15  1106  	if (page) {
9df41314390b81 Alex Shi                2020-12-15  1107  		SetPageLRU(page);
9df41314390b81 Alex Shi                2020-12-15  1108  		put_page(page);
9df41314390b81 Alex Shi                2020-12-15  1109  	}
748446bb6b5a93 Mel Gorman              2010-05-24  1110  
50b5b094e683f8 Vlastimil Babka         2014-01-21  1111  	/*
804d3121ba5f03 Mel Gorman              2019-03-05  1112  	 * Updated the cached scanner pfn once the pageblock has been scanned
804d3121ba5f03 Mel Gorman              2019-03-05  1113  	 * Pages will either be migrated in which case there is no point
804d3121ba5f03 Mel Gorman              2019-03-05  1114  	 * scanning in the near future or migration failed in which case the
804d3121ba5f03 Mel Gorman              2019-03-05  1115  	 * failure reason may persist. The block is marked for skipping if
804d3121ba5f03 Mel Gorman              2019-03-05  1116  	 * there were no pages isolated in the block or if the block is
804d3121ba5f03 Mel Gorman              2019-03-05  1117  	 * rescanned twice in a row.
50b5b094e683f8 Vlastimil Babka         2014-01-21  1118  	 */
804d3121ba5f03 Mel Gorman              2019-03-05  1119  	if (low_pfn == end_pfn && (!nr_isolated || cc->rescan)) {
e380bebe477154 Mel Gorman              2019-03-05  1120  		if (valid_page && !skip_updated)
e380bebe477154 Mel Gorman              2019-03-05  1121  			set_pageblock_skip(valid_page);
e380bebe477154 Mel Gorman              2019-03-05  1122  		update_cached_migrate(cc, low_pfn);
e380bebe477154 Mel Gorman              2019-03-05  1123  	}
bb13ffeb9f6bfe Mel Gorman              2012-10-08  1124  
e34d85f0e3c60f Joonsoo Kim             2015-02-11  1125  	trace_mm_compaction_isolate_migratepages(start_pfn, low_pfn,
e34d85f0e3c60f Joonsoo Kim             2015-02-11  1126  						nr_scanned, nr_isolated);
b7aba6984dc048 Mel Gorman              2011-01-13  1127  
670105a25608af Mel Gorman              2019-08-02  1128  fatal_pending:
7f354a548d1cb6 David Rientjes          2017-02-22  1129  	cc->total_migrate_scanned += nr_scanned;
397487db696cae Mel Gorman              2012-10-19  1130  	if (nr_isolated)
010fc29a45a2e8 Minchan Kim             2012-12-20  1131  		count_compact_events(COMPACTISOLATED, nr_isolated);
397487db696cae Mel Gorman              2012-10-19  1132  
2fe86e00040761 Michal Nazarewicz       2012-01-30  1133  	return low_pfn;
2fe86e00040761 Michal Nazarewicz       2012-01-30  1134  }
2fe86e00040761 Michal Nazarewicz       2012-01-30  1135  

:::::: The code at line 799 was first introduced by commit
:::::: edc2ca61249679298c1f343cd9c549964b8df4b4 mm, compaction: move pageblock checks up from isolate_migratepages_range()

:::::: TO: Vlastimil Babka <vbabka@suse.cz>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107041200.6rddW8Mw-lkp%40intel.com.

--jI8keyz6grp/JLjh
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICKUj4WAAAy5jb25maWcAlFxbcxu3kn7Pr2AlLzkPJyF18WW39ICZwQwRzs0AhpT0MkVT
tKONLHkpKif+99sNzAXANGWvqxJ7uhv3RvfXDYC//PTLjL0cn75sj/e77cPDt9nn/eP+sD3u
72af7h/2/z1LqllZ6RlPhP4NhPP7x5d/fv/69J/94etudvnb4uy3+Wy1PzzuH2bx0+On+88v
UPr+6fGnX36KqzIVWRvH7ZpLJaqy1fxaX/28e9g+fp79vT88g9xscf7bHOr49fP98b9+/x3+
/+X+cHg6/P7w8PeX9uvh6X/2u+Ps3fvdYvfmYrc7X7ydb+eX23fvFh8/vn9/efFpv/20O9/f
7bZv3s4v/vVz32o2Nns1d7oiVBvnrMyuvg1E/BxkF+dz+NPzmMICWdmM4kDqZc/OL+dnPT1P
pu0BDYrneTIWzx05vy3o3BIqZ6pos0pXTgd9Rls1um40yRdlLkrusKpSadnEupJqpAr5od1U
cjVSokbkiRYFbzWLct6qSjoN6KXkDIZSphX8D0QUFoUV/mWWGXV5mD3vjy9fxzUXpdAtL9ct
kzBkUQh9dX4G4kO3ilpAM5orPbt/nj0+HbGGYY6qmOX9JP38M0VuWeNOkel/q1iuHfklW/N2
xWXJ8za7FfUo7nKub4E+9MwRJzrmFulICU9Zk2szYqftnryslC5Zwa9+/vXx6XE/6qfaMKdD
6katRR2PhLpS4rotPjS8cZZzw3S8bANiLCul2oIXlbxpmdYsXrojahTPReQOZmCxBnY1MUwz
PUxCU0YCOgcTn/dLDtoze375+Pzt+bj/Mi55xksuRWyUSy2rzdjBkNPmfM1zml+ITDKN6+4s
lkyApWDKWskVLxO6aLx0lxgpSVUwUfo0JQpKqF0KLnHIN9PKCyVQ8iSDbCetZMyTbusI196o
mknFuxqHtXBHkvCoyVLlr9n+8W729CmY/bBHZguvxwUL2DFsoRVMfqkda2AWGg2IFvGqjWTF
kpgp/WrpV8WKSrVNnTDNe5XR91/A2lNaY9qsSg564VRVVu3yFq1EYRRhmCQg1tBGlYiYUFtb
SiQ5d8tYatrkObkHDJvaAyJborqZKTXGc1iCyWjG2mrJeVFrqLXkRKU9e13lTamZvHE72jFf
KRZXUKqf07huftfb579mR+jObAtdez5uj8+z7W739PJ4vH/8PM7yWkgoXTcti00dVh+Hls0i
+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
LSyYd3PcJ5JFBTCHfsEIw5GK8XuAgtF64Zu0UYYYUl6kedJpYy+fmQDJC8/o87xSa4TnPpSs
GgK2hJDNvTIMVRdYYogiwGqmbQ8OjAK0iUyf8VfDUsBZKr0riMugEy34AOkGxw8RNG5pqQtf
7vc3RdVvb5b7ERSxtMiEI1s320NrZrkG6KvRx4WvTlkDrXBxKameBGSbJ67VGcoQ5EqKigmI
EiYtQ08kwzPUDN7WJRWjg2tJ9R+Tw952jfxDEgu55t1kilVvBp+f4JJJSBkC5v5dIKeCrPQn
Q6q2Yh+/PPxJvuTZVr3p+D4YjGQnEc7CMcXRqtrd51m4OjIWtZQPEXIivZ9OK8a0GZd/xPgq
xvqx4vf/Ee/N9PYIzcn2TJeihhe2l5RJewCgayKY0QbvReG13TJVNuX4SVbfqJ6/nBcvCAF4
vCovOXNZWpLOJ1B/ZypQzbUcoUwX8mxjFue5Z+r34+srE1uwLdo5id95665Tbtp4oIjCoXmD
VA6K0Pgg5UvkAkQLfxmyJVhs/iQJLI3RttbeFgTwLj9QrjqIy8ttFt1pIxP6buN1KjTZfzEt
Tyu/CYrAiS22esqQfiGdkyEPvIQvqbuEcfYj2UiK4MVUIXw+wKA7XNLJGVSpOZ6EWoSe/n5l
202f+yCuHLZftZYM8EVXk4FoT12D8bmDRCIxuUINCmpps8OhsnMsYlDfszutzQNcbbNG4ukr
sopSn47qR3RbZZHlDytZkKyUoeXbLo1/MuR19qXcq/sqjD3DsXwdavqmQ0EJWtY1szjcab37
HOy/9G274BmA26ayN2tKRRywvmdT8+O5FjWZnuvoQ1xHTuv4i3W0ke34G31S26pxHcv0l9uO
FBuTMvdz/E3R+a7SzPaQrw1bbfyh8G2HAG42a2nX6VM8ZSvRpl5ubNj6HR19NqzDrMd8Dybl
CjOSJJxGvHTkQxxHtmV2YlOJJk0y0cVVyg4F011r08Gm1zY35oUu8D1OXWZxdGTbvq+OcZU1
ZVMrwK4OTDZJ6gKbY+PHS3C9L9jHu6e3jx9MaLhw9AXbbZ3gO6NaLRF/vmOqhSxt/AZTD2Cl
5tVfT4N2OIuaE9WgP7G/mNgnLfYZFzfW2qdWs0hiHgr6a1XmIEiaLa3eEk0Xu9Scj/8+yb0Z
xN1dImrzE7zhiqHYAo6AHhqUS5lM4RNlcgTG4YfS80MShWkvfeouIKyFL3zDWfhCZB4ywlxC
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

--jI8keyz6grp/JLjh--
