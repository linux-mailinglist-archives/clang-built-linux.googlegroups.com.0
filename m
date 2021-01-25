Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPM2XGAAMGQERZAGIEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6981830215C
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 05:46:54 +0100 (CET)
Received: by mail-vs1-xe3f.google.com with SMTP id a5sf1463789vsa.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 Jan 2021 20:46:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611550013; cv=pass;
        d=google.com; s=arc-20160816;
        b=vw38KwhyK3E5RKvSNsWnf9M1L/ACUQEVdeKNOEujIoMQ67GL9S0LIfnH/X1M+tMoZ+
         p/8NV774nc+cQOtHwhO98ZWlNb46dmFObWE2ZZfo6EnSbeS2j6ciOHTYN2Vh3KciV9/4
         T3E0txfobZtG/AeB70RuHQICzppJo+pzNuxRmkz5+wasE8lAdPb8P9Z8JlTLD5CvUZQv
         WZ4zpNhYTN5i21tDlgJaQwFLKjxwsw99Lf22rAxRp0aZxV8uKPOgQNJr8iRfc1EQkJiX
         24zFAjrIG8ohjrUj1A25IA028Q2hixEAt+lC4RDLCMaPc/3OMWVn6Vib6s4WGJckjzLM
         CFMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=0CEsa5ZL0sq4fKeOkALxMwvgSrVwnRpdj0YwKmAROwE=;
        b=RZw6zHuNHqZr1w6b/K9fVSNbVemHQY9+JidIIt61i+me8gtcskCZRfJeCGO0cS4FCx
         A43VJNzYgf1ReXCwQd0ie2DJboE7OGlp1hEN7JN1PM9SXDk4pYRTXNGT4+paJnMC+H4H
         ehrikNfhj4/0uxSf2U/6EAsTzlQ71RKK4oKkwvT66l5Z7JhJjyWL+mAqRz7j2aOYW1sc
         cdSoa1Lj8XXs3bQR1Gn70OT71AEJrteL8jqAVsHMLer+mKWqoi/9VVKJEennI55upDv3
         Sd8BCRF1s+kqu7V/tEpi49RN1N9t0LeGbSRXEQsworwvaPORIddD8Dko9AxNrGPGrj0q
         C/Lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0CEsa5ZL0sq4fKeOkALxMwvgSrVwnRpdj0YwKmAROwE=;
        b=KYOfBAqSXBwnmNIbb44n3OiDwflP7RvM8xKR7R7iKzjnf7fxVp/Q4A8S74uCStdKV/
         6C1feu99j3gD5jye7Edkit1nPNp633JTfGJq+XoobKXkV0HHFB6uS/MfDRhPFsmt8snT
         OZpttAC0DnnI6CmgqcgJnfGyHUiAufPeuxf5NI4phLCW0Cp4AvD0Li/suabidEqQLxDE
         TKmJqRBlx3TuoxckbVpwOI1OlcIPDJPs5SoRFbCiTmB6UG0hkI6eJTrZMDJkGweW5GRE
         nGMqYQVyKTT/EqxoBEzNWJz4dS1eA4SgGL4fSPzXWaBlDkt0rUhrYF3Xm29P4+VlOFCc
         nRsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0CEsa5ZL0sq4fKeOkALxMwvgSrVwnRpdj0YwKmAROwE=;
        b=nq05yKkCtPGbjdBvaVGEIZ4Nk8+LbnX0So7pJ780fJ9c9gKcEGOce3/6JJewCm5Nsu
         su+LzHpVOQiuD3OViD0b2WGhL96ficrkKafFyWV9bhZJxTfzU70eBwpPPbufQmDKqml5
         C3a9bzQzObwklTgWqW6dxC+o4nBopHbHTvYIEBKcDjsFoQXEtSCGA5r434TWe7GzkDu3
         F0/v9JSUiQoGfIJGF4moMgZlhI1wnNSclCLWrJ+1L64BCI5qGJ1cQzLsY/3+tzwce+YG
         0piuoS6zGIG1y8QkTioPouQ10vNrrdhBNPUe8edLsYF7NFkTunRk6eTHLlrRq0GDu9Av
         8rhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532l8gXs2qkZoZzgyW+UdYpFnGcyW1no0FfOituZnM7D1hwmHY4O
	Z3oiC8EVVQDpJTgsNpTLUxg=
