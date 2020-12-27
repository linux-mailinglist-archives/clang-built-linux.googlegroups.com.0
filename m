Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB36MUH7QKGQEGQGX3PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 7459B2E30B8
	for <lists+clang-built-linux@lfdr.de>; Sun, 27 Dec 2020 11:48:16 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id eb4sf6365914qvb.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Dec 2020 02:48:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609066095; cv=pass;
        d=google.com; s=arc-20160816;
        b=oiU7HGh2SRqvsyXsN7KjtsuxhRxg5CWSXSfI1S+NPx63JHRphZ1Okxyg97dD87Xo2Y
         eFwGyDI6YkmlrvmdoQy6iKDcya92/foxsh3v0y10hP4k9dD+hDGijPMPMLtlEzSaGAhA
         WJOpgt56mDNyNC5Vz9WjyU3ueUcK8fTUYl+AhkOgBsU6jFrUqn2RbL7ymfa7fgeXD070
         z2ZEjYmYkqCcR+hrxwbUJS4w8t7ypGlKF/NxlEXjz0UhfE/8Q8LTbo7A257x2ThSRH9s
         MBefUjbuKywTU5wZo/U7mwt+Qk0xPvOFIO0SA2uNz6QzdBlVVNqPjkENLtxnLz7hgZ1B
         WwJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=qSmXLT840qwixmN2Xt8UV1SNmZrZAB7Qxjkqq2XegIg=;
        b=HnwMmc1tOm8HD7YGDtxZkTUrTuNN1phK867L8TLxh4A5jCe7jZunuCgv1kYSmf1Lh2
         LBwGJKZBhviS9sSXhBsb1MVR9LJmAXVlYU9wg6UQkHC+BVARv4d30Nd4oqZhozDkhs2T
         FJDzJ6TagtkvkNKG2nwPNJsxiLXAshNRgtnsftUNh5If5+A9aj6y5A4F3Bah2R75S/b+
         fmGoqs4kPSKZh24jaSOzb7nYKMyQZ/J3Jpm19eKgvG4jrQWjPFHa2c97cXRRAnqX3/Kj
         nEN3BpsmmvuGfdoJw81fhphfsj/qJ5M7JLzwmgb/toun4Du7Ikz2FqY3O6g+imaNMFGF
         oCnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qSmXLT840qwixmN2Xt8UV1SNmZrZAB7Qxjkqq2XegIg=;
        b=bux1SBSCUEmnj9KpNUz7gXyIxa05Bm4MhIMpbvNY5affBwvg2bqowPes+BKX7A2Ou6
         cvL/RA/sj8X2tO44O6thr1mC9yc8NcmccsiPlx7XFMLTzP7zUhbDgYhzF/hutkfe3UX+
         nabxU08DPe/lC5T4lbp7Sv/Ncv3ynXORtI3i26YrR9npvdMCE3SpnjiZ6sUwsNMCbvf4
         qkL1XvzLu5AwwdLZBhteLrrBBExzaGlVrNbqxOSjfmtkDJorleealTuqoDvLdjGYAskN
         fOGMtlKDAZox7wwGnJOyCpbgQlWm/FZISZXMnKV8NHmg0mcUr7XZWp1nAZkEDYR/ur03
         7+QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qSmXLT840qwixmN2Xt8UV1SNmZrZAB7Qxjkqq2XegIg=;
        b=XAxmpmAwCIJZgJpyPDFi94V8kDln15OicqM71ovip1eTr70mluefd1Rr8DsA40CtSe
         70CgG+RjwwjriAMvWdWFYx0Q7svJiKwn10PQutZ+4nfd98Ry5zc+Cb6RTXNsyEdinjjE
         0Br78dEd2wAEpUqMdjEi7wYphcOPpMR+4HsKJOtoYGcajUj7TzGl2BU0j0btgc7lwC/n
         MlJyfsMZTC7Weu9x8nWvqQ0PqDpW5y42+Hi9IcGdXlkkU9L5fL826xrMzsYGUmq1L5rg
         HFMyzA98x+pP9bWJ9CBxfv9MTJ1r24cxeqlJwcOq/JybM+jzYhjdwml7wYIRmQrZor3M
         u2BQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/SiOitGakMV92j3JJWWpwbKJAnXL//GfWGrobQeSpTWiEwg1F
	yVYe+/SYhFTGGz5eqlIC3KM=
X-Google-Smtp-Source: ABdhPJyPzmjUHPCOuPfr7hhKsMHbr4i//jrsfR1rqHJLB8yCdhw/kNfHpngLB2OLm6xmnRr2SrBf1Q==
X-Received: by 2002:a0c:f812:: with SMTP id r18mr16371709qvn.39.1609066095286;
        Sun, 27 Dec 2020 02:48:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:242:: with SMTP id q2ls26972294qkn.9.gmail; Sun, 27
 Dec 2020 02:48:14 -0800 (PST)
