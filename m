Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNVJ2X3QKGQEIEUNZVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DDA20AA4C
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 03:51:51 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id h25sf4977157ote.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 18:51:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593136310; cv=pass;
        d=google.com; s=arc-20160816;
        b=MK22E5wZoPEKjqg2jogJ59uKroJCRz48Y7VYp+2Cqdyo+13+oluHvU/RSFLyA1rNOD
         B1ccTFT49cdita2/nuRNJSUUWK9ibLaGsCR6DJK41EdG/usr5LCbvv3YFgbm+j8LRT87
         9XB3TExGHWyWuNUIw3reHeLa/GCTi3edN+JBRn+HvmlhmgwcVbP5E7RA14ZX7YMsSlIh
         TywlAdK92sUaLhrJGCwJercpWaWpWaQP521NBMJ+fWCSkUnHWm1pq48Mf7V8b352K3x1
         yjeEWHmOxKQarjnvOUoJPtkkNb6mkHHDdVKUKKP5VnFMI3dkWz1MKr5x+3YDCH3rsOeQ
         Edgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=eFbmJWw/b2QkEqyo72sIzuZMkLfhtRI9bI0AeIJZCCM=;
        b=pDOrZF/YG6Yw4sXmaFWkWVPKSmt+gVafhDM8snwOEU4IWFSO188aVUx0SPDm0HTV4f
         YPKNxQm4nyAyQFc7uAJoedPEHhmiEaCdVXCcD5C9k3PwQAyQCoYWiCkGMAZhpWfM1ng0
         5bMBjKPModOl0MWPnnsz+WrEpzLT0Ad0p5hopNyYLCySmxPeklmHPZKbAyoflLfZfLs7
         gj1ead5W6eh00w16WvIX8Jf1IxJjzVyP+ClS6XdRvz02yp/kN26CRjQJxIcto4Yy9h51
         tatnqu9G+uAhQ5RtkzalGrUVLuJ3ASaJkSMLCd+eIk+fXwalhKmulIx7TNABHG4pjVvP
         i2yA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eFbmJWw/b2QkEqyo72sIzuZMkLfhtRI9bI0AeIJZCCM=;
        b=aAIzYVMnYbNLWYdYBGAKjTWiHzpiHTWN/WGNbLppCARr6UaLYS9ItnfOr4MqeYCjNb
         OeP36g+6dpMypoYhtWxu7IUi3otZvpwXPaTdNBB4ROLb9jmWwmEqVZhobHHpLPpN321R
         lW5wxvMVDGbTjkFZuXzpNHBFYU8OAYR/EO3/AHI3SivcUDKqrHb3r6Nk/SkBedSf/QD6
         VoRbJUFqawhcNMoQStGtxu/V4IUKeS0LreqyRmwknMSyIZ/edTI6fpd19qrZ7687ojYx
         55rijPnA89uLWcZnmy7lQJstRaBx/ccH62PpwEquop8LCy5nheEqVEtp9rF2uHaqO7YS
         rbrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eFbmJWw/b2QkEqyo72sIzuZMkLfhtRI9bI0AeIJZCCM=;
        b=Ur1JcX+ErEVEkR5u011VVO25VWBh02Br+aSeccNG6dDY2ZQ8QxN9GFlZyUdS3VkFB8
         kylff8IzpXPGkwtj1snFwmAR6cA9WD1CtLy5VvNBDRNm2TM7eKng15I7lDluGcRktbn9
         WN+alZqQnn7MpBInK3MqlY0mKymKl0fr9gaKmz0t9WSd+lEOBm917I1v3Imd0Wd9W/BW
         IzsQ7ID1Bn11BHW+6tk2s9Purtb7/adiKSSMzNtgq1E4f+Chd9Mx1t5w1uwn7dWqH0lZ
         hCzc6I31sLbFYb/CuKK+iouADNHdlcIRhPf5ZlOdrjAgzDUa9zHBzeWV6J089lpkGjiw
         zYcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZNkFo/LlUUnGiMeDdOYNVOXkiKzEZNcQ0NxI/9sQoH30c5WUr
	GyQ5yS3qneWnDRv+xFe+Nwo=
X-Google-Smtp-Source: ABdhPJx0MRXBJsjVvH+TTgoC112FmFtPwRvKlhdUC1Mhpdkln4lfCSbJzzm3+3fhQE4a0mOK1L9ETg==
X-Received: by 2002:aca:4587:: with SMTP id s129mr680053oia.101.1593136310253;
        Thu, 25 Jun 2020 18:51:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4549:: with SMTP id p9ls1607185oti.11.gmail; Thu, 25 Jun
 2020 18:51:49 -0700 (PDT)
