Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZ7E5T6AKGQEJW7LHMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A8C29F6BE
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 22:21:44 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id 23sf3137990pfp.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 14:21:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604006503; cv=pass;
        d=google.com; s=arc-20160816;
        b=0YzcneZwEWdLccSRp+pUK0r41/42XaY0wulZCOTiZHLa874IBKRO8ogBLpwKCx8NU1
         egVBgf47Xe6b7FAVJ3af71tYgDrQp/JHH+MJifI2PutxQ2l8BE5K9IJnvBviJKHzPi0Z
         IKE943Ci9gt23j2pm/xCBjmmHuGTn94ugN/Vzeg1SDCUTa4Rq4d1fMBIzu1dSIgDDBBA
         YATUVHPksDfL2HRkJlMpgTn6uQn4ZfZDqrg2uxQUtljKq8fzJyhvwwXPTRlIWXMdg2QY
         +j249LR+2moPVAbzrmybdOyATytYsfOWupAhrMVE7w9EP6jkAs2A/dwZ0lrH3ACZRS1A
         ll7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=EmbLk2TyAfKdHxQCXVh+6TAIVdSLcPOjCezsSq5Vuc0=;
        b=iETNuFqSNALh3x6tHxDxJj4CbWgzt4oE/lupkXyD3zWH5zFBzyvhyj/1PFwfkzbg36
         VePCsYgetyBlh9+f+BqsR+EZuaAmjESe8PRIFNQ6ZGQr5YizccE9CK5bgsGxBK5ROVlx
         nD5gsW/Ujcn1sKvsHb1yNlb4BbJbOI+Mi3jj0PM12wlUS4MrX43VT+HgxZP5DCY7V64l
         P8Fah69AOiCffps3IHcIHssPlYR5mGVfB0hBQIuRNhPYoDiSnCydJJQhj37m1NlJoekw
         lxF+zFxRlYURr5TlkisbrfSCt0pDF0mL2PMbFmQjbNrM0XVGNPnK4NXLB7cCL0mI7NEs
         aL9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EmbLk2TyAfKdHxQCXVh+6TAIVdSLcPOjCezsSq5Vuc0=;
        b=L70bWj5qp5G7O2zhzH5cdPKANk5noZEHM6DoFF4GUa7mLnwG/Cbm6UYudSfSQcCRnR
         ogNAs84HRoKYXadpArgO1F8JEs03VaTY9usR88nvQaovKOIvZFq8GNL2ed7udJOfmqsB
         db0CrKxy6rU5pZd1moy58F5eYpRkv3CKijk9OpT8zSmPRfm+SeYMWmNLOizE7OhDDLxm
         2azUSlwV7MHTeL5JepbleukKOp6/rnxNK0MX/9IrHbOYPuAzUDW+5K282uCh16oASI8l
         ol83Wb3NHUbOPWfIsr3bis5tqpZeLZ3olGU947NxBeY4JFkZ2n/HlwjR3J+SFJblyBpn
         KcYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EmbLk2TyAfKdHxQCXVh+6TAIVdSLcPOjCezsSq5Vuc0=;
        b=MvFXIhyymGdV+xYmL9T+yQSzBOW2hay5rKGje0PNtkIyhmpCUeF4vhCg27orO07dbx
         s6aZZAlQNMcEaboHCsWhpAEIIvkdA2/2rCHOpC4UaQH1PpsC+0eZ2tjOqMOjbU7JKgAp
         0hHWvWZ+VbvLM4SN+x/zwcziTZ6jPP1pHwJDeDuUDqbCgGNX+9Gnw2uec2tlATPxx6f4
         x8s1vZkfBJLlff6JXADcT3BwG3GWwN340L9a0YcidoDWV4SzUlSM98pfC3ahDyYQKj/N
         auukb1aiEbrWEp5YSkQENz96WXyiuNJCPt8rmianH/vIM1l8DISpPLAeZuhNwozF65ex
         brOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rn5+eY78qbPyx/RZGJwC9Xty7/W7t1ZpvwPqmy/BCZhiuXZQi
	4gf1cA3JcwPizMjRoBZS9mQ=
