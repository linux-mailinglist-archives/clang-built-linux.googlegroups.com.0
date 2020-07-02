Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPVF7H3QKGQEHRPKVEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C72A4212EE9
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 23:33:51 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id r9sf1512428ioa.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 14:33:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593725630; cv=pass;
        d=google.com; s=arc-20160816;
        b=gf5D7jknG0BDj7AnUSWF4vDYKgdc981UqJHetwTd2C2YcOT/JaBkBZnZ+7q6qTsfsb
         kY26hRrBOX/bwHXw8zi8N00Mx1g2Kti8zx/qSSb2lo3aUhQ/u+VU5VFq+dAGfbOaYkX1
         YEpP+JxbfUX9k7hpTbJZFqI02JCJNlpdVmwyNXCmNvKhzdv/iU2mA6Bmanj5Xkduwb/s
         pFLb+DRnEIEsw33XbWUCn/+CFLaban7E5xS8tX/kp5PNqT5DQnhzvb6XjOC1pyTyqbpp
         Kbj9iIAvKBktjJaLudSfi+ln4dXtXj47ZGszOQgHDQrxblR7u8e5PndHsyLftVUoY7wk
         QUbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=vy6DBzYVD7a71HC2UftnUz/5z4dpAmVtn5ofCSlXDxA=;
        b=wYfHN6IMkeAoPsay+chSWXsXNw2uki+JQo6mRX7GC6NjAL8AEEx2WW6ueRs7t9GdUx
         +JKeD0OJdv9uxEl6MnmhdtCDPN4hhTH17YkUSzo+/JARd0XTEJ8TNdtxQ+6DkkpHTamz
         jyTbDo5ZB1hbO7dfmiK0saMAWWksh08N3bZjWV/fsCnSST9P3mpRH6DQlOlFXVk5OeqS
         fngiFe9EVHDhNgZ2DOC3ISf1FmeLVx/tpkQ0rm43XtcjKVMMgjQ6zEygrrGpy0YzlyEc
         s4HeHWqAh0eZbk0APswQfEBCwSpmfNc8cU+UYHpl7iabI/Wvetx+YBOYgX38lWsI3tMf
         uccA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vy6DBzYVD7a71HC2UftnUz/5z4dpAmVtn5ofCSlXDxA=;
        b=X6aPCVA+DI6I4EmfEXK9/+Kldu/UNwux7fG8qyLnZ1fK7IufxHLm/ZsZcdYi0UDBuj
         dF6dap4HMq2DHN/X4UzHZdECLXMBjaaUvPAFNm0AFlHGWmA7fW3xD7clY7LcL/vd3J5A
         OUYgOYpGLSlWgHXtsM5Z9ZqvZXQg1bjQ4jKkHGn/0duDqLplHeNwyEapEg/Ax7uxd8hL
         yhcTT/dKv0+KcMN4Wmq/5cxo4Bs4BMy4TM1p4ROe58UTVylpMnSc4m/z7/9+QdFnKZ2i
         S/Dhshiot0QHy+KZSGyBF5htkh9vNfriB1XDjyyNzJ5+eVEWhMBUF3PEyASmv/8caCaX
         x4LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vy6DBzYVD7a71HC2UftnUz/5z4dpAmVtn5ofCSlXDxA=;
        b=tjD+GBJ+rH1/f2EuYvQZz86zXqbfwTxj/EUbIHTmxgPyLUxzBQiFZhwghjHXTZTNlu
         R/SvZ63R8lgcgak1TmGNg0tStcxq9sE+q+Daux5uyhGWG/l/dn5BMPjW6DDA00EwOWvY
         bxfN4PTeJt3UGjcZnSu51uVUlQEujG+A0XD84RcuUmooI/9qGyK+srMlTWhnFvHPkbZ+
         1yQfxaumskyRXZGIDPbFeVq20yoQDKvv39Pj5JxgzeNiPQCoOexT3Uwdgbb9VnDvDB2k
         ZCFb4cbMT55fp1dlmxT8yLyn3qZpT/Et36NemhmsICfDTSP9kO7e/z2S5kEGoqaieKaR
         Vvjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GYhj5cgIC1M/K9X5o1CP0NxH3GToBBPHZ6Cp4FGc1p/5t7QNy
	UYiByhjL4za8OurtRXnPljQ=
