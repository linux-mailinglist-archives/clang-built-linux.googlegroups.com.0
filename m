Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB56EYX7QKGQEBM44DEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBEE2E8B22
	for <lists+clang-built-linux@lfdr.de>; Sun,  3 Jan 2021 07:21:44 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id c17sf22019698qvv.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 Jan 2021 22:21:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609654904; cv=pass;
        d=google.com; s=arc-20160816;
        b=s9QXk21ZBq+xMFA2ClQBZ8LU/ptYZmJvi58IVL+8pbDDUnEnVynxleWjFVsDr4GuWg
         +rSyM1uZGriwG/fVyfwmhqHIeibrJY3APFaq1hnZdBUVX3vOjdYza8bpWUuzstZ9gOPs
         suuxoa/hkapiqgpIpzmZXjj8PmdWxt13qszJPZfovnrLoD5JZu1zGv1U4t0hSsywl3ZP
         1zfmchL38ptcn4qnA8zF2Vk+zItU9wKVVuU4c8JdYDn7bDS4Crt1mq0kn5IjHT6jTvax
         Jg/bOcd0a3hmBV8jFiMuw4Xq2NfZZNYSHlulVA5zAZYfX6Pt+8Zv9nJSS22WzJFtVIBz
         IavQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=eRcVMNaEyK8m7YNmzqGXzT5hTIBzuxswPoeeNSKedCM=;
        b=kbdKE3ezY5Q1LeNVvuCShADvALrB12wWlyOfxnRTbK7gScpBdn+s4JxB60kyicYNOw
         g4gZQiW/sppXmdQkSjcwSP9bBBuGvUCyNfprJq6WN2iDtA/cg1DqO/zTNYH7UjMt9R0G
         rwdfMX8OO+HdwDMuif8gFaBY6hjd2Lzyi8vL5B7unjV+iCffdePCPIx0lJRNBgtuNglL
         wbnbN6MYFoEcuFqlho/5xd9ZbThO+emkh3Z1D+5B5gFAVEKea55aO4SGqvfXKEUWnANR
         63a+iQxSaFL0yRzQEERvsbvOXttTzp7rA9DhxzprVQtGgp9bxm8noVIA4GbsGBf/opWX
         8I7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eRcVMNaEyK8m7YNmzqGXzT5hTIBzuxswPoeeNSKedCM=;
        b=ptfXEV/6gJBzpFc42dJOsjOQrc/yexLgTDGbx56dNIYjOVH+bBi4Q5v50Eb3iR/A0L
         YC7qcaJewunn10VT/K6ILtJyNqyztUELhWhTnuS3uOZF4KWG2BVlOvKpctiBH6U5JhCz
         sLWu69zqHf1oa+uL9vAsKZjnpFxSBMNSKkzw+/aOk3UvaFeKT2Sb/kTTpEpvHhEk+J5U
         wMi8uprlvvb0eV6fEth8MkQKkJHgcfzvnqprcGJMg0JarrnpGsvvyAbuSR5JY0A7QFrN
         1x1xusuC5tbfG+N2HQMDa+hW8HO4oHK+XQMzGAPzLGFsMPyR3ZV6GpwgW93PFTzXF2AE
         4Uxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eRcVMNaEyK8m7YNmzqGXzT5hTIBzuxswPoeeNSKedCM=;
        b=rEWraQZ8andYD3I4lLowPAVRhpmN9EoZwF13wOVedoWNZxnYXNckqSZR2QfOQirToi
         pvNDxMLpsKyovzQvAdY9vwaoBVeotVutM4bm8mfXxYD+q+5qI6foeUaVU+LkKzNKgPCv
         Gk0yn57jdi3QoTxZtHK7GE2xDr3lz3FUJ0eC9OSPseiD67KX8eaVvz1Y8XZIud/i8g8O
         dXOQudj5Ti96fUDFPB39ydhTok5Wo9HH/xwYS/3Cy/f4+ytBxLcQxB/9iOR8qTcVaulk
         pG6FUPbkEGn0ghmOMTsNuw0cHMtfkyVZcwaMCjCq22KmXr3LVdo5gqXsQrFBw4qwZSve
         WD1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303coEFsCQ8L0Ou4b35GyJ5TnpGFXkm7enfnJh6elEEBIY3yDcw
	JwtHE49rMwDsTfruUD8Qq/I=
