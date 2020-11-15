Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7FFY36QKGQEE4MRPAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A522B392F
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 21:43:42 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id r6sf10478170pfg.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 12:43:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605473020; cv=pass;
        d=google.com; s=arc-20160816;
        b=y4fFzvbPZyJlg9wFmsu94BYSq3pVKi7imnthuLbeknvayoAFE07SRj6OKAvfNaoGfc
         m1hhdCs8b8SHXbqW2ZP5086Mg7loryAK2+wklC8XN/ByeJeoLJwOnjaIxvzsUk9qWgso
         hWyYNS4dlGp1AY6O/kXNDIFz39PY8KDSOhymVFjLbDINmV3t8PR5M9ys6bHmzEt9tXP7
         LlvuBpdlPoU0Pmz6FO2l7/war0+C1riIJ1oeJxaucLxV5y3pXAqNJN9CXb1JALl471D5
         bq9bpbbm4YoOIg03FKX4mwgyTltdRTElHo9JH821fpYpHn9aHovYE1QAzQcWGvJXE6/8
         Ru7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=u6kER8+wZflcNiQ/S5aWbEJ0TzMXhlh53FxYV2x+DVY=;
        b=FNQ/9GwrvKzjE2DegrUlLKT9yvaBWmX4pGNiRkIvTT6dzDusvCymetSf2o23x7O5Tk
         XRlnsiZzByNoFJB7V8WB6A+e/MTsgT8MTwO9h5ydVmiRkl8FzATFcTVwHLL5/o1Nu6Hi
         RzMsrd4MpcAjHZsxAFoJIAfLxVv0WzHfWrLg5eNAwvAWHkFos9zALDk51ESWkukR0Hg8
         b39yKhQMn9sytLImHylx1eiaxmVmXpwkzrE9tzFz3hmHs35hcqmeuTdBbsPjwweyNjNz
         SDlBU9ljdLYerha/eKXposFZuv3GgZP+ObDU6TKxTVOJ9p/Z4vwRXVo3Zvb72rTev2Sx
         Y0ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u6kER8+wZflcNiQ/S5aWbEJ0TzMXhlh53FxYV2x+DVY=;
        b=VNIgzU/nut0yszL250Te+wo+/JB+82XVttz/oPaMXGO1+K37t1Hc6n4+7VsSVVj8aE
         xB8Xz3Sz6oM1DmpnTxbzmDuiTdpSJ6psqAjXhShTJ0Jyr5Hx0VvbuovLONIaa0ZfS0Hl
         NcueFgbv789pnn91EvZe+r3KrNpERkOs00ab99UeFGr/VGoNp3/AnFk8ayThX9pUOnzh
         H6h8n7pcoyCXkqNbYIEz+WTkQjnwYZd9uK9Qed7zOGtlr3o2OOnZIUOihqu175999WYv
         zOMu+utMLfEMiNoN+NFkoEqMzOiwhoq+kCinv3aMUq9njiUr55HUcx4knFj4lAincBOn
         Ub4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u6kER8+wZflcNiQ/S5aWbEJ0TzMXhlh53FxYV2x+DVY=;
        b=K7W4eKTk099V9u9L7dXo1dIyw6bmhRwS5Pth5Zs0Vi3cjruERJOnm3Rhs0GkO5D9ge
         Uleyh3JJzZ9jts0UQ4l5gN+ZnuAi4riozY6OaUhJWd0cORc6IASHQtmsRUtviSJiz8zF
         dpBVlmM0pb473hIj3sjoYO0tbSjJpgtLGs2q5QiYS1MheyVk44285nkWjA0COu4BChRs
         Sjrz5N1TTiyKo4H13h/EPTK1QZux5Ea7jl/+nIRn7+Jq9BWckr49NYRO/JbbncUgY95j
         9FJ5AZ23B8gad6WbGfmsYapYM5gDAdj0G5pBdieYgwoxlW3B5vZ0/+bLEPmsgk/ZDvtr
         gi3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CAaT5Z25VbYGtbUHS3VYMCaCJ1v8s9XnGbOjRgYmPs6FRhZ0T
	t2wzujY8ljAcyHHTaakL5u4=