X-Google-Smtp-Source: ABdhPJztf4zfoGHnisEaw5ExROCqK87YPKgPmO19MB1dRI9hk+WiP+tTvV9fyH/3Pau1yoQwE53w6A==
X-Received: by 2002:a05:6602:1225:: with SMTP id z5mr9456741iot.64.1593725630510;
        Thu, 02 Jul 2020 14:33:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4103:: with SMTP id o3ls2039409ila.3.gmail; Thu, 02 Jul
 2020 14:33:50 -0700 (PDT)
X-Received: by 2002:a05:6e02:128d:: with SMTP id y13mr14328177ilq.305.1593725630068;
        Thu, 02 Jul 2020 14:33:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593725630; cv=none;
        d=google.com; s=arc-20160816;
        b=03En6yPeMBubUGLSC+t/gRbVesV1VvnzJ+6s2UhitYkwCnRYhU7TQ5v4emFtx3Wjm4
         TiFN4YZf7eD2h9Orkr494A1P/AdRn/LjQoZVCr2jcJ14FAEAHli0MqgE5e2DxlAVNkp+
         dbU9A9SUL5+/fsnuAKkerZrYqr1cXklgIEnlrkwK9mDVPxui1FZd0Jvop6lictGQgYvQ
         jkr63s57LNbMaAAB0uC3GxDirocjbASBFX2PzcPc7WC9+dQp5bopIVStW2QIYf4Phg0H
         gH74dh0Nr2ukO3hmydKkZBWDuCZlRR9M/9s4f6a8cO+4WF1hP9kIfHc7HLp4oAnsS3/M
         /B2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=ktdrjCE/6DljllpAQC8/5wWFa7R+GxbuWsD9oIbN+z0=;
        b=vzvWZclKcyX3emXjmdRQ3INI+AKP4ugeJ+HwXgZmzoPk7o9u9BlKRH8BlolHGr4Kyp
         D36edtWAe/eoB6nqXxGFDFi6NttDC6UeMy956w2ryLZ4DcN+3umfdG2V0V3YyVwE9XLk
         8EoPJYTn60fiNBP2oBbRwP6m9EmkyUCQHH1yf5ztw858R+HHdaTLnTVpmn1yP0an5nYr
         bIYeaV/htNKSzVw19xlnENLiIca6fUxo+v1UMUmG6Z/k6aXdbE8kN0076IJ4pldb8bPW
         UKptlEvV3tAX1I+hJ463Wo7lcRWEKxAIrXDpEj3b5yJQgjVO+YdXTi6xjjGZ0xjLzrN/
         0dfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id b2si931075ile.1.2020.07.02.14.33.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 14:33:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: Iu0LkzzoHdtXbGdwx7xw8lf3MH5y9bsLq75aq+NK5HjU9xo+HYFR9Uxkv+oGUinR2iZ5iQRWL6
 6QTKSDYqdGdQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="165090652"
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; 
   d="gz'50?scan'50,208,50";a="165090652"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jul 2020 14:33:49 -0700
IronPort-SDR: MEvnogtgWXW9iTQjAqGiLSmj+Ov35LdaMMoXwuKK2rK4ls/JnJwGuva4N9l9ziQHDJZf5gSl8G
 Ax7SxwR77zTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; 
   d="gz'50?scan'50,208,50";a="321632063"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 02 Jul 2020 14:33:45 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jr6q0-0003pk-CH; Thu, 02 Jul 2020 21:33:44 +0000
Date: Fri, 3 Jul 2020 05:33:12 +0800
From: kernel test robot <lkp@intel.com>
To: Arnaud Ferraris <arnaud.ferraris@collabora.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	kernel@collabora.com,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Timur Tabi <timur@kernel.org>,
	Nicolin Chen <nicoleotsuka@gmail.com>,
	Xiubo Li <Xiubo.Lee@gmail.com>, Fabio Estevam <festevam@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>
Subject: Re: [PATCH 2/4] ASoC: fsl_asrc: allow using arbitrary input and
 output clocks
Message-ID: <202007030516.26diRNfO%lkp@intel.com>
References: <20200702142235.235869-3-arnaud.ferraris@collabora.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="KsGdsel6WgEHnImy"
Content-Disposition: inline
In-Reply-To: <20200702142235.235869-3-arnaud.ferraris@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--KsGdsel6WgEHnImy
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Arnaud,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on v5.8-rc3]
[cannot apply to asoc/for-next next-20200702]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use  as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Arnaud-Ferraris/ASoC-fsl_asrc-allow-selecting-arbitrary-clocks/20200702-222640
base:    9ebcfadb0610322ac537dd7aa5d9cbc2b2894c68
config: powerpc64-randconfig-r003-20200701 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 003a086ffc0d1affbb8300b36225fb8150a2d40a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   #define __do_outl(val, port)    writel(val,(PCI_IO_ADDR)_IO_BASE+port);
                                              ~~~~~~~~~~~~~~~~~~~~~^
   In file included from sound/soc/fsl/fsl_asrc.c:11:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:160:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from sound/soc/fsl/fsl_asrc.c:11:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:162:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from sound/soc/fsl/fsl_asrc.c:11:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:164:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from sound/soc/fsl/fsl_asrc.c:11:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:166:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from sound/soc/fsl/fsl_asrc.c:11:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:168:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from sound/soc/fsl/fsl_asrc.c:11:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:170:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from sound/soc/fsl/fsl_asrc.c:19:
   In file included from sound/soc/fsl/fsl_asrc.h:13:
>> sound/soc/fsl/fsl_asrc_common.h:92:18: error: field has incomplete type 'enum asrc_inclk'
           enum asrc_inclk inclk;
                           ^
   sound/soc/fsl/fsl_asrc_common.h:92:7: note: forward declaration of 'enum asrc_inclk'
           enum asrc_inclk inclk;
                ^
>> sound/soc/fsl/fsl_asrc_common.h:93:19: error: field has incomplete type 'enum asrc_outclk'
           enum asrc_outclk outclk;
                            ^
   sound/soc/fsl/fsl_asrc_common.h:93:7: note: forward declaration of 'enum asrc_outclk'
           enum asrc_outclk outclk;
                ^
   12 warnings and 2 errors generated.
--
   #define __do_outl(val, port)    writel(val,(PCI_IO_ADDR)_IO_BASE+port);
                                              ~~~~~~~~~~~~~~~~~~~~~^
   In file included from sound/soc/fsl/fsl_easrc.c:7:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:164:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from sound/soc/fsl/fsl_easrc.c:7:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:166:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from sound/soc/fsl/fsl_easrc.c:7:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:168:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from sound/soc/fsl/fsl_easrc.c:7:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:170:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from sound/soc/fsl/fsl_easrc.c:7:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:172:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from sound/soc/fsl/fsl_easrc.c:7:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:174:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from sound/soc/fsl/fsl_easrc.c:31:
   In file included from sound/soc/fsl/fsl_easrc.h:12:
>> sound/soc/fsl/fsl_asrc_common.h:92:18: error: field has incomplete type 'enum asrc_inclk'
           enum asrc_inclk inclk;
                           ^
   sound/soc/fsl/fsl_asrc_common.h:92:7: note: forward declaration of 'enum asrc_inclk'
           enum asrc_inclk inclk;
                ^