X-Google-Smtp-Source: ABdhPJzroFkDuoSr9jM9WhbF0AdcGlNezfbL7KN58zyewzaiV44x+lYp9QzrCHdYI7FK9j9l4Jy04A==
X-Received: by 2002:a0c:8304:: with SMTP id j4mr37828331qva.18.1609654903706;
        Sat, 02 Jan 2021 22:21:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3683:: with SMTP id a3ls8734462qtc.8.gmail; Sat, 02 Jan
 2021 22:21:43 -0800 (PST)
X-Received: by 2002:ac8:6f4f:: with SMTP id n15mr67078806qtv.216.1609654903219;
        Sat, 02 Jan 2021 22:21:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609654903; cv=none;
        d=google.com; s=arc-20160816;
        b=Gupgx/ZaZuEHSWjCnJwfTTTS2TeXgfDMEhMaG/QDo+3gvYqcEGt8v7F4lKmdkz7H0T
         Ch85VEL4GydQoJ9cSZfnqMCfs8hmcBHlr7ePJ82u2tSbldhsaNSKNnwH7S1Ah2urLkAO
         FdlqsnJuOkZz3SPrEwarpg7pmMzSQT6lf/fDFqRt6Yoc4+eZ7IfRZJpi8e5H7TJgnSky
         wHBcCKJ5xWsXA8Y/sB3cexFo912ruOkYMr3nY2cl3PBu4skl9ugQ2ZU0NfoC1/eDIqOn
         ZWHlCa31pVcIu07ohEn8OgS7et/MTYj1O4KED6LH5xmFdnkrO8y1EKvevgHis2xQ5fC+
         8WBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=EVXa6DcmAjbNpwuN0avPRW7hZeRKLjLE/p1P4jNJwXk=;
        b=TT+4Ecr8wqe5h7obZ8kI1Z1PTIoF8vi8moL3SMeEmBFAE7V0DvXFRo+ESWMhA5DI2S
         S3x1CpQWtxWJb26Dde0PRnFXxJBvbqL1FZHl+2soGYlnEJQaOEIGPVI/WVJOokTlRlIS
         033ihtphAZFkLuZJSRJcFgBtXVs84YhfscuFyYhBjJAp/HPX7bX11d35YaPvyxtSP8Uo
         XPS51quRDoJxPnOHA8ThApvS/nxPs8/ua7svLl06yFW9s8UApOi1NVuXZKZfn5B1b+A9
         Yebxlj/ohXvVn4VK8Am8OEZpTWH7IZlMhzXsKY+aqvqn8T3PD/7hC5kVxtGcWJtx6pFA
         LiKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id l32si4411812qta.3.2021.01.02.22.21.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Jan 2021 22:21:43 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: wC+qQv/54JI7yjfJ5Jo8arY5JPDNqozB9Wf/35RyfHVjInvzxSug5XfxTZSw2vPoC5zH4qsTEW
 4TwUVKOKloGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9852"; a="238403268"
X-IronPort-AV: E=Sophos;i="5.78,471,1599548400"; 
   d="gz'50?scan'50,208,50";a="238403268"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jan 2021 22:21:41 -0800
IronPort-SDR: p/UIgRmI8/9g5DJ5sfD74AhHMe6q/UmGPF70uvn1IrWaLc3D8kDlNCUNG9qiz0KpfZhQ4WszoH
 3msLrOIh35cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,471,1599548400"; 
   d="gz'50?scan'50,208,50";a="420945762"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 02 Jan 2021 22:21:38 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kvwlm-0006wu-7p; Sun, 03 Jan 2021 06:21:38 +0000
Date: Sun, 3 Jan 2021 14:21:34 +0800
From: kernel test robot <lkp@intel.com>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
Subject: drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c:1349:1: warning:
 stack frame size of 1040 bytes in function 'gf100_gr_trap_intr'
