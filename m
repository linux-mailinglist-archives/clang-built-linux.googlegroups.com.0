Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEOSR75QKGQEY66UDKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5087826E92C
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 00:54:11 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id h8sf3012542ioa.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 15:54:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600383250; cv=pass;
        d=google.com; s=arc-20160816;
        b=XH1gfvqtNeaU6lFri9sGZ+LHaKkkT2qLYuQlLTdzqWjkRS18T7VzqqdEFSs7CUICNP
         7i/eKwaSnF4uHNS5reDlsegiITQ/QOGCj1HFg3ak3oVsscJdGpXSoc7qdygFGKmdwePD
         w9boyPxfQQfL9RBVWeeUI7B7d2pjMikUZCgm0LKDNfnSe243pIUbjsyE8L12TK7yhAgF
         AegBr/KQkR3TpGiWMA8yMf+aEBdcIfiCRYggJwkyoh563mOcAW3ZmBZrOLKSIbRHHF3i
         2AlqEBynNyC1hZir5SShEeu4pWK92t75CrL6tFpOw1Cjatr7Es8eXBa7dIMtNMje2Qtu
         vXRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=SHbsu3+nSaHjJmIHQ/HVJbElgj5jRdNBFUimk6dyaeA=;
        b=dxR0roPJuVOAECr3RzFT58eyw7sUQOjQ91ApHn0j7ooH8R8kZmoS3tdvm2wGqZgHlD
         /SsCfxET3Tz+Ejbe7X33IUxGfOE4ci0Pa3VsCCxadY9NSLvilfwE8YdnJxt13ibiP0tz
         B7DnpqkOY3jgG62Bexwa/D6nEquJpjMb4QAFky85qHUsNoz4n4TZWHvVAUCk87mhwZRp
         W1+Ppizp0XIMSO6AUyFtum7OX97XeA5BxtflyE/LviSDkeb8opumvco9fm0D9DApYDrL
         hLmqx9McJ5oK4n0BonbCyowp4nILvWGmH67FrC2klUXjq0YswgH2PS+FGeWxer/MduRy
         CemQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SHbsu3+nSaHjJmIHQ/HVJbElgj5jRdNBFUimk6dyaeA=;
        b=SUHzsvQ3p87lY8+8SaeJ68YA7GB186u63xFjQDVZn7QrZn9DS//ZfvHFFjdHDhR0MD
         fAAkgOAOFYZpR/55HYQ701vxt8Qu6hENqzEEHHC3tllnTumHP5QfYqbNDU9yMCCscXkd
         YGUl2eYVPPtB/1zRaR+mPOyTpDOrhIP1YzEG9GkLYwpT40gZiCEWCqMlUjM5MZaji/OE
         RYazmc4UO0bBS3vmVZFEKWu3FSs62UenQlePn5uRq4BafRDaNvCXbiWH+E84CO9u2fK1
         sJDCbLBCJROqgENgI/LznQ3DY002HQCXKAS970P5AOzm5FcfEP1oQmzJwBOnMrYtzgzl
         3HTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SHbsu3+nSaHjJmIHQ/HVJbElgj5jRdNBFUimk6dyaeA=;
        b=dmMBTF0IRrBafWtNOaJPUoK1F4hO+RpPgMTrifu3pJzmQhj72ZNMGGKTaFTrCW9rOc
         xpsytZ02u0E3W9+OV3fgo3DZU/95Bihs8aR+N9actTgA3vOSMzj/xiTdeGMfT2LuWrfW
         1bUdLXlB9en9SoLKCfHTEUwGrb4BjwrJL8OHXs7TifThpS63CKImktTzQKV8yJSy7MP7
         cdI5B776S03Jzqs687541Wj1he1ZyWKkz6dkoWJCaUpurcPPMW4x1XGWU6c4BcVxtDXa
         Q8SNACgBLMLg+IorzVTXiFDudmKeKsak982UssG8IJU0500nFsoNwvmcnGbB9AH6Rsra
         PCWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311SARY1AV8sUQOcIdjTgdBgsEoKVoX3VX1kIElnZsiZSnfpuOz
	rmhN0A8sgXFOJXgAmwRGhKc=
