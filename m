Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNNZZWAQMGQEYBQYX5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CF34332115C
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 08:26:46 +0100 (CET)
Received: by mail-vs1-xe3b.google.com with SMTP id a15sf699434vsd.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Feb 2021 23:26:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613978805; cv=pass;
        d=google.com; s=arc-20160816;
        b=t1hAPo1UKIbXItMkX7+t/pT7/gZK+qwziHshReXnUFuC9DmMqC5/uwKzjSHoUE0WYw
         rB7UIZBvXqso0rEiOaRUbScTmWVs8662Y6T2N5b9hKx91b6pbZQG6WkjbCwr7K7H6JSj
         /zAsXEtpqJjThv+8AOh4OK/5dCRSUU+lW13SMV5VpfwnY9mhAicNTDNOZc+NqsIx4dCR
         ivwQBzEWdD9Fmq+xIWR8mc5ShaRDxsmslLxMXtrma6pubU1dtWde5laWbv6tCgGuAErI
         nWf6opamNo/hEiL+2Pu7fa6hwQ90JcXARP5hG3rOcVTlTXiWFknBQ0GAbBlUPpfSP4mg
         vdYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=L8aBnY7v/zOjQiNsJ44YRgXOEXcpK1kfjgqzWrkY+9U=;
        b=NfnGjPQoprIrqWK77NfwiOom5rl9SELaQpKMvhssnclmo6spwJ3qW6AJ5oZ+22abjP
         5Rj/b4QwXGpVh/bCU9cl2pQjc49zugB9R5+H93yTLYso3C47KmdrW6arV0uOC60zNO5Y
         SIWEfZ20DzZlsCWSf1MU18ap0vj0YjjMU89bd/lHpHVDL93CqYxAOX5HaPcZViA2rHjp
         XBR90T9g15WuN3XKnVdbIl1k5ek/20nZ9G2QHZ4YRqL8CqBUxrUmB662Krpy80KF7rDe
         cLFfGn3IsEgIgXTwGk5Uo4wthJNHaT1SFPNgumz3PodOnZTryJBK6kvk8qjPn+BWsWxf
         5qaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L8aBnY7v/zOjQiNsJ44YRgXOEXcpK1kfjgqzWrkY+9U=;
        b=sHrMmCQGRb6+0cDPPDgxs6IKVQ90u0XLWUbLqKckTs5KN84nETrVMdeicVgLT3Kv7H
         IKdZd/K61WrX6EJ3LCZizdL9aDPBEHPlGKcv4nzqsLzkeznmtAYYO8Slekt4O73OvGpp
         ixE66/B5P2/Mq67JJYlhYieKq6WxUiztsObugmLq5j6O5rfZ2ieUW5Q8jSk5M0bhq17H
         Koc+wvNPJmcn0dfj5niBk3G2goewdm+7eFASeByvjaytdf6h5a6uUPukAPRxZQLIyyt1
         jktQwpavLMJHz9HJh+zSiiYHBRAmULDV7WDXbI4OjrZcQ3vyJlhEzerWQV8hcLDXEWm1
         Lg8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L8aBnY7v/zOjQiNsJ44YRgXOEXcpK1kfjgqzWrkY+9U=;
        b=WbZJt0FVq0sKPkT1FxM40XGnctMNOO+rETgDIYJfa4YgUjWyVVd1JnmEZpsi+2EQ2V
         fb3m7KrXEiKyttb1criyxIWBCDfUAZkRhBIgnFHQ5ZfvTIavNcA3bHmQCd+hI93B0nY7
         OhqPWXOQEx02Yofg5ju2nuDWt4pBR0TSlouT0MzFjT09rS1YWdrbewkqGQAYo7O5WDf6
         XIrAtwt/7iNImRsHvDjBosOMhaA1TWx+bVRfeAfB7hvtVvlngjYRBbMMgJi9DnRMab2M
         pZVRcBJmgYMNRGLjUxV/JNLcfMEWzL3V+s7UOymu0fEaLpodqOkzuteUXb7itGvtbuzl
         qURw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531M4AQRUg1HvpXlR6Awt+BoKGz0CU+/9g7YvaW9o0GNHsA/R4IW
	ByQ0XbQGoavPvw8q9LuP9uI=