Message-ID: <202101031429.3B2zrC4N-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   3516bd729358a2a9b090c1905bd2a3fa926e24c6
commit: 894fa235eb4ca0bfa692dbe4932c2f940cdc8c1e powerpc: inline iomap accessors
date:   4 weeks ago
config: powerpc64-randconfig-r031-20210103 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 7af6a134508cd1c7f75c6e3441ce436f220f30a4)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=894fa235eb4ca0bfa692dbe4932c2f940cdc8c1e
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 894fa235eb4ca0bfa692dbe4932c2f940cdc8c1e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c:1349:1: warning: stack frame size of 1040 bytes in function 'gf100_gr_trap_intr' [-Wframe-larger-than=]
   gf100_gr_trap_intr(struct gf100_gr *gr)
   ^
   1 warning generated.


vim +/gf100_gr_trap_intr +1349 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c

f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1347  
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1348  static void
bfee3f3d97db88b drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20 @1349  gf100_gr_trap_intr(struct gf100_gr *gr)
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1350  {
109c2f2f1c42c16 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1351  	struct nvkm_subdev *subdev = &gr->base.engine.subdev;
109c2f2f1c42c16 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1352  	struct nvkm_device *device = subdev->device;
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1353  	char error[128];
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1354  	u32 trap = nvkm_rd32(device, 0x400108);
109c2f2f1c42c16 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1355  	int rop, gpc;
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1356  
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1357  	if (trap & 0x00000001) {
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1358  		u32 stat = nvkm_rd32(device, 0x404000);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1359  
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1360  		nvkm_snprintbf(error, sizeof(error), gf100_dispatch_error,
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1361  			       stat & 0x3fffffff);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1362  		nvkm_error(subdev, "DISPATCH %08x [%s]\n", stat, error);
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1363  		nvkm_wr32(device, 0x404000, 0xc0000000);
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1364  		nvkm_wr32(device, 0x400108, 0x00000001);
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1365  		trap &= ~0x00000001;
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1366  	}
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1367  
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1368  	if (trap & 0x00000002) {
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1369  		u32 stat = nvkm_rd32(device, 0x404600);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1370  
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1371  		nvkm_snprintbf(error, sizeof(error), gf100_m2mf_error,
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1372  			       stat & 0x3fffffff);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1373  		nvkm_error(subdev, "M2MF %08x [%s]\n", stat, error);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1374  
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1375  		nvkm_wr32(device, 0x404600, 0xc0000000);
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1376  		nvkm_wr32(device, 0x400108, 0x00000002);
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1377  		trap &= ~0x00000002;
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1378  	}
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1379  
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1380  	if (trap & 0x00000008) {
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1381  		u32 stat = nvkm_rd32(device, 0x408030);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1382  
1894054dc1b6e43 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2016-12-22  1383  		nvkm_snprintbf(error, sizeof(error), gf100_ccache_error,
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1384  			       stat & 0x3fffffff);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1385  		nvkm_error(subdev, "CCACHE %08x [%s]\n", stat, error);
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1386  		nvkm_wr32(device, 0x408030, 0xc0000000);
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1387  		nvkm_wr32(device, 0x400108, 0x00000008);
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1388  		trap &= ~0x00000008;
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1389  	}
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1390  
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1391  	if (trap & 0x00000010) {
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1392  		u32 stat = nvkm_rd32(device, 0x405840);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1393  		nvkm_error(subdev, "SHADER %08x, sph: 0x%06x, stage: 0x%02x\n",
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1394  			   stat, stat & 0xffffff, (stat >> 24) & 0x3f);
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1395  		nvkm_wr32(device, 0x405840, 0xc0000000);
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1396  		nvkm_wr32(device, 0x400108, 0x00000010);
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1397  		trap &= ~0x00000010;
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1398  	}
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1399  
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1400  	if (trap & 0x00000040) {
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1401  		u32 stat = nvkm_rd32(device, 0x40601c);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1402  
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1403  		nvkm_snprintbf(error, sizeof(error), gf100_unk6_error,
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1404  			       stat & 0x3fffffff);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1405  		nvkm_error(subdev, "UNK6 %08x [%s]\n", stat, error);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1406  
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1407  		nvkm_wr32(device, 0x40601c, 0xc0000000);
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1408  		nvkm_wr32(device, 0x400108, 0x00000040);
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1409  		trap &= ~0x00000040;
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1410  	}
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1411  
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1412  	if (trap & 0x00000080) {
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1413  		u32 stat = nvkm_rd32(device, 0x404490);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1414  		u32 pc = nvkm_rd32(device, 0x404494);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1415  		u32 op = nvkm_rd32(device, 0x40449c);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1416  
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1417  		nvkm_snprintbf(error, sizeof(error), gf100_macro_error,
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1418  			       stat & 0x1fffffff);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1419  		nvkm_error(subdev, "MACRO %08x [%s], pc: 0x%03x%s, op: 0x%08x\n",
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1420  			   stat, error, pc & 0x7ff,
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1421  			   (pc & 0x10000000) ? "" : " (invalid)",
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1422  			   op);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1423  
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1424  		nvkm_wr32(device, 0x404490, 0xc0000000);
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1425  		nvkm_wr32(device, 0x400108, 0x00000080);
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1426  		trap &= ~0x00000080;
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1427  	}
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1428  
30f4e0870d1726f drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2013-06-09  1429  	if (trap & 0x00000100) {
109c2f2f1c42c16 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1430  		u32 stat = nvkm_rd32(device, 0x407020) & 0x3fffffff;
30f4e0870d1726f drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2013-06-09  1431  
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1432  		nvkm_snprintbf(error, sizeof(error), gk104_sked_error, stat);
caf2be8a345f9ed drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ilia Mirkin 2016-01-02  1433  		nvkm_error(subdev, "SKED: %08x [%s]\n", stat, error);
30f4e0870d1726f drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2013-06-09  1434  
109c2f2f1c42c16 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1435  		if (stat)
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1436  			nvkm_wr32(device, 0x407020, 0x40000000);
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1437  		nvkm_wr32(device, 0x400108, 0x00000100);
30f4e0870d1726f drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2013-06-09  1438  		trap &= ~0x00000100;
30f4e0870d1726f drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2013-06-09  1439  	}
30f4e0870d1726f drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2013-06-09  1440  
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1441  	if (trap & 0x01000000) {
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1442  		u32 stat = nvkm_rd32(device, 0x400118);
bfee3f3d97db88b drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1443  		for (gpc = 0; stat && gpc < gr->gpc_nr; gpc++) {
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1444  			u32 mask = 0x00000001 << gpc;
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1445  			if (stat & mask) {
bfee3f3d97db88b drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1446  				gf100_gr_trap_gpc(gr, gpc);
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1447  				nvkm_wr32(device, 0x400118, mask);
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1448  				stat &= ~mask;
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1449  			}
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1450  		}
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1451  		nvkm_wr32(device, 0x400108, 0x01000000);
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1452  		trap &= ~0x01000000;
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1453  	}
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1454  
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1455  	if (trap & 0x02000000) {
bfee3f3d97db88b drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1456  		for (rop = 0; rop < gr->rop_nr; rop++) {
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1457  			u32 statz = nvkm_rd32(device, ROP_UNIT(rop, 0x070));
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1458  			u32 statc = nvkm_rd32(device, ROP_UNIT(rop, 0x144));
109c2f2f1c42c16 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1459  			nvkm_error(subdev, "ROP%d %08x %08x\n",
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1460  				 rop, statz, statc);
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1461  			nvkm_wr32(device, ROP_UNIT(rop, 0x070), 0xc0000000);
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1462  			nvkm_wr32(device, ROP_UNIT(rop, 0x144), 0xc0000000);
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1463  		}
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1464  		nvkm_wr32(device, 0x400108, 0x02000000);
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1465  		trap &= ~0x02000000;
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1466  	}
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1467  
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1468  	if (trap) {
109c2f2f1c42c16 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1469  		nvkm_error(subdev, "TRAP UNHANDLED %08x\n", trap);
276836d46e535c8 drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c   Ben Skeggs  2015-08-20  1470  		nvkm_wr32(device, 0x400108, trap);
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1471  	}
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1472  }
f73221e4aa766a5 drivers/gpu/drm/nouveau/core/engine/graph/nvc0.c Ben Skeggs  2012-09-06  1473  

:::::: The code at line 1349 was first introduced by commit
:::::: bfee3f3d97db88bfb732735eb4955ad3381ac758 drm/nouveau/gr: cosmetic changes

:::::: TO: Ben Skeggs <bskeggs@redhat.com>
:::::: CC: Ben Skeggs <bskeggs@redhat.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101031429.3B2zrC4N-lkp%40intel.com.

--ZPt4rx8FFjLCG7dd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
vo49ewEA

--ZPt4rx8FFjLCG7dd--
