Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBW4Q2CEAMGQEVJB2O2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1733E96D4
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 19:26:52 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id i4-20020a056e0212c4b029022291c9f509sf1652269ilm.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 10:26:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628702811; cv=pass;
        d=google.com; s=arc-20160816;
        b=vaMyFHisbc6G/f2m9XrkDA3ByyhzLnDaHOPib3fDrDkPwgnkv3GvnbSsg88JXH6ROH
         YFs2jMseD4pfNL3tsLyI43XXwiPQjcYilAuKV6iJX/BxdEjfFz/RKRcsFVfqFB4WPffU
         weyZwrB5R2GTFL3ltIeIrE2O4dLaZgGvJPGmHJwiImZyPj7VfmwKjG/JenFOpmt2C7be
         rvtBBZwI9NpOH19ca5ibWWwpPEp+ZjampL5nV5A2dCKS96IlKRlPRRvgnikthcnEwtM1
         vR89n1aKH790fWkG1c6jjxCSMS8Si04zbtjg94tL08fJ0zmBMv3CfIlUC5xDS7aTEnIE
         71MA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=4S/VIEBbKzeBAGCEFRCdOlnQj0NnkZozD+0a5oNUaCw=;
        b=lPB4tO+McTbqe9BtdZqWUeE7WaNHW547UTocI3PFGvjiXhQobE4p6BeuIQVGAJkmlI
         OmsHtyFm6tM+U+oSrgS+6IAM05y4FVrIzFTpyLWS9rZ8zZ2AaZ6i9IyP17nQ1N45lV6I
         /Z/tJvWVyn/5Ukknt8PDr+cv1bqzByXC3mxnPQIGnXvW0vju0ExaXywH4dcJFIp56f7d
         uP1T3ht7HAy7hdyhM+MsAckjOyKh4B58fr9UxcqW+DVWXjV6SIuouZQ0drOO2UIb01VA
         2t19f9Q/ivFHEpjlGC3LgUGSDs136oZzBk/6T9Wd30aUmLAT/7PCY7ud14uPbhZ9X+f3
         5PxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4S/VIEBbKzeBAGCEFRCdOlnQj0NnkZozD+0a5oNUaCw=;
        b=gsF2CbPiUAMPb+rdvr+qImVsamRGHMEbiNUIFHrII7EFken459VGw3wtE2ewMj+kbi
         Ex/Hp9rvb1YjpbdYFKBGqtDyUdFt2Dt54hJ+jRFl2cNW/SFAEuVG1aX6nLLgRpH30hTa
         hbBVukV2uvNCsZwQB3w0wrVHpxxiLwOzJJJ5uM1hrG6bjI+93xIrqD6pZ9GwIvnQ0IE1
         wOdj1ADHiUg+usAnfx/zZhwAHpgnfAwrivlPAB54pb3wUMiBLsDTE8HwrF7llx5y0l+W
         Hot4JDQ1qjsNi8xPZjcUbw9UT0opDUkgdTWfjK8Yy+LjvsRzZo9biAB5hsCMMS8ucaym
         8S1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4S/VIEBbKzeBAGCEFRCdOlnQj0NnkZozD+0a5oNUaCw=;
        b=swopXz72lj57Z02FN4Zl6DBjOY/uNv0AO4ja2N86v+SHnZ3Y5UCeg/33AH+ZHADAUh
         8JJaJObE6XxLGPxE9Ydn/bX5V++wrbD+pOBHqpG8LpSTZgzCuiK62CdBk3jczpAGK/H/
         Gy+re1ZvpjsFfPIeVwrg/+x1lb7SD2d8EZgaVFHh8kuQgMpAr51Of6TiC0Tr4840dSKi
         o5Qg+KpT8xuVVrMnhkyrcLHIyzw/QFMAl7ZmkrOfyngQoMKB80h/UEadEgPNnNc4AZUA
         sdqONxfwlRUTgpFDeLhD2gb/aWt2sF3SI6w9a2FuI+8JhDYw6j0ntZZUoM+eEXyT7ohL
         anjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NoTl0UhEnPxYeq/ZvfgaP1EibcUZTLn7NgChpyNUH7dJSqJRt
	AclwYuMHf4aIH/Esmp5XO4Y=
