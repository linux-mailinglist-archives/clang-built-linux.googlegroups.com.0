Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB4WF5X3QKGQE4HDURJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A11D120F910
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 18:06:11 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id l13sf13445250ioj.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 09:06:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593533170; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q57KtlmBsBXo4dDzr4HHpy46X9OxYsQ8yAub2C2cwuKF6OK08VqMz6XsfA1LXJiNhK
         zTkGYAD5FFbePYvYfFsPd9+rdyOmWKJAKxcof+kRwbaqWXc7P6RQwaIpXv/RSa3UA03l
         KV+YhIaMCzoFn5WHRmo9blGDUX10GQNBWLj/PFLtK6EcLEjTo7rrisHYmJBNI/euliiy
         oDnpB8UykYjbWtITnx2ZKBk+7bj9YnV9YRvOzrLkcHCSQSdUQsFIRTXz6femdQenjmmi
         v6Wd8y7O6clCJBF0kFs3wqN/M4yTT3uaIrjI26TbYlq8VOc63eB5uGVmXBqkIjH1UZWk
         HGww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=yYZ3ToSCokdAbTdFm64bHPRbDgSc6U1OlbEHlbRSmZY=;
        b=vwXSmgGb48L5fjQjgFGMT0A2LatuR3UT78oew5gtvR8ZXwl7TRVsNZeau3tWVy5jcY
         FbQeciY+hbia9Nn2LalTcSBk4Dhv73ECiv/olUvLGs4H7kaG18ffabuMqS4XcW+g7X0g
         W2ySulWPmmTE/fQ2Rrs8ZAOa3bIOmhojGVjD7vR6CidETwCYoKkkGvOpTk8+dlbhRJEM
         SJ/8EKA0AF87FPnKQc4Ar58dMozpadEQvqTl9IUxdKDZRXlyduBWRwzf03OOYDubn+ES
         qkyBsgJuWObvTEXmolx72h9aTmyXsrRrDaWtTL4cXhJWr9cM5qGjD2sfV+mGP/76CcS1
         +PQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yYZ3ToSCokdAbTdFm64bHPRbDgSc6U1OlbEHlbRSmZY=;
        b=WX2tHPvpC+uZXuIINwTEn77uJvWkCamq0c62giQ7B+zaRcyoqg3+AhG+O1zwPalWiX
         jG1xbwTqWHhUUpMisJS0i3WZ4EVqMJAXGE0muk1bBOIEaPjrfjDNg1Yr/c2HvZ/IlAyx
         y0HMGAQLAN8Yy7bI8PEkXAWy3HAjgig8EH5Xwsbtp7/4Do0zO2h2UpEbdZ1+WcKpl7Li
         PwHdVvA+iDwHit3vhyWRBS9IoLUkaS0JNTAeQbpQ2jAf6Wkopm/uBaNug81MaU8TZ8iR
         WMZj/ziuJdxgrSj3ayUJCfYBQo8q9R9ebXjN2jOn6Nd2C3ycBnjcjpd4sLexw6IbWsjb
         jQVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yYZ3ToSCokdAbTdFm64bHPRbDgSc6U1OlbEHlbRSmZY=;
        b=FrWJ3rvVbQxfxz8PsG9+Ea2GfrXXytHEgKDYrXpyxed9IdeXbNjA+Y+y96L2XHxuvF
         kwWeHGE5guo+gUvBDJEpNPyo6LanbkmS4krb1w3jJDVrDR/xeVzTMA0L+paUhiwPs6C1
         SUzqLRu+/C8YLgQosvM3ZjMiS1qzx2mvxz8UudKihRt5ddef/pOI7/hUohZp3KXcsUI3
         KsGGDRbrSPfuei2OW8wW8hSPLSNocTWmAJt3FZBCSSu6BYFiGxQTtymT9V9cVyHhFBsY
         GOHzUdxFEj7EJ5xLKXSNQi5SjEHs1H10Zu0zSjm3coKb58CYTNXRWkcwYguv3Dzqpp1x
         S5zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531n/zYLQPdrk5nush0PZAsVSAf4UuZkQSrOvfAjb0FkAjBv0OXp
	BipT65aXaXRGLIw89+/U8tc=