X-Received: by 2002:a9d:7d0a:: with SMTP id v10mr596172otn.280.1593136309816;
        Thu, 25 Jun 2020 18:51:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593136309; cv=none;
        d=google.com; s=arc-20160816;
        b=ucpLZRhAUcuir/kN6gimpEdZXp8QEh2RCWrdJwdXawLUWRl24Iej7qP0UESGh8fmCm
         x82QuRFWNC/H4CAr03EGeWdAgyZgW295MLNOk2FW5f9wDdamTFxXEyxADUewwhLUrP2N
         T+ACdNJ0AIWeFplNX8LefqOPar+OxQN35K49wEErHW68Ob5ymr/3DYeqhJmPKLtPYcXR
         SGJuCteKlLzef10LBSBZkXMj7W8LCKI+fAtrNSLsBRtCCfdVCvSRUbELGx3P5PalvDUH
         pF6g4e4Zl/7Bz2TUTQvDP3J0idgqrMncq0zKT7/nEYk23Dbo+wDE9Wgb5MASBCUExbUt
         wHBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=HURjisIATUQ4i5U8vIYHlMy75iBpOc1QjngCdRGlen4=;
        b=cp5owzq/mbW5t4rJV86zzzh1dPWKsJ/QMfOn4l+LVV/FsLKbzEp0rhEmeFmUgF/+sa
         66ShZIrW55YWDrNQDNaQEfj0SaUcrDYa5U9evvUHtafKVskmj7qZfzMKMVSJNE7U5B+7
         egzLl859jEAFN9PvQXAwzgMJbk+E7SUQXz5NYbEVnsQ4XPXY6+/ZvwfE/mlyDUlwK5LC
         3dSh8rjNj5ANQAqN9Dsvzz4ZVPcYis2BDxvZJa+uAy3dqHzlIb2Ub8zN0mxiHLdF9eMy
         51td4pAGs5Y83TXZf2hiXZAtNiOeOr3VWjCX+3EY5YeMDekbZNCooWzInToeOnwy0oYP
         229A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id h13si2124531otk.1.2020.06.25.18.51.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jun 2020 18:51:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: oE0bM1cUB4Hyc/25/oZlIuqgt9S8BztwVjEG+dKwFpIDcjgmHGZzJbKYYmXdL2/vI6rerc4Xyf
 ttWbT7xWP73w==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="146656205"
X-IronPort-AV: E=Sophos;i="5.75,281,1589266800"; 
   d="gz'50?scan'50,208,50";a="146656205"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 18:51:48 -0700
IronPort-SDR: STt6u9bhvMITn/qq6HYWgNU3Y3fnuFJo5XadGdgQ+Oc4wph+i7SXTSlDL9I3Um/354mMwQakUr
 EBaxzAV51eYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,281,1589266800"; 
   d="gz'50?scan'50,208,50";a="276218968"
Received: from lkp-server01.sh.intel.com (HELO 538b5e3c8319) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 25 Jun 2020 18:51:43 -0700
Received: from kbuild by 538b5e3c8319 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jodWp-0001x5-4M; Fri, 26 Jun 2020 01:51:43 +0000
Date: Fri, 26 Jun 2020 09:51:32 +0800
From: kernel test robot <lkp@intel.com>
To: Alexandru Elisei <alexandru.elisei@arm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kvmarm@lists.cs.columbia.edu
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	maz@kernel.org, tglx@linutronix.de, jason@lakedaemon.net,
	yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
	will@kernel.org, catalin.marinas@arm.com
Subject: Re: [PATCH 2/2] irqchip/gic-v3: Support pseudo-NMIs when SCR_EL3.FIQ
 == 0
Message-ID: <202006260902.snscFOg0%lkp@intel.com>
References: <20200625150026.867727-3-alexandru.elisei@arm.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YiEDa0DAkWCtVeE4"
Content-Disposition: inline
In-Reply-To: <20200625150026.867727-3-alexandru.elisei@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alexandru,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on arm64/for-next/core]
[also build test WARNING on tip/irq/core v5.8-rc2 next-20200625]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use  as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Alexandru-Elisei/irqchip-gic-v3-Support-pseudo-NMIs-when-SCR_EL3-FIQ-0/20200625-230144
base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core
config: arm64-randconfig-r025-20200624 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 8911a35180c6777188fefe0954a2451a2b91deaf)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from arch/arm64/kernel/asm-offsets.c:10:
   In file included from include/linux/arm_sdei.h:8:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/irqdomain.h:35:
   In file included from include/linux/of.h:17:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:15:
   In file included from include/linux/rcupdate.h:26:
   In file included from include/linux/irqflags.h:16:
>> arch/arm64/include/asm/irqflags.h:45:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
                   : "r" (pmr_irqon)
                          ^
   arch/arm64/include/asm/irqflags.h:42:29: note: use constraint modifier "w"
                   __msr_s(SYS_ICC_PMR_EL1, "%0"),
                                             ^
   arch/arm64/include/asm/irqflags.h:67:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
                   : "r" (pmr_irqoff)
                          ^
   arch/arm64/include/asm/irqflags.h:64:29: note: use constraint modifier "w"
                   __msr_s(SYS_ICC_PMR_EL1, "%0"),
                                             ^
   2 warnings generated.
--
   In file included from drivers/power/supply/ltc2941-battery-gauge.c:12:
   In file included from include/linux/module.h:13:
   In file included from include/linux/stat.h:6:
   In file included from arch/arm64/include/asm/stat.h:12:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:54:
   In file included from include/linux/irqflags.h:16:
>> arch/arm64/include/asm/irqflags.h:45:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
                   : "r" (pmr_irqon)
                          ^
   arch/arm64/include/asm/irqflags.h:42:29: note: use constraint modifier "w"
                   __msr_s(SYS_ICC_PMR_EL1, "%0"),
                                             ^
   arch/arm64/include/asm/irqflags.h:67:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
                   : "r" (pmr_irqoff)
                          ^
   arch/arm64/include/asm/irqflags.h:64:29: note: use constraint modifier "w"
                   __msr_s(SYS_ICC_PMR_EL1, "%0"),
                                             ^
   drivers/power/supply/ltc2941-battery-gauge.c:476:13: warning: cast to smaller integer type 'enum ltc294x_id' from 'const void *' [-Wvoid-pointer-to-enum-cast]
           info->id = (enum ltc294x_id)of_device_get_match_data(&client->dev);
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   3 warnings generated.
--
   In file included from drivers/power/supply/goldfish_battery.c:11:
   In file included from include/linux/module.h:13:
   In file included from include/linux/stat.h:6:
   In file included from arch/arm64/include/asm/stat.h:12:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:54:
   In file included from include/linux/irqflags.h:16:
>> arch/arm64/include/asm/irqflags.h:45:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
                   : "r" (pmr_irqon)
                          ^
   arch/arm64/include/asm/irqflags.h:42:29: note: use constraint modifier "w"
                   __msr_s(SYS_ICC_PMR_EL1, "%0"),
                                             ^
   arch/arm64/include/asm/irqflags.h:67:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
                   : "r" (pmr_irqoff)
                          ^
   arch/arm64/include/asm/irqflags.h:64:29: note: use constraint modifier "w"
                   __msr_s(SYS_ICC_PMR_EL1, "%0"),
                                             ^
   drivers/power/supply/goldfish_battery.c:269:36: warning: unused variable 'goldfish_battery_acpi_match' [-Wunused-const-variable]
   static const struct acpi_device_id goldfish_battery_acpi_match[] = {
                                      ^
   3 warnings generated.
--
   In file included from drivers/power/supply/bq25890_charger.c:8:
   In file included from include/linux/module.h:13:
   In file included from include/linux/stat.h:6:
   In file included from arch/arm64/include/asm/stat.h:12:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:54:
   In file included from include/linux/irqflags.h:16:
>> arch/arm64/include/asm/irqflags.h:45:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
                   : "r" (pmr_irqon)
                          ^
   arch/arm64/include/asm/irqflags.h:42:29: note: use constraint modifier "w"
                   __msr_s(SYS_ICC_PMR_EL1, "%0"),
                                             ^
   arch/arm64/include/asm/irqflags.h:67:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
                   : "r" (pmr_irqoff)
                          ^
   arch/arm64/include/asm/irqflags.h:64:29: note: use constraint modifier "w"
                   __msr_s(SYS_ICC_PMR_EL1, "%0"),
                                             ^
   drivers/power/supply/bq25890_charger.c:1060:36: warning: unused variable 'bq25890_acpi_match' [-Wunused-const-variable]
   static const struct acpi_device_id bq25890_acpi_match[] = {
                                      ^
   3 warnings generated.
--
   In file included from drivers/power/reset/vexpress-poweroff.c:8:
   In file included from include/linux/notifier.h:15:
   In file included from include/linux/rwsem.h:16:
   In file included from include/linux/spinlock.h:54:
   In file included from include/linux/irqflags.h:16:
>> arch/arm64/include/asm/irqflags.h:45:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
                   : "r" (pmr_irqon)
                          ^
   arch/arm64/include/asm/irqflags.h:42:29: note: use constraint modifier "w"
                   __msr_s(SYS_ICC_PMR_EL1, "%0"),
                                             ^
   arch/arm64/include/asm/irqflags.h:67:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
                   : "r" (pmr_irqoff)
                          ^
   arch/arm64/include/asm/irqflags.h:64:29: note: use constraint modifier "w"
                   __msr_s(SYS_ICC_PMR_EL1, "%0"),
                                             ^
   drivers/power/reset/vexpress-poweroff.c:124:10: warning: cast to smaller integer type 'enum vexpress_reset_func' from 'const void *' [-Wvoid-pointer-to-enum-cast]
           switch ((enum vexpress_reset_func)match->data) {
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   3 warnings generated.
--
   In file included from arch/arm64/kernel/asm-offsets.c:10:
   In file included from include/linux/arm_sdei.h:8:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/irqdomain.h:35:
   In file included from include/linux/of.h:17:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:15:
   In file included from include/linux/rcupdate.h:26:
   In file included from include/linux/irqflags.h:16:
>> arch/arm64/include/asm/irqflags.h:45:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
                   : "r" (pmr_irqon)
                          ^
   arch/arm64/include/asm/irqflags.h:42:29: note: use constraint modifier "w"
                   __msr_s(SYS_ICC_PMR_EL1, "%0"),
                                             ^
   arch/arm64/include/asm/irqflags.h:67:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
                   : "r" (pmr_irqoff)
                          ^
   arch/arm64/include/asm/irqflags.h:64:29: note: use constraint modifier "w"
                   __msr_s(SYS_ICC_PMR_EL1, "%0"),
                                             ^
   2 warnings generated.
   arch/arm64/kernel/vdso/vgettimeofday.c:9:5: warning: no previous prototype for function '__kernel_clock_gettime' [-Wmissing-prototypes]
   int __kernel_clock_gettime(clockid_t clock,
       ^
   arch/arm64/kernel/vdso/vgettimeofday.c:9:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int __kernel_clock_gettime(clockid_t clock,
   ^
   static 
   arch/arm64/kernel/vdso/vgettimeofday.c:15:5: warning: no previous prototype for function '__kernel_gettimeofday' [-Wmissing-prototypes]
   int __kernel_gettimeofday(struct __kernel_old_timeval *tv,
       ^
   arch/arm64/kernel/vdso/vgettimeofday.c:15:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int __kernel_gettimeofday(struct __kernel_old_timeval *tv,
   ^
   static 
   arch/arm64/kernel/vdso/vgettimeofday.c:21:5: warning: no previous prototype for function '__kernel_clock_getres' [-Wmissing-prototypes]
   int __kernel_clock_getres(clockid_t clock_id,
       ^
   arch/arm64/kernel/vdso/vgettimeofday.c:21:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int __kernel_clock_getres(clockid_t clock_id,
   ^
   static 
   3 warnings generated.

vim +45 arch/arm64/include/asm/irqflags.h

    12	
    13	/*
    14	 * Aarch64 has flags for masking: Debug, Asynchronous (serror), Interrupts and
    15	 * FIQ exceptions, in the 'daif' register. We mask and unmask them in 'dai'
    16	 * order:
    17	 * Masking debug exceptions causes all other exceptions to be masked too/
    18	 * Masking SError masks irq, but not debug exceptions. Masking irqs has no
    19	 * side effects for other flags. Keeping to this order makes it easier for
    20	 * entry.S to know which exceptions should be unmasked.
    21	 *
    22	 * FIQ is never expected, but we mask it when we disable debug exceptions, and
    23	 * unmask it at all other times.
    24	 */
    25	
    26	/*
    27	 * CPU interrupt mask handling.
    28	 */
    29	static inline void arch_local_irq_enable(void)
    30	{
    31		u32 pmr_irqon = GIC_PRIO_IRQON;
    32	
    33		if (system_has_prio_mask_debugging()) {
    34			u32 pmr = read_sysreg_s(SYS_ICC_PMR_EL1);
    35			u32 pmr_irqoff = gic_prio_irqoff();
    36	
    37			WARN_ON_ONCE(pmr != pmr_irqon && pmr != pmr_irqoff);
    38		}
    39	
    40		asm volatile(ALTERNATIVE(
    41			"msr	daifclr, #2		// arch_local_irq_enable",
    42			__msr_s(SYS_ICC_PMR_EL1, "%0"),
    43			ARM64_HAS_IRQ_PRIO_MASKING)
    44			:
  > 45			: "r" (pmr_irqon)
    46			: "memory");
    47	
    48		pmr_sync();
    49	}
    50	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006260902.snscFOg0%25lkp%40intel.com.

--YiEDa0DAkWCtVeE4
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
aRGwxADO33t2TBV/BHqBV8pu93/SdRfLuf4BAA==

--YiEDa0DAkWCtVeE4--