X-Google-Smtp-Source: ABdhPJw2HrfkIuMPh+6uHXaFMKWlzVUMzoZBCt5EK3DegSovqdPHgHSno9DBzl7/5NwMvdLb5yjKww==
X-Received: by 2002:a5e:8d06:: with SMTP id m6mr374811ioj.18.1628702811346;
        Wed, 11 Aug 2021 10:26:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:144b:: with SMTP id p11ls585254ilo.8.gmail; Wed, 11
 Aug 2021 10:26:50 -0700 (PDT)
X-Received: by 2002:a92:7312:: with SMTP id o18mr47477ilc.56.1628702810597;
        Wed, 11 Aug 2021 10:26:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628702810; cv=none;
        d=google.com; s=arc-20160816;
        b=MaJ9wuvJD4/MmS/Hc5tL2uzd7JUrJ1EltOOgAuALdXQmUECbFyQw4Fxr4dNVKTs3AA
         APb4PzZAN9iCeWtu3DsXxbZqmuysCJMfFm1WniEQaPqm7lztz+q4jrSRudB255Xri+5G
         PPLI/KcqAOLTQ0Rd3c1IVt87ullZJ+FeAttVR9FXuJNhyDtshBhsC6YS/8F1c86gcL/6
         4Am9IuH53NxcIOFmJq7741BR+Fikq/1/TPBjfbGHW6APR+qBryUYYqLwfz6VUGIEbWo1
         gQlhF9GbSZWmPqGrDNl84T6PEImN/2fTgH/WLOS9SGzfmuSZT3tK0ZqNKQenALxRIDZj
         6ZnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=9W0A94k/styP8W0oNF3IBQ9DuRkWXq8H196HMP7M56U=;
        b=pJJ2MsIe6+zsg66Cik26YQEGuXzKJ/lU7suoMGqvVta9l+CeHKK58Y++lnXD+AqMHQ
         qQMcqEeJkorG4+LEiXY3rF1zGt1WpUzAa4JQ6zxXXFnUtUxzusj5czlqr57klHSutTWp
         bTUBDG++dBA513UDtCwxDujML4H3ooDdQEE7p4qPmHh03d9eX0gx1FvAuJaBZa8QkXc2
         ascYBvfEts4k91LO52vHXGfI4Ehwuca5gDZjs62ZlZp2YrYx7slSU3dHmQpDM5MA8vo3
         h0UMeq+vqn82ONsgssQskGjOiZJjrUSJmlzQEXT6uPeobvobrqHy8g26+OSNyOnphAZy
         Lgbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id k11si2621iov.3.2021.08.11.10.26.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Aug 2021 10:26:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-IronPort-AV: E=McAfee;i="6200,9189,10073"; a="195448851"
X-IronPort-AV: E=Sophos;i="5.84,313,1620716400"; 
   d="gz'50?scan'50,208,50";a="195448851"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Aug 2021 10:26:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,313,1620716400"; 
   d="gz'50?scan'50,208,50";a="507101653"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 11 Aug 2021 10:26:46 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mDs05-000Lxg-M2; Wed, 11 Aug 2021 17:26:45 +0000
Date: Thu, 12 Aug 2021 01:26:02 +0800
From: kernel test robot <lkp@intel.com>
To: Naohiro Aota <naohiro.aota@wdc.com>, Josef Bacik <josef@toxicpanda.com>,
	David Sterba <dsterba@suse.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-btrfs@vger.kernel.org, Naohiro Aota <naohiro.aota@wdc.com>
Subject: Re: [PATCH 16/17] btrfs: zoned: finish fully written block group
Message-ID: <202108120115.oH6kGwRo-lkp@intel.com>
References: <59c069e3890f3cbc7fa425cdcf756d241a8bfc92.1628690222.git.naohiro.aota@wdc.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline
In-Reply-To: <59c069e3890f3cbc7fa425cdcf756d241a8bfc92.1628690222.git.naohiro.aota@wdc.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Naohiro,