X-Google-Smtp-Source: ABdhPJwQWnNvzPXa7YXVmg4E+Us7pIBmReaXpAGySagfY7q8PYWnp8DoRRd8UZJUPdNALzoPLRKzOw==
X-Received: by 2002:a63:60a:: with SMTP id 10mr6001080pgg.364.1604006503246;
        Thu, 29 Oct 2020 14:21:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:aa08:: with SMTP id k8ls556709pjq.0.gmail; Thu, 29
 Oct 2020 14:21:42 -0700 (PDT)
X-Received: by 2002:a17:90a:f187:: with SMTP id bv7mr1815719pjb.198.1604006502598;
        Thu, 29 Oct 2020 14:21:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604006502; cv=none;
        d=google.com; s=arc-20160816;
        b=oOzJfhChlIwOckyoFMc7xouIpw2U85pNwwIRW/0IdgraH+uNDf07mFhvuoRSagkWrk
         tb7ZdEmF2Mc292kymw3l8AM/lRyKNevYF8d43F/2IEMjKlMrIQB2S7jzVVtUrY5u/TEc
         EpAResPSZGzAzRwmUzWSXtTTiRq63L2wOrvw01nT4N7syPUY6BaZYZRBL1OmyVBZhS4z
         0Rb45392PgslA98ZMiQ1QizQdoScubk2NkDmc6v23wrl54lnw2X6Ph3rPFnI25RCLGlq
         tWPdtBGUdT72SAYSNnMxX1YNOSQL0Q85z4tMBHziFjiKsnm/DIrrBw3dzRkN8fBKPFrQ
         JVZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=ePwdYRReOeNdOgBf+/E+8AfDmysa2RZOMFzgZVkCj7Q=;
        b=eYWfbfnWQa3r3nN9eTTNm/Zvbjes8843sat60nSPrTp2DJHP6bDqs3Oia092bJWvXe
         itqlvA6sxTE//clepjjwc9pR3Yt9K7pVBBxX1aeLHF81CU2CKunV8u0HBTkFw5JdFTnA
         bKxvxCKxIbwl/wnUFFD1d82al4+PlLSr5f4Bsw/Bfn9p2tv0mhUnWViOEKmuiWhqHO6G
         BEM3B7H5te9lX60O709k/x3dhTq6tFBlZDQRFKDH7rTj4mu1NkQkLjxsjy9sC0XLEl07
         fxHbFhMZKcV1uyxQjQhLVUJDF3gu+CWh9DViJLQIPQdJ2Tf7FGEwT8/uZpaIbTFgwP4t
         5kNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id t15si64983pjq.1.2020.10.29.14.21.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2020 14:21:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: HtBnlCbU9F16HAxXHSgpuEXO3lOxxTJkYl3nFZGlm4Ij9OdT4pRVHeOmgfSAHe7hKO+Pu/ADpu
 XmBxjFsZq/ZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="147797095"
X-IronPort-AV: E=Sophos;i="5.77,430,1596524400"; 
   d="gz'50?scan'50,208,50";a="147797095"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2020 14:21:41 -0700
IronPort-SDR: jiItGh52Pk7FfLF1+f+tYGTAHXnQAX7chNujmdjmXnNkg/u55IrQ4XK3gGH8o0in3zlfWE1Z8O
 I8/2TX7jXsqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,430,1596524400"; 
   d="gz'50?scan'50,208,50";a="323855025"
