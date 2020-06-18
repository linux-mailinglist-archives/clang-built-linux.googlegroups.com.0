Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQPRVL3QKGQEJAWB4CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 887F51FDA7E
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 02:43:47 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id c7sf3028072pfi.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 17:43:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592441026; cv=pass;
        d=google.com; s=arc-20160816;
        b=zf0ueEuhmuXqGkU3uqkuPKADw91aLcWqUDeGS7AbO9pVnyRwRLxwZ9eByA0GJxtWZA
         8N9ovEzn0iqSl0ZNUbssZDNs2dv+gLKOLi3PNJSxQOLMCSkGJqCws3JfMeQK90CyC3xR
         LHa9AfMucpzyZebNb5qRmE2gqRFufTK1OJY5xhWbt0jPitlZaSu2sgRq0fbfpDKafZ0k
         uXnk6lOzotVIHEvKtFk7t/w173UFImOA1xETbfuEBchWyoreRFKW2qyUJ0CEj8kWPf2r
         C2SpSpC4IUYzHa14vNWkBIOG3Rx6kCztuqhuBDichoJc7Glb1bzlT37I7AMgPqw+0kHI
         FBpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Y+jd8Uvf+44+3Ld8Hst1ptThTsWHH0/JDJl72pLRzNI=;
        b=Nzy+WbLb3yP0VXJIxRwZSO+S7TOzOwW1mRXM/DnadjvsUMlrKGIsObZhOC6SMBj0WF
         92ir/YY/MY8E45XmxEU4SYA7kOTCrtQbeLkMer0KcR62LOeYCLIGOPq2sq0Gvje8oYfw
         koKMD+eZxvbfN10jrYO8mNT3sczMl47iNOF/1NLCjKxpshOSGY4Bqhco7+aBxNqC7y4v
         iZQZL0uztNHEnViTFLe+hsxIcb3T3Y/ZHufohWRD2H6mB68lA6ViXBWLyWjUQJPqMQ81
         G/TBzaqMYEhlO+wW0REuK2dM8BBFe9VP3U/Ll9tUpGz14NqrAAteiELhqeECnOYrmXuN
         kQ0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y+jd8Uvf+44+3Ld8Hst1ptThTsWHH0/JDJl72pLRzNI=;
        b=jPiFVdsuzXLbMZMuiUwn34SBTtPRivMNUMjOHVp9SPT+FjK3QThWa3zVh4QsN/+ihg
         GzX5nAH68/kNl4gQR72+aJJqE5Ns9M5vz5BQQJ0jpNc4BheB/H3CEJaseGebtL6YgdZ3
         xt+IYv0K/t9p7IS9/2GL4K4HdIU+hBnsAKGZ8Fay5BQoTEFqQz7aOBI9haiyIgv+i7N3
         aqKYUnrSj2YTD2BLSn8MENVlKS+j1onCpkSAFQ/i+uqbFDTiZ7C56mercGMRX9BPyC3x
         qQUAzh8q0DQCsdgh9qJ+94xGrh/K6pkTcHdC9bnGUU5Fwu8M2ajWeYAiSHLpPhYyORJm
         Gvew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y+jd8Uvf+44+3Ld8Hst1ptThTsWHH0/JDJl72pLRzNI=;
        b=TpXrA3zxcIcs6Stj0RZPP3wDPoGMMtDM6XrwGfKD0aujj7PXsdfXVLIQAX5ZLUy/oC
         N9iB2ymXswRh+fc5aqGoADuM3xzBPI1HozoMftAnUd/gDTizmaou8ecr4FQ0gHN2+GPi
         ZP7fIQLXh3Sb3RjLtyhDw8PHCVwSSM1VQlFNgqn3USxTXj6vwtSq4DE681fQl5QnffSH
         U41+r1wX8L0lakiXy3BIbEysbEwGyjHaQ/DODtzXqEU2p+zp7WUgrS2ToyWxXRfO8XwF
         kTIxmn1WaJf1Ngk2oqtc4qUbNoQbMnwN23wrWZYYApcSaol7b+H//XxoYpcnwyqM9gkv
         Okvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533StnX5ZKUfC/WiZK0RNFX8CjXcHvNXQm5vBLWCXZJbH5sazsRD
	ydImThZtMHSXeY+oPAmdyWc=
X-Google-Smtp-Source: ABdhPJyw4GlWy+Y8Pf4cmRDMZmVpbD5yS6mzkBm9uugAXjofDS/+MVjM+oKD+d/f0xVcXzx5ZMDF5w==
X-Received: by 2002:a65:538b:: with SMTP id x11mr1234480pgq.96.1592441025976;
        Wed, 17 Jun 2020 17:43:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f410:: with SMTP id g16ls1040400pgi.0.gmail; Wed, 17 Jun
 2020 17:43:45 -0700 (PDT)
X-Received: by 2002:a63:d70f:: with SMTP id d15mr1300349pgg.322.1592441025447;
        Wed, 17 Jun 2020 17:43:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592441025; cv=none;
        d=google.com; s=arc-20160816;
        b=xuO46Vjn+UKmtcKslgcTJVucTe0rA7wJOJOkMDAjVrlmrQ8e3nVueOBVwm5sYIiPJ2
         yj2dPOJ62AyA90xr0/0KKskp7vkn6XlXG+YH7mRXOIYYcSxPKOBRPpJkNJkGt5a8nF4b
         V+qzMNckNavlA/MSKmTvdlSKjRNZ3pqoJ2yCwWo/OPZ7REvXOM7relURAON5jG6rx95i
         hKq+U0JTxm9pX7jxhMyEBrtRyuD3ceCedYL3Lg/lboQFhzGKh4OPV2iybzWjZZyyy2De
         ac2zdHJiX8ApGWMV5V0t+lr2kdqjb0YCtbfbkQWvEFD0CyzldH8vhI6zvneuo2FaCSoi
         bIUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=oTB9tti8teFXm+lVz2E3zps6o4QV0UfSt6xiTjJPceE=;
        b=AsphNHT5FYYeIkrSdIPDQYktW4NI/k/sR5+2sLBw8C2DDdI79nVwXy2FSajYeglu0C
         nxZ+wvpCuwDGmkWrCgd6Uzb/M+EN8ZzZ/aTRcRVlJbff/g+VH92X2xeA1RTMP1EyL1gk
         SbqnCtIVw3Owsl7FDGBlwcqQb5eN4ScZIiEyBo+nHL8H+vbKxvb5Fc63SwKBBxiA1zhm
         GSvua1Fmj+yD5VL/o0q+F7kNfe2qsD9Joguiir3B4Gf7hUmWRJTnym6rfVzD+Pj5ctsg
         ETbngjEp1BkPPtspoo39G/MgVdiGsbV4Y1OSDUvZFQnqL6Xm/yIKkXGrSGmt0XKyI5An
         Je7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id u2si71431plq.0.2020.06.17.17.43.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 17:43:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: bcoy7U9iM5taY2apAnvv7GpuY1egIcGsD80+CnLrGbS0ZjxkaiZ79QSqvL+c/XadG1O0LX8vzA
 EqPfIO/qmlFQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2020 17:43:43 -0700