X-Google-Smtp-Source: ABdhPJzTWBm1Gg1ciAxhgJh1mnfmYC1IlDztt/MPKzaj3avxZl94+hBGgBViyK3+vGOhRED0iJHPcA==
X-Received: by 2002:a17:902:a381:b029:d8:bdca:77dc with SMTP id x1-20020a170902a381b02900d8bdca77dcmr10685442pla.14.1605473020492;
        Sun, 15 Nov 2020 12:43:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:485d:: with SMTP id x29ls3945090pgk.3.gmail; Sun, 15 Nov
 2020 12:43:40 -0800 (PST)
X-Received: by 2002:a62:6586:0:b029:164:1cb9:8aff with SMTP id z128-20020a6265860000b02901641cb98affmr11523726pfb.64.1605473019815;
        Sun, 15 Nov 2020 12:43:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605473019; cv=none;
        d=google.com; s=arc-20160816;
        b=sJKtl0emDHBf8oThyjVk23MqnkidZM6R6dKkymlBuKqajxP619LIiuvvMq2abBTOFO
         /cATgah889V/P0IZ0lpMdofXAP3BSYNOj6eCBjJJo7q8BwgdejX3N8qvS6NKO8ie2DbK
         jSE529nNK92IiHkMl9woVmqf9cAHdbXAnSrIMqMMeIs1IWbPNyRNntHyiTXNVR6hA0cV
         xxbJ+wZFtfCnWVp49EyNK0ChNVBZ3GRDVbNUze76nNkSseTcKGkv5sQR5i/n7Jt4Er3+
         FOFR6TLF2wO+XmgIt3tO+PgCQ8Fy6MOP8rDz7bgvtKI2tVo8RP368t98Dk1IMHI5jcia
         0Agw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Ld8ui8odUmrS09u/TSgEn7Lum4TwNUPEmQttWFAL07U=;
        b=v3zfQqzCzOdHxrMysnjjwNdCYD8wjpWMc4QxNOEfKS0mzZoZqVPFOQ1VNnBo8iIoCA
         ECYH4KFN3Ez87PH1nWvx3gc6ChniZiOgx7NC04M8de6HKubC1CHk7u8/WLToP5zHXpn9
         B5/lIHhtFon7YqpCDEr/b4O5joXX4FTWf7R841OkFYYYn380V2g2eKxBSvnv3w3PuKPS
         2pS8kl/OwRQgcgCwbwP+s5s6E+EASkY4sldEgwcua/eXHyyKrCFd4jzZ/lkFaDAXqAEy
         Xk5xGhe4DLtuvAfF6E5kLKCgFvlbhM6jFA3013u6y36x8Hj/F8u6bK70gUOTmvLMrkzE
         ziGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id iq1si1144409pjb.2.2020.11.15.12.43.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Nov 2020 12:43:39 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: EaizgXdDEOTFgO3muMJj18FU/KNBGly+ZCir1VA3v7r80qlvH44GusN7PCXuFKe1sDjtlTv7GG
 oA0atpO/c5JQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="170847576"
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; 
   d="gz'50?scan'50,208,50";a="170847576"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Nov 2020 12:43:39 -0800
IronPort-SDR: y3FtDXCoDi0Mlwo9FaMRC1FZs9RQf8RgLOnvPSiHksCZtdClUWI6A/OfjeSRK7mvtYvhtZr2RV
 X+6IMGLWE4zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; 
   d="gz'50?scan'50,208,50";a="358235823"