X-Received: by 2002:ae9:e909:: with SMTP id x9mr39853761qkf.166.1609066094778;
        Sun, 27 Dec 2020 02:48:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609066094; cv=none;
        d=google.com; s=arc-20160816;
        b=UiAOAHY1fpNCy6+yZNQKT/YQNWdUBLyb117qb47XgVU4S+33uK/AXEY5w/Wvl2uVhx
         lEPJ0zNvspnWaXYTI7Gqbva7+dfcLkklc+tfMwL52D6OL009KbDefuZAPUWm3ivpp+6E
         //ZhCwFzIAp+ADJamByaJksjP0psLLynSXPkfHnzbQC0J/SQZo4CY+dGLaGdiYpYV9l/
         T3OYmfxSeIKfJW7E8GI1HXRyIapesQK2j8UvO3maotS+F8yHU4o7lFDvQlmI3eyBMC95
         qrp0FjqAYXYp8BnCEbMNoVuPSxt88GCiDg/apgVu8WOGoqPM2mpDvloFZZr25dB/50rZ
         wdjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=b/xUBDE9iinNHzaM1gMV6kgsQ3iYjOodNtlUzdlhgO0=;
        b=jXs/DdfoRQRHi2p/olVjJwHNt+r1H38iwZeVgDEnqQm19e2/sjqeV1rA9sZgYqmOz0
         DppC9z17J/PjWG/07YQZghq5tzhyPKb5ZAZlL4VYPY/LRfHNSu58wbQW+dmA6pid2nSp
         hE7ZNIj3/myKfiL1cZ9HJV6KcT5a4RRcJE9W+AXsd0fV0Jg+f7BgBm4jNAvEhNiTwuhA
         9Z+DNy2hBMqlQVwwqkbT3vBaOT+fY8+baem6gbAA6nMuoOYpsc9fndLPfD+E3SLlU719
         CJe/p4Bct/JVmFT2EVvelIi8EHZHvm1hNrmK1hRTQi3eoa9LAC4XfDz0np4UEosOZWn/
         x1VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id i2si1881676qkg.4.2020.12.27.02.48.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Dec 2020 02:48:14 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: 5+UEY/QhdOwnsp3/FjyJa60qoBrwXgUQNQpk0Q0IkQ4/1SjFFoG8sCCz89BXnk/I5/4+MGSuaZ
 YWbysPm8XpcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9846"; a="240383891"
X-IronPort-AV: E=Sophos;i="5.78,452,1599548400"; 
   d="gz'50?scan'50,208,50";a="240383891"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Dec 2020 02:48:12 -0800
IronPort-SDR: rMIoW9EE3atcdqUAXR2SuVKHYEfCtUD9t+RpKRETMhI1BkpWdu5G5AmKWljel6Cw5zf6HBsuFT
 e6XhlYaxr1WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,452,1599548400"; 
   d="gz'50?scan'50,208,50";a="567158175"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by fmsmga005.fm.intel.com with ESMTP; 27 Dec 2020 02:48:10 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ktTar-0002NJ-Vz; Sun, 27 Dec 2020 10:48:09 +0000
Date: Sun, 27 Dec 2020 18:47:37 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [linux-stable-rc:linux-4.19.y 5303/9999]
 drivers/scsi/FlashPoint.c:2947:34: warning: equality comparison with
 extraneous parentheses
Message-ID: <202012271800.3hkTcPJR-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline
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


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

TO: Joel Stanley <joel@jms.id.au>
CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
CC: Nick Desaulniers <ndesaulniers@google.com>
CC: Michael Ellerman <mpe@ellerman.id.au>
CC: Sasha Levin <alexander.levin@microsoft.com>

