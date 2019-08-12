Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBXOCYTVAKGQELPQKHTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 3093D8989F
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 10:20:46 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id i13sf247813qtq.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 01:20:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565598045; cv=pass;
        d=google.com; s=arc-20160816;
        b=jPaAOrDfBg38utW752Sx/XmOZUaXi7MWg1fHYxYAepOyHIMWSomwvxyB/7v6JDk7N2
         dRBWdckW/G+qq/KDumOFTgomoIrODMTmqeUNT7Zk22cl0tsK6vd1m1y1NHUv5JvOD0BH
         F2C6DzLWafNroyqHMd47Zv8dTVj92pvkHihIBqcmNsQjRRYJkP85alFrUg/w/hErrg/w
         xwr+WhqBbNBKVd5t9DX9H/PIQeZj3GGrTsSirfXTlyAM3GvYCpTnbkkl1rftAkmKN78b
         h5TLHLsjQaffq+kIOndkyY5RkRW6+SO0SVwMYstxG8vd/fRHhVtgmTct4P7DYVnjEmwa
         C6Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=GsKI2i6TFpQb/sutakPj6q8J2C74HplmuXl5D4medyY=;
        b=ak1D0Z0jrzjKGZvZpx54Rbvj0evCguTXtEg02+DpCZslWsoKpqd2XJWYpZeU1ig4XO
         XjPZrbBhbC+BX1ZLqiQAr6zUfnXj3ownMfevietqLIpiHlGpjOQOGdRWqiryPUq9I8l/
         iSpnGFcWQypZXjdqYcA4yLinjFtJpV7PJ2eZFtShWigyuyT6g79i19AvBHghe2/GJXg3
         4l8YMk7Dr+vRDienLMAbEcmV/j5NjUq24aAr7Ixhr5y9dVFspn1w50crVQWnqFk/TSRH
         X4pw5tkEgJcTOX5ZJUsUEfW5Mr7qraemRTz/oUenR/HU3gK1WVUZwXquiqmr50z4YPiv
         ooCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GsKI2i6TFpQb/sutakPj6q8J2C74HplmuXl5D4medyY=;
        b=kR7CTssC0BKvstGSK2FMP+mEDRydTQuCuLwhaEmfobp4SjMIfiDPcRy0Gszi2U7ZY3
         ICOfA8CMHR9yRRrC/XgrOfUA6PS24ieXcBAuMxhHZn+PIe765AdjLi0fWwx2u1xkHm5K
         edeE+7PH33chfyf+B/Ogsqd7CGFxdw5GT2/QpTI4Y4zwqL+mVefkZKcHtrRkNQ9d7owa
         JHWVcvplT3C6j+5Au0bQu1wdWHvoty5WxGQ9Fq3r/rmJstnMkTc3ueka7wqsgmOsyMaf
         rlKVvp3bgtF4qcntWLzYppITN6UnKq8bAHPdrTlJw7r1uZ3Opk+goijCs3fnw1wkBmnV
         yU0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GsKI2i6TFpQb/sutakPj6q8J2C74HplmuXl5D4medyY=;
        b=R1CKRAmSmrJZUJ2N9w66IG7PojVM1QuGMZpClmpS6FoZrdfvGY82y9Lhngd39C8jrU
         19EKVtMUCqEZ6aLcA4nqgKLDTJJxRyvey9Jx7pYWgPG4kX+8wNgv2Q98v8QedRdoBcUc
         DYvCvkE5MrA5AXl9tznT7NIGZ2zhqvBhQ2egzuyFv2I0lqLeU1HnhPKuGxj9QDhL5TUw
         Y3v93Gzy3tLqUjrmDcHGelq+ZKPJsUfM8wlWEIIAMQvQZ+8OOOcLE5bgMJcZzafsDUjv
         zlBAMAxQDtZgoFy+biwpSsf7d+pX6XE6foYyqMyiXbU7DD7DmH+7VbeogFwv4L9bh5u6
         jSGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUBJkOEKsTk4IHw8MqCdrU1QTH+RuWxwm1CEv2oEeiNDIyDxwin
	x48L8J1GoFi+mRC7ETEyH2o=
X-Google-Smtp-Source: APXvYqzVu/WtBHOTa2Br30g5Xr1soLQo878Ka7DPo8ge5P2/uslr5+aLLltqN1Q9wDgM4mbxAz7k4g==
X-Received: by 2002:aed:3aa1:: with SMTP id o30mr6231115qte.198.1565598045331;
        Mon, 12 Aug 2019 01:20:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6b87:: with SMTP id z7ls4459415qts.5.gmail; Mon, 12 Aug
 2019 01:20:45 -0700 (PDT)