Received: from lkp-server01.sh.intel.com (HELO c01187be935a) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 29 Oct 2020 14:21:39 -0700
Received: from kbuild by c01187be935a with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kYFMZ-0000GQ-2T; Thu, 29 Oct 2020 21:21:39 +0000
Date: Fri, 30 Oct 2020 05:21:32 +0800
From: kernel test robot <lkp@intel.com>
To: "Uladzislau Rezki (Sony)" <urezki@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 06/16] mm/pagemap: Cleanup PREEMPT_COUNT leftovers
Message-ID: <202010300546.cKCboa60-lkp@intel.com>
References: <20201029165019.14218-6-urezki@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline
In-Reply-To: <20201029165019.14218-6-urezki@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi "Uladzislau,

I love your patch! Perhaps something to improve:

[auto build test WARNING on arm/for-next]
[also build test WARNING on tip/sched/core linus/master v5.10-rc1]
[cannot apply to rcu/dev drm-intel/for-linux-next next-20201029]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Uladzislau-Rezki-Sony/rcu-tree-Add-a-work-to-allocate-pages-from-regular-context/20201030-005247
base:   git://git.armlinux.org.uk/~rmk/linux-arm.git for-next
config: arm-randconfig-r004-20201029 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 772aaa602383cf82795572ebcd86b0e660f3579f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/1e0b66ce2b779463194f8b398b8e48caa95aabf4
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Uladzislau-Rezki-Sony/rcu-tree-Add-a-work-to-allocate-pages-from-regular-context/20201030-005247
        git checkout 1e0b66ce2b779463194f8b398b8e48caa95aabf4
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/char/random.c:348:
   In file included from include/trace/events/random.h:8:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:14:
   include/linux/pagemap.h:207:26: error: expected ';' after do/while statement
           VM_BUG_ON(preemptible())
                                   ^
                                   ;
>> drivers/char/random.c:1269:41: warning: shift count >= width of type [-Wshift-count-overflow]
           c_high = (sizeof(cycles) > 4) ? cycles >> 32 : 0;
                                                  ^  ~~
   drivers/char/random.c:1270:35: warning: shift count >= width of type [-Wshift-count-overflow]
           j_high = (sizeof(now) > 4) ? now >> 32 : 0;
                                            ^  ~~
   drivers/char/random.c:2296:6: warning: no previous prototype for function 'add_hwgenerator_randomness' [-Wmissing-prototypes]
   void add_hwgenerator_randomness(const char *buffer, size_t count,
        ^
   drivers/char/random.c:2296:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void add_hwgenerator_randomness(const char *buffer, size_t count,
   ^
   static 
   3 warnings and 1 error generated.
--
   In file included from drivers/usb/host/ehci-platform.c:37:
   In file included from include/linux/usb/of.h:12:
   In file included from include/linux/usb/otg.h:13:
   In file included from include/linux/phy/phy.h:17:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:14:
   include/linux/pagemap.h:207:26: error: expected ';' after do/while statement
           VM_BUG_ON(preemptible())
                                   ^
                                   ;
>> drivers/usb/host/ehci-platform.c:259:24: warning: shift count >= width of type [-Wshift-count-overflow]
                   pdata->dma_mask_64 ? DMA_BIT_MASK(64) : DMA_BIT_MASK(32));
                                        ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   1 warning and 1 error generated.
--
   In file included from drivers/usb/host/xhci-plat.c:21:
   In file included from include/linux/usb/of.h:12:
   In file included from include/linux/usb/otg.h:13:
   In file included from include/linux/phy/phy.h:17:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:14:
   include/linux/pagemap.h:207:26: error: expected ';' after do/while statement
           VM_BUG_ON(preemptible())
                                   ^
                                   ;
>> drivers/usb/host/xhci-plat.c:222:10: warning: shift count >= width of type [-Wshift-count-overflow]
                                                      DMA_BIT_MASK(64));
                                                      ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   drivers/usb/host/xhci-plat.c:224:43: warning: shift count >= width of type [-Wshift-count-overflow]
                   ret = dma_set_mask_and_coherent(sysdev, DMA_BIT_MASK(64));
                                                           ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   2 warnings and 1 error generated.
--
   In file included from drivers/mmc/host/sdhci.c:24:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:14:
   include/linux/pagemap.h:207:26: error: expected ';' after do/while statement
           VM_BUG_ON(preemptible())
                                   ^
                                   ;