X-Google-Smtp-Source: ABdhPJxVvqpCTQbMEhEgHVrYlw9besqpFbqm2uMRkQvqmXRG6lzqCdSXoVqbw6GLNaG4j1X2uM3Qxg==
X-Received: by 2002:a92:1fd6:: with SMTP id f83mr27695650ilf.261.1600383249799;
        Thu, 17 Sep 2020 15:54:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:dc09:: with SMTP id s9ls631310ioc.4.gmail; Thu, 17 Sep
 2020 15:54:09 -0700 (PDT)
X-Received: by 2002:a6b:d606:: with SMTP id w6mr24611704ioa.89.1600383249194;
        Thu, 17 Sep 2020 15:54:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600383249; cv=none;
        d=google.com; s=arc-20160816;
        b=yoP8aJ1dJy46qsjc9ldqF5CFMwN0J740FlPbaLqTyIsdMSBAjk7QlOJHlysEvxg/PO
         NYLCIt3lUNIsTwdCmGiKCm7HUYavNtsgUhztODVYyKflGOwTlhcDXAQTJU4sSCpBM3ry
         drX3Y05gN6FoWH1Wi3PlLmVMJzvLBOU//c0p0KMSfummbE9vDUgo5PnGSCXswxW6+4wd
         wNxN0ipz0OsGzpBm0RSdcrXYty3k+702z9t5o9VR2UqJmHf9gmkaZi8cMCguP7t2vYGY
         1xQvVvuY806EYuhiIaWfFv581t8aB9CuqkmQ/VyVVlugdcML4VxefMXzYFyRNLPILE3S
         b4gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=IfdorJ6OiEFTKHt0cUuA6kuZOAhik4682A665v0TClc=;
        b=B42yaKinJ8f4aaj58DfrgP/f42fi5WBsLfn3sAES01UbQQwFBrLVZ3YAjrJv23Tg6B
         jN4ro7W0VAbyKecmdrf8L5yp2CSZMD0Ki4ORHpFStaYFMOro0igk/aeb/2MDD6AFAEMU
         kZdKoMN5E6q3hUBSfD82ZqQC+qOt3Xv/QfFbtHFnImSy7B+mk/op35jnGHDTCrp3Cb46
         DvmctHYDKZEzPUxCpo2xPGe7O5NJuducwdBVpVKgCXuilk7XEfSmT48UqCU5JmTqxsmV
         z8FcgiyHEjxtIfl/otuXH76GJrvy3ycCe89stQR3sclAuyzM/wJP//yyBTZ4lxJ1Aoxx
         tRlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id a13si90991ios.2.2020.09.17.15.54.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 15:54:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: nT8tkGYjpbm7cmdWvZVjM1oSadV/TPbPwdfVBBllUFqSsqooaYjTYyFqp3uafVx9AY00Y6k/zt
 b7NmLhsaec/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="221366000"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; 
   d="gz'50?scan'50,208,50";a="221366000"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2020 15:54:01 -0700
IronPort-SDR: xcG5xPytjS+C6yXJROS5Dy8q/luZmePbSEYYRRnitUNsjBfN5SGZsaj9SCrR9s/evdYCBY5mgp
 YXdhNDuOLHQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; 
   d="gz'50?scan'50,208,50";a="410090173"