>> sound/soc/fsl/fsl_asrc_common.h:93:19: error: field has incomplete type 'enum asrc_outclk'
           enum asrc_outclk outclk;
                            ^
   sound/soc/fsl/fsl_asrc_common.h:93:7: note: forward declaration of 'enum asrc_outclk'
           enum asrc_outclk outclk;
                ^
   sound/soc/fsl/fsl_easrc.c:967:5: warning: no previous prototype for function 'fsl_easrc_config_context' [-Wmissing-prototypes]
   int fsl_easrc_config_context(struct fsl_asrc *easrc, unsigned int ctx_id)
       ^
   sound/soc/fsl/fsl_easrc.c:967:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int fsl_easrc_config_context(struct fsl_asrc *easrc, unsigned int ctx_id)
   ^
   static 
   sound/soc/fsl/fsl_easrc.c:1128:5: warning: no previous prototype for function 'fsl_easrc_set_ctx_format' [-Wmissing-prototypes]
   int fsl_easrc_set_ctx_format(struct fsl_asrc_pair *ctx,
       ^
   sound/soc/fsl/fsl_easrc.c:1128:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int fsl_easrc_set_ctx_format(struct fsl_asrc_pair *ctx,
   ^
   static 
   sound/soc/fsl/fsl_easrc.c:1201:5: warning: no previous prototype for function 'fsl_easrc_set_ctx_organziation' [-Wmissing-prototypes]
   int fsl_easrc_set_ctx_organziation(struct fsl_asrc_pair *ctx)
       ^
   sound/soc/fsl/fsl_easrc.c:1201:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int fsl_easrc_set_ctx_organziation(struct fsl_asrc_pair *ctx)
   ^
   static 
   sound/soc/fsl/fsl_easrc.c:1245:5: warning: no previous prototype for function 'fsl_easrc_request_context' [-Wmissing-prototypes]
   int fsl_easrc_request_context(int channels, struct fsl_asrc_pair *ctx)
       ^
   sound/soc/fsl/fsl_easrc.c:1245:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int fsl_easrc_request_context(int channels, struct fsl_asrc_pair *ctx)
   ^
   static 
   sound/soc/fsl/fsl_easrc.c:1290:6: warning: no previous prototype for function 'fsl_easrc_release_context' [-Wmissing-prototypes]
   void fsl_easrc_release_context(struct fsl_asrc_pair *ctx)
        ^
   sound/soc/fsl/fsl_easrc.c:1290:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void fsl_easrc_release_context(struct fsl_asrc_pair *ctx)
   ^
   static 
   sound/soc/fsl/fsl_easrc.c:1317:5: warning: no previous prototype for function 'fsl_easrc_start_context' [-Wmissing-prototypes]
   int fsl_easrc_start_context(struct fsl_asrc_pair *ctx)
       ^
   sound/soc/fsl/fsl_easrc.c:1317:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int fsl_easrc_start_context(struct fsl_asrc_pair *ctx)
   ^
   static 
   sound/soc/fsl/fsl_easrc.c:1335:5: warning: no previous prototype for function 'fsl_easrc_stop_context' [-Wmissing-prototypes]
   int fsl_easrc_stop_context(struct fsl_asrc_pair *ctx)
       ^
   sound/soc/fsl/fsl_easrc.c:1335:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int fsl_easrc_stop_context(struct fsl_asrc_pair *ctx)
   ^
   static 
   sound/soc/fsl/fsl_easrc.c:1382:18: warning: no previous prototype for function 'fsl_easrc_get_dma_channel' [-Wmissing-prototypes]
   struct dma_chan *fsl_easrc_get_dma_channel(struct fsl_asrc_pair *ctx,
                    ^
   sound/soc/fsl/fsl_easrc.c:1382:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct dma_chan *fsl_easrc_get_dma_channel(struct fsl_asrc_pair *ctx,
   ^
   static 
   20 warnings and 2 errors generated.

vim +92 sound/soc/fsl/fsl_asrc_common.h

    53	
    54	/**
    55	 * fsl_asrc: ASRC common data
    56	 *
    57	 * @dma_params_rx: DMA parameters for receive channel
    58	 * @dma_params_tx: DMA parameters for transmit channel
    59	 * @pdev: platform device pointer
    60	 * @regmap: regmap handler
    61	 * @paddr: physical address to the base address of registers
    62	 * @mem_clk: clock source to access register
    63	 * @ipg_clk: clock source to drive peripheral
    64	 * @spba_clk: SPBA clock (optional, depending on SoC design)
    65	 * @lock: spin lock for resource protection
    66	 * @pair: pair pointers
    67	 * @channel_avail: non-occupied channel numbers
    68	 * @asrc_rate: default sample rate for ASoC Back-Ends
    69	 * @asrc_format: default sample format for ASoC Back-Ends
    70	 * @use_edma: edma is used
    71	 * @get_dma_channel: function pointer
    72	 * @request_pair: function pointer
    73	 * @release_pair: function pointer
    74	 * @get_fifo_addr: function pointer
    75	 * @pair_priv_size: size of pair private struct.
    76	 * @private: private data structure
    77	 */
    78	struct fsl_asrc {
    79		struct snd_dmaengine_dai_dma_data dma_params_rx;
    80		struct snd_dmaengine_dai_dma_data dma_params_tx;
    81		struct platform_device *pdev;
    82		struct regmap *regmap;
    83		unsigned long paddr;
    84		struct clk *mem_clk;
    85		struct clk *ipg_clk;
    86		struct clk *spba_clk;
    87		spinlock_t lock;      /* spin lock for resource protection */
    88	
    89		struct fsl_asrc_pair *pair[PAIR_CTX_NUM];
    90		unsigned int channel_avail;
    91	
  > 92		enum asrc_inclk inclk;
  > 93		enum asrc_outclk outclk;
    94	
    95		int asrc_rate;
    96		snd_pcm_format_t asrc_format;
    97		bool use_edma;
    98	
    99		struct dma_chan *(*get_dma_channel)(struct fsl_asrc_pair *pair, bool dir);
   100		int (*request_pair)(int channels, struct fsl_asrc_pair *pair);
   101		void (*release_pair)(struct fsl_asrc_pair *pair);
   102		int (*get_fifo_addr)(u8 dir, enum asrc_pair_index index);
   103		size_t pair_priv_size;
   104	
   105		void *private;
   106	};
   107	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007030516.26diRNfO%25lkp%40intel.com.

--KsGdsel6WgEHnImy
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--KsGdsel6WgEHnImy--