>> drivers/mmc/host/sdhci.c:3953:40: warning: shift count >= width of type [-Wshift-count-overflow]
                   ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
                                                        ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   drivers/mmc/host/sdhci.c:4254:20: warning: shift count >= width of type [-Wshift-count-overflow]
                   host->dma_mask = DMA_BIT_MASK(64);
                                    ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   2 warnings and 1 error generated.

vim +1269 drivers/char/random.c

ee3e00e9e7101c8 Theodore Ts'o     2014-06-15  1254  
775f4b297b78060 Theodore Ts'o     2012-07-02  1255  void add_interrupt_randomness(int irq, int irq_flags)
^1da177e4c3f415 Linus Torvalds    2005-04-16  1256  {
775f4b297b78060 Theodore Ts'o     2012-07-02  1257  	struct entropy_store	*r;
1b2a1a7e8ad1144 Christoph Lameter 2014-08-17  1258  	struct fast_pool	*fast_pool = this_cpu_ptr(&irq_randomness);
775f4b297b78060 Theodore Ts'o     2012-07-02  1259  	struct pt_regs		*regs = get_irq_regs();
775f4b297b78060 Theodore Ts'o     2012-07-02  1260  	unsigned long		now = jiffies;
655b226470b2295 Theodore Ts'o     2013-09-22  1261  	cycles_t		cycles = random_get_entropy();
43759d4f429c8d5 Theodore Ts'o     2014-06-14  1262  	__u32			c_high, j_high;
655b226470b2295 Theodore Ts'o     2013-09-22  1263  	__u64			ip;
83664a6928a420b H. Peter Anvin    2014-03-17  1264  	unsigned long		seed;
91fcb532efe366d Theodore Ts'o     2014-06-10  1265  	int			credit = 0;
655b226470b2295 Theodore Ts'o     2013-09-22  1266  
ee3e00e9e7101c8 Theodore Ts'o     2014-06-15  1267  	if (cycles == 0)
ee3e00e9e7101c8 Theodore Ts'o     2014-06-15  1268  		cycles = get_reg(fast_pool, regs);
655b226470b2295 Theodore Ts'o     2013-09-22 @1269  	c_high = (sizeof(cycles) > 4) ? cycles >> 32 : 0;
655b226470b2295 Theodore Ts'o     2013-09-22  1270  	j_high = (sizeof(now) > 4) ? now >> 32 : 0;
43759d4f429c8d5 Theodore Ts'o     2014-06-14  1271  	fast_pool->pool[0] ^= cycles ^ j_high ^ irq;
43759d4f429c8d5 Theodore Ts'o     2014-06-14  1272  	fast_pool->pool[1] ^= now ^ c_high;
655b226470b2295 Theodore Ts'o     2013-09-22  1273  	ip = regs ? instruction_pointer(regs) : _RET_IP_;
43759d4f429c8d5 Theodore Ts'o     2014-06-14  1274  	fast_pool->pool[2] ^= ip;
ee3e00e9e7101c8 Theodore Ts'o     2014-06-15  1275  	fast_pool->pool[3] ^= (sizeof(ip) > 4) ? ip >> 32 :
ee3e00e9e7101c8 Theodore Ts'o     2014-06-15  1276  		get_reg(fast_pool, regs);
3060d6fe2857064 Yinghai Lu        2008-08-19  1277  
43759d4f429c8d5 Theodore Ts'o     2014-06-14  1278  	fast_mix(fast_pool);
43759d4f429c8d5 Theodore Ts'o     2014-06-14  1279  	add_interrupt_bench(cycles);
3060d6fe2857064 Yinghai Lu        2008-08-19  1280  
43838a23a05fbd1 Theodore Ts'o     2018-04-11  1281  	if (unlikely(crng_init == 0)) {
e192be9d9a30555 Theodore Ts'o     2016-06-12  1282  		if ((fast_pool->count >= 64) &&
e192be9d9a30555 Theodore Ts'o     2016-06-12  1283  		    crng_fast_load((char *) fast_pool->pool,
e192be9d9a30555 Theodore Ts'o     2016-06-12  1284  				   sizeof(fast_pool->pool))) {
e192be9d9a30555 Theodore Ts'o     2016-06-12  1285  			fast_pool->count = 0;
e192be9d9a30555 Theodore Ts'o     2016-06-12  1286  			fast_pool->last = now;
e192be9d9a30555 Theodore Ts'o     2016-06-12  1287  		}
e192be9d9a30555 Theodore Ts'o     2016-06-12  1288  		return;
e192be9d9a30555 Theodore Ts'o     2016-06-12  1289  	}
e192be9d9a30555 Theodore Ts'o     2016-06-12  1290  
840f95077ffd640 Theodore Ts'o     2014-06-14  1291  	if ((fast_pool->count < 64) &&
840f95077ffd640 Theodore Ts'o     2014-06-14  1292  	    !time_after(now, fast_pool->last + HZ))
^1da177e4c3f415 Linus Torvalds    2005-04-16  1293  		return;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1294  
e192be9d9a30555 Theodore Ts'o     2016-06-12  1295  	r = &input_pool;
840f95077ffd640 Theodore Ts'o     2014-06-14  1296  	if (!spin_trylock(&r->lock))
91fcb532efe366d Theodore Ts'o     2014-06-10  1297  		return;
83664a6928a420b H. Peter Anvin    2014-03-17  1298  
91fcb532efe366d Theodore Ts'o     2014-06-10  1299  	fast_pool->last = now;
85608f8e16c28f8 Theodore Ts'o     2014-06-10  1300  	__mix_pool_bytes(r, &fast_pool->pool, sizeof(fast_pool->pool));
83664a6928a420b H. Peter Anvin    2014-03-17  1301  
83664a6928a420b H. Peter Anvin    2014-03-17  1302  	/*
83664a6928a420b H. Peter Anvin    2014-03-17  1303  	 * If we have architectural seed generator, produce a seed and
48d6be955a7167b Theodore Ts'o     2014-07-17  1304  	 * add it to the pool.  For the sake of paranoia don't let the
48d6be955a7167b Theodore Ts'o     2014-07-17  1305  	 * architectural seed generator dominate the input from the
48d6be955a7167b Theodore Ts'o     2014-07-17  1306  	 * interrupt noise.
83664a6928a420b H. Peter Anvin    2014-03-17  1307  	 */
83664a6928a420b H. Peter Anvin    2014-03-17  1308  	if (arch_get_random_seed_long(&seed)) {
85608f8e16c28f8 Theodore Ts'o     2014-06-10  1309  		__mix_pool_bytes(r, &seed, sizeof(seed));
48d6be955a7167b Theodore Ts'o     2014-07-17  1310  		credit = 1;
83664a6928a420b H. Peter Anvin    2014-03-17  1311  	}
91fcb532efe366d Theodore Ts'o     2014-06-10  1312  	spin_unlock(&r->lock);
83664a6928a420b H. Peter Anvin    2014-03-17  1313  
ee3e00e9e7101c8 Theodore Ts'o     2014-06-15  1314  	fast_pool->count = 0;
83664a6928a420b H. Peter Anvin    2014-03-17  1315  
ee3e00e9e7101c8 Theodore Ts'o     2014-06-15  1316  	/* award one bit for the contents of the fast pool */
ee3e00e9e7101c8 Theodore Ts'o     2014-06-15  1317  	credit_entropy_bits(r, credit + 1);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1318  }
4b44f2d18a33056 Stephan Mueller   2016-05-02  1319  EXPORT_SYMBOL_GPL(add_interrupt_randomness);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1320  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010300546.cKCboa60-lkp%40intel.com.

--EeQfGwPcQSOJBaQU
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--EeQfGwPcQSOJBaQU--