X-Received: by 2002:ac8:7cd:: with SMTP id m13mr29119828qth.341.1565598045083;
        Mon, 12 Aug 2019 01:20:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565598045; cv=none;
        d=google.com; s=arc-20160816;
        b=BfQVs47YHYI/slUoJaVtYtkVx6m5evhLcuGVhM5ZdmjuXomZ6a8FDbCVSqjF6xaWX0
         BL3k0RcvTTobPdwu18HLzgSfjgtURI9XIV6f54I8F4uh3/tqxP7qd4RP3IVAd67v4kMP
         WtUEZ2Y3RABUrRILZYwwoBs7b04PAxHWdljV9BcNDwF1BB/jhG+vG53q4wR+OywGnMxE
         4JrCzQSdlRF+wgqkajCxF5W8FNshlDZXUTGLOsbAAt6vTiqDQxnX05pBjsoJ6RFfZX5v
         mVwDtnda7nllZu0PdH1kEZKQIbopPiZqm21cng4dMDdXp7q9U9PIUpCc0sysTtyJ8BJi
         7Nlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=zYKF7Hghb2ywJgh0IICJtUoI5kIyir6s7ruDvhGvrY0=;
        b=KqRquxOJ9zdbw69nxkzmBX+QZY8NlxFV3Qx8/6PR6Eh4Qc8+Vt//E2uRFTAen5uHfs
         uM4maz/dG6Gd9lSIaoT9YyCT//obw4mDay1iDgRIzhA61lPCClOZNlAB/vgQV/n6+jjo
         iP8n/taAAnI4x+doWyercWoiPr7ergiXtTf9DvnKb6CPBiUAiwVBIdiW4/Wo8yXPrRcD
         57GwcGpIsSdsscQ8WLS5PwXDeE5gEn5GH3e0iHpYLgVuYj4+r+AAXskLWdj8jEvTyqlM
         SoVP0bS2h3OXR4hjj4O8vxuQJm1cDO5QB3PtV3rSoFfpFJ98ZOGF5VZq1ds1J9Q5zYhT
         Lwmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id u47si738817qte.3.2019.08.12.01.20.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 01:20:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Aug 2019 01:20:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,376,1559545200"; 
   d="scan'208";a="259710494"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 12 Aug 2019 01:20:42 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hx5ZJ-000BbY-H1; Mon, 12 Aug 2019 16:20:41 +0800
Date: Mon, 12 Aug 2019 16:20:16 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 01/16] ARM: remove ks8695 platform
Message-ID: <201908121610.iJ1R4RJd%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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

CC: kbuild-all@01.org
In-Reply-To: <20190809202749.742267-2-arnd@arndb.de>
References: <20190809202749.742267-2-arnd@arndb.de>
TO: Arnd Bergmann <arnd@arndb.de>

Hi Arnd,

I love your patch! Yet something to improve:

[auto build test ERROR on linus/master]
[cannot apply to v5.3-rc4 next-20190809]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Arnd-Bergmann/ARM-remove-ks8695-platform/20190812-092409
config: arm-allnoconfig
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        make.cross ARCH=arm  allnoconfig
        make.cross ARCH=arm 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/arm/Kconfig:736: syntax error
>> arch/arm/Kconfig:735: invalid statement
>> arch/arm/Kconfig:736: can't open file "arch/arm/mach-ks8695/Kconfig"
   make[2]: *** [allnoconfig] Error 1
   make[1]: *** [allnoconfig] Error 2
   make: *** [sub-make] Error 2
   1 real  0 user  0 sys  70.07% cpu 	make allnoconfig
--
>> arch/arm/Kconfig:736: syntax error
>> arch/arm/Kconfig:735: invalid statement
>> arch/arm/Kconfig:736: can't open file "arch/arm/mach-ks8695/Kconfig"
   make[2]: *** [oldconfig] Error 1
   make[1]: *** [oldconfig] Error 2
   make: *** [sub-make] Error 2
   1 real  0 user  0 sys  73.31% cpu 	make oldconfig
--
>> arch/arm/Kconfig:736: syntax error
>> arch/arm/Kconfig:735: invalid statement
>> arch/arm/Kconfig:736: can't open file "arch/arm/mach-ks8695/Kconfig"
   make[2]: *** [olddefconfig] Error 1
   make[1]: *** [olddefconfig] Error 2
   make: *** [sub-make] Error 2
   1 real  0 user  0 sys  75.17% cpu 	make olddefconfig

vim +736 arch/arm/Kconfig

828989ad87af15 Santosh Shilimkar 2013-06-10  734  
ffa8f76f1d8470 Arnd Bergmann     2019-08-09 @735  <<<<<<< HEAD
95b8f20fd6a269 Russell King      2010-01-14 @736  source "arch/arm/mach-ks8695/Kconfig"
ffa8f76f1d8470 Arnd Bergmann     2019-08-09  737  =======
ffa8f76f1d8470 Arnd Bergmann     2019-08-09  738  source "arch/arm/mach-lpc32xx/Kconfig"
ffa8f76f1d8470 Arnd Bergmann     2019-08-09  739  >>>>>>> ARM: remove ks8695 platform
95b8f20fd6a269 Russell King      2010-01-14  740  

:::::: The code at line 736 was first introduced by commit
:::::: 95b8f20fd6a2694a16b8addb190b942bfb670c88 ARM: fix badly placed mach/plat entries in Kconfig & Makefile

:::::: TO: Russell King <rmk+kernel@arm.linux.org.uk>
:::::: CC: Russell King <rmk+kernel@arm.linux.org.uk>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908121610.iJ1R4RJd%25lkp%40intel.com.
