Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBN72U6BQMGQERAF6DRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5ED353943
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Apr 2021 19:54:00 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id c1sf9278059qke.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Apr 2021 10:54:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617558839; cv=pass;
        d=google.com; s=arc-20160816;
        b=lRPVRgU8w26o8Q+xG8yb0YOhX1y1dCvIyFlgw9fUB6GgQUyw5pyQqcJ5FpmIcUElbX
         hWbO53Dnkw59hQhFKwFIsKA/HDipjSy38uRL1H2Y89+T1xlt4IsDG+dkurVsNFTsnO09
         oLD4Sou7KuLxTeHThnbMqVC7pFRfdTWnxISSZm4jRaNTIknbs+GhCbGEtHTxMW2+vcdI
         pj0Gq3pCHwshMC0yYo2DnTYdsKovkQMEzS+VclkpSfTMnmS59OyMqSFRp7nHK7SwDjPl
         f7RS418JXslMzNRLJZHrGyqgTWJjahiMaAdpImqnhGEwrFnw7sqfP0bQesEzf/f2C2fM
         oEYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=CA5NJDjNwwFc1V1BVA8N28SZ5klc1VSyBoGW/1jvuoI=;
        b=w5JT3qwzxQZspSrf5xNWo/eBHRyD2Zr9TOg6yT4UE++seDLvQSZ+HyVMAzDWxUc7N/
         WTSD1ga6CjTKt8ezF0XJxyZIzn+8OZWAgbzKpmick6Vx9msLb6CS9Acv+WJysaX7DZaI
         haXY7AZpJerPLnOCW9RXU3m79f9QZlUzl4yTziWIGoOuGVdkMRhRE/xkqQGTHie1t7fD
         TlXbpymVpU3OUbouDUeOsYZWQbCdjX6vmuxcEk1eliFYt2HlVhRWN8yp8xGbhFedQADF
         1vAVlVeWsFlqyu1OYu2bLS7DG2Kj6OIogA7+FBBpW27E812z28163TYBs1d0m2cQD67X
         zBSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CA5NJDjNwwFc1V1BVA8N28SZ5klc1VSyBoGW/1jvuoI=;
        b=SvvUj0pfLiP2ZxSu/aWYxoI2de8VgJPG0udnHXE5WtLfWTwrW0bKqYFe4u/kYQNvx5
         fWByXzz1rLFjKatlx3BzbPd2yy1k1FE85m/cfsuzRYjFdf004Rm5/4s93XEX/KIiSN2K
         /wBPtKTBfRYauKi7l1cuaaQLT6NieDSlb0fJTfgbe4rEa1e0iYyavwrNypL+U4MZ8nXK
         DDKqa55HSbIWPnVtschhsPm2koIgU1t54u/rnnj5NzyAc1iRKQRRq9tLNmp7HrRcInpm
         /OgOJjE3CAP/A/Vg6/a4O8sqMp9Mhn0C2yTI0m9giJDjRSgIh6xxKwX2pCViNkAqrcYr
         Kk4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CA5NJDjNwwFc1V1BVA8N28SZ5klc1VSyBoGW/1jvuoI=;
        b=Y7iY/LsFu7lnD6Bsd6L5RyFVMAyTIJ741sxPl1iLxlAs+DHpIlLlFWWhqVMABzSusN
         14tg7AJ9/eWZ1nRHMgg8iZ3hwhLuEERV5d6r9+DS/LWSBzTxKPNVlug9vKu4T11g6sdO
         LJ/a/tkvyRrCucZuXkaRyMCd1Q6BfDxNAg7/gtXSSs9IEWID84a77K6ndn3GJnU/NCBY
         UokHpiaKSodkt73I64xoWa5iOkBk30cI9flf1t2/D0H6NLOaCagb0SSNMuhiwh0S8Otb
         2caA1/M6JqbD5f59PHJlTxyzB1CVVzi2QJlrrmLVJSfgY39yOCCFSfr8pIcKEkbxmwAD
         WmJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331xzoIvKCKXcEy/azPsBDhYJmGUM2srHswzeUMyn7K6l9cEO+p
	wuUBMdIPrIi7Syw+M7/P1do=
X-Google-Smtp-Source: ABdhPJwoE3tT5UubDuG6Ly+Je3uTfa1TTihhzs4f8WZoBU3lIWadZXUcMWhHtDJcFY7ikEmRRdovUQ==
X-Received: by 2002:ac8:57cf:: with SMTP id w15mr19424291qta.336.1617558839673;
        Sun, 04 Apr 2021 10:53:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:400e:: with SMTP id h14ls7587555qko.11.gmail; Sun,
 04 Apr 2021 10:53:59 -0700 (PDT)
X-Received: by 2002:a05:620a:12da:: with SMTP id e26mr20101460qkl.92.1617558838983;
        Sun, 04 Apr 2021 10:53:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617558838; cv=none;
        d=google.com; s=arc-20160816;
        b=xGrVj1B5Lk4nuiXqol47F32JkOUPy7F2UiAXgyIjOmY0AjwjpjAP4o2fqB9UgC/NTc
         hwr/NT+H0m3ovzInMmivAhePU6l0bMIs9J7k5QCII8D9p1g0GoT2tuukxA51xOom9C7O
         xlf7Zp4qaTnzFPwZPW/KzbCDmcPqGNXGhukTIuGPykYOwvc/OVlXWTAoHx6pdvxeMlKg
         od91TLwwTLhr4whjRZTpCZTTRdNEFVIlfuyvSpYuYZZsBo2rgHcqlfGzFO1ScMjLosgO
         OUeMSMoKdUbyYxjdaDa4NnIWtR461UzypfdQuwPA9u6pVcAxP1tKUDZrRjcQ7dObC3pq
         HoDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=g1qyXugp2Z/SvqSY9cpHIICo6vQk9UAn9xz156CwPXo=;
        b=TYWiAfgHVuwkFGbrZNEvQyGN2JQq40DmV8pVG02nctlnxSVbOVpwTOxcXYZW53vQU5
         oF4b6B2oGFZGGXpv66UG/h0gA2TfvabPJNSigU+3LRyZOTvMEMi8ygm9PDhic+Z8jxQg
         8gvWL7FnzENiQGq83RrHkEJbCRfa3B4KkO6qcklytlRD1MaIMvXV72KLroXNmOYa9cqt
         oopC7AIi/WPeYYa9JIFHcF1s1iNrla/JOb1bI8EXOS7xwh4Mqr7dt/a6e+5ZT5HqFI1K
         h75iTj3KSK8hXZZzk44OpDUXX5WM/iq4tJuZxQE3SySHJMe8M5KfmV9CqqJRb4jkRw0Q
         x6nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id b2si2464972qtq.5.2021.04.04.10.53.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Apr 2021 10:53:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 9qwNLi+Wf8bgn9OZRJT65VEZqhbFFYXS8j7x5KKwUlz3QzI7p7A9ClgXSdvHPcWiGTlxKlNFI9
 gFYprRizD20Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9944"; a="189496276"
X-IronPort-AV: E=Sophos;i="5.81,304,1610438400"; 
   d="gz'50?scan'50,208,50";a="189496276"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Apr 2021 10:53:56 -0700
IronPort-SDR: dEaK6wWscI/6tpCXH3ZFc31LFnGIXFDGQXU7L/37dJXk1RB9uDLQ1fdtYbkYJLnrZR3pZWM0q/
 4xuH5rZRt6WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,304,1610438400"; 
   d="gz'50?scan'50,208,50";a="413987750"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 04 Apr 2021 10:53:54 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lT6wb-0008pP-C1; Sun, 04 Apr 2021 17:53:53 +0000
Date: Mon, 5 Apr 2021 01:53:09 +0800
From: kernel test robot <lkp@intel.com>
To: Kees Cook <keescook@chromium.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: drivers/media/pci/saa7164/saa7164-api.c:915:12: warning: stack frame
 size of 5312 bytes in function 'saa7164_api_dump_subdevs'
Message-ID: <202104050158.9F4yT6ZU-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+HP7ph2BbKc20aGI"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--+HP7ph2BbKc20aGI
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   2023a53bdf41b7646b1d384b6816af06309f73a5
commit: d0a3ac549f389c1511a4df0d7638536305205d20 ubsan: enable for all*config builds
date:   4 months ago
config: powerpc64-randconfig-r011-20210404 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 30df6d5d6a8537d3ec7d8fe4299289a4c5a74d5c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d0a3ac549f389c1511a4df0d7638536305205d20
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout d0a3ac549f389c1511a4df0d7638536305205d20
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/media/pci/saa7164/saa7164-api.c:915:12: warning: stack frame size of 5312 bytes in function 'saa7164_api_dump_subdevs' [-Wframe-larger-than=]
   static int saa7164_api_dump_subdevs(struct saa7164_dev *dev, u8 *buf, int len)
              ^
   1 warning generated.


vim +/saa7164_api_dump_subdevs +915 drivers/media/pci/saa7164/saa7164-api.c

