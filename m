Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZFWRGEAMGQEKCUQOGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A253D9EDA
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 09:40:21 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id p71-20020a25424a0000b029056092741626sf5860908yba.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 00:40:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627544420; cv=pass;
        d=google.com; s=arc-20160816;
        b=wTF7UVpx3Pajyi3u2zR42iHW79WNx4zSoj/YyeWaZaxaB2Iq1U771d6w8pXEtfP7vX
         ttzorCmRDYDCdJe/X/tRbd/0/XDYrVk48lssSm6cz8IWh9YvphBHwwt6FDCoqAuUec44
         qfHZvASkYEu2d9ldvkz0RNzYiT2pYEfsqsZ55q5pDhTIFTVsJVje+v/H6DJwwDzd86EY
         pu+dhfZcdUBscjPtcPSHOKriUfFP8ChDHlyYuM4tIxu77IHmt71v4blRrxQCPYoZbi5y
         yETn5yGuzS/Oi2Qq6WVN50uKvFW2X5XtNV/uu9GR3F2HrAHzYxZ/Pr29u8ooxI8jDYnp
         bFaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+0v0S/pp7liwNyFhh54iiFw7ylWNFLRslgigzAMfkoY=;
        b=GT7yDbOd7MBCDZYB/T9TXEqHNJfNvrUBL475tMe5S+Iou6DwOybwH6I5OU2sauFXyc
         91bKDvjWjP4Bhn6GVGsu+5FYMh9MUvLJmc1MNjtHs39NHMEkj461JLa0fTOx8FcpdfUq
         +ttF6LohavQGXw7FJkxzpaeyuP0EGlWC3ahCtohyb3rfwa2ens7bFf91Wi/Jx+Q8PP60
         P6fgefuMwHUyxsSlNf1rx+SRtROK5W0NPhoI9wMa/KxWnDx/Na6YNdlTQ8thra4GrAqv
         SWnLetjS1hrcYnFwtldipQfRfg8Hx8vSQtl9mY21VjBlnMMSg5KXFpG7EZUkVqMWYNKZ
         Vutw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+0v0S/pp7liwNyFhh54iiFw7ylWNFLRslgigzAMfkoY=;
        b=ICbogdaiQRk7ok+jiC8TmbnEGNaquMoWwP7bo8DMyKiz040mN7KOMjWH6IiPoCY2oF
         V06o8TypR2rAXVUi+BD3/MzLBMMrwlOCTeLTwCyOvgEhbaZszevVimHShE1qgJwIzCQf
         QUtWRfqFYePa2xoFh0wGkjv/S8KcyGZRkpRcQ3KzbjiAIch2c23OctcxNLdMj411aSi8
         MsfAPKP2zQ0LdJd7kdWTW4/XxvNgOuyG1unRrtkKBeeQ3rfRdikUvToG+RH0ELVFXvfG
         Xf90ImyzFuB80AlSndjnLYJM2qCYQuZE2YN2N29ItV4xddPONU9S0V4K5o1U01MZvx+o
         FwNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+0v0S/pp7liwNyFhh54iiFw7ylWNFLRslgigzAMfkoY=;
        b=euSl1blezDq2KP3LVriQR1bT+5vTsgG89bffTmRrleOqQaPgdv1WuTfl0htHh+aQO9
         /0z9hjJxC9EoFy6SLzhGvHJvIv3UMW2iHUrFwXbsf3iTF7bpaNktKo4R+Z4z0+p0OW/u
         JsSVr4VSzUJw7r42LEv5lz/wZk3+2slKI+EtLc4RFson8cAHYu1kMGWadioy5ghqGJ/p
         uSchYrkoUe5dJxoUFH52eIIyQIphuREauhIKVS8E/NULi4Be0fUF3BE80B251/ZV+QGf
         5ntHqtLJH8NZI914eOSy886R+p+nDdtfoun+eo2dAJUCX3lKe7UAjGhJX8wcUe4sWaMw
         tGnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531G5nVnJH2EIt58bnwKOc08yg4Zt1Z0symF+8UfiRmQTfT/84w4
	Jd6nb6R2ieUGGepICLoygyo=
X-Google-Smtp-Source: ABdhPJx1gkmiIlhAj+Qi8EXLp0V0MA5QdF1BrJYlBH4twQbCG8TnJgNIvoAy/+0ibsiaSGF35Sz/xg==
X-Received: by 2002:a25:be09:: with SMTP id h9mr5195471ybk.239.1627544420703;
        Thu, 29 Jul 2021 00:40:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a4c7:: with SMTP id g65ls2665435ybi.8.gmail; Thu, 29 Jul
 2021 00:40:20 -0700 (PDT)