X-Google-Smtp-Source: ABdhPJwpPJrtPOolecMY1Y1XNYF03jjljo9Y6YLtVAOWq61r/ayd/wbHQzCoMInWl+LmqWetW1vQbg==
X-Received: by 2002:ab0:5e9:: with SMTP id e96mr6638392uae.89.1613978805662;
        Sun, 21 Feb 2021 23:26:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2993:: with SMTP id u19ls1217380uap.1.gmail; Sun, 21 Feb
 2021 23:26:45 -0800 (PST)
X-Received: by 2002:a9f:2701:: with SMTP id a1mr7084487uaa.120.1613978805205;
        Sun, 21 Feb 2021 23:26:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613978805; cv=none;
        d=google.com; s=arc-20160816;
        b=PLpAIFsofZpNfYsa5JnmOdd6F0stFNDAQUrydmlcYEnX56Vo0fCx9RpU+GEfjuSEux
         AF6q0xA0J6f6JG2DYpwV8Dkg+sRfgkNCeaQ1JLy98r8c+6YDumYNdeST4GTUUnCARMXA
         rgXYZrjajGd1rvFk1W6LVekARio8g9JqTnQ2RRKJWqOUske4A+I/DgsJT46fWloB3IJI
         NjwOYKJNDItzw9bCPj0AdYgPImVxOJb2JcnHu0LAzmQckLI8TFCGdPtFrftx8ZnVIkK0
         fONwJdSXb0QEDAqtSa7xktTLVczSOHvuI3d50HtukBbTfFwAZFdTpbrCmTrxwO33gsKa
         nDmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=E7G2pI0aKijO4D5Uqi1gfyIPT3oRCXm9AQKlP5VGZJM=;
        b=Tl1TAjflv0f4QoxKjgOrP1AaWbi89GcvUM5GM75RypYfS/QS1D16i7Nc09yOKVXjFr
         jPgHNrlGrPJnxFXcxXM8q613XAV2G7GsknSrsreSfVcoktE9oogPKlgIw0RO2Slq2LLl
         NDe7t7w7kwe9B5imxOF2BDhIcrsHCs+N/vDniOfPrPXyUxIBxVrj/NbbpVmzbsjvV3lC
         xExYbEHSYWtZsjT/NontlqrhA+9Ve3g5l2w+CMxDEGGlplhkWUmDI+lcJKLgYgfA+yXE
         /k+KAOi4Cv/YsvVaR1pG40DK8SuZDS5yjSya5GFT7UG7QLf6T3TQS3HaYE+QuV9v2FT9
         KznA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id l11si878509vkr.5.2021.02.21.23.26.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2021 23:26:44 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: oCna2ano1vVsxzdYRqNVGKTHC8JkvYUEpbfloRgrUVIDSAVbSvDBof1qPbHBlfiLnsvqFsVXLz
 KZAL22HrU3Mw==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="181857063"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; 
   d="gz'50?scan'50,208,50";a="181857063"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2021 23:26:43 -0800
IronPort-SDR: Oh05+TTc03A3LOeOqJWk7z/xj0DPsbb3JPEgLzeKJrmqJnHG8UFkLcMctClyEny8PWXAPZiM22
 d62rz52E9r5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; 
   d="gz'50?scan'50,208,50";a="595857720"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 21 Feb 2021 23:26:40 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lE5c8-0000Ca-4m; Mon, 22 Feb 2021 07:26:40 +0000
