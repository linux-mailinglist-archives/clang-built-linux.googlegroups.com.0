Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBR7ZXD6QKGQER4FDR6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id D22842B16CD
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 08:59:04 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id z79sf3560535oia.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 23:59:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605254343; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ox12eV2um/2eUOEYkUHcVjNDvi/oP4VJHXf3N6BzjJgjQWz6WkOiBQwnBQBRhK4aBW
         w+NWIw2RXZPhrxHEV6LxSR8n8LP4cAL3IEh4I/irnyB5iNmm3HxJzes5zlFVILt2gze/
         dsMCQJ/bB0wJ2blDBInhtLKOAoITZzEJgUKFSevGGghTneOAo71iGLvWbI19U+he1mUZ
         qU22qV/AtaHD5VBM2RnjMy/wKOeSBoEAG6IK/xp1lq3vGPjH0nuOsJCzD8BJENYtnzQy
         ivHQMqkW6Hknx5cOsK4/chAiLeEOUGXMYijQH7kqDH8GIE+4FifOAdRX5ZsAAfNJn2nY
         W1EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=wG8GENqnn53c/DPiUJjBUSOCyWjCmlBZ1im8zy8eUT4=;
        b=fRbfnlxpmHKwsB9tS3PNJpqfqXMnQQqApab2Dq1emR6I2SdMXUXXFSkHvZy05Aa2+t
         l5KEd1zTjnpEh0Q/FDA5PBosGS52h1Iz7NyvzmmHAyFTIsMVoXmKT17B0XY/OMrySUEZ
         424gkwwTZUwnKH4/xYYI1dLtRAzYXa5trPcddju0oEfsIu6tBE24kVUoLVJYLASEfLoK
         lyITYUvzmapnuO7QPlxbPyR9VIBydQT4qoLPDDV23tEpuUptVJua+kkNRxQwD3egw2e/
         QD5HvLKUWUmnj5DHJeE9PP+dVXoEnp89TBR9pNIhnaZGGfpa7fOKKEPL/ugHycTp6xkU
         03mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wG8GENqnn53c/DPiUJjBUSOCyWjCmlBZ1im8zy8eUT4=;
        b=SaScHczMCgiyZWac6rPbdoKWSvS8akxXYSoCoIXZd2xCciG3kCJdDcHcDfBZFnzRSk
         bGwbJ8wAmbkND8Zk1mLbk8a9DTCo+JIlR83RG2uxSY/dZLpGUm6MB7hdwTNWvMc44Ods
         c5zkDtfL2Wqfb15RLaWb1xqNjf2IYgS9aOwb+ocN0jqQEwBf1JhVm9CvpVjcW+0UDluP
         VV1MN/yVt6GuxO+FnK7uxTcuBQoHP6dYqUj2olc1Y1DXJV+DGga6lXzOal7arpWd9jbl
         QhqpzL4siLn2x1nlZJ5z8evOvoIUNclZfWdgGdtPMQkU/L3ltdJSmT1/UHxghGcB8Z8N
         muOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wG8GENqnn53c/DPiUJjBUSOCyWjCmlBZ1im8zy8eUT4=;
        b=qb5WarwslcJwriPIrK/ChoFLcTispjdb+pCPyLTwCo5JMzzGf/INvXn6kXvwKxhkt5
         G7jEUHMuVvcO+UyeRH4pRUjchq/kcjL2wXmBidULmgsKhKCsKfQ1AVk0KuO2uCHDYSfi
         uAfJbkDuleEy13Y0k9IR5aHT1PJMDnNb1EYRrUz7UCQJjyNipwl/7v3tngbZZ8cRPqdr
         7UDseSMfZ/hMbyEzqQNCMG2M5N4VTi+g8ILVbrD0KapC93QeixL6+zj6TGrojBCR/2zg
         t7tSYV7cjFBzeELQ3en0e+tsNmV7OwN8Sk9fV7mqjMizYAkTZCSH1pzqe4XPHTwTdGXF
         hNUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XMl6ZBhAh31kKEMRtlL2S4OaQ9yorOyfR5QOGWK4eULEY8p9E
	LIVVb1KT51LhPpfR9NCKkyA=
X-Google-Smtp-Source: ABdhPJx3vb5Ec1CJRuNgVk+HtqHayr23f15HXkqR74+iFAS7Ha2LLo1pBGxM6/YC/fsgE0SD5DifBA==
X-Received: by 2002:a9d:64ce:: with SMTP id n14mr676291otl.352.1605254343396;
        Thu, 12 Nov 2020 23:59:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:dd84:: with SMTP id u126ls53502oig.6.gmail; Thu, 12 Nov
 2020 23:59:03 -0800 (PST)
