Return-Path: <clang-built-linux+bncBDY75FPO2YHRB45Z5H3AKGQEKOEN5AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB5F1EFBEC
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 16:55:49 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id w1sf7683215pfw.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 07:55:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591368948; cv=pass;
        d=google.com; s=arc-20160816;
        b=HZKRodhd2jADK0hd+To9cxHGKefc1F8aOVGGZgsNK4iJtfqA0SPqyxFj7x6l/kyDAE
         5bVysPkY5mc7oK9y8JxfuQ5wUqznxdbuzg2P1OksXZn1Pdn1CvlI6HDaEaDVWS3mcUIN
         SZki6ORuOX1EtE9CXPz8HsY7tbE0p5GegcGr6n0EbroK3LQEjyxMHMiRe60UtxgCyYQx
         1kspTbK38xBrcZVmt3SmTvC9lserg6TbUChdJYPUylanbmZSkB4MLk7TVMzwUt0PDwFD
         4vsHkLO/aIxTVVw3ZfwSN+bKroAI9aqK0Gc1sqJsJmQnw+F85cgX/swSjqkUfNWA4GaL
         NUIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=o+ToxcobiAhj8HZugydKCW+3fbjPdU1nbfmET6kA/js=;
        b=E64Vc9H8B6s3U/jfUiVrKMVbyan1gm1nwQGJN+V9qYfBgVgv+M3fuyJIGD31SxoZ2H
         jtS1EnlAPGOR/udlBTeB9J+g/W/d1nmKy9nHkLfQhq9cFRkWMQJOocp9RPT2OeaQ4C0V
         a23IEUBhH9Sc4PrV296qHegggouU/PCxX4X/N+KbhDQYLYoj+UHRpL/MliI4vz5vde7B
         kyKkIIooqlcx+gofe7rYIAi7JeOEo6JXi2jFsVxm4Qs4QwHie86r98Z/rRHymy/PHVyv
         CLaTxjrPVwYcqHiLsl17HUuhXe7ivgcPCs6a7g+LaoWTM72njIxTapbSvT3wytCCEB8V
         7+2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="qKdqR8W/";
       spf=pass (google.com: domain of jaegeuk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jaegeuk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o+ToxcobiAhj8HZugydKCW+3fbjPdU1nbfmET6kA/js=;
        b=sJ1mKLjBjgz+uyGQm2FCvDqqB2MCgXGqel+2r2hikkQcIL11vDVlWq9l9IO6P7qS1h
         pK3ZJGoViUpQL7nlSJ2aPAoRNHraj2JLrJITmGC7oxlHfJ1HaYcQ7xyop/YV4KtTwFrv
         XJ1XKoZAC8XlOxZxFJcV5Fz3a8BxF+kIPUXIw2rtRGlZV6cZzO7IjvhdTqiyWOud9yUd
         3K+6t67+F6qry8lF3XyNtrKGXfvdqNjtQUVtQ86+iUCBiuI+A3tkMngOVuFX/DN3tvgk
         ecHts6+rWy/E7SBnIn15xwoJLKi4witQUaoRp50G5GriJxuSlCwD7LZEPrIU81prJdlL
         0SmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=o+ToxcobiAhj8HZugydKCW+3fbjPdU1nbfmET6kA/js=;
        b=hkeVC4gQpO7PWyyuUjjaZ4p3XJrHjcVHK7TKhAQVS0kCFbhI00uDFW8ZrgR9uPT867
         nPvZ9HL2fhNqLJLarjc3Zj4PAJE8NUAolPq7wKYMwEG83CVUY+BOk2Cm+ftqy6OpwOft
         w0dJB/DbIlj4ElHSZOBWuJiVrNCgtlJeTK13dotc0tdpGpp82i7tqbNAK6jxteo91+pg
         Cxmh1/uecUmNXd5dcoVSy255S0j37rjKPAklZwHsA8q5AyBH0R33Nll+bAT+Gs85LdB7
         TSvNz4/nHVt9hORh1BgH1hR6e1pLUpTHYrZiB4H5bmbx2FgpD9OvwUbp2BBAEQslSb3X
         yk2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532a1F8m+hUzifvXZ5QbEYHQXSEgZ2Oimo/tOI7d0w/GA5mduxQM
	t1Lj+XviJTpzePZZsLyWCBE=
X-Google-Smtp-Source: ABdhPJwSS4YuD6NyF22B4n2EJOK3Z8TWsm/y2wlR8ExxjU7Gsfh56M74mKYCjL8NeeduhgiF4zuDTw==
X-Received: by 2002:a62:1b87:: with SMTP id b129mr9962838pfb.162.1591368947875;
        Fri, 05 Jun 2020 07:55:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8f3a:: with SMTP id y26ls3089566pfr.3.gmail; Fri, 05 Jun
 2020 07:55:47 -0700 (PDT)
X-Received: by 2002:a63:3587:: with SMTP id c129mr10072373pga.190.1591368947363;
        Fri, 05 Jun 2020 07:55:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591368947; cv=none;
        d=google.com; s=arc-20160816;
        b=vjxpLDhaAAi/KpmSamYOuWpZrTod273lAzkhgSvNsQ3dZozMHOugP+7903ORhbz35g
         yws5UU5E4WcAcv6quJWRk1kLZE8unVpztePRJwlCQjexrETbwK0otF/aDQPaZeh8plWW
         p/vSN7pk04CSVeirR64evuNmz9upqPASsdHkFIMd+fToxF8R4F6BZVAlwXEPVaLSJCO1
         9r69LOD5qRObb8PSLHhtSy9Mi8W6cFAmRH69zd7mTCqvY5FswqWK30NTlB7s5eVRvFVu
         TCvLy3JQF4eqtVPgzHwfirez+hH9iPCexE9yidqAz8yXXwxmOmM6GNSHZiXXfTq0BUpt
         bv3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SY6p+M1PZXV3o83RdZ49ZcMK0+RTil8PEaA7X9gY+uo=;
        b=XT0gdYBBVrjR9d6Z52LpXNA9pTKXZvTHwrSlhvGJqlJXQMwHnupPjJ0qPkv9mvYGiS
         bIWJw2wy/pYGx9eeEDpfLF1g/ZRtdLXqudhYZHLeN4/u9qL9AA7cgvI3hcX3hRryvGc9
         wkHcT4W6Vg2F+Vuw954VayFM6pCiWNoXpP40RPrsshvowRhlGIY2Gz5hxDXfehh5nXyc
         zlGfKAzzv58cZQ8PmJzHAtdspeI7wJP+DZGo0Vy8SfgLBEw58gj9TqF1TZ0RTlG2hBG0
         rVe7UX1wAAFRcnRZn205sP+5SGZkkfCoOVUChqu0Wnoaf31NfMjE5YaSHaeu5IrPezDZ
         yo3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="qKdqR8W/";
       spf=pass (google.com: domain of jaegeuk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jaegeuk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m204si713864pfd.1.2020.06.05.07.55.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Jun 2020 07:55:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jaegeuk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [104.132.1.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F00B22065C;
	Fri,  5 Jun 2020 14:55:46 +0000 (UTC)
Date: Fri, 5 Jun 2020 07:55:46 -0700
From: Jaegeuk Kim <jaegeuk@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Eric Biggers <ebiggers@google.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	linux-f2fs-devel@lists.sourceforge.net
Subject: Re: [f2fs:dev-test 48/48] fs/f2fs/super.c:3303:12: warning: stack
 frame size of 2064 bytes in function 'f2fs_fill_super'
Message-ID: <20200605145546.GA227721@google.com>
References: <202006051725.63EW72i7%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006051725.63EW72i7%lkp@intel.com>
X-Original-Sender: jaegeuk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="qKdqR8W/";       spf=pass
 (google.com: domain of jaegeuk@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=jaegeuk@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Eric,

Could you PTAL?

On 06/05, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs.git dev-test
> head:   adf3d3a53cf13d0998c699ba43d8582c875179e3
> commit: adf3d3a53cf13d0998c699ba43d8582c875179e3 [48/48] f2fs: don't return vmalloc() memory from f2fs_kmalloc()
> config: powerpc64-randconfig-r011-20200605 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ac47588bc4ff5927a01ed6fcd269ce86aba52a7c)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         git checkout adf3d3a53cf13d0998c699ba43d8582c875179e3
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> In file included from arch/powerpc/include/asm/hardirq.h:6:
> In file included from include/linux/irq.h:20:
> In file included from include/linux/io.h:13:
> In file included from arch/powerpc/include/asm/io.h:605:
> arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
> __do_##name al;                                                    ^~~~~~~~~~~~~~
> <scratch space>:50:1: note: expanded from here
> __do_insw
> ^
> arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insw'
> #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
> ~~~~~~~~~~~~~~~~~~~~~^
> In file included from fs/f2fs/super.c:12:
> In file included from include/linux/buffer_head.h:14:
> In file included from include/linux/pagemap.h:11:
> In file included from include/linux/highmem.h:10:
> In file included from include/linux/hardirq.h:9:
> In file included from arch/powerpc/include/asm/hardirq.h:6:
> In file included from include/linux/irq.h:20:
> In file included from include/linux/io.h:13:
> In file included from arch/powerpc/include/asm/io.h:605:
> arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
> __do_##name al;                                                    ^~~~~~~~~~~~~~
> <scratch space>:52:1: note: expanded from here
> __do_insl
> ^
> arch/powerpc/include/asm/io.h:544:56: note: expanded from macro '__do_insl'
> #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
> ~~~~~~~~~~~~~~~~~~~~~^
> In file included from fs/f2fs/super.c:12:
> In file included from include/linux/buffer_head.h:14:
> In file included from include/linux/pagemap.h:11:
> In file included from include/linux/highmem.h:10:
> In file included from include/linux/hardirq.h:9:
> In file included from arch/powerpc/include/asm/hardirq.h:6:
> In file included from include/linux/irq.h:20:
> In file included from include/linux/io.h:13:
> In file included from arch/powerpc/include/asm/io.h:605:
> arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
> __do_##name al;                                                    ^~~~~~~~~~~~~~
> <scratch space>:54:1: note: expanded from here
> __do_outsb
> ^
> arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsb'
> #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
> ~~~~~~~~~~~~~~~~~~~~~^
> In file included from fs/f2fs/super.c:12:
> In file included from include/linux/buffer_head.h:14:
> In file included from include/linux/pagemap.h:11:
> In file included from include/linux/highmem.h:10:
> In file included from include/linux/hardirq.h:9:
> In file included from arch/powerpc/include/asm/hardirq.h:6:
> In file included from include/linux/irq.h:20:
> In file included from include/linux/io.h:13:
> In file included from arch/powerpc/include/asm/io.h:605:
> arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
> __do_##name al;                                                    ^~~~~~~~~~~~~~
> <scratch space>:56:1: note: expanded from here
> __do_outsw
> ^
> arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsw'
> #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
> ~~~~~~~~~~~~~~~~~~~~~^
> In file included from fs/f2fs/super.c:12:
> In file included from include/linux/buffer_head.h:14:
> In file included from include/linux/pagemap.h:11:
> In file included from include/linux/highmem.h:10:
> In file included from include/linux/hardirq.h:9:
> In file included from arch/powerpc/include/asm/hardirq.h:6:
> In file included from include/linux/irq.h:20:
> In file included from include/linux/io.h:13:
> In file included from arch/powerpc/include/asm/io.h:605:
> arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
> __do_##name al;                                                    ^~~~~~~~~~~~~~
> <scratch space>:58:1: note: expanded from here
> __do_outsl
> ^
> arch/powerpc/include/asm/io.h:547:58: note: expanded from macro '__do_outsl'
> #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
> ~~~~~~~~~~~~~~~~~~~~~^
> >> fs/f2fs/super.c:3303:12: warning: stack frame size of 2064 bytes in function 'f2fs_fill_super' [-Wframe-larger-than=]
> static int f2fs_fill_super(struct super_block *sb, void *data, int silent)
> ^
> 13 warnings generated.
> 
> vim +/f2fs_fill_super +3303 fs/f2fs/super.c
> 
> 84b89e5d943d8d Jaegeuk Kim      2018-02-22  3302  
> aff063e266cbf4 Jaegeuk Kim      2012-11-02 @3303  static int f2fs_fill_super(struct super_block *sb, void *data, int silent)
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3304  {
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3305  	struct f2fs_sb_info *sbi;
> da554e48caab95 hujianyang       2015-05-21  3306  	struct f2fs_super_block *raw_super;
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3307  	struct inode *root;
> 99e3e858a486cc Sheng Yong       2016-05-11  3308  	int err;
> aa2c8c43e4a5c2 Chao Yu          2019-02-19  3309  	bool skip_recovery = false, need_fsck = false;
> dabc4a5c60f796 Jaegeuk Kim      2015-01-23  3310  	char *options = NULL;
> e8240f656d4d5d Chao Yu          2015-12-15  3311  	int recovery, i, valid_super_block;
> 8f1dbbbbdfe9ba Shuoran Liu      2016-01-27  3312  	struct curseg_info *seg_i;
> aa2c8c43e4a5c2 Chao Yu          2019-02-19  3313  	int retry_cnt = 1;
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3314  
> ed2e621a95d704 Jaegeuk Kim      2014-08-08  3315  try_onemore:
> da554e48caab95 hujianyang       2015-05-21  3316  	err = -EINVAL;
> da554e48caab95 hujianyang       2015-05-21  3317  	raw_super = NULL;
> e8240f656d4d5d Chao Yu          2015-12-15  3318  	valid_super_block = -1;
> da554e48caab95 hujianyang       2015-05-21  3319  	recovery = 0;
> da554e48caab95 hujianyang       2015-05-21  3320  
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3321  	/* allocate memory for f2fs-specific super block info */
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3322  	sbi = kzalloc(sizeof(struct f2fs_sb_info), GFP_KERNEL);
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3323  	if (!sbi)
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3324  		return -ENOMEM;
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3325  
> df728b0f6954c3 Jaegeuk Kim      2016-03-23  3326  	sbi->sb = sb;
> df728b0f6954c3 Jaegeuk Kim      2016-03-23  3327  
> 43b6573bac95d7 Keith Mok        2016-03-02  3328  	/* Load the checksum driver */
> 43b6573bac95d7 Keith Mok        2016-03-02  3329  	sbi->s_chksum_driver = crypto_alloc_shash("crc32", 0, 0);
> 43b6573bac95d7 Keith Mok        2016-03-02  3330  	if (IS_ERR(sbi->s_chksum_driver)) {
> dcbb4c10e6d969 Joe Perches      2019-06-18  3331  		f2fs_err(sbi, "Cannot load crc32 driver.");
> 43b6573bac95d7 Keith Mok        2016-03-02  3332  		err = PTR_ERR(sbi->s_chksum_driver);
> 43b6573bac95d7 Keith Mok        2016-03-02  3333  		sbi->s_chksum_driver = NULL;
> 43b6573bac95d7 Keith Mok        2016-03-02  3334  		goto free_sbi;
> 43b6573bac95d7 Keith Mok        2016-03-02  3335  	}
> 43b6573bac95d7 Keith Mok        2016-03-02  3336  
> ff9234ad4e9747 Namjae Jeon      2013-01-12  3337  	/* set a block size */
> 6bacf52fb58aeb Jaegeuk Kim      2013-12-06  3338  	if (unlikely(!sb_set_blocksize(sb, F2FS_BLKSIZE))) {
> dcbb4c10e6d969 Joe Perches      2019-06-18  3339  		f2fs_err(sbi, "unable to set blocksize");
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3340  		goto free_sbi;
> a07ef784356cf9 Namjae Jeon      2012-12-30  3341  	}
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3342  
> df728b0f6954c3 Jaegeuk Kim      2016-03-23  3343  	err = read_raw_super_block(sbi, &raw_super, &valid_super_block,
> e8240f656d4d5d Chao Yu          2015-12-15  3344  								&recovery);
> c0d39e65ba3243 Namjae Jeon      2013-03-17  3345  	if (err)
> 9076a75f8e0f23 Gu Zheng         2013-10-14  3346  		goto free_sbi;
> 9076a75f8e0f23 Gu Zheng         2013-10-14  3347  
> 5fb08372a68936 Gu Zheng         2013-06-07  3348  	sb->s_fs_info = sbi;
> 52763a4b7a2112 Jaegeuk Kim      2016-06-13  3349  	sbi->raw_super = raw_super;
> 52763a4b7a2112 Jaegeuk Kim      2016-06-13  3350  
> 704956ecf5bcdc Chao Yu          2017-07-31  3351  	/* precompute checksum seed for metadata */
> 7beb01f74415c5 Chao Yu          2018-10-24  3352  	if (f2fs_sb_has_inode_chksum(sbi))
> 704956ecf5bcdc Chao Yu          2017-07-31  3353  		sbi->s_chksum_seed = f2fs_chksum(sbi, ~0, raw_super->uuid,
> 704956ecf5bcdc Chao Yu          2017-07-31  3354  						sizeof(raw_super->uuid));
> 704956ecf5bcdc Chao Yu          2017-07-31  3355  
> d1b959c8770260 Damien Le Moal   2016-10-28  3356  	/*
> d1b959c8770260 Damien Le Moal   2016-10-28  3357  	 * The BLKZONED feature indicates that the drive was formatted with
> d1b959c8770260 Damien Le Moal   2016-10-28  3358  	 * zone alignment optimization. This is optional for host-aware
> d1b959c8770260 Damien Le Moal   2016-10-28  3359  	 * devices, but mandatory for host-managed zoned block devices.
> d1b959c8770260 Damien Le Moal   2016-10-28  3360  	 */
> d1b959c8770260 Damien Le Moal   2016-10-28  3361  #ifndef CONFIG_BLK_DEV_ZONED
> 7beb01f74415c5 Chao Yu          2018-10-24  3362  	if (f2fs_sb_has_blkzoned(sbi)) {
> dcbb4c10e6d969 Joe Perches      2019-06-18  3363  		f2fs_err(sbi, "Zoned block device support is not enabled");
> 1727f317219bfc Chao Yu          2017-06-12  3364  		err = -EOPNOTSUPP;
> d1b959c8770260 Damien Le Moal   2016-10-28  3365  		goto free_sb_buf;
> d1b959c8770260 Damien Le Moal   2016-10-28  3366  	}
> d1b959c8770260 Damien Le Moal   2016-10-28  3367  #endif
> 498c5e9fcd10c8 Yunlei He        2015-05-07  3368  	default_options(sbi);
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3369  	/* parse mount options */
> dabc4a5c60f796 Jaegeuk Kim      2015-01-23  3370  	options = kstrdup((const char *)data, GFP_KERNEL);
> dabc4a5c60f796 Jaegeuk Kim      2015-01-23  3371  	if (data && !options) {
> dabc4a5c60f796 Jaegeuk Kim      2015-01-23  3372  		err = -ENOMEM;
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3373  		goto free_sb_buf;
> dabc4a5c60f796 Jaegeuk Kim      2015-01-23  3374  	}
> dabc4a5c60f796 Jaegeuk Kim      2015-01-23  3375  
> dabc4a5c60f796 Jaegeuk Kim      2015-01-23  3376  	err = parse_options(sb, options);
> dabc4a5c60f796 Jaegeuk Kim      2015-01-23  3377  	if (err)
> dabc4a5c60f796 Jaegeuk Kim      2015-01-23  3378  		goto free_options;
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3379  
> e0afc4d6d0d3e7 Chao Yu          2015-12-31  3380  	sbi->max_file_blocks = max_file_blocks();
> e0afc4d6d0d3e7 Chao Yu          2015-12-31  3381  	sb->s_maxbytes = sbi->max_file_blocks <<
> e0afc4d6d0d3e7 Chao Yu          2015-12-31  3382  				le32_to_cpu(raw_super->log_blocksize);
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3383  	sb->s_max_links = F2FS_LINK_MAX;
> aff063e266cbf4 Jaegeuk Kim      2012-11-02  3384  
> 5aba54302a46fd Daniel Rosenberg 2019-07-23  3385  	err = f2fs_setup_casefold(sbi);
> 5aba54302a46fd Daniel Rosenberg 2019-07-23  3386  	if (err)
> 5aba54302a46fd Daniel Rosenberg 2019-07-23  3387  		goto free_options;
> 5aba54302a46fd Daniel Rosenberg 2019-07-23  3388  
> 
> :::::: The code at line 3303 was first introduced by commit
> :::::: aff063e266cbf4754021d8e5d16ee418560906fd f2fs: add super block operations
> 
> :::::: TO: Jaegeuk Kim <jaegeuk.kim@samsung.com>
> :::::: CC: Jaegeuk Kim <jaegeuk.kim@samsung.com>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200605145546.GA227721%40google.com.