Received: from lkp-server01.sh.intel.com (HELO 2e68b9ba5db3) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 15 Nov 2020 12:43:37 -0800
Received: from kbuild by 2e68b9ba5db3 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1keOs4-0000Ha-CG; Sun, 15 Nov 2020 20:43:36 +0000
Date: Mon, 16 Nov 2020 04:42:48 +0800
From: kernel test robot <lkp@intel.com>
To: Lukas Wunner <lukas@wunner.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [l1k:spi_fixes_part2 8/16] drivers/spi/spi-mt7621.c:354:6: warning:
 variable 'rs' is used uninitialized whenever 'if' condition is true
Message-ID: <202011160444.lkV20lTX-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline
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


--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/l1k/linux spi_fixes_part2
head:   1124444e1890c011ce93035cc73c8df8a206103d
commit: 99e9a80eb65b1787cd055025129a45e24f2fc6ae [8/16] spi: mt7621: Don't leak SPI master in probe error path
config: riscv-randconfig-r006-20201115 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9a85643cd357e412cff69067bb5c4840e228c2ab)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/l1k/linux/commit/99e9a80eb65b1787cd055025129a45e24f2fc6ae
        git remote add l1k https://github.com/l1k/linux
        git fetch --no-tags l1k spi_fixes_part2
        git checkout 99e9a80eb65b1787cd055025129a45e24f2fc6ae
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/spi/spi-mt7621.c:354:6: warning: variable 'rs' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
           if (!master) {
               ^~~~~~~
   drivers/spi/spi-mt7621.c:391:24: note: uninitialized use occurs here
           clk_disable_unprepare(rs->clk);
                                 ^~
   drivers/spi/spi-mt7621.c:354:2: note: remove the 'if' if its condition is always false
           if (!master) {
           ^~~~~~~~~~~~~~
   drivers/spi/spi-mt7621.c:328:23: note: initialize the variable 'rs' to silence this warning
           struct mt7621_spi *rs;
                                ^
                                 = NULL
   1 warning generated.

vim +354 drivers/spi/spi-mt7621.c

1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  323  
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  324  static int mt7621_spi_probe(struct platform_device *pdev)
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  325  {
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  326  	const struct of_device_id *match;
cbd66c626e1674 drivers/spi/spi-mt7621.c                Stefan Roese   2019-03-25  327  	struct spi_controller *master;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  328  	struct mt7621_spi *rs;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  329  	void __iomem *base;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  330  	int status = 0;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  331  	struct clk *clk;
46c337872f34bc drivers/staging/mt7621-spi/spi-mt7621.c Stefan Roese   2019-02-01  332  	int ret;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  333  
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  334  	match = of_match_device(mt7621_spi_match, &pdev->dev);
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  335  	if (!match)
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  336  		return -EINVAL;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  337  
f88771ca7104e4 drivers/spi/spi-mt7621.c                YueHaibing     2019-09-04  338  	base = devm_platform_ioremap_resource(pdev, 0);
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  339  	if (IS_ERR(base))
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  340  		return PTR_ERR(base);
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  341  
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  342  	clk = devm_clk_get(&pdev->dev, NULL);
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  343  	if (IS_ERR(clk)) {
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  344  		dev_err(&pdev->dev, "unable to get SYS clock, err=%d\n",
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  345  			status);
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  346  		return PTR_ERR(clk);
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  347  	}
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  348  
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  349  	status = clk_prepare_enable(clk);
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  350  	if (status)
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  351  		return status;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  352  
99e9a80eb65b17 drivers/spi/spi-mt7621.c                Lukas Wunner   2020-11-05  353  	master = devm_spi_alloc_master(&pdev->dev, sizeof(*rs));
5ccbce3a0b0e10 drivers/staging/mt7621-spi/spi-mt7621.c Jasminko Dedic 2019-02-04 @354  	if (!master) {
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  355  		dev_info(&pdev->dev, "master allocation failed\n");
99e9a80eb65b17 drivers/spi/spi-mt7621.c                Lukas Wunner   2020-11-05  356  		ret = -ENOMEM;
99e9a80eb65b17 drivers/spi/spi-mt7621.c                Lukas Wunner   2020-11-05  357  		goto err_clk_disable;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  358  	}
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  359  
354ea2ee6d2bc0 drivers/staging/mt7621-spi/spi-mt7621.c Chuanhong Guo  2018-12-06  360  	master->mode_bits = SPI_LSB_FIRST;
cbd66c626e1674 drivers/spi/spi-mt7621.c                Stefan Roese   2019-03-25  361  	master->flags = SPI_CONTROLLER_HALF_DUPLEX;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  362  	master->setup = mt7621_spi_setup;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  363  	master->transfer_one_message = mt7621_spi_transfer_one_message;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  364  	master->bits_per_word_mask = SPI_BPW_MASK(8);
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  365  	master->dev.of_node = pdev->dev.of_node;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  366  	master->num_chipselect = 2;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  367  
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  368  	dev_set_drvdata(&pdev->dev, master);
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  369  
cbd66c626e1674 drivers/spi/spi-mt7621.c                Stefan Roese   2019-03-25  370  	rs = spi_controller_get_devdata(master);
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  371  	rs->base = base;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  372  	rs->clk = clk;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  373  	rs->master = master;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  374  	rs->sys_freq = clk_get_rate(rs->clk);
bf732c6bff5b57 drivers/staging/mt7621-spi/spi-mt7621.c NeilBrown      2018-06-07  375  	rs->pending_write = 0;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  376  	dev_info(&pdev->dev, "sys_freq: %u\n", rs->sys_freq);
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  377  
46c337872f34bc drivers/staging/mt7621-spi/spi-mt7621.c Stefan Roese   2019-02-01  378  	ret = device_reset(&pdev->dev);
46c337872f34bc drivers/staging/mt7621-spi/spi-mt7621.c Stefan Roese   2019-02-01  379  	if (ret) {
46c337872f34bc drivers/staging/mt7621-spi/spi-mt7621.c Stefan Roese   2019-02-01  380  		dev_err(&pdev->dev, "SPI reset failed!\n");
99e9a80eb65b17 drivers/spi/spi-mt7621.c                Lukas Wunner   2020-11-05  381  		goto err_clk_disable;
46c337872f34bc drivers/staging/mt7621-spi/spi-mt7621.c Stefan Roese   2019-02-01  382  	}
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  383  
99e9a80eb65b17 drivers/spi/spi-mt7621.c                Lukas Wunner   2020-11-05  384  	ret = spi_register_controller(master);
99e9a80eb65b17 drivers/spi/spi-mt7621.c                Lukas Wunner   2020-11-05  385  	if (ret)
99e9a80eb65b17 drivers/spi/spi-mt7621.c                Lukas Wunner   2020-11-05  386  		goto err_clk_disable;
99e9a80eb65b17 drivers/spi/spi-mt7621.c                Lukas Wunner   2020-11-05  387  
99e9a80eb65b17 drivers/spi/spi-mt7621.c                Lukas Wunner   2020-11-05  388  	return 0;
99e9a80eb65b17 drivers/spi/spi-mt7621.c                Lukas Wunner   2020-11-05  389  
99e9a80eb65b17 drivers/spi/spi-mt7621.c                Lukas Wunner   2020-11-05  390  err_clk_disable:
99e9a80eb65b17 drivers/spi/spi-mt7621.c                Lukas Wunner   2020-11-05  391  	clk_disable_unprepare(rs->clk);
99e9a80eb65b17 drivers/spi/spi-mt7621.c                Lukas Wunner   2020-11-05  392  	return ret;
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  393  }
1ab7f2a43558b3 drivers/staging/mt7621-spi/spi-mt7621.c John Crispin   2018-03-15  394  

:::::: The code at line 354 was first introduced by commit
:::::: 5ccbce3a0b0e10694f1a62e8b1ce9b46d1809eea staging: mt7621-spi: Clean up comparison to NULL

:::::: TO: Jasminko Dedic <betelge@gmail.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011160444.lkV20lTX-lkp%40intel.com.

--LQksG6bCIzRHxTLp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--LQksG6bCIzRHxTLp--