7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31   914  
5faf7db804e1e6 drivers/media/pci/saa7164/saa7164-api.c   Mauro Carvalho Chehab 2012-10-27  @915  static int saa7164_api_dump_subdevs(struct saa7164_dev *dev, u8 *buf, int len)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   916  {
61ca1500c5ee04 drivers/media/video/saa7164/saa7164-api.c Peter Huewe           2011-01-30   917  	struct saa7164_port *tsport = NULL;
61ca1500c5ee04 drivers/media/video/saa7164/saa7164-api.c Peter Huewe           2011-01-30   918  	struct saa7164_port *encport = NULL;
61ca1500c5ee04 drivers/media/video/saa7164/saa7164-api.c Peter Huewe           2011-01-30   919  	struct saa7164_port *vbiport = NULL;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   920  	u32 idx, next_offset;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   921  	int i;
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   922  	struct tmComResDescrHeader *hdr, *t;
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   923  	struct tmComResExtDevDescrHeader *exthdr;
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   924  	struct tmComResPathDescrHeader *pathhdr;
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   925  	struct tmComResAntTermDescrHeader *anttermhdr;
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   926  	struct tmComResTunerDescrHeader *tunerunithdr;
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   927  	struct tmComResDMATermDescrHeader *vcoutputtermhdr;
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   928  	struct tmComResTSFormatDescrHeader *tsfmt;
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   929  	struct tmComResPSFormatDescrHeader *psfmt;
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   930  	struct tmComResSelDescrHeader *psel;
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   931  	struct tmComResProcDescrHeader *pdh;
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   932  	struct tmComResAFeatureDescrHeader *afd;
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   933  	struct tmComResEncoderDescrHeader *edh;
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   934  	struct tmComResVBIFormatDescrHeader *vbifmt;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   935  	u32 currpath = 0;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   936  
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   937  	dprintk(DBGLVL_API,
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   938  		"%s(?,?,%d) sizeof(struct tmComResDescrHeader) = %d bytes\n",
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   939  		__func__, len, (u32)sizeof(struct tmComResDescrHeader));
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   940  
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   941  	for (idx = 0; idx < (len - sizeof(struct tmComResDescrHeader));) {
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   942  
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   943  		hdr = (struct tmComResDescrHeader *)(buf + idx);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   944  
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   945  		if (hdr->type != CS_INTERFACE)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   946  			return SAA_ERR_NOT_SUPPORTED;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   947  
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   948  		dprintk(DBGLVL_API, "@ 0x%x =\n", idx);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   949  		switch (hdr->subtype) {
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   950  		case GENERAL_REQUEST:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   951  			dprintk(DBGLVL_API, " GENERAL_REQUEST\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   952  			break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   953  		case VC_TUNER_PATH:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   954  			dprintk(DBGLVL_API, " VC_TUNER_PATH\n");
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   955  			pathhdr = (struct tmComResPathDescrHeader *)(buf + idx);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   956  			dprintk(DBGLVL_API, "  pathid = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   957  				pathhdr->pathid);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   958  			currpath = pathhdr->pathid;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   959  			break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   960  		case VC_INPUT_TERMINAL:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   961  			dprintk(DBGLVL_API, " VC_INPUT_TERMINAL\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   962  			anttermhdr =
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11   963  				(struct tmComResAntTermDescrHeader *)(buf + idx);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   964  			dprintk(DBGLVL_API, "  terminalid   = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   965  				anttermhdr->terminalid);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   966  			dprintk(DBGLVL_API, "  terminaltype = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   967  				anttermhdr->terminaltype);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   968  			switch (anttermhdr->terminaltype) {
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   969  			case ITT_ANTENNA:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   970  				dprintk(DBGLVL_API, "   = ITT_ANTENNA\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   971  				break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   972  			case LINE_CONNECTOR:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   973  				dprintk(DBGLVL_API, "   = LINE_CONNECTOR\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   974  				break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   975  			case SPDIF_CONNECTOR:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   976  				dprintk(DBGLVL_API, "   = SPDIF_CONNECTOR\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   977  				break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   978  			case COMPOSITE_CONNECTOR:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   979  				dprintk(DBGLVL_API,
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   980  					"   = COMPOSITE_CONNECTOR\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   981  				break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   982  			case SVIDEO_CONNECTOR:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   983  				dprintk(DBGLVL_API, "   = SVIDEO_CONNECTOR\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   984  				break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   985  			case COMPONENT_CONNECTOR:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   986  				dprintk(DBGLVL_API,
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   987  					"   = COMPONENT_CONNECTOR\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   988  				break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   989  			case STANDARD_DMA:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   990  				dprintk(DBGLVL_API, "   = STANDARD_DMA\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   991  				break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   992  			default:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   993  				dprintk(DBGLVL_API, "   = undefined (0x%x)\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   994  					anttermhdr->terminaltype);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   995  			}
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   996  			dprintk(DBGLVL_API, "  assocterminal= 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   997  				anttermhdr->assocterminal);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   998  			dprintk(DBGLVL_API, "  iterminal    = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09   999  				anttermhdr->iterminal);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1000  			dprintk(DBGLVL_API, "  controlsize  = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1001  				anttermhdr->controlsize);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1002  			break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1003  		case VC_OUTPUT_TERMINAL:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1004  			dprintk(DBGLVL_API, " VC_OUTPUT_TERMINAL\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1005  			vcoutputtermhdr =
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1006  				(struct tmComResDMATermDescrHeader *)(buf + idx);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1007  			dprintk(DBGLVL_API, "  unitid = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1008  				vcoutputtermhdr->unitid);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1009  			dprintk(DBGLVL_API, "  terminaltype = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1010  				vcoutputtermhdr->terminaltype);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1011  			switch (vcoutputtermhdr->terminaltype) {
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1012  			case ITT_ANTENNA:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1013  				dprintk(DBGLVL_API, "   = ITT_ANTENNA\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1014  				break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1015  			case LINE_CONNECTOR:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1016  				dprintk(DBGLVL_API, "   = LINE_CONNECTOR\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1017  				break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1018  			case SPDIF_CONNECTOR:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1019  				dprintk(DBGLVL_API, "   = SPDIF_CONNECTOR\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1020  				break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1021  			case COMPOSITE_CONNECTOR:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1022  				dprintk(DBGLVL_API,
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1023  					"   = COMPOSITE_CONNECTOR\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1024  				break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1025  			case SVIDEO_CONNECTOR:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1026  				dprintk(DBGLVL_API, "   = SVIDEO_CONNECTOR\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1027  				break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1028  			case COMPONENT_CONNECTOR:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1029  				dprintk(DBGLVL_API,
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1030  					"   = COMPONENT_CONNECTOR\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1031  				break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1032  			case STANDARD_DMA:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1033  				dprintk(DBGLVL_API, "   = STANDARD_DMA\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1034  				break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1035  			default:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1036  				dprintk(DBGLVL_API, "   = undefined (0x%x)\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1037  					vcoutputtermhdr->terminaltype);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1038  			}
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1039  			dprintk(DBGLVL_API, "  assocterminal= 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1040  				vcoutputtermhdr->assocterminal);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1041  			dprintk(DBGLVL_API, "  sourceid     = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1042  				vcoutputtermhdr->sourceid);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1043  			dprintk(DBGLVL_API, "  iterminal    = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1044  				vcoutputtermhdr->iterminal);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1045  			dprintk(DBGLVL_API, "  BARLocation  = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1046  				vcoutputtermhdr->BARLocation);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1047  			dprintk(DBGLVL_API, "  flags        = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1048  				vcoutputtermhdr->flags);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1049  			dprintk(DBGLVL_API, "  interruptid  = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1050  				vcoutputtermhdr->interruptid);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1051  			dprintk(DBGLVL_API, "  buffercount  = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1052  				vcoutputtermhdr->buffercount);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1053  			dprintk(DBGLVL_API, "  metadatasize = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1054  				vcoutputtermhdr->metadatasize);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1055  			dprintk(DBGLVL_API, "  controlsize  = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1056  				vcoutputtermhdr->controlsize);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1057  			dprintk(DBGLVL_API, "  numformats   = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1058  				vcoutputtermhdr->numformats);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1059  
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1060  			t = (struct tmComResDescrHeader *)
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1061  				((struct tmComResDMATermDescrHeader *)(buf + idx));
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1062  			next_offset = idx + (vcoutputtermhdr->len);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1063  			for (i = 0; i < vcoutputtermhdr->numformats; i++) {
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1064  				t = (struct tmComResDescrHeader *)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1065  					(buf + next_offset);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1066  				switch (t->subtype) {
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1067  				case VS_FORMAT_MPEG2TS:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1068  					tsfmt =
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1069  					(struct tmComResTSFormatDescrHeader *)t;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1070  					if (currpath == 1)
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1071  						tsport = &dev->ports[SAA7164_PORT_TS1];
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1072  					else
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1073  						tsport = &dev->ports[SAA7164_PORT_TS2];
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1074  					memcpy(&tsport->hwcfg, vcoutputtermhdr,
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1075  						sizeof(*vcoutputtermhdr));
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1076  					saa7164_api_configure_port_mpeg2ts(dev,
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1077  						tsport, tsfmt);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1078  					break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1079  				case VS_FORMAT_MPEG2PS:
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1080  					psfmt =
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1081  					(struct tmComResPSFormatDescrHeader *)t;
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1082  					if (currpath == 1)
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1083  						encport = &dev->ports[SAA7164_PORT_ENC1];
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1084  					else
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1085  						encport = &dev->ports[SAA7164_PORT_ENC2];
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1086  					memcpy(&encport->hwcfg, vcoutputtermhdr,
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1087  						sizeof(*vcoutputtermhdr));
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1088  					saa7164_api_configure_port_mpeg2ps(dev,
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1089  						encport, psfmt);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1090  					break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1091  				case VS_FORMAT_VBI:
e8ce2f21665442 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1092  					vbifmt =
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1093  					(struct tmComResVBIFormatDescrHeader *)t;
e8ce2f21665442 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1094  					if (currpath == 1)
e8ce2f21665442 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1095  						vbiport = &dev->ports[SAA7164_PORT_VBI1];
e8ce2f21665442 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1096  					else
e8ce2f21665442 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1097  						vbiport = &dev->ports[SAA7164_PORT_VBI2];
e8ce2f21665442 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1098  					memcpy(&vbiport->hwcfg, vcoutputtermhdr,
e8ce2f21665442 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1099  						sizeof(*vcoutputtermhdr));
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1100  					memcpy(&vbiport->vbi_fmt_ntsc, vbifmt,
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1101  						sizeof(*vbifmt));
e8ce2f21665442 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1102  					saa7164_api_configure_port_vbi(dev,
e8ce2f21665442 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1103  						vbiport);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1104  					break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1105  				case VS_FORMAT_RDS:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1106  					dprintk(DBGLVL_API,
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1107  						"   = VS_FORMAT_RDS\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1108  					break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1109  				case VS_FORMAT_UNCOMPRESSED:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1110  					dprintk(DBGLVL_API,
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1111  					"   = VS_FORMAT_UNCOMPRESSED\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1112  					break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1113  				case VS_FORMAT_TYPE:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1114  					dprintk(DBGLVL_API,
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1115  						"   = VS_FORMAT_TYPE\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1116  					break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1117  				default:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1118  					dprintk(DBGLVL_API,
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1119  						"   = undefined (0x%x)\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1120  						t->subtype);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1121  				}
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1122  				next_offset += t->len;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1123  			}
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1124  
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1125  			break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1126  		case TUNER_UNIT:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1127  			dprintk(DBGLVL_API, " TUNER_UNIT\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1128  			tunerunithdr =
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1129  				(struct tmComResTunerDescrHeader *)(buf + idx);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1130  			dprintk(DBGLVL_API, "  unitid = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1131  				tunerunithdr->unitid);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1132  			dprintk(DBGLVL_API, "  sourceid = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1133  				tunerunithdr->sourceid);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1134  			dprintk(DBGLVL_API, "  iunit = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1135  				tunerunithdr->iunit);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1136  			dprintk(DBGLVL_API, "  tuningstandards = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1137  				tunerunithdr->tuningstandards);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1138  			dprintk(DBGLVL_API, "  controlsize = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1139  				tunerunithdr->controlsize);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1140  			dprintk(DBGLVL_API, "  controls = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1141  				tunerunithdr->controls);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1142  
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1143  			if (tunerunithdr->unitid == tunerunithdr->iunit) {
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1144  				if (currpath == 1)
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1145  					encport = &dev->ports[SAA7164_PORT_ENC1];
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1146  				else
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1147  					encport = &dev->ports[SAA7164_PORT_ENC2];
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1148  				memcpy(&encport->tunerunit, tunerunithdr,
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1149  					sizeof(struct tmComResTunerDescrHeader));
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1150  				dprintk(DBGLVL_API,
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1151  					"  (becomes dev->enc[%d] tuner)\n",
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1152  					encport->nr);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1153  			}
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1154  			break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1155  		case VC_SELECTOR_UNIT:
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1156  			psel = (struct tmComResSelDescrHeader *)(buf + idx);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1157  			dprintk(DBGLVL_API, " VC_SELECTOR_UNIT\n");
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1158  			dprintk(DBGLVL_API, "  unitid = 0x%x\n",
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1159  				psel->unitid);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1160  			dprintk(DBGLVL_API, "  nrinpins = 0x%x\n",
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1161  				psel->nrinpins);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1162  			dprintk(DBGLVL_API, "  sourceid = 0x%x\n",
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1163  				psel->sourceid);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1164  			break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1165  		case VC_PROCESSING_UNIT:
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1166  			pdh = (struct tmComResProcDescrHeader *)(buf + idx);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1167  			dprintk(DBGLVL_API, " VC_PROCESSING_UNIT\n");
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1168  			dprintk(DBGLVL_API, "  unitid = 0x%x\n",
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1169  				pdh->unitid);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1170  			dprintk(DBGLVL_API, "  sourceid = 0x%x\n",
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1171  				pdh->sourceid);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1172  			dprintk(DBGLVL_API, "  controlsize = 0x%x\n",
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1173  				pdh->controlsize);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1174  			if (pdh->controlsize == 0x04) {
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1175  				if (currpath == 1)
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1176  					encport = &dev->ports[SAA7164_PORT_ENC1];
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1177  				else
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1178  					encport = &dev->ports[SAA7164_PORT_ENC2];
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1179  				memcpy(&encport->vidproc, pdh,
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1180  					sizeof(struct tmComResProcDescrHeader));
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1181  				dprintk(DBGLVL_API, "  (becomes dev->enc[%d])\n",
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1182  					encport->nr);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1183  			}
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1184  			break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1185  		case FEATURE_UNIT:
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1186  			afd = (struct tmComResAFeatureDescrHeader *)(buf + idx);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1187  			dprintk(DBGLVL_API, " FEATURE_UNIT\n");
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1188  			dprintk(DBGLVL_API, "  unitid = 0x%x\n",
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1189  				afd->unitid);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1190  			dprintk(DBGLVL_API, "  sourceid = 0x%x\n",
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1191  				afd->sourceid);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1192  			dprintk(DBGLVL_API, "  controlsize = 0x%x\n",
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1193  				afd->controlsize);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1194  			if (currpath == 1)
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1195  				encport = &dev->ports[SAA7164_PORT_ENC1];
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1196  			else
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1197  				encport = &dev->ports[SAA7164_PORT_ENC2];
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1198  			memcpy(&encport->audfeat, afd,
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1199  				sizeof(struct tmComResAFeatureDescrHeader));
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1200  			dprintk(DBGLVL_API, "  (becomes dev->enc[%d])\n",
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1201  				encport->nr);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1202  			break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1203  		case ENCODER_UNIT:
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1204  			edh = (struct tmComResEncoderDescrHeader *)(buf + idx);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1205  			dprintk(DBGLVL_API, " ENCODER_UNIT\n");
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1206  			dprintk(DBGLVL_API, "  subtype = 0x%x\n", edh->subtype);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1207  			dprintk(DBGLVL_API, "  unitid = 0x%x\n", edh->unitid);
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1208  			dprintk(DBGLVL_API, "  vsourceid = 0x%x\n",
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1209  			edh->vsourceid);
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1210  			dprintk(DBGLVL_API, "  asourceid = 0x%x\n",
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1211  				edh->asourceid);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1212  			dprintk(DBGLVL_API, "  iunit = 0x%x\n", edh->iunit);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1213  			if (edh->iunit == edh->unitid) {
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1214  				if (currpath == 1)
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1215  					encport = &dev->ports[SAA7164_PORT_ENC1];
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1216  				else
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1217  					encport = &dev->ports[SAA7164_PORT_ENC2];
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1218  				memcpy(&encport->encunit, edh,
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1219  					sizeof(struct tmComResEncoderDescrHeader));
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1220  				dprintk(DBGLVL_API,
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1221  					"  (becomes dev->enc[%d])\n",
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1222  					encport->nr);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1223  			}
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1224  			break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1225  		case EXTENSION_UNIT:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1226  			dprintk(DBGLVL_API, " EXTENSION_UNIT\n");
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1227  			exthdr = (struct tmComResExtDevDescrHeader *)(buf + idx);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1228  			dprintk(DBGLVL_API, "  unitid = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1229  				exthdr->unitid);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1230  			dprintk(DBGLVL_API, "  deviceid = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1231  				exthdr->deviceid);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1232  			dprintk(DBGLVL_API, "  devicetype = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1233  				exthdr->devicetype);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1234  			if (exthdr->devicetype & 0x1)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1235  				dprintk(DBGLVL_API, "   = Decoder Device\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1236  			if (exthdr->devicetype & 0x2)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1237  				dprintk(DBGLVL_API, "   = GPIO Source\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1238  			if (exthdr->devicetype & 0x4)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1239  				dprintk(DBGLVL_API, "   = Video Decoder\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1240  			if (exthdr->devicetype & 0x8)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1241  				dprintk(DBGLVL_API, "   = Audio Decoder\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1242  			if (exthdr->devicetype & 0x20)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1243  				dprintk(DBGLVL_API, "   = Crossbar\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1244  			if (exthdr->devicetype & 0x40)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1245  				dprintk(DBGLVL_API, "   = Tuner\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1246  			if (exthdr->devicetype & 0x80)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1247  				dprintk(DBGLVL_API, "   = IF PLL\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1248  			if (exthdr->devicetype & 0x100)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1249  				dprintk(DBGLVL_API, "   = Demodulator\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1250  			if (exthdr->devicetype & 0x200)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1251  				dprintk(DBGLVL_API, "   = RDS Decoder\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1252  			if (exthdr->devicetype & 0x400)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1253  				dprintk(DBGLVL_API, "   = Encoder\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1254  			if (exthdr->devicetype & 0x800)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1255  				dprintk(DBGLVL_API, "   = IR Decoder\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1256  			if (exthdr->devicetype & 0x1000)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1257  				dprintk(DBGLVL_API, "   = EEPROM\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1258  			if (exthdr->devicetype & 0x2000)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1259  				dprintk(DBGLVL_API,
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1260  					"   = VBI Decoder\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1261  			if (exthdr->devicetype & 0x10000)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1262  				dprintk(DBGLVL_API,
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1263  					"   = Streaming Device\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1264  			if (exthdr->devicetype & 0x20000)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1265  				dprintk(DBGLVL_API,
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1266  					"   = DRM Device\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1267  			if (exthdr->devicetype & 0x40000000)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1268  				dprintk(DBGLVL_API,
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1269  					"   = Generic Device\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1270  			if (exthdr->devicetype & 0x80000000)
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1271  				dprintk(DBGLVL_API,
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1272  					"   = Config Space Device\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1273  			dprintk(DBGLVL_API, "  numgpiopins = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1274  				exthdr->numgpiopins);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1275  			dprintk(DBGLVL_API, "  numgpiogroups = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1276  				exthdr->numgpiogroups);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1277  			dprintk(DBGLVL_API, "  controlsize = 0x%x\n",
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1278  				exthdr->controlsize);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1279  			if (exthdr->devicetype & 0x80) {
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1280  				if (currpath == 1)
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1281  					encport = &dev->ports[SAA7164_PORT_ENC1];
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1282  				else
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1283  					encport = &dev->ports[SAA7164_PORT_ENC2];
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1284  				memcpy(&encport->ifunit, exthdr,
4d270cfb36683f drivers/media/video/saa7164/saa7164-api.c Mauro Carvalho Chehab 2010-10-11  1285  					sizeof(struct tmComResExtDevDescrHeader));
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1286  				dprintk(DBGLVL_API,
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1287  					"  (becomes dev->enc[%d])\n",
bc25068495b110 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-11-12  1288  					encport->nr);
7615e434aefd95 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2010-07-31  1289  			}
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1290  			break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1291  		case PVC_INFRARED_UNIT:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1292  			dprintk(DBGLVL_API, " PVC_INFRARED_UNIT\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1293  			break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1294  		case DRM_UNIT:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1295  			dprintk(DBGLVL_API, " DRM_UNIT\n");
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1296  			break;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1297  		default:
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1298  			dprintk(DBGLVL_API, "default %d\n", hdr->subtype);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1299  		}
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1300  
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1301  		dprintk(DBGLVL_API, " 1.%x\n", hdr->len);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1302  		dprintk(DBGLVL_API, " 2.%x\n", hdr->type);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1303  		dprintk(DBGLVL_API, " 3.%x\n", hdr->subtype);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1304  		dprintk(DBGLVL_API, " 4.%x\n", hdr->unitid);
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1305  
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1306  		idx += hdr->len;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1307  	}
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1308  
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1309  	return 0;
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1310  }
443c1228d50518 drivers/media/video/saa7164/saa7164-api.c Steven Toth           2009-05-09  1311  

:::::: The code at line 915 was first introduced by commit
:::::: 5faf7db804e1e67ab8f78edb305d1858779a6279 [media] saa7164: get rid of warning: no previous prototype

:::::: TO: Mauro Carvalho Chehab <mchehab@redhat.com>
:::::: CC: Mauro Carvalho Chehab <mchehab@redhat.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104050158.9F4yT6ZU-lkp%40intel.com.

--+HP7ph2BbKc20aGI
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICEruaWAAAy5jb25maWcAjFxLd9u4kt73r9BJb+4sbrflV5KZ4wVIghIikqABUpK9wVHb
StrTjpWx5b6dfz9V4AsAi056kY6qCoVXofBVoZhff/l1xl6Ph6+748Pd7vHx++zL/mn/vDvu
72efHx73/zNL5KyQ1YwnovoNhLOHp9d/fv92+M/++dvd7OK3+clvJ7PV/vlp/ziLD0+fH768
QuuHw9Mvv/4SyyIVCxPHZs2VFrIwFd9WV+/uHndPX2Z/759fQG42P/sNdfzry8Pxv3//Hf78
+vD8fHj+/fHx76/m2/Phf/d3x9nZyf3ny/uL+8vdh4uz9/dn+7v39x8+789PP348/fBxd353
sXt/fn9x91/vul4XQ7dXJx0xS8Y0kBPaxBkrFlffHUEgZlkykKxE33x+dgL/9eKOYp8D2pdM
G6Zzs5CVdNT5DCPrqqwrki+KTBTcYclCV6qOK6n0QBXq2mykWg2UqBZZUomcm4pFGTdaKqeD
aqk4g2kWqYQ/QERjU9i2X2cLawOPs5f98fXbsJGiEJXhxdowBVMWuaiuzk6HQeWlgE4qrp1O
MhmzrFuZd++8kRnNssohLtmamxVXBc/M4laUgxaXs70d6L7wrzOfvL2dPbzMng5HnEfXJOEp
q7PKzsXpuyMvpa4KlvOrd/96OjztwZx6rXrDSlfhwLjRa1HGRGel1GJr8uua19wd4IZV8dJY
MqkxVlJrk/NcqhvDqorFS1Ku1jwTEdExq+G4BuvHFPRpGTBg2JVs4AdUawNgTrOX1z9evr8c
918HG1jwgisRW2vTS7kZlIQck/E1z2h+LhaKVWgTJFsUn3jss5dMJcDSsA1Gcc2LhG4aL13D
QUoicyYKimaWgitclpuxrlwLlJxkkGpTqWKetCdLuP5El0xp3mrs988deMKjepFqf5/3T/ez
w+dgL8IR2RO+Hm1qx47hDK5gK4rKcRbWGNC/VCJemUhJlsTMPbhE6zfFcqlNXSas4p0BVQ9f
wcNTNmT7lAUHK3GN9NaUoEsmInbXqJDIEUlGH5WGndZZNs0mDshSLJZoR3bxrBftF3s07kFb
qTjPywq0FvRoOoG1zOqiYuqGcgqNzDDxrlEsoc2I3JwCu6JxWf9e7V7+mh1hiLMdDPfluDu+
zHZ3d4fXp+PD05dhjddCgcayNiy2ehtr7Adqt8BnE0MllJgCzu3a82aUFNgFvUBakBb+E1Pr
LxroSWiZMXdpVFzPNGFpsIYGeOPF9ojww/AtWJ+z/NqTsIoCElyY2jZtDwHBGpHqhFP0SrGY
j8ekKzjReLPmritETsHBz2i+iKNMuOcReSkrAExcXZ6PieCTWXo1vxw2BHmRhFuP3C7blYwj
XHRSIBi+sZAij8g99vdo0CFWzV/IDsRqCSrhiLpcu+X67s/9/evj/nn2eb87vj7vXyy57Yzg
er5P12UJcEibos6ZiRiAu9jz2C3+EkU1P/3gkBdK1qV27R/u6Zg6PVG2asXD5kbHS+5cYCkT
ypCcOAW3y4pkI5Jq6WxzNSHeUEuReCNsySrJGTHOlpuCid9y5bUrAWFUerpNwtci5qP+oR34
gooYQlSmb2mDK9A5gTJe9SxWMU/dkserUsLuoBcHIMwJtXZxANxUMtgFuCthXRMOziCGGytx
NYc8sz6ljwbP2A3JwX2HhbEQUyW0iJTo70OrH0xPguPPxS1HSIHXIvwvBwv1/G4opuEv1FWH
4A/QdoJHM5bggHAxDUcAX3ROtFf6piChHeSlKpesAFCrCm+J4yoDrxpze4c1PsKJTcp0+NH7
3uFMARgXYHyKRtwLXuXgeUwLeqi9t9s4AkUpjBSghHMfWIjuoID+ngDbWlGn2jVRnqWwUsqd
FwOYh3DE6bOGsDf4CUfU7Y2XcgLAaLEoWJYmxEjsoFPPeC1QS2mb00twVCSHCUmoF9LUynOJ
LFkLmF27qA6aBMURU0pY79EFYShyk+sxxXg70lPtyuGpavHFYCjjbUTiJwhGWbZhN9q4t2PH
6iI637zRpCydXNEeFQ8TMthxxOIVBZ4dMX1TxIEpAOD30L51b5ZK7gLo4knCqXHZI4xewPQ4
fjDUeH5yProc24xMuX/+fHj+unu628/43/snQFQM7scYMRWA3AZVtnoG9eTt/ZMae+iYN8oa
VMvdRAVmClgF0YSTqtAZizwvnNURbcWZpAJebA/boRa823hft73dECoZBQ5A5n5fLh8DTcBz
U2eoTtMM9oJBR2AYEq4IqWj3U/G8caBrAIepiIN4t1QyFZl3vqyLtJeaF5D42Zi+fRlfnnfw
t3w+3O1fXg7PELZ8+3Z4Pg4QGOTwulmdaWPlhw3vGBwY5Gz74G4C/JVyw9X7kO0yPyDT6xSp
HyeaQMAEjt0CfBiYc9wHxtU7m3r88G48PWdpgZaWDpZmGfoUB6Cv9TY4zrxoUmRlBr6jzBNT
Vhj5+koVRPVbk+f1BHlse8huslc1L33ymNIKspEgK8ONQ1rjUKilB4E8B7sGbKaJLkoYaYt/
Pb1IxmuTUGkzG0bnLohyfxTKgkUnH4i9JVKqiFvH3Vvz2FT7TUm0PDsN8KeJ0DUWiWAU+kAB
2LAKdq6R8WZ7ed4ArY1iZeneTZfnkZse8zbUWkOew/KqIoHeIUTI2fbq7OwtAVFczT/QAp23
6xTN3/+EHOqbe94fcDgCe66aSBviLGfxMRjsWPYaMalQ4MviZV2sJuSsC6PFFCak9NXFvN/M
IhdGWMjSbX4FV2IT9g2W5LoxVJFmbKHHfDxXgK/HjM7foEAEM1yNWcsNF4ulf8B8C+8u5ELq
0j3ynKnspoV1TgtWtBk0DJnnH4a8vd0OZ8I2lpA5eIdUsRwOEfpp16ia7WQ37RkDF5QEQ6uT
aGHmlxcXJ04rTL3atuPJ+lCzZKWy9hwCERFx1eBzRLNaRC6+bYNdWAuwsUIWEOHJ1in7Em04
XMO9FIVeI2EbZ6LlonlOsPldfXXuSmJ2FEw4D33YVsSBThGXQy7Jk6Qog2hz3z3ujghD6OvO
XjLFetAiS5bB1ifudsq8S7mGvrUEjCg45QVXgGoWtffA0WxLyRTDNJg/8HGqDKkybbwSHJMc
YL8oqKDNrnpzFaaVCpYOPC8ESFuwR+9Mcr705cr3MIRgI1ooIPwgCPcD/CeEvHD5CXk1JBxn
6fP+/173T3ffZy93u0cvx2hHp7iTJO8oZiHX+HCh0G9NsMO0Vs8E3+KnDjpGB+mxtRMT008o
ZCM0DA3Hc+IqGTXAcEGXLIi7KUlZJBxGQ8NGsgXwQPva2sjPt7J+qK4EFfN6y+snDUiJbjUm
+O7kKX435cn9HeZHLt/kdHrb+xza3uz++eHvJnBxAWWxRq2tKbo5ZcJ6O+Xi/nHfqgNS3yWS
3bDIZptHjw9OD00Dh+Iq9rC0UVVMqhl5MzeEO3zD13QvVFvemvnJCWkzwDq9OKFCyFtzdnLi
7kOjhZa9OhtesJubb6nwySD0ZeDDCs3sUx142Kn8QgbNMaekqzqCeLqaeM1cyqrM6sVUPAHd
2RdT0FOKAjFCGJK3GL59N23V/UhGwd9GThqQY38jtqIpE1lNphlXfMu9JytLAGyVUdKK26iR
Nbe0m07syPYJnTreiumlSerciwZSZklTz1F4BPmbQvZyjIMM6pB/V9fGPkIAuqdf2Goyqdyg
Cp7hjdKuYC4T9z3YSgBErIDdbksISuyj6U+wxyH/jR42cFlD8JhFqVsrkWV8gZigAXFmzbKa
X538c3G/393/sd9/Pmn+c43vfGUx8wguXHaMCaO1QFsvRQr4sgfUbfFFS+4hlM0XhLJN7AWx
g7mVBZcqAdQ5PwswiwJEoZk0GSzKxEBiCVI2zeZlP+zx1jllcRaF8AKvkUzoIIER54ktSxmK
KPgW/EEbrGuHXuYO1Mj7NL8TeGJqEW+qZDqmzXtY3Ly8e/uwuW4uAsPTVMQC806tTfyUKsBk
XhYVmIvWXqfCa7C6Fb/x8jSBw+5tTcPhy5lhFqtZPx69vjh+PUD9rbyTMNaZyaLY7cpV0Mdo
WBUEexS39S9ukAMWKNMUsdjJP3cn/n+DG7NVM6BDvSVWLm+0iNkgGArYsznOsiE8rsGMbkcv
CV7J0e757s+H4/4On+z+fb//BhPePx3Hq9U4Qz/h2vjdlub4N5tpm3wa6fiOnj4G6pV8Au9p
MhaRBiHLKoyarObBGGu4HsWiwNeoOOY6vLgAadmSqEoUJsI6I2csitPKBUwTcwd48gPWimww
qWlq+K0awHkYg3g40PLTurA3v+FKSUUX7WDklouAYudsNS4hGhnHvRjfIOZqvWQY7zKNLrES
6Y3RslajcWHJHJzdtuosnJXiC23AOpsURrsf7eH05LQb2IQZeGJWmCOxhV2JXAQszCkjYLFv
nBXHwr0g5B/04/goOqLxdswtBBgt6WCkXm7LLFi1hMYNuMBEN8nG5/sfiDRXmbgNb+INAxu3
1VngZQziQYD9cGXlo61r10mzlMMFUm7jZQjQNpytEA1xfA5i8XUtFN2dvVqxqKorLySE2qTa
T8nKLHHkqfXVPEaBN1gI+ryk0KjJlKBVBX/HCll7Nlbe04Blg8mDl1/eBmS61Cc8MviCBv4H
5DDb9WMVeBpDlwNY0BabUR15J7tAbIaOD7EXWg0lhzyz9lJFzoLKFO5wGNZNwIWT3cE/HuO7
imOpMqkzcFjoTvFlFh8TiSnwrcBnwaZQEQ8UsVq2ub3DPGsfxuclgMMkoMcbEsNEayfrO6XE
FQmSwjBB0Txb9OlYaqzFWrEc3Lz7BpcBlDT4rrkB3+Qw8BRosWgzhk6DZhQtmwWOvuWencIo
jW9f/ZIicDCVbLHNEBxilYfzVEjB6OGQTpUb+EnM5qUV7c6+0XWwaxHL9b//2L3s72d/NVjt
2/Ph84Of1EKhEYLqJ2G5LWBo37GHd7q31IePeT/AOX20CNET1gu4l7N9KNc59n7imz5ujbFZ
n2p0Ktw1b6WbwCKTjM5atVJ1EUoM/PEdO3n5ttrAZAG7xWOGVnH3lYD31D/MjJiB7sIjenid
SLdRY45esvlbk29lTk/pF9JA6uLyJ6TOPpy/PVqQuZifUiuAJri8evfy5w4E3gV8PIOqwZZh
zx3LVspPd96L2Rr7UAkepY3JhdZNGWjObXLQiNweOrpAvQBfDB7jJo9kRotUSuSd3AoLQSbH
p5sqzAwwo1vMFfnvtFh9pWMtwNKu/VR9V5cV6QVJzEQ0pmN+YKGEvYZGFV4Yj08UeLUSgGBl
VWV0ea0tEGyi6AaeqLCTTUTXZQ6lhRAHZIC1ini6Fq0XjCWZV2rGih7TfwuxK4mPXiWja5NQ
oPk2BULmWN2UZGRX7p6PD+jVZtX3b3u/5gQiSGFDiC7+pzZfJ1IPos57Ryo88pBPDXr0LGX0
soezyK9NGYsRDWGRkD7ZJjOaLyTkUGXqRKbQTsgmq4KVdP6nOw5zdRP5G94xojQoEOq+AvD6
GxxuMR/010W7IZgjta57BG/6W5JVgG5io3LnIw572TSNYVfkpnAxqtponk8x7dpO8PogdzqB
+4PUrtNYbeimI/pQppULuXHOdvi7Fyxw6HALZaws0cmxJLH+MHgFGSplrR3wf/Z3r8fdH497
+8nczNZHHR2LiESR5hViyhFioljww89r4C8b9PUvQQhP27poxzobXTpWoqyuvgZkcNyxr7LP
JLf2NTUPO8l8//Xw/H2W7552X/ZfyZQMne0dEtVtqjdnRc3Iks0+n9uIOEFTxyFINuvIXcQ5
sNbwB8LoPn08ZD1DmansUMp0ZRbufWOtZcV5acv/2gPmFoM7jw/kLG2FUdX4IqyZ6bO/bdsI
b1qvpLEhNDZDIe+AZsN0xfGUeyEa8dWV+yZSLUtKxOJ2PAmmIgpn4MxAWCp8T7bSOTHzznjt
luSisEqvzk8+XnYSE5GjgxXG/LYGlCono6TzpojV1RpnHO4eBr6XfoYl3zduy6ZCrRe7jWoa
CtyepRA1USoshpfOqewo3RN4F5K0ebGmhKVN/Ll9w8pypdB92s9CGwPA8nP6SSfpKhi7PMNb
pbBlhSWVfpjeVMCsbSJr7Kh183UVNDG2AoiKBfvceWdkXGH6AedNw0Q4glPvYt5QbVaAeXHZ
tOvqNBS2SMH6uWJ//M/h+S98ayZeXuGorTi9qnDzbknGNintpwx8YmZwW1OzAip+zYsJo5wp
r4oL3UeJ3yMDFE9vPI5tAifWBuGwmnkZfPgFMk3qiVrIyk3YVbnJGGCX/iLRlYu6lUjctE7z
26yhSZvbCjpuBXJFv0K27DilPIfV+uHkdH4NoxleFHqqWawn1DoyeSDTn524cGtUmt8GILOX
n8uy2PtxOqwLq1i2Gn4i7Af8kHGfLMokKYOfCJvdc7U9vXAnCDCEqnUul9IbseCc4xQvvPLe
gWqKrP2L/c4CDKOoJhC906gxWQqPs3jcGy6ZRa/UCsdeaXdSaPxmR+Jn4VQ0AobHbEDgLsVA
7f66frOtKbwXeYcxemCkhNAxBn5xMKm3DjOsA8BviKcEo7xqXrqfTeCiIcUstAwXs9BLCpJo
NZjQtaqUu0b42+icvoUss6qpIlrlJgZVqu2biIO+tv7nbm04ad2QIr8ccSQaJ5X4c1ZbE9X6
xuBHL44HuR5/4OG3SzEB0fy7A763nh33L+3nr73XH7EChuvhB8SXYy13X/9W7u7+2h9nanf/
cMBk3vFwd3h0EC8LDiz+NgmDi09ndJUZTEPJfNhDJTV6WNsb2/52ejF7asd9v//74W4/LnjK
V0LrQcElXkkO2C+vOT7VOBR2g7WO+HqUJluSvrR05xxYTlBI0LNvWFDl067rm8PvTYMVblfw
0yi2oXEX8KKYrihC3mK62af5x7OPk1yhAZyP681YMUuaQSfhmmOrNTH09Tamy9KBp7OmgUOC
myHUELMsxtQ+fsZH4jAUYtXHua8pzfiWGM9CBePxuKs1w90uY8HJr5/sqOviXLhqS8BWbymN
3+bG79/ThWp2I1KB/58cTE6ZiyXiJCbVthIQbmIq/AdiFfxxvr3YTg1BE0Mo8Yny7WX8xLC2
zt80nmubZQq0pR/mlyfzCUXDnvm6uiHQVLfuvVmLLdVzO0qsOHl7Hv1i+t3hGx2ivK/DCdIl
7At+CfZ5d+fn+rDBUpzN5zRKtosdl6cXP+aH3zd2pZfj7v3DhxnO5oNlr2yHOPi9j/TqkCP8
Zo0nJGjBL+ud2wt/+p9gAynXKb7u0s2HWvSBpnmW+v+cjkM0PE6WNEf7FYLASjmrakwiheCn
KUd6fN0fD4fjn5OXTlTZRHjm9beMRc1URdHM8pwkR7EuSQarlmerYNAdz/ZMr1rffHG53Y6b
r5e+m3D2Qq0z786rzDVceiP01NVbTa1QHxGLyKj2ma0lbQRWMbi1PnG6QOTspGsbZD63kS0m
zMayaLE8k/jVDr54wnEjFJqYYz1M+42hkUVNCeGDCIzJflKM+VK+SCJCDFOtbS2YFenq3EK5
ptqvF0mEwpK/4cAO3cIPnmV1xgBqiNH3pZQ8vtxv8R9vEdRpc9amySgFAHVgj/5JndHCqYRR
38L1ApvgxA6JviYMohx3x8J0hn2ys8Wbtm7mZFCg0pUgP11HqPux9KHvx7J7jPgakIN/NCFm
wqtlxN9vxDyWDZrAysgrQGDhUeR0msbeDwh0FgKiSZ9YuBdTS8DU/phoHYhHXf4/Z0+23Lax
7Pv9Cj4mVSfHXMRFD34AsYhjAQSMAUnILyhF4olVR1tJ8k3y97e7B8ssPXDqViW22d2zYNbe
x7ynECR3URo6p9b+fPs2SR7Ojxh9/PT04/nhjhLPTX6BMr+2G1U7w7CmqkzWl+tpYDYpRWY3
mUScrgAxxX65WJjlCdSIeWjXgqcMfaKnLjirnaFSsLY2F+6OYl0w462ATC2L5FTulyyQa/Ny
uUvoq3rh6R8NusY/ygBEXE/uJljBIuFx6QmE1X3MqynQFz/n1Qcg/VR5nnaC+LAxlEfmIFfS
GvIx/G0In2YRVL4SBsj+oTkma0AndwHyZ3jcbA8mZRzo+qYW0HpVmnC4+ktDvUHEsuBUZ0Rf
6OYRgkRG2CTRVJldZbM98TVimJ/5lb6saB1OOftrqRT0hhq8l65Z/3kcVfOAQ1Cp/Ho6wwVm
eLEGvTps7UYwj0R1YBVqgA0qa95EfjQBRSmcKgMpeHWLGr6DRJUL+V77pgZphvAFtzx6So63
8LNIOI0wLuf4B0vWRd9YkpXSgwDs7uX54+3lETMqDeyhMRpBUEbHoLz296LGhAdwr5/4bY2V
JBX86YtuQgJ0xwj8TYAEzH9fj6Ucj97qEdkZXH72IT/90LDgxU9sqMZGvNjjAtj5jJdxCY+R
e5XwHKzUhwCV8N6RUh9a7Q77COVLT+SWQxiHtvbHGN48vMYEjKNDjMFXkQiqeGShbMswk9XW
WYjR+f3hj+fT7duZ1mT4Av+QfQiwWUd0IrF1fLrj+maf8wwpHQJZzbt0UQsS5O1ytqi9C4FY
5wo9LUc7kQY3MJ1hUPjXw07YifP0jqDoMrIQ4HAALnczMt7AohRxuPrJvJEg5tO7EcW1KIUn
8R+i8Ssaa16Nz8ximY+Up70/u7z4ST8Pe1Fgas+xvcGKeWPLS3lBvPwOR9/DI6LP48svy7fi
GIuUFiHb2khlqrbb+zOm2SH0cPy+a0HvZpNhEMV75FJ+uuy/rOczblF2KpGftty7WvE3Q39r
xM/3ry8Pz3ZfMVsHxd6xzRsF+6re/3z4uPv+D+4heYL/RBXuqtgTbztam14ZXBeciq8MChHp
jmEtoKmkgJHV1PstPBJyyDKx0IXAlqDlZMq6qerG8ae0azM5oqGOQ4bOwSJ0OxDuMj05Sgcm
180mVIpplUjz9vXhHj3N1PgwQ6x963LNH319q4VsPKejXstq89Na4LKcj4xIWRPJQtfreb5k
iDZ7uGsZ/0luuzIdlEP6Lk6NvDEGGLi/amekkD5WWaGr8DoInAUqs2v/abIK9lGQjqSRpYYS
UWanoFTBYZFzGyYPb09/4mH1+AIb9m3ofnIir2696z2IPD8iqNHIv4eqnK417ZuGUhR+1I/H
IIlxBD2jzwtvfZHO35jdpPbHDRUoR2Q0s3debKxZn9S9JZzBpT4jrRK4jKUNJdWpKtC4QeGE
DSjLW0tD0XFMy1rWLJJMiM515kH08ZDCj2AL3GIl9B6V8ZXhcKN+k4Buw6QeudbDMk0h0ALR
69GtUU9xjVGqcheUankk5kwjMqHrheJM2DnzbKs+5nXQyQyTWWatjzVmUmtSno/ZVrPGcoYw
cTXPHWV5XXn8dZAXSQX8aNKC5/SRq2rireDzf0qBeg0MJt56IuMxbjcLvehsJ1ycFt/r6lLg
rz35XLH1Xe3tndQ1VLFeGZW2lvJE/zcyUJVpeAAgZgGIqq00gOjUWRnhggBUfmos6jrffjEA
0c0+yERotqTcbg2YsVDzpGkzG0SN4RWqEOhaYsCUT++N2TCs505/HOa7GN0ELU+1DFNN9emc
iqA001V1AN1aqkAN/xpAiwzqzWZ9uRo2aIeYzTcXTvXoYNno2po2tMABNPsDzNBW9znqMEmk
Ge4iwwGhI0EGUkoYzkoUi3ltOAR8KwNOtdQVPRhT0EHTPC/cZhBKvp8q2fnGxlMUQd6WVSJf
uY0m9w/v6Jd8P/n9fHf74x04UxA1YYNNXt4m5D+nuvZ4vvs43+vHSz822/E4DXnN7ZEeW2/c
D4RBcb8PA+3Up81WHI6MAOTyOuxqnJCmuK7C6MgmJa0CWsCo2hwaVNYAfrpLScYwpSU/ZjEn
o/QDg3hWOQuIJuFPRsKpPA/s8WU0qgSnh/c7VyUv473MS9mkQi7S43SuLdMgWs6XdQNSgr4r
B6CtbtdRZAV2D7xDlt3QOTJsvF2wr3JD+a9k3ExgAkiulkokmZV2gEDrup4Z9YTycjGXF6xl
Hx3h00ZKQ4kLd2uaS7TS4smGVmqm5A6u7NRwFqNbKgRZCm1s7GwFRSQvN9N54InAEjKdX06n
C6Y5hZpr+eq6KasAg4nsnmzEdjdbr41EQx2G+nE55Vwtdlm4Wiy1mLdIzlYb7Te6oRS7w9Z0
j6wqGKYmDouFP5m2xH1q6W076dPxKO6pWgWejBJbhuyqORaYOpA3qs3x4HbY9TiGUytzU9Yp
OCyK+cUwnANw6QAxd01oBKS1iCyoV5v1ku1US3K5CD0qrZ6gri9GKURUNZvLXRFLXrRryeJ4
Np1esOeDNRL91bRdz6bW5lIw28g5AIEnlwf1TIbszrzq/Nft+0Q8v3+8/XiiFMXv30GSuJ98
vN0+v2OTk8eH5zPeKncPr/hP/W2SRla6GPn/qIw73lrDnbMpCAdnGXdKkAIXZcXCfNbl9FXz
yla/ew+dNhlHGYd4Z9x8nmnzEu5Yb8067ZICDRC9qxg5BJ0J89LrdkUkZSVrL8Uu2Ab7oAl4
LD4XwIsUxsVhmOeE7i6BP5663JDnW+AQ3s/nSfRyR3NGJspPD/dn/P/fb+8fGNs0+X5+fP30
8Pyfl8nL8wQqUCoC7XoCWFODGNSYrhkIVv560gTCTW2mde+DSAEpAcudsIC6ioybgyDNGHnf
kttOGLn8AIHRZLDNMTMCLhDJFoZatZVF34lZ9kUeVsO7UDBQd98fXqFT3Qb+9PuPP/7z8Jcp
2PWMJeOH57ZMomeS9I63sIq0ht7dQ1Mr60RuIjxPkm0e6Ck/O0z3WoszTPiYwkrX3ln9U+04
HxjE4Wpec7daT5GK2bJeGP5GHSqL1hceFVnPE2fR6mKs/qoU6BDK1R/K5XLOG9N0kgWXBrAj
2BXVYrVyh+ULyG1lvncRMpzNyfnRXQxCjH2IqDaz9ZyZgGozny088NqF7+VmfTFbuogiCudT
mCzMYzGC3ccnrvfyeLrmWaieQogsuOK0Qj1FupmHsynTN5mGl9OYG+iqzIALc+FHEUBldc3O
fBVuVuGUZT/Ndd3tOQya79zbnO1GEfVwDOoqZBFRilfNGR2pNFYRy9gNtDVPPv5+PU9+gUvz
v/+afNy+nv81CaPfgCn4lTtDpCet6q5UaH9UOyA1X/i+gM5LdDA9HRN1PaSEasazaQRP86sr
K7iJ4JJ8tVFF6LB+9OlVxzC8W+MKrEE/kmaVSagQHF+LeEF/qrJmJyW+HemBp2ILf7n9pyLc
rdOjyRZsZoEnVFloH9C9wGR9s9Vamp8ogbSvOXJuNYtEu6aMAo5V6tAgHsmTuR4RHGchV1mQ
HgKW6eC2giaOa1+PwjkOil59++bDcNl6hHpyKTL6hdAiY2ITNBPcnw8f3wH7/Btcl5Nn4Gz+
9zy4POubh2oLdh5+rMeOXdCEF5l2whIkjI+BBSJvBk1QR9jXvBRfne+7ioFz4iRrwgIqnMF1
qs0hdRQNcVSrhZAiJanJGHxputsMXCr7ik77toSVNbAKQdCh6G62KkRjDiA2/gmRhXkWIggt
JJpIi0ouNJK0PdBMNQczRZn6bXr+dbBAOnTka3oVf57NN5ouWuGAj2P62yKHc00xenEcT2aL
y4vJL8nD2/kE///KmZ4TUcbo68xV3KIwGf+NLlSN1t2VzjAGr8ox5y1ZXMyMn2IfJYEnvEM5
tNoqFF195Wwx8fz648N7/Ym98TYv/VQu/k8mLElQIW26fSuMyjhwjWYdq0wWAANXtxjqzOH9
/PaIjyAaoRRmoRwz5uhqYBOOjpeH2ouVYRnH+6b+PJvOL8Zpbj6vV9pKUkRf8hveZVih4yPT
tfiIQvyTPt6O/6XVzHV8Q1w8r7cauuvtCPRT2omrO1gDAimseabsQLEwRLMBHvGaH42AP3Z7
gjDfltxV2xNcJfNrtu2rks3hZOCbTFtlA+aAeY+zvGJwlAc5CDmUBD4Rt5seVdgjqywK2W4K
X16unuKEL3XkJTs1yEWnKRtcN/QLs7Lk5ZZtnpDbwKMSHcgwgIl1JB6+8CQi+MG28m0X73eH
0XmMtpf8NAZZHLJP6g0tH4CJuCqDpGYGPpDLKYWSuFXj5vRl+9ZGP72GGZ+up3wCtJ6wkHUR
RLZS3aVLpAhWnHut2omUWlR/JYZ+o65bBCn0JswzM35dlcoP4U4dRGNnAPDBnHdIJi7Uxa5N
AAF5hRuhLD2dgtkvmurIhNWcE2oetXo+TWyiInoMUAsxHj5SsAUvuLdIPiNdi+T9PhVyOVZy
uXSuxt3t2z15YohP+cSWX/DF5lGzqUVBPxuxmV7MTXUoguFPW3NuUcAler3l2LgWHYpCzu3W
QN5B6JMJLYOTaaVAYKv3rwsJ657zOFJkrWqWaQtAmZmKXhUow5baajAotmMN5SkMYVDIghks
DNW1e2nRXBWqS7zSlWg4DxY4mlrLtgVp9nK53DDw9IIBxtlhNr02zGI9Lsk29sHT8obccuv5
Ro5LU2zD99u327sP9OOzrYyVmbzvyGkLMHvL5aYpKjMtjbK0EJgplJJbH/r4oENTr+Y4vz3c
ProxlO1JR84Roc7ft4jNfDllgfpjtHlv6WDo6GkpkD0DAFmvROpkCd713NOmOhGAZG7lzNLQ
PjW/TpPFGLLLvtaoUe1LipDS0mDp2BLTDGdxT8I2FNdVvI98TzZqhIEs8Am0oyckyxjzk5EO
0hg/mXrmyTlQ+s+o5psNr+XVyWCzzzasKlmn6tybzQOtwyI/s9cdaswG9NwRxmTpSTp0BLlm
Oag8GWLCO0+Dl+ffsAR0mzYAqfkYebGtgWzg/i8Noavr2axmRrRDdWt0bFhlkME5ydqFFQFI
y4vZdOoMioLXzocrbYjdDED/SW+QrNv/Y3S4PlNRsW9at9+1A/FMOL1T4GFPzd0BURRMZ1k6
7bSya9pJXK8L3vTRTZVhy9WA2vliIr/IjGlLisT3SlZLAbJCJfiHdbs6wnBfc5JTj5+thFzX
Nd/rHs11ry/KM5YOmTTthC0eTrptXEbB2Ly0nMeXKrhqg++djWVS/Hyq2wJmLL+Lwy1BnunO
Sa0TbYNDVMJV9Xk2W86nU1/vfD1zdkxSr+oVZ51qCdAxxAwi7jZwLeFq5jAtjwcsnmcETYJ/
0s0MeCwn0Nf59HJkbZTF3Bl8gA1beXhZtcXSszCF5xMG5D/pPvyKa0yvjtHcIXAznmfX22WM
jtC8/qMbDrj5v80Wy5GtUGWLuTtnx3h74BeiQvm5ktwTU9gNZcRLRF3tIt3GwMg1qAnlTQIm
V2f3LqzKlLhtp+PqWZ59pGzRg7RFScS80k54E6ZB5NFfZnkdKEe1lOXfCS+zwMwXgIYpyk12
pWsypRlt39ih9oPDEwgi6rHL3bHZ3lRxuPMk/tk3V2z+z33+Lc+Mc488VoE951Xs6nVZ6DFT
1+4YDs79g5MJQL3ZqhGJL7COrQPKBH5gk4lW7uOxA0y9hfq5d/kkaGxkZ0uLkZO4KFQITiei
KOfObrUP/ortY4d5gQ/XxoaXjigyAUL3Pko9gW8t83sdSkW7zTzOnUWY4R31U8K2QswNM0YG
yG2bd0dpGZOA1QvuTsOrUTaIYqdAWEVPY+2bB/w2uFhwpu6Bok+fwZRux3W0vDqxmK5RzCKH
CIOjOGg+wloRfRUNYBWMymFwTjh4F19qbIKhA3AqeZIYDkQ1CBMxq4rGJJZwGxgjjplgPbHC
gLq2cN2KOiofzO7oC07d3u3HBo1WBI+PwLUu+40Ev02ne1jhV+EuRu0oLgnTZAf/s0kQ4EJP
b1S+hZ66g5Hn+0gZjI3QrNqunkE709u1Wh5kZb9iyRPhQ8AqGMo1SAEn6dqh9AAg+NGQdUTs
k9wE2znuCYavUOmnDAKzQ91ZZLIfjx8Pr4/nv+DbsPHw+8Mr2wNgZLZKswRVpmkMAqdTqboL
9eOph8Of/DnRUqRVeLGYrpgp6SiKMLhcXszcRhXiLxdRxldcZ7K0DouUT/k0Ohx6/W3Mm5mE
AhEyM1J80MilV7mRQbsDQs97yxg01uvAMBBomIPWN24CNQP8+8v7x0/CYVX1YrZc8E7BPX7F
en932Hph9TiL1suVA9vMdL02jY2ol7vIUHsiWGxYvyRCoR+OMX/oM3Zhz96erEu8XpPwRxGJ
AFYbvwlpeoRcLi85HrXFrhZTsycAu1zVdleOgnXUVJii7JOJ0ob++/3j/DT5HcO71GxNfnmC
aXz8e3J++v18f3++n3xqqX57ef4N/R9/dSfUm9iB0HQt+9HVpW/sg7oWgXW+oBsEBtvYX42I
63zv7waTwkE/jPBkbfllo1gEl+aezdpG2BiTl1FIrG3XsdC+BKwWmZbY0FeTT9VJZKPyElLE
CbANfuzVfOpJ0o5Y4gf8OxfHz4vEHOxpsI9Y4ybttOzK2ZcZHL+FpcMwKfLCl+8C0V++Xaw3
nLSOyOs4g8PWXF9pEc6vTVBWWHdcVq2WtbPtsmq9mvOmS0IfVxf1SE+z2hMMg4eH4oA9n5Hj
ypN2d3LrDQkTeeI0nXS4hYF3DRYZ7CB/pYUnAQ3hav/GVAFD3i1WChHa60IuwvnFjLdGEn5H
6S5Y0UYdnFkVu7WKkvfTImTh8/pApH/PEJue8BbOAb8ewR8W7KPohDzsV6Ip5idhzxUI118P
INf4DwLSozfbgo1WRwJXra9Dm8QevvEUQEhxYh91ps6odD61XedIXiNCp77DpE6Ly7o29y0m
W+qYmvgvYJmfbx/xFvyk2Jfb+9vXD4Nt0RewG1tL/Q5y2cSM+1b+8V3xaW3l2g1rX58M06dv
1cJ8PMLLjf2PuWi2FquA14/FDqaUgY5Cn5ytQDiMRjtYr3YYdxLGO5nK6QGOXKRzmRLGF2Su
SxhauQWrpbQU1oXwvtSNuCyQ5jOoCIt7UxH6kmS37zj7g2sr5wVGntF+dofQ5eXiwmNaI7/q
3ZpPBa4KU2qkxdqTcEzVkHnSEPbYBvZ+xEedEk2tfLxBUhLGgxoAAz5qvlkYWeQ1cHBgjSuK
YLWoa6cyBDY7aWSFaFHNV8OFlKCi2gb6E0EEPFSopUlvTNo2u5Dd0y7p0PgQaOY8Ywl1XJaz
uE4YOeCpDDN7hdaXAKxNcGHXs604fpfmo7hcmIwFQpXq3Ofu1FEwn2vQqFRXCRzTPn4JqTBP
J4bu+AeulaM1CPBt8Hdiza/hpY2ALy2DrIHSbD1t0rSwoMVmczFryio04TQOhg28BTJnAYJH
h4OUZPivxHO6MFyegnq5PIW+bvY+awWOb0F+2rwQ2BOMTrYyLGKwtqfjOWZ22t/YPUeGcO4L
7UKCStCG9NWK2Vlm0+m1Of55KfSIKwQVIlzM7dYJ2MivvuqBQZzX1m7ssveZ1ZfMdH898Gwp
4oBXXI19tgxnG5Ctp6zPE+J3Zq+At9wxXRizCCPaxz52SK+HLhFUPqGtx47NHcbIyPDCHMfu
ZQUTtBL2zI1zkrToa+GxvhVteszZjHtitkfPp3AypfiU7BOLo8S5Vrc6jtFXb16EqUgStMc6
RevafwOP5upDghrEFV7hTFiHYdWRaWGuJfQTkgH8lRRXgb2ivsHAO7PqUGRFczVKFGRuoi7i
dzR9IucVgxNr3vZ90aJ9eablmXSfMlrNwlDr0qHVx5ZgFh97PtJ4Na/9DI9PdUL3qZ2uh1JN
Gb+aTMKRii+LBqXGFe/0cBj4YaiulZ+p1HMJvnf6TgI/PmDovZagGePzdoEmLBX6K0bww84Z
sK+KlkZpUQvZ1eoqubE4LGdMwXatzAxPDIrc/8w2W8wgvbi4VunVd+IPehD84+XNVfRWBXTx
5e6/TAfhY2bLzQbfcdcfeDXhTVTFXlwXnaXEs2d69rPY3cCNP8HIE99bcpOPlwmG1oO8BRLc
PT2zC2Id9fP9374e0rGgJ+EwsSKqNvNisWCXpEvreRTIIsxD65Lqsj86w6pVIfZoyWcWP06b
wQ21AHogFDMBtg9TLWe9n0aeWB4BXRFRfqV7dsh2QnKarQ4lE4u8kewLBsr+YkTZ9KDmOLOg
Xcy7Cc2Cer2YDgYg9U7i0+3r6/l+QspFRzanchix7nDbhHFlNQNLmmnDHXgAN9JWZxo0KMY5
zZVQdBuX5Q0y86xvF5F1umqnPCLqK6k03OyaUmSuKtskaGUg7zQ5wg+Bo1NQbJ0+xWJE+aUo
+OVPuKTCv6YeXZ2+FsYfSFKUpVfDTPhdeuLUKIQTeeFMdJpfifA4MtCM/6tDYDscmgTZdrOS
nqykiiDef5vN1//H2LU1t40r6b+SH7CnhgQJEnw4DxRJyRyTEiNSEpMXlY/jnXGVY6ecZHey
v35x4QWXbigPmWS6PwFgA2g0gO4G1uy2K9ho+vgpOr4PUfwR2h5MrN4pTi6Pt3vaOsY1hr44
XHPmA+LlpDRJ3ua0JFzHHTbwhkjBcMNa8fdiLTtWsF+Bgng/iqvL63jJP2FfJh5M0Pc4kjh7
IZtFKWOXwdmKFKKPGXK2o/iAWWsiIANV559HRqkz1GU89LX36AzUclXcxp0+nz2t5FbndVvc
mQDz/VtIry8Xk5L69M83vvS7+j4vO8rXVatL8nLfOT2yE0nXUaWgFpzAKkhSCTDnFF0sl1iB
8sI/Gh1RTXT7pwAohc76J/aW0dRW2gPfWRMWBu5Y7OPMHmnaQaslYLXgbktX8Fa/CtETtI35
sf4sFjZToGWeBZQ4LZRk6L5bcu3buUnfRlkcOUSWRqNV57GgA2WRa780hLk+FqY+aDt06RyK
iLLM6YTFUdrpnT6hAUsgMgntESzJWUic4TN8bEefVrm0LMvg1GZAny4ZjfyTbPKfsNuyGbwr
YtuMG/gWbWVDRy0Tl6/Td5ZUrB38RKuvMtF26JGKeiNAoAh8/zatUXwJtx/50xKzQ8ITm2Cv
8LhFGiax02wZxJGFqJZV+siVeVtEEWOeZaOr+0OPpOGV6psvS3EQgR8JfIw96Xc7vr7maKJf
2US+xTlBFu8lnO358F//+zxdWq0HB0spl3C6pZH5Bw6QjFZI2ZOYaf7a2o/HAiKXfXhpIYbt
F7Zy+l0Nygv4DP3z+pcHI2kbL3C6TburjmYTFL23nEgXhvjIAPa2MDEMltWK0HNVmT9N0JoJ
vPvVMex3Wgem8jIRIdK6KEJbF0Xc5oMtdxMHp/LXMTSA1ZmOgZ1ITATyFawKYuwzWBWmvjE2
jSXtPEA4Bstc09ClrOKK1wMbLbe0TnUerypzxdd07rQdy8tCvEA+iKSNulssywidfrM6notk
9HM5S2PFedhOeCJymyFIwMRfqvxrXgwsi6lhUM+84kKCEB5nM0SIP0GSymkQsA8NgJ5rT6cb
K/LMaaod3/ueIUfFGdJvzIcgJ4FwMtjYNt/nPv5c7OYjSTFfoqXd3LiCs+hpAKqp0LlxnB7S
APpgxQGKzMeOBKM9kASVsev2JN7oyU+7CiqTD6gwDWJfQycI2AeSR8AFdf4eOWSDCBqYwnAE
t94zwDwuW0uU3QT1bDNECYW35Vp7wpimsMfP0gnVIBPrK3RCYStnRksPqr7dQM6NM4aPmTik
o9vfkpEF7mcKBqEpJDjBShEXXg1DQwoPUh3DO+cmJgOn7jKd2k0Up+4HKOMb+rTJ/k7d6S4H
qnD5JlmsHVou7ENTbmv9SnAu8jhwBUYhYfUFSSN4TKxzQ6KQKT0XdCr6MAjge8BFWmWWZVhC
jT0dkpCpeQrI8+7S6ucc8n+v57q0SZPfjzoxVqHWKu0b4OC05NouuQzAS8AVEIf6FaVOZxC9
DQM9OarJMB1YDBbkyW8iMqTUKMRKDVNIjWiIjNtaUKlDOoYII8IYcRjA7RAs0LdERyQEKTXF
qkthYfZRitzZLYgCd5aYMWN93ebi+YU9N/qxkMm5PNSRfIEMY+evULzO0p2xuFiFKfh/8vp4
LbojfNpsA7se8eiYcDK6aKhAV8sF0ycE6AGReB4a5mr5FlYawgM7rab3fGMPnwLOGJEYboR1
+wzZpjRKKZgFdEK0RRilLILbtx34Bus05EPVu8xdQ0PWtyCDBH0LfdaOm39YPO2CgJPaTGx5
V5HvocLv6rskBE2pRaqbdorYA2UubiaE4vSU8Gdhpx9SdF7sMSTgeduasH1f5XrE08KQixg4
DBQrtbMDoDjEtURHZaBOUiyf5EV0VUiBAS4YJMSaHxNyq1QSU6TUBGsrZ/n0pzDGrCMxnQWa
kjogCRKgSZITZlipSQJt73VEliK/jbhtjGVj0kFIXi8NlFh6HEJEwLIpGTGw4kgG9FyHZGQp
yOBNhYdZW3RRcGOlGYqE+gyQttpvSbhpi8UOcqs5plwFweci64pZYM5m8zhrweC2lQ0txJwa
gYO2TeGsBgsbHBycDh+MrADQ5NbYEdRIBk25lgHd2bSIxmj96qLNwIozSqIYKY/yDY6/SEpg
PbkfCnVsV/fY4ecCLYaUwU6EGiILwEbiAT4Los8jAgrsUBTXjqGJXqZ1RNwdZYbm6lrsIbjl
R5dWrIlejO7x4Cxyrmnhu3xZQJuh9y03/d0ALwuc4dVSnB/94w4eTi5AnQ4EZDqYihs6zsG6
iyEhmJRRQyTimAtoXNsXcdqGGWge9MPQp9T7zW2bQIsOV1MhYSWTWytAifUpI751RyJSeD/E
P4Z5O6Le5yQAVgtBN0IIVnpEICN4KFJwPg13bUH9i9rQdqF3ukoAqHMlxyccDogDUDaCc2ud
ajsa+gbLuc4TluSuNM4DI/AW9cKiNI3grGMrgoWlW6hgZCiDlFh1me8TJAAYlYoulI7wejOz
6iyIJmUUfI7YxCT73VqBVOK5UeJEErm5Gyuni4Pp+V6lFlllwUwsE6hqq+Ou2ov0jGIzcNhu
r2XV5J+ubf/vwC3zAN+SzuzLsZYZacVjKp2v2vnNyN1BPDxRdddL3VfQh+rArdi1yqdVvY3Q
fyLf05VZjL0/wUsHgHp7AbYIBbqa8UA6e22R7rl43h6rj74Or9pTk4usld7vEO6E0BmZCKMB
CheRyhMZLJbzWdt6IfcRxJ7Hdlflx6Vifc6d9qz2/HAOotAaPXMKrUQ9E5Sgi8erPaXe18f7
y+FQQi0qD/NlJ/jTKcQNqFgcWyTEKyMRXwPwpwzuP55ehB/w+1cj3alk5gXfwtb7IYqDEcAs
F29+3Jr2FapKPSv8/vbw5fHtK1jJ9BWT/6b3S4Ur6L6/CemPMGR+txdrDfIundvoeVrU1/5Q
QN09+EafiBqK3KEnyDE0BASDej+6POZ8E+b96NufpZw4Hr5+//n6l280YBDt67l2OngbrN+n
YkP348+HF95L3kGjLnlEPIM4SLzmjfPYxNRotLC1rM8jyZLU22wZk4R37CUfirvyoGnmmeK8
XLIw9odL/ulwgm6uF4xKGCbzEF2rvVgAS6CKQ1ftZRQAL01fWxeA46UuJXl5+PH495e3vz50
708/nr8+vf388WH3xmXz+mb5oszldMdqqkasOHiBzrsRsxQP22GV1WKOTIe3CIMijCTSGbba
nFmAdJWPmNNjBlmlSq/39VDkjTZV12MRqG7hvRwkGVi5OUdGXwOnBJduEz/X9VH4SmicdYRO
m0l/5UtE9Qi3YAX2bUaS4AZoyMIjxwW/gevzNrtRp3KBjv2gOaDZC9oOl3IIwhvNmvJm+Lqi
vIAdrUKT/aXLEFEvotuPcRAwP2jKuOMHcWPpONzAzPedfpGc9uONcuYEhP5y+L6NS2gUccs+
+SoHcFDGfC9PkGrm6ZaPid4N+nQQvoNpQm6MAG6HclVRIvlK2jE9NR3KF3k8j4PNngVQH7fC
RACn6iAiJW5oCZmPxAuRSyDaOBnRvRs3G38hCncDUtb5UN3fGKdzriVfj00RJKBU8qHJ+9T3
6yO3HcQzd/yb9YEyk4+fc0waUwyT9wOWVC7+WTSUYXhTkQlrwT/1W5aFiR9zrkWkBTKt5w9r
6jYNg1DKxHhDj4qxj43sJAqCqt8gY1f5mttFTp7BaKHc/o6lXsD5ImeGjy/DwHyANIgY0ui6
3XXcprTGRtsJQeCSkHmoEoc/91J9n09iWFf4a05Cu5pT24C9NPuW/+s/D9+fvqwGUvHw/sUw
scTLKIWnn3l9Zk4N3nndoe/rjZGkvd+YkH7KZqP/qqjlM5Hgr2euSVTZQAVP5obXfrmONwcG
T4wVhoQT8k7OwRoEwxGtjNr+75+vjyLOdX54xNmttdvSMcMFbfazhEcGB6g3XHad9Z6YXkQf
pXpWxZlGtEs+FWytIkWcJuQDYal6VR1thjCfrqcefhVDAUSWG5GppNC7e2XdNUVZ2HVzidIs
QK7nJKDMaBq2FyjzrixbOjpa9SnnR5UJ1SitFXlUcVnnfV1Ah6RSetJ9U6tpIZpxNKKcaTMB
39FrACNX60KnLi0hAE27dZtoIXU6V8SY3W+iDLlQlhCZQ5Cvi3mPOMFy0I6vviLau7/uwDQn
UrpFGI36bYFGtB/N0lmYz4PEdCQhcG4IyR55w4/YW3sKQSi34/Dpc1cnMdemojvNlnMGpaNi
rGkJBpF5TIwTzQeP0/g3qNiopXJhXtVmvJ3G6c0QGlGfTNfOq0NWCYH42CcEnyt/5vvP16I9
lHDKd45YIriM3zHGTQEkBHLlw7duCz8JoMtSNemUe63T/ZN5jHedBCC3RisACcNaAeDFx8Jm
ceSqCeGgDPmOLFxCwR9lsBPxyofv+CV/SCLwGYuZmaWmEljOAVZy9VlmOO7sthWCiNZ8rAbY
WU4wu2JLua6B71MloGUjeFEuVy9xOuZOrcmOs5t5HGgQYZ0FhA9K8j0Db/4kT203TbH1VQGu
xH0dp8noXwWh23Kd3VLzknEh4olYJeT+E+NTBHYMkgDpiiwFCe8tNiMN3BVcL0GEUC7J9Yb2
+fH97enl6fHH+9vr8+P3DyrEsp4fkwXOzQTAXLEUac68NB/Q/n7ZjqEjMmceCyg9uwSoqG+j
MweRTSeKuJoe+sLwbBRcOzZV0VjKmN35g0h95pkEedPm4JVf1ydhQDWzQLm4h4FNSS0jxY1D
Xam6g/xCNZzj5zbPcbbOx3AGTSA/JK08VwqCzhJ8hZnCYTEtBUXL6nTEJcaAAHYC5/HlCXHY
Hy5NHEQe65UDkiD2To5LE5I0cvJFy+HSRhRVSVCQsaQvIcnmdzgxwxrTSRIgaz8Ud/t8l0Ox
AdJgnYK7fwFEOVe/QgwrV5pcIPo4bZCYXCmhlsK+GTMztIasjH9OARpzaHHgWK2cGoV+w3CC
YHm2Zoh47g4ddCpI21kIhkvM7PBjfVU53LV8X5KieUh0EDfz8SV/LckDUrnkmk5mmbqBkhjc
iO8HsYLA82gqZIt/0v1dXubCsxPXk8qEbcPAfepFfzMB2y2vh2w74RBgPvy8ENG0sitiW4/i
EcdDMwg/7F8uQDz1clLPWvUn65GQFSXcGaQ3w4KDz+OWH3BLeGfpTwcjdvwsoebp4cIsaYTY
iBpoz/+CAhc0iHUmYHL0kwGNY22lNYFbgYkWhyLdJDeuN75F7WRvg0LQfc2AEDMIx+LBo14b
MvmeRpTCuxwLhgX+rzDU3Fshat/5W6AzBYMdDBilYNfVfcP3/kgPcWZC0hDKILSChBGVhlDn
Sw6BapVhnGB77MwgJodSjMMYWJpaacEfcVaSJvCIgCI+QRCVBhpcAr55tWFgiK4BYkmcoRWx
BAmlNlHwjtXCEFDCkmWeY9nfABouNiiLUHmnti82CgPDATXQdGrkvNpuIFIGPrluYJjpwqsz
u5B32s3mdjRGsp3oIMYofIBlghCzWwd9TDMw8EjDDEkE633BIRHSw5xHoU20CTGjWlZet6lz
2OjQMEWexchRjoGCjyk0yJaNyFmVDjp9rsLbsDPX5DfnlkSBsRcWJgtg8XYXOIPeipDXqMeu
hU4LLdSUTRUr5NRvrmcsjGDF6kECw+FU3PXFsRL3SoNIVO1txXoO47Km8xZwlByH2HnPHQC1
5xtDvCdtl5vHLCazByNuNQxtWZqksBA9oeEaqNnx7dDN4aVs8s3hIJLX/Bb2fKy2mxPshmxj
uwu0K9RRchtzPbdtgXzrJxYGCXwdYqAYQZ5PsFApFFC5Yvg+noZJBBqS7kGKySNREmA8rqkR
xTYfvdxo/HwWc6v16mgGHHiSG0bQFtkCGec4Dg80cxQvBs0m6MxF28H4cmdr2yEkpe2KmPbp
QAPcTbSlkpp8U2/gAOdjgR3LFPMp7XqCIVxAJF0kzjmYbxpL+F0aIcGVgq28THLYLBcA1GaX
dapX4rnygBcoiRngswjFw/LFC670tIEOKeQ3A99rMPh2t8E0zAzclMezfICwr5qqMK6Ypsy+
X54f5v34j1/f9HxZk+TzVjzLvTbG4PI9aXPYXYczBhC+OYN4wRxFHHORGA5h9uURY81ZajG+
TIWky3BJeul8siaKx7f3Jzer9rkuq8PVyKk8SecgsyU0eg6m8rxZbxqMSo3CZaXn5y9Pb3Hz
/Prznw9v38ThyHe71nPcaJutlWZfdGsc0e8V73fkkEwh8/LsHqlYGHWg0tZ7aTvsdxV0GK6g
w2mv5xyS7dhe9ofSkAP0vYb0lzd/HGnYAhdyhkTslCDLL5//ev7x8PJhOGslL18ruqy13mnT
WfnIxZV3fLb1/2Y6Z8p6r0RkpJiS3Eq8JdrziVdzHdQc+l5kOgblLeCnpoJ6ZPo+4Av0KezE
CQivnfVRKXPqFLU2M3T5P3z78ROfAMOFb4xjezAOl4SBxfzx8Prw8vaXaDHwroH68V011qf2
uqu4BH2jdcLJV048sHaEV5xpAg9RaB71oI3+4+9f/3l//uJtezESCsdXKn6f52kYaal0DLIc
vxBLpqvUu3bteJEGM1evoznjNz+nIXhFI5ibU7mrBuuJsJVhD9wJnp/RsbohBZncfjr7IUwN
1jV87dEsP0kbQpsQ2Q3Yi2ANtPKy3Bxr3kKk0n01nDphA80awpBx3Z2ia1Ef4GVZYeQEuedL
5gAmC1FL1qIRfpn0ocppSo1roGmNq+MUSXG4AsCIU8XmaqiW/wJrTGK3xolxHQc4JE3Vygdd
GiRattf5x9uEJQQodbn/8nyLulyDZRw3E6ju88kpz7OwnCclZs4Vvl8i1nhe6cCaKelt1R70
10BWTtmqtaXegeW1edMcCuyHPfgjNfrc+R0bZ4tCGIspA8jCAPL2E/7HIzM16cziDG9JblD9
dnXShPKBRG04yDS49IgvRXp4fXx+eXl4/wX4TSrrchhy+TyIihz8+eX5jRtuj28iNe5/ffj2
/vb49P27eB9FvEvy9fkfo4h59OSnUn8obSKXeRpHxNUOnJExMAvixK/yJA6pPRQUnQQ2ue27
SF10mitHH0UBc6k0MtNfrPQmItBOYaq8OUckyOuCRM6QO5U5X2yAL+UbuBRMWbKyo8wxPDuS
9m03uo3ku6xP182wvXIuOAx+r/tkTx/LfgHaHcqnUKJSzi8lG/DVrNaLcG3fNERuc3QEor8W
RMxgdb4ikgC+XV8RLIZODxR/M7DQ6QNO1J9YX4hJYo/y+z7gStjt+rZhCW9aAl0caIoqdMat
IgO9Ly9k+IzyaPGOhvpRhkamTj2cnAaBs+0ZLoQFjj01XDKVVtSlJsAE53TQTJoH+BgRM7/L
JLN8zIh5VqQNNTGCH4wBDozbNEwB0UkrMg7AOWONY63Cp1dsbMuKwAxYGp9RVzJyyCOZBHUE
rjMEP4qdrpDkLIJrpMgV7YzIIpb5bPr8nmFeG1OH3/WMIO8vWLLU5Pv8leun/3kSUcsfHv9+
/ub056krkziIwtxRuJIxeSwa9bhlruvaHwry+MYxXCsKLwmwWqH+Ukruer14fwnK9688fvjx
85Vvi+diDZOAj25i9ezq2mf9VK3gz98fn/ji/fr09vP7h7+fXr5pRdvyTyMzf8s0oyhJkZSz
k6WO+AFNkhj4rrurS/u+brY68Aaqj3/4+vT+wH/zypeg6TgImE13NUVy/k5tbLngfCpeAuCL
wBVAYd+PFZDeqsIvyFa8dnADgPhAKMDhHJAceTtqRpDE1mIOALkRXQHeNVkC/K3kgvKXQG81
kgP8VXAA7O09AxLMd30twatlJeBWG5BsWDMgJUjy6wWQIhEFC+CWoNJbX5He6gvGvFPrcM5u
tSG7JeqMr0deQBgx8Ap8sgb6JCExoLqGrA2QW00NAd4LrXwrg+XC6DCn1wUx3Kx8CENv5ecA
qfwcIBcWKyIEb1onrXwMoqArosBd7feHwz4IJdNXAW0PDbIllYBjmRct4oEzIf6k8d4nn57e
Jzl8AaoBfMY/B8RVsfNNIQ6hmxy+1FWIamDVvU/z97RIoxZ+LAZev+QC1nCau6WeDSrKCNA5
+X0aeZVOeclS70InAInvaziABen1bD/SOX2Q0Wr5HduXh+9/a0uz9SHCWSeyrS/huJ0A5jun
J3ECVmxWszwrZNk0Vnm7PkxsL0ftGR/X3lBHHoKnHeBORRZjSRgL1Du6x7O+twV+Zl1zyXuX
6Yik+Pn9x9vX5/97EofF0mZzzlQk/trXbdc4t6yKN5R5yIieEtbiMmJEKthMI+TBKTcNUW7G
mBktprPlSSakd1xUCre87WuuNuHa24EERgijxUsQaUhe9P+UPVmT2zjOf8W1D1uZ2toaHZaP
h3mgdVmxrhbpKy+q3kwn0zWd7lR359uZf/8BlGSRFGhnq5LMGIB4EwRAELDiPFUnN3CuHiFQ
xd4J15aoUyU7hZ5DxobUiQLHcWw1ncK54dBCNfaUQxmBZkec4pe2aBAKYTif8xUZgFMjQ2Vk
Ediq69aRa3GdVwiTEOb71pKRRJ5tfCT2Vnv7BlkLiX9ijJMQlADbIlutGr6AMoR1d+zZ2hAJ
yE3vucHSNqyZWLs++aBPIWrg8JjetA+rwHfcJrEu6sKNXBhO0tw1IdxAd+cqI6RYm8rz3h5m
0WEzS15fnt/hk0u8Ofny4O39/vn3+9ffZx/e7t9BK3x8f/hl9kUh7ZuB9mwuNs5qrTgX98CF
qzrCdMCDs3b+IoC6S3oPXriu85fFZN+hjXsx3FcqU5Kw1SrifhcPlerfZ5mu+18zOCleH97e
Xx/vn6w9jZrTzrx4G5h06EV0cGDZ2gz3pxVdlKvVfElN84i9tB9A/+Y/My/hyZu7rjEFEugp
UoCsQfj6ZkTgpxzmz6f1jRFP66eyz8HWnZM+isOse6qz+rBoHGrReOu1SSlXxwQIy8v4HE9Y
Rw35PUya4+g+6wMxHUgfsYeYu6f15Op14AaR1dVxpOrmhBaUxwbQUnJXClvY/HXHObdPWoen
bJ3j4jDHH9bu6WSuDsHhKLVNLmw44wiVq2yzWjCXch4cp2TpqstczD5Yt6W+1mqQhKxLDZGn
yTbwltMmdmBanbusaVJJ7dlDpFeTL+Zaaraxo/OTvnbLk5BL39yX+mODYd/5AXXEyjZkGxz7
YqOXNIBDvS0AXiKYhNZmzQBf0wez0q+VXhZL1o5r7L44dPWnjMPm9ckLlm5iQOD3HNNpDKFz
V3WjQnAjcm/lOxTQm67thdHiT5ELxzK6IlWRuWik1qGu0LA/QKxMGHnGypsstG6wSFcYBe1T
nHB5ud4VHKovX17f/5gx0G0fP98//7p7eX24f56Jcdv8GsoTLhKHKxsIlp/nkJEpEFs1geuZ
hy0CXd/TZ2QTgjpp8uU8jYTvO8YW7KEBSasGCe/AMFEmu8fN6BgHA9uvAs+Y5Q7WwgiY09Bj
DnPK2eNSh3wo0gXq5dF1rqR+uvbcySZc2fii50yDfsra9KP+n7eboK+zEF8kXpUs5vKZmebz
p5Q9e3l++rsXH3+t89ysAEC2NSwPPOgzcHVj5hTU+rKdeBwOzoiDbWH25eW1k3cmcpi/Pp0/
miOZl5utR922XZBr4pPaug0l0lhM+BZwbq5aCfRcgtLcw2gLmEgQecpXaW6XDyXe8ohaFio2
IOaSbx97brJYBH+ZXc9OXuAEdo81qUV512QaZO7ko39Ebqtmz31mbE8eVsIzXOq2cR6Xl6Ab
4cu3by/PShiMD3EZOJ7n/qL6qk6sdQODdiaaSO0RatFE++nCSr+8PL3N3vEG+f8enl6+z54f
/mtVBvZFcW6TeGp8mrrpyMLT1/vvf2Ccj4mzKEtrxSyXspY1mwlAOtWm9Z7/5i7GacDo7Vm9
P/i2BwKRmrkZfsg7QJDQtMdRCI9qYIcnmY4xii2rAslkCkUe5wn6MdEVtruC46zW2sncw5PN
gDIbIEuGZhRctKKqq7xKz20TJ6TbFnyQSKftS1B8ZVFdkNUhbjpPNDhP9eo6gjxmu7benrlM
Zm3tdV6xqAWVO2qTrCmOzBJDox/HMKYiKSBSCGM2Dg0ryKECShKexkXLt+jTdhlFtbhC/83D
bRwNHBavh/ur+xkwVvoOGr8CQnwl4ug5tgcMz3J3QeWjGgjKUy2tk+vVifr+gjavooYQ9Vea
2Qk+TaHdPw+X+gpYbVLDoljPijVCZeiCWlAvxJCIFRHsOPPTDtqSqX4UfJjtzCXeY36m0jbF
gLVyTyT8IvKF9exD5xcWvtSDP9gv8OP5y+PXH6/36OauHdFdeS1+SI31zxXYCwdv35/u/57F
z18fnx8mVRoVRqG+EDsY/CmJMUHMNjKbOKXhdFr7qy0bC9pyhgVZRr2s9oeY7cfN1gMwWTYL
z20oTtOHMwNNl5s8IMFDKpLf/LEpOkFhiaikUwHnp569Km1vNyzc5Vm6FeYY7wqUPnmds7N1
jA/pFf53AM5tW65cGAdMylLPEHNxw2FyjugIE13Q7xYuRPkhslV2d8r1yjZVuOVmVRi1JKvw
sLQUU7MyzodNNSyf+v754enN3D2StGUb0Z4d0GFOzmJJX4QqxNiEuOFwKlk8vhVavuftJ8eB
E68I6qAtQeUP1hYDzuWrTRW32wyjEXjLtcXsqBGLg+u4xz0slfxW2eboEyTdZdgNojjPItbu
Ij8QriUs3kicxNkpK9sdhkfOCm/DbEYY9YszJtlJzqBeePMo8xbMd26NRZZnGB07y9e2J5AE
bbZerVzas0qhLssqB/mpdpbrTyHlejzSfoyyNhfQ7iJ2zMumkWqXlWm/aWEYnfUysrjGKnMX
swjbnIsdFLz13fni+POfQFO2kbvSw4hOJ79/4ZlHa2duaXoO6I3jB3dkLCydLp0HeoLIEV3G
IC3kK2e+2uYWr0eFuDrIyOdyB1kuA0nqxWLp3drSCvnasdlXL9QFK0V2aoucJU6wPMYW16Lx
gyrPivjU5mGE/1vuYS/QT2yVT5qMxyIOt20lMCrp+lYXKh7hX9hhwgtWyzbwxa19Dv8yXpVZ
2B4OJ9dJHH9e2tTBy0eWkAk3vzpH+F6tKRZLd31rvBTqqavqlLoqN1XbbGDDRRZXmuny5ovI
XUQ/Tx37W3aLoyjUC/+jc7JkX7R8UPwPjVmtmAPCDp8HXpyQ95z0Z4xZdvSFqEqgwJstibNd
1c794yFxyVQdIyWom3Wb38GybFx+0uNVTMi44y8Py+h4q0cD9dwXbh5bC80ELA3YqFwslxb/
MBv1zZlTqVdruz7dk+NjEBae5t6c7exysE4cLAK2s8tsHbGI8LkLLP0j395c/KLGBz2OtxLA
WW4NSE889wsRs58irlP3JmMWzT4/92LQsj3endJbjO2QcdD+qxNyg7W3ttxIXsiBt9YxrORT
XTtBEHpL2inJkAo1mVO+pdT1m17UGjCaYDmasjavj79/fZjImGFUcjTJWFsebmExYchA1Mqv
CFODuAAgODttiX87gwYcUcBBc7FeXDladbL9yS4FodgI9UaxnaRATWqb1Zj9NapPGJwqjdvN
KnAOfpvYBRU0GNSi9Odk2Odu9FGdb2u+WnjedLNfkBbvWGkpyXDTZqsFfaspKbK1401MGgj2
LE6zHR6F5Xb6AFejEtusxNyD4cKHkXQdS4xRSVrxbbZh/RMiS+RAgtBmsjHIlmYHDTztRjQl
tDhHSkKQDJJ6foUXYNK+chHAnrBELR+KqSPX445rr6sLuAGMmJWnhW9xVTcJl7aQpRPCBX3f
0Ju6+vc6usqqINBSaOrqkhkU26heBRb/Sztf0UuKRckOmf3oYU1Yp7TpQTYkaxpQTu9ii3kC
I2Ah3fa08oMlrXkNNKhEeR49+CqNP7dEL1Zo5pYlMdAUGRxg/h3tXTcQNXHNakssmIEGju7g
Rl14uvuBnc3CsZA0Fafb0llPZLaj1BJPtlvmEbfZQzrjlLmERJSQV7nYb9dbTcw1U5Zmq++Q
Mf1rzg4YOvbb9CwEBSUuhbTMt3f7rNnxwQ6dvN5/e5j958eXLw+vff5BxQCdbNqwiEALUk5Y
gJWVyJKzClJ7PVjlpY2eaHuCMRBCrcAQ/iZZnjdwUE4QYVWfoTg2QWQFdHeTZ/on/MzpshBB
loUIuqykauIsLdu4jDJWaqhNJbYjfOw8YOA/HYJcRkAB1Qg4hqZERi+05/44bHECyhwsUTWK
AhIfUpZnGw1WMMyqEfNxOWDTFKOkQgp0/Q2GXh/azHBMYIelgyClLZg/7l9//+/96wOVaRQn
SXItuoN14RnjBhCYuKRCyakXmuhPw7zm8iWv/n14BlXXekcKBMBjbShLGm25+mTMHmuZIKvA
JNJMRa5RLizdgElzF0Yf0g0tluDwHBrKgIONBxkabxz1yeNu1KW20WsoDxmsOlslTXagzGXY
keXcMYoqGIwMzSuxKHmpQxfGxBl5398TkGWFAlLlix2kDa2jjljL+5Yee6nHRsSpu3SEd0xW
H4kOaH3zOVKwMIyta8lg9SrqYJ+yMq6Ad2XWmnfnhkqtAxgfjiaNPSCga6LRP4mgY9Jj46oq
qipXK+ogQHr3jWIEyN1xadkOrNlpJdSFr3N81hTmQdTD4KRjIGId9CzQGjLcc1HR+jmUcyxA
8aElIsTavDyxS4UlAB/OJ2ZRseymTQELVMwD1UUW93+VR0nGt1ov+8Dv5u6L0apRFZSjQdJ5
MnknfX57mIwQlOqJzRQs2j+vlmkGb8ODpalYxLdxbN9Pk3sKBcfRz29pbHFeLF1aoUKeV7Da
knumqKXuTYrrpLjTZVy///zn0+PXP95n/5zlYTTE2Jv4h6BdOMwZ5xhRLws1ToC4fJ44oDF6
gnwpIikKDjJxmjhatBSJEQc/cO5oLQEJOtGdkicHrK+GcUGgiCpvrjg6IOyQpt7c99hcJx1C
6+hQVnB/sU5S3QGh7wgs8F1i7WmnjZifVRhW0guoc+bCla1DPFLsROSRrrcjSX1U+jKC+6x4
32hM4FHfEAm0RmSXUTaPab1rpOuTGV5tM9CsVvojQANpebk8UuFzQd+5Pr6SZk31NAdlNyBH
x4xpP2KUILFUq2Vih6vNwTim9Mf5AUZsmVPRDUeiTbRwnSU9OSD1ncKSlsWVaszJ6xnGDbag
+IVx0K/MeF60ZI237soeq9JKYyLwu5UXTyCYW66eFBopRd4iCvO98EwzVt/DiSvcWAKv9qU2
LJJTbkGrm7BFAKqdgJ8wuELEzRn08iYuU7ElGwmEDTsSk7snSsS4eo0u6XTuqt8fPqN/LLZs
4oyIH7I53s4pM4CwsNlrBsQLsE1obUAS1PQpJnF70CwVnwg5CHG+y0odFm7xSk5vTbjN4NfZ
7HFY7Y1MShoalDyW51Tsc/mxfJhm1H2uQVHgeuUwBWlV4iWmbn0YoMaAKF/G6ESYmK3GcL0W
YUuiP+1iW5vTuNhkTaS3L02k46S+FnIMp2kJGo8EB1Bl8ojyC0MstEBeiJpN351ts3tkuahq
sxmHLD7Ka1lrO9JzIw0vlmKzEPQks9RM0Gog4j6yjSUdLGLFMSu3pFGh63XJQZcXqoMmwvOw
ro6qd6MExsY05HFZHSoDVqWZ3FvfKCj+qLUxu2DIJYXYZl9s8rhmkWesLESm67lj//QIAmje
L0htl4B6VMBamYxzAXPaWGKydvhzAoKIlXW1TdztEst4F1nYVLxKhNEgvEBq4vOkOftcZHJZ
WisshW1FV42Id3o9NSsF8BrYKRorVcD2nV3HguXn8mSUiLnqw4gEGmZAFUNq2wRdVzRZBKxG
ypIkSXJWyhvekJsjWjfomWX5jjN0KjI/6W/Xbd+giRgO1elnImZUFsgeB+sSjq540kCoqs6v
cLHG4qAnOQv6cjCeUZKeLLtgjfhYnbGCccZU6GSriOxQmU0ErsfjmLLkSuwWGEqhb3+xbUDd
LhjmkBjLV6HEobFHQaCtSbuL5L9ZVlQi1ms6ZWVR6aBPcVPJHl+gA2TS20/nCA583R9ZDhyw
ScxQtd/YTvq85upbA0oAubh56/LSpSK8etpmtNRpftaV9fz+8DTLgBvZSpTX0kBgL5cuYkBr
VQ5yGAdlextmutFanTyk6L1xLQq5JSMiCA8iC3fEGJfxUW54RUqO8UoblUIK1kourR0WI05y
VWAilht4SblpkDuVIBm12yO+uyjTeCr5opJAWLplCaz0HS+weH51FLD/adtfhwY1ex5c+/7o
0eEcuh6ExcJXbaojNNCy23Qj0zgOPqajb7YlSZy7oHn59CNTSSHzjDqTsiWYts0M+MX8Bn5t
CfB1IXAsYRMlQZc3yo7nfujNLbfK3fBUG5AM2ru9xRyvEjXszjZAmEAq0AP1qvBJ9g6VRmrE
+mTK1MDz6XgD2JKHuccHDpnsesAGMjNZUVSKnnLBeS5RIYCvDC/iF9RdRY9ddRmnDaCR4XgA
r0hHk3EY9VjlKvzq8CLNQjUCSWhvGfp7AgymkwhHh+vNuWMJ6tfVYsmiJZGXlDPWLR15K2da
cS78gEwP33GJzsZkdKxPL2dAS+4ZfS1jcdrIMOJ6nSJkmJTI3hmRh8HavbLMgCkEfxm1VcJz
Ji2dZoiXcDT3AVswoBn33ST33bU5kz2is4AbzFs+Zf3P0+Pznx/cX2ZwfM2adDPrLUA/nvGt
E3Ggzz6M4s4vij1YzhRKhIXRNqlSlYfJWHY5wa9wr/wES8OOxxdLV3hbnbWbs0V/7KZK5g3v
d7xtvpTcVvrXWW3xXOxqTwvf1T27LoMvXh+/ftVMM11NcPSmmn1MBXfpgS24Cg7sbSWmq7XH
RxmnpAuNZhuDOLyJmTAW0IAnLiQ1fFjvrfWzEOTpTNDvfDRKax4nvT/d66VWnzY5wI/f3zG0
wNvsvRvlcSmXD+9fHp/e8dmefIw1+4CT8X7/+vXh3VzHl0FvWMnRZcQyKF1epcnBMKBBwbQY
RDQyYDa2161GcWhIvLJjLuON0fKJCccrTc6zDb4iOQ+ODLDF7//88R1H5e3l6WH29v3h4fMf
6iNGC8VQagwnQAv8G1Po8LDZK/4XEkWkwEI40b5GhG3nv3GhRJAUX8leRwXrrkamgQoAhdn4
JhmI+LkM0S9Gu03hRwkn69j3JVnqB1RbVIe4dwa6RjY8ULb2BYlgH9Z0CgajR5dJ3Z96F9tx
3PHBNNoQRoUwms+XK2cUb0Y9r8MQs5EVKb6Nz7K2K2r8RLiLncXjF0g9yj5Rs0amO6vlK7dv
I7h70yGRvzkGuKnkRAU6uNNKMCcc1zKE1/3LskpccP/4x9iyfkzgjGori2FbJaFOBAU/KFpq
3WO39qrMCj/aMEs0bFtjTrc0LrPmTkdE+Iy6R2hFsDjUAXD8hRX3daC80u6uB3QESjSatgqw
hOOTuA2mzwspm40ssNlzrjexSMx4ugnJbvC+vh3TlyhQPZeHfBgJ8o52gPRgOitRj9zgM3pV
Wu/hWVnvxbSGgqq2wNnpfPv6a1YtROIhqsmUHdsKQ5ebbZZQNHXy3j7QO0NOuFPx+Pn15e3l
y/ts+/f3h9d/H2Zffzy8vWvWjEsM9OukY/VpE59t6WO5YGlW0tLU4GxBrvimKuLLjbg2NNjP
1uJaX8R5zvD9w/AlSVXlddieKjobAd83CQttdUs+BifDjix4ewTxr8wr3ajS2SqeXj7/OeMv
P14/PxAJ11DKAv6gWOskBFjRRmE1UC9vwm5FjdfAYeGt/MCU1ADc7qqSXeAjx2eHrIT9KhHE
CGDaRWmvMYuMji2rN9MCEyGKxnGdaYmjbexUg8Z/hUCm2lxcIaiO+RVsE7ErWL4v50R/L3iZ
S/MK/iBAZ77WvRIY2ZLq33BY8mLtLZzp0PUzGm1OWEHdhAX1TnvwuJx+zwQcCEtrvcWJT7+R
RnnP+k0Ja7iJzblH4yYMEmZoZbW1H3XGMeuSLSlqR9TlIs7pp12sKQ7LApU00zap9LnAUzqj
bjM6HBeTPTM82ut8UsalC0dRIopr6+5UMt42Nb+2eMXu2uqrm8g62n3zPqIDKfZJEw+3PRsI
C9q0eyEoxN6WeR50NGg/HBA0L7wUISxPG+J+cOypavupP5H3ICsfN07RKJbRC0x3v+3Bte2F
BbYBQ/xIP3JBD/VlhcHyok8IJkIYZffqbpbXhvg6CydkMTcyyAzBkyiGrpTBsnxTUfaYDM6Q
PeZXVTaXBBlZNdOHZwxkN5PIWX0P+qKMXsdN34/uaxRaUsE2eWyWO2JgVNgt9EVd+H/KrqW7
cVxH/5WcWd1Z9LT18GsxC0WSbVX0iii7nNro5Ca+XTlTiWuS1Dld99cPQFIySQFKZtHVMT+I
b4IASALm2Iwo5TKl9YWP6u3mqv260NuGplB6dw36WAuSwX5LyQzVRpGb9cZriiqVXh2wU8tx
5kmAacxn2QRBerwrQSDhCbIa23AoBH22IOqohtUHEgefBXrREGwNgzUoWPHXqUYgyWRPIAfj
UXnBbgSrcGun5/P7CeOxUUczTYpnhiDFxORUIT5Wmf58fvuLzK8uRC9D0zlaXxo9gFepvma2
ryplh4C6/UP8fns/PV9VL1fx96ef/4mmhoenf8EkTsZ1QEGkLroE5lZWjg0A0fOP81/wpTjH
VAtUSPE4Kg8RPeU1QX4Df0UgjNKWREW1BW5YxVm5offbgYiurkOXpp+jK5hCezdKRPtVx6D9
5tHpl2F4Yv38yxJu1IMwlNbdYPMUjSirihEqFFHtR0RGfb3H1TN3jbUnK+ke7Lq42DSjGXH9
er5/fDg/c1OiF+ClwZpev5CzPEpkDs0kDrKjaOm9iqyBrEJ5rP/cvJ5Obw/3wKJvz6/ZLVfN
230Wx6Bfgj5HOterowiDqpaiyq2w3R8Voeyn/1UcuYJx09/W8cH/aH7KASqOKzpGyKgIdaoP
isnff7NFK7XltthOqjVlnZJFEplf4nm0p/9hmQRw47hIbnlWXW6aKN7QejUS1GgV/dpE9HpA
ChHXIEmxcFGMUNOxo1t5WfvbX/c/YJaxE11uI6hCR2UCKg+/1aAdCuSQCQJxTQujEs3zmBb+
JAp7yI5sGFl9e3ZpcZqyIfeixLaxrtYYIoaaulPfXua3cV+oGpQXy5StxI5I0AZ8DWOuDMvS
FB8sKU01nJXijdg6n2BTUkv0Z92hylt8cfUp+mCS3qQ2hOa9VJkVU+5l5uPTj6cXdjUfszwr
j90h3pPjT3xs1/Wbe6zXH1R8SoQYbLbo3vOwadLbvtb659X2DIQvZ8uVq4K6bXXovSdUZZLi
CrLuChtkddqg3SoqY5JNm5S44YjokHJZ4VEnyKcfZwSCeSazsdqTuNs8yrF6Rl3vxdANRulI
gfzegCmr/tCFXXrAY7Lf4/pLoC+trGLqBQNJW9dShyBJhpWabLKLTTc9trG80itbn/79/nB+
0a+bKAFSkXdRAmp/xNg4NM1GROuQPCXRBPrhhp1YREcvnC+XFBAEc+vd0wVZLlchfbiiaeq2
xHi7UySSwQrYfECHFtRRm6Zr2tV6GUSjCopiPp/5o2S84uY+UblAwBbg34AJ64Zh2xvquntm
9lyGZv39ZmNbtS6pXUxvVwZFUtAKnk0ylp8oQrwEB5LUnrYZIeGNfKoN5HYb9FEsCLu6NRaq
/twI8hvDLqBIZfEC+clA4psk4mv/QOzZSe7Jn+3GXSonV9NYdXp4OP04vZ6fT+/OkomSTHgL
n3FM1aO0u6MoOeZBOGdfB/c4xklj8aX/IU6/z70uIs+MzQS/nRDRkBIyD1yvixgW3MSr5STy
mainSRRwvoyKqElmjCsZiTFuoxBj/NTIcW9VRbsgOpJOM26OIjEcksuf2KtuEj5vNZLiL+gK
04yTFge+GdIC5MllaHM1ncSMSY+qsq2PFuR1N0BW4dy3ilzP5550ND5KdRMsj46FjJpGHTwB
svDtZog4ci+AXrD2ZhUwD3QRu44Yn9LOKlMr7+UetHbp7V3HPYAtDPYtO9RglIAMsi0iWPYg
rFnbdrKcrb2GvooHoMf4cEJoTV1VBEDFvzNJfcYZooTonpAQ7aYJoHBJLwOAFrNFl6mDwAjd
pjML0KLkOcQSJhYPrTq2XfQVCQTWxjyTvwOnt1YrKoIMAGvfJV2HHOtcrte0ySFK1uGCvpAI
7LgDFoACDm8scUATAm0nmic+klj1PNb+7MjnCvBqxeSLh6EZmiF1pgOTXCN/3dZOUWl5SPOq
xpP5duQ7ztaMnC93GQhR9DLYHZcMR87KCJ/1cy3LStSHY6ZpIC0vE7ca6j4vm2Nex95qokTA
g6ka5W3sh0vqSbFEVvbLekxi3DgrjJqnKMPOfDukJyR5nC8IBTJxHQHzQzLCISDBInBKYd0A
FnENYia9IBALGUfKiK35aJLoTbdoFyCx460qZyiLtOy+eezMLqP9cjWzHP3hYTRDLeXzA2oe
4xtZF9k9m/hYEhycOl4QAOjZL72Zb++aip1UTTlvFx4/aQfdS6ATQ5pGxP5yYt6KOoVasKhc
RuiOaXwv3Nha8fBa9SBjm1ckyUYkxeeI2Aq1BfAgejBa2dezlWcNRJ/KvP/o4VDQ8bYU7vle
sBrn6s1WwiOdWPefrcTMFJJ08sITC3/hJENO3nxUhliOAmFY8CoIKc+NGlysxrUW6o0A81EB
2vDR5Z3oSjGPwznJMA6bhTdzv9B2peNoHHuJa0q6MuUvGYLnKnWCV6Fw3aQgC7p+5u3sjY/1
QdTPH0//ehppUquAkUV2RRy6fgmHQ50hL5XZ99Pz0wM0RMgQ4qaMiBdSunqnH/FZG7iE0m+V
xhiVJ10wKk0cixXJRLPoVgviBiNIgtnE6sOH2A264xNb7kK9qAUZRurwbbU+mq8PR52h3DQ8
PeqEKxhAHcrJvGBHE5iadCF0TwmtE6kDS1H33w2ZmmqYqIevFJN31P0LwW5/bb2iHGVsfdY6
laExS59zMD1Idny189W9mr+0xjGfLUJT0J0HtnMWTGHmC0AhyeYQCB3lAlIoX/8AzNc+PkMQ
qVUNTHUSgsbJcj6juBUACz9sXO0Tk1eLCR1ivlgvJowY8+WcU78AojggAgtLi4DfoVOn5XJG
XmgDZO3ZtMuA9EQEHGfluB2vK/T1w3hHFmHoU/3WC63woSNeeo7WbomXCzJGabHwAzMCJkh9
c8+VNucrcvqANBcu/blpkKjDte1sWW/vTBthiwFotvLZ52uKYj5fcj5gEV5yJh4NLzyq6WoL
63tx8KM7sRzVQSnwqMdfz899JDd3h9KnEzIUHLmHjDLQ/ixP//vr9PLw+0r8fnn/fnp7+jc+
9koSoUMsGrdn5c2i+/fz65/JE4Zk/OcvO+AS6KRzrdtal7SY72TO9ff7t9MfOZCdHq/y8/nn
1T+gXAwj2dfrzaiXWdYGFD2HFUGSO2C6Iv/fYi4O0ya7x2Klf/1+Pb89nH+eoGh3V5YW0tnK
qS8meuQm12MLkz1IK6vLfo+N8NccAwYwZCS662LrMct2c4yEj0FfmUve9T6YgdpOG/f0niNV
DWmJHG1HEsLn/xMwPuPr4cs0b7fBKMSGs4DGg6CkgdP9j/fvhrjUp76+XzX376er4vzy9G6P
2SYNw5ltqpFJtCkNz3ZmE9oxgrR7f7IWBmhWXFX71/PT49P7b2KeFX5gy/XJrmWY1A5VCkaZ
BsyfMbbmXSt8ki/v2r39WlpkS9rUioA2wvfNdJukXT4AB8R3qM+n+7dfr6fnE0jYv6CLRksr
nBFLK2Tmt0bJ5wcas48MMm8x+m1LYTrNkSk2x0qsoA94z6g9gSN2aPimOC6sHs3KQ5fFRQhc
gM/UIqIzRhJYxgu5jK1zOBOwxEwDcFqp120uikUijvTeww+kufqx8+VLwGcq9XJAqN7USrd0
BKv9knQi8BzhaI/mLGY65IEz1y8A8Bvb0F4nYh0wq1yCa27SiWXgM0vxeuct51QNEDCnYgxS
jWdGcceEwJJ8IIVz/hCj4whq0iOwmFs9tq39qJ4xoc8UCF0zm9Ev6rJbsfA96EDmolivyIgc
9i7GamgT+TSRBD0y8MEXEXm+Z/VNUzezOcm78raZ20JyfoBJEcbUQRpwc9gGbI6j02g7fllF
sM1TlazqFmaTMaA1VFq6HXE4qeeR0Y0RCA1RWLQ3QeBZNYOluT9kguyjNhZB6Fk6h0xyA9E4
Q9JCr88X9CST2IrHlkvShCXycB4Y/bAXc2/lG09ZD3GZu52u0hh7/yEt8sWMNiFIaGnnlS88
RpH9BqPkjw6/NWuz2ZC6Xnj/18vpXR3wGQzqwgpuVuslcyCHEKNH3szWtBFbH1MX0bY0d6Qh
UXNyQ/S7QJy+C2DgkVyxKOJg7tvh9vQWIHPkjp/7ybMr4vkqNM6THcCtrQtzNe7pmiLwJnZH
h2yUW3/LkhpDNbq/frw//fxx+tu9q4oWoz29/1nfaNHm4cfTCzFHhh2TwFVgcO1H4uqPq7f3
+5dH0BZfTm5Fdo1+VaSufDByOj4qa5p93XI3RvqnYmxmBPVnCm7Ro0ReVbVRsJnRndgIq066
V+i2a3HgBeRo0J4f4b+/fv2Av3+e355Q06TWoNyhwq6u6Eu2n8nNUv5+nt9Bpnki787MR4G9
euFcAMuhWSWaP0LmGEFiK+Y8DRDbjhLXobPFGohn8lxMUEzY+tqjpaO2zlGloawYTmeQHQXj
9267ESvqtTe6bcHkrL5WFoTX0xvKlCSnva5ni1lBeTO8LmrflvLxtyvVyzRH3k3yHeweTHjX
GkRPRm+qmaHO4tpzNcdB1c49W59TKdzFGgVaNmBIC1QefYKYL8w4UOq3y3V1Kq0+IBgs/9vV
3JVrXTKVtFkrxKptO1cq99Bn/mxhfPitjkDcXYwS7Oz7xH7cehuQO1EuasTL08tf5PwRwdoV
L8x93/pOz8bz30/PqMki73h8Qjb1QM5NKbrSERIwXHGDHgfT7mAJsMW15zNMoeae+TebZLkM
GUleNBvGniGOa24mAzTnbkVBfrSkjrJawKlgh3we5LNRjA1j6CZ7Vb+Eezv/QPdW3C0qgyP7
gjWZ+cLjbEwflKB259PzTzR2MgxJbjuzCDbctKDfhqDNfL2iZH1g7hlG50ubolLX9I1FnB/X
s4Utyas00vzeFqDbWScwMoW6CNLCZmwqKPK3b91+R+uWt5rTEeKoDhkuT7SW0x/4CayFlu4Q
yxL6GTZi4mvWxrs2Je9oAI7Lo67kGw4jta0qw32LpEubjXWZA6nQHZTr37OfuUWKl+V7owT8
1BHwxrfvkbQFhS003mJj2ia6Sa3vz/evj9TnGVIvVzJwxkA9uufe8wMz+AP8UEKV5Yfga6Ee
/9L8BFD5mp9F9bs5Hk+bPKPdVkl4/GDOQIcgV8/2V2m9Dkg3ewhqbwLuN7vs+kDPHESz4khb
ZTTo07fsJKpWM4tLj5X0pq9gdaImmEhOmgavgjENxpdi6AXKbXF/rYnNtjjSlhnE5KPtpODf
5yORdCDJHJ5JnHRHgAjeRHLr27tJ4LwPSBp9/4glIDxX23jur+I6pwU3SYDXkybQZuJTxjmD
wgpuz+7RjgzwoeE6dVetfLTF5thmacw8PNTwruE8cyKB8rbCwt+syaiU2eb26uH7089xXAxA
cMysV8WwRjOKTX+RPjiizAqu1M8MUFVjzK1mOMpABwVOEjTfIo+n6ueILI/cDcMVGhekly7D
4q5uiLbxHqHJ8ncrMcr8klFz2+3LrN5l6M4vS5h4UvhCC0jRrzqpYSNctsX+SLxYxCLiqrjO
Ss6NZgXbJD40r+Mdup//mIjbs4G9j7ujt2+4U2aofB3FN3JLvahhVYQeXOo48237H/qUh+mU
1VXcRjnRE6BgpG0fwzC3HxcpLGp3S9poq/Gj8GYU+1Ww2uPG2fKbm4Xre2Xj73cioZm3gvHS
8RQsPaFv6TDWigRjBmTU2z4Nq61pXDHpg2AiX+WjQHqi7KKGfrSlKEva+ZwCB0dG4xrIy65R
xbiGNGhq7iKrJBFxQam2GpSXKcZlS2Zd1N6ckpQ1SRVv6q0RYVUn78tjNs4Qg0vz/nAVTc8Q
PkHSbfM99VhUUX27Ky22pb2p6RmXBfTjG4dqoZ5PKWV3d3clfv3zTT69vTB97YiwA9gQQXd3
g8Ajneq3W+PUA8AjfmbtdJCo3b/g+0J6QwIa7WbD8yOkY3baEV2APgbp24kX4ui4/SxZkdWZ
pNVBuT/7SYKdyNFqpxNYXzomChLFd9tyL6briQ8wRIP5kCSDszrswM6pkZNNKSSVO1Kl8OW4
Jg0VKkN+3GAlIvvl0gBwVTNqP9lCjCNUxqBhVU3jPG4k6Sb7vScSsKY4Scski/ID7QIGqVAr
kW4xbicbWWRHYNofzwm1BCezUmv5AxLcflAQmC5LZLCblNX0ylKbSXdojj560ZsaJk3agKTk
ZtnLh00RJVGwnMu3xflexktRrMSeFHLrlROKnziKxukIs9MPoAB3UBrUe98WmVtIj69kiAB+
YYC60/mrEnRNkcU2XxsguWqcqY/g5KQo6uBjAiyUp0DneFODjAR7xgFYjx/FVA5VnOYV3jNu
kpTPR4pak41Rfq7q23DmfYLwdnJOShIZm6WsRbdJi7bqDp8g3wk5Wp/Il29p347VbHGcbEcT
oef8aRL5cCctg+lN8OIZQf46MvqbSSnXdSIyl9tQtLim7Wk9QO1dnTpTXqsaSa3CQNpCgAYl
o1OwsyZ6PxBTbKR3Jzk1bweaqWkySE6fpuLHYKCarPpFv9uRTo5l1VtljPACb4Y9tbuzO/iC
hz3+28azXThbYnXd3lX2BgDgB880pIXBW4dd7TMWGSBKIi3MEa2QRiSteLncG4TeOqtTviOV
/nKTpsV1BPOBi6A0Jp1aSIoy30oXSNf8dn2hmyxYPzpCmdq15PeHFpZ0PAwPOn2Jo/oyYEVs
WcHhJ+P+GhEQoQ3VIrIMutB66yxHP216fD0/PVrnH2XSVEyIrJ7cUPWz6/KQZAXNEhMyvFx5
KFLD/Cx/jg3QKllaKzI69wtFFVctbdP68k26uE83e8Zjlcqk1z1SdIc4VVpP6JRn0aBfX1kj
4wQGdklZB3PBqX1q80GJ8uWmSCKaZmC0fAsHEq6PVDkoRvP9qOsi2QN6/6ZrM3CvUW2sbNQj
h76LLnO792D40WiJ8oDhj7Y18wpUvTPlc5E+f0ewuj399er99f5BntyOg8g5fnp1quIJreH5
v0/BpUqkblsjJOiQCvsRkVq39nXaPp04m+lvS4+b0OeqbQ9Dbvi7K7ZNb5cge8sl6iLm5DfK
QRiPuroB6YZ/3Tdk15ML9tKWSxof6Mk50CG/7T5uiObOHxabxWlIXAJzyYoo3h0r3geNJLxu
smQ70SPJhj5Ls9pW1BOtY+ysbUotxBoWe21Z3kVWMf4r86zgIgjIO2Lwd5kyp1RxtUcS2gJc
iZacwc6ppXqK9IRBZuRuaXpgi6Hv0+4rRmtVgWys0AsR3pVoU+gbdBQiSHv4RroHjmrbGt76
3Ya6pwhI0NkblU7C22LZEWpBmZp7GpHG+0bF2bkg4TjDEL27dZuqkVWhMwytQkc5mmXZWY9Y
R79XXieW4QZ/s8RQQHEte980ZmbQx4DY7RmSgZiMaGl81x2jtm3Irz/oYpNu3M1f+loZv4m+
+8L0G6az3YbftFGboVN8o4ijUyT+1l7Eu0No5o7I7b5qqUPRo1NR6yMmqChCVSmjl8jYS0y2
skF2/SIBfdh2m6iNjF7ZbgQuB+PMpdWjbN4bbj8xSAORnAo6boE1UANFs0fzTQlgJ+MjuSRO
7VWiqr/ZTZf80k13SBsnHFMvV2S5buOQ4cYfTWSZhENN8wb9xXgK9wDZMyOqfv7xRKrzGOVW
Ukh/bo5rSKcg6bQ9K78A586YE4a+Rmjcwtt4LJ1gJH2OQeEaMPu6T+muMTwL7EzmOGTo+x6S
M/N+DvrYRDcgdwy+wWA7cXNXY+OYZBArtvb4CjlDWmqGbISK5WU4n3QTMpUgHXMaRUYunVzq
zk8MxSStPXJHRYdVTlCQstWEX6OmzMgQ3Arv18VFzdgUwHDoWywKozYYmVncGsMW7dtqI0Jr
kag0d5nIvYuenRV0cB7dObCSse8fvp+MvX0j+u3FGCC13/MXkySOU4K+ua3LUOUlf4Am82dy
SKRwMZItMlGt0VBuMr4vVZ6lRvySb0Bk9sc+2fRssS+RLkXdeq7En8Bq/0yP+G/Z0vXYSH5j
TH0B31kpB5cEf/dxGeIqSWuMexYGSwrPKoxgJqBV//H0dl6t5us/PCNCmkm6bzf09U3ZAJop
lm2/U5gJDvOWac1X0zH5ZN+o88W306/H89W/rD4zlkwV0zWSCCjEedKkBmu4SZvS7MORQWK3
38IavSbzjJp41+0i0W2zLZ5hxF1thaFT/7uslN4ING6CIR5nQgUlxHA7aUF2btqC6HtjUhmd
mts/+mGkxxkJ+qnSwVShSjNJluYVbxtZzhlkNZ/ZNTIQ20mWjdEXyRyiD2u8WrClLzwW8bm2
LALLWmVj9K1ph4h6c+eQLPheWTCvCU2idbD4qIy17SbB+ZzaGWyScM110DJ0OwiYJc67jnpv
Yn3r+exMAcizS5ThKLmiqAv0Ju4Mb588Gtse4Ae2p+BGtcdHQ9oD9J0dk4LygWM1NrA7bUhn
R8LjantTZauusTtHpu3tIoooRntgVNqkmByneWsed17SQcTZN5VbJ4k1FShSEeWHfyC5a7I8
z2K3GxH7v8qOZLtt5HjPV+j5lLznOJYieZyDDw2gSWCITVhISRc8WqIlvrGWR1GZOF+fql6A
Xqph5zDWsKvQa3VtXV29ZBwgwXkUKA3nlA2q4Rl0W+ZvdwFln3WBwWfU+Lu+WWVtagNQhJo9
78sMSZvyKlbD5tIUFpYHRCab2t2+HfDeg/eg7YpfW7ILf4MFdNlzfIsSdSRKMPKmBSMWU6kD
PqicS1NFl2ozT6i6hyQFpZ03DNVq+nqntGnwJdNWRBx1TRbb76kpFFK+pmzN4Z8m4SX0oBev
nNbXAz71GaMZMPXTQ5oBgXKT5/iGtSXmPSzkO23NArYPGC6o9LdV3wTsLeEciEV9Bax1yvOa
ftpRqVnTZDHzofe2+PIOM+bcPf/59P7H9nH7/vvz9u5l//T+dfttB/Xs797vn467eySJ919f
vr2TVLLaHZ52308etoe7nbiSNFGLeu/k8fnw42T/tMckDPv/bu28PXEsFBvU9Ic1a2AfZJ1+
ddpQcCisG27vclGIoXuroazId2oMDFgaoxmqDsTAJgKeyQzfApckEngc3ENeAHMI4o4vrJDT
pcHh2R4zubm7dnTAVI00gA1tWWy6Sl8AiQ8/Xo7PJ7fPh93J8+HkYff9ReR6spDRrLUesLOK
z/xyzhKy0EdtV3FWp6Z16wD8T1LrSWSj0EdtTAN+KiMRR2XW63iwJyzU+VVd+9iruvZrQEeI
jwoCgC2JelW5/4HtILCx8caGeMTPcXoprOXi9Oxz0eceoOxzutBy6aryWvylDWiJIf5QsXp6
KvouBZHgtSjeJtQBoG9fv+9v//7H7sfJrSDc+8P25eGHR69Ny7x6ktTdAwOP/eZ4nKTE+Hjc
JIEX/TTBFnQ8hx5+36z52cXFqaVyySPzt+MD3jK+3R53dyf8SQwNb37/uT8+nLDX1+fbvQAl
2+PWG2scF0R/l2Sws/4kBXnNzj7WVX6NiUKI7xlfZu3pGaVX6/Hyy2xNTF/KgPet9YpFIiPb
4/Od6YfR3YhiouV4QXmXNbDzyTwmiJqLGAe7LFfuALu0WtAhHCNdR9S9DAW9IpoG5QUf4rJy
5Kg5xae6u54+6NYdx5d1/DPk7etDaBIL5hNxKgvdyq+cwbjwdWEnMNQX6XevR7/dJv7nGbl+
AjCs66Lt52gQ0byOX10J7u5u1ChnK34WEXMqIZSCN7XTnX5MsgXdVQkjeuttKOxYuBljKzlM
ODn3hlMkFN7FUNexj5vBjhKBujEx/KZIZjcpwu0MfhPgzL1B62E4b+w4+z9lp15vsVAMwxPn
wG8uPlHFF6eUPAFAIKmU5rbz4A70rigQFa8Fy7I5DTwjoTA29YWdUlOqTPuXB+vq68gyW5KR
4kvSM2Kv7CM77aAGNDHtGhgpv9osspaO09cEzgoOli11CjhioPmmk8P7sAuiZ1hOeYG0oOWe
tjksxF+veJWyG5ZQy8/yls1RnxZh1Lecz6gZoCjV+ISYP6y2mJ3vjs9MY7epcC185UWW6xnW
Svfz4wsmh7CtIj17i5x13JdeNxUx1s/nswSc31CZdSdgSjHwm9ZW02S2g+3T3fPjSfn2+HV3
0BlWqf6zss2GuKY076SJxPsGPQ0JCC0JY/OELpCcV8J9DK/d3zO0BjlGjZpmvaFUq4e73fY0
yOtYAC1o5owYjf3eIwGGfReIVnKR0dT6hU7xUpgFVYRPuHac2kod62ZkKw4e3yZ1rcnv+6+H
LVi0h+e34/6JUFowuyLNLkXexZ/JdESSDEDf/QrUJJFmdwhikaq5j0cxNizXsh/MjuyGfzmd
Q5nvr0b7aY8dBX6+36PsdatKN8SHrL0uCo7ONOGHw3B743R2AtZ9lCucto9stKuLj/8aYo5+
rCzGcCkZK2UdQK/i9jMeQ68RjrUE46kQ9TeM5WzRXU9X9ZuwE7Ee2mGWLdEBV3N5uC+iNrBn
TvyBJGLMHfpNWGOvJ9+eDyev+/snmVDk9mF3+8f+6X4iaPF6CF7cEl7LL+9u4ePXf+AXgDaA
ofrhZff4bnRaihO1oWvwllGifaLWCaEDb7+8M47UFJxfdRi7OM0v7R+tyoQ110Rrbn2w4eJV
nrWjl5Y+6f6FedGtR1mJTYsog8WXMYNqiC00LEs+DfXltL10yRDxMgbJ0KwMv2VW4rsuDSuX
Ng/Bq9x0IEOUgUIIq94aRKqvjYKuWMboum3ETRuTSZsoOS8D0BJvxHaZeTgaV01iK+wwFQUf
yr6IoBdUsJkgRitGSl9rjbMxntABOcWYvEG/0ThtWTxIxviJuKiv4nQpIlsavnAw0Ne6QGWw
6PMuq/PMFlbxEMcgLK2i0082xmhnGWVZ1w/2V7bVBz+BVPOF8PJYHEpAgMPw6JoOEbBQQqqb
QGHNht4kEh5lbtOB09bYUcmnYuPkGjjuaBtPCEYOHtfGBTpOqsKeBwW6QfYNAtbWCG+kMHJK
QUEcw6rs0oRT5aD8kfjnJD4qhRP6o1Vs4I+AqxssNjeALBmuPlOmgwKKyyqm9ajKM/bp3Ctk
TUGVdSnsMXM9FagFwUG5chQ4in/3alOuR2fTEUdEIsRqzfIBzU6jGtY07FruKFOGtlWcwXZf
80EgmOdJInTYvMsii0SIp7XXsTwpDDcn/LDD3FTBEF3je81TeQn20dBKODC1pXnNQMAQgNep
UPtzGQnCWJI0Qzd8Oo/M48tEPBQZ56zBV71ToVabyyC+xMvGgaDXdpnLqTWmFaymfpCnW8Zu
qvuhseYiuTTZZl5Zy4+/x61FHtOq4EpdfX4zdMxwH2IGE1C0jCaKOsOs4YZAihaJMRVVluAT
6iBQG2NxW7yMVeXOhOI61ngFxTpgGUEAabi821bUrIMZAk2GwOtlrPqwyPs2dYKoRyRx9lgY
E9zCCjqB6jXeh6bPtKrod7akXSp4+FouyWk2Mhg64t8+S9SKlSh9Oeyfjn/I7HuPu9d7/zwa
/qDZAtJsmYNkz8fjm9+CGJc9Rtqdj6uoFEqvhnNTQSqiCtVc3jQlK+iH0YGeB/gP1IuoaqUZ
pYYcHMboBth/3/39uH9UKtSrQL2V5Qd/0MpiK3p02mDI7rSUiwa6J0I5v5x9PP/8F2NhamA5
eB3ODOVqwEQUdQHIXP4UyvEV6KyE3Z9TAddyvK0M8sWQsoJ1scFCXIjoEwaPW+HvspZF1cSg
kvdlrKJnM0zofEYdAJgfbDhbiXeqgRWY0/3LEyqmXzgx9reaApPd17f7ezxfzZ5ej4c3fDPA
iv8r2BJVweu2ofLYqP6Z/FeVCK62wX+JCWjF6ZxAKPBiC7m7nJoCJ90iokHs9dUysVgg/p4L
MeyjlqnQeDBgVU8VkoAZ3DE2voigx0kbAErZ56LQH/78CwxddMvaNFt0bmGSrXWUgFXel0Dy
YDRHOffqkcYhBhIvYH79L3+CAHwRaH4Qxr830MqdS9jEfeF1wZ77ceWEUStQQgsOti98j9Ih
0wmn1G74Jfq2iRUjVnnukrCaezO0Y6zMSACJvBQsU3xqzwyQl3UgVEt3h65HkGZvig+TW0G0
Um1CycQEuK6ytgpEtE9NDtIGcjoj15Iy0BTfy03VQKyAmjqQ1DnwJb9KDZnZ2jL6pEdxRItX
YPaJwuJlErz2JGtbF34n1oU43QvEaY04TeQuHBTWSzA1zMitkXEolKzpekZwNwWYGThMDd64
wGiZGSzF6lEpDYZyGRPp79NZoOJaK4YbafLP2VAMikYNp6ymrQpqsL4eaEfyTLvD6UAqE/nJ
c1VEOqmeX17fn+BDYW8vUlil26d7M68qw0x/IBwrS7m3ivFaYo+Ox4lgqkWHdn5fk29aW6Fp
M3hj7xE0pJjdomPtypxYGdk0gkQ6/qrvvpyefZyaATbY4bvqhYEoRkC5akK4apQfNeLmElQL
UDCSaumxTDkmUg2dn3cZBQm6w90bKgwmn5vCrQiwS7I4DSvO3SzZNlmDsVjU3egew0iJiUv/
9fVl/4TRE9DPx7fj7j87+J/d8fbDhw9/m8hD3G4S1S2FAi5vAxp00gDBG5eZDH8UAhq2kVWU
MGuhjN4CAY3B4EjQOO07fsU99aeFGcDvPZlCo282EgJ8ttqAvZO6CM2mta4kyFLRQ8d4xLKE
1z5XUoAZfgPGfYGqXs45lZNhqganXBzvKLuntZvH5GBd38jIK7Mj0zBJg2nk+gurBton1Say
rQ3Lupk7/P8PdekxiAt/aP86/F8wUgG0BoV6PkZQgsLEeQICS3q2ZiZ6JcWtH3Mi9ugfUnG5
2x63J6ix3KKv2byqLdchs+dW7S0snpO4NKlLoLhelzl+2omZoZoAiibrGPp58T0T7xqjxWsC
43BbjRuYtLLLnFes5PFr3JM6l9zEcU/s7Lgf3DnQyxqgSvxEPDvtUZuBYH38aH+MF2J/WgEK
cmFbjqLi7NRqQNGVUcQvp/tddm9FzPewFHQKWkJW0Vlm7OlzWM6lsiqbyZ60TXuxvUCzRdc6
6UES78pAF6yg8bVh2M5Doft1SuMk1yVDVrRwZkVWIPdnITIiwOTjoYODgsk+xVQjJujFpcmi
BEasPpS1TEDZHcy1766IbDW2ubpw/4wP5ml3xRoj/xHfOuWCPx1Op8yh7w3cqEoZvO3G9PYp
sYluOXJYXnvaces2pBB9obnweBsqJUiu+huCCvzFniL6qZWmBEtgtcfvYWsvlJlnsmJvZJis
uVosiK6oyQv3QZoa/ofpJmcznylaVPTWenTUlqC7p5VPYBowKvn2YstqI5AkmB1aDN9RZCwY
95wjJlsUCKwE9s7wQFR+yQM3OiUy7B2NRjTqT8eEkaNetibvzSuUFbQScblLTJVGUYFbTmPP
MwFN4vYx4XXZpV5FmKFTv4FljVU2IPeyvN1PyZRxJ1onthO3Njb1iEBOnG6O5eIQApeBxFvG
1Xpcp0VojjVdekdrGtAxkGf1YAMnxvUrGMLiMCifHLRZTYA+R7aWcLzQHtYLp/VD3hZGNAls
HtNa/PARDcM01dYQZZFJI+RlLRNLBAWsrLzqJlh4AelxSzRCaXQQxLCNw0hd3vAuBFpki8or
lb/spCQKtF7g83u4wYsEYwdm/auAJvLKKQcutyIelQ4jcTzF7+X5z93h5dYxRDXJ1PF4uWPD
m4Y03hFJAk1WghtVyg4whcDM+nRu4vOizwWLFAFgZm/xaiFeoorT8HnPtMNg914Bzc+iFW02
yGOoeTzsF24OdG0AZ2hXMzkbroqKcpiiFAd1BnQPYypwuKzJr90MAg5AfmyJUgcBli927ipa
uHWX9IFHmBAsgi94iXcElGZEqrI+QZjHaN3u9YjmHTo04ud/7w7be+utxlUf8rRpm2cQpEKn
cXHVEQfVUnnCyWDc3bECRu7521qQr8DfFcewvMaIT9kWIP+EhiY9GU6gab5KOsPrLp1EyPTa
ys7uIyBFVuJJGL1Ykt3TzzMp1mOmGbLUBm03C1IPs+MmwkCCGbg4wq/yCjPlB2wtKybBM9dA
20JlK/CtdIB8OidDc8T4U34VpGY5QfJEWB7e05tC47VxTTN8GdIHGF1F5QIS4DHEzCwcj7XN
wr7PrGfEROFVWNwIuHYXh5pvMJans0+V5ATJGB+7tiyhg1ElOa5oV4keUVXPTOO6EO6vMIKI
+sUAgNBIonrh9VcEBqaVOJNZ00w+KxPsHK3UmXUtsqbYsIZ7pNQLdSf0mbrqLEIh3e4hxwWj
ZJYKRUhggOfpSuYRxBVecWObll+8CIY8zHFlx3FWZG2LGyap4r5w1SjHxxZlkvXSGYmciIr/
AWSfMFadJwIA

--+HP7ph2BbKc20aGI--