X-Received: by 2002:a25:568b:: with SMTP id k133mr5283884ybb.196.1627544420052;
        Thu, 29 Jul 2021 00:40:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627544420; cv=none;
        d=google.com; s=arc-20160816;
        b=a4GW7h26k9jo5jzCwW8gA+B1ZexXAIK9q3JGrkEr9VJc6GM6KfLcGiNKAgpzQgDBUy
         SYgmsHL93/TMIBlkDw0QeBhfJJ1fg8icaa5ksonVCbv9Gr6wDvdjE5/hHtqUzPjggYic
         noafQNxKj5au/x2RDYE73xP2oGUgm3sCPgZHM3AWIoOPTuPkA0/dqVYZ0/NzlZCddA5j
         FevRnWsCza75rB9bbGZG5o1BfouSO+KcUQeExFd4UllhHoRZd766G5oevihLQ6To2TYp
         6qhW4WsfKFI6k268focp5+QOhivoSZGN7H2yU6oz/f1jyHzLwW0XXLiRrgv1pYotkALs
         Z9fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=bDZNsVRhQrQhbyjYEPjaG38YhTJN4De3VUAiNznx1dM=;
        b=r4w5m6p0wWCXBUR56NT0cWkU+feIhXVeLSpPiP7vvvb3WJVASrF34ZZw6AT588tfjG
         zUNYrOFx4PVMttI5O7bZ2YCk3oJX0pwLG5b5x5rMRupgvNteoHwsrXitxbY9Xh0fg8+Q
         W6qpBqLfmZranx4V8wKYZbFxaSvPm+0jNUWNGdVsEu9+2yavBYHpS2ICtVss35uY5wTX
         iJosAnIK8zoout1K4/JRD3j3VFfTPWuhEdi7TyXS25Gr/XkSlndVpcyTSewVbvfC2nCT
         /IHvI3Bm1HiRknVatUnPZ/HDbNYH93ShXJVNrSyo3QDVdOsleMZFQ5ngGqWbGpLoOHU8
         mR3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id q62si173188ybc.4.2021.07.29.00.40.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Jul 2021 00:40:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="210939275"
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; 
   d="gz'50?scan'50,208,50";a="210939275"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jul 2021 00:40:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; 
   d="gz'50?scan'50,208,50";a="666281257"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 29 Jul 2021 00:40:14 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m90eK-0008zK-Nu; Thu, 29 Jul 2021 07:40:12 +0000
Date: Thu, 29 Jul 2021 15:39:31 +0800
From: kernel test robot <lkp@intel.com>
To: Rui Wang <wangrui@loongson.cn>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org
Subject: Re: [RFC PATCH v2] locking/atomic: Implement
 atomic{,64,_long}_{fetch_,}{andnot_or}{,_relaxed,_acquire,_release}()
Message-ID: <202107291510.SKkJV8xJ-lkp@intel.com>
References: <20210729024029.910-1-wangrui@loongson.cn>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline
In-Reply-To: <20210729024029.910-1-wangrui@loongson.cn>
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


--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Rui,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on linus/master]
[also build test ERROR on v5.14-rc3]
[cannot apply to asm-generic/master tip/master arm-perf/for-next/perf next-20210728]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Rui-Wang/locking-atomic-Implement-atomic-64-_long-_-fetch_-andnot_or-_relaxed-_acquire-_release/20210729-104346
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 4010a528219e01dd02e768b22168f7f0e78365ce
config: s390-buildonly-randconfig-r004-20210728 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c49df15c278857adecd12db6bb1cdc96885f7079)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/3d4ec898fec426c1bfdcb9588f053e95f6b5e823
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Rui-Wang/locking-atomic-Implement-atomic-64-_long-_-fetch_-andnot_or-_relaxed-_acquire-_release/20210729-104346
        git checkout 3d4ec898fec426c1bfdcb9588f053e95f6b5e823
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from lib/test_bitops.c:9:
   In file included from include/linux/module.h:14:
   In file included from include/linux/buildid.h:5:
   In file included from include/linux/mm_types.h:5:
   In file included from include/linux/mm_types_task.h:13:
   In file included from include/linux/atomic.h:80:
>> include/linux/atomic-arch-fallback.h:1264:3: error: expression result unused [-Werror,-Wunused-value]
                   O;
                   ^
   include/linux/atomic-arch-fallback.h:2501:3: error: expression result unused [-Werror,-Wunused-value]
                   O;
                   ^
   2 errors generated.


vim +1264 include/linux/atomic-arch-fallback.h

  1252	
  1253	#ifndef arch_atomic_andnot_or
  1254	static __always_inline void
  1255	arch_atomic_andnot_or(int m, int o, atomic_t *v)
  1256	{
  1257		({
  1258			int N, O = arch_atomic_read(v);
  1259			do {
  1260				N = O;
  1261				N &= ~m;
  1262				N |= o;
  1263			} while (!arch_atomic_try_cmpxchg_relaxed(v, &O, N));
> 1264			O;
  1265		});
  1266	}
  1267	#define arch_atomic_andnot_or arch_atomic_andnot_or
  1268	#endif
  1269	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107291510.SKkJV8xJ-lkp%40intel.com.

--J2SCkAp4GZ/dPZZf
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
eMKnDbH/BSATgmUa9QAA

--J2SCkAp4GZ/dPZZf--
