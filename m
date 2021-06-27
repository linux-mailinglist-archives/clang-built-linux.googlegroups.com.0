Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2OI4GDAMGQEJQPWDDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 645603B5316
	for <lists+clang-built-linux@lfdr.de>; Sun, 27 Jun 2021 13:43:38 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id x79-20020a25ce520000b02905519b84acfbsf11977442ybe.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Jun 2021 04:43:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624794217; cv=pass;
        d=google.com; s=arc-20160816;
        b=ie/ftiVADnx1LvHkDXF8nTuEnbwuLPddzZ2GZFjmclaIuATyDSNR20ojgpBByz3zZm
         8TKxipp/WKmHpsbUE3eeCUwjQTz41QyYYBiJXucuOTVFHy9IvriB/WouMPTs/wB1IPc0
         K9C3HR3v498oI2Hc/mTZZdYtjdNQf2zt79lgR0j1jKKpac4J2vZ4qBiRGeDS7t/RYkBv
         jDvzjVY+3KE0auUbdFIue8q+S0Hoth4RcBnYq4YB6YGx6OlZgnHNhUZXRYUUjgg/Ud8l
         mOWOxB2l+ERqmGDII6w1KDhxXL6041MwelrVJZYVzBaP/ncA5G2iwUvzNW52miwnTIJd
         GKuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TKyw68ILs6mvfA/tCwApcwvivNJ6lk+7PrZy+iqWyDg=;
        b=HtP1CBnFR2o1MfbApem39eq4woGsqgXgPSyei3ZiS4RC9JBAeyg8hAzjBvw6awuQaD
         xRVvBrm4ie9GnuCUKls1QCl7355aKqtksq8h5RJLdHbYiM35DCeJD99cwRocu7U5GQVi
         EpqO/4GwVlaSVl2vydVDp2UdeXWXOFwAcLy3NXGPpvpiyE16LBCPULBUHuqYb6Eg2P2I
         jhvJXWLscXuckEKUiUc+pb990NtVjYKygap1yxhIItF5Y+KHDr4U/7M/VG+yzNRQT3PZ
         o1/FlrtxOjFs5sRJpB45CTaPCAslJEOMsVKfge9cCk9G02Sjgd4Y2SFDSCVn3djxc4Kj
         eEYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TKyw68ILs6mvfA/tCwApcwvivNJ6lk+7PrZy+iqWyDg=;
        b=Nr149qHJbGTaRIuBrY6r4cWzqNCZcp1UBXYIRWDJezy3Xd3ZxJ9k5N3TR8lVr3zwrC
         YAkp1Wxe8X2n1BP2ycvE3Dy/LvNcxaHlcfkrAYf/Joho6geKpMx72I4KkvTdSsAfZlzW
         7rIlp353Ta+R+MH1dMiO9CG3xNw4+aOpcQAKCdOVKfcys7igD65iribs/SkFeHCjQrc1
         hDrhvr0X0RI7y7+rwctRD6PEV4Q15rVA/9SM0o+3/BzeZuPo5Iy18oJFU4Dj/9a/x4kq
         Jpj7Po/Lf1qes2JyjEAXv5twEUOJH4XVcLGJbm0kTx+rYDodEHixvUiUSWeLo4X5Uj3M
         F6xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TKyw68ILs6mvfA/tCwApcwvivNJ6lk+7PrZy+iqWyDg=;
        b=eZH0wXWs/2gBOk9Nis/39qhnauQBtzoRSFitWkKugocdk3FDSKgRvPMaPLQrszdtaa
         IEOy1NvRMJyM10CVoqnAKn7h0wMGYnSoEEr/O7HFtiXVw1rwgTNhrmDBzYwCQIRjJNFB
         TDzilzKR+W+B7iAv1ndLrTzPMAEipBiUDiwyBhk41c4hKdW+KyoPjwZPwByxfVutUL/J
         d9TSIfF+CxTFl5supvvkIawiAUqQ5afFAu/3ZVEf3YmLOmZq3iDDoQRwIsHaLTAmkVMX
         HlAszUIL/c/OhXofss3ndslttH2KiAmZIFKYF+8RcXM7iJ8ht6yfJSOm0N5oblSKH7Pg
         KtnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53394UHkZXT56lex+/W4oZXnOS+m2sQemm0fzG2HHoEWU9IOOAnB
	mVB0mCOyUOtcHfTyifC1gxY=
X-Google-Smtp-Source: ABdhPJxwIghI5SaA2A+R53P+WEEgycCERUOrnpM/qKp92cvQsJAZ6ZC+WsN3u8aIOz2Td2S9sKtkpw==
X-Received: by 2002:a25:3c5:: with SMTP id 188mr24169935ybd.298.1624794217178;
        Sun, 27 Jun 2021 04:43:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:874d:: with SMTP id e13ls8210890ybn.0.gmail; Sun, 27 Jun
 2021 04:43:36 -0700 (PDT)
