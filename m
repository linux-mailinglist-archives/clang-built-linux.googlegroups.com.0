Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBL7G7P3QKGQEXPVMCJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B94B2136D0
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 10:58:25 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id r19sf19198479iod.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Jul 2020 01:58:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593766704; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ke/c8glMZLtVdnrBa/EcmwPnAo5E0iLF70IqDGGvcMxzP/mjztefB2+qGbiSHCy1B+
         vbAJ729V/pSOMgKjCkgoUBiI6c7nZ7oFnXwznk0Vqzlvl+c6mNi+usjIHnxN2rifBImR
         LNR5mDruI3zspYGeF6A1FGpxPL+HY/qrw1YGG8Tkb/YDzB0Lq2R4Go/IhVTghRb0YukY
         ay7mW2WUOf9uwfRg2qVRH/wlyPfGd4jxSr05sxIZAWMtpSbmT8u0/elA7jFafyCrieMg
         qX1m6UqC7TTSwC/4fEAz3JoFQmLmvsAlAGiPLyjRSCrtEIoCPOyv+5I27qM/prDszl2o
         ZVTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=7J5EFWU2NyJnFaXxiKfMK+RNfHb31v9Ks0V8mtxHK9Y=;
        b=Ot2fgkQ0XikAHB++g4t6suqmvByIWkOxsaHVJ12VbCsBwkYkVTHdkJvmDhRg5Z+5+8
         rubNX5xAd6GfGfZGjQhW5jJHrgw8hRdu/gRaGd3ww+yl59tyuMsLRf6Lai9ScdTdInTo
         rTD22iqWl4wvHP6l6xeIRfP9DeROVRG95HrzrQWAFCQl84KQLeccQwzjszFqMwNU1btp
         EL83OD2UVvYv18nMRlUakqhz20ZuKhRNRhj0VGjAV6zJR4bm7vid9BPOKs3e8Bjou//f
         V8m3TY90EVuG2C7bIXKruqx/MZaT5OKZ04xPaWDpmIb9Q3pCtpsqIiHcFVNDCoAailoV
         I+bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7J5EFWU2NyJnFaXxiKfMK+RNfHb31v9Ks0V8mtxHK9Y=;
        b=gwEyzJHc8SPeEG5DSZui5JGzYJWx5qSltlwpAf1FWXeIu4Rb6pllmebfy7SyO3nT0t
         xlnloH95O0Y3eo8QDu74SdAAkS3+5kDPoZIvmI1CBICnK7D2RCXdxN1296R8UyiaRw8F
         uKAX+dX7HFN8K2KoSI9DsHzgCGr//ZkfVxs4PTaL9T1njxgglw+l9vzwz7AnPJdpdxIN
         Y38Q86p2CfS1NFGm5ipuVAQWBvyl9uSDBMStnONia4SBFPcWGP0puRI+4iTbJyz6AG0W
         UnrOwnwHfyBMciEPpMXUoRiGsfM3DSHHbanurBjAws/DL7Htk5PWxX0/SHxFysg91RpV
         rs2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7J5EFWU2NyJnFaXxiKfMK+RNfHb31v9Ks0V8mtxHK9Y=;
        b=XjvyFYNE7Zy65kaqt8o1unEaEZv+wgIROLVqMO7QL4zIIb0Dpa2w8PhAswj72pWIp/
         iUgP8MHEX8BrAgXqUUWq4XfOtbshLcgF3Q9TPSbRBbx8Hdla5/xE1oNJFjswfP/vh0mr
         gxbUc7tP9R95fihb5r2alZN5dPfA+oH8X3cfbl8pk/goy+fnb/TwAJhDoFlGoL9nK3gf
         S75Sbx/n7FWYB1iw2oDp03xTGl3AHHRgoaLFdfjPd4QeSPKg1wqErAY0HO7hNGoFtrjh
         7zYa9jon5VNXHAuokdcdHEjtBfvJlAB6ZPbKaIoYq0vC6A5Yr8iOJ0+wSllW2zgSBFHg
         nV/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533M+qSVZRblhgGkcdesFkDzrMLYaMaElxEeZVJV83RoKEM4U0+I
	haDvL5857xKeY682U3byPQY=
X-Google-Smtp-Source: ABdhPJye7u37luDkAQR44H9keIfPnhTOmTymXATga2OpelLbOheBRtwpkx65gayXa2V90Jfq8ziBcw==
X-Received: by 2002:a92:d64d:: with SMTP id x13mr16682178ilp.287.1593766703922;
        Fri, 03 Jul 2020 01:58:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:da02:: with SMTP id x2ls1692895ioj.3.gmail; Fri, 03 Jul
 2020 01:58:23 -0700 (PDT)