X-Google-Smtp-Source: ABdhPJyQhY8NPykbVYvIc9G/aiCcDCY0nRcjKZcmAD4WxptkLYczLvC5TyV+P9BWqu8hlsn9yG/O4A==
X-Received: by 2002:a67:6882:: with SMTP id d124mr295838vsc.14.1611550013466;
        Sun, 24 Jan 2021 20:46:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f902:: with SMTP id t2ls1491549vsq.1.gmail; Sun, 24 Jan
 2021 20:46:53 -0800 (PST)
X-Received: by 2002:a67:ed41:: with SMTP id m1mr79670vsp.57.1611550012969;
        Sun, 24 Jan 2021 20:46:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611550012; cv=none;
        d=google.com; s=arc-20160816;
        b=CchVg2eMHYH8rqx1VxR+CziH4QcxwwTkRFC1J+2n0yxIXXR2geXYiy0+EnLtyp+mUU
         cqq8OMizamj16PzYiY+TtzEwXD6IRJ+H04umCI+1zrgNWp3yeX/UXoG/HlwUgbak/tMZ
         PRFqZoO2v67ggiHjLeusjdOeLD3+wB0FgTysEXisTMmoaZ1ou6IsLSKVVf0FOZmDJ7lY
         1vYPG6mm/EGMYpqW2eZYYsZC+VXrDX6Isg9NIjOGw2xnI6qBYVxTYFdaUTzD19luHtdA
         amHT4MoTt/vgTEyfDUwGd+txba76X1N9QV4AuEhBf+B+MOa6FlLlScWipSNuA0o9J99v
         UxzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=iP260sR1SfI42eBhaZ5JBQxf9AZukfztL2QHXmeKEvw=;
        b=rpTzkbB4Quxa2w5YzRQOd7LUqJi1D4G7MbY/h3EtKAfbcNl3sakqWOsKkXTXVEw56H
         6FhL2xpb6qioS9u1LCiOpv5LTk6TIjOybNjVEhbSd9cP5lOwr7048K+hdonrK+8Ys1k7
         y2DfEwQnobZ+glfOeffFueAXz9lbvXbMxNEhYhugW/sxxoz3SVVrlMwvDuz+SCVxAlRo
         yjFRVqSC8RCC8Iw5fTqDV+8juq+/Js1gA1ze+y662i5hCBXLi+ovEF4oEDJQmu3q4Al+
         6wYihKIkgOkaGrOBfPZhDBKmBh+xtkgFWwwPpLDGupS1+Eu/WJRg0Q7RQVe6TSJv/erP
         cF0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id q11si1594298ual.1.2021.01.24.20.46.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Jan 2021 20:46:52 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: IlWmjedPPDzagO5OzMDfDf2iBeEJSyMw/rCZW9MRiNVa7Qll8ymP2TaS1nXYGztv/4TBLIqHlW
 X1D2AmSm4mSg==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="198437322"
X-IronPort-AV: E=Sophos;i="5.79,372,1602572400"; 
   d="gz'50?scan'50,208,50";a="198437322"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jan 2021 20:46:50 -0800
IronPort-SDR: OCu2gAVSCJQjY6tzs/aT/Fr7IGxNvJ/KcpE2YbHGG0N0T1RWn2VO+aK3wXDxrjjniGle+zymvl
 w9qpuX3JhqIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,372,1602572400"; 
   d="gz'50?scan'50,208,50";a="471788013"