Received: from lkp-server01.sh.intel.com (HELO a05db971c861) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 17 Sep 2020 15:53:57 -0700
Received: from kbuild by a05db971c861 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kJ2mr-0000Ax-9T; Thu, 17 Sep 2020 22:53:57 +0000
Date: Fri, 18 Sep 2020 06:53:47 +0800
From: kernel test robot <lkp@intel.com>
To: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>, agross@kernel.org,
	bjorn.andersson@linaro.org, lgirdwood@gmail.com, broonie@kernel.org,
	robh+dt@kernel.org, plai@codeaurora.org, bgoswami@codeaurora.org,
	perex@perex.cz, tiwai@suse.com, srinivas.kandagatla@linaro.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 4/5] ASoC: qcom: Add support for lpass hdmi driver
Message-ID: <202009180658.U9uzDUqp%lkp@intel.com>
References: <1600349828-10727-5-git-send-email-srivasam@codeaurora.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="d6Gm4EdcadzBjdND"
Content-Disposition: inline
In-Reply-To: <1600349828-10727-5-git-send-email-srivasam@codeaurora.org>
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


--d6Gm4EdcadzBjdND
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Srinivasa,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on asoc/for-next]
[also build test ERROR on next-20200917]
[cannot apply to v5.9-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Srinivasa-Rao-Mandadapu/Qualcomm-s-lpass-hdmi-ASoC-driver-to-support-audio-over-dp-port/20200917-214328
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
config: riscv-randconfig-r031-20200917 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1321160a26e7e489baf9b10d6de90a342f898960)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from sound/soc/qcom/lpass-ipq806x.c:17:
   In file included from include/sound/soc.h:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from sound/soc/qcom/lpass-ipq806x.c:17:
   In file included from include/sound/soc.h:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from sound/soc/qcom/lpass-ipq806x.c:17:
   In file included from include/sound/soc.h:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from sound/soc/qcom/lpass-ipq806x.c:17:
   In file included from include/sound/soc.h:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from sound/soc/qcom/lpass-ipq806x.c:17:
   In file included from include/sound/soc.h:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> sound/soc/qcom/lpass-ipq806x.c:160:23: error: incompatible function pointer types initializing 'int (*)(struct lpass_data *, int, unsigned int)' with an expression of type 'int (struct lpass_data *, int)' [-Werror,-Wincompatible-function-pointer-types]
           .alloc_dma_channel      = ipq806x_lpass_alloc_dma_channel,
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/qcom/lpass-ipq806x.c:161:22: error: incompatible function pointer types initializing 'int (*)(struct lpass_data *, int, unsigned int)' with an expression of type 'int (struct lpass_data *, int)' [-Werror,-Wincompatible-function-pointer-types]
           .free_dma_channel       = ipq806x_lpass_free_dma_channel,
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   7 warnings and 2 errors generated.
--
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from sound/soc/qcom/lpass-apq8016.c:18:
   In file included from include/sound/soc.h:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from sound/soc/qcom/lpass-apq8016.c:18:
   In file included from include/sound/soc.h:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from sound/soc/qcom/lpass-apq8016.c:18:
   In file included from include/sound/soc.h:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from sound/soc/qcom/lpass-apq8016.c:18:
   In file included from include/sound/soc.h:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from sound/soc/qcom/lpass-apq8016.c:18:
   In file included from include/sound/soc.h:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> sound/soc/qcom/lpass-apq8016.c:290:23: error: incompatible function pointer types initializing 'int (*)(struct lpass_data *, int, unsigned int)' with an expression of type 'int (struct lpass_data *, int)' [-Werror,-Wincompatible-function-pointer-types]
           .alloc_dma_channel      = apq8016_lpass_alloc_dma_channel,
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/qcom/lpass-apq8016.c:291:22: error: incompatible function pointer types initializing 'int (*)(struct lpass_data *, int, unsigned int)' with an expression of type 'int (struct lpass_data *, int)' [-Werror,-Wincompatible-function-pointer-types]
           .free_dma_channel       = apq8016_lpass_free_dma_channel,
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   7 warnings and 2 errors generated.