X-Google-Smtp-Source: ABdhPJx249e+/0OYjjI22B218bj3aHv8gfCf1fxKx+GquCHbjN61Qp04Vve9pdZzfq5hN475SvCOHw==
X-Received: by 2002:a02:3f1f:: with SMTP id d31mr23631429jaa.76.1593533170474;
        Tue, 30 Jun 2020 09:06:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:14d5:: with SMTP id l21ls534941jak.7.gmail; Tue, 30
 Jun 2020 09:06:10 -0700 (PDT)
X-Received: by 2002:a05:6638:118:: with SMTP id x24mr24523313jao.48.1593533169923;
        Tue, 30 Jun 2020 09:06:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593533169; cv=none;
        d=google.com; s=arc-20160816;
        b=v1671gPFPtBk8/NDq9aeSmJ/xA2FJc1sVUt5hkyUgBgMpjgLtwY7qbniwN0mKnwwGS
         FgTvnzfhDMmWSoxbp+RU1qhjO5aw86sMx/GZsawO9Bsq5mv+qL6Wi+XuvKGVTehPPRR1
         qcQTD9UC5F4nznBG53NYOrNV0EbLg8rQXzBUmkLm2cL58AxucRHWB3tjXsaTb+x5+1+k
         0z+omeumQ6iR5Reeqy6dG9/k4Jy4n9pYPaQe34pl1iqCkP92yTNjdifByVAhIRaEBUSZ
         Oeuxx4OHMPMbYFd5AUE78q85Gntjohbj2DKsQtaBPqu8mid95bQNPGsNBi2gQLMUlown
         wUaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=srKyaiKH5kaWSsskumWBprWYkz+6L7tNkj2EQK/f/Kk=;
        b=PSCBfKPYsckG7ac5K/Hy4Za60km9duye88MykcqYy4XJ/GOFPVp7Mz2bQLJty8eXYV
         yDMcjvPFVA/bZrsRCJ6Kz93VPzF2HO6YMNVLdtpJSNV6mNogKE66jpsxdzU9vWi3iDPv
         6IJXvW6F5n7g/xSZFzYSug/aLsU0tynMExyfnbqpb+klNvEMsHBFn/9NT6vlKyBSEmqC
         zMx0yLLaRp5tQs2yOO02PPJXPHJKjHCO7DT3+u5EvkiivpwVBPIG5OpQ4xAGQzSAZR57
         RGnJQGVhroTNAkdlmwHECt1QI9lKyjKmxFCZC3AzHc/WixSUjD3Atnxi2AeQ5TY6xOnp
         6WHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id p1si293317ioh.3.2020.06.30.09.06.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 09:06:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: KHfGhmnhUVn53wXMWIL/h1b0JBEDB7CHN+UQZV8VU155QSKTQMxgI3mBgTgqF6mVDk5u7zKT00
 BCa1Pw7Qfm4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="125919084"
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; 
   d="gz'50?scan'50,208,50";a="125919084"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2020 09:06:08 -0700
IronPort-SDR: Dls2aVZZBVKSViZ7dtg9z/fCWH3ILvg21oLyiOEh+az8UETKgOK1Algn746KRTZGaLPQuRLSbs
 Qip1ECzUAdfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; 
   d="gz'50?scan'50,208,50";a="303509368"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 30 Jun 2020 09:06:06 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jqIlq-0001do-9x; Tue, 30 Jun 2020 16:06:06 +0000
Date: Wed, 1 Jul 2020 00:05:25 +0800
From: kernel test robot <lkp@intel.com>
To: Lubomir Rintel <lkundrak@v3.sk>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [lkundrak-linux-mmp:lr/ariel 34/44]
 drivers/gpu/drm/armada/armada_drv.c:133:11: error: implicit declaration of
 function 'of_drm_find_bridge'
Message-ID: <202007010022.pTdUpqeq%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline
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


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp.git lr/ariel
head:   ade82775e105e0f50096d34445ca772d46d53426
commit: f733f6ac37477724f65e9557f4b6f58b8994ec9a [34/44] drm/armada: Use non-componentized bridges
config: arm-randconfig-r016-20200630 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project cf1d04484344be52ada8178e41d18fd15a9b880c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        git checkout f733f6ac37477724f65e9557f4b6f58b8994ec9a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   drivers/gpu/drm/pl111/pl111_display.c:357:6: warning: no previous prototype for function 'pl111_display_disable' [-Wmissing-prototypes]
   void pl111_display_disable(struct drm_simple_display_pipe *pipe)
        ^
   drivers/gpu/drm/pl111/pl111_display.c:357:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void pl111_display_disable(struct drm_simple_display_pipe *pipe)
   ^
   static 
   drivers/gpu/drm/armada/armada_overlay.c:329:1: warning: no previous prototype for function 'armada_overlay_duplicate_state' [-Wmissing-prototypes]
   armada_overlay_duplicate_state(struct drm_plane *plane)
   ^
   drivers/gpu/drm/armada/armada_overlay.c:328:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct drm_plane_state *
   ^
   static 