Received: from lkp-server01.sh.intel.com (HELO 27c4e0a4b6d9) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 24 Jan 2021 20:46:48 -0800
Received: from kbuild by 27c4e0a4b6d9 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l3tl4-0000gk-G7; Mon, 25 Jan 2021 04:45:46 +0000
Date: Mon, 25 Jan 2021 12:43:01 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Dave Airlie <airlied@redhat.com>
Subject: drivers/gpu/drm/amd/amdgpu/amdgpu_rap.c:109:37: warning: unused
 variable 'amdgpu_rap_debugfs_ops'
Message-ID: <202101251247.p4RPgDtX-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="GvXjxJ+pjyke8COw"
Content-Disposition: inline
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


--GvXjxJ+pjyke8COw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   6ee1d745b7c9fd573fba142a2efdad76a9f1cb04
commit: 0c8d22fcae2f9590a07b000e1724f665820b77f7 Merge tag 'amd-drm-next-5.10-2020-09-03' of git://people.freedesktop.org/~agd5f/linux into drm-next
date:   5 months ago
config: s390-randconfig-r011-20210125 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 12d0753aca22896fda2cf76781b0ee0524d55065)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0c8d22fcae2f9590a07b000e1724f665820b77f7
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 0c8d22fcae2f9590a07b000e1724f665820b77f7
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:33:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from drivers/gpu/drm/amd/amdgpu/amdgpu_rap.c:27:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu.h:69:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:33:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from drivers/gpu/drm/amd/amdgpu/amdgpu_rap.c:27:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu.h:69:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:33:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from drivers/gpu/drm/amd/amdgpu/amdgpu_rap.c:27:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu.h:69:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:33:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/gpu/drm/amd/amdgpu/amdgpu_rap.c:27:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu.h:69:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:33:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> drivers/gpu/drm/amd/amdgpu/amdgpu_rap.c:109:37: warning: unused variable 'amdgpu_rap_debugfs_ops' [-Wunused-const-variable]
   static const struct file_operations amdgpu_rap_debugfs_ops = {
                                       ^
   21 warnings generated.
--
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:33:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c:28:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu.h:69:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:33:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c:28:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu.h:69:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:33:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c:28:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu.h:69:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:33:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c:28:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu.h:69:
   In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:33:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:17:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c:41:34: warning: unused variable 'clocks' [-Wunused-const-variable]
   static const struct cg_flag_name clocks[] = {
                                    ^
   21 warnings generated.


vim +/amdgpu_rap_debugfs_ops +109 drivers/gpu/drm/amd/amdgpu/amdgpu_rap.c

a4322e1881bed80d Wenhui Sheng 2020-08-11  108  
a4322e1881bed80d Wenhui Sheng 2020-08-11 @109  static const struct file_operations amdgpu_rap_debugfs_ops = {
a4322e1881bed80d Wenhui Sheng 2020-08-11  110  	.owner = THIS_MODULE,
a4322e1881bed80d Wenhui Sheng 2020-08-11  111  	.read = NULL,
a4322e1881bed80d Wenhui Sheng 2020-08-11  112  	.write = amdgpu_rap_debugfs_write,
a4322e1881bed80d Wenhui Sheng 2020-08-11  113  	.llseek = default_llseek
a4322e1881bed80d Wenhui Sheng 2020-08-11  114  };
a4322e1881bed80d Wenhui Sheng 2020-08-11  115  

:::::: The code at line 109 was first introduced by commit
:::::: a4322e1881bed80ddb904482f0b2e948fa7fd47e drm/amdgpu: add debugfs interface for RAP test

:::::: TO: Wenhui Sheng <Wenhui.Sheng@amd.com>
:::::: CC: Alex Deucher <alexander.deucher@amd.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101251247.p4RPgDtX-lkp%40intel.com.

--GvXjxJ+pjyke8COw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
QdmoVnOAhNzzRbIZxfOwVeJfXPPfebWJAQA=

--GvXjxJ+pjyke8COw--