Hi Joel,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
head:   e864f43593ccf9180c61738abdf1c1dde091367d
commit: b92e5db0f492026778cb31dfc479e50f33f75bca [5303/9999] powerpc/32: Avoid unsupported flags with clang
config: powerpc64-randconfig-r015-20201221 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=b92e5db0f492026778cb31dfc479e50f33f75bca
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-4.19.y
        git checkout b92e5db0f492026778cb31dfc479e50f33f75bca
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/scsi/BusLogic.c:32:
   In file included from include/linux/module.h:9:
   In file included from include/linux/list.h:9:
   In file included from include/linux/kernel.h:11:
   In file included from include/linux/bitops.h:19:
   In file included from arch/powerpc/include/asm/bitops.h:247:
   In file included from include/asm-generic/bitops/le.h:6:
   In file included from arch/powerpc/include/uapi/asm/byteorder.h:14:
   In file included from include/linux/byteorder/big_endian.h:11:
   include/linux/byteorder/generic.h:195:16: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           for (i = 0; i < len; i++)
                       ~ ^ ~~~
   include/linux/byteorder/generic.h:203:16: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           for (i = 0; i < len; i++)
                       ~ ^ ~~~
   In file included from drivers/scsi/BusLogic.c:32:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:81:
   In file included from ./arch/powerpc/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   include/linux/thread_info.h:141:29: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           if (unlikely(sz >= 0 && sz < bytes)) {
                                   ~~ ^ ~~~~~
   include/linux/compiler.h:77:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   In file included from drivers/scsi/BusLogic.c:32:
   In file included from include/linux/module.h:13:
   In file included from include/linux/kmod.h:22:
   In file included from include/linux/umh.h:4:
   In file included from include/linux/gfp.h:6:
   include/linux/mmzone.h:984:44: warning: comparison of integers of different signs: 'int' and 'enum zone_type' [-Wsign-compare]
           if (likely(!nodes && zonelist_zone_idx(z) <= highest_zoneidx))
                                ~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~
   include/linux/compiler.h:76:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   In file included from drivers/scsi/BusLogic.c:36:
   In file included from include/linux/blkdev.h:16:
   In file included from include/linux/pagemap.h:8:
   In file included from include/linux/mm.h:26:
   In file included from include/linux/page_ref.h:7:
   include/linux/page-flags.h:162:21: warning: comparison of integers of different signs: 'const unsigned long' and 'long' [-Wsign-compare]
           return page->flags == PAGE_POISON_PATTERN;
                  ~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~
   In file included from drivers/scsi/BusLogic.c:36:
   In file included from include/linux/blkdev.h:16:
   In file included from include/linux/pagemap.h:8:
   include/linux/mm.h:560:14: warning: comparison of integers of different signs: 'unsigned long' and 'long' [-Wsign-compare]
           return addr >= VMALLOC_START && addr < VMALLOC_END;
                  ~~~~ ^  ~~~~~~~~~~~~~
   In file included from drivers/scsi/BusLogic.c:36:
   In file included from include/linux/blkdev.h:21:
   include/linux/bio.h:412:14: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           if (sectors >= bio_sectors(bio))
               ~~~~~~~ ^  ~~~~~~~~~~~~~~~~
   In file included from drivers/scsi/BusLogic.c:57:
   drivers/scsi/FlashPoint.c:914:57: warning: missing field 'state' initializer [-Wmissing-field-initializers]
   static SCCBSCAM_INFO FPT_scamInfo[MAX_SCSI_TAR] = { {{0}} };
                                                           ^
>> drivers/scsi/FlashPoint.c:2947:34: warning: equality comparison with extraneous parentheses [-Wparentheses-equality]
                                   if ((currSCCB->Sccb_scsistat == SELECT_SN_ST)) {
                                        ~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~
   drivers/scsi/FlashPoint.c:2947:34: note: remove extraneous parentheses around the comparison to silence this warning
                                   if ((currSCCB->Sccb_scsistat == SELECT_SN_ST)) {
                                       ~                        ^              ~
   drivers/scsi/FlashPoint.c:2947:34: note: use '=' to turn this equality comparison into an assignment
                                   if ((currSCCB->Sccb_scsistat == SELECT_SN_ST)) {
                                                                ^~
                                                                =
   drivers/scsi/FlashPoint.c:2956:39: warning: equality comparison with extraneous parentheses [-Wparentheses-equality]
                                   else if ((currSCCB->Sccb_scsistat ==
                                             ~~~~~~~~~~~~~~~~~~~~~~~~^~
   drivers/scsi/FlashPoint.c:2956:39: note: remove extraneous parentheses around the comparison to silence this warning
                                   else if ((currSCCB->Sccb_scsistat ==
                                            ~                        ^
   drivers/scsi/FlashPoint.c:2956:39: note: use '=' to turn this equality comparison into an assignment
                                   else if ((currSCCB->Sccb_scsistat ==
                                                                     ^~
                                                                     =
   drivers/scsi/BusLogic.c:157:9: warning: returning 'unsigned char [18]' from a function with result type 'const char *' converts between pointers to integer types with different sign [-Wpointer-sign]
           return adapter->full_model;
                  ^~~~~~~~~~~~~~~~~~~
   drivers/scsi/BusLogic.c:1375:10: warning: passing 'unsigned char [6]' to parameter of type 'char *' converts between pointers to integer types with different sign [-Wpointer-sign]
                   strcpy(adapter->fw_ver, FLASHPOINT_FW_VER);
                          ^~~~~~~~~~~~~~~
   include/linux/string.h:425:37: note: passing argument to parameter 'p' here
   __FORTIFY_INLINE char *strcpy(char *p, const char *q)
                                       ^
   drivers/scsi/BusLogic.c:1451:10: warning: passing 'unsigned char [5]' to parameter of type 'char *' converts between pointers to integer types with different sign [-Wpointer-sign]
                   strcpy(model, "542B");
                          ^~~~~
   include/linux/string.h:425:37: note: passing argument to parameter 'p' here
   __FORTIFY_INLINE char *strcpy(char *p, const char *q)
                                       ^
   drivers/scsi/BusLogic.c:1456:10: warning: passing 'unsigned char [5]' to parameter of type 'char *' converts between pointers to integer types with different sign [-Wpointer-sign]
                   strcpy(model, "742A");
                          ^~~~~
   include/linux/string.h:425:37: note: passing argument to parameter 'p' here
   __FORTIFY_INLINE char *strcpy(char *p, const char *q)
                                       ^
   drivers/scsi/BusLogic.c:1459:10: warning: passing 'unsigned char [5]' to parameter of type 'char *' converts between pointers to integer types with different sign [-Wpointer-sign]
                   strcpy(model, "747A");
                          ^~~~~
   include/linux/string.h:425:37: note: passing argument to parameter 'p' here
   __FORTIFY_INLINE char *strcpy(char *p, const char *q)
                                       ^
   drivers/scsi/BusLogic.c:1512:13: warning: passing 'unsigned char [6]' to parameter of type 'const char *' converts between pointers to integer types with different sign [-Wpointer-sign]
           if (strcmp(adapter->fw_ver, "3.3") >= 0) {
                      ^~~~~~~~~~~~~~~
   include/linux/string.h:44:31: note: passing argument to parameter here
   extern int strcmp(const char *,const char *);
                                 ^
   drivers/scsi/BusLogic.c:1652:16: warning: passing 'unsigned char [9]' to parameter of type 'const char *' converts between pointers to integer types with different sign [-Wpointer-sign]
                                   if (strcmp(adapter->model, "BT-757") == 0)
                                              ^~~~~~~~~~~~~~
   include/linux/string.h:44:31: note: passing argument to parameter here
   extern int strcmp(const char *,const char *);
                                 ^
   drivers/scsi/BusLogic.c:1698:13: warning: passing 'unsigned char [6]' to parameter of type 'const char *' converts between pointers to integer types with different sign [-Wpointer-sign]
           if (strcmp(adapter->fw_ver, "3.31") >= 0) {
                      ^~~~~~~~~~~~~~~
   include/linux/string.h:44:31: note: passing argument to parameter here
   extern int strcmp(const char *,const char *);
                                 ^
   drivers/scsi/BusLogic.c:1721:14: warning: passing 'unsigned char [6]' to parameter of type 'const char *' converts between pointers to integer types with different sign [-Wpointer-sign]
                   if (strcmp(adapter->fw_ver, "4.22") >= 0)
                              ^~~~~~~~~~~~~~~
   include/linux/string.h:44:31: note: passing argument to parameter here
   extern int strcmp(const char *,const char *);
                                 ^
   drivers/scsi/BusLogic.c:1725:14: warning: passing 'unsigned char [6]' to parameter of type 'const char *' converts between pointers to integer types with different sign [-Wpointer-sign]
                   if (strcmp(adapter->fw_ver, "3.35") >= 0)
                              ^~~~~~~~~~~~~~~
   include/linux/string.h:44:31: note: passing argument to parameter here
   extern int strcmp(const char *,const char *);
                                 ^
   drivers/scsi/BusLogic.c:1751:39: warning: passing 'unsigned char [9]' to parameter of type 'const char *' converts between pointers to integer types with different sign [-Wpointer-sign]
           if (adapter->bios_addr > 0 && strcmp(adapter->model, "BT-445S") == 0 &&
                                                ^~~~~~~~~~~~~~
   include/linux/string.h:44:31: note: passing argument to parameter here
   extern int strcmp(const char *,const char *);
                                 ^
   drivers/scsi/BusLogic.c:1752:11: warning: passing 'unsigned char [6]' to parameter of type 'const char *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           strcmp(adapter->fw_ver, "3.37") < 0 &&
                                  ^~~~~~~~~~~~~~~
   include/linux/string.h:44:31: note: passing argument to parameter here
   extern int strcmp(const char *,const char *);
                                 ^
   drivers/scsi/BusLogic.c:1763:9: warning: passing 'unsigned char [18]' to parameter of type 'char *' converts between pointers to integer types with different sign [-Wpointer-sign]
           strcpy(adapter->full_model, "BusLogic ");
                  ^~~~~~~~~~~~~~~~~~~
   include/linux/string.h:425:37: note: passing argument to parameter 'p' here
   __FORTIFY_INLINE char *strcpy(char *p, const char *q)
                                       ^
   drivers/scsi/BusLogic.c:1764:9: warning: passing 'unsigned char [18]' to parameter of type 'char *' converts between pointers to integer types with different sign [-Wpointer-sign]
           strcat(adapter->full_model, adapter->model);
                  ^~~~~~~~~~~~~~~~~~~
   include/linux/string.h:252:37: note: passing argument to parameter 'p' here
   __FORTIFY_INLINE char *strcat(char *p, const char *q)
                                       ^
--
   In file included from drivers/scsi/pcmcia/nsp_cs.c:28:
   In file included from include/linux/module.h:9:
   In file included from include/linux/list.h:9:
   In file included from include/linux/kernel.h:11:
   In file included from include/linux/bitops.h:19:
   In file included from arch/powerpc/include/asm/bitops.h:247:
   In file included from include/asm-generic/bitops/le.h:6:
   In file included from arch/powerpc/include/uapi/asm/byteorder.h:14:
   In file included from include/linux/byteorder/big_endian.h:11:
   include/linux/byteorder/generic.h:195:16: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           for (i = 0; i < len; i++)
                       ~ ^ ~~~
   include/linux/byteorder/generic.h:203:16: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           for (i = 0; i < len; i++)
                       ~ ^ ~~~
   In file included from drivers/scsi/pcmcia/nsp_cs.c:28:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:81:
   In file included from ./arch/powerpc/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   include/linux/thread_info.h:141:29: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           if (unlikely(sz >= 0 && sz < bytes)) {
                                   ~~ ^ ~~~~~
   include/linux/compiler.h:77:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   In file included from drivers/scsi/pcmcia/nsp_cs.c:28:
   In file included from include/linux/module.h:13:
   In file included from include/linux/kmod.h:22:
   In file included from include/linux/umh.h:4:
   In file included from include/linux/gfp.h:6:
   include/linux/mmzone.h:984:44: warning: comparison of integers of different signs: 'int' and 'enum zone_type' [-Wsign-compare]
           if (likely(!nodes && zonelist_zone_idx(z) <= highest_zoneidx))
                                ~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~
   include/linux/compiler.h:76:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   In file included from drivers/scsi/pcmcia/nsp_cs.c:38:
   In file included from include/linux/blkdev.h:16:
   In file included from include/linux/pagemap.h:8:
   In file included from include/linux/mm.h:26:
   In file included from include/linux/page_ref.h:7:
   include/linux/page-flags.h:162:21: warning: comparison of integers of different signs: 'const unsigned long' and 'long' [-Wsign-compare]
           return page->flags == PAGE_POISON_PATTERN;
                  ~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~
   In file included from drivers/scsi/pcmcia/nsp_cs.c:38:
   In file included from include/linux/blkdev.h:16:
   In file included from include/linux/pagemap.h:8:
   include/linux/mm.h:560:14: warning: comparison of integers of different signs: 'unsigned long' and 'long' [-Wsign-compare]
           return addr >= VMALLOC_START && addr < VMALLOC_END;
                  ~~~~ ^  ~~~~~~~~~~~~~
   In file included from drivers/scsi/pcmcia/nsp_cs.c:38:
   In file included from include/linux/blkdev.h:21:
   include/linux/bio.h:412:14: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           if (sectors >= bio_sectors(bio))
               ~~~~~~~ ^  ~~~~~~~~~~~~~~~~
   In file included from drivers/scsi/pcmcia/nsp_cs.c:63:
   drivers/scsi/pcmcia/nsp_io.h:230:16: warning: comparison of integers of different signs: 'int' and 'unsigned long' [-Wsign-compare]
           for (i = 0; i < count; i++) {
                       ~ ^ ~~~~~
   drivers/scsi/pcmcia/nsp_io.h:256:16: warning: comparison of integers of different signs: 'int' and 'unsigned long' [-Wsign-compare]
           for (i = 0; i < count; i++) {
                       ~ ^ ~~~~~
   drivers/scsi/pcmcia/nsp_cs.c:298:17: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           for ( i = 0; i < ARRAY_SIZE(data->Sync); i++ ) {
                        ~ ^ ~~~~~~~~~~~~~~~~~~~~~~
   drivers/scsi/pcmcia/nsp_cs.c:583:13: warning: initializing 'char *' with an expression of type 'unsigned char [20]' converts between pointers to integer types with different sign [-Wpointer-sign]
           char         *buf  = data->MsgBuffer;
                         ^      ~~~~~~~~~~~~~~~
   drivers/scsi/pcmcia/nsp_cs.c:631:22: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           if (data->FifoCount == count) {
               ~~~~~~~~~~~~~~~ ^  ~~~~~
   drivers/scsi/pcmcia/nsp_cs.c:673:21: warning: comparison of integers of different signs: 'unsigned int' and 'int' [-Wsign-compare]
           if (scmd_id(SCpnt) != target) {
               ~~~~~~~~~~~~~~ ^  ~~~~~~
   drivers/scsi/pcmcia/nsp_cs.c:928:28: warning: comparison of integers of different signs: 'int' and 'unsigned long' [-Wsign-compare]
               scsi_get_resid(SCpnt) <= PAGE_SIZE ) {
               ~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~
>> drivers/scsi/pcmcia/nsp_cs.c:1137:27: warning: equality comparison with extraneous parentheses [-Wparentheses-equality]
                   if ((tmpSC->SCp.Message == MSG_COMMAND_COMPLETE)) {     /* all command complete and return status */
                        ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   drivers/scsi/pcmcia/nsp_cs.c:1137:27: note: remove extraneous parentheses around the comparison to silence this warning
                   if ((tmpSC->SCp.Message == MSG_COMMAND_COMPLETE)) {     /* all command complete and return status */
                       ~                   ^                      ~
   drivers/scsi/pcmcia/nsp_cs.c:1137:27: note: use '=' to turn this equality comparison into an assignment
                   if ((tmpSC->SCp.Message == MSG_COMMAND_COMPLETE)) {     /* all command complete and return status */
                                           ^~
                                           =
   drivers/scsi/pcmcia/nsp_cs.c:1408:17: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           for(id = 0; id < ARRAY_SIZE(data->Sync); id++) {
                       ~~ ^ ~~~~~~~~~~~~~~~~~~~~~~
   16 warnings generated.
   Assembler messages:
   Fatal error: invalid listing option `3'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)


vim +2947 drivers/scsi/FlashPoint.c

^1da177e4c3f415 Linus Torvalds  2005-04-16  2877  
^1da177e4c3f415 Linus Torvalds  2005-04-16  2878  /*---------------------------------------------------------------------
^1da177e4c3f415 Linus Torvalds  2005-04-16  2879   *
47b5d69c4aa753f James Bottomley 2005-04-24  2880   * Function: FPT_sdecm
^1da177e4c3f415 Linus Torvalds  2005-04-16  2881   *
25985edcedea639 Lucas De Marchi 2011-03-30  2882   * Description: Determine the proper response to the message from the
^1da177e4c3f415 Linus Torvalds  2005-04-16  2883   *              target device.
^1da177e4c3f415 Linus Torvalds  2005-04-16  2884   *
^1da177e4c3f415 Linus Torvalds  2005-04-16  2885   *---------------------------------------------------------------------*/
391e2f25601e34a Khalid Aziz     2013-05-16  2886  static void FPT_sdecm(unsigned char message, u32 port, unsigned char p_card)
^1da177e4c3f415 Linus Torvalds  2005-04-16  2887  {
69eb2ea47793366 Alexey Dobriyan 2006-03-08  2888  	struct sccb *currSCCB;
13e6851aa1e8f7d Alexey Dobriyan 2006-03-08  2889  	struct sccb_card *CurrCard;
f31dc0cde69761d Alexey Dobriyan 2006-03-08  2890  	struct sccb_mgr_tar_info *currTar_Info;
^1da177e4c3f415 Linus Torvalds  2005-04-16  2891  
47b5d69c4aa753f James Bottomley 2005-04-24  2892  	CurrCard = &FPT_BL_Card[p_card];
^1da177e4c3f415 Linus Torvalds  2005-04-16  2893  	currSCCB = CurrCard->currentSCCB;
^1da177e4c3f415 Linus Torvalds  2005-04-16  2894  
47b5d69c4aa753f James Bottomley 2005-04-24  2895  	currTar_Info = &FPT_sccbMgrTbl[p_card][currSCCB->TargID];
^1da177e4c3f415 Linus Torvalds  2005-04-16  2896  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2897  	if (message == SMREST_DATA_PTR) {
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2898  		if (!(currSCCB->Sccb_XferState & F_NO_DATA_YET)) {
^1da177e4c3f415 Linus Torvalds  2005-04-16  2899  			currSCCB->Sccb_ATC = currSCCB->Sccb_savedATC;
^1da177e4c3f415 Linus Torvalds  2005-04-16  2900  
47b5d69c4aa753f James Bottomley 2005-04-24  2901  			FPT_hostDataXferRestart(currSCCB);
^1da177e4c3f415 Linus Torvalds  2005-04-16  2902  		}
^1da177e4c3f415 Linus Torvalds  2005-04-16  2903  
^1da177e4c3f415 Linus Torvalds  2005-04-16  2904  		ACCEPT_MSG(port);
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2905  		WR_HARPOON(port + hp_autostart_1,
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2906  			   (AUTO_IMMED + DISCONNECT_START));
^1da177e4c3f415 Linus Torvalds  2005-04-16  2907  	}
^1da177e4c3f415 Linus Torvalds  2005-04-16  2908  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2909  	else if (message == SMCMD_COMP) {
^1da177e4c3f415 Linus Torvalds  2005-04-16  2910  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2911  		if (currSCCB->Sccb_scsistat == SELECT_Q_ST) {
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2912  			currTar_Info->TarStatus &=
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2913  			    ~(unsigned char)TAR_TAG_Q_MASK;
db038cf86fc63d3 Alexey Dobriyan 2006-03-08  2914  			currTar_Info->TarStatus |= (unsigned char)TAG_Q_REJECT;
^1da177e4c3f415 Linus Torvalds  2005-04-16  2915  		}
^1da177e4c3f415 Linus Torvalds  2005-04-16  2916  
^1da177e4c3f415 Linus Torvalds  2005-04-16  2917  		ACCEPT_MSG(port);
^1da177e4c3f415 Linus Torvalds  2005-04-16  2918  
^1da177e4c3f415 Linus Torvalds  2005-04-16  2919  	}
^1da177e4c3f415 Linus Torvalds  2005-04-16  2920  
^1da177e4c3f415 Linus Torvalds  2005-04-16  2921  	else if ((message == SMNO_OP) || (message >= SMIDENT)
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2922  		 || (message == SMINIT_RECOVERY) || (message == SMREL_RECOVERY)) {
^1da177e4c3f415 Linus Torvalds  2005-04-16  2923  
^1da177e4c3f415 Linus Torvalds  2005-04-16  2924  		ACCEPT_MSG(port);
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2925  		WR_HARPOON(port + hp_autostart_1,
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2926  			   (AUTO_IMMED + DISCONNECT_START));
^1da177e4c3f415 Linus Torvalds  2005-04-16  2927  	}
^1da177e4c3f415 Linus Torvalds  2005-04-16  2928  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2929  	else if (message == SMREJECT) {
^1da177e4c3f415 Linus Torvalds  2005-04-16  2930  
^1da177e4c3f415 Linus Torvalds  2005-04-16  2931  		if ((currSCCB->Sccb_scsistat == SELECT_SN_ST) ||
^1da177e4c3f415 Linus Torvalds  2005-04-16  2932  		    (currSCCB->Sccb_scsistat == SELECT_WN_ST) ||
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2933  		    ((currTar_Info->TarStatus & TAR_SYNC_MASK) == SYNC_TRYING)
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2934  		    || ((currTar_Info->TarStatus & TAR_TAG_Q_MASK) ==
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2935  			TAG_Q_TRYING))
^1da177e4c3f415 Linus Torvalds  2005-04-16  2936  		{
^1da177e4c3f415 Linus Torvalds  2005-04-16  2937  			WRW_HARPOON((port + hp_intstat), BUS_FREE);
^1da177e4c3f415 Linus Torvalds  2005-04-16  2938  
^1da177e4c3f415 Linus Torvalds  2005-04-16  2939  			ACCEPT_MSG(port);
^1da177e4c3f415 Linus Torvalds  2005-04-16  2940  
^1da177e4c3f415 Linus Torvalds  2005-04-16  2941  			while ((!(RD_HARPOON(port + hp_scsisig) & SCSI_REQ)) &&
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2942  			       (!(RDW_HARPOON((port + hp_intstat)) & BUS_FREE)))
^1da177e4c3f415 Linus Torvalds  2005-04-16  2943  			{
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2944  			}
^1da177e4c3f415 Linus Torvalds  2005-04-16  2945  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2946  			if (currSCCB->Lun == 0x00) {
5c04a7b8981f285 Alexey Dobriyan 2006-03-08 @2947  				if ((currSCCB->Sccb_scsistat == SELECT_SN_ST)) {
^1da177e4c3f415 Linus Torvalds  2005-04-16  2948  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2949  					currTar_Info->TarStatus |=
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2950  					    (unsigned char)SYNC_SUPPORTED;
^1da177e4c3f415 Linus Torvalds  2005-04-16  2951  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2952  					currTar_Info->TarEEValue &=
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2953  					    ~EE_SYNC_MASK;
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2954  				}
^1da177e4c3f415 Linus Torvalds  2005-04-16  2955  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2956  				else if ((currSCCB->Sccb_scsistat ==
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2957  					  SELECT_WN_ST)) {
^1da177e4c3f415 Linus Torvalds  2005-04-16  2958  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2959  					currTar_Info->TarStatus =
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2960  					    (currTar_Info->
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2961  					     TarStatus & ~WIDE_ENABLED) |
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2962  					    WIDE_NEGOCIATED;
^1da177e4c3f415 Linus Torvalds  2005-04-16  2963  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2964  					currTar_Info->TarEEValue &=
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2965  					    ~EE_WIDE_SCSI;
^1da177e4c3f415 Linus Torvalds  2005-04-16  2966  
^1da177e4c3f415 Linus Torvalds  2005-04-16  2967  				}
^1da177e4c3f415 Linus Torvalds  2005-04-16  2968  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2969  				else if ((currTar_Info->
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2970  					  TarStatus & TAR_TAG_Q_MASK) ==
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2971  					 TAG_Q_TRYING) {
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2972  					currTar_Info->TarStatus =
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2973  					    (currTar_Info->
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2974  					     TarStatus & ~(unsigned char)
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2975  					     TAR_TAG_Q_MASK) | TAG_Q_REJECT;
^1da177e4c3f415 Linus Torvalds  2005-04-16  2976  
^1da177e4c3f415 Linus Torvalds  2005-04-16  2977  					currSCCB->ControlByte &= ~F_USE_CMD_Q;
^1da177e4c3f415 Linus Torvalds  2005-04-16  2978  					CurrCard->discQCount--;
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2979  					CurrCard->discQ_Tbl[currSCCB->
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2980  							    Sccb_tag] = NULL;
^1da177e4c3f415 Linus Torvalds  2005-04-16  2981  					currSCCB->Sccb_tag = 0x00;
^1da177e4c3f415 Linus Torvalds  2005-04-16  2982  
^1da177e4c3f415 Linus Torvalds  2005-04-16  2983  				}
^1da177e4c3f415 Linus Torvalds  2005-04-16  2984  			}
^1da177e4c3f415 Linus Torvalds  2005-04-16  2985  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2986  			if (RDW_HARPOON((port + hp_intstat)) & BUS_FREE) {
^1da177e4c3f415 Linus Torvalds  2005-04-16  2987  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2988  				if (currSCCB->Lun == 0x00) {
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2989  					WRW_HARPOON((port + hp_intstat),
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2990  						    BUS_FREE);
^1da177e4c3f415 Linus Torvalds  2005-04-16  2991  					CurrCard->globalFlags |= F_NEW_SCCB_CMD;
^1da177e4c3f415 Linus Torvalds  2005-04-16  2992  				}
^1da177e4c3f415 Linus Torvalds  2005-04-16  2993  			}
^1da177e4c3f415 Linus Torvalds  2005-04-16  2994  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2995  			else {
^1da177e4c3f415 Linus Torvalds  2005-04-16  2996  
^1da177e4c3f415 Linus Torvalds  2005-04-16  2997  				if ((CurrCard->globalFlags & F_CONLUN_IO) &&
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2998  				    ((currTar_Info->
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  2999  				      TarStatus & TAR_TAG_Q_MASK) !=
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3000  				     TAG_Q_TRYING))
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3001  					currTar_Info->TarLUNBusy[currSCCB->
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3002  								 Lun] = 1;
^1da177e4c3f415 Linus Torvalds  2005-04-16  3003  				else
47b5d69c4aa753f James Bottomley 2005-04-24  3004  					currTar_Info->TarLUNBusy[0] = 1;
^1da177e4c3f415 Linus Torvalds  2005-04-16  3005  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3006  				currSCCB->ControlByte &=
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3007  				    ~(unsigned char)F_USE_CMD_Q;
^1da177e4c3f415 Linus Torvalds  2005-04-16  3008  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3009  				WR_HARPOON(port + hp_autostart_1,
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3010  					   (AUTO_IMMED + DISCONNECT_START));
^1da177e4c3f415 Linus Torvalds  2005-04-16  3011  
^1da177e4c3f415 Linus Torvalds  2005-04-16  3012  			}
^1da177e4c3f415 Linus Torvalds  2005-04-16  3013  		}
^1da177e4c3f415 Linus Torvalds  2005-04-16  3014  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3015  		else {
^1da177e4c3f415 Linus Torvalds  2005-04-16  3016  			ACCEPT_MSG(port);
^1da177e4c3f415 Linus Torvalds  2005-04-16  3017  
^1da177e4c3f415 Linus Torvalds  2005-04-16  3018  			while ((!(RD_HARPOON(port + hp_scsisig) & SCSI_REQ)) &&
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3019  			       (!(RDW_HARPOON((port + hp_intstat)) & BUS_FREE)))
^1da177e4c3f415 Linus Torvalds  2005-04-16  3020  			{
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3021  			}
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3022  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3023  			if (!(RDW_HARPOON((port + hp_intstat)) & BUS_FREE)) {
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3024  				WR_HARPOON(port + hp_autostart_1,
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3025  					   (AUTO_IMMED + DISCONNECT_START));
^1da177e4c3f415 Linus Torvalds  2005-04-16  3026  			}
^1da177e4c3f415 Linus Torvalds  2005-04-16  3027  		}
^1da177e4c3f415 Linus Torvalds  2005-04-16  3028  	}
^1da177e4c3f415 Linus Torvalds  2005-04-16  3029  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3030  	else if (message == SMEXT) {
^1da177e4c3f415 Linus Torvalds  2005-04-16  3031  
^1da177e4c3f415 Linus Torvalds  2005-04-16  3032  		ACCEPT_MSG(port);
47b5d69c4aa753f James Bottomley 2005-04-24  3033  		FPT_shandem(port, p_card, currSCCB);
^1da177e4c3f415 Linus Torvalds  2005-04-16  3034  	}
^1da177e4c3f415 Linus Torvalds  2005-04-16  3035  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3036  	else if (message == SMIGNORWR) {
^1da177e4c3f415 Linus Torvalds  2005-04-16  3037  
^1da177e4c3f415 Linus Torvalds  2005-04-16  3038  		ACCEPT_MSG(port);	/* ACK the RESIDUE MSG */
^1da177e4c3f415 Linus Torvalds  2005-04-16  3039  
47b5d69c4aa753f James Bottomley 2005-04-24  3040  		message = FPT_sfm(port, currSCCB);
^1da177e4c3f415 Linus Torvalds  2005-04-16  3041  
^1da177e4c3f415 Linus Torvalds  2005-04-16  3042  		if (currSCCB->Sccb_scsimsg != SMPARITY)
^1da177e4c3f415 Linus Torvalds  2005-04-16  3043  			ACCEPT_MSG(port);
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3044  		WR_HARPOON(port + hp_autostart_1,
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3045  			   (AUTO_IMMED + DISCONNECT_START));
^1da177e4c3f415 Linus Torvalds  2005-04-16  3046  	}
^1da177e4c3f415 Linus Torvalds  2005-04-16  3047  
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3048  	else {
^1da177e4c3f415 Linus Torvalds  2005-04-16  3049  
^1da177e4c3f415 Linus Torvalds  2005-04-16  3050  		currSCCB->HostStatus = SCCB_PHASE_SEQUENCE_FAIL;
^1da177e4c3f415 Linus Torvalds  2005-04-16  3051  		currSCCB->Sccb_scsimsg = SMREJECT;
^1da177e4c3f415 Linus Torvalds  2005-04-16  3052  
^1da177e4c3f415 Linus Torvalds  2005-04-16  3053  		ACCEPT_MSG_ATN(port);
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3054  		WR_HARPOON(port + hp_autostart_1,
5c04a7b8981f285 Alexey Dobriyan 2006-03-08  3055  			   (AUTO_IMMED + DISCONNECT_START));
^1da177e4c3f415 Linus Torvalds  2005-04-16  3056  	}
^1da177e4c3f415 Linus Torvalds  2005-04-16  3057  }
^1da177e4c3f415 Linus Torvalds  2005-04-16  3058  

:::::: The code at line 2947 was first introduced by commit
:::::: 5c04a7b8981f2855869bf04c881553135445d701 [SCSI] drivers/scsi/FlashPoint.c: Lindent

:::::: TO: Alexey Dobriyan <adobriyan@gmail.com>
:::::: CC: James Bottomley <jejb@mulgrave.il.steeleye.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012271800.3hkTcPJR-lkp%40intel.com.

--45Z9DzgjV8m4Oswq
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
jQEmQL8PR9AbqQX+A7GLBR8j3AEA

--45Z9DzgjV8m4Oswq--