X-Received: by 2002:a54:4388:: with SMTP id u8mr617834oiv.173.1605254342991;
        Thu, 12 Nov 2020 23:59:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605254342; cv=none;
        d=google.com; s=arc-20160816;
        b=znMVj1lol0Z+s3QQll0GWT5HsiGhrWhwUqJMtCd3DOpoa5/Wns3GxyllaJ4KRE6z6X
         ohtsEXzVLFGASNhs5qoFr45yRQLQncZJxaHnBY69M0uiSXWxMEqNBmCGjZch1XlyIQ9h
         Vjo40LJdiicjwkxm7teW+tw8nRg/hEcjeZPdeVhpthcuMn7XyR7JGiTj0lbeCSA0SkLx
         nt7MIAaim3EECB5JwibR5W+FzLmRzogamSkXPPz7hcKnKRPrZdcU2gF3tlPLyOJ64ItK
         o1B2mDc8KvsQDBWRM+gaMQiJqKTcFRrGDbx+FUDgiD+GG+YPnJV8LtQH+xVjULoCbx+1
         Tfww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=p8bIknPqgA9PLu3uxp/LRah72O3qIQyZZk6TijFjZzw=;
        b=bAEneFHLZjxvyMMCBdVJXhUX5TBCd+s7dc/nt62cEq8UKXSnS3Y99EIJJFFD/HVBou
         jX0/5c/nL8AfITyjZH09Qrvhnx5BO7QS0Pfg2cX/MRMJajn1oteNch/2Fg8QUl54dT4+
         BO9eagac6T4Jz05BrZeBHxOqHi15qM/nousqhOkeob5iSyvF5GJyvV1ffXJwxbA5Nl+O
         bds6UvbORvU+K4WNDlEgi41zGsipIB+GyOAlBPfTE6y0PuT0LeTARMGHx9cqXuTEtWxa
         GcKcqlkltP5wHM5GVNX3qOZ6hqc0QM0bWX2rI8MGUlLqsADyrCMfuQ99nWUbVJPOlfCs
         KuWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id r6si1111182oth.4.2020.11.12.23.59.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 23:59:02 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: TvSHA+sQF7KMiBhuEvCg5OyHPSuvdogEu1yQj9WWPjVLI+reJsgmNmXqymd9MIhfCkG20Sy7jZ
 YaTw0XpXWlag==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="169657965"
X-IronPort-AV: E=Sophos;i="5.77,474,1596524400"; 
   d="gz'50?scan'50,208,50";a="169657965"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2020 23:58:56 -0800
IronPort-SDR: jCwTLyq1u7wz8ntHqp1X6xOfAwcoPNItDVmo5xoe3Sad4Sx63QPpwChM7Eemll+ylZtg2AVa82
 +ycJGJLjhHfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,474,1596524400"; 
   d="gz'50?scan'50,208,50";a="357420009"
Received: from lkp-server02.sh.intel.com (HELO 697932c29306) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 12 Nov 2020 23:58:55 -0800
Received: from kbuild by 697932c29306 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kdTyw-00009M-Lp; Fri, 13 Nov 2020 07:58:54 +0000
Date: Fri, 13 Nov 2020 15:58:39 +0800
From: kernel test robot <lkp@intel.com>
To: Alexandre Chartre <alexandre.chartre@oracle.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST
 entry C handlers
Message-ID: <202011131552.4kvOb9Id-lkp@intel.com>
References: <20201109144425.270789-22-alexandre.chartre@oracle.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline
In-Reply-To: <20201109144425.270789-22-alexandre.chartre@oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alexandre,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on tip/x86/mm]
[also build test WARNING on v5.10-rc3]
[cannot apply to tip/x86/core tip/x86/asm next-20201112]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Alexandre-Chartre/x86-pti-Defer-CR3-switch-to-C-code/20201109-225007
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 1fcd009102ee02e217f2e7635ab65517d785da8e
config: x86_64-randconfig-a011-20201109 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 09ec07827b1128504457a93dee80b2ceee1af600)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/1095b6a7acb8dc568c474cd3b3d1c8393fb49728
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Alexandre-Chartre/x86-pti-Defer-CR3-switch-to-C-code/20201109-225007
        git checkout 1095b6a7acb8dc568c474cd3b3d1c8393fb49728
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> arch/x86/kernel/cpu/mce/core.c:2023:1: warning: unknown attribute 'optimize' ignored [-Wunknown-attributes]
   DEFINE_IDTENTRY_MCE(exc_machine_check)
   ^
   arch/x86/include/asm/idtentry.h:539:30: note: expanded from macro 'DEFINE_IDTENTRY_MCE'
   #define DEFINE_IDTENTRY_MCE             DEFINE_IDTENTRY_IST
                                           ^
   arch/x86/include/asm/idtentry.h:428:2: note: expanded from macro 'DEFINE_IDTENTRY_IST'
           no_stack_protector DEFINE_IDTENTRY_RAW(func)
           ^
   arch/x86/include/asm/idtentry.h:110:18: note: expanded from macro 'no_stack_protector'
           __attribute__ ((optimize("-O2,-fno-stack-protector,-fno-omit-frame-pointer")))
                           ^
   1 warning generated.

vim +/optimize +2023 arch/x86/kernel/cpu/mce/core.c

4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2020  
4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2021  #ifdef CONFIG_X86_64
4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2022  /* MCE hit kernel mode */
4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25 @2023  DEFINE_IDTENTRY_MCE(exc_machine_check)
4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2024  {
cd840e424f27fc arch/x86/kernel/cpu/mce/core.c   Peter Zijlstra  2020-05-29  2025  	unsigned long dr7;
cd840e424f27fc arch/x86/kernel/cpu/mce/core.c   Peter Zijlstra  2020-05-29  2026  
cd840e424f27fc arch/x86/kernel/cpu/mce/core.c   Peter Zijlstra  2020-05-29  2027  	dr7 = local_db_save();
4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2028  	exc_machine_check_kernel(regs);
cd840e424f27fc arch/x86/kernel/cpu/mce/core.c   Peter Zijlstra  2020-05-29  2029  	local_db_restore(dr7);
4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2030  }
9eda8cb3ac2352 arch/x86/kernel/cpu/mcheck/mce.c Andi Kleen      2009-07-09  2031  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011131552.4kvOb9Id-lkp%40intel.com.

--vkogqOf2sHV7VnPd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
8OQBAA==

--vkogqOf2sHV7VnPd--