>> drivers/gpu/drm/armada/armada_drv.c:133:11: error: implicit declaration of function 'of_drm_find_bridge' [-Werror,-Wimplicit-function-declaration]
           bridge = of_drm_find_bridge(np);
                    ^
>> drivers/gpu/drm/armada/armada_drv.c:133:9: warning: incompatible integer to pointer conversion assigning to 'struct drm_bridge *' from 'int' [-Wint-conversion]
           bridge = of_drm_find_bridge(np);
                  ^ ~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/armada/armada_drv.c:134:36: warning: format specifies type 'unsigned int' but the argument has type 'struct drm_bridge *' [-Wformat]
   printk ("XXX   XX %08x %pOFfcF\n", bridge, np);
                     ~~~~             ^~~~~~
>> drivers/gpu/drm/armada/armada_drv.c:144:8: error: implicit declaration of function 'drm_bridge_attach' [-Werror,-Wimplicit-function-declaration]
           ret = drm_bridge_attach(encoder, bridge, NULL, 0);
                 ^
   drivers/gpu/drm/armada/armada_drv.c:357:8: error: implicit declaration of function 'of_drm_find_bridge' [-Werror,-Wimplicit-function-declaration]
                       !of_drm_find_bridge(remote)) {
                        ^
   2 warnings and 3 errors generated.
   make[5]: *** [scripts/Makefile.build:281: drivers/gpu/drm/armada/armada_drv.o] Error 1
   1 warning generated.
   1 warning generated.
   drivers/gpu/drm/drm_dp_helper.c:1599: warning: Function parameter or member 'dp_rev' not described in 'drm_dp_set_phy_test_pattern'
   make[4]: *** [scripts/Makefile.build:497: drivers/gpu/drm/armada] Error 2
   make[5]: Target '__build' not remade because of errors.
   drivers/gpu/drm/pl111/pl111_debugfs.c:34:5: warning: no previous prototype for function 'pl111_debugfs_regs' [-Wmissing-prototypes]
   int pl111_debugfs_regs(struct seq_file *m, void *unused)
       ^
   drivers/gpu/drm/pl111/pl111_debugfs.c:34:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int pl111_debugfs_regs(struct seq_file *m, void *unused)
   ^
   static 
   drivers/gpu/drm/drm_mm.c:155:1: warning: unused function 'drm_mm_interval_tree_insert' [-Wunused-function]
   INTERVAL_TREE_DEFINE(struct drm_mm_node, rb,
   ^
   include/linux/interval_tree_generic.h:38:15: note: expanded from macro 'INTERVAL_TREE_DEFINE'
   ITSTATIC void ITPREFIX ## _insert(ITSTRUCT *node,                             \
                 ^
   <scratch space>:26:1: note: expanded from here
   drm_mm_interval_tree_insert
   ^
   drivers/gpu/drm/drm_mm.c:155:1: warning: unused function 'drm_mm_interval_tree_iter_next' [-Wunused-function]
   include/linux/interval_tree_generic.h:151:33: note: expanded from macro 'INTERVAL_TREE_DEFINE'
   ITSTATIC ITSTRUCT *                                                           \
                                                                                 ^
   <scratch space>:48:1: note: expanded from here
   drm_mm_interval_tree_iter_next
   ^
   drivers/gpu/drm/drm_mm.c:308:19: warning: unused function 'rb_hole_size' [-Wunused-function]
   static inline u64 rb_hole_size(struct rb_node *rb)
                     ^
   drivers/gpu/drm/drm_mm.c:659:20: warning: function 'drm_mm_node_scanned_block' is not needed and will not be emitted [-Wunneeded-internal-declaration]
   static inline bool drm_mm_node_scanned_block(const struct drm_mm_node *node)
                      ^
   1 warning generated.
   4 warnings generated.
   drivers/gpu/drm/drm_managed.c:61:6: warning: no previous prototype for function 'drm_managed_release' [-Wmissing-prototypes]
   void drm_managed_release(struct drm_device *dev)
        ^
   drivers/gpu/drm/drm_managed.c:61:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void drm_managed_release(struct drm_device *dev)
   ^
   static 
   1 warning generated.
   make[4]: Target '__build' not remade because of errors.
   make[3]: *** [scripts/Makefile.build:497: drivers/gpu/drm] Error 2
   make[3]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1756: drivers] Error 2
   make[1]: Target 'drivers/gpu/' not remade because of errors.
   make[2]: *** [scripts/Makefile.build:497: drivers/gpu] Error 2
   make[2]: Target '__build' not remade because of errors.
--
   drivers/gpu/drm/pl111/pl111_display.c:357:6: warning: no previous prototype for function 'pl111_display_disable' [-Wmissing-prototypes]
   void pl111_display_disable(struct drm_simple_display_pipe *pipe)
        ^
   drivers/gpu/drm/pl111/pl111_display.c:357:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void pl111_display_disable(struct drm_simple_display_pipe *pipe)
   ^
   static 
   drivers/gpu/drm/armada/armada_overlay.c:329:1: warning: no previous prototype for function 'armada_overlay_duplicate_state' [-Wmissing-prototypes]
   armada_overlay_duplicate_state(struct drm_plane *plane)
   ^
   drivers/gpu/drm/armada/armada_overlay.c:328:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct drm_plane_state *
   ^
   static 
>> drivers/gpu/drm/armada/armada_drv.c:133:11: error: implicit declaration of function 'of_drm_find_bridge' [-Werror,-Wimplicit-function-declaration]
           bridge = of_drm_find_bridge(np);
                    ^
>> drivers/gpu/drm/armada/armada_drv.c:133:9: warning: incompatible integer to pointer conversion assigning to 'struct drm_bridge *' from 'int' [-Wint-conversion]
           bridge = of_drm_find_bridge(np);
                  ^ ~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/armada/armada_drv.c:134:36: warning: format specifies type 'unsigned int' but the argument has type 'struct drm_bridge *' [-Wformat]
   printk ("XXX   XX %08x %pOFfcF\n", bridge, np);
                     ~~~~             ^~~~~~
>> drivers/gpu/drm/armada/armada_drv.c:144:8: error: implicit declaration of function 'drm_bridge_attach' [-Werror,-Wimplicit-function-declaration]
           ret = drm_bridge_attach(encoder, bridge, NULL, 0);
                 ^
   drivers/gpu/drm/armada/armada_drv.c:357:8: error: implicit declaration of function 'of_drm_find_bridge' [-Werror,-Wimplicit-function-declaration]
                       !of_drm_find_bridge(remote)) {
                        ^
   2 warnings and 3 errors generated.
   make[5]: *** [scripts/Makefile.build:281: drivers/gpu/drm/armada/armada_drv.o] Error 1
   1 warning generated.
   1 warning generated.
   drivers/gpu/drm/drm_dp_helper.c:1599: warning: Function parameter or member 'dp_rev' not described in 'drm_dp_set_phy_test_pattern'
   make[4]: *** [scripts/Makefile.build:497: drivers/gpu/drm/armada] Error 2
   make[5]: Target '__build' not remade because of errors.
   drivers/gpu/drm/pl111/pl111_debugfs.c:34:5: warning: no previous prototype for function 'pl111_debugfs_regs' [-Wmissing-prototypes]
   int pl111_debugfs_regs(struct seq_file *m, void *unused)
       ^
   drivers/gpu/drm/pl111/pl111_debugfs.c:34:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int pl111_debugfs_regs(struct seq_file *m, void *unused)
   ^
   static 
   drivers/gpu/drm/drm_mm.c:155:1: warning: unused function 'drm_mm_interval_tree_insert' [-Wunused-function]
   INTERVAL_TREE_DEFINE(struct drm_mm_node, rb,
   ^
   include/linux/interval_tree_generic.h:38:15: note: expanded from macro 'INTERVAL_TREE_DEFINE'
   ITSTATIC void ITPREFIX ## _insert(ITSTRUCT *node,                             \
                 ^
   <scratch space>:26:1: note: expanded from here
   drm_mm_interval_tree_insert
   ^
   drivers/gpu/drm/drm_mm.c:155:1: warning: unused function 'drm_mm_interval_tree_iter_next' [-Wunused-function]
   include/linux/interval_tree_generic.h:151:33: note: expanded from macro 'INTERVAL_TREE_DEFINE'
   ITSTATIC ITSTRUCT *                                                           \
                                                                                 ^
   <scratch space>:48:1: note: expanded from here
   drm_mm_interval_tree_iter_next
   ^
   drivers/gpu/drm/drm_mm.c:308:19: warning: unused function 'rb_hole_size' [-Wunused-function]
   static inline u64 rb_hole_size(struct rb_node *rb)
                     ^
   drivers/gpu/drm/drm_mm.c:659:20: warning: function 'drm_mm_node_scanned_block' is not needed and will not be emitted [-Wunneeded-internal-declaration]
   static inline bool drm_mm_node_scanned_block(const struct drm_mm_node *node)
                      ^
   1 warning generated.
   4 warnings generated.
   drivers/gpu/drm/drm_managed.c:61:6: warning: no previous prototype for function 'drm_managed_release' [-Wmissing-prototypes]
   void drm_managed_release(struct drm_device *dev)
        ^
   drivers/gpu/drm/drm_managed.c:61:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void drm_managed_release(struct drm_device *dev)
   ^
   static 
   1 warning generated.
   make[4]: Target '__build' not remade because of errors.
   make[3]: *** [scripts/Makefile.build:497: drivers/gpu/drm] Error 2
   make[3]: Target '__build' not remade because of errors.
   make[2]: *** [scripts/Makefile.build:497: drivers/gpu] Error 2
   make[2]: Target '__build' not remade because of errors.
--
   drivers/gpu/drm/pl111/pl111_display.c:357:6: warning: no previous prototype for function 'pl111_display_disable' [-Wmissing-prototypes]
   void pl111_display_disable(struct drm_simple_display_pipe *pipe)
        ^
   drivers/gpu/drm/pl111/pl111_display.c:357:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void pl111_display_disable(struct drm_simple_display_pipe *pipe)
   ^
   static 
   drivers/gpu/drm/armada/armada_overlay.c:329:1: warning: no previous prototype for function 'armada_overlay_duplicate_state' [-Wmissing-prototypes]
   armada_overlay_duplicate_state(struct drm_plane *plane)
   ^
   drivers/gpu/drm/armada/armada_overlay.c:328:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct drm_plane_state *
   ^
   static 
>> drivers/gpu/drm/armada/armada_drv.c:133:11: error: implicit declaration of function 'of_drm_find_bridge' [-Werror,-Wimplicit-function-declaration]
           bridge = of_drm_find_bridge(np);
                    ^
>> drivers/gpu/drm/armada/armada_drv.c:133:9: warning: incompatible integer to pointer conversion assigning to 'struct drm_bridge *' from 'int' [-Wint-conversion]
           bridge = of_drm_find_bridge(np);
                  ^ ~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/armada/armada_drv.c:134:36: warning: format specifies type 'unsigned int' but the argument has type 'struct drm_bridge *' [-Wformat]
   printk ("XXX   XX %08x %pOFfcF\n", bridge, np);
                     ~~~~             ^~~~~~
>> drivers/gpu/drm/armada/armada_drv.c:144:8: error: implicit declaration of function 'drm_bridge_attach' [-Werror,-Wimplicit-function-declaration]
           ret = drm_bridge_attach(encoder, bridge, NULL, 0);
                 ^
   drivers/gpu/drm/armada/armada_drv.c:357:8: error: implicit declaration of function 'of_drm_find_bridge' [-Werror,-Wimplicit-function-declaration]
                       !of_drm_find_bridge(remote)) {
                        ^
   2 warnings and 3 errors generated.
   make[5]: *** [scripts/Makefile.build:281: drivers/gpu/drm/armada/armada_drv.o] Error 1
   1 warning generated.
   1 warning generated.
   drivers/gpu/drm/drm_dp_helper.c:1599: warning: Function parameter or member 'dp_rev' not described in 'drm_dp_set_phy_test_pattern'
   make[4]: *** [scripts/Makefile.build:497: drivers/gpu/drm/armada] Error 2
   make[5]: Target '__build' not remade because of errors.
   drivers/gpu/drm/pl111/pl111_debugfs.c:34:5: warning: no previous prototype for function 'pl111_debugfs_regs' [-Wmissing-prototypes]
   int pl111_debugfs_regs(struct seq_file *m, void *unused)
       ^
   drivers/gpu/drm/pl111/pl111_debugfs.c:34:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int pl111_debugfs_regs(struct seq_file *m, void *unused)
   ^
   static 
   drivers/gpu/drm/drm_mm.c:155:1: warning: unused function 'drm_mm_interval_tree_insert' [-Wunused-function]
   INTERVAL_TREE_DEFINE(struct drm_mm_node, rb,
   ^
   include/linux/interval_tree_generic.h:38:15: note: expanded from macro 'INTERVAL_TREE_DEFINE'
   ITSTATIC void ITPREFIX ## _insert(ITSTRUCT *node,                             \
                 ^
   <scratch space>:26:1: note: expanded from here
   drm_mm_interval_tree_insert
   ^
   drivers/gpu/drm/drm_mm.c:155:1: warning: unused function 'drm_mm_interval_tree_iter_next' [-Wunused-function]
   include/linux/interval_tree_generic.h:151:33: note: expanded from macro 'INTERVAL_TREE_DEFINE'
   ITSTATIC ITSTRUCT *                                                           \
                                                                                 ^
   <scratch space>:48:1: note: expanded from here
   drm_mm_interval_tree_iter_next
   ^
   drivers/gpu/drm/drm_mm.c:308:19: warning: unused function 'rb_hole_size' [-Wunused-function]
   static inline u64 rb_hole_size(struct rb_node *rb)
                     ^
   drivers/gpu/drm/drm_mm.c:659:20: warning: function 'drm_mm_node_scanned_block' is not needed and will not be emitted [-Wunneeded-internal-declaration]
   static inline bool drm_mm_node_scanned_block(const struct drm_mm_node *node)
                      ^
   1 warning generated.
   4 warnings generated.
   drivers/gpu/drm/drm_managed.c:61:6: warning: no previous prototype for function 'drm_managed_release' [-Wmissing-prototypes]
   void drm_managed_release(struct drm_device *dev)
        ^
   drivers/gpu/drm/drm_managed.c:61:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void drm_managed_release(struct drm_device *dev)
   ^
   static 
   1 warning generated.
   make[4]: Target '__build' not remade because of errors.
   make[3]: *** [scripts/Makefile.build:497: drivers/gpu/drm] Error 2
   make[3]: Target '__build' not remade because of errors.
--
   drivers/gpu/drm/pl111/pl111_display.c:357:6: warning: no previous prototype for function 'pl111_display_disable' [-Wmissing-prototypes]
   void pl111_display_disable(struct drm_simple_display_pipe *pipe)
        ^
   drivers/gpu/drm/pl111/pl111_display.c:357:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void pl111_display_disable(struct drm_simple_display_pipe *pipe)
   ^
   static 
   drivers/gpu/drm/armada/armada_overlay.c:329:1: warning: no previous prototype for function 'armada_overlay_duplicate_state' [-Wmissing-prototypes]
   armada_overlay_duplicate_state(struct drm_plane *plane)
   ^
   drivers/gpu/drm/armada/armada_overlay.c:328:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct drm_plane_state *
   ^
   static 
>> drivers/gpu/drm/armada/armada_drv.c:133:11: error: implicit declaration of function 'of_drm_find_bridge' [-Werror,-Wimplicit-function-declaration]
           bridge = of_drm_find_bridge(np);
                    ^
>> drivers/gpu/drm/armada/armada_drv.c:133:9: warning: incompatible integer to pointer conversion assigning to 'struct drm_bridge *' from 'int' [-Wint-conversion]
           bridge = of_drm_find_bridge(np);
                  ^ ~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/armada/armada_drv.c:134:36: warning: format specifies type 'unsigned int' but the argument has type 'struct drm_bridge *' [-Wformat]
   printk ("XXX   XX %08x %pOFfcF\n", bridge, np);
                     ~~~~             ^~~~~~
>> drivers/gpu/drm/armada/armada_drv.c:144:8: error: implicit declaration of function 'drm_bridge_attach' [-Werror,-Wimplicit-function-declaration]
           ret = drm_bridge_attach(encoder, bridge, NULL, 0);
                 ^
   drivers/gpu/drm/armada/armada_drv.c:357:8: error: implicit declaration of function 'of_drm_find_bridge' [-Werror,-Wimplicit-function-declaration]
                       !of_drm_find_bridge(remote)) {
                        ^
   2 warnings and 3 errors generated.
   make[5]: *** [scripts/Makefile.build:281: drivers/gpu/drm/armada/armada_drv.o] Error 1
   1 warning generated.
   1 warning generated.
   drivers/gpu/drm/drm_dp_helper.c:1599: warning: Function parameter or member 'dp_rev' not described in 'drm_dp_set_phy_test_pattern'
   make[4]: *** [scripts/Makefile.build:497: drivers/gpu/drm/armada] Error 2
   make[5]: Target '__build' not remade because of errors.
   drivers/gpu/drm/pl111/pl111_debugfs.c:34:5: warning: no previous prototype for function 'pl111_debugfs_regs' [-Wmissing-prototypes]
   int pl111_debugfs_regs(struct seq_file *m, void *unused)
       ^
   drivers/gpu/drm/pl111/pl111_debugfs.c:34:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int pl111_debugfs_regs(struct seq_file *m, void *unused)
   ^
   static 
   drivers/gpu/drm/drm_mm.c:155:1: warning: unused function 'drm_mm_interval_tree_insert' [-Wunused-function]
   INTERVAL_TREE_DEFINE(struct drm_mm_node, rb,
   ^
   include/linux/interval_tree_generic.h:38:15: note: expanded from macro 'INTERVAL_TREE_DEFINE'
   ITSTATIC void ITPREFIX ## _insert(ITSTRUCT *node,                             \
                 ^
   <scratch space>:26:1: note: expanded from here
   drm_mm_interval_tree_insert
   ^
   drivers/gpu/drm/drm_mm.c:155:1: warning: unused function 'drm_mm_interval_tree_iter_next' [-Wunused-function]
   include/linux/interval_tree_generic.h:151:33: note: expanded from macro 'INTERVAL_TREE_DEFINE'
   ITSTATIC ITSTRUCT *                                                           \
                                                                                 ^
   <scratch space>:48:1: note: expanded from here
   drm_mm_interval_tree_iter_next
   ^
   drivers/gpu/drm/drm_mm.c:308:19: warning: unused function 'rb_hole_size' [-Wunused-function]
   static inline u64 rb_hole_size(struct rb_node *rb)
                     ^
   drivers/gpu/drm/drm_mm.c:659:20: warning: function 'drm_mm_node_scanned_block' is not needed and will not be emitted [-Wunneeded-internal-declaration]
   static inline bool drm_mm_node_scanned_block(const struct drm_mm_node *node)
                      ^
   1 warning generated.
   4 warnings generated.
   drivers/gpu/drm/drm_managed.c:61:6: warning: no previous prototype for function 'drm_managed_release' [-Wmissing-prototypes]
   void drm_managed_release(struct drm_device *dev)
        ^
   drivers/gpu/drm/drm_managed.c:61:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void drm_managed_release(struct drm_device *dev)
   ^
   static 
   1 warning generated.
   make[4]: Target '__build' not remade because of errors.
..

vim +/of_drm_find_bridge +133 drivers/gpu/drm/armada/armada_drv.c

   122	
   123	static int armada_drm_attach_bridge(struct drm_device *drm, struct device_node *np)
   124	{
   125		struct drm_encoder *encoder;
   126		struct drm_bridge *bridge;
   127		int ret;
   128	
   129		encoder = devm_kzalloc(drm->dev, sizeof(*encoder), GFP_KERNEL);
   130		if (encoder == NULL)
   131			return -ENOMEM;
   132	
 > 133		bridge = of_drm_find_bridge(np);
   134	printk ("XXX   XX %08x %pOFfcF\n", bridge, np);
   135		if (!bridge)
   136			return -EINVAL;
   137	
   138		encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, np);
   139		ret = drm_encoder_init(drm, encoder, &armada_drm_encoder_funcs,
   140				       DRM_MODE_ENCODER_TMDS, NULL);
   141		if (ret)
   142			return ret;
   143	
 > 144		ret = drm_bridge_attach(encoder, bridge, NULL, 0);
   145		if (ret)
   146			drm_encoder_cleanup(encoder);
   147	
   148		return ret;
   149	}
   150	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007010022.pTdUpqeq%25lkp%40intel.com.

--envbJBWh7q8WU6mo
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--envbJBWh7q8WU6mo--
