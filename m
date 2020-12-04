Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLMCVL7AKGQELQC4R5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B382CF41E
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 19:34:24 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id x25sf406965otq.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 10:34:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607106862; cv=pass;
        d=google.com; s=arc-20160816;
        b=PcVrlHYzYUDIh2sTqjCbiYS/iQAmH0Spnuu5X9TdD9AJsyZivHduuLxDW5BmrzDyIk
         lDk3bjsvU2+I9CyAEFAABHldTAotXPBu99rGsxXLg2NXUVwp5O1fvr2ZdTlHWgYMgh2O
         f+zCzn4OkswLZzOM7gylBQCmyn9uGflJptbxYOZ4fzTELqmJVShQhwy6GMHeP3gPU0u8
         AJyi1Kb5MT4b8WNRdMseVIplqAeGIMaHCaqCS4yroC4icmmR0a9woBynD/MfcPWPv018
         N0TyL4DJ/i7NjjiO0+xHlOc6ocMUqn2md2I4vVU2t3NUfyVWOa5iDboVNRgSxngKWgBJ
         9Igg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=m042JcolF5PWPyX7JPNAlzdnuZb2U10XN5uP6u8iU9w=;
        b=QxaOFanPxnNTk8taOp/ljXQfbmT0r9cCyCY4nTB+DyfdG/sD1632lRank9HaQa55Sa
         kzKieSzztj7MxFTsEbtAkBMo3vkY9laxDIJ+6okbrG3diicQ4KkQNZRse8kOqmQQh9Bl
         PNeTkHutE8c6qapZ/UqNtqvvjB9kzu2qC+zLtManEn1NQvQ9Gj9N9ZTYMlRktQntD3vs
         eWiRYPScCr+/BWuEX724bj3x7YePoBgnIFI1SGZksEgEzLXdOJwD80X4rtKMTlh/Wt7+
         R/t/AVFkW9IuuNt8RMQt5xqWKA9ckifidfhVs2NjflrKxDT6VRTpIhfaDO4dfyXnF1ls
         aiBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m042JcolF5PWPyX7JPNAlzdnuZb2U10XN5uP6u8iU9w=;
        b=Hxs3oDiFPHAZRyYyf3I5cdjz5hwgdkmzHCHKJhoRdIp8ASLqjN56V+JoS8+JrHS/fM
         LwXe5LTvw1sKY2RgdDAXiLXK8FjSuZee8Hg7X//u/yMO6ZISaYGN0bIv6hGVeYT2KsjB
         vk32Y1yN6vlI1bOidcVOAaKLlyuf+4MOrnt6BRBjhTWhAVso8C+xbhUNU9BBvSXx9G0s
         24zl43yUSa7QJXP1vZY/UgXuqf1UfF9wTfFcNg1dCeJEpavT9cb0fmzx9aX3724kW4Xj
         SoLHg/uxhVjr7uwSyBXRQyKwolk+uBTD/ow/EAHA7mMrv4PRsyXBUB4QFuTPDjY09j50
         FWeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m042JcolF5PWPyX7JPNAlzdnuZb2U10XN5uP6u8iU9w=;
        b=LWn6K3VkRJHD6rpLEi+si1lg9s7+2XtUok2wl05Zf3U9uRSOO/84CvSEgDEyR83SpF
         SCoC7vvMrRgt4VQ2SiewwZOyE8c0nGRgcu1S1HCMX9/Bj8Kwv5Lzi3EXkSPpAdwPvw7C
         8/08OQs0E/pyE221XrHLAQzBJIpG++edJh4zWadYXh1J1dokM3k8oo2gKBGvnmcZkZCP
         9k479xjgB9B2g8OSYSyoU6A1j4D0kqWfAize7909QWgp8y+j3l5YcWO7AguJjpY6QQTn
         m+3vHhZDhyFItSFd9DB0HxVeGDjGXeMwAW2yFRGnyxUiQXKenY/E0R9LHjTxTfqj8FJl
         rRow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532d1j5kK6TKNEdP2bOajVMnvitL5dC1kl3OLjFuSJD9h2uVMF39
	g22medjl8FUr5TKcr0HwoEE=