# https://github.com/0day-ci/linux/commit/36d10d78e631aecf445a62288278056d499bbee2
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Srinivasa-Rao-Mandadapu/Qualcomm-s-lpass-hdmi-ASoC-driver-to-support-audio-over-dp-port/20200917-214328
git checkout 36d10d78e631aecf445a62288278056d499bbee2
vim +160 sound/soc/qcom/lpass-ipq806x.c

6db1c6ba9544e99 Srinivas Kandagatla 2015-05-16  111  
eccad574ef2d74e Lars-Peter Clausen  2015-07-27  112  static struct lpass_variant ipq806x_data = {
9bae4880acee1cd Srinivas Kandagatla 2015-05-16  113  	.i2sctrl_reg_base	= 0x0010,
9bae4880acee1cd Srinivas Kandagatla 2015-05-16  114  	.i2sctrl_reg_stride	= 0x04,
9bae4880acee1cd Srinivas Kandagatla 2015-05-16  115  	.i2s_ports		= 5,
9bae4880acee1cd Srinivas Kandagatla 2015-05-16  116  	.irq_reg_base		= 0x3000,
9bae4880acee1cd Srinivas Kandagatla 2015-05-16  117  	.irq_reg_stride		= 0x1000,
9bae4880acee1cd Srinivas Kandagatla 2015-05-16  118  	.irq_ports		= 3,
9bae4880acee1cd Srinivas Kandagatla 2015-05-16  119  	.rdma_reg_base		= 0x6000,
9bae4880acee1cd Srinivas Kandagatla 2015-05-16  120  	.rdma_reg_stride	= 0x1000,
9bae4880acee1cd Srinivas Kandagatla 2015-05-16  121  	.rdma_channels		= 4,
0a14a1bf2e81a75 Srinivas Kandagatla 2016-02-11  122  	.wrdma_reg_base		= 0xB000,
0a14a1bf2e81a75 Srinivas Kandagatla 2016-02-11  123  	.wrdma_reg_stride	= 0x1000,
0a14a1bf2e81a75 Srinivas Kandagatla 2016-02-11  124  	.wrdma_channel_start	= 5,
0a14a1bf2e81a75 Srinivas Kandagatla 2016-02-11  125  	.wrdma_channels		= 4,
b5022a36d28f6a9 Rohit kumar         2020-08-14  126  	.loopback		= REG_FIELD_ID(0x0010, 15, 15, 5, 0x4),
b5022a36d28f6a9 Rohit kumar         2020-08-14  127  	.spken			= REG_FIELD_ID(0x0010, 14, 14, 5, 0x4),
b5022a36d28f6a9 Rohit kumar         2020-08-14  128  	.spkmode		= REG_FIELD_ID(0x0010, 10, 13, 5, 0x4),
b5022a36d28f6a9 Rohit kumar         2020-08-14  129  	.spkmono		= REG_FIELD_ID(0x0010, 9, 9, 5, 0x4),
b5022a36d28f6a9 Rohit kumar         2020-08-14  130  	.micen			= REG_FIELD_ID(0x0010, 8, 8, 5, 0x4),
b5022a36d28f6a9 Rohit kumar         2020-08-14  131  	.micmode		= REG_FIELD_ID(0x0010, 4, 7, 5, 0x4),
b5022a36d28f6a9 Rohit kumar         2020-08-14  132  	.micmono		= REG_FIELD_ID(0x0010, 3, 3, 5, 0x4),
b5022a36d28f6a9 Rohit kumar         2020-08-14  133  	.wssrc			= REG_FIELD_ID(0x0010, 2, 2, 5, 0x4),
b5022a36d28f6a9 Rohit kumar         2020-08-14  134  	.bitwidth		= REG_FIELD_ID(0x0010, 0, 0, 5, 0x4),
b5022a36d28f6a9 Rohit kumar         2020-08-14  135  
b5022a36d28f6a9 Rohit kumar         2020-08-14  136  	.rdma_dyncclk		= REG_FIELD_ID(0x6000, 12, 12, 4, 0x1000),
b5022a36d28f6a9 Rohit kumar         2020-08-14  137  	.rdma_bursten		= REG_FIELD_ID(0x6000, 11, 11, 4, 0x1000),
b5022a36d28f6a9 Rohit kumar         2020-08-14  138  	.rdma_wpscnt		= REG_FIELD_ID(0x6000, 8, 10, 4, 0x1000),
b5022a36d28f6a9 Rohit kumar         2020-08-14  139  	.rdma_intf		= REG_FIELD_ID(0x6000, 4, 7, 4, 0x1000),
b5022a36d28f6a9 Rohit kumar         2020-08-14  140  	.rdma_fifowm		= REG_FIELD_ID(0x6000, 1, 3, 4, 0x1000),
b5022a36d28f6a9 Rohit kumar         2020-08-14  141  	.rdma_enable		= REG_FIELD_ID(0x6000, 0, 0, 4, 0x1000),
b5022a36d28f6a9 Rohit kumar         2020-08-14  142  
b5022a36d28f6a9 Rohit kumar         2020-08-14  143  	.wrdma_dyncclk		= REG_FIELD_ID(0xB000, 12, 12, 4, 0x1000),
b5022a36d28f6a9 Rohit kumar         2020-08-14  144  	.wrdma_bursten		= REG_FIELD_ID(0xB000, 11, 11, 4, 0x1000),
b5022a36d28f6a9 Rohit kumar         2020-08-14  145  	.wrdma_wpscnt		= REG_FIELD_ID(0xB000, 8, 10, 4, 0x1000),
b5022a36d28f6a9 Rohit kumar         2020-08-14  146  	.wrdma_intf		= REG_FIELD_ID(0xB000, 4, 7, 4, 0x1000),
b5022a36d28f6a9 Rohit kumar         2020-08-14  147  	.wrdma_fifowm		= REG_FIELD_ID(0xB000, 1, 3, 4, 0x1000),
b5022a36d28f6a9 Rohit kumar         2020-08-14  148  	.wrdma_enable		= REG_FIELD_ID(0xB000, 0, 0, 4, 0x1000),
b5022a36d28f6a9 Rohit kumar         2020-08-14  149  
9bae4880acee1cd Srinivas Kandagatla 2015-05-16  150  	.dai_driver		= &ipq806x_lpass_cpu_dai_driver,
9bae4880acee1cd Srinivas Kandagatla 2015-05-16  151  	.num_dai		= 1,
97c52eb969718f0 Linus Walleij       2017-04-05  152  	.dai_osr_clk_names	= (const char *[]) {
97c52eb969718f0 Linus Walleij       2017-04-05  153  				"mi2s-osr-clk",
97c52eb969718f0 Linus Walleij       2017-04-05  154  				},
97c52eb969718f0 Linus Walleij       2017-04-05  155  	.dai_bit_clk_names	= (const char *[]) {
97c52eb969718f0 Linus Walleij       2017-04-05  156  				"mi2s-bit-clk",
97c52eb969718f0 Linus Walleij       2017-04-05  157  				},
a503567d70eca91 Rohit kumar         2020-08-14  158  	.init			= ipq806x_lpass_init,
a503567d70eca91 Rohit kumar         2020-08-14  159  	.exit			= ipq806x_lpass_exit,
6db1c6ba9544e99 Srinivas Kandagatla 2015-05-16 @160  	.alloc_dma_channel	= ipq806x_lpass_alloc_dma_channel,
6db1c6ba9544e99 Srinivas Kandagatla 2015-05-16  161  	.free_dma_channel	= ipq806x_lpass_free_dma_channel,
9bae4880acee1cd Srinivas Kandagatla 2015-05-16  162  };
9bae4880acee1cd Srinivas Kandagatla 2015-05-16  163  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009180658.U9uzDUqp%25lkp%40intel.com.

--d6Gm4EdcadzBjdND
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--d6Gm4EdcadzBjdND--