I love your patch! Perhaps something to improve:

[auto build test WARNING on kdave/for-next]
[cannot apply to v5.14-rc5 next-20210811]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Naohiro-Aota/ZNS-Support-for-Btrfs/20210811-222302
base:   https://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux.git for-next
config: hexagon-randconfig-r041-20210810 (attached as .config)
compiler: clang version 12.0.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/ccecd271dc2436fe587af8d2083c3c96ab86e309
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Naohiro-Aota/ZNS-Support-for-Btrfs/20210811-222302
        git checkout ccecd271dc2436fe587af8d2083c3c96ab86e309
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=hexagon 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/btrfs/zoned.c:1948:2: warning: variable 'ret' is used uninitialized whenever '?:' condition is true [-Wsometimes-uninitialized]
           ASSERT(!list_empty(&block_group->active_bg_list));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:3458:3: note: expanded from macro 'ASSERT'
           (likely(expr) ? (void)0 : assertfail(#expr, __FILE__, __LINE__))
            ^~~~~~~~~~~~
   include/linux/compiler.h:77:20: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/zoned.c:1956:9: note: uninitialized use occurs here
           return ret;
                  ^~~
   fs/btrfs/zoned.c:1948:2: note: remove the '?:' if its condition is always false
           ASSERT(!list_empty(&block_group->active_bg_list));
           ^
   fs/btrfs/ctree.h:3458:3: note: expanded from macro 'ASSERT'
           (likely(expr) ? (void)0 : assertfail(#expr, __FILE__, __LINE__))
            ^
   include/linux/compiler.h:77:20: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                           ^
   fs/btrfs/zoned.c:1908:9: note: initialize the variable 'ret' to silence this warning
           int ret;
                  ^
                   = 0
   1 warning generated.


vim +1948 fs/btrfs/zoned.c

  1900	
  1901	int btrfs_zone_finish_endio(struct btrfs_fs_info *fs_info, u64 logical,
  1902				    u64 length)
  1903	{
  1904		struct btrfs_block_group *block_group;
  1905		struct map_lookup *map;
  1906		struct btrfs_device *device;
  1907		u64 physical;
  1908		int ret;
  1909	
  1910		if (!btrfs_is_zoned(fs_info))
  1911			return 0;
  1912	
  1913		block_group = btrfs_lookup_block_group(fs_info, logical);
  1914		ASSERT(block_group);
  1915	
  1916		if (logical + length < block_group->start + block_group->zone_capacity) {
  1917			ret = 0;
  1918			goto out;
  1919		}
  1920	
  1921		spin_lock(&block_group->lock);
  1922	
  1923		if (!block_group->zone_is_active) {
  1924			spin_unlock(&block_group->lock);
  1925			ret = 0;
  1926			goto out;
  1927		}
  1928	
  1929		block_group->zone_is_active = 0;
  1930		/* We should have consumed all the free space */
  1931		ASSERT(block_group->alloc_offset == block_group->zone_capacity);
  1932		ASSERT(block_group->free_space_ctl->free_space == 0);
  1933		btrfs_clear_treelog_bg(block_group);
  1934		spin_unlock(&block_group->lock);
  1935	
  1936		map = block_group->physical_map;
  1937		device = map->stripes[0].dev;
  1938		physical = map->stripes[0].physical;
  1939	
  1940		if (!device->zone_info->max_active_zones) {
  1941			ret = 0;
  1942			goto out;
  1943		}
  1944	
  1945		btrfs_dev_clear_active_zone(device, physical);
  1946	
  1947		spin_lock(&fs_info->zone_active_bgs_lock);
> 1948		ASSERT(!list_empty(&block_group->active_bg_list));

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108120115.oH6kGwRo-lkp%40intel.com.

--fdj2RfSjLxBAspz7
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
D/nsLo49+L8qnDcXXZcBAA==

--fdj2RfSjLxBAspz7--