X-Google-Smtp-Source: ABdhPJwUAPEkLFnY1NQASaSbvxekTt6ygksYsULTIgKuhOcl822qT5zOsB8E8ZMLt9ZKVcWvTJ/u4w==
X-Received: by 2002:a05:6808:1c7:: with SMTP id x7mr4115773oic.47.1607106861996;
        Fri, 04 Dec 2020 10:34:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:a508:: with SMTP id v8ls679908ook.1.gmail; Fri, 04 Dec
 2020 10:34:21 -0800 (PST)
X-Received: by 2002:a4a:dc49:: with SMTP id q9mr4544707oov.85.1607106861447;
        Fri, 04 Dec 2020 10:34:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607106861; cv=none;
        d=google.com; s=arc-20160816;
        b=z7iTRAW/f2ZNsnTzYeNcjlEvsL93Maj4giDoXNVcHhsDgdz7pvLsMHpg4MAUuT+aRn
         pEUsxFBXHd93VhriZ72lZB5adF764WeWN+xUCkLumhxVA5HL+Hj5LWvxVPLthj60Hhub
         U+bG/uz5+5j9npj1mmBLKaElQCG6pxDsJDL3Jvn6LBJqLWi3nZvLzViAN5BZMhhqYSm+
         JUM6oDj/ewgeM8WCkf2Y5yACipuAuBf7zkCFTvaeAMPyHifEdD2KL9ccEZZen5zd5xb8
         b1j+/hrDwihOtvVxH/EwMRtSeudrPT5N7l11VtH32iKVOAzuota1rLVqrYUO+oNCGqEG
         RcKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=pc0zqNqgYsXOV2XIsrVAUh1GmAjlmmhpWg1s6wHwEFA=;
        b=p64AeJFv0LObU4oOfRpL3feZThTKL3E/auw7BxM+a8ZQAxIrADbnlV4mePPxIKM0GN
         wxVg7ZiCqdZoiLTC1XYVUPxMNXqD9wHrTX7hFoOUDGGk/smBIDrw6dJ6NoaCDnKWpUkJ
         Gl4mGgQdbKyE/SBG7sbRr6znUHXE+3kVgKdts+cchC9QRwvKxXOG0Agc1CFmeZXtn1fV
         kE7MT9fXxs18rLT3Wa0HssR0/Czo560Waa1baxRheOJuRgaCRclNd+yoc1bABt8ZX0gX
         Tjb0h7t89hH983YoXLXLCHNvKi8TuDPoYT+9M4ydVgUshZWXVTHqsRXoBonuW6I//gXo
         FYVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id l29si401672otb.3.2020.12.04.10.34.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Dec 2020 10:34:21 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: eZGUEXVuDmmSX6yedu1VnzoGhnbLU3JJztqmUaRitYhU+IKQPgqWsjcIjrHBVN+O8fQrz+z5SG
 VYI03N3hEESg==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="170853472"
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; 
   d="gz'50?scan'50,208,50";a="170853472"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2020 10:34:19 -0800
IronPort-SDR: OUfTQf7JI0wWvheZMYgFOebiwHXqXGdUAaN/SaTFvNCJX94mUIe/p5AF3e7uoqGyx4MbwxRpHw
 wwsy1IFWWbJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; 
   d="gz'50?scan'50,208,50";a="538902817"
Received: from lkp-server02.sh.intel.com (HELO f74a175f0d75) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 04 Dec 2020 10:34:15 -0800
Received: from kbuild by f74a175f0d75 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1klFuI-0000Jo-Vy; Fri, 04 Dec 2020 18:34:14 +0000
Date: Sat, 5 Dec 2020 02:33:40 +0800
From: kernel test robot <lkp@intel.com>
To: Maxime Ripard <maxime@cerno.tech>,
	Daniel Vetter <daniel.vetter@intel.com>,
	David Airlie <airlied@linux.ie>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Mark Rutland <mark.rutland@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Eric Anholt <eric@anholt.net>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 5/7] drm/vc4: kms: Remove unassigned_channels from the
 HVS state
