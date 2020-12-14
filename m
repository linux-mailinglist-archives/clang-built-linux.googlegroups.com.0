Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBXO2377AKGQEEUMD3IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id A83212DA3A8
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 23:55:26 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id z8sf14874617ilq.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 14:55:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607986525; cv=pass;
        d=google.com; s=arc-20160816;
        b=lJ44FrX+d7Ygfqt/mVA5N1lHOsFMiFFVw+dqyO9mnaBKsWgVPoQ41E+RzAFLFjUUIm
         pDdF8tadNgtcMQj3y5XfFqSSw7XRhKZcZdUU1lbY8jVcsPvgHhZHBBM0BM5DpILr1VjJ
         jJ8wN2UjQ7QqkxgWOgkuW3C2lEokR8HAyjCdTJXC0vpDE3dpRvLuZsOCWBBPT7cVhmGa
         H/6dFKpxNxveId06dKSa5yeqfeliTP1CT0OS54xWdkx01bGbgm8Q8LEOHorDkQZS6gn7
         4OiHuN3S/+iurFcR5LW2Rr0nP1dLZ4W3mozDKwb5/T+FuMn7wkm+ND2ZJXr3xv4HnMN3
         pHIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=JR5T4s2pRBFUCMmAPt/T919/ur3pxJ9Vm2V3yaP0zuY=;
        b=vuNx9T7ctkq6J1xeCg1VvI8RiZ4jRgZRYyYou1lxiTu7IilX4jGycNCnr+UN4EeDSz
         TPtPl3PVlzxVK2T4D4j+Gkz601CPhcBMU0UIMtQGhpESrp6D5zd5W+0B4vuWBOsmC863
         yEufvOCm5rUGWGhzO/yHK25kIoUTUtvFXysN6bDN5Ghtf8YaPesieuLkcJAgqTApzOWR
         EDIC9VEjlpkWWJ4sNqkPBAqwCZ8Ii8cnCkMX/Ph81o84b8t/ckwg7a6jVD0zt+vX72dt
         Km6Fj6WYBPm5DYpqfPQWiqpraI9T9KRpVXWykwjPYc865kGcajmAO2SmiXqzAymSBI0d
         V+bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JR5T4s2pRBFUCMmAPt/T919/ur3pxJ9Vm2V3yaP0zuY=;
        b=oOFNfVQvp0id9V7nL5oFyBxNk/VKaT1DoLfe96uUbzNcgRT7RLh/LTZA2LsqJ4KSP/
         05j4rlwKdN3YpMRbPS6DdmZaDvWjK8BPVbVjdNHLZZt7ePHGFHvia63grT+WJ4isCcfR
         J0k4zQQFpwFC2Tee4hDYqrKsBGqcubFLM+V2mfGWe5gU80vTStC7WUN3GQ9wOTut9GxE
         lZRwTPTrAbuUVev3Y3JcF9DB5WI0Mp9H3wG/8rZE6t3G4VPY7VNsvFhsOuwM4K9OTKHj
         G+/r2aTwiL+b0VzrPGIXFILnVg+ZQN7DfQc9UC7bqE6AuqQLZ8FocaZFtv0GCJ4IkSw9
         3KBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JR5T4s2pRBFUCMmAPt/T919/ur3pxJ9Vm2V3yaP0zuY=;
        b=fyfTg034Llt/r+Bw2AgRVr7lI8G1/DNer8otqy+p7qAOeLuggCDhMgvQxbV2GsOfn2
         /v6V03ChfHlwu7rEBPY3XbZslaj2wvI/aKwkIG0wlaZ+zapOW36qNyDlvCbTDeL8xbp8
         rkjl3hGlnn+pr9D0n323CGp6Gwqc+GxZgX8/uQgmuo+LYOCmarxA24ck5LKJSb2If6y6
         It6JtBa141RvFU+dhwklhoIGtzZ0cd9baKyNboNXGenrOBnNH4gikeRxpR1tGhl84iHx
         RDQ9MEZtGaHnPHcySKSOe0HyYKLb9GR+AQylL3gI51ZQmHfV+l9lS2HjjfgmeEAmrrIt
         xCDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533n4MzTM8ddckILXGvmC34+OhhXO3LIgaCSZvQjRbMa3T4M9CK2
	IQwhLSXOVjiF8sx1qRayMq0=
X-Google-Smtp-Source: ABdhPJzjLG3qmLOM0JQugAbB3yq+vzVLZjmJAJBDpvSLGX47Bj3aOgPW+d7+qX1AkfriBX1xBUnWiA==
X-Received: by 2002:a92:ca8b:: with SMTP id t11mr25084107ilo.115.1607986525600;
        Mon, 14 Dec 2020 14:55:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9299:: with SMTP id s25ls2903074iom.10.gmail; Mon, 14
 Dec 2020 14:55:25 -0800 (PST)
X-Received: by 2002:a5d:8793:: with SMTP id f19mr34972344ion.106.1607986524216;
        Mon, 14 Dec 2020 14:55:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607986524; cv=none;
        d=google.com; s=arc-20160816;
        b=fETPRGXQ+gPKIyer/WYUqz9fSBDqZSR8RXSWoA850xetw/Ht6YJpXhn80pfYLmnNVc
         LYFg/BAUAPgQGfUAQmcviqFw/kRfFajfkH2bvNALeLa5GgPYT/WEOYmg5CU1ip6N9+m0
         +sBX+0f3NBuJWBHTHJ3zzB6uxgb5fUbA0E8nbuyszMoTTeIV6LMKV2+DQXVC24Dm95NQ
         iJVeMdU62cQLuTpmKfnT4OjFqhnxYqodncmpM/PSQ0dD9fiQwv5BsWLVAoFrqVTD4q8e
         16O6y/H/NPwBnZrinW57IDzrI5q5tp1TVnKdyzIcZnok9CyLXszrY4Dgi+nTqO9ig6+F
         QOZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=KysVuZVJzms1n3LGewCWd5r+cBGOHM1O5+P+qxQ9TtI=;
        b=MEwBDZo1lkaFZc0Uumd3w7OkIhB68wIa2vrJ+ZfeWjTUBTHTWuFsexTHxPy5cphgkD
         3xRR5BIw5/7WlQoKsfUJoLXY6KP3reGmDNARLggh/FJ/Gz0OWdvHjRVeMeV8J1sI936j
         X22p1AId0bK7kWG9cSysG+JJy87xDerauPA5laQZTJSz/gD04JOJdub/qDI8ylsGLWUw
         i1bI5oT11DnZhAAOnodTfilqiJS/8ifeYogYLmCpfaWOybP1tHq5OaR/1dQ0AmNnmlHl
         QYaQoTaLk+oZFnrcnkHMl6Le3d/FUyGDNkhA6pChPwbvL3hVAqhf3bqQUDY2XQ8Ls/c0
         42sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id e26si623527ios.2.2020.12.14.14.55.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 14:55:23 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: JxX08XqKVJVVy9AZmUupYVzr2jQ6pdbVGTI2ItEiYC454tEc6a7oV2tOYhpTZrGDqu0d3zWujq
 w0Mcl0LbY0RA==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="238895520"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
   d="gz'50?scan'50,208,50";a="238895520"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Dec 2020 14:55:21 -0800
IronPort-SDR: DNt+kjfF9r0hx5zOYzNsLF2QZZWa7mZMiIj8rbhEHYIMfUzwz6xOZtd2TnhVeCex2gYYLhcBoA
 Sw7+QCGbgGbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
   d="gz'50?scan'50,208,50";a="449725336"
Received: from lkp-server02.sh.intel.com (HELO a947d92d0467) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 14 Dec 2020 14:55:19 -0800
Received: from kbuild by a947d92d0467 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kowkR-0000Vc-0x; Mon, 14 Dec 2020 22:55:19 +0000
Date: Tue, 15 Dec 2020 06:54:39 +0800
From: kernel test robot <lkp@intel.com>
To: sylvain.bertrand@legeek.net, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] unlock patched C gccs
Message-ID: <202012150617.70NxJkOG-lkp@intel.com>
References: <48937guecrhuc8g89g8gqjk89jqkgrcg98g@freedom>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline
In-Reply-To: <48937guecrhuc8g89g8gqjk89jqkgrcg98g@freedom>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on linux/master]
[also build test ERROR on kbuild/for-next linus/master v5.10]
[cannot apply to tip/locking/core next-20201214]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/sylvain-bertrand-legeek-net/unlock-patched-C-gccs/20201215-021711
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 09162bc32c880a791c6c0668ce0745cf7958f576
config: arm-randconfig-r022-20201214 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d38205144febf4dc42c9270c6aa3d978f1ef65e1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/2a8dfb33ffef5f529b5e6b728aa8f69024165f47
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review sylvain-bertrand-legeek-net/unlock-patched-C-gccs/20201215-021711
        git checkout 2a8dfb33ffef5f529b5e6b728aa8f69024165f47
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from scripts/mod/devicetable-offsets.c:3:
   In file included from include/linux/mod_devicetable.h:13:
   In file included from include/linux/uuid.h:12:
   In file included from include/linux/string.h:6:
   In file included from include/linux/compiler.h:246:
   In file included from ./arch/arm/include/generated/asm/rwonce.h:1:
>> include/asm-generic/rwonce.h:67:9: error: implicit declaration of function '__generic' [-Werror,-Wimplicit-function-declaration]
           return __READ_ONCE(*(unsigned long *)addr);
                  ^
   include/asm-generic/rwonce.h:44:42: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                             ^
   include/linux/compiler_types.h:258:2: note: expanded from macro '__unqual_scalar_typeof'
           __generic((x), char, (char)0,                                   \
           ^
   In file included from scripts/mod/devicetable-offsets.c:3:
   In file included from include/linux/mod_devicetable.h:13:
   In file included from include/linux/uuid.h:12:
   In file included from include/linux/string.h:6:
   In file included from include/linux/compiler.h:246:
   In file included from ./arch/arm/include/generated/asm/rwonce.h:1:
>> include/asm-generic/rwonce.h:67:9: error: expected expression
   include/asm-generic/rwonce.h:44:42: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                             ^
   include/linux/compiler_types.h:258:17: note: expanded from macro '__unqual_scalar_typeof'
           __generic((x), char, (char)0,                                   \
                          ^
   In file included from scripts/mod/devicetable-offsets.c:3:
   In file included from include/linux/mod_devicetable.h:13:
   In file included from include/linux/uuid.h:12:
   In file included from include/linux/string.h:6:
   In file included from include/linux/compiler.h:246:
   In file included from ./arch/arm/include/generated/asm/rwonce.h:1:
>> include/asm-generic/rwonce.h:67:9: error: expected expression
   include/asm-generic/rwonce.h:44:42: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                             ^
   include/linux/compiler_types.h:259:17: note: expanded from macro '__unqual_scalar_typeof'
           __generic((x), unsigned char, (unsigned char)0,                 \
                          ^
   In file included from scripts/mod/devicetable-offsets.c:3:
   In file included from include/linux/mod_devicetable.h:13:
   In file included from include/linux/uuid.h:12:
   In file included from include/linux/string.h:6:
   In file included from include/linux/compiler.h:246:
   In file included from ./arch/arm/include/generated/asm/rwonce.h:1:
>> include/asm-generic/rwonce.h:67:9: error: expected expression
   include/asm-generic/rwonce.h:44:42: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                             ^
   include/linux/compiler_types.h:260:17: note: expanded from macro '__unqual_scalar_typeof'
           __generic((x), signed char, (unsigned char)0,                   \
                          ^
   In file included from scripts/mod/devicetable-offsets.c:3:
   In file included from include/linux/mod_devicetable.h:13:
   In file included from include/linux/uuid.h:12:
   In file included from include/linux/string.h:6:
   In file included from include/linux/compiler.h:246:
   In file included from ./arch/arm/include/generated/asm/rwonce.h:1:
>> include/asm-generic/rwonce.h:67:9: error: expected expression
   include/asm-generic/rwonce.h:44:42: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                             ^
   include/linux/compiler_types.h:261:17: note: expanded from macro '__unqual_scalar_typeof'
           __generic((x), unsigned short, (unsigned short)0,               \
                          ^
   In file included from scripts/mod/devicetable-offsets.c:3:
   In file included from include/linux/mod_devicetable.h:13:
   In file included from include/linux/uuid.h:12:
   In file included from include/linux/string.h:6:
   In file included from include/linux/compiler.h:246:
   In file included from ./arch/arm/include/generated/asm/rwonce.h:1:
>> include/asm-generic/rwonce.h:67:9: error: expected expression
   include/asm-generic/rwonce.h:44:42: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                             ^
   include/linux/compiler_types.h:262:17: note: expanded from macro '__unqual_scalar_typeof'
           __generic((x), signed short, (signed short)0,                   \
                          ^
   In file included from scripts/mod/devicetable-offsets.c:3:
   In file included from include/linux/mod_devicetable.h:13:
   In file included from include/linux/uuid.h:12:
   In file included from include/linux/string.h:6:
   In file included from include/linux/compiler.h:246:
   In file included from ./arch/arm/include/generated/asm/rwonce.h:1:
>> include/asm-generic/rwonce.h:67:9: error: expected expression
   include/asm-generic/rwonce.h:44:42: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                             ^
   include/linux/compiler_types.h:263:17: note: expanded from macro '__unqual_scalar_typeof'
           __generic((x), unsigned int, (unsigned int)0,                   \
                          ^
   In file included from scripts/mod/devicetable-offsets.c:3:
   In file included from include/linux/mod_devicetable.h:13:
   In file included from include/linux/uuid.h:12:
   In file included from include/linux/string.h:6:
   In file included from include/linux/compiler.h:246:
   In file included from ./arch/arm/include/generated/asm/rwonce.h:1:
>> include/asm-generic/rwonce.h:67:9: error: expected expression
   include/asm-generic/rwonce.h:44:42: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                             ^
   include/linux/compiler_types.h:264:17: note: expanded from macro '__unqual_scalar_typeof'
           __generic((x), signed int, (signed int)0,                       \
                          ^
   In file included from scripts/mod/devicetable-offsets.c:3:
   In file included from include/linux/mod_devicetable.h:13:
   In file included from include/linux/uuid.h:12:
   In file included from include/linux/string.h:6:
   In file included from include/linux/compiler.h:246:
   In file included from ./arch/arm/include/generated/asm/rwonce.h:1:
>> include/asm-generic/rwonce.h:67:9: error: expected expression
   include/asm-generic/rwonce.h:44:42: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                             ^
   include/linux/compiler_types.h:265:17: note: expanded from macro '__unqual_scalar_typeof'
           __generic((x), unsigned long, (unsigned long)0,                 \
                          ^
   In file included from scripts/mod/devicetable-offsets.c:3:
   In file included from include/linux/mod_devicetable.h:13:
   In file included from include/linux/uuid.h:12:
   In file included from include/linux/string.h:6:
   In file included from include/linux/compiler.h:246:
   In file included from ./arch/arm/include/generated/asm/rwonce.h:1:
>> include/asm-generic/rwonce.h:67:9: error: expected expression
   include/asm-generic/rwonce.h:44:42: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                             ^
   include/linux/compiler_types.h:266:17: note: expanded from macro '__unqual_scalar_typeof'
           __generic((x), signed long, (signed long)0,                     \
                          ^
   In file included from scripts/mod/devicetable-offsets.c:3:
   In file included from include/linux/mod_devicetable.h:13:
   In file included from include/linux/uuid.h:12:
   In file included from include/linux/string.h:6:
   In file included from include/linux/compiler.h:246:
   In file included from ./arch/arm/include/generated/asm/rwonce.h:1:
>> include/asm-generic/rwonce.h:67:9: error: expected expression
   include/asm-generic/rwonce.h:44:42: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                             ^
   include/linux/compiler_types.h:267:17: note: expanded from macro '__unqual_scalar_typeof'
           __generic((x), unsigned long long, (unsigned long long)0,       \
                          ^
   In file included from scripts/mod/devicetable-offsets.c:3:
   In file included from include/linux/mod_devicetable.h:13:
   In file included from include/linux/uuid.h:12:
   In file included from include/linux/string.h:6:
   In file included from include/linux/compiler.h:246:
   In file included from ./arch/arm/include/generated/asm/rwonce.h:1:
>> include/asm-generic/rwonce.h:67:9: error: expected expression
   include/asm-generic/rwonce.h:44:42: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                             ^
   include/linux/compiler_types.h:268:17: note: expanded from macro '__unqual_scalar_typeof'
           __generic((x), signed long long, (signed long long)0,           \
                          ^
   12 errors generated.
   make[2]: *** [scripts/Makefile.build:117: scripts/mod/devicetable-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1196: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

vim +/__generic +67 include/asm-generic/rwonce.h

e506ea451254ab1 Will Deacon 2019-10-15  63  
e506ea451254ab1 Will Deacon 2019-10-15  64  static __no_sanitize_or_inline
e506ea451254ab1 Will Deacon 2019-10-15  65  unsigned long __read_once_word_nocheck(const void *addr)
e506ea451254ab1 Will Deacon 2019-10-15  66  {
e506ea451254ab1 Will Deacon 2019-10-15 @67  	return __READ_ONCE(*(unsigned long *)addr);
e506ea451254ab1 Will Deacon 2019-10-15  68  }
e506ea451254ab1 Will Deacon 2019-10-15  69  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012150617.70NxJkOG-lkp%40intel.com.

--vkogqOf2sHV7VnPd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICBzf118AAy5jb25maWcAjDxLd+M2r/v+Cp9202/RNnaSedx7sqAkymYtiRyS8iMbHtdR
prlN4vkcZzrz7y9ASRYpUWm7mBkDIEiCIF6E+tMPP03I6+nwtDs97HePj98nn6vn6rg7VXeT
+4fH6n8nCZ8UXE9owvSvQJw9PL9++213fJpc/zq9+PXil+P+arKsjs/V4yQ+PN8/fH6F0Q+H
5x9++iHmRcrmJo7NikrFeGE03eibH/ePu+fPk6/V8QXoJtPZr8Bn8vPnh9P//PYb/Pn0cDwe
jr89Pn59Ml+Oh/+r9qfJ3eWH2cX19Orqvvrj/upufzXbf5y9v9i/2+0u7z6+/3A/re7fXVfT
//zYzjrvpr25aIFZMoQBHVMmzkgxv/nuEAIwy5IOZCnOw6ezC/jP4bEgyhCVmznX3BnkIwwv
tSh1EM+KjBW0QzH5yay5XHaQqGRZollOjSZRRo3iElmBpH+azO2xPU5eqtPrl072keRLWhgQ
vcqFw7tg2tBiZYiEvbKc6ZvL2XlNPBcM2GuqnJVmPCZZu/sff/TWZBTJtANckBU1SyoLmpn5
LXMmdjHZbU7CmM3t2Ag+hrgCxE+TBuVMPXl4mTwfTiiXAR4X8BZ+c+ti+2N5YEZYR2BIQlNS
ZtpK3ZFSC15wpQuS05sff34+PFegwme2aqtWTMQBnoIrtjH5p5KWjs64UBwc66xDromOF6Y3
IpZcKZPTnMutIVqTeOHuq1Q0Y1FgflKCQWiVD1R18vL6x8v3l1P11CnfnBZUsthqspA8cqZ1
UWrB1+MYk9EVzdxjlwnglFFrI6miRRIeGy9cvUNIwnPCCh+mWB4iMgtGJZHxYutjU6I05axD
w3KKJINbMVxErhiOGUUM1lOzalfgDbVzcxnTxOiFpCRhrrFSgkhFmxHno3OFkdConKfKV/bq
+W5yuO8dXkiUOWgpa3c63E8MpmEJh1Ro1SqEfngC6x7SCc3iJZgjCkfrGJfFrRHAiycsdrdQ
cMQwmDaggfAXuhOjJYmXnjz6mFp0A8YBngs2X6BWGbSy9lDPYhps6XznJKW50MCz8OZo4Sue
lYUmchs0NQ1V6IY342MOw1vBxqL8Te9e/pqcYDmTHSzt5bQ7vUx2+/3h9fn08Py5E/WKSRgt
SkNiy6OW0XlmexI+OrCKABM8eF81rU8KzxKpBO9+TMHKAIUOCkETtVSaaBUSg2KeVOHytIYz
YQr9YBJU638hqY4rbpApnhEN3s1lZ4Uu43KiQqpcbA3g3OXBT0M3oMuhE1U1sTu8B0I5WB7N
3QqgBqAyoSE4Kj89L68Rir+TbtlsWf8jsGi2XIC98SxcxtHvp2CeWapvpu87jWWFXkIwkNI+
zWXfaKh4AcbMmo5Wt9X+z+ru9bE6Tu6r3en1WL1YcLP0ANY5v7nkpQipDzpWsI+gf936S61M
odxjAx8LkMBw8H+ypm33yJLe2ILq3thuWQsaLwUHqaBR0VzSIFktC1JqbrcRptmqVIHmg1WI
ie7rfKt9NCNhMxNlSxi8siGIDA+OOEdjM6IGEKhyAfec3VI0p2iu4a+cFL5h7ZMp+EfoJvRC
ExvLlSyZvnOiXZF2P+o75UUmSB1gbZ0VHptLrOZU53At7MQky94QcYCiwae1B+xHW2dX4d2C
/m9T5J4dA38cXATNUjiEEUWJCLj5tAyvrgSf181qf4K2unNSwce2zuYFydIkwNduL008Pujr
07AWqQXEkkEMYTwIZ9yUsud8ukHJiinaHkrohsJ0EZGSuZHJEmm3uRpCDPwdgFrB4u3RbOXp
MyjhGxqBamZdUeoEoRgX2qSuWxmwKGJ7rB0ZRGxeuGZDNAsNTAScaJLQpHdj8BKac+TV6hsC
YWVmlcOquRdQiXh6cTXwb036Lqrj/eH4tHveVxP6tXoGZ0nA9sboLiH0qeMPZ4564qDz/Zcc
O4arvGZXRztwn4IBXy6IhpR26V3tjERhTczKUOKiMh45oTOMhoOSc9pGFQ5uUaYpBOSCANaK
koAJd/BbSAZykxBNsCzAUhbb+MEPAnnKsnBoZT209Q5eoOln8p1W5a6K5VbDFLoYL4dATJIT
e/6M53k5RFkw7AeufA4Sv/ng7MeoUgguwT8SAScCtrTdkad2EM9hyOSIAvLGZR1xNBy8wsES
/NYQUdND/JhmZK6G+BSMKyUy28JvvEzDzGOxphCw6yEC7iuLJPhJOFVwiR3BLQTpKIXedT1v
u7R5qgrcZhSdoqigCypRU9Gf+NIVNsEWC5Ajhs0dsqDg33NIrdHYLZyrOq8LOTbFVTezJg6y
0dlEf/9SdcFm7yiBVZ4TYWSRmIjBwnPQgg9v4cnmZnrlGFZLgr5SwBmjKw/bXySjkSLT6cUb
BOLj5WYzjk8htIgkS+Zht2ZpGBeXs03gmtTYjbjabNybZcEJX73BUmzC5R2LlH5ZxUfa/b6x
YXUZz67e2jHk8GI6MLQMzN7jBPfy7duEPX15rJ7AKNpy6YR/wb/QytakNZF43J3QhHrWt9Yk
KxHD05BPRIICDODMlZiFkhXLyJiUScJAv7dc08G4OVymNdm+v7iYjk24nl9ezFazwSGxTSKu
ZtdBYTVbScS8R9HHX7277vS/XhGXJOcmz2QPsWQbKa4urwcLEVLk8ejB1kIjCvDh0MYSJCqf
v/M5DPbqK6odlqpwfFOfiQTXZlZlFpMi5PcwOYXTfueEdy3scjjVXK831++no9KENABGDobl
LI6DdYgWO7t+d6731crZqWwbytU6yYqEQZqiIdxgrmf7N+pv+YvjYV+9vByOPSOIu95gMEZ9
SehFmUdg9AVaUx91Oft67UNIJDUEG9faBwsLz+icxFsfE4MAIJpiq94InUVmdbWOWI9cTK+H
EN+AIxRddF3rO5fNun2nXQbsOBi7Ty/dAj4RxocgcV93PJKk3kJTLwllyeigljbZXdBMePnM
CBjXk00b4dRZ/nXYp3YLdKpG6zzfaFc5XK93rpDnJIJ40KaYVkDRK1bgvnw5HE9ubcAFuxFt
6tYRzpGmEhnT5jJ8ITs0JrJvksyC9bIGOXXqkTaA5GkK4cPNxberi/o/T1iFNHPBePcqtbjF
+Aci/otuYoCNGS9Azd5AXY+iLsdHXQfNXL2IC7d2ezN1tlMXMxYSy4uOtlDi3hMOv5p4vhdb
1oY6LcwKQjgv68Ta7FhuiUqu1m3pXATNqOW8JhC52SiRZGZRzilcYifixDoxhko2TuQygaRy
Oj0zaENmjFw9A1qS2BY410wvMFKNxTawAEEkaeLCLj9oYP0S6ltZVdrVv/BKHIDscLbE7stN
ODiAdGXuFbC6opJdTg7RvCzjkCu4tTUiCc7KPuRefLsYYiKlXASaCSIE3H9gn+jINyC4FoR2
uuB47AHaxHmCb6QmtRPBjBnH0mTwsMdHw9K9V6MGji9z59k3TDRvesEnwA310morUpsWhdy3
JAq8bpl7KoPVPnOLJYckkcHT9g62Lf5PxOHv6jjJd8+7z9Z7tvEi4tJj9d/X6nn/ffKy3z3W
bwHeFUmlX11wi+WB0WfG7O6x6vPqv8p4vOoBLmSwbssvfTzssBQ/+XJ4eD5NqqfXx7Z5wOLJ
afJY7V5ADs9Vh508vQLojwrmfaz2p+qu85KpoKZYw5/OpW5Bxo96EILvefB3cB+ja6tdtd3P
03k/oSuoSoWKH373yUNaG066G3dqmWHRUTEvzKlTVBaButqBLsl5N6Prrc/h4fj09+5YTZLj
w9e61uNcJBXnDLVb85hn/TtaI/kaYoTa/I7cRhULj8kA5bBwawAyXxNJ0armvtFN1yZOm6pt
qLpSSskg7+UbI9faKR5EcX71HqLUYgW2bghWsEYHrCk1UbHRMJ07+ZzzOSTu7fLChc18A+mC
CKwNMcp9smkARiRtpKOrz8fd5L49lzt7Lm7MM0Jw1t7+ifqnFsut0Dx0VMqsUgFhjFRwQyA2
HXSY7I77Px9OcO/AB/1yV32BCX399+yeX/S0lrMHw6JKqnphAK8LZ14e+juYUJORKGiT7SVA
n4cNKeBBwQ+tyaDxpF/dqaGS6iACAsAgvC7lD6IWW89acL7sIbFyBL81m5e8DDQKKNgWWtPm
aX9IYJFYu0dZlaJ/8+HIIHDRLN0axcv6pbtPsKRU1G8/ASSeQN0BEtyWXVUTFJj1gmmaMbcz
yFJdziKIeiHINf2ITlLwjaRI6iKhaUIlIvoybAriLsiWmXF8CG7Tkppn41wHS+80prdaGwbi
o1/dOdG2NQVYKBpj+OCqaw9gae060LpB2sv9pycPEwqocXw82sxg0f/4Cm+pwk/xLkXOk2Zb
gsZYsHZKJzwpM6rsHcJHKDkQGqqKxcBhcnzhC8nLqzr2COgGVKSv5IFRH4Zn1T75ay4Svi7q
ARnZcq+ZLsPqbgQSBJucOLNzbFFj88aFXg4QJPYdbhMw1jqNEu0tF584eQEZRNP2Jdeb0LXS
cHm1T+OoRQ85ZtMcTvURjcxmy84QU3rFbay9uw8r50rDPOarX/7YvVR3k7/qrOLL8XD/0A8a
kWw8Dj7Pbckai928sHXPGW/M5GkHNmyKrJyzIvgc8g9up2UF9yTHp0/XaNvXPYWvYTdTp+pV
K3yo4tVcBS0pNjLwZekFHhFKNeg6i2k3aVnUDZ1w1cAblUXT6eCHdO1ji4b7FBuIJQIHW0BE
x8FCZZBG4b3HhAEtqO1qaM+Tfqv2r6fdH4+Vbdud2Ge3k+ONI1akucb7623lDDVpIlgofQGc
76+bMSqWTPS9AK63waeZn8854MAsDhZ7UlcCu1OF7VtF+zmYPWcqdu+rpOcEq9GbMYlYceXV
0+H43UlHhuELLsV7dLJrK3hiY1GTk74fRhdr33z9k25aK8/dRY4nsYUioe0lBeOubj7a/5w8
C+1Q3O9JOpcO5uhcUYM8Q5+zuSR9e4bRh2mfg1vCvIT9QNzA/GaJpQrlJq0FtpY3B5VGPby5
uvj4zisigmu2jmqZe3XKjJLClgpDCbK1WB0thEv2MTxM2vYyuvk7gROgRN2877jcCs5DNus2
Kr2q0q2qX8kDpG34Zd8gDQMd8w69jsrwEIZOO4XUAsOK2HswBtnYQhV2unnJRClMRIt4kRO5
DOai4/raCf8cqBfV6e/D8S9MXQNJKSjUkoauIBisjWe+MCXJe5CEEa+9DwxciBdAsXUdgyXc
U8cEm6UgqsZmeshR062HsUPAj1mXC1LKRa+ZEGjAxehwxUd7Ggc/IT4ogs1H2jnFXDo/6jfK
/m+zAkamnrjf3VgTAJNQKRiHfbiYTb0+jw5q5qt/GGfylbu8hMb1MTulO4QYCWFQUChZ5tx3
+OE/zmmShfzYZua8X4DX8V4cxIKHj5xRSnHR11fOFTnDTJE1/7CdXAzLqCQLUirsJnYcS07i
M1+v6c5WmoOZdxKHW0KSQmEjHsfvGEJOCJSGoGFbeWd8hrb/XL051hTxyPBAF/YI0QiDQa0j
RITWaKSXtxatYzpbyOBenxEQ/giMqMMvIZCWMH4mDtLASUEYtLQzhJ9ARbCvq26rdJolFsox
pZ+k9nwW/oYQL9TAZlG6LPzBJl8w3yzJjYlKtbWJtmMCPmU9uzo5VS+nNk5u7PMA1UO4trgL
enNJEsZb9mK3/6s6TeTu7uGAMfLpsD88upU4717iL5MQbErJiN+zBpuRPPxOIrnyLGJdZN38
OruePDdbuKu+PuzbepLfdrBkKnzG78SYhkTiE9WLkdu2xWdvzOLTxPE8DnwRgEPGPoBR4QXo
W5IHveibGz1HE+4zJfyAdHftAyLXKyJg3iP4ffrx8qMPgvDPep1anqSYJPXsyVDMSL6Kx15z
Ebl5C6vGuggAl1DPsiEoJlmMWTf27AaNBhIR/XHq7yfN6KaWlMdtLscnX64InqmIGXXbJe2a
y+KK+SD84ITGjvcSEGIPziY2gUVYoHmzrckhi9k4Rfz+fegJ1B5oyvDv/k7y0ILy0QU5RIKS
ZVA4IFI5hJwn9w//d4JvsePKwdP+6+JZI0sFThP7Mu93e7fxAMd9wN5xIOjPR3MsGIWdrcWr
BPGzUYL5YPxQYwLz5nFE3pzYSnOcc9meUvtCNdy/f2+wNxcbZ+rvCLxxvZt8Nk1OCBNh1ypN
PI8FMAmZdR7SB6QvqPAZFJhexk0c2uNkkfZxxQwDZJdwwZLw9wWIGwktsCsmvMiMulU2AOQq
tS/DLqzL11yWimYpfmA6UMXo8bU6HQ6nP4eeqBv9KSY9fouYRXpMI1q8SljozaNGl0T6C29g
6IlqwzlELa6C4ChWIoggenG5DGK8mKMDX66ZpMOtWhwrNA2383tLCVtAh0Tqf+QC8v4nEjJ/
twkVMR2SXK4Gu4T1zS78LrYGIcCUjTOM0toseMBEZ9PBBPoyDnDPSgpWdORLGEuyWviuwdHy
eh8uPYLMuHrleqnqUM+DDVTuExgEiGJdEzN6H7r5UUcyOhKbrVlOQmKU6ZK5Slf/7l3pBsgK
76P1Bmoblno52cewdYkJC7WiFKnj4OEHJAlzVueFHVcAF8GTQMwiZj4HtUhszttE7LvjJH2o
HvGbg6en1+eHfd1A8DOQ/qcRqGNZLAOW96fHEts02AxlscX11ZW/CAsybBYPwJeXAZDxVLkD
BxnMTKM13hJzFktu3+lg0MhClZ5N4W/SE1gDbWZzMpd/JbtzeKYIJHJO7QS1gaWe7crWkIaF
nxJSwjIscrvkkDhozrM2gxx7OqP4jc7v3cfog8jaJRauvtTtXh6o/6P9+McrgUCQhioB2WKo
LAtYokTusbEQ5wsTj5fF2fYHRUba2X0yfDj4V8TdN3qjhEboUASCW89VTxZjH663uLrXH6SF
BQPV26b5VDK5DNsoRA9Kvh4WVBurtIYW9oMJ7J4aWbXSZdSfGj/i0sGvgRBLvK+nAACewT++
ts6HvTk+gvGVDxCyJzRBlN/HaKUOuoM1CdsWOn42SNUozYimWRL84DY4w79SgJqQyhn+Ebpk
kLlmZe9qOEATj2LUQpxtMSZa+8Pz6Xh4xI94B1GdPQnwyCuvXmxXuMEvqDamWPevoUk1/DnW
E4sEms5lOHSxWoWJ1JwWszHp+rnXGWT/lx3+MSME32tyXgQQ3efcvuzrnY2fTbPzWISDOOS/
Qd6j2NUlhK95OMW1eLQjmgUDfLsChl2Ng3Vb6FsZrUMVxe6LtIPo2xd8OobUhQxmq8FIP3KD
rYz1oiwSLDDQvK8mHh5v97jEYWFL/F+H2DFjG8tpwoimy+Glk3GutGdoGp/08vD5eY39WHgP
4gP8Q5372F0Oybonk2Qd0LZEkvebTQjWEvvrAiZ4WG9sytDNtuA9Q8jyzbvechRk1nJ66X/i
grRLulUa+y/6c3hUGdmCxsWk33PpHhYbO2dq4+OheoCFS4j5EIoQGgItaNzfSQMdSpfWmVVd
1vOnWjLJwqU3i8alm975uz6Sqp51oLWBmn68GgGHVlf+P2fP1uS2rfNf2cf2oVNLtmz5IQ+y
LNvM6hZRtrV50WyzOyc7J00yyfacnn//AaQuBAl6O99Mk9QAeBEJkgAIgKWoTyTeeVglpvh2
i+P0Ffi3P2AHfvmC6GebI+lnFdVOXDKRKx7i7yf9lenaHp+eMQhYoedTgAZzmE2myT4rUTjj
uJawy/tNGHBMN1po3mx58pDlD6jp8Mq+PilPYKuvGNqignjZ5knBqaqf/315/fT5zeNQXuE/
0aanNiOi+e0q5hpQwTWZpEiFtbkipEcn+j4VnhQWUIcl6A6f8dunxx9Pd3/8eHn6l6lDPeDN
3tyq+tlXoQ2B07AimaY0uOWW/oCq5EnszKNkv96EW7MOEYeLLX+Y43egKw1evptub01SC6KZ
DwAMlkrVRTS6mC0XNnoQRJuubzulIEqmiuEqzyl6LtAnicoDIxa9ADgT+ogvsLE+1RYpnZ7m
8fvLk6jupGYJh5XGkq0U0aZz+5PWsu8YONKvY7aPUMIjNo0kTadIlibfejo6exe/fBrUNiO0
cGr8rP3YdCAaf72bXdqiZi9YYdrLfZK7KZpUnZOXucpm5/D65Ev95RvsJj8MH6FrryNQDJ1y
BCnXkD3mwJmRWdeCHDO2RgJO5nJGuB2nKE906ByEjmDmCNs9HUsNPpQX01NqQKFedfXgLKgx
0Moe3gj+Hn0ylzemF56Gos13KAlKXVFdzHwqRf+hkv39GbMT0uyDGjaUq+3chFPYP3rIgmpo
JZuTKIWantdNdiSuPPo3tbcMMNCjhQO8Bg6oKMgmMlRo5nAbK6xADB2suhYmTQ0zkMo3cAI2
UTx0oKYRRB7UAamcztmjx7OipjhKx/qFcQEo+aD7WNX0OZG0Bsm2Pwq5A0pOxNm1QW95iyhQ
x+3pKCrlcAaUfV6TffCDutDdCW5zuWSdYvkhTZFZ7CBzvB3hbTLFSVAGGACGs4URSWqbtuCf
0nHrVhqMmwFlZMhSmo7+JbprAoeaHi8KWGC6LA4hRXOYMbOnGOLOu25A8f4ULecFsW8N3q4O
5v+jQNnSBQVA2BcweE4SIPpAolcsAWr/OBZ1X+3eE8D+oUwKkdKWtEMrgZGVA7/LjPYOMz82
F8yqYbpoagS69xCY9p41fM20zzmmDhmtguhWQLOP+AA9ZdcR6k6IUww2/kPFlQWUsuh5EiQZ
ZFpiu9FK0sXxZrt2ex2E8cqFltXwPdpcfikyogSMpmATrpWHl5+fmA1kH4VR14M4bPoFz0C6
wcKhUjzYSSvrE5xUFWdR0DpZIfZ93Ro7cisOhRVQpECgCgdENEzldhnKFU1fYfjCFVC7lHxO
ENhp80qeQUBArsNLYJbsBDt+ztkl1Z6WgpKQZuaViwJjCGJTG+OS1Hu5jRdhktMUdTIPt4vF
khsahQqNmGyZlbJqJIhweRhFC7OeEbU7BZZ3g0OierJlL+FORbpeRsSdcC+DdcwL35gU52xm
XSKRd/irH0JqGb3KOusHk5jcH8wC6A/egxBu2kQudVKaW43Szk/iPnugFy5pWBuJlLMMAwA5
xVRjgFVCLsnvgLUTSAzgIunW8SZy4NtlappYBqjYt328PdWZ+T0DLsuCxWJlnllWj6fP2m2C
xbg0Zn1OQb3+1TO2T6QEsQ8dyee0rs9/P/68E19/vv7460+VzuvnZ5A2n+5efzx+/Ymt3315
+fp89wTbw8t3/F8zW2YvScKH/0dlLovmQi49V16D1RAk/9pYc1l6qiy2SfK0aqh5e2KnKYWJ
g+CdS07JLimTPjHqUskBzA8nm+dcEAO49lNAh0ylGG98f9qWQkRilIpZK1fAEI/Okstsim63
d8Fyu7r7BVSH5yv8+ZVjfVBZMpRZ2e1iRMJpIh9YUfRmM+NHwRE/e9hMw01Gv1T5tzzdgEPd
8kw2d/dBd+A3buWi6Ct82O9Ze+TpIRfmnnatVbbo+bYTkzU34nhEjeXEJYRQCT56XUwfq0Lc
IanP8yUpRvJxfNCi2B+7nIIxP7QF+XCGg1UkFlRLCzsK3TWgYCpXSwJNi2gVrBYOdL3sut76
dgDDAdzZ323i41UcBzcJNm4FM1ZHEoxzMG9vIkVbMF8sVaEy1hjsE+A5+2NFWudnSWF519qf
qWWS7po8eD8kh5WatcEiCFJPr4oEBNk8t+sewcHi6K0cb/2z3FcvugSoqwy75gnROhNgkuDF
ER0CnV8gsbit7KCm90kQTHwwyjdGDbMNKcON+d7TcAOavEykU2i8lfGNhCykb3xlCycmTf2A
BwPwD8iEnjL7Ol7GYWhxCgDbNA4CFwzMzADXGw64pcCLAPlGZvYXD2LOEbaEsMG/uVnSRkbc
M40tAYFE2QUNqCAmzrFckxEJU4GVK66vLXXXaNWTyDrL9k49O9HCSejx+FcEsIaFJ2XKRACa
aZGkVotKjjtkLqK4WK6iGipT9I8R/KWfJqm6pOF3f4Wv0jar+HsfhRf1B1AstjcJ4sXazbyK
yLviry+vIOA8/032+nEe++LcubOL0HkI3dEfKNBF68YUDFRDGkgQwXm7KiUuMBLOdSGuU+k9
twDXd/CXKa8w9IYamAsuMqquDaMd/MDs8jQYH4H7DG0R1NAL4BuOsYguat+dJCJxhGwnJJOi
Sng3GsBktHcJ5gK2+6byA7etZ2/jB0PmJ2MBAOerI3EQcygiTVqL9D65gtBjdgOhNSgv8szL
SIhv2jwOIs4RbsaGtKE8KTexebuAQPhjBbKN3UeJJNhwGiel2PbBJk7cz0/3qRLmuLoBB9oT
N00mRUliHgfE6QzjJfx4RBQ76jk4zUixXXusDiOJbLYb1r/QIIgXC652PPg2kScVqUm0jVj3
3JHkmK/DBTOgJQov8cJFoIC0c8FFKjfxku1qU+6F9LkgmCMpzztMSaKv2PjB1iQUl+SgFEXr
pcWBSRluQqdDuyy/91zlq0JNAcv97BuxrAa5O4zj2FpVaRhsmbH6mJybs2S+pIvDJSjceila
yPskLwQzIx9AprpeaZQJ4k6S3+rHciCsRkHHZW9FClGfnF5IkTWgQZf2QF/yNc+M6Wnry0I4
Ld8PaRDwq+GaJ66Gmn1VIfzXF/Ri/sUNp/v17vUbUD/fvX4eqZzj52qGDQ3+wcYvGuE1Qnpr
f1TwFNR/fpQV+sD6zyGmphFqCtZ5cuLWqYBRhCOBqQw+pSM3AgowvMLFZaOa6lwuFm1FzM+H
pMFzh79KzT1xURgP7ET0zVJrGOEBx9ko5wDf+YiaFakZe0jus5wP4zCoEjvWwyU5XcnjTsh8
nJexkHvGLvL1+1+vXvOL5Q6vflqO8xp2OOD9RE4uNzQGg0xJUIkG65ec7mmeAYUpkrYR3YBR
fTz/fP7xBd+14YK2hkLVWWZMMyMcvbZN6dLCStAus7Lv3gWLcHWb5uHdZh1TkvfVgxVvqOHZ
BcCsgV9jrfBnDU7qQrk+e2bKH02pi99nD7vKCvdwv8cQs/EnjE7IgOCcqaneNGF2D1wLMz6v
jgL+pXvBjIbVmNSold6sZKKCY13reUxV6YO6KOXF+YlKJa5wnJccsgw25jajD8O5WN2dN1qU
GZpMBL/pGB2rzunpXnhUsonsgG8SYtu3B6ygd78K4d6tanhSgyKkmr/RNtrCthvuFkDj04ek
TuwWcZzoDRiF38Sx33CRXdclTkNDXA793IlpxjAPD9oXQjetaYmJfW+QqBcN+IkbCHBw9bZx
gwoN7Sy6KcTKMQKrFX96/PGknF/E79Ud7tjGfojTbQyK+ol/0yteDYY9+H5HLBoDPMXFy2li
Cp2Lnd4wrGIgS3hu2RA73FLcqhhwBX2YRJdsUrpDDeB6x0CrvE4BJWu3f8ric7MDyFC0qbM1
nsekyOhQjpC+lFFEnMgmTM4toAmbFedgcR+wJQ9FbGtUg1WB44E5/TxzqOuz4vPjj8dPr+hE
ad9pg1Ju2OrMZHNVKatcOeCUUqd2MhNrtCOBIVleDdj0UUA5IzC91d73FhIm4NnGfd0+cAeE
vnhUWMNmPQGHZwTDaG3IcsrHER2m0KXMWU/y+cfL4xdXnNZb5/Q0C2U1QMRhtGCBZqbpqrZG
zKQL1lG0SPpLAiDytpFJdEDr+z2Pc8beRJKbPhORdWa0B6lP2utmxBSZikb3rJ2RqmxU1J58
t+KwDeZqLLJbJDpndebsSlM3kvJBu6F695qRVBts+8s54R8pNEiV/xn1xaHTiUktbRcO8mWS
c1YhdVytGxwTicHB8TJKWD2c8ILMPV28ervWgv7+Vr2wawbEemUiDT98tgVYx1kpOPs2bUJ6
GLwQex6hXPSYVqsDG5KjfXu+ff0NCwNErWp1v+5eLNOlrbMzZ4Wwg0oGOuU14/++FL5tEwQd
U3JEjSvVX4lMCjihjs5IDHC9aPrVbbyzqEasb6MQhTvpmKT5Br1/Q8Qu5KJ1S40Ib7UTwbSB
BPaHgNzN7GcaPBcLnRkYKN4ef03n/biTxFWyDDtummfk2w3ZWaEnoHd03svC/XBxsJ7wI4i3
u4HajHA3PA32dkWmadk5wtWE4Jp1KYO1kBvWSjuQwCmxy5p9knMfOFzF+0sPoub7NjnSxAM8
3vutHjrQfuuE2csG8ltN6uwQSafjKOy1ahLtkvMe33V7FwRRuFi4O5JB+w/GHF3T7HPQpik6
CTLSzcNyuKytJf+VFO0d1+xQzNH9Vh9Qj71ZeKJgOGOu+G32B62C2+ib9B8VxQ1HT2Lg1NHU
Pg0DkOi+ndee/s/ItzuhaEWJ+anYkbTwnEQ+bT0lCIQYNyGOIgURmTd5jqu3BcGK11jHGQJJ
8WOw5G2+Uy0wU/6PKy7Z7uybZY18c4CqqysqAezGQMCGc6NLIt9loEL06GDmcqWJ7cfl7fSc
ULHLdnRyoyqJ3VraNm5akgGpY7/KPW8FxExUprG4+ljR93rLc57bN7QDanhpW+XgnKsYXsMU
JYkSPl3Sfp/ekAnRpkpMPQZcfR70wXpGE5Q7+83hGabflnw3JelVUCqz5uzxNNLXlhF3yPl4
a3MVdSF6/Vgyv2YGFeQezVFIuyv4lVPWyo/MS0ir27UTkWHSrovd4COj3LWaQ5JSnVyns2dA
+uljUZEQgxm7S1bLgENMb1U6GD12HEYtfA5hxQwbiJYy1oTQgdzcRdREguPK1TnGcHO4FLiP
vCcwYTq8O2zMJ1XrGkN7indT6gcVtfDJb2XBeyiVJZQq2hi0iWlNV/6cdiPBirs+l2kTrsz7
jXpMlfSOeKJ4ujcWA/YpaFIBgNz73iIDHC5QbqNI4U/Ns1pN6leUgn3WRmOUUVipX8aiN1Bw
wokyo28Rm/jyfKlaj0sT0vk0O8RdWswt01Tdg9u2bJfLj3W48mOomRtEo/yB7HcjRMWBM+Dq
YM6da7kzLMXD0DZnOJz518L0FVKYMnd8Zi9xxNT9EQxrRcH2I3YKdkpoxjgEajcu7fU1O3yp
xtPPL985r2s1x81O21+h0jzPyiO3SQ/1W5b/GUpcyEZw3qar5WLtIuo02UYrGj1DUH/f6EKT
Hd0ai7xL65y4q98cA7O8joRVVkpasXUlogYrP1Y70brAWmW9mmZ7shLT9ySHzeoOagb4528/
X2+G6OvKRRDRp2Yn8JqN1Rmx3dIpVOw30dpXptjHQRDQTzuJLjrtQwoU8cIiE5Le3SGsFqLj
7O9qc1CJsaxqy4vYiwSY6WxNg5BRtI0c4Hq5cGDbdWf34yL49DwDDrYZfr3q10L/wHBNPS93
v/wJE/blf3fPf/7x/PT0/HT3+0D127evv30C9vrVnrqWnFoK5jiz6n12y7nNKFTXCasO0yvT
At9XZWJXzqSMMbcS3PLcZY1O66Vp9lHATIpjqeLY7agfC61SRntaNMhGY6K3mdrpwqgq2Y0r
FdTTYnYMF9aa1TKMs6xsd1ayFI6nPClJLL7i/eJoA2Drq53tHZ8f76xd8v3H1Sa2uDiv0/De
7lfRrnnvOo3crENrRRaXNYiI9qbcWdvZIP5SYIVzaxFW1GEEIaaWp9Z7mpjzSfeCAliQfacO
kaXVgbpzeBhAN3lKxz/azNIIYU2CelY9sPeNk0pAkzsMLUXRZpw+oJHNwSlQexJ+KiT7qIFC
AOseVk5lCry5Ud95yfp0KuS5XIu+Dq/WkIAc/OEMCoqzfvx5zCZsv6sL3yS6KYNMaO+MFJsW
jFBcC994aWsXbanLGxtQb23OHpKtDe8ZgUz3FVR9QPyuz+PHp8fvr75zeC8qdJU428vaieJW
DVW7qj2cP37sKykOFNcmlexB3regohyDRlX3qtfPWm4Z+macQ7Rfs+RjAA+SPovuk0gIZ9hZ
/ifgEBjq4zRFgiG0GOVv7+QY50nt7jMc5SYOPvocGb13OkxT7qb47gbA+iKRPhf8/fUtCllz
cSk0Pwf+6gsJ6gm+pwWyM1GR+bxi1JkLfnqjY8u2Hsi1pFjLu09fXnToqpPMDeoBlRazy9wr
O8LcSQOlbuDt5gfcwLq8i+hMZp+JU9f+pR5Oe/32wxVx2xo6/u3Tv9n0W/CRQRTH+Joe+8wZ
JUATOlGmnbqNqkFmaZsbL8nh/Qwoa3BYKJXHcEfG3yTccgCo8HlQwE59Lgrg7ygIR4rqYAlO
YxHRfMBYshmh+dol1u+tWLCUaHYTqL8EFnTO+WhC7dQzClgk3Wa5mPVD/drTn4/fv4MYqybY
2VxUuQ0IEWPmmdlLpp7cilje0Xgl6L6F76VH4tI07WmzdVpuoOgua5qHGnMK8umgFeEoEN+m
6I7SGyamibT8bE+Jzh/n9G68d/bVtr/qDDYmLBNadHAqY2NJNEZ7klDyQ4v/LAJOKDA5hpXT
NEFzaz5O+XVvdR2kWhtiGScVEP1S04vNqo7zwwgdLnsJB+/itdx0To+LrPwYhBtfl4s6jbuO
KaZkZm+pzu4qEZ0VpHJXmToTvJMJMqyvvUEwsfh8f4NzZVIk0T6EHa/anW+QqTvpG/gS93kr
2o4QcF8CG6KKSb5R74NM2TcFFdZxL5mhQczZJzRernSIkgl05U4FvnRxFFkwFVva0/hNjXBy
5BJsXjslPmYX/yr5aLMuBtUf6CF2YwOeLBAK+vz398evT+7GnOzrKDKjg0wodagaMKXNrUdM
2WqvZ31Q2KOsoCGzijQc2/PzgjLpLb3jq9Cbhbtc0kMcsYF6mhtqkYZx4JYDNtnaxnxDkrRG
VR+Hh/0/GO3QHpWkER+1vYUcF/tNEIfEIfXUog3ixsaa18vtaul8Sl7HG//AITZa21yOU7JZ
R3ZfZR7GqTvdoGPW7hk2e4H4R1+uozCw+U+Bt0Fogz8UXby2gNciXgb2UkGg03cAbrckIQ0z
YVPqU2ciLblDmzlvyARtzFpa9OjmcOJZUuMgoFKI6FWSysD+ap39F1Hhyhn3Zg8nX9CxvMt8
mg7SkTvuk4dSDNYej+MRtv+EfzlcfzMI4eab8FdiuL8GfcrkfQl+++/LoGwWjz9fabRcMGhh
Kuao6qzqBtxehrCQ2XmiRGxKKKMN8yw3SwbXgm/ZG9M+k8ijYGeJ+WxzOOSXx/8805EY1OdT
1ti90RhZsELghMcRWETkCw1E7EVgmoz9Tr987LaKNAF3u0BrWXuqD5e+WuMF755Cii+9027Q
cMIbpVh6erdcgsiT+pCeIYsWHY8gBlyKCHhEnC1WPkywMfc5yjaGnqse6cAUhWyy9fEJjzo3
LlBNqPsGKMGergX/IDQmvkHCudZkfDKEbGaDmpHsU3w3FBaMJ7tM0sXbMOqdwLtxaNQR0SOX
kg1Ig62e6KPDhqpssE4H8f4Usybhub5Yc5w0dLtP0jberiLjkB8x6TVcBOQCYcTg3K85Hcwk
MLmGwANflew+NxLk2RGUwsvSrXRwEncRcie5MQGwZ7LKhMFble4+hBty72Ah7OgwG33af3i7
9n7f9mdgRpjcvjQtqdNwJdsFTREwfh1grPwS7lg7JBYBsG2wWawW3HcMuFtTpUhCU/QZOydk
jYVdhFooiyX3QSgFsuqvSRDHXFGPRDoVbJfrKOAK4hesos2tVnXkRjXQrqM1+1GWpEox2yWD
qcM1zcg+YoA1VkHECW6EYstyBaLC6Nb3IMVmGbk9AkQE7XpqjWKPCGPSbGP2DdBxPRa75Wrj
NjyI4BuOC4/J+Zih/0W4Xd3a3Y5Vvj8I8w3kEdO00WLJTEDTwm7IDINMw82SMMvhjC9cqI4g
kpWpp1HYb7db+v52U0btOoi9Z4M6o+Z+qJ/9hT6EpIHDJcSJ5rjRMSuPr6B0c08RTxlK95tV
wLkxEAJDZpjhRbAIyYhQVHSzUqRY+2rdehCmt6CJCDYbTz+2Ie/WNlG0my5YcLW2m5Uf4fls
QK35l1oJDfskLqWImJblcsN1SKb0dnxCdKI/4Bu8VQlKSM72+P8Yu7bmtnEl/Vf8NrtVZ+vw
TuphHiiSkhgRJENQlJwXlY/jmXGVY2cT55yZ/fXbDZIiLg1mHuLY/TWubAANoNGNj5MyRt4K
KSxtSSY3jsB1hv7SEjVDn+bt0FuBa1pBsdzEM/iRlt01a7vGRHMeUR580asu1T9leITN8pZq
GDqRuNjMzEeWXeyCqk+FZJQ5Em+3pwrYxaEfh2SYhYljzzOzyixz/TjxUe80wX0VuglnVHEA
eQ6ntlk3DlDoUiJPEC2CKs7i09pEDuUhcn3iI5R4uq7OaDeoT2KT+iELPKopMF12ruetjaCq
rAvQ5Mw8x/WCGFojQNRiAlRbRgVU11sJgsWaWplkDk9VrxXIox8xSByWhgReRPT/CJDTFiow
kROti7tgUv3zURxqsBMZ2lDKh8TguzElN+j1mRy9AvCJhUIAASG1AghtZWyIrz9Wa0MlyVrf
IatVXbpiTw+OPovCgEjSxTA6feKbsYikxj4pNSxe/4TAsPYNACY/XsWSdR/nwEAdpEgwLeUs
Wa8O1e9AJb4sUMmO2oSeH9BlAxTQZ6Qqz5oS02ZJ7FODDYHAI1WSus/Gs7CS0yeSN8ash9FE
NAuBOCa7FCDYdq9NHIY93A3gqU8tnk2WXduEnv8AI2dovNcgzT1bpr3LmRLQZFTsvMiiI3qU
hrRFT747YuIvt+ya7XYtUUpZ8/YEO9OWk2jnhx6pPHQ+uiOl2l92LQ+1KAk6C6+iBJZyWja9
0ImoS0Jl3bEM1j7zE3dNaKfZnpqHxATu2NYIz4ktx5Yq0+qqN86oCfHtEAmCgFxN8XQgSpL1
wlvok9XReilgBaMiPLQ8cGDBJZHQj1QLjRk7ZfnG9qZG5vFIC8aZ45K3heuRis6nKrKFZb01
6YzBL6iDzJlDNiWZ1S9T252uzlbL4od+Va4Ap8YJkP0/SXJGCtpkC79SUM4KUBXIoVOAfhyQ
8T0kDs+l1loAIjzvJOvEeBbEbH25mJk26/u/kW3rr6pDvO95HFK9yVgUkVM/7AhcL8kTN1nJ
N815PN7c6gC0PiGnuTr1HELJQjq1jADdJ+fLPovJybI/sMxyXHljYa27uqgJBlInEsj6vAEs
tog2MgtpSiMxhC4hVHOwLQIp0yiJiA3X0LueS/Tf0KOfU5N+Tvw49vc0kLg51SsIbdy1fbvg
8HI61w3Z1QJZV0CBpYK53+pgR+aKLB6cJK7Iiw905G+VqTis7dL1W3qZLm8WhNImBxmbCOgV
s9KeKM+QiJTJLe4IZ6aCFd2+qNHHFJ4ENrvdNS+q9P7K+K+OzmzM4TPQ0D0xw+euFF7lMJxG
u1abKVb6dd8M6Pa/vZ5LXlAFyow7PJMRno5WKyEnESEaeWtE3tOS2HMnGOX6EjA60xc/aHip
kdzcvBh2XfFx5lytLMa2F17MVuqpBjkUfvgNycL3NQvxVgySeUbVZGFIGDPzO/omTQShJsin
OiFqdAseYSIZlc0cFd6n2nEsu+O5afKVluTNbDIg5zpFqTboeBkWeVRRGByQKGVye/r+9II+
j799UVy0CTDN2vKurHs/cC4Ez+3+ep1vcZtHFTWGkfz29vD58e0LUcjUhjlspNFsEcKF03Te
Kd0xh2a0FWYJTUU1fJbnUsQEJYeFNToVWSx/+PL9x+vva71sY7kNLhjUDfX95Xt6mxx8/PHw
An2y8gXE26seF4alkwVNvJXoC9aOB9ZyV1tzXSr36eJtonhlFKBpKjGaDzAI8ATqJE73iVaf
0z475A1l8soxREHDeam4heeyG3pk4fgcRiW1mXBhRqeeUZ2IXgFWU80MWvF52ejJlsVdYqBX
f/Tkjqk5afKO8BwFNyuFdyy6dioTiakPHmDgpUReSNaYxsZlJdlAhYO627zhXH4hK8hLnY0c
J4hp67/KxHdVyilfwHIWe5Zm14zVtiKs5mUjk/40aHnQ/9uP10d0SW+NgsJ2ufbYCimmCQtS
R6es+1a5KxHs3I/VC7yZSp65j++gbvaxaqK095LYsUdUE0z9xgXtgnZ/NTJg5Ez0p5TJo26B
DlWWZ3rZwoOyYwlbIRjyTRi77DzYa3ZpPeeiB/9TWBj6e6DN9MdeKzNqvy06TRipXPR6IzX0
VgsVLNQZwAzKl1I3mm/Q3ND4YnlFxlxHCI3nj7Azl68hBF28pL5Wqms2RPZpX5yb7qjd1ol+
y1xfMROSiJqbagQMqw9BvUCpHcivpcIMYwX03BDwQxnBflV8Az1LgMLwIiDK5KDH5574SeV0
SIUaawdEE4hOkUvZPBgJXCZgseVHHnmGJHxI608wjzS5LcIS8BxhdSULRjBJWqa8mFiIoV6Y
IEdkJNZRzkeLH+MbCEsd8rpxgU0xG+nkU48F3mgSK6hJYFKTjRMTRC8kiBuKc5NoxD4aLy7U
SgN1Qz/HFnBR7zzX5mgKOYayLTpblABk6Ir+pJfaZrsQBq9P5nrKtm7gmBOsnJ4lxkATilmr
RMkWxY/m5xpxNgRSatVlYR+S91oCPSaO1qWTOY+eDy+ytcrzMoiji+FsQkDEqawMs1B2UnIj
Gc7bBHK8T0C8qZkv3V5Cxwxym259d73f55cVoxLfs+fHb29PL0+P79/eXp8fv98JXGx9RGQN
KrKEYDFXglnr//t5aq0dXQPAvslWdfF4S+082NCkzPdhcux5Zkypt/crCm2yO1RzqZgp4mnF
UlrrQiM31wnpVVxYwNGvHUcoNubUka5OPATDxjahSUZ3WrPEUx2SrLzRkTIxBoOgJ5FdZZme
16xWTnl9I1ONuAwjBguET5/v9ucqcPwV7Q0YIidYHQXnyvVinxzAFfND3zaD0H5oBZL5YbKx
rVP6SyMx7U5vAdXSm+xQp/uUumMWmpv+tksiUj2Z8SCuyLDdohtY6Dqengap1o8pHj1pciZo
htgANSBv0SbQ16f0yX7eULP0M92FRvKOb7KUKe8cJK4x5rrmwMZXcSva+MwEui91RaPm4yV6
weh+tmo1NwgLJABuTPs9roHUzcWUcqd13HK2oEnYdJGBM6finqwTL3jaRf5l32S27dxSScgL
j0xJQ4gu07Z6Hfq2UJ6qVmVHqbEd+tnImlwJ4lh217q4AQod1noLPSLpHwY6H97U9xKwHNwC
lNb3zYyRMjKdcbcU08LCMtyj5GTxF9aS9HK0Eabax5gJiN4b1CDiHXrwKuFzsUb2wQ55KNFs
4e/Fn5rcspJZHCXO1bNFeBmbbAlUBmnR8XuptkoPaoFZqB5AkdKrHJMzR7V7CvST7aufuO+K
lH1SxRDo57LeNnWOlbHUdN90bXXaKxEfBf2UyrMwkHoMzKY1qrvI18Gi1/ZGH+/1blTBw1nP
AUcEkQvItz0XFHIjHyG5RE5C7O15wcCjGpFR2yYQwapp2ulB35Ji9ElRqgIsHyjiVzvVl1Kl
zLGrdNIYjIaVfW+O4dI6csUBNAlCZS7b5nLNB4vfrO76iXR7Bpk2UkdnhT4dIqVu+nKnxc9g
BToZRJScHBcY38I1qh9sUcoh9smDMATFSLqmjZ7I9tIGi5niRPCwVSvP+1InjB58lZwNt10T
JoLtnipeJMgmpxKBdNOyBqHMmzOi1m5YuoAiT/GOTXSbd4Nwp8mLqsj6X29OZz4/P8yL3ftf
X+WHsFO3pwx96xM9P+IwFVQN6J3DzEKrE4IXHQX2KLAks8LapWNcckupPO9+msXsUMXWZeIZ
olzCzQ+E0SdzwqHMCxFEXc8L/sAHC1Vx82U2PH9+eguq59cff85RS5euHfMZgkraFyw0VbOT
6PgZC/iM6tOGkSHNB/OcWuPZlZciv7Kybjr0k7svqGv1kbU/1bIYieI/tMV+8syqIQdPts4T
JFYwD/6pnSWQ3bmG5Vtr4Pa0w6svgjqwtKoavUMQydnY8eVe/nxUx0uyLvl2NT6L/i1hPf14
QikZe3x0Z/Dy9PD9CTtNiMcfD+8iCO2TiFj72Syke/rfH0/f3+/S0ZEZaKUwabOihnEg3xda
KycPU/XCdzpJuPvt+eX96RuU/fAdviMePeDv73e/7ARw90VO/IveWhHy9zYIRMbnp389Pnwx
/XWLKMBCOrJKOVjWADnkpz7L7XmbWefGsxavHAi3V9EaWS1CEd2sLVMtGvSnzo8CPR4574/n
Ygvzm0b2PHVrOuYKUK9cS0hd9Y87gP7r4fXh5e33f35+/v35/eHlv4WfB6MPx8xgbCg+lmQq
OS1MUFrx1KzaBK6snXhvp33kSeAevr7/+PZEuYQb8+ZN1UQXckc8TRTnMFGNimd6RG0aFzAy
2l+2Jx/0okZq/bgMwA6v7ZWt0UjvizSMw4tOxhNKR//YGm30FqrSltSyZdycWqYtS4sGzNnK
tCXbSKsU65SrACTlfKuoRmNill5K8RulZY7Zgzp7NMpEojYUjoWy/xk1D9wl1Y1WuXQjn9ZK
PS7P9Qr5eukVk5qxEmkax050MNPsQAiMb62cMinIeG5ldg7SyZhuMJAmlpKnUgBqJXXJU52E
buR6ndiJsLk0VcQ4+dV3fqNAo4UTeU70qLcn/WQJbjvC+4Ipm0WZOuUZPNJg12wLs//4zo12
jA78LXN0lIY9f8sO4zNlxsdEL/wkcapp6Ohl9fftobFsvUeOT02FUbHtk8sw+kY1NQZP248s
dGLOFXTQYBr5kcWCKMqHmZ9NaRkTcjkRSOltPjGEdNL+boq4OdFOTg+t3TF5Db8ObQkqU8mh
rHs9f4Ung8n2pJ4NT1wsCoLommU5fZ82c/lh+DeYohDGXknZuep12ha2eqO/P+jsBlSBodtt
7bCO3Fy+q4vdAZnNzjdISmiFkdReUi/+U6eOPrBhO8nN7hyPQXP6LfPI0sFczVMOG0KjCikL
/BiUBeXx0AjdfDFrBU4RyTJeet2F23X/ia9vddGekaHPzNyFASXmbW8NcsBHJTYvwmak5PQk
NA3rEjqSsjnDAXTbbdDjJ2vyVKehbeqQN8SIQqS9UF61p6+POhVOqLghMkRjBofWFJsZY3lr
T4eHm0T/LhsqEdGostkhT8K1HGFc9x51I2vyUc2RcbYztqXs4oH6CcOsMxo0p5xsURRzk3kA
lNctjmwKOAzEl5mAcVOws0sw8uVF1VuyENCVYXt/OvR2uewOQMU+mJ/4liwzWjVDAydynK2V
u70hqD3OgcR0PNKtfqulCWgo6pMxJkTynFHFmZ8KB59ChTEnzk+WAafVbigtVhczDP+v4iDt
1lYN5TJI1FMb2Ux3JD28Pj6/vDx8+0vfP5edcD45Uu8efry//c9t+/yvv+5+SYEyEsw8ftF3
dHgQLE5tRlvsH5+f32Dz9/iG7v3+cff12xvsAr+jV+4HqO6X5z8VG8FZb0lPuWycOZHzNA58
Y0cI5E0SOATZ3WxiYvYHHT0K3JDaJEoMnpEj460fOAY5477vJGYxGQ/9gH5UszBUvkcdAkz1
qAbfc9Iy83xjRT9B8/zA6IwzS7T3xQvdpzwATGLUejFnrbGWi1uxbb+7jthiOv+3PquQgC7n
N0ZiV52mUai/Dp0KUVIuR4lyburamQ/o18PQDwTZp8hBYrQYyZFDbOMnQD+SJrgS0sHWiG/7
xN3oZQJRdkF1I0YG8cgd14sNwaySCCoXGQDuOF3X6JGRTI0MNF+AMbamfAxt6AZrew7AVZu6
GxA7Dv3Acj4L8RKHMlKY4c3GMT6joBr9hFSz3UN78T1iXKeXjSfsMiQhQzF+UKRcFzfRi7Eh
QNnFC5PpKbR8EEuK8tPrysCIac/hEi6/xZaEPabHQExy+6prXwnYUPYvCx66xuI9kfVLnRnc
+MmGugye8GOSuEZ39geeeA7Rnbeuk7rz+QtMRP9+wgcrdxjyyvhmpzaPAsd3jbV+BBLfLMfM
c1nY/jmyPL4BD0x/aC5BFouzXBx6B27ModYcRsu8vLt7//EKi/Kc7WJgp0HjOv/8/fEJlufX
pzeM4Pb08lVKqndr7JujiYWe4jJlWtLNWxhQeFjZlvlkNzSrHvbyRwl/+PL07QE+/SssFbYj
Ydh0lzVeWlV6oYcyNOdJ2KN4bkBSjYkWqSGxVCM9ts88CBO9wi6+uyEz80kD+GkrPniRqa0g
NTTqi1RzQRNUYywDNabyDcnSgErkANTYbFAzoOudlYkbE5Ju0SSYLG1DaCrNEHshbfN3Y4g9
+wIEMNniODKnRcyK4k2I9bgZNlFArGtIJx1yzrDrJ2Gi5zbwKPIILYP1G+ZYnrRLHGQwuQV3
zakZyK3igu9G7h3Vc8ICuO5qMYPj0gmHn9RvIOrHO8d32sw3vkbdNLXjkhALWVMRO64uTzNG
mv1P+IcwqM0ahMcoNRYGQTXmSaAGRbY39eXwGG7TnU4u+qQ4JvJMSc+EYpKsgEa92pxX0TBZ
aVp6jH1K/8/Pm5j0FLnAkSGkQE2c+DpkyutIpX6igruXh+9/SNO5UeXWjcI1pRKtbaO1GQYY
oiAidwlq4eOy2Zb64resmzo2N3kyhZhu+8dW/Pj+/vbl+f+e8FZTLLbGFbngx1B8rWYMLKG4
E008co7Q2BJlmTFAWdk0C4hdK7pJZC99Cijuq2wpBWhJyXrPuVgqhJj2REVHaXHQ2LzIYguv
srkWG3GZ7WPv0sb4MtMl8xzFfFfBQsexfJ1LFlgxdqkgYcitvSHw2G69M7FlQcATWWNT0BTU
HdW5jCkgpHsZmW2XOY5rkQWBebYCBEqay5u18OgCCnsX7jLQ2mzdmyQdjyApYRs1FXtKNw7p
0Usdwp4bWkS97DeubxH1LlGit2pf1nfcbkejH5mbu9BtgaU/BL6FhimxRagpaXQA8Pb28v3u
HbeZ/356eft69/r0n7vfvr29vkNKZQa0HQYKnv23h69/4Gsdyg5in2JMQfq1hQjBiQ+b9Qgh
EwNeJZTtafBtDzJyOdAu/CH2F9ecKxZeSM/ba3q6zFHGycIEm3CszKij0wXmRbXD01u15CPj
hnXXTN9tF4goDyrHYG/UN21TNfv7a1eQh/OYYCdM2G5+R9SiRrAZim68PnUdx4SrIj1e28M9
F3E41Aww2PsVxCm/7sqOYbhiFYeKZvI1NdL6Xstk6FJG9gRwkvR9wa7ihbul92wYpuMHvNSh
0EGrFs8O4sryFoxqOgu4A1WK3vRiKhFP+hA78mnRTOdl5crGHDO9vrRi/dzIB4UGGCrHE2sV
Go8OOqYoS/N5gESWi+pS0IA08Rhpwu1N2xuimLJ8354sYlc3p6FIpeuaiYBBGtLs/pr1F9NO
dOYZbdBCkjy7CPrVp2HGiEJHqD3xg96ImQONxqtyf6AWSCEce130hyPjem7j3Zsli/nOacnm
dgs1GvWWl2uumMjf8CyvAaJtNGae/Hw95DazEolpnvDWGcu6bv5Gft3Rd6LIYJRafcortd9S
fR5k+3Q/n73J3YW317lNvkZ0bDKZshpy+jmlGNqHMdi1laEvq4x8VI/gx4vWpG2THbhKatO6
qObJI3/+/vXl4a+79uH16UWbLwSjcKF+Cwett2di4Sd+/QQayLVnYRte694Pww2tuS6ptk1x
PZT4wtuLN/QFoMrcD6DBnk8wMirqjcXCjB1MtHnZpRhIUZV5ej3mfti76nPqhWdXlJeyvh6h
ErCYe9vUcpavpLhHt127eyd2vCAvPdhJOz9ralmVePkP/8GuxbV96YkXxkIFukDrxJtPWUo1
7UNeXqseKsAKZ1LgiUKPZb2fLGugG5xNnJMXEVIfF2mO1az6I2R78N0gOlPFS3xQ+iEHBXhD
8dXNIGwehOy4llqytO5hKmJVunPC+FyQ3loX9qYqWXG5wnjBX+sTfL6GzrjpSo4hUQ7Xpken
DBvqTlJi5zn+A0noQTGPr6HfkwIHP1Pe1GV2HYaL6+wcP6hlHX/hlF2d9s0JBm3WFUVNs97n
JYyCjkWxu3HpBklMCe3EVeJt6m1z7bYgI7lP1u5m+hHlbpT/hKXwD7LRNckS+R+ci7yXs3Cx
n5WFLJOO/P+UXVtz2ziy/it62vM0tSKpC72n8gCRkISYtxCkROWF5Zl4MqnjxFOOp2b33y8a
4AWXBu3zkBmrv8YdaDaARvcSWxyTtdAK+GYb0uPa02c6PyHLfcYpuy/7TXS9HIMTWrh8Dpl9
EnOkDnjnLVOx8fUmaoKMors0XYA1YrDECuDNfq+b5PpY8B6GO22SdJtwQ+4rjKOp2+w2iPF9
f/3UnVDRcmFc6O1lB7PsLry7w5soVl1FRbd2VbXebpNwb4nNQfuzvkTGR6xm6QmV2xNifMxm
FwuHl29fvppHcpBYBqRP0XDwEj6LLmxE9qAtR1YfjlJSkAoZQ8nedggRJRZe1tztAmuE4LvU
j+YqupoBiqfQWcB3blp14GTnRPtDvF2L3eLx6iiGQu2umiLaoFHMVOeAftxXPN6FzlKcoI21
uMQeQPxj8S50xK8g361DfGM74mHk+2Ko7y46jM2ZFeAsMdlFoneCdWjtQZqSn9mBDBfzu3AR
3djVtnDsMhlhi5cKMc+WlULWN8dqg56tDTgvdlsx3WJr4wUpqzQIuYpUp2uio9ZNim4XbRbQ
vfF6xEBTa23Dlm2+tzbaoEG9ND3yjrTOiT9OnBZYfk6reLuxGm1A/cd9GNgb80l1dok9OR96
yzZKh1nIl+DENBTzywurzSpGn7dPaFOQC/OfxJA6qU54GHC1/LnHyl32F6troV5/orlvw3HK
g7A14h/IyXWhIaJrHOvS3uUoC+j+dOzsaZEn6dJGJEUth6Wkk1tpq0Lp0ZqpdWAGYh62XL59
LiOOWCIXcvKcpc2aHbywgwOm/lPL6ntLUcsYvHopUvlIQF3mvDx8f1z9+tfvvz++rFL7iv54
6JM8hSA9cz6CJt8y33SS9vdw/iRPo4xUqe6pR/w+lGUjNlscedsL5Yp/R5ZltXq1awJJWd1E
GcQBxA7rRA9iT2Eg/MbxvABA8wIAz+tY1pSdip4WKSOGSbdsUnMeEGScgEH8D00pimnEV2Mp
rWyF8SoDOpUehSItJrQuBYD5ciJitM0OH89WDGouPtHDOZyZNWyBofkNk36Y3enyx8PLl78f
XtCYdTAeci2jK0qgVY5dGkOyrOK2vRqQb2LHEK5R7V7ApE7sBOo5q4ddfP5FR5s9wXLemJQW
pqdBOR2o/Rss1D9sNFp1qUODqRQqIZyDc6uKPEill0FfHxUXJqaDD63ZBZMe0JC9aboAoyyj
W+Ps05Gjkbs6c/T5fpw50BM7hM9nrw2j0dwC/SJuIhlTVs9TwL7iOHYxBXQpPs1FIkm2C6UZ
IElCPROIM3OxiN99tLZ7XVLRWBzHgy3iFUVo3CCl4M1agt4lDGzgiC6vhKQ/wAnKzcqooKUQ
XgxTWAR6f6tNYREZH6uBoFrvkg3zMKhNWaZlGZi0RujVkSlNhD5MrQVnPN2UMiGyFzGpc/H1
wdtxzcWmYWuluOYN7Cfq0uM7F1h8wVqgmrlHHYTRBKd9numQ86S1OtE4cYVVeRDaS9dstrqi
AiLECXwqx7huWtNXNKxiCvvdMvd0SH4Q3d6ZtRho8in0yfoCj5i7AA51SVJ+pmhMbzmxzcNF
IHEhzHTnl7Jb9oElCuFpmksZL+gQRUDhRQvXYHy+bZhTyof3DEuUco5T3ZjjLupbfRpbxTzZ
X4S890BKNS/z3JG4wLOZePyFbycebwN4it8XmNVHjwQMFrH2+iO885WOqu8/rH3lZZRWPTk2
gg/a7oaDl7oBJDge1KGHNLmmw8UZ4nByyh8+nanIt6xI5InY6vC6W9QF3nFTutQZyXj+0acX
bNBn3NzNIQyT4xh09JQen1aLQzMwcTGR8oVcpuO2aH/Zp1fbznDYF745KGPxOTgtM16tAeV4
0DeZ6HZCRU94+O3/nr59/eN19Y9VlqSjn5nZ8GDIE86vlTcN5dpsLg2Q8cHwTJ00BE+qGb9v
0nAbYUh1RTOcnGI7iOPTd4bkw7Nrpj+ynUHbA+KMIF7LDTCOPRZzFhdqmDvzgGVdpEePtaA7
FKnirRlV3MD2MWZpNLO4fkq1Oo8O3h3E8tc/F3gR3bTPKgw7pLtgjZdTJ11SFHgbBs+Iyx1H
U32evzGbx/RiEwaBheyXyviWa5AcSgg+//j5/CR2VsOhzfBYz1ktaZvn8nSWl+Z95bEmufiK
HcXucITR1f9GQdPaK0/GZRL87uUtUw8eNJCu0zhELwTauZiGJFnbhKFh8uSYJI3JeNkWepgr
+NmXnDsOXU1EaNJUSAaGRlQ2MizS3nLaCaQqyR1CT7PUJTKa3Omm30BPc0KLE5z6Ovmcrymt
TBKnnxz5BfSaXHOxEzSJoP9LR5/l8QjmPyb60XDaMVIG90GG8yCuOgssk0xizjr47Box0Yam
lua7fo3cg+dEVnjihg18spu9HOfawfUevRUEIhZIb15W1YRYhh1DKtTE0MxzdBMnVO2eoB9X
WTex6eqPTtMu4CmdU2RP5mFjRXPvq77p1mkijamtMW6y/kLgut60GZPF5UK22LOVg+OuIjHt
1aapBcLCW/0pKQyjp/aQC8zEnl6MvZyO4dTenV8AiW2Omyav2s066FtSW0WUVRb1xqmWToUM
rS7qXG6S3O17x9WAHAf1pNs3N8w4LTKrNIhjNM42gBmP9I2eorHtxggWCcSGsa5y8pZUeTjn
kVw9aePYtB0YqXjI9QGM7EpdQyePz00UhZ5gjAI/NPEeO0uSU5asA2lzZ6RIcoZHyJED2N1O
tEAGVtKdrPgmjNEQjwrcdR2SRFD7gl6F0ox95xXTdhttrfsUtQi7ozVDU1JnJLQ68iQjcJq0
jNxcRpV6g6TeYKktYm64AleC2iLQ5FxGJ7sXWJGyE/apnkG76YqafsSorOxwZossFn6wvg9Q
4rBkjWoOEH4oKhkKHkSonjujdnE8uItil7aLndIlVX0n/TVQTD7PZMByzOO1VQlJGn23we2H
JQ/Pqdxbqcv95x//87r6/fnl6+MrmHk/fPkidlXfnl5/+fZj9fu3l+9w7v4TGFaQbFDbZr1w
zM/SOYRmEewDZ71Lsukw3po5Dc3iztflI2wVdl/Wp8B4ACDndJlZszXrdpvdhjrfcsqbuoxw
qhogux1CY8FDNwFY5OHWkUtV0p19mkbNqoaltiqW08jpP0G8Q6OAj9jW6gRpJnVhB7vR8yGp
qVkwEoedT+IOqPpWWB9AOEUsubWqL10YOm245UdLQsuJeE5/kS+X7alF7LlL1DSwswVAarqe
ygMuFHRJwLIEdfVAbUXZxGTLPwRuwRVE15O28UvqZkqUPiDqQbKG+jS3mU+d4GAtVThnp1xs
+tA4gQbjxRbcM2Qf75nowtWaxVgWtCOFb01ojOKz7SoTJo4+87TY5JuWpa6J1lvMcmZkG8JA
YjnI+aXOTznLxDIZXLyj+9pp3rr1rCnW6XklusrWaQGiXeNJVMGEyUpo1Wf6YbdxZCJoG/00
t00Vq/apdYbb+YFgm3kYZHgXgLljtnhbElgx0wcgIYx88s4lmZQHYYgH1B1ZdkeGvvMZ8TM7
Entbe0jScG3ryMAMBgeOqJYecEs0FPaMnlM3t0YMrHmrMCIXUjPiaIsq1KVvB6Q7NxwIak9x
aLmLjFFNF84BgG3cy7vI+LTI2c9BsalPo5ZoDpsdZ2MxQslnoYfuw+Au7+7iaLsXn1bT+aYv
Vd2AN4FlduXXzhPUU458HopCZbYsRJqd3E7KdZe570jyXSTvq3h/PTPeZN5jAlrdAacaLvVM
+DkZHBmB1nR8eXz8+dvD0+MqqdrJNVby/P378w+NdfBGjST5l/lF5PLkAF4H1I7wGjFOlsZL
pm6FdHMm5JQevbAxOKqUHX3J6dvl5yw5MnubPib3NQ3e+kHFW7/KLuNhl57YYUvjYohUMepn
tguDtTtnPn7e7DdrfD5NQaydtasjQ8hqsbHo0wPeTE+Y+xGXEp+r54AZvXi//0piVGxIkYOS
4nb5CCZntDISlXHQj2DzlWY3MMY99QXJqV8xgKQQaPvQJBeeOsoegbEYzl3laJDvT89fv/22
+vPp4VX8/m6GhAONWwWZYLi9n8bRwZF0mvrVsJmvKd/JJ9YKbkno8JULm7mZUR0cJ1ZMRB8z
LLV35gus76pqleZvcJ2691dT7L6I6E0iVa/38YJ21fjXsZw/kr+5s25M54eNb08i63vbkbBz
5INV6icj3u5IlYFe+0R3R2lC7n2hibPqU7zedT6YAKzfXYwwb9BMB/6eHxAtQfnEdW7+p37l
EMYMf0c28ozv/ZyVOwtRvefrxx+PPx9+AuqsXNmK80aIdvaGWPbm6HQK01+/61RMfzWx3tXQ
JoaW2/ckgJTHSdDiKHJiO0IgfhcmG7CUWFMEfXjCCi7FEb1FcYgqlWAygYRx0RmLctgULQSQ
0fnFdoclTU8OrE/ONLn3ntLrVfUVrtrR1W0Bk9m3PTe5xxsOVqGKwMwollwi2SBqOoO7izcb
pxLSghwyOhrgCCEnGvquqg0JJ+tj8DVPl0YQKnfM4OM/eARYqFVNG8KKcTfXiB3hcp088xHm
TA9BqPtPLW09tQNVaXleA4evDKUXvJFe8qjV4YX9cgp4clrXEM0qSxeiERkLTuxi4OTvnro2
Xjgfjp+o+Oazt/OZ+XA8IUVRFm/nM/N58PJ4pPQd+Ux8vi5liZHNm+tFDBBtZIqseneihp3A
gzZeDMJPs/szqZu326cx4gwf4d1F/XZGMx+OD4c1uX0bquMZK+593Qy4+uAsa0U6vxL272Il
2ZXc+CTGctZnvqsqu8b9gXBqPrWw2JbWq1QKr0xIvnfk1TW04Fh2VZ2iHSfo8Dxmcbo0k/EK
Hg06Cleg4j3oOgWqlMjwAGIXt1gY8Ei9uka3y0OMgSO3FerFgNVoFdXO6Onp728/wP+moxc5
bWiLDXtrdrVF/P/gGU6cfR3SFts1s8+mnRqpfTFSVdmN/rxFJUgqVwHEgB3Duo7K/kK/aB7B
dRWyefy3UCDZj5+vL3+Bm9VJPbVPvlhPIWYIemAGzwxnULlEcvJNCdNLRk5sxlgbhKPnZCOc
J4TjXj9szktidqXDCNaWIBeWJY/kypOD97JaYxJ7xg//8XX2r88PL19+rv7+9vrHuzte5ovd
PwAonzD29IIvq3ePtl1mW7DqzBxrFg3pCbaBmNAsDYIFuOq4cwWnwUJZIrhRCLAN0T+WRdLA
pL4tsOUkjWudM/N5T+q65lidyBuFyXep8Pccn08JE+Ql1rQ3zTLVxKWMDesYG0tJ27cNy1w5
MqDBHn0fYbJ0yDgpZLeAmM9OdBTcjHuQIIj9iAqyi7ZDwr6XTxPj/SYI/DYyA8tmixnHagzb
7Qap4/1mF0Q4fYO19n4bxcgxhaBvbZNENReSrXqg49T5kIbwdmexXYem54nP8gEYEh5tM/ee
fIawN1omx8afGLPUNzmcyyMFbcIMddZvcNj2WRqAT0IFIqOiAGRYJLBHux8g1LWAzmC6ftQR
r1nMxOBp3X6hcV2HTKEBsN8OaXAURLjJus6zWRIYkuEOKxtCaawRoAvX+xA5zhvuB7wiHvBw
e3BVMoRvv/ZJSHmhhixb+N671OElkKdGlO+DxYkgGMKNc6GrkDgKfPYoI0OIjKmi+4b01OQ7
j6/q6bsE3srAF1m0fI4JMRjiNfpuwGCJtnvHmGACt6jTJoNlt/emvkOjLZil75GxHBF8uUwo
T68+9M4xs5jru7R85QFxsOuvSYqr+RbPEHUaK0yozcHOa0Q5cuxjZO0NAN58Cd4h628AfFML
4HjX2d9clytSjoZxwFsnsRpiZLs7It502yD8txfAU4nJjy6tuhHSMB6mhXuu32x3wRtH/4LF
4/hYZ4lDKGOhE+tmb5tcTGR81goI060l2Z9i6yHjKfipybaOLYhErPixM13sRVP0ZmBA9O2q
wyJ99BDxXzjG9BkRKNbpisIj9b2qPOd5GK2XtBXg2GHq6wDgc0yAmy0u2nhDIo/nIp0F9U4+
M4jNNUGV/IbwcLtdUqEkxw7V/ADa75ZktuTYI5NAANs1puACsA/QIyAJeS3hBw6hTSPqtww9
Zgb7mKAjuYv3PqN/yTGH8UJynkGfLJxYosBr8mnyIatjANOkCzbo56bhEQnD/dLlSsOVjofk
Dgi2b5FhyiIEgKf6ATKwQMf6SdLRLQAg8dKoQuwzTF4BHZPMMlaahz/a4/SNh3+L9rVElndU
MpDbksoGDDEiKAQ9XuMdLui4/BCYEVrLoON53e18LbvbLYkDYNh7stw7xvcjEi/JzCsnZuSo
EfgsT1/udlWI9BOoV/stuqTzZhd5QtAYLMt7fcly9xbLzvOKd2QpSBtvN2/zxJ7X7QZPuDQy
igMTfhXZCV2FGKGezNMlI4n6lII5ynQ4hMN236uP6qkm1dmxZtFzuBXgVMkIPawZXCordZa6
b2PPzChS/OwP8lDuJg2Hi1ODBRsXbDUxlLT2zLC6QX6ztbK6+Pjz8bdvD0+yOvNJnMZPNuB2
dW6HpCVJK52g2uRab/FE6o9Hi1pZwUgmIsOtqCTOPebjEmzBsNkLH2h2zzAfVQpsysqp44Gd
DrRwyMkZnMDaNCZ+2cSy5oTVNrE9kdpueU4SkmU3T/WqukzZPb1xO5kyXPekSqow0N+xSJro
o4bBw/HDeqs7l5TgzTLnBaKYV6eyAN+7euEzVXSPp3wKkQisvqMZKWwKNYykFK20CJ9F603S
ieYHVqcW8VhbWZ2ysmZlazXqXMKTCaM3JcXfmAu7kCxl9gCcml0c+SesqLVcJH6GG6bLANIm
4CEyMet9JZmYqCbtwuhVvsxx6nariW3EosEMQtGbWbHGInwkh5qYpObKirM9iPe04EyIptKi
Z0lVXqm1AkanBAapKC+4ByMJi54AEeRlkG6jcjHMvt7MRcfVdu1ycjtmhFsirKZqcjtLlCV1
ycsjdp0scbCxqenNSddmDXNmgcZQNM60Kpqa4Xa7gJY1/t5Higoivju0FrPe6GSN7J/jFS1E
H5oPuRS9IdmtwDdokkEIP/An4cXFqpcujxO/+K5q8DPvhWvwIZX6hrcuk4Q05jgK0avWuEGT
7qMtoiG4pedlW2xJ75uDgYZObijJHRLNuPi8UkdYi5KrbOEDVnvCJci1DJ7GCfe41ZO556Ru
PpY3uwh96bKLJVeFMOGUWkIU/P2ecptWt7yx3+7rVNVnRpVa0En6iuObCMkRHj/TGruTUdLO
+TJcGctLW0p1TMxbu3DId6EvPt9SoZi4q5wLSQb+kFo8hJBUNLLKl2suvrlhGOg6KKZdSbWr
5QdcA1QPjxwZWaH63MCsfGNMhdp5T0Fo0ALhXnYsUIsP42bw4/XxacX42ZONNOkRsJMZnm56
9KaXozWrPCfM9DA6DzvgFPDZNWmf5/pdO8aRUp6YHI5Vl3xa5lgRyuddVL50xexZ5GuzrGLm
ayqVVVFYToHkC7g6Eb1EeH9OUgOxC7UetxoYGPm1RUKVhwDpgMWYl0i0XZgXw+Mg/bIdchsC
44DTNM44bpQHfEdRGDiukxKZeQzMZIaGyxMvW9lIu+S0TZpsqVzgSxmXFmq0EwKnIJm9TM3R
4nK4TkI0CYI7ykTsX8R+Qnz0wJlJRm4fQh1WM2Beqc8/X8Ht0OvL89OT4ftNH+3dvluvh0E1
at/BTDwnvhV8qJOcN87o0+VUZdeGwfpcObNILMIqCHYdDkS70AWOon/hjRJS9xKphcHAszgI
FjnqmOx2EKfA3xixtaVcrAjx99ldF0CAh3TEpXJ31QAZ7KPlE+v3lKePtPL/tkqeHn7+dPfD
cubotl1ylYLvHP3DCMRranE1+bTlLsQ37F8r2XdNWYN/7C+Pf0IMvBW840s4W/361+vqkN3D
uu55uvr+8J/xtd/D08/n1a+Pqx+Pj18ev/yvaNejkdP58elPacT0/fnlcfXtx+/PY0poHfv+
8PXbj69YIFQ569MkRp0VCxAiSRkvihXtMkwPD10+keAfYgQsxHc24foTeAVChD5vFS5tmthF
We6J5FJMCx7Z80IS+xNJT9QvaBSTvw4Dg6m0z3SW40qs7N2mxXUhCcqZm9bYXaKUp9ckMtsI
FPndQcjn0nweMAFvtF7ypC2BkDOm8zU5VarhNdTq9PTX4yAEV9w1KZ2yArO8hQYNMc+QBsBx
B7yBRiBPy+Clkr+oEEkTOsOs4ks+fPn6+PrP9K+Hp19ewM3cfzl7mubGcR3/So4zVfv22ZY/
D+8gUbKtiSgpomwrfVHlJZ60q5M4m6Rrp/fXL0FSEj9Ae3Yv3TEAkiBFggQIAq/np+PNx/G/
fp4gfAksI0nS+wx+iRV5fHv498vxCRmHCWyrabmFTIkXWBwGHmXWF4u6J4DnI7d8w2UsAbVm
bR9Gtik/RCahM3EVnB/YfZOvJ6GMeotbUx8jQQIldNvSwjQy9xJLDDAqh3eMLfQoRUIK8urD
DINh8QY1rOLM0wFF5OZQ1pBhWhE4nvj3SUVX3QZj1NNFI5LmSrwf28D0oNFwhy1XerdJ6JNd
igycLGSk7MR+6qU3VPITgV+adVTSathSzC9Go0tomWzQDq3rGIJjFChyn7Ki8jCYlmYICITC
VzThUtDzlAShktIe4Xw5ngQTH2qm33HqU02EB0dRaXnA4bsdCgcpWXLNpozDS3gclzG8V7eQ
3bBlpEaxlNRcbw8cedqhwVBzeVRpwRaehStx4xnkQHKP7BrNcuop3+wuzOg83NMQf9WnUZXZ
JBhhvp4aTVGn86XupKrh7ki4azwc3HEJD/rlFTlTknLZzDx1sHB9VciwNKmqEJ7WZAnza18d
9T2NCvzuRKOq/bpoLwuipIKQndcIGy4rvbt1J8sOnolblGZcSR1F8zRP8GkDxYir13ccgeWH
n9Cu8JSybeScSrpRZLvxCJ+Wd7VvvezKeLFcjxYer1NdaNvbf79Fmko+4k0vlEmaopfeCjeZ
m4yH8a7eOfJrz2wZniWbojaN/AJsK3DdNkHuF2Qe2DgwTjsHizR2TPqmKQL2DbhR8ptI4EJR
ZYNDui7QLV2n7TpkNSTr3lhfNnO0YX7GykmyT6Mq5AqXt+W0OIRVlV6gAAXVi0y2LKmlDrtO
m3pX+UchZRDqeY15zwH6npe1PmPyTYxeY21c2x0cqaLJbNxEFoalBP4IZiNHp+pw0/kID8Un
hhFe9/FvAIHrE79itQ0LdmveoIivWFN02pfff32eHh9ebrKHX1wNQc+I5daoLi9KAW5IYiYD
04qAua7dG6a8OtzuIWJVhICEDtFG931qadfgMnKOazIVPWfOO2Sg16FI5cztlNVMv56BMTop
1ECTVwnDtGmFGaL9Gqzq5SBj1QWjoEmKmdH15vg3aIVfwwTBKnuHyLEhQ4azf2nxk3fWsR+f
QceP0/v34wcfqsG2Z06grCSB4U4m1g4sBlvUdyY0aaAwu13ZupVp5W3Cycx/0O6sZ34Cw3bm
1+I0OksCAwcLq5N039q2FgELLMnOcsQwJKC8uIhlYtUBnXG2wygmFzjne/pksrAElgJCmDLP
lJTP1vzbg8yqt/fd9gCNjFXvGDf11YZOImMOpZEI1ceMC3YxZ1xjYjdxbWgCe6RdGiNdt0Vk
i/x1m9vtrNvEBe32xAaZka4lzLqeEsJb/Ll2byB2g7nk/eP4eH59P38en24ez29/np5/fjyg
txH2raD52bzZL8XuhjpIiUnhDoKcJ2bwdLnAcwKHTL+IQodexAzvRas5IzsrsdeqKAPqIZPE
cQqTwDja+Exrm/aQRCS0Ogu3sRpz2hS+/n2Gxuv7En1sJFrggrZlh9SIDUapIQ/LQwUx1BMO
RmpRWNfQwkTMyNATLoJX5pws5P0XJf9k8T+h9IU7HKMen5kNcCze6hFIehA/7wl7CmNGeP8B
b4X1AUTFtZFtaw2DQaGKZvUaU5UGChYQu3KFKJMQm3BGUVt+ApIWdkxiAy0fW+PbPOBBx8VP
vuJDpWvaMuwiSDS9Z0bUJfFJ5EN1E+hmIJPdkuNKrM8AKdKsbaoDI2OHH70A2b2+9nBPooUZ
kBaAkPqOxfiEF907WN09yI/uQKNsl4gANnYLHCct6d4WuAwJFqsl2RsZZxXuNkAq9N09iyES
ExcNwCA6vDOPR2Lg2NaZpTsY6jmXGrjyK1aJDG98mZtd3mCRscQHudu6S2/LMLuhmA8qk3Rp
zzYV/NNZKGjODLFGDtrmQBPK6pQYLocdzKPY0+Pr+eMX+zo9/sBU+r70Lgd7EOQu21H3lKvX
cvUOu69TrFDKUG7/EI5weRssMWt/T1bJM54DHj7ngAUHBriwHyDi+l6kxtJ5GKCtcNxD2tdI
hOMdKTI9/btARxVozDlYI7YH0DrzjfCBEgPGKVxNUhQL82A0ma1Ch6OwStGwmRJ5mIz017WS
AwgJqz/rGKAzG8qV/yplwrLlNp3RYBZg97UDdmLVBxmzphhwNWmc+vn2MJmiD3rkQBcR/5zt
3U7PL6tjqvDOQpQkXLlMKajlKiNQCCgrg9V06g4GB8/wXHsKPxt50tZ2+FnTKPefS2R28jAH
jz+JHXo6a7D+zxqss4CaB+6nkVnZ4GFc7XEq7MnQh3MC2yeLMwuVB+zAISdpPFmOnOlTB7NV
4C4MmR7OVxUl42CxtNdGziZORVzTayKPR6xcJCScz0bY22iJzshsNW7sUadhs1jMzedPHWK5
8ijc/cqa/eVrrqiNTVbAUhaM11kwXtlMKIS0MVgiSEbDeTm9/fht/Ls4qVebSOB5yz/fIN8h
4l9489vgxvm7JcQiMMVRiwV2z4huUJdzgC5HjjCiWVMlG2e8IKTvhY+T8vHaIevKGIZShEbo
B6D+OD0/u0JYuXTZW0Xn6dWlQrMYUNiCy/xtgR9rDcItPzbXEX6NahCimZ4NClLurlUSclVz
L9MhY2glE/DqO7c9c2DFKJ7ev8Af4fPmSw7lMGfy49efp5cv/pfU8m5+gxH/eoC8Lb/rhwxz
bKswZ2mSXx0Urngm+rMBA1mGuf6qwcDxZd45suJF4R2Udwb1w2lGbZVq2ZBxugOPx/f8JBCm
GTz06l0DuhdRDz9+vsPoiDSDn+/H4+N3LeYUV6tud/ojbglQNgEj5FOHEe/BQpLXRgg7B2vF
KDXxIswk0n2LbBeXdeVrJMqZv4U4IXWGphKxyZKmvlCNVYmH7Da5L9HICQZVxivzdQaeY/jZ
YOWtFeoaJaub0ojraHYFzH+6ucQzN7rSSRxy9bcuwPOVkWqn3RgIFBJcF+AIk1VNVHKxnhJA
4myLDi5X431ewBwV7daa62/X1/ucCIu9MYgHAccNbKoml12JaGmxT9q84AqEce+isCzJ1mCm
wdRURcJFb8mQogIOO1WNppYzqIgyaKhPZvV+qDrcNcjl4GCpgnzESFtwUWjebxq+K2BnSNcm
oIyrPbgYpZWROQxQMdeNFAqzqoFhyYy1AyAuaEjheVgh2oO86X6PJk4BRyqLx2qnP/4DEF3P
9ce2+zWHpXwb3wkr4NjE6DwKyrwQtAgDAk0tWd8DlTM7Vi6t6i7jodY4h1rNCwjXOnO09bjU
ZDD8AnujXj5dkz02yffiri8t6kxb1xJYpblxLpJQmwPlk//4cf48//l1s/31fvz4x/7m+eeR
q+Z6aE41da+RdjxsquTeuLFUgDYxIgjW4SbVnz9BOF7dui9/2zeAPVQeNcRCTr8l7W30r8lo
urxAxs/ROuXIIqUpI+7nVMio0PPcKqCKem0CHV8hBWeMT6XcCKWiMCkLLyTO7Krla2hgzq5i
OZnNbKOUSRHG/J8D5MmIC3c0BTaENsYj05nKJZihLtkI3Xh+pSI0kIlLN9dVJQc9Gen6u4uW
yo+fjWCM6oQu3UxPRuiiG5RLESR8PhktfbhFY2q8JnY5vjxGgmg1HmOcdTis6T3gxpZx2MZe
HpeOKPBXr0trGze/0HTru1HryGiZESDi39ZrijVoSzIJ5n+bdB5cWUuKMJ2Y8VUctMeNStHx
X3VCsA5bMixko6V9Z9Ph6mB0aT3Cuycx4KMGm2YbLvK2ZXxxWPi221yYhCkppXHTFdHhXVSE
lZWgTCH/qALT7Krgt6D/7NQDFmfExBu0GGIO+RnqifwVxFiUAoOEXipPrQqcEUum1kdxKWB0
/EzkaTufTRbO6Ag4ImgAPh/h8MUI+/Ick4VRSa4tilxsPRfnpyQx3jsqTFXHswm20Nl8grmc
9zuxfuk8tMJPUYTGSHUy3Ry2idqUwoni2l7Ld1NXcsEW69t52YX5dCv/NzIz6wvb01EMXHEF
0jrYFaROily6Y+SJe+Oc8g/3+aVeWfUXCTLS9ePj8eX4cX49fnW3OV0IahMjqd8eXs7P8Lbk
6fR8+np4AZ2TV+eUvUSn19Sh/336x9Pp4/gI6pBdZ6cZxfUisGP7me1dq01W9/D+8MjJ3h6P
3o70TS7GpimWQxZTnIfr9Uq9VzDG/5No9uvt6/vx82QMn5dGvtQ7fv33+eOH6PSv/zl+/MdN
+vp+fBINE8/QzVZBgHL9NytTc+WLzx1e8vjx/OtGzAuYUSkx20oWy9kU/0zeCkQN1fHz/AIm
5qvz6xpl/8wbmfgDq+uoZXSB3kRID2QjZJtUVNouL2uv1sVJASHBk03FFed9baO2Is6EqQkO
cHigtMSMBwZRl63KrltmENtbgW8lDvwhsP1RYrsaPYWd2+vB1UZ4ie7RN6yy7Lei0p3kNWAb
k2DkNiZx36pgPkLvqCyOwX21s4qGb08f59OTKXokaGhlw1qIBB8VBerlm6fsnrEy1MyTFPTk
PpOteecMqNzzWlEgRQIR7BoakKIvTn1xSjE3eIEzAs91KrRlTzbAXBOJ7AibHQGMQVUYdoUO
hcfm6rDOhUKPKPArsAFflJH1+sIi6eLxOGWrEPMg77CdvztWMqrSeJPEtkeyPVwV2WpHjIhQ
+X2US05fa5dkdc/nnz+/r6JC8XIKX6Iw2mgpNR9lqjegnz+OX8YzaTXnLUzXoSbN2rBJ+fRP
19psEd46wo/ZNHZtKTgUwMgwiBqBsnnLFSNc1eBDDf48/KBpOqWzkqYcwQRKW2LrGHKQTidj
QWF8ROVEhZo5+exN+mSE5uG8KliLugHSJMvCvGiQJIby8rDdFnWZ6fYlBTdNeEXGT8pNMV7g
n1BeJrbEc9GwPbAyzbPCXAty63w5P/64YeefH3zXdTw9xAWikahMQkQ2Je2EmN2yinQhR5yJ
JcoggwOz/rbg+qFzT9mlYnFKDhTpRnqzeGuPD0IcdXV3M7CuaTUaj2x42pTTpnE56WW/nxWZ
dLaFrLPNJTqxZc69/EJkttxloDhkF+qs4tBbocwMZPVTbqJOK/t6ORuNLjSUcxVn0Q0QPgyM
ribzS3WoaZLz80Gc3sL7f2ydSaI4aoChsiJ0Zyy1rGSL8fgiI3UWssWlD9GwC1gRemtygWAX
YCPVjRNfaZC60B7g7gG/tyB4Q2/ErsKnrf3V1KAka2rYGiV0eJNhj3SZ8qMjn70eY5YkqtM2
mOByo/tgaIQnhRQpt5C2ZfauDPPJ7sRFqVvjQ8EKtczLA7SdT6MUP/vwBQiRDaMQWSkDyX5B
xYWZ9Dvs5wokOS/T2gYxB1KTSHGO9Fa6m8Jr4AsjJcOtgTuRXgPk5V7X9MKEK5o85EeSEpm1
3Yyub+0pI/K94dPoDzhlmJ1mWyXZCTWvkDs4X6zYObF7Q8OPixSprabaQ+1E9VGlmbOH0A5Y
YePBZBLWqSeiQDeZw3xTtE2NBpboVkWjB3FcitVMKyOQcQ/1BPRX+BJPmS17KfKl37OW1Bel
IT9nZ+i9f1gT/onGI2eromkWJeGudoWM8EUVuxUvydcLbizAdvy+7pBXXmi6J/SCGpDuJNPS
7U5fvmoT5HtEdeDTWRVyN1JA4Ms4qxO+N9n4bsj5KY7vLna1kEx+MvIVUt2xLspEEuewJEwl
wdWOI2VMrO7C0iI0vnNa5mt5nraUbfCmZb5Fq4xomTeKfW95kxzq8WskaHCSkGdxsGGcHm/k
bXL58HwUjk1a3BmjNFxlb2qIxGHXO2AgU7ahdqAEvb+Cl3mtgBC47GKdkgStdVAvrnTWbF+l
HLY72gdzCxmr+TF+t9FeSUD2TaDSvjijPWiQwfDGw3eBPxgI7GIqr6NTcHB3kRuHr2bY2pjB
XQeBp+YhuW/juo3SPE7zDUOIuhhx0b3IhW68yx2YDFajlpDDBTYFCTYCg+zh6+RvYNu9EaVd
Gd9ez1/H94/zo6uBVAlEuOT6hrHrDtCWcFUSPU6BEwnfNcod3zllcY0XRowUmAgHkrP3189n
hKmSL3uDHwAITxhsdgik3qqBEDJhI96EcwB+yheE0o0DXSYmn70I6vLJdqKDC/23p8Pp46jC
uum+T33u2TsZZlQWKMjNb+zX59fx9aZ4uyHfT++/g4/X4+lPvihjy57/+nJ+5mDIIuoMmbQX
kjDfh/pTJAnNuDKQhGxn2j4kctNARPs0X2MXQJKE9iT6N8XYkXyCk9oTziYEz5fvYLXFJN/F
ggbO9/IMRbC8KIxvq3DlJBSFcJu0y8iw+a/GMhuXzkgHZOuq+0LRx/nh6fH8inen08CtuNNQ
h3heYViZAehGXlR0sgq0GygL8rqgKf+5/jgePx8fuMy+O3+kdxafw864Swk/RuebNMcPeHEZ
cq2MuM/Xh/uEK61JN+D/pI2PBzHetlG8r94pKe+3mnL611++GpVV4Y5uUJVPYvMy0ectUqN6
u/R0eqiPPzzrSx1TTDHH10QVkvXGhJbgjnmowtKRicwMqg9QSjkQHRCUIcHq3c+HFz4hPJNS
CDywWEH209iYbFIWcsHdegKdSAIW4TcEAptl6PFK4MoYvNmz0vCwEpg7MBX2GLNGLn4xi2CH
K2OrLkZjgFvQA8kZsySIOolW+vdHB09fpErnGmqpwOGO6LcI8IShAw3TWwCX4WKxWuFmRI0C
j16iV4Hm7+nxi5XNjSg1QqEzD5tocrsBPfeV8yVo0SiuVD3x1IxnLRrwi5GnYHiJJQohxvAJ
P1QxXVzr1fTaV53iz8E0AjSn64Am6Peb6r6vGjjEwZEG7k/Om2qNQNMi5gdvPTqc2P76uPX2
MTpk2FlQIWXYRc0eIcGlYaPoYeIMjTg89hStZA0zjSmaKtnsMmHRI8WuzExdXaTpAYsf1173
RVZD8BZFhn2DjjpwqJ1KMcexnbCm9gcKIaWb08vpzd66FL3KcL0nO100ISXMtr/V+Nb8986R
vYWBwv3QukruOlbVz5vNmRO+nXVOFardFPsuUVGRxwlsLsNn1Ym4iBepvXOSeAjgpMPCvQcN
r7tYGXpLcz0r3Sc2587rYpheap6oCzHVYcOsCeYXDY1dfvWDBRnQzXQVBqJrLS8IZpRFaUtj
cZgk/SKN16m+gGoyxApP/vp6PL91QaSRCBOSvA1j0tqB8iyKKv1W5KHdULtm4Wq6HJkrVGDg
oZi/Pho24+lssXAq5IggMD2tBsxiMV9hIlKnWE4DrFJ4QYlUWtb5bDzDJbsikWcKuMsED/FL
lFW9XC0CzBdMETA6m+nPVRW4i/Nlal+0qLAr7FS//uc/VLgpDNaSCAXHeuRyEy41ABQLr9P5
8X9H7cZu4ZIZqEywegHHtTCMQ/mnYSwayjikolUGsqMnmegkrMs5YJbkYLTGgbVuzeIecZ0k
iJssmGrZWBXA9NAQQD0qlAKYVBENx8uR8Xs6cn7biS0jSvgslUFyMeERTvQ64zAYG0He+Iet
4hFuS5c4LBunwOgZJ8WQ1pKLNgD/Ag8OcnhY+NuGxUbqQAHwZCu+bcgft2MZqWBYESTwOVRz
XYafvmZ2bQbelzaQ45ZTNB8rx6xms7ETp0VADc4ECH//RBvCvyd+MuS4+WTmOTXWt8tgjGYf
5JgoVM6J/3+PzX6SLkarcWUIXA6boId/jpiP5voMh99tuubbMTx8AWe4zECvVo1Zcwp+KbDh
oFcuqzGgbJNLSMNZPFEY3TLSpsIGidcWhytYM5vSqDHJ90lWlAmXF3VCaj0cR3eINZuB+0Ha
TGaeVraNkSm1s3talfBzxCL21CAjOJj9zkoyXjaNA4SLZgtYk8l0MbYAy5kFWGk7Ley9gR71
FBJ7zk2JQUkZTNHkl8ILEoKm0HrON3B4tmgwRJO8/Ta2O0TLyXyyMmF5uFsY0RvAycEkEXvv
PpTRyKw0ONKiQPkwNW1T4GM77N2p9UUGzP5aUY43lgco9pDPrrA/6ECRz+r5eOn54P3JjfEV
o/eWkcmi/76DJICwWZ6qmJhUkFlEajpaXeL+P16zmFoCTMeYzdeUrwsTJHxYuiWk3bAC2Wg5
xrsv0IzLbywHLSApP+JZ83i/no9HJkgpQU3X+P/Vw3z9cX77uknenkybIN+oqoSR0GPGdAsr
6/r7C9eWrPPzlpLpZIbXMxSQJb4fX0UYVHZ8+zRUKOEw05Zble7LkJcClXwrFA7z4qLJ3DxQ
wG/z0EEIWxpSKrwz50RJ2WJk5DMmMVd1bXdICcX3bInr4xAOZSAbo/CtYpvSs3+zkqFxg/bf
lmr/6C7P7UGUqWtPTwog3L7J+fX1/KZ7SeIE+tGFMjXCTI2cvH9hZVfuf1l7tt3GdSTf9yuC
ftoFzsGxfIu9QD/Qkmyro1sk2XHyIrgTd8c4ucF2MNPz9VNFSjKLLLpngX1opF1V4qVIFotk
XexCbaShC9ECeVzD4cY/QE1nmNlbNQn5DXvUG2vuKfB7oI8//B4OieclQEZTR15QwI2nY8eQ
BnlWwTaqtT4ohyTbe7tPEaJk3B/odlKwvYw8uv+MJn1tOsJmM7zujwwJA2WORtecGqJkhapT
85y4wL3OF+bp8/X1V3N7YkqF5vpCBllgl7RVgCxhjrlYdm+PvzpvjX9h2JsgKP/K47h9nVNm
H/I9fXt6P/wV7I+nw/77Jzqq6LPqIp3KevO8Pe7+jIFs93QVv79/XP031PM/Vz+6dhy1duhl
/1+/bL/7TQ/J5P356/B+fHz/2AHrWjmnHWMWnkMNn29E2fd6PZcGn68GvZEle+j4VWpXlicP
7uRcLQatN7AxaexWK8Gy276cnjWJ3UIPp6tie9pdJe9v+5PRSTEPh8Me54CBdxs9EpS/gZA8
4WzxGlJvkWrP5+v+aX/6xXFcJP2Bx58wgmXlcatrGfjQRj1vduD3e/o5cFmVfX39qt9Uzi2r
lU5SRrC/0PcCgPR77DqzOqSWLyyJEwaXet1tj5+H3esONuhPYJAxxSKYYg6BNt9k5eRaH4AW
Yh64b5IN+0YRpes68pNhf6yXokMNcQ8YmLtjOXfJzY2OoHU3czkuk3FQbnhJ5OaFilm1//l8
0uZDJ+2/BXU50FUBEaw2MAH1DSQekNGG37BstBsjkQfllETUlJApdekW5fWgTyfYeZCW3rXj
0g1R7CuPD1qrNyGHFAQNuDMKIAbEMT0ZjHsj+ns80riwyPsi7/XIs5OCQc97PS76RnRbjmHS
i5hGMGr3/DLuT3sel4WIkuhxFyXE62sN/VYKr6+nTS/yojfqk+NeMaIR/eM1DN/QZ4Ovis1w
2DMEEEK018I0E96ALtUsRy9zfihzaGC/Z6K7Ne55gwFd9Z435I4FZXUzGOjTDlbAah2VOjc6
EF1jlV8Oht7QAFz3uXGpgMWjMX9VI3ET7n4ZMde0QAANRwOeJ6ty5E36fALKtZ/Gpnc4QQ20
Dq/DJB73Bj0TorvTrOMxuVB8gNGCESFpf6k4UOYM259vu5O6MGIExc1keq0rmfib3hHd9KZT
dv9o7ioTsdDeDTUgHTyAgDyi0XkHo/6QyJJGIsqvXbt7O8JwJBuRNwADYUrbFl0kA6/HKBit
tQXHL8XJz5fT/uNl90+ipstDxYocXghhs6U9vuzfrEHQxDyDlwRtQMKrP9HL9e0JFN63nanQ
LovGDFxdd/OPCdLzoShWecXflbeOBKQojsQkIE2p0IsQPQJ/05jyvpyXpJCGFXyHm83uDVQm
0Pqf4N/Pzxf4/8f7cS9dwK2ZLcX2sM6zki6Q3xdB1NyP9xNsuXvmqWDUp4IiKGF5Ou6G4SA0
HPBGAXgm4vcPxIDk0cRdHps6pKOZbBeAnVSFipN86lkBLBwlq6/VweSwO6Iywuqhs7w37iW8
x+gsyfsTXh0I4iXIO84/NchLsl8sc/3+IvJzz1C189jzRuZvQxjl8YASlaOxri2p38ZHABtc
M+JKppjidpPRUG/qMu/3xkQkPeQC9Bo+1oDF5LO+94a+7owUsZHNcL3/c/+KajZO+6f9UQUw
YAZP6iUjdoePo0AUmBc9rNdk2iczj9fNchLzq5hjWAWqeJXFnD0+lZvpgEYsAsjIEWgFC+HD
IuM2O+ixwY3W8WgQ9zbdFtHx/CKn/n8jGCjxvnv9wAsAx2qSQqwnMCdXwhkTJPFm2ht7JDiR
gjmkTZWA9su/D0oUF8u4Almth8SSv/sBEdpMNzo9k9q5wk9YSZztDGKiQPMfQYBK61HRCAaI
wOmVZykvaJCgyjLuCVV+G+pWUJIYo8yaITLXSWh6Sbdz+06zOoQfajujICOcHYKkgxsFnQP8
68CwiHVjLAnrTIY1YOulSaFhPiUWxwhrvN8ocBnN9GgWCIqSjWdB+kTqSaCamDxrVKT0AS2m
vUEkCT4bBE11hUC0iMUgmQa0eZIyoBuD89KHJEgMdy7EyKjmE4PbxE8NAdTGU0Ia97sqX5mc
aB95HKxgbOgkOO5P/Dzmjw6SwJFDReGKwJh+elQuBSAerB0IuG1B85CCpP2bAYpCX+QWbFlY
C0E5OFPYQxdjHKONPj7vP7Sgk62kK26b8CdnVQJmbMR6cCl7biOq6TfpbSkix0tdM4KgBPv4
JYiPy3TQHu5Jr0EXD8KTNGSXagZVVuI4eQ4nePYo+BgT7aNy5a9MGqP+5UR1Ra8+fEjzsl44
GADldVlkgEuBI74JGsIBaVmFvOqO6LRK9BydrWsVVOBnySxK9VUHR4F0gc4jub8EmU0aTHD8
npBgeJRmnNuzkjmHurblmIecxCOVYelg1fqRER2yS3yc+bwPK6h0YSUj9xVZHOs9UhhRLa+J
mUsD3pRG8mqCNgV7A7W9QQiiecZ0lrosgxuzTDREsAvEI2BcL7iYK4ogFmkV3dofNtLb+Z10
ELI/U35DTcyaYub8HA0CzB50TvUmQhnzZ3rUYA2R6y/LCl6IMgfOF/e6z6dClX5iw9osYBSK
4jPJvdG1hcl8DD5k994dYknhq6jJgeDkS7tgzSq7hbyIV6Fd8cN96og5iNFLmkkj/XzPBRtI
9PZtpTaG2Ck/vx+lXfFZZDeRnptkpzawTqI8guObjkZwqwmgNWRWLShygwXoPZKZDBeJI84P
fqJsF1REmvMeqhBTiXB/iE6jNC+lbDhO24nKS8tg6sUmduO8vvgtUobEDDkKsVlcxEmeIkEt
UhFnC7PPrRsZJuV0dNu/X6QYk8mqBQ2tysLkZBc9Bjt1YRiQLi2Zrp8RBpvTst+2gvQB4Sp+
o0M/wkILbKyoWBW0xZMoRVoPuUp9EYSpH8KxoSj4bBM6VWBk+NVxKgn6bwooRbzOaONQRZdu
cbd2w5NoA4LbsaAa33zro8aVn1kZywi3Fdyt3eOJAZ1gw0izdkhJCWqjqNfFponNy0WL0wgL
UGno1FCRDAbXI4T78QpUjsJMnCzHTO6Z1lhzNO6lnqzhNFZDbdDYVaXLfB07kWmYmDbAEaHu
T9JE5p12VNHRcOxC5IXWJfmAGXMMNsI0BuErNkVoi92U3PSEw09+qREiz5cYOScJkvGYqkuI
z/wwztCgpQgcqZaRSupFZi2EoonNcDvseRahSXbL8VJiVBLwS9826YDLeh4mVaZurfhS9Mww
BkqOqAOrKyB6xya98cYezUJI13NmMSozwzCVU4C/QJZknR+I/LXhr8MIpVy9QRkF7lXe0XIy
8RyUy5F9FYka9T/Iu8iHNlIKLiswokZwQYC04XxWc4PfHcLaccpRvpY5sZnZoyqUQufS/tJp
WFiGo2U6jbG1dSh7lz0fwowUkbLllTr5ewNoPnDNkaqdkg5/Txoth73ri8tSXQ8ABfxwDbW8
GfCmwzrvr8yWB6LR6Zw1BMnEG1skDYG8s2mOW1SjBC05j/LQYHAFxXh9/V0Aoep8cxOGyUzc
y2S/ZjMVBSqUuPtxjkuUqilD11CVtSrq2AkJbkHV5O4T9HIjlyeJ7q2TqEjjejMRxIcqKmis
cmABuT634qW2O20aFFnEpxK3Y6kGgjvmpesk1ASh/Nndep7vXSVYXhJEfIiNM0XmZxV3a/bt
YXg96dXhfFWGdtnt4SHEqCSXqmgJ+UoUDQaok80g7IcNVFbOfKY2pXmuAqxSXqAFeRno2a87
8Wn1pcMYrTP6gOqqxSaDRq1bjJnJxRjuhI2DncrC0jUUXdiP9mtac7rGtJOLXD+eijXotnkz
POTGRdm8uzgrwzi11Shrt7ur02H7KJ+zzNtCFQXtXHaVYKhM2OVnglfQzhQYKkwPyAaIc7Yt
DVhmq8IP+UAYNhmbuo8jnFeF8PnilNCheeTPpnI2N9ouNJcP2q86WRTatYQDUwtq/SWjguUF
qDCWPbiFlNHJOMO7to7mC39N1laHRukpf7nKUOF9mTbMizB8CBs883UjnnNMUnj23NaLLsJF
pOedzOY8XAKDeWxDajFfWd1CuCvHAul3kjt7XmoHE/ghUxRjaqo0CwgvEJcIeWJyuN9qFEs9
HZwGN+PvIKr0s8SsqJyF6PjJvQyG3WqF/5LALO3DoAbupAomEYFx2YRddB3NYoYJubJCF5LF
9bSvTWYE0rS1COki49qWOFYzcpCtOZmdZeSImFfGUeIKlyytauD/acjHpOxynJxlQWdD46eV
iWjtbwgKVKDwNtRUCIxjebsSAYkAfo5KKENoirxaEX/GTI/NJwOPyzNOkBhQvw0a3VqCUK9y
ZQu/xySEUtPRRmot0EygAilXopdgSZYeRgEvIxhKX1tR4QYfXXXNvoXUM4yjDEOk4TBnYI1g
YlqAIQjQJ+regYeywtQv7oGzZHmXGOpSZefU5nsDtNOjWxSzVQQTOYVps0gF8lpvaclkI1Qg
xyySOCulbVucsIu7XWWOGxGxqrJ5OazZOwKFrHWW465bU0XO53fpJsOd/nEG3IjFvQMGQjWI
ClgaNfzRK+BIRHwnYHeeY75R7olC+yZKg3DDVpjicG/Mp3yNIAkr4Wc5GYcma8jj846YX8xL
X/hL3n2soVYX5Mfd59P71Q9YFNaakI6r5OiKgHVi+GWdgY2DO2oluUGArwVVbABzjFGSZGlE
3AJVzL5lFAdFqE36m7BI9cYYdgvqTzs9zicbu3+avozp9HDlqSyZvJRMw+ouK25cdC1VrLUF
fnRBFL/sj++TyWj6p/dFR2MKBNn9IbXLIrjrAWfUQkmoySvBTdjkIQZJnzZbw1wq+LftmugP
NAbGc2KcjdFdgQ3M0Im50IExl9rJIJk6Cp4Oxi4MTcdjfMXdxVCS4dTd4mvO3AxJojLD+VVP
HI3y+hdaBUjOZA5pROlHkflhWxlvVK5TuHrb4geuovmwYjoF7yukU7hGt8VfU1614CkP9gYO
+NDJHs59AAlusmhSF+ZnEsrFdkVkInw8I+tZa1qwH8Iu7nNwUNxWNK9PhysyUUWCNyHpiO6L
KI4d5hgt0UKEBolJAOedG7t1sEPEKvSSVWSUriJOFSV8iDhWgBJzE5VLilhVcxKze5VGOPPZ
TZGohcqzdvf4eUCLSisLNEbq18vF36AL3K5C1EHtfbfd2MKijGADSSv8AvPfsqa3Bb4nBVYl
jSLYYNgKAFEHS1A84bSJGqObSupkkX+Bqgz9ldImk7CUr/NVEfmOS4KGlru9aFBUR5uDjoM6
o7pZYC89oGm+1CkTGDEVdlE/cDBoTHe//Prlr+P3/dtfn8fd4fX9affn8+7lY3fo9t420PO5
e7pbcFwmX7+gd+vT+z/e/vi1fd3+8fK+ffrYv/1x3P7YQQP3T3/s3067nzgx/vj+8eOLmis3
u8Pb7uXqeXt42kkz5vOcaSJzvr4ffl3t3/boErf/17bxqW2VF79eilIquHASKWAdRBiLuoLj
lzbXWaqHkK5zCUTzkxsY5JTjrUYh4lirhisDKbAKVzn4tg86r98xVj+ntBR48UEJtAihLGNa
tJuvnYu7uUo7buFqydpjun/49XF6v3p8P+yu3g9XalZoAyCJoSsLEl2dgPs2PBQBC7RJyxs/
ypck0wJF2J/AWC9ZoE1akBzVHYwl1MJ7Gw13tkS4Gn+T5zb1TZ7bJeDjtE0K0lwsmHIbuP3B
qnRTd5HMMVR8aVEt5l5/kqxiC5GuYh5Ic5YouPzD+Xq0HV1VS5DU7bTLP7+/7B///Hv36+pR
zsCfh+3H8y9r4hWlsJoQ2KMf+j4DYwmLgCmyTGyWghxch/3RyJu2jRafp2d0nHncnnZPV+Gb
bDm6Gf1jf3q+Esfj++NeooLtaWt1xdft4Vre+wnHyyVslaLfy7P4Hv05L3A1XESlp/uhth0K
b6M10/ulANmzbjs0kwELcDsgZ+S2GTNez2nRc+7Rr0VW9nT0mckX+jOGAXHB3RU0yGw+s4rJ
oa0WcENzALarMLzH+M3u8tNly3d7tQagY1UrbsxCDF1p3T8st8fnjr8GNxJhN3nJATdc59aK
svUK2x1Pdg2FP6D+kjrCzYDNhpWws1jchH2b9wpuDy3UUnm9IJrbs54t38n1JBgysBHTsSSC
CS6Nqi7O3CIJYM38joLNannG90djq1UAHuju+O1iXOrhfM9AVYRZNyBGbPC4M35gl5YwsArU
i1lm74DVovCmnBC/y42alVTYfzyT2/tO+NiDDrC6shWFWZzdzSN2UinEOUaYMYkEpgGMbInt
C5Xs0wgspmEviE1E26MXhJy8mMu/lyZLKeJSsD5phjxnpHSRG3Fnu/Fks6Q343eXscxs4Ge2
qOF7f/1Ax0OqWLddnseCJOxuBPBDxjRqMrwwLeOHIfMJQJfcUbhBP5RVF1O52L49vb9epZ+v
33eHNooO12iRllHt55xuFxQzGcVuxWNY8aowSiKZzZc4IwuVTWEV+S3Co0OIli/5vYVFXa3m
1OkW4WpNh291Y3ezOlKOSzoS1sLaVks7ikaTd7YkTKVmmc3wRb3iTlWdMBLM9o8drZvsI/px
5GX//bCF48/h/fO0f2N2zziasfIH4c2G1NqtX6JhcWq5XvxckfCoTm28XIKuXdrowNG3dpME
xTh6CL9OL5Fcqt652Z57d9Y/WSLn/rXkdDdR3idJiDcl8poFjQ/PpWrIfDWLG5pyNXOSVXnC
02xGvWnth0VzixOe3yzPt003fjnBVJVrxGMpioYV8W1FNolW2jVa1ZR4bWy+kCosnruwFO2e
JlqkmOImVO+b+PrY3jp1KwGjBP2QZ43j1Q84mh/3P9+UO+7j8+7xbzj0a8Yz8v1FvyIryHup
jS+/fvmiXVQpfLip0MDjzD7XrVaWBqK4N+vjqVXRsOD8mzgqK564fYH7Dzrd9mkWpdgGGMi0
mrdci52CI45SjMVZiHShry10MCOsmkWgNmHmAm1WtR4woFGlfn5fzwtpL6yPtE4Sh6kDm6Kj
TxXF5H2uCIi1chElIRyzkxnJtKIuLkVsl5n7Mkmabo6IHqBWUG3Mm43NgpNHvvGXC/mqXoRE
PffhlAp7FwF5xiKH1SfVelbW+3VUrWpagJHjFAGOzHWUBARBOLt36ekaCa8qSQJR3Cn9xvjS
lQ8VsGNHceQQ4msvJSANu6PWmUA7k5sHKnSeqzTxfLYhFGmQJQ72NDQPKHxhy6R624PaNAwo
qHHS+wGDWVAoGlLZ8CFLPWSpUXVjyCWYo9881MS0Rf2uNxMyvRqotLBl7WUbgkiMh8x3ouDt
R8/oagkry11uCRLcbuTM/2bBaF7MdjHKO18azbfAZGagHmXkfKND8QnDGztwUJeOk7ZJa0zX
W4Rkb8Q0biAj1pgcshDaXoNX41FGTH0VCA0qaiI3EE4SDMAPaq6TyqYpBIi5RbU0cIhAu2/U
90zh0xRf3xUYc6RxLKaVQW9jUSByKRVopoQyrFa53bIOX4GYD7K71CZBQJqlbdkY+z2n2CK0
QL7JjzwsQDq3CHUBs/ux/Xw5YSiQ0/7n5/vn8epV3d9vD7vtFcbc/F9NhYWPUXurk9k9zKKv
3tjCQB34VgkqxVevp0mnFl/iJYf8mpdiOt25rN/TJhHnuEpJhGakgxgRgzKT4FhNdDbh6cCI
l0HAdanrJ4tYLR2N+Fbf6+JsRn91IlKbfyD8KmbTheWYRL5uD+HHD3UlyM0jurqDvst5ZCd5
BNKVyPu5HtMkiwJpaApbv67ioQF0rCeKztE9TjdSnX0TC+LtiU+J6eJyWldLw6HvbK1iKKEf
h/3b6W8V+eZ1d/xpv9hK7UklwCY6sgL7mBSAPWUqE2pQIRYxKEtx93Zy7aS4XUVh9XXYMbXR
mK0ShudWzLKsapsShLHg3lGD+1RgTj5zqulgM4j6fTLL8JQRFgVQkQyCTo51Vyn7l92fp/1r
o5AeJemjgh80/mrP0/KEnKzwvmoZsol65gU0o74TRQrLvT+kEyIH4Y5+GQ4zrAJO6ConcMl5
CywBjelXohQksv6e0yzC0Ee9Ei2+ElH5mjQ3MbJ5dZbG1ABSljLPpB38KlWfSIlQD/rcPivF
9J0A6as6nWdyR9NNF3W42V5V010obmRCGT8nSbb+4/H5Lz0bdLN2gt33z58/8S01ejueDp8Y
l5WMZCIWkTTYY8N4NO0rrRaXUrLd1Yr7JudK+TonCRK0K2bH2CjJ8X69FHLzB/7eLGhuSPzN
FryalabFi5E9+iJzaE/REDG0ZhjaErb7ZPOo3RWmySGUBXD8xIDz9EZXlYJ4uUHwBiT4NWz5
jkO8RMOEKrPUdUo91wILijvaKIK7jdk9EOIhedgiYH2XMupqKdAGwFlfSyQNyJ2VoBmmuwJ0
0/53Zcey28YN/JUgpwYoFOeWiw/UPqKFtA8vuZFyMgRZSYrWrlHbQD6/8yC15HBWRX2xvTN8
D+fFGRK5wH82gorCMOXh7SmW52eBXX9KqM8TAiibO9iieZ8CZLEvHFwxoWiIWBHwzdKDqq5k
NppX/lXjf7PiyTjN6CajbEQPuEIc/KoXxW5oEpFjULYGNpTieWMoLhQK+K4HrMahSmXK0ttJ
MvRj3iWyJ3YjbhLySijgv+v/fn75/R3eE//2zMxvc3z6kfCxweCFRMCne9CONZdWDMcEgKm6
vUmBSI/95G4j3dT2tUOPAurm/nmehclE4P0G03ydsVsVaX8HMgKETtnrfqLrY+UoNeD/D2/I
9BV2wxQldAb+6L3R8bfgu55ja5S6UzrGCdpWlb8wkV1TeNY+89HfXp7/eMLzdxjC49vr+dcZ
/ji/nlar1YfIa4UJE1TlF9IMp0GGwQ9j//WSIaFOJtWBY7hC3GgJTq46VBpBeKqDwWBV+d5R
SgqM/Z6R7i3ILwxHW2xl3NuqtXkbNIhMAiQorOdDE1WcVzMXxwmk0xPPk2MnB9YOFIspH8Ky
n7ueGRy2qGWhWU3/H6sd6qM8QrRE6p35Ekf0I+cjYNQt1MYwCG3qLNjdQLjsPJID3zLfVlgx
A0DcAUNOM0MidvIni/+H4yuYsSD3T+iLTZ4Qpdlt4mnxstR/lLzrmvzl6EuQdMoakwwCo944
g/o8XnrcpCFzV3ucdq4YYco61/AN8Hz8WEwap9CJAmUqPUOkfM8oIoKBbhGVU0ZJFaQrjZ+q
O3vhVvNlpEmPhaJy51XlMSjJgdIN6FjFN9dHW6Sjq52h0Ujokzi/aPQqNNhYteiwArzfN26D
RrKVLTC4JaUDENAbLlAwQwYJnTDJLJCVFL4g1zIDudfosZBzyq0Wnp2FiUYGId+75AdbET85
JYBfwBOcv8s0m5+oKq+z231y2SIofS0Q8HinDytrL/gyZEMeMRIMwYoKI06saRRLoYye1Zqu
uH6iQ4pYjlBcPCmgC9RZV1m8ZpS03xmXffVk4ZfeZktqOzPYTZ+vdQAE61DMO1e7BlaJVxeO
fY2ZxYkLJoFVmakVi11CMB0wLYOHYFxSFaAXZCDjgJavYQ7xnZGzE/YW0WaS+dXBLpNfecxM
x03nhUEMI+K7XwNb2LRm1DdEAp5PR33VZkc+31q8xC4WM5OfAeDMiC5dyTDnrZfi6G6QqK9L
yPk04b7K2rUGLwtUEy1nY4LvvPAWeZXESHBCgMfJ5Orxn0dNzuCL1YPDBEHhrYoAxNpjD8PU
7TFrcsx8JlFmh8cQJyOJsJjECbkX6uprtR4ElFTsprK6ff+AY/n4fPzrEW/wXNn3om5YivvP
nGqVA4bNN3t78+v0+YZ+FAy0ywDj+/n7EgZWjiZR7eZ3hSV4n4gVCR3MrvU31V6mLRxgzQN9
PJ5+fnx7OvlwqtXP6Pwcl8ziMwmqtZIueeyvdeeXV1QP0XYp8IH2449zlE4zdbH/mP7NiYA/
pzuLv1UHomQVRhLVK8FzupHXv9Az2o+eWzTqZZacs3DBiGupTbNjV8qSvi4KEwEWHCqV1lKj
5q0LKlFFcJFd27Xboo9jotkmB0scPns2M6QPSQFA09FAySA5CtOHXMfHm8321rZ02majMBAK
gbCJqKbvbdOhl2YQn1PMdbADiJnmGuYaDwUXVcv4VFEWTY4Vl2oIBykKK6fObqpDmuHMQ+BD
Dc5FSsgtgG0xaK59DpsBuOsPos5L0Eda17pxrRraTdBpasqsyIFOS5eKYI55DQxeND/ieb5D
P5icgeScnz41pcka5ZMgbWMAs8ZRaNKYStbN2ILpJ9uVWeRQBezjXSlZCOOpLINjc1RAFDiT
EQ60ZJelMs97dnaTwkFKFqADLq5bfk7mCYdCd1RvXKi34dGnBSnrCvmT+sxW1UpT/hqvjlxW
aJC3jbVI7GVfTHgkqvtE2HZfN8xmrSozxIHev0NZ1cy7UQIA

--vkogqOf2sHV7VnPd--