Date: Mon, 22 Feb 2021 15:26:06 +0800
From: kernel test robot <lkp@intel.com>
To: Joel Stanley <joel@jms.id.au>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Sasha Levin <alexander.levin@microsoft.com>
Subject: [linux-stable-rc:linux-4.19.y 5303/9999]
 drivers/scsi/nsp32.c:2444:14: warning: explicitly assigning value of
 variable of type 'unsigned char' to itself
Message-ID: <202102221551.ehYGMjnM-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline
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


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
head:   e864f43593ccf9180c61738abdf1c1dde091367d
commit: b92e5db0f492026778cb31dfc479e50f33f75bca [5303/9999] powerpc/32: Avoid unsupported flags with clang
config: powerpc64-randconfig-r021-20210222 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
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

   In file included from drivers/scsi/nsp32.c:26:
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
   In file included from drivers/scsi/nsp32.c:26:
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
   In file included from drivers/scsi/nsp32.c:26:
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
   In file included from drivers/scsi/nsp32.c:33:
   In file included from include/linux/blkdev.h:16:
   In file included from include/linux/pagemap.h:8:
   In file included from include/linux/mm.h:26:
   In file included from include/linux/page_ref.h:7:
   include/linux/page-flags.h:162:21: warning: comparison of integers of different signs: 'const unsigned long' and 'long' [-Wsign-compare]
           return page->flags == PAGE_POISON_PATTERN;
                  ~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~
   In file included from drivers/scsi/nsp32.c:33:
   In file included from include/linux/blkdev.h:16:
   In file included from include/linux/pagemap.h:8:
   include/linux/mm.h:560:14: warning: comparison of integers of different signs: 'unsigned long' and 'long' [-Wsign-compare]
           return addr >= VMALLOC_START && addr < VMALLOC_END;
                  ~~~~ ^  ~~~~~~~~~~~~~
   In file included from drivers/scsi/nsp32.c:33:
   In file included from include/linux/blkdev.h:21:
   include/linux/bio.h:412:14: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           if (sectors >= bio_sectors(bio))
               ~~~~~~~ ^  ~~~~~~~~~~~~~~~~
   drivers/scsi/nsp32.c:136:7: warning: missing field 'subvendor' initializer [-Wmissing-field-initializers]
           {0,0,},
                ^
   drivers/scsi/nsp32.c:929:21: warning: comparison of integers of different signs: 'unsigned int' and 'int' [-Wsign-compare]
           if (scmd_id(SCpnt) == SCpnt->device->host->this_id) {
               ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/scsi/nsp32.c:1479:18: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           for (id = 0; id < ARRAY_SIZE(data->target); id++) {
                        ~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/scsi/nsp32.c:1770:28: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           if (scsi_get_resid(SCpnt) < sentlen) {
               ~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~
>> drivers/scsi/nsp32.c:2444:14: warning: explicitly assigning value of variable of type 'unsigned char' to itself [-Wself-assign]
           offset      = offset;
           ~~~~~~      ^ ~~~~~~
   drivers/scsi/nsp32.c:2665:16: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           for (i = 0; i < ARRAY_SIZE(data->lunt); i++) {
                       ~ ^ ~~~~~~~~~~~~~~~~~~~~~~
   drivers/scsi/nsp32.c:2666:17: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
                   for (j = 0; j < ARRAY_SIZE(data->lunt[0]); j++) {
                               ~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/scsi/nsp32.c:2685:16: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           for (i = 0; i < ARRAY_SIZE(data->target); i++) {
                       ~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/scsi/nsp32.c:2867:16: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           for (i = 0; i < ARRAY_SIZE(data->target); i++) {
                       ~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~
   16 warnings generated.
   Assembler messages:
   Fatal error: invalid listing option `3'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for NETDEVICES
   Depends on NET
   Selected by
   - AKEBONO && PPC_47x
   WARNING: unmet direct dependencies detected for ETHERNET
   Depends on NETDEVICES && NET
   Selected by
   - AKEBONO && PPC_47x
   WARNING: unmet direct dependencies detected for NET_PTP_CLASSIFY
   Depends on NET
   Selected by
   - PCH_GBE && NETDEVICES && ETHERNET && NET_VENDOR_OKI && PCI && (X86_32 || COMPILE_TEST
   WARNING: unmet direct dependencies detected for GRO_CELLS
   Depends on NET
   Selected by
   - RMNET && NETDEVICES && ETHERNET && NET_VENDOR_QUALCOMM
   WARNING: unmet direct dependencies detected for FAILOVER
   Depends on NET
   Selected by
   - NET_FAILOVER && NETDEVICES
   WARNING: unmet direct dependencies detected for PTP_1588_CLOCK_PCH
   Depends on (X86_32 || COMPILE_TEST && HAS_IOMEM && NET
   Selected by
   - PCH_GBE && NETDEVICES && ETHERNET && NET_VENDOR_OKI && PCI && (X86_32 || COMPILE_TEST


vim +2444 drivers/scsi/nsp32.c

^1da177e4c3f41 Linus Torvalds 2005-04-16  2430  
^1da177e4c3f41 Linus Torvalds 2005-04-16  2431  
^1da177e4c3f41 Linus Torvalds 2005-04-16  2432  /*
^1da177e4c3f41 Linus Torvalds 2005-04-16  2433   * target <-> initiator use entry number speed
^1da177e4c3f41 Linus Torvalds 2005-04-16  2434   */
^1da177e4c3f41 Linus Torvalds 2005-04-16  2435  static void nsp32_set_sync_entry(nsp32_hw_data *data,
^1da177e4c3f41 Linus Torvalds 2005-04-16  2436  				 nsp32_target  *target,
^1da177e4c3f41 Linus Torvalds 2005-04-16  2437  				 int            entry,
^1da177e4c3f41 Linus Torvalds 2005-04-16  2438  				 unsigned char  offset)
^1da177e4c3f41 Linus Torvalds 2005-04-16  2439  {
^1da177e4c3f41 Linus Torvalds 2005-04-16  2440  	unsigned char period, ackwidth, sample_rate;
^1da177e4c3f41 Linus Torvalds 2005-04-16  2441  
^1da177e4c3f41 Linus Torvalds 2005-04-16  2442  	period      = data->synct[entry].period_num;
^1da177e4c3f41 Linus Torvalds 2005-04-16  2443  	ackwidth    = data->synct[entry].ackwidth;
^1da177e4c3f41 Linus Torvalds 2005-04-16 @2444  	offset      = offset;
^1da177e4c3f41 Linus Torvalds 2005-04-16  2445  	sample_rate = data->synct[entry].sample_rate;
^1da177e4c3f41 Linus Torvalds 2005-04-16  2446  
^1da177e4c3f41 Linus Torvalds 2005-04-16  2447  	target->syncreg    = TO_SYNCREG(period, offset);
^1da177e4c3f41 Linus Torvalds 2005-04-16  2448  	target->ackwidth   = ackwidth;
^1da177e4c3f41 Linus Torvalds 2005-04-16  2449  	target->offset     = offset;
^1da177e4c3f41 Linus Torvalds 2005-04-16  2450  	target->sample_reg = sample_rate | SAMPLING_ENABLE;
^1da177e4c3f41 Linus Torvalds 2005-04-16  2451  
^1da177e4c3f41 Linus Torvalds 2005-04-16  2452  	nsp32_dbg(NSP32_DEBUG_SYNC, "set sync");
^1da177e4c3f41 Linus Torvalds 2005-04-16  2453  }
^1da177e4c3f41 Linus Torvalds 2005-04-16  2454  

:::::: The code at line 2444 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102221551.ehYGMjnM-lkp%40intel.com.

--pf9I7BMVVzbSWLtt
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
dEKAYv8PK6jfB22dAQA=

--pf9I7BMVVzbSWLtt--