Message-ID: <202012050217.EYQ0NVua-lkp@intel.com>
References: <20201204151138.1739736-6-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IS0zKkzwUGydFO0o"
Content-Disposition: inline
In-Reply-To: <20201204151138.1739736-6-maxime@cerno.tech>
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


--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Maxime,

I love your patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]
[also build test WARNING on linus/master v5.10-rc6 next-20201204]
[cannot apply to drm-intel/for-linux-next anholt/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Maxime-Ripard/vc4-Convert-to-drm_atomic_helper_commit/20201204-231528
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: riscv-randconfig-r014-20201204 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 32c501dd88b62787d3a5ffda7aabcf4650dbe3cd)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/1ac52fbc9e5e40633ecb194184b4ba69937e8b55
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Maxime-Ripard/vc4-Convert-to-drm_atomic_helper_commit/20201204-231528
        git checkout 1ac52fbc9e5e40633ecb194184b4ba69937e8b55
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/vc4/vc4_kms.c:16:
   In file included from include/drm/drm_atomic.h:31:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/gpu/drm/vc4/vc4_kms.c:16:
   In file included from include/drm/drm_atomic.h:31:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/gpu/drm/vc4/vc4_kms.c:16:
   In file included from include/drm/drm_atomic.h:31:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/gpu/drm/vc4/vc4_kms.c:16:
   In file included from include/drm/drm_atomic.h:31:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/gpu/drm/vc4/vc4_kms.c:16:
   In file included from include/drm/drm_atomic.h:31:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from drivers/gpu/drm/vc4/vc4_kms.c:16:
   In file included from include/drm/drm_atomic.h:31:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from drivers/gpu/drm/vc4/vc4_kms.c:16:
   In file included from include/drm/drm_atomic.h:31:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/gpu/drm/vc4/vc4_kms.c:902:4: warning: variable 'unassigned_channels' is uninitialized when used here [-Wuninitialized]
                           unassigned_channels |= BIT(i);
                           ^~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/vc4/vc4_kms.c:893:34: note: initialize the variable 'unassigned_channels' to silence this warning
           unsigned int unassigned_channels;
                                           ^
                                            = 0
   8 warnings generated.