X-Received: by 2002:a6b:6b18:: with SMTP id g24mr10837394ioc.8.1593766703579;
        Fri, 03 Jul 2020 01:58:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593766703; cv=none;
        d=google.com; s=arc-20160816;
        b=gKlJmsW+93GlfXnKEyK9D/ilBqBlOwsxNRifnTwunV9QQBpPfNNqvJdbFZZHDvZWBQ
         yLGR9EIX18OYwDnWKGPUbxn4esyaevSe5+JLnbZ0SXiRnNKk6yRt6aryMHi01jr0zdnu
         9deQHfE6yBnhbIxEjjmg7Wjnt9U0CBxEZPAL+cVqWuf2j1PQX1G7YLt9ISU12zYqEMV+
         jnlPpwEX/gVeuzj/oN4JE/+KoAmERdnvyMjyJIzDGvQkz5qA+JXjb0Hom6dwk6Y63hlj
         r7GzjrRcjwlHl8NgkQsCfyJCq2Ro11rQeTrXzwx0a2Ls1SsR6S+qFuFccPuK32SpV8fA
         t3EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Y+0MRh/IEku3teefPogVy+Diq4MRq27RvQP9mmfZS14=;
        b=gEd5L/Mvrq89+Ux7usMwV03hP1Yfp9z03KgGqTNXX6IfWAi8M4KqQW2+b4WyBO89Co
         bU685pAOTWDjacc6cQNImlfGpiCg4kCDEI88sDaY60zUbG9hYnJMx+uGxEdb2glXPn6W
         KPD8Jsz2wE1s1FGpOoGwni1OTX+Gdq/utkDvS5jok4/K7Cogy9KQaK4i3cBRDMeGapTR
         JBUstMawD7asoJ7E8DkNzA6XfVDSl8f9vBDgLjyvIlSAEHyXPuKUeb6unqVUAiPeEcTZ
         2DwIU0B6Qawsgzk3pJ+ptHfztSi7I8ymDQ4iH91ncbT1XL2rJmjWCdUny+08MuHT7+1U
         XfTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id i20si64028iow.2.2020.07.03.01.58.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Jul 2020 01:58:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: 5xn5xcoeooo1fJ14yMfR3ORb6i4f/yQUESRIKmsx3miwP3TlwbQliMgqzu2+yBqhD5aJ/UVugu
 aP2qbERwmO1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="231980980"
X-IronPort-AV: E=Sophos;i="5.75,307,1589266800"; 
   d="scan'208";a="231980980"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jul 2020 01:58:21 -0700
IronPort-SDR: dtNK8s5tyLG1B7zC6gPDuqFtUOKmR6PGm4JsaV/df4jzRu/Cc0qU8aFffNE0ennvUZSSrCWZvW
 G0Ic91yJO/9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,307,1589266800"; 
   d="scan'208";a="321755500"
Received: from lkp-server01.sh.intel.com (HELO 6dc8ab148a5d) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 03 Jul 2020 01:58:20 -0700
Received: from kbuild by 6dc8ab148a5d with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jrHWV-00008j-Sx; Fri, 03 Jul 2020 08:58:19 +0000
Date: Fri, 3 Jul 2020 16:58:14 +0800
From: kernel test robot <lkp@intel.com>
To: Andi Kleen <ak@linux.intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [ak:lto-5.7-1 26/28] scripts/kconfig/parser.y:5.1-28: error: invalid
 value for %define variable 'parse.error': 'detailed'
Message-ID: <202007031612.ZJoPYzak%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/ak/linux-misc.git lto-5.7-1
head:   6862f269fc78fa9e641ca8c0b5f5cd02d385ee66
commit: 1019fa5b482944935bbc749f0d08be714441687b [26/28] kconfig: Report better errors
config: x86_64-allyesconfig
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ca464639a1c9dd3944eb055ffd2796e8c2e7639f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 1019fa5b482944935bbc749f0d08be714441687b
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64  allyesconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> /usr/share/bison/skeletons/bison.m4:1026: error: invalid error_verbose value: 
   /usr/share/bison/skeletons/bison.m4:1026: the top level
>> scripts/kconfig/parser.y:5.1-28: error: invalid value for %define variable 'parse.error': 'detailed'
    %define parse.error detailed
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   scripts/kconfig/parser.y:5.1-28:     accepted value: 'simple'
   scripts/kconfig/parser.y:5.1-28:     accepted value: 'verbose'
   make[2]: *** [scripts/Makefile.host:17: scripts/kconfig/parser.tab.h] Error 1
   make[2]: Target 'allyesconfig' not remade because of errors.
   make[1]: *** [Makefile:589: allyesconfig] Error 2
   make: *** [Makefile:180: sub-make] Error 2
   make: Target 'allyesconfig' not remade because of errors.
--
>> /usr/share/bison/skeletons/bison.m4:1026: error: invalid error_verbose value: 
   /usr/share/bison/skeletons/bison.m4:1026: the top level
>> scripts/kconfig/parser.y:5.1-28: error: invalid value for %define variable 'parse.error': 'detailed'
    %define parse.error detailed
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   scripts/kconfig/parser.y:5.1-28:     accepted value: 'simple'
   scripts/kconfig/parser.y:5.1-28:     accepted value: 'verbose'
   make[2]: *** [scripts/Makefile.host:17: scripts/kconfig/parser.tab.h] Error 1
   make[2]: Target 'oldconfig' not remade because of errors.
   make[1]: *** [Makefile:589: oldconfig] Error 2
   make: *** [Makefile:180: sub-make] Error 2
   make: Target 'oldconfig' not remade because of errors.
--
>> /usr/share/bison/skeletons/bison.m4:1026: error: invalid error_verbose value: 
   /usr/share/bison/skeletons/bison.m4:1026: the top level
>> scripts/kconfig/parser.y:5.1-28: error: invalid value for %define variable 'parse.error': 'detailed'
    %define parse.error detailed
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   scripts/kconfig/parser.y:5.1-28:     accepted value: 'simple'
   scripts/kconfig/parser.y:5.1-28:     accepted value: 'verbose'
   make[2]: *** [scripts/Makefile.host:17: scripts/kconfig/parser.tab.h] Error 1
   make[2]: Target 'olddefconfig' not remade because of errors.
   make[1]: *** [Makefile:589: olddefconfig] Error 2
   make: *** [Makefile:180: sub-make] Error 2
   make: Target 'olddefconfig' not remade because of errors.

vim +5 scripts/kconfig/parser.y

   > 5	%define parse.error detailed
     6	%{
     7	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007031612.ZJoPYzak%25lkp%40intel.com.