X-Received: by 2002:a25:b9c6:: with SMTP id y6mr22623596ybj.19.1624794216395;
        Sun, 27 Jun 2021 04:43:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624794216; cv=none;
        d=google.com; s=arc-20160816;
        b=o5SRVgEQ7ZWAl/1D2R+nM+fnDunPLvEkHsoGyFwSBCPPzXvoX9n5FsXMjauVFIkX7+
         gmPlSrLDaX7NOp1QrAspqM7AJF35ie4tGEntEmwW/jgnTg4bEEWcUgpP7j2hvzTaMAFQ
         +O8jvtHx2cKuglP2nPcb6KuHt3wSCIzUvZ5XgjuF9+Y7clXE17OWLurtaTqh5ATe4rL0
         gr/mkAAn5g9ZNVb01QqwQYbBorXIGG4TwC8v6mmfvunal/3WUUhULghL8/H++oDTW2c6
         MmTU/xzPnmsL3niuyry+HPk9H0oxq0dAC9/uKQDq9VDgVGJqutaGFyjCis8w+NnHejxc
         AEMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=cDbqRbdpu50SPUoxo1DMsynMDSrQTdN9NmYtqBbXxoI=;
        b=K3vYgdgP6e/oCION+I9rLTc810Okoe2yCS8jgKZ27i+FSirkDeQwaNIMndOFVl0GtN
         0KWHJjGnp+Sif6UbPRM/bDbvI6LYJwXoty7vVBj8R2f54dweu4udFwaIhLGBsaj0DSbK
         k9A9zDzT5Bo2UImdzYpnAOZlJr4gpsbHFisv+jZEmmvSbqNa19TMjhco+c3+1boX37S+
         gsldbLc893Iw4cbssno2gIAUXq4X13Cvumql7Fuye/yArKMr6nEb//4Bh3/HBE6qgmMm
         Vh/abALWcVWkWwG8FixoxS0UK83cjbUatoDCZFCD6+Mo4y7KBR183ZtEYzQU/hIdh3St
         TZJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id q62si1772141ybc.4.2021.06.27.04.43.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Jun 2021 04:43:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-IronPort-AV: E=McAfee;i="6200,9189,10027"; a="188218278"
X-IronPort-AV: E=Sophos;i="5.83,302,1616482800"; 
   d="gz'50?scan'50,208,50";a="188218278"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jun 2021 04:43:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,302,1616482800"; 
   d="gz'50?scan'50,208,50";a="418857336"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2021 04:43:29 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lxTCB-00089T-Pc; Sun, 27 Jun 2021 11:43:27 +0000
Date: Sun, 27 Jun 2021 19:43:14 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Dave Airlie <airlied@redhat.com>
Subject: drivers/gpu/drm/amd/amdgpu/amdgpu_rap.c:109:37: warning: unused
 variable 'amdgpu_rap_debugfs_ops'
Message-ID: <202106271903.E9IpihWp-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jRHKVT23PllUwdXP"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--jRHKVT23PllUwdXP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Dave,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   625acffd7ae2c52898d249e6c5c39f348db0d8df
commit: 0c8d22fcae2f9590a07b000e1724f665820b77f7 Merge tag 'amd-drm-next-5.10-2020-09-03' of git://people.freedesktop.org/~agd5f/linux into drm-next
date:   10 months ago
config: s390-buildonly-randconfig-r001-20210627 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 59558129276098d62046c8cda92240d292cbfb1c)
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

a4322e1881bed8 Wenhui Sheng 2020-08-11  108  
a4322e1881bed8 Wenhui Sheng 2020-08-11 @109  static const struct file_operations amdgpu_rap_debugfs_ops = {
a4322e1881bed8 Wenhui Sheng 2020-08-11  110  	.owner = THIS_MODULE,
a4322e1881bed8 Wenhui Sheng 2020-08-11  111  	.read = NULL,
a4322e1881bed8 Wenhui Sheng 2020-08-11  112  	.write = amdgpu_rap_debugfs_write,
a4322e1881bed8 Wenhui Sheng 2020-08-11  113  	.llseek = default_llseek
a4322e1881bed8 Wenhui Sheng 2020-08-11  114  };
a4322e1881bed8 Wenhui Sheng 2020-08-11  115  

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106271903.E9IpihWp-lkp%40intel.com.

--jRHKVT23PllUwdXP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--jRHKVT23PllUwdXP--