IronPort-SDR: NZIZasaHO/YhiUtkVRm1C6fLtsWQWxFtaqxBf/9qplQ/XFUoXknlCdXrJlL62m87cR9Mou3nLD
 WXzWoYhsvmyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; 
   d="gz'50?scan'50,208,50";a="317682129"
Received: from lkp-server02.sh.intel.com (HELO cd649bb48ab3) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 17 Jun 2020 17:43:41 -0700
Received: from kbuild by cd649bb48ab3 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jlieb-00009k-0S; Thu, 18 Jun 2020 00:43:41 +0000
Date: Thu, 18 Jun 2020 08:43:18 +0800
From: kernel test robot <lkp@intel.com>
To: Leo Liu <leo.liu@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Alex Deucher <alexander.deucher@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:442:6: warning: no previous
 prototype for function 'jpeg_v2_0_dec_ring_insert_start'
Message-ID: <202006180815.uFac09PJ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FL5UXtIhxfXey3p5"
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


--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   1b5044021070efa3259f3e9548dc35d1eb6aa844
commit: 6ac27241106bc946bd50032f4cd96899c6a6fe69 drm/amdgpu: add JPEG v2.0 function supports
date:   7 months ago
config: s390-randconfig-r004-20200617 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 487ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390-linux-gnu
        git checkout 6ac27241106bc946bd50032f4cd96899c6a6fe69
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:33:
In file included from include/drm/drm_crtc.h:31:
In file included from include/linux/fb.h:17:
In file included from arch/s390/include/asm/io.h:76:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:118:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |                                 ^
In file included from drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:24:
In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu.h:57:
In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:33:
In file included from include/drm/drm_crtc.h:31:
In file included from include/linux/fb.h:17:
In file included from arch/s390/include/asm/io.h:76:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:118:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |                                 ^
In file included from drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:24:
In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu.h:57:
In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:33:
In file included from include/drm/drm_crtc.h:31:
In file included from include/linux/fb.h:17:
In file included from arch/s390/include/asm/io.h:76:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:118:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0xff000000UL) >> 24)))
^
In file included from drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:24:
In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu.h:57:
In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:33:
In file included from include/drm/drm_crtc.h:31:
In file included from include/linux/fb.h:17:
In file included from arch/s390/include/asm/io.h:76:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:12: note: expanded from macro '__swab32'
__fswab32(x))
^
In file included from drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:24:
In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu.h:57:
In file included from drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:33:
In file included from include/drm/drm_crtc.h:31:
In file included from include/linux/fb.h:17:
In file included from arch/s390/include/asm/io.h:76:
include/asm-generic/io.h:503:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
__raw_writeb(value, PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:513:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
__raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:523:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
__raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:585:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
readsb(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:593:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
readsw(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:601:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
readsl(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:610:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
writesb(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:619:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
writesw(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:628:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
writesl(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
>> drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:442:6: warning: no previous prototype for function 'jpeg_v2_0_dec_ring_insert_start' [-Wmissing-prototypes]
void jpeg_v2_0_dec_ring_insert_start(struct amdgpu_ring *ring)
^
drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:442:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void jpeg_v2_0_dec_ring_insert_start(struct amdgpu_ring *ring)
^
static
>> drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:460:6: warning: no previous prototype for function 'jpeg_v2_0_dec_ring_insert_end' [-Wmissing-prototypes]
void jpeg_v2_0_dec_ring_insert_end(struct amdgpu_ring *ring)
^
drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:460:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void jpeg_v2_0_dec_ring_insert_end(struct amdgpu_ring *ring)
^
static
>> drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:479:6: warning: no previous prototype for function 'jpeg_v2_0_dec_ring_emit_fence' [-Wmissing-prototypes]
void jpeg_v2_0_dec_ring_emit_fence(struct amdgpu_ring *ring, u64 addr, u64 seq,
^
drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:479:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void jpeg_v2_0_dec_ring_emit_fence(struct amdgpu_ring *ring, u64 addr, u64 seq,
^
static
>> drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:528:6: warning: no previous prototype for function 'jpeg_v2_0_dec_ring_emit_ib' [-Wmissing-prototypes]
void jpeg_v2_0_dec_ring_emit_ib(struct amdgpu_ring *ring,
^
drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:528:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void jpeg_v2_0_dec_ring_emit_ib(struct amdgpu_ring *ring,
^
static
>> drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:579:6: warning: no previous prototype for function 'jpeg_v2_0_dec_ring_emit_reg_wait' [-Wmissing-prototypes]
void jpeg_v2_0_dec_ring_emit_reg_wait(struct amdgpu_ring *ring, uint32_t reg,
^
drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:579:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void jpeg_v2_0_dec_ring_emit_reg_wait(struct amdgpu_ring *ring, uint32_t reg,
^
static
>> drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:606:6: warning: no previous prototype for function 'jpeg_v2_0_dec_ring_emit_vm_flush' [-Wmissing-prototypes]
void jpeg_v2_0_dec_ring_emit_vm_flush(struct amdgpu_ring *ring,
^
drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:606:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void jpeg_v2_0_dec_ring_emit_vm_flush(struct amdgpu_ring *ring,
^
static
>> drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:621:6: warning: no previous prototype for function 'jpeg_v2_0_dec_ring_emit_wreg' [-Wmissing-prototypes]
void jpeg_v2_0_dec_ring_emit_wreg(struct amdgpu_ring *ring, uint32_t reg, uint32_t val)
^
drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:621:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void jpeg_v2_0_dec_ring_emit_wreg(struct amdgpu_ring *ring, uint32_t reg, uint32_t val)
^
static
>> drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:639:6: warning: no previous prototype for function 'jpeg_v2_0_dec_ring_nop' [-Wmissing-prototypes]
void jpeg_v2_0_dec_ring_nop(struct amdgpu_ring *ring, uint32_t count)
^
drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c:639:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void jpeg_v2_0_dec_ring_nop(struct amdgpu_ring *ring, uint32_t count)
^
static
28 warnings generated.

vim +/jpeg_v2_0_dec_ring_insert_start +442 drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c

   434	
   435	/**
   436	 * jpeg_v2_0_dec_ring_insert_start - insert a start command
   437	 *
   438	 * @ring: amdgpu_ring pointer
   439	 *
   440	 * Write a start command to the ring.
   441	 */
 > 442	void jpeg_v2_0_dec_ring_insert_start(struct amdgpu_ring *ring)
   443	{
   444		amdgpu_ring_write(ring, PACKETJ(mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET,
   445			0, 0, PACKETJ_TYPE0));
   446		amdgpu_ring_write(ring, 0x68e04);
   447	
   448		amdgpu_ring_write(ring, PACKETJ(JRBC_DEC_EXTERNAL_REG_WRITE_ADDR,
   449			0, 0, PACKETJ_TYPE0));
   450		amdgpu_ring_write(ring, 0x80010000);
   451	}
   452	
   453	/**
   454	 * jpeg_v2_0_dec_ring_insert_end - insert a end command
   455	 *
   456	 * @ring: amdgpu_ring pointer
   457	 *
   458	 * Write a end command to the ring.
   459	 */
 > 460	void jpeg_v2_0_dec_ring_insert_end(struct amdgpu_ring *ring)
   461	{
   462		amdgpu_ring_write(ring, PACKETJ(mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET,
   463			0, 0, PACKETJ_TYPE0));
   464		amdgpu_ring_write(ring, 0x68e04);
   465	
   466		amdgpu_ring_write(ring, PACKETJ(JRBC_DEC_EXTERNAL_REG_WRITE_ADDR,
   467			0, 0, PACKETJ_TYPE0));
   468		amdgpu_ring_write(ring, 0x00010000);
   469	}
   470	
   471	/**
   472	 * jpeg_v2_0_dec_ring_emit_fence - emit an fence & trap command
   473	 *
   474	 * @ring: amdgpu_ring pointer
   475	 * @fence: fence to emit
   476	 *
   477	 * Write a fence and a trap command to the ring.
   478	 */
 > 479	void jpeg_v2_0_dec_ring_emit_fence(struct amdgpu_ring *ring, u64 addr, u64 seq,
   480					unsigned flags)
   481	{
   482		WARN_ON(flags & AMDGPU_FENCE_FLAG_64BIT);
   483	
   484		amdgpu_ring_write(ring, PACKETJ(mmUVD_JPEG_GPCOM_DATA0_INTERNAL_OFFSET,
   485			0, 0, PACKETJ_TYPE0));
   486		amdgpu_ring_write(ring, seq);
   487	
   488		amdgpu_ring_write(ring,	PACKETJ(mmUVD_JPEG_GPCOM_DATA1_INTERNAL_OFFSET,
   489			0, 0, PACKETJ_TYPE0));
   490		amdgpu_ring_write(ring, seq);
   491	
   492		amdgpu_ring_write(ring,	PACKETJ(mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_LOW_INTERNAL_OFFSET,
   493			0, 0, PACKETJ_TYPE0));
   494		amdgpu_ring_write(ring, lower_32_bits(addr));
   495	
   496		amdgpu_ring_write(ring,	PACKETJ(mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_HIGH_INTERNAL_OFFSET,
   497			0, 0, PACKETJ_TYPE0));
   498		amdgpu_ring_write(ring, upper_32_bits(addr));
   499	
   500		amdgpu_ring_write(ring,	PACKETJ(mmUVD_JPEG_GPCOM_CMD_INTERNAL_OFFSET,
   501			0, 0, PACKETJ_TYPE0));
   502		amdgpu_ring_write(ring, 0x8);
   503	
   504		amdgpu_ring_write(ring,	PACKETJ(mmUVD_JPEG_GPCOM_CMD_INTERNAL_OFFSET,
   505			0, PACKETJ_CONDITION_CHECK0, PACKETJ_TYPE4));
   506		amdgpu_ring_write(ring, 0);
   507	
   508		amdgpu_ring_write(ring,	PACKETJ(mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET,
   509			0, 0, PACKETJ_TYPE0));
   510		amdgpu_ring_write(ring, 0x3fbc);
   511	
   512		amdgpu_ring_write(ring, PACKETJ(JRBC_DEC_EXTERNAL_REG_WRITE_ADDR,
   513			0, 0, PACKETJ_TYPE0));
   514		amdgpu_ring_write(ring, 0x1);
   515	
   516		amdgpu_ring_write(ring, PACKETJ(0, 0, 0, PACKETJ_TYPE7));
   517		amdgpu_ring_write(ring, 0);
   518	}
   519	
   520	/**
   521	 * jpeg_v2_0_dec_ring_emit_ib - execute indirect buffer
   522	 *
   523	 * @ring: amdgpu_ring pointer
   524	 * @ib: indirect buffer to execute
   525	 *
   526	 * Write ring commands to execute the indirect buffer.
   527	 */
 > 528	void jpeg_v2_0_dec_ring_emit_ib(struct amdgpu_ring *ring,
   529					struct amdgpu_job *job,
   530					struct amdgpu_ib *ib,
   531					uint32_t flags)
   532	{
   533		unsigned vmid = AMDGPU_JOB_GET_VMID(job);
   534	
   535		amdgpu_ring_write(ring, PACKETJ(mmUVD_LMI_JRBC_IB_VMID_INTERNAL_OFFSET,
   536			0, 0, PACKETJ_TYPE0));
   537		amdgpu_ring_write(ring, (vmid | (vmid << 4)));
   538	
   539		amdgpu_ring_write(ring, PACKETJ(mmUVD_LMI_JPEG_VMID_INTERNAL_OFFSET,
   540			0, 0, PACKETJ_TYPE0));
   541		amdgpu_ring_write(ring, (vmid | (vmid << 4)));
   542	
   543		amdgpu_ring_write(ring,	PACKETJ(mmUVD_LMI_JRBC_IB_64BIT_BAR_LOW_INTERNAL_OFFSET,
   544			0, 0, PACKETJ_TYPE0));
   545		amdgpu_ring_write(ring, lower_32_bits(ib->gpu_addr));
   546	
   547		amdgpu_ring_write(ring,	PACKETJ(mmUVD_LMI_JRBC_IB_64BIT_BAR_HIGH_INTERNAL_OFFSET,
   548			0, 0, PACKETJ_TYPE0));
   549		amdgpu_ring_write(ring, upper_32_bits(ib->gpu_addr));
   550	
   551		amdgpu_ring_write(ring,	PACKETJ(mmUVD_JRBC_IB_SIZE_INTERNAL_OFFSET,
   552			0, 0, PACKETJ_TYPE0));
   553		amdgpu_ring_write(ring, ib->length_dw);
   554	
   555		amdgpu_ring_write(ring,	PACKETJ(mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW_INTERNAL_OFFSET,
   556			0, 0, PACKETJ_TYPE0));
   557		amdgpu_ring_write(ring, lower_32_bits(ring->gpu_addr));
   558	
   559		amdgpu_ring_write(ring,	PACKETJ(mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH_INTERNAL_OFFSET,
   560			0, 0, PACKETJ_TYPE0));
   561		amdgpu_ring_write(ring, upper_32_bits(ring->gpu_addr));
   562	
   563		amdgpu_ring_write(ring,	PACKETJ(0, 0, PACKETJ_CONDITION_CHECK0, PACKETJ_TYPE2));
   564		amdgpu_ring_write(ring, 0);
   565	
   566		amdgpu_ring_write(ring,	PACKETJ(mmUVD_JRBC_RB_COND_RD_TIMER_INTERNAL_OFFSET,
   567			0, 0, PACKETJ_TYPE0));
   568		amdgpu_ring_write(ring, 0x01400200);
   569	
   570		amdgpu_ring_write(ring, PACKETJ(mmUVD_JRBC_RB_REF_DATA_INTERNAL_OFFSET,
   571			0, 0, PACKETJ_TYPE0));
   572		amdgpu_ring_write(ring, 0x2);
   573	
   574		amdgpu_ring_write(ring,	PACKETJ(mmUVD_JRBC_STATUS_INTERNAL_OFFSET,
   575			0, PACKETJ_CONDITION_CHECK3, PACKETJ_TYPE3));
   576		amdgpu_ring_write(ring, 0x2);
   577	}
   578	
 > 579	void jpeg_v2_0_dec_ring_emit_reg_wait(struct amdgpu_ring *ring, uint32_t reg,
   580					uint32_t val, uint32_t mask)
   581	{
   582		uint32_t reg_offset = (reg << 2);
   583	
   584		amdgpu_ring_write(ring, PACKETJ(mmUVD_JRBC_RB_COND_RD_TIMER_INTERNAL_OFFSET,
   585			0, 0, PACKETJ_TYPE0));
   586		amdgpu_ring_write(ring, 0x01400200);
   587	
   588		amdgpu_ring_write(ring,	PACKETJ(mmUVD_JRBC_RB_REF_DATA_INTERNAL_OFFSET,
   589			0, 0, PACKETJ_TYPE0));
   590		amdgpu_ring_write(ring, val);
   591	
   592		amdgpu_ring_write(ring, PACKETJ(mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET,
   593			0, 0, PACKETJ_TYPE0));
   594		if (reg_offset >= 0x10000 && reg_offset <= 0x105ff) {
   595			amdgpu_ring_write(ring, 0);
   596			amdgpu_ring_write(ring,
   597				PACKETJ((reg_offset >> 2), 0, 0, PACKETJ_TYPE3));
   598		} else {
   599			amdgpu_ring_write(ring, reg_offset);
   600			amdgpu_ring_write(ring,	PACKETJ(JRBC_DEC_EXTERNAL_REG_WRITE_ADDR,
   601				0, 0, PACKETJ_TYPE3));
   602		}
   603		amdgpu_ring_write(ring, mask);
   604	}
   605	
 > 606	void jpeg_v2_0_dec_ring_emit_vm_flush(struct amdgpu_ring *ring,
   607					unsigned vmid, uint64_t pd_addr)
   608	{
   609		struct amdgpu_vmhub *hub = &ring->adev->vmhub[ring->funcs->vmhub];
   610		uint32_t data0, data1, mask;
   611	
   612		pd_addr = amdgpu_gmc_emit_flush_gpu_tlb(ring, vmid, pd_addr);
   613	
   614		/* wait for register write */
   615		data0 = hub->ctx0_ptb_addr_lo32 + vmid * 2;
   616		data1 = lower_32_bits(pd_addr);
   617		mask = 0xffffffff;
   618		jpeg_v2_0_dec_ring_emit_reg_wait(ring, data0, data1, mask);
   619	}
   620	
 > 621	void jpeg_v2_0_dec_ring_emit_wreg(struct amdgpu_ring *ring, uint32_t reg, uint32_t val)
   622	{
   623		uint32_t reg_offset = (reg << 2);
   624	
   625		amdgpu_ring_write(ring,	PACKETJ(mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET,
   626			0, 0, PACKETJ_TYPE0));
   627		if (reg_offset >= 0x10000 && reg_offset <= 0x105ff) {
   628			amdgpu_ring_write(ring, 0);
   629			amdgpu_ring_write(ring,
   630				PACKETJ((reg_offset >> 2), 0, 0, PACKETJ_TYPE0));
   631		} else {
   632			amdgpu_ring_write(ring, reg_offset);
   633			amdgpu_ring_write(ring,	PACKETJ(JRBC_DEC_EXTERNAL_REG_WRITE_ADDR,
   634				0, 0, PACKETJ_TYPE0));
   635		}
   636		amdgpu_ring_write(ring, val);
   637	}
   638	
 > 639	void jpeg_v2_0_dec_ring_nop(struct amdgpu_ring *ring, uint32_t count)
   640	{
   641		int i;
   642	
   643		WARN_ON(ring->wptr % 2 || count % 2);
   644	
   645		for (i = 0; i < count / 2; i++) {
   646			amdgpu_ring_write(ring, PACKETJ(0, 0, 0, PACKETJ_TYPE6));
   647			amdgpu_ring_write(ring, 0);
   648		}
   649	}
   650	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006180815.uFac09PJ%25lkp%40intel.com.

--FL5UXtIhxfXey3p5
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICK6p6l4AAy5jb25maWcAjDzbcts4su/zFarMy+5DJpZvGe8pP0AgKGFFEgwBSrZfWIqs
ZHTGtlySPDM5X3+6AV4AEJQztZWN0A2g0Wj0nfn1l19H5O24e14dt+vV09OP0ffNy2a/Om4e
R9+2T5v/GUVilAk1YhFXvwFysn15++fT4eLmbHT12+VvZx/368vRfLN/2TyN6O7l2/b7G8ze
7l5++fUX+N+vMPj8Cgvt/zNaP61evo/+2uwPAB6Nx7+d/XY2+tf37fE/nz7Bn8/b/X63//T0
9Ndz9brf/e9mfRxd/v55vTr7/G29/nz1eHX++epqffNtc77ZnF19XX+9+Hq9gf/Wl5f/hq2o
yGI+raaUVgtWSC6y27NmEMa4rGhCsuntj3YQf7a44/EZ/GdNoCSrEp7NrQm0mhFZEZlWU6FE
EMAzmMMskMikKkqqRCG7UV58qZaisNaelDyJFE9Zxe4UmSSskqJQHVzNCkYiWD4W8EeliMTJ
msNTfWNPo8Pm+PbaMYJnXFUsW1SkmMJBUq5uL87xQhrC0pzDNopJNdoeRi+7I67QIcxgP1b0
4DU0EZQkDe8+fAgNV6S0maRPWEmSKAt/RhasmrMiY0k1feB5h25DJgA5D4OSh5SEIXcPQzPE
EOAyDCgzZFbBpGQRYLQcsugOcMij3Z+FhAf53pJ/CgqHOA2+PAW2DxSgPGIxKRNVzYRUGUnZ
7Yd/vexeNv/+0C0klyR0ZnkvFzynHRvrAfx/qhKbDbmQ/K5Kv5SsZEFaaSGkrFKWiuK+IkoR
OgvilZIlfBIEkRK0VoBMfbmkoDODgcSRJGneEzzO0eHt6+HH4bh5thQLy1jBqX67dGaLKo5E
IiU8c8ckT7uBZnoqOQItFuWkkKwea0m3d4vYpJzG0j3i5uVxtPvmEetvphXKojufB6bwXOds
wTIlm8Or7TMo6ND5FafzSmRMzoSll2YPVQ5riYhTm/xMIIRHSfhuNTh0MXw6q0AuNeFaYbYH
7RHWzAE5ZmmuYE2tdzsBq8cXIikzRYr7ICU1VoCWZj4VML1hD83LT2p1+HN0BHJGKyDtcFwd
D6PVer17ezluX753DFvwAmbnZUWoXoPbxicArDKi+MI5w0RGQIeg8FIRMayo0RZIRZQMHUJy
hycgfM3rjrhEOxMFxeonzmm9VDgGlyIB8kVmL6dZVtByJAPiBOytANaxBH6A8QNpssRLOhh6
jjeEh++vA/xIErRxqchcSMYYWCE2pZOES+XCYpKJUt1eX/YHq4SR+HZ83Z1aLyboBI8f5KF7
8FYxzM1fLFUxbyVOUHvYWGDLbUgEmtG4kjMeq9vzM3scLyEldxZ8fN6JMs/UHGxvzLw1xhfm
kuT6j83jG7hpo2+b1fFtvzno4fokAWiztNaissxz8FZklZUpqSYEHCvqSDudFqLMpS2KoNjp
NCjPk2ReTwjbBQ2qJJ35susi5DySp+BFNGCAa3gMwvbAilMos3LKVBK2PXAfkqmTFERswemA
8TMYsMjgs28XAeMQVrJgusG4gPIIKAbgHp3nAuQC9S14p47e0czV/tvwPYBViSVsD3qSEhV0
JAqWkHvLA4SLhTNrz7SILEnH3ySF1aQoC8os/7CIPLcQBjxvEEZqJ7B7mpHnPtmowptqOX3g
x4scTA9/YFUsCrRs8H8pSLPDHR9Nwl/CzpDxeWyvo+TR+NrxjwAH1B5lOWpPUHGEWuHDJI+7
H75y9NZKQatzELrCuUmQ0BR0ZFU7AWE6kfWtk2DfMBI3PDOekQxMfEeCcepa4+2oH/93laXc
jg4sdcGSGHS3K5ITAk5SXIbpKBW766brn/D+PdabYZrmd3Rmb5YL2zeSfJqRJLbEUx/HHtAe
kz0gZ6DNbGIJFwEyuajKwtGLJFpwOFbNYYtlsN6EFAXXl9k474hyn8r+SOV4d+2oZhm+wZ5b
kccnbhVFSLsIsRPtgJP6JYANhLIoYpHHbHw6Vetadg4IHZ9d9lyEOn+Qb/bfdvvn1ct6M2J/
bV7A3yBggCh6HOD7GQesXqdbPmh7f3LFbsFFapYz7h6Ib1jnQthEVDUp5qF3lJCJ83ySMmwa
ZCImA/Ph4ospa3w0S8IQhhYJnZaqgGcnUlv+yjiGWD4nMBcuFYJw0OiuMyxinoDsBbnlZhBa
GUwtp+oBvOsqsmNtdDgmKABZxInlZGFMAVahcQosKiGEm2v91oc1EclsySAECAAc/WANtvJd
aWPm6B3XN9GGUrNIc8hCwxhQI3djEKBwgfPAp7KsT0559aXkxXxwlxI4PWHOG5UkgxsikVhW
Io7BKbg9+2f8+5n1X8uhi5szi1/aCIsUiIvBPLYntMiZmlRRAqIL2uPKeYEJMAWEVZ9KP518
v1tvDofdfnT88WqcesvZs6em+kwPN2dnVcyIKgv7QA7GzbsY1fjs5h2ccWiRFuY4jfXgzXXw
YdVgRsfnp+Dji5PQcOqkgV4FXm53DlXayT/8Zb3lLmLDcUAPh3MGOHBEAx08YT05fMAaGD5f
DQwd7/pywq0naZRgP8fTG0+tl5MV2iO2YquZUHlSaj3Sdz0VPD6IVO4D1MweQKQcqYCR86sw
MwF0cTYIwpRvcIfbsfUoNUGzAvMf1rNmd8zJeGgRMIr5VOotE5NQ4gxcO+EmjpsR1Bn2Pu04
eufBnVqMAW8JNCYaCNQcliusKUePFr0GO/FySm1ovZJunnf7H3762ahFndsCZwashLufB+4Z
PA03k5ocYC0w7+EU8LeFv1ONJfMEtGmeRlWu0E5ZPqOAwEMH0GjpRAGB9+1N977BnZzdS6QU
noK8vbTyABBhzY1tGwqzDNQzhNW0JBAEnV9dN8NLUmRVdA9hG5i2Zkp7DQ6XTZ7yk3DydC1F
X6Kg+4nGC55hXGYUQw15Oz7/vVPHEgye58XSmaQo/iFfhQInSse1YyRKfewuTenQqomN3p5f
Yez1dbc/dmJDCyJnVVRq3dFOd3BbGhhFldOat93fm/0oXb2svm+ewdXzRHHGJ/ACdYoKwxTJ
jTh215gGCe+t2sWKS9/lzZji0W19vMV2f3xbPW3/r6mG2b6YYhQiZp0ELEnCHwxZ03KoFpPr
1xGSr9SNO/I8ieBp60ccujZwMKrZfQ7xXuwb4/nC8ihdypzyxSKs3xZYLaiABSegkkp+Amwy
/safBJ9mSmhI/+szaFbZEuKx2ymMrfbrP7bHzRp11sfHzStMgZsc7V4R9eDLXh142nreG9Ps
EsaltlF91++/IMUVOO4scd4+GBJY9h5CbohzFbOTkHplFseccoxFSohEIRzFVAzFHLCn1CBQ
01U1xbNqghUZi5aCKZ8cc8vh0SF0J0bvyibai58JMfeAECBgxVPxaSlKa63GYQeXQBcF6nKm
dx5UQqCHFY/vm0xQHwH851rZe8AlydDLr/Wn0jkPXXn1DyDTKhVRXaT0D1ywKYTTWVQracN3
eFc+GzAaDoW8OD80jkF1vWat3HpMDYlLCGqH9A5JtKxMPICBou9qp2U1JWoGVEBsY/7W4665
cJMn7uVJNLgeNXXeAVgkyr6px9up0Es01a6mchxAqmPsn8IVSWThh9hWG4kKnqoTOg2N16V8
fVO1ohZFU1uyVz9Z3emkFdgEzxfwMIv0/hL4UgYeXIbeEmoFzDpjGBs8roixslOoe//+RdT4
XIzymFvMAlCZMKnVCWbeULwCR9Ggxkv0r17k902LgrLzWDTBvMEEmAneTSSttC1eneRTWQJB
WXTRAxCqnEuvr3kAqkOUyuVxPePivA/qGLaA+N73z7rbU6C0VOO6F0srx3gC5E83/A1Od0Bd
po3FWh56DnyLgb6rna8KZfhbMoz7TYv7vC1jTqlYfPy6OmweR3+aTNnrfvdt+2Tql10RGtDq
I57aQKPV5rBqcshNaunETs5tYN8Ouvc8c8q+P2nD2zAGeIppXtuQ6TSoTJGwsSfz/iOow4BE
ECf1WQPLDAHh7EBnUIbguIIsaNscM3C1DSYPF3VqcNO/cQoH01zLKuXg62ZWNajiqU5VhZsp
MtAC8MLu04lIQlIFcps2WHM3Gz1xIyqs9qDDB+L8pXS8nKYONJHT4GDCnTxqVzZSbFpwFS7k
N1gYvoXvSNcV00iHxtqyhGt7iLachN1YswnmEeMQc/SRMWeXk7abJF/tj1sU0pGC8NlNYhPw
dbTnT6IFFplCNbRURkJ2qFaCIObOcBeyeDs699PL0iDN6RcMDntjaJ+4aA4CMWVbB7acZsDj
wuRIIlD/OonxbMliB57fT1yW1ygNfBJ/sY/h7tcGsQTjG0vZymzsqV7TggeGDvvkintXKocw
qsnsBNI7a/zcAm7bzyCKJL3shY2GSugkMQbhNDk1zmmCOqSuQhzANUb/FJ81xk+AB2nuMAYp
dlCGWajRTrHQQjhNznss9JBOsnAJWo2d5qFB+Rn4INkWyiDVLs4wHw3eKUbaGO+Q9B4rfawe
L8vs3RfSFmiIEhgfFqmVvtEug5kMylgsMzsiKJYSHKgBoCZpANb5gabUCucgea4xtEJl/2zW
b8fV16eNbrUe6Url0VKtE57FqULHu+fUhkB6vw6gUw12QjmJ3TQG/tLBaNsShrN6TUf1ipIW
PFe9YXAvqLukn7sbOqadO+7ya/2sTJsk9iMak/FFN4hldtmhyznfYTKYhUAL+AM9fz8t3cPo
b2rMaCYiVp2AY7o4AI+JVNW0zL1bmzOWt3MtuTRHbHvrepBeStwdr48zCG7uXTRN63Z3lpNO
D+XhTC5dGa8CazuX3jYT9EDd7KEWX+r3CTbT+LQgftSHyaTKq9hq5pIoKirVFqc6Hw0CIhoi
GFMgmVAQ/LotMnOZBrAb3mgxSXmm97u9PLuxUv+hqDyUpE0YeHcEnBzrYE4pPSXGrQwM2Xla
HITdiLz97FyVFfYH3daHXIhwtPEwKUNO54MOl4RT4GqKzcCP3Gsk8GZpzWNPBV6yosC4Qifk
TJ8Cdn2FvMGoaWTAJOPcSavM0hSuoiiEpWVNaXyh8zQOuazA1EqvMbYLbsu8mkBcPEtJsJ2j
Vd+5YiZrQpzIdlh1NStkrA24s83x793+T4h6LQXnlJBYiBlg2KykAf7Cyot9TD0WcRKOFlUS
PvtdXKQ6JRluHGSY2Ajl3nlJF5bqivXv5xZqDtyuw3PTk0bJQFkDEJrIpyoEGOFgeJBXeWZ3
2+vfVTSjubcZDk8E6LahzRChIEUYjqfmOT8FnKLBZGl5FyDTYGAZPWNeF10GakzMOQvfhZm4
UOHKCEJjUZ6CdduGN8BrqUj44wkNY3KAY4Y01Nmhe0Foe1x7EMXRG1I0b4bd5csoHxZfjVGQ
5TsYCIV7AeUiwvoPd4e/Tk/F2S0OLSd2drSxAw389sP67et2/cFdPY2uvIxNK3WLa1dMF9e1
rKPrEg+IKiCZFlOJ1aJoIOuEp78+dbXXJ+/2OnC5Lg0pz8NtKBrqyawNklz1Tg1j1XUR4r0G
ZxG4ktqvUvc56802knaCVNQ0OZaW0EoNvASNqLk/DJdsel0ly/f202hgO+jQ08Tv+7DM4JuX
Hg54Mzo9DaYq9S2rjWxKFeG8VH4CCOohonRQKUo6oDCLgf55YHP40ESFS8PJ+cAOk4JH0/BV
LBKSVb+fnY+/BMERo0Ol5iSh4d4ookgSvom786vwUiQPd3DmMzG0/XUiljnJwtxmjOGZrsIt
WKjLhj9riGioaTTKJDbwC/zo0s67TeAyiE4sBhcTOcsWcsnVwEd1C4lfhg14TkAnfhg7rJXT
fMAU4QkzGd5yJoe9EUNpxMKHQYzkAhxTiVr1FFbmNSA0kp5bTnYR62+tbKt25366Un95gQvm
BQ83YVk4NCFS8pDe0+YNP9mREMc6XeiTL9YPbecxl2++4nVdytFxczh6dRtN2VxNmSeGtefa
m+kBbC/VOtGAUJMYzlAMqYS4mtOwVljylNwFIUU858HONTzXTe4y5ibv8tQOA25OfRtDCQ+b
XsryWTX0PWkWh0+ZS9DcQ586og8Vh2EhK9O8a+yHcUNGkCggz3wm0C4RE55AfO48HdNetflr
u96Mov32Lydfb1oS7Gy//6P+ltXr2+cM82cgqgOdZan3pSGuM8h+hBamD7tpzfPbGS1MqcqJ
vzZ+waDKkEZEKFHSPRIXi94KRUgVaAiB52pFnXW2xPCp01fdcEXhj8BiNoqc5XRoOrY09S4Q
l1zvXo773RN+effYXqR56avHDX7VAFgbC+1gddR1H3O+h1sLzGH7/WW52mvEEd3BX2R/sZNo
bQkqTHt7Lvby+LrbvhydIBgYwbJIN7mHW/Hsie1Sh7+3x/UfYU7ZMrSsjYiq23atRYeX6Fag
pIhcCUopJ4E7R0TTGVmT+HG92j+Ovu63j9/d8t89y1RohYLkPOL2Z2pmoNIOMnqK+JHqxZkP
rh8SGBR1V+lkd2CJlADe1Mv2tVD/wfZ2KFMsp0N89OzDMI+S9Yd1rbmiYJQbjhSr1+0jFvcM
13u31cxUkl99vgtslMvqLjCO+Ne/94+M+GAJz23vqIEVdxp2EZS3AUK71sLtulavI+EnrUvT
nDFjSW6XBJxh0DNqZn3rCDxSaR47ercZq1Js8whlYRXJIpI4/UkQV+ptYl6kS1KYJsGo4X+8
3T//jc/3aQd6Yd/RHC9144NNbzukM3IRfjhsFRTuVEHaTayDdLN015vPhCAYDFmSTJw2nA6v
6XawH65/jGaW7gvDRgCnFtG4I7olwoYORBdY4o8KvghmpGowW5gPVrxp2NFZz60Gk+caicj7
jDaouv2yk2p5L7FRlxULLu10Z/tPN2DbGJhMMy0IXpQJ/CATnnDF7V6Xgk2dyoT5XfFz2htb
jntDaeropnquXbtDJSNnpDACE7vZdgTGLKMmv8uCL2/gdWnxnbwdRo/at3E+UbeHLW9OgHuF
meHAFUwzEKiW36mKnB/6hmTTzN21VLyu9gfvW0TEJsVn3YwR8o4QbvWdKHdX4GCESctToIgX
+hT3dY/Nx/HgArpnWH/fYX+S2UfD8rTIknvHFvZOqY9ZHrADfoeNGObzSbVfvRyedKP1KFn9
cNtBYKdJMofH4Z3FUN4fqgrRjcYq6X5kvV9VsXQTiDAWMldx5K4kZRxRW//LtApPRbKEyKXT
wgJjbaMNyLSJM3v+WkHST4VIP8VPqwM4E39sX/u2TYtCzF02/JdFjHrPH8fhLbdawSEGVsDA
XmcIvYYzCwuf5YRAmL7kkZpVY1caPOj5SeilC8X9+Tgwdh4YyxRLwFK4R9MnSCHGiUJnA5sW
8osacKl44r0TknoDwhsgE10kfras+/B1mcr06vUVA+F6EMvWBmu1xs+hfAWAJgrO2VTHhi5F
f0UEutcXLzNcV/cH5mpWVgvsRi7c0+UJUYYHXXXqHfLNv/qxefr2Ed3e1fZl8ziCpWodGpbc
PKVXV+Me7XoUv8WNeTiet7CGPExEkUlzBoczMDgk4Srybx5+V0ookuh/lMGUa10oWERsB0Wo
9f1Tq47OjSEwEdH28OdH8fKRIt+G4mmcGQk6vejomNCZ+XffqvR2fNkfVbeX3UW9fwf2Thl+
mqDbOBwBAL2EEJ959TB20OM3FbqPZkjp1ai1AzG0kldcC2Cc36HSmuLF/OhRzijFSGxGwInI
pv4mARTQ1HRgQ6wL1YceWGPSfftcrP7+BEZtBdHd0whxRt/+n7Mra3IbR9Lv+yvqaaI7YrzN
Qwf1MA+8JNFFkCyCklj1wqhp144rxlfY1Tvuf79IACSRYELq2I6w28pMgLiRSGR+UPN+Pg3b
M1rmlOUQgjPQx/u5Q+L9YpGWDNYXtMVokjg0ZKzexIepDRgk45hkrz9+x4NPisFfADdGFUJ0
Z03F8M2VLPh9XUlMMyr9zFbb0VVv1SuJMqnCe9dEk6STg3TstrIRqe7+pv4fiMM0u/usrt3J
BUqK4fHwIBET521Uz7rbGZuZnBJryxaE4VLKiAd+rMXZylpopECSJ9piG3g2D/yAlA6O2htY
h/KUJ67hJvPVTkIopTwrWNa52dq/J7ITKo3EYPhsEYa4j6LtbrNkiPXS0ARGagU6pXFy0I7Y
C8JQncoSfrg5g7pqLar3uR39kaEtfUwIZknOYScomjCQVoGp0k/0xjEmPSGPspFaCuVv+Rmg
Sh8ghQUX2XwZW1HrtPMVjOZmbeJ2SJfVT6ipNHL5PTI8TeQ+upIILb8GUdfA31C8xZYpWx1u
EtLsbKyziKyPeFy0ynzsQgIXacd2XckNYL0e8u64UKj5b2AW/eenr7//26mWjMXvG1Vj47aM
86Sk/HqymBt1gV/DIpRTUvP0Hu2okrhPaNAwybQvxFBu+Bis7iyGxHEjOXXL1aHRcjnk1XXQ
meWGvXY8NQmqFb06jbozQ0ZAKapu0eOO2i+kwD5OxH5iGBMUNV3k1KWUpqBYcXvIOysLRVQT
cJGX4jluX0yRzr7nHm+2zNaZNlLDkDAeDPOK1y0X6zYPy7MXmCGq2TpY90PWmPCXBlHbT+YR
cWLsEQwjjhvkuOpqaoHqij2zukyStn3vo9NvyndhwFeeT2SSV2lZ81MrNF0wIaUosLcZitIw
4cRNxneRF8SlcWQveBnsPM+Iy1OUACFvjM3VCd56TWFpjBLJ0d9uPXQG1xz5+Z1HHx2OLN2E
64CaVNzfRMaBk6Mlz7xMGLoxVlwze0BC6gee7XNKuUwDvS8qL+1crA5sCVSg6GIFC1Zzq2mi
il03P6kZLO430ZbCWNECuzDtN0RCcQwfot2xyTnle6aF8tz3vJWp5liFn2qYbH1vgbCmqK4T
msEdYs5PTBkfRk2te/n5/OOu+PLj7fsfnyXQ1o+Pz9/FgeYNjEXw9btP4oBz90FMu9dv8E9T
3+7g0E9O3P9HvtRcxsbNGHxlYrAzNDPq75c3cTRgQl//2933l08SAX3udEsErI3qJDjyeFrs
CfK5bjB1XP6FQmHcEs05H7/+eLPymJkp3CQR33XKf/02gbfwN1El01v1l7Tm7FfjQDsVmCjs
PMQVVEM7Ht/GYK0rrTd3szhcXh6oE2ieHmt09oCbrrhMAYMxpR0jpUjb8d5xODvGSVzFQ1wg
n11z0dftx4tRu1jMcRm+yGpjE2jjIgMwajNAAqTwLwyUJimA7aowN+bP6u8pXJ1fxAj+99/v
3p6/vfz9Ls3eiXn7qzlFJr2PUgjSY6uY2BN+TEKZv6ckB0OxG2kmFJos/rSfGEZVoKdg0Igt
kD/JKevDweXMJgU4AOzLK5Cl5get040T/IfVIbwppi7AWe5TxXB/tJB/L4RQ9oDkv+xhSS+L
RPxv8V2VhFYMJwGFgOK4cVJSbUOVfzQUWY3yX7i1LxIEDikIkkPrYYon7wMk/CfamGXH9ock
VGLuAoPQ6pZQUvXBFZkkDxZMa/yGl6EX/8nJZ3XKseH2TBPSOyG9pELP4dEb61t9RItT4jtx
kW5RppoAFzscYg00mC88sWBJQHwS3EiW8ePA+D/WgPc3H4C0kNpX1Q0+0RJYDPBc/0Fk0uby
7rfrHhXEqrtPIIVoJNcUEOzdyqotEOwgFbU+nlXD4i9I6hUPIEMIoFpKhzelFjuxKwNMmqPE
KL4i0aaMXATV2iYKESDnSSb0N7nSV/nFcqKzJSZVz2YsR5vQmEK1eljUAFoBMMb4ARmlzVSI
bzWPysFd/dOeH1PaBKEnkVDlyOccZPaPbWLVhFfYQjwRrwXH642xD/2dn1kZ7u3nE0yq7Xgl
eYeMPKOqRb5ZjkeINnK4ao782CfRAFXlEMCwIj2ydZhGYlYEdvNMHLjs1oZPMGYLVSKfMShs
2THQID5ww0BjScEwkBKbld3+swwjbcq6bVqrtIIyoU5bbSI4to+EyX8Qe7zoczEivUV7P5Tx
ctFHIyENd+uf9jILVdhtV4vsLtnW39FHRJXb9YWmYXJRvyYQeeRBWnInB1P0SVtHyo5Dm8Xp
ohkFXRy5+eVK6Y9DzmjjxsiPy1PsVgssBXZatjsEiw7WtnPeJjUA/UAUHVVfEGpmVL3UcBf8
z+vbRyH/5R3f7+++PL+JU8LdKwAp/8/z7y+GkgZZxEfTq1SSWJ0AQEzZMHB2LsSq6S2SzPcd
OK2Ynqm/CQy3L5UENnDqW7woAzSKJHFP2cGZsdePGodJYwoIP8sBCwqRwaMjbhEJRpln3BUo
ir+kLIVW6w3KajLFoZ0pUzZyKjgvUf7Cn/Fve8/WVK3O84m9NFuTxillZtM3kPP5PWVDIe8l
qDSCCebVwnD0AFojD05WLuASRpl7wC4I7mGj8dBIpvVcSSfn0P7EqYdJIBrjzg93q7tf9q/f
Xy7iz6/IfXZMXrT5Rfyh89bMoar5IzlBr35mMoHmnVIgTcvq2NAouLnKXKcqaXAkOfmDxHK8
Eu7pMq2CSTWPaQd+FqcQpUPyisbJOvcuDtw9n+lmPjgiiEQZeO4su/gXr11++V2iW51kt4Uz
wqc70cUX9OEsO03iWDq+e7auOuwbAddXq5LVjgCM1o6FUqMXQhxmK9ni6iQHCMAK2eFF2c95
ldXtEKY1uk7pHptjTQbtG4niLG46CxVZkcDU1u6tOURkcMjxcM87P/Rd0bZjolKc2ArxkSPa
ecUGU3NKD0VJuxzjEwg1SOw0dDMro2FHAquambL4yby6RCx0lSd+Rr7v25df8x0B9GtIrYZm
nmJuV10R0x9sU5oOfV9zrByUrrC50ncyXNd6pe9qxFu9eRJ6CdZaJGWokigi9XMjcdLWcWaN
3GRFB9slKYP1xoHzVfV0Y6Su0dEVh9r2Izcyc6iuj+JcIT3kXQkpXzBc4TTO8A5RUb5zRhpI
UJnQqoh3Lk544h9PFbhgw+GuoUOmTJHzbZHkQDeGKdM6ZFT5hsaxG5TFw6nIHMe8kWmVkWiE
Y15yHE+mSUNHz4SJTQ+AiU2PxJl9s2RC1UHlshcrIgng6VZoQmUViTVhJMrwIq4C/UvylUsz
lX4tdf5QGdC321z0dEyDtBj55UIDzhEwZpIHN8ueP+HHGQ3Woa4PGPT7QDrnG0mO6DL62NAm
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

--FL5UXtIhxfXey3p5--