vim +/unassigned_channels +902 drivers/gpu/drm/vc4/vc4_kms.c

   856	
   857	/*
   858	 * The BCM2711 HVS has up to 7 outputs connected to the pixelvalves and
   859	 * the TXP (and therefore all the CRTCs found on that platform).
   860	 *
   861	 * The naive (and our initial) implementation would just iterate over
   862	 * all the active CRTCs, try to find a suitable FIFO, and then remove it
   863	 * from the pool of available FIFOs. However, there are a few corner
   864	 * cases that need to be considered:
   865	 *
   866	 * - When running in a dual-display setup (so with two CRTCs involved),
   867	 *   we can update the state of a single CRTC (for example by changing
   868	 *   its mode using xrandr under X11) without affecting the other. In
   869	 *   this case, the other CRTC wouldn't be in the state at all, so we
   870	 *   need to consider all the running CRTCs in the DRM device to assign
   871	 *   a FIFO, not just the one in the state.
   872	 *
   873	 * - To fix the above, we can't use drm_atomic_get_crtc_state on all
   874	 *   enabled CRTCs to pull their CRTC state into the global state, since
   875	 *   a page flip would start considering their vblank to complete. Since
   876	 *   we don't have a guarantee that they are actually active, that
   877	 *   vblank might never happen, and shouldn't even be considered if we
   878	 *   want to do a page flip on a single CRTC. That can be tested by
   879	 *   doing a modetest -v first on HDMI1 and then on HDMI0.
   880	 *
   881	 * - Since we need the pixelvalve to be disabled and enabled back when
   882	 *   the FIFO is changed, we should keep the FIFO assigned for as long
   883	 *   as the CRTC is enabled, only considering it free again once that
   884	 *   CRTC has been disabled. This can be tested by booting X11 on a
   885	 *   single display, and changing the resolution down and then back up.
   886	 */
   887	static int vc4_pv_muxing_atomic_check(struct drm_device *dev,
   888					      struct drm_atomic_state *state)
   889	{
   890		struct vc4_hvs_state *hvs_new_state;
   891		struct drm_crtc_state *old_crtc_state, *new_crtc_state;
   892		struct drm_crtc *crtc;
   893		unsigned int unassigned_channels;
   894		unsigned int i;
   895	
   896		hvs_new_state = vc4_hvs_get_global_state(state);
   897		if (!hvs_new_state)
   898			return -EINVAL;
   899	
   900		for (i = 0; i < HVS_NUM_CHANNELS; i++)
   901			if (!hvs_new_state->fifo_state[i].in_use)
 > 902				unassigned_channels |= BIT(i);
   903	
   904		for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
   905			struct vc4_crtc_state *old_vc4_crtc_state =
   906				to_vc4_crtc_state(old_crtc_state);
   907			struct vc4_crtc_state *new_vc4_crtc_state =
   908				to_vc4_crtc_state(new_crtc_state);
   909			struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
   910			unsigned int matching_channels;
   911			unsigned int channel;
   912	
   913			/* Nothing to do here, let's skip it */
   914			if (old_crtc_state->enable == new_crtc_state->enable)
   915				continue;
   916	
   917			/* Muxing will need to be modified, mark it as such */
   918			new_vc4_crtc_state->update_muxing = true;
   919	
   920			/* If we're disabling our CRTC, we put back our channel */
   921			if (!new_crtc_state->enable) {
   922				channel = old_vc4_crtc_state->assigned_channel;
   923				hvs_new_state->fifo_state[channel].in_use = false;
   924				new_vc4_crtc_state->assigned_channel = VC4_HVS_CHANNEL_DISABLED;
   925				continue;
   926			}
   927	
   928			/*
   929			 * The problem we have to solve here is that we have
   930			 * up to 7 encoders, connected to up to 6 CRTCs.
   931			 *
   932			 * Those CRTCs, depending on the instance, can be
   933			 * routed to 1, 2 or 3 HVS FIFOs, and we need to set
   934			 * the change the muxing between FIFOs and outputs in
   935			 * the HVS accordingly.
   936			 *
   937			 * It would be pretty hard to come up with an
   938			 * algorithm that would generically solve
   939			 * this. However, the current routing trees we support
   940			 * allow us to simplify a bit the problem.
   941			 *
   942			 * Indeed, with the current supported layouts, if we
   943			 * try to assign in the ascending crtc index order the
   944			 * FIFOs, we can't fall into the situation where an
   945			 * earlier CRTC that had multiple routes is assigned
   946			 * one that was the only option for a later CRTC.
   947			 *
   948			 * If the layout changes and doesn't give us that in
   949			 * the future, we will need to have something smarter,
   950			 * but it works so far.
   951			 */
   952			matching_channels = unassigned_channels & vc4_crtc->data->hvs_available_channels;
   953			if (!matching_channels)
   954				return -EINVAL;
   955	
   956			channel = ffs(matching_channels) - 1;
   957			new_vc4_crtc_state->assigned_channel = channel;
   958			unassigned_channels &= ~BIT(channel);
   959			hvs_new_state->fifo_state[channel].in_use = true;
   960		}
   961	
   962		return 0;
   963	}
   964	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012050217.EYQ0NVua-lkp%40intel.com.

--IS0zKkzwUGydFO0o
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--IS0zKkzwUGydFO0o--
