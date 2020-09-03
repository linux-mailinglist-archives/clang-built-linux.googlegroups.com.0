Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB74QYX5AKGQEVCVQVKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5540F25C9AB
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 21:48:16 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id j125sf488632vsc.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 12:48:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599162495; cv=pass;
        d=google.com; s=arc-20160816;
        b=qrdXD1OWum6M1QAdLXMSBLmxcRgk1gC8XeaBxgssrBVMX/9SRg9oI1E+aKcmbAZEdw
         Cs+FidoCy+8cJQM9rbRNy0EI/cOk1dvEfcEK/cqjeKBfV8Cr7Fv83U4K6XbRqcVOfpTX
         6KDSQLkny42Whv7iTT60/+u/c/AWzAfcM1eQI4L1i88K9UDiyLLaHeZA4DILu/HPjsy+
         qxG6JS36h55FYT19tk28h60sd1W8BtkXT61ksWUoy3fLw6WF+iCDt2vw85JoU3Qsgsf5
         BXQy1xBh3zmX20NCfFvgYWgWhxToo26v8p6H+XriUMOjBHVoTg4CIc4efH8OyyS9NPjc
         XESA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=YRqgHgDk3ZMxGyOr9AtrKuCFg8e7pbgfKo6daoS3HD0=;
        b=qaDfPOBVwRoVcPv5ZV5y1PZt9FUky1aXMf25thNcm/+D7ETkLd4EWi1bAhaLscE3As
         1xdgpb+RmF1xGp3ZXFvDfkZEdTO7GUj1dGn3jtxA/SheuEDRx7Vm3bifmYyg0t2P4lFq
         rAZBFmfLUT+YWEe3qjB1rhLeYR5Ah9NW/TQv9raKe/cp3PsaIahPB2IL3LBQL4uhNg7P
         rnTOLxSY7dT8jjwRCU1DhVH5wPHpx9HbshPJid0gjoILWTnwp2kR4a4l+TdTCEUQZhFa
         6u4RIoP6wzmJKDrn7nNfGikmzsBgn0jrWgFyaqBbceKBn5hB1KhXbgNx+IIJJlF3InP8
         z2eQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YRqgHgDk3ZMxGyOr9AtrKuCFg8e7pbgfKo6daoS3HD0=;
        b=Cnlu4O9fk67LrqTdMax5G5Z41o/ZwUQ5XLwnWbtJWq6Pln8bs8lKRj+WeH9ePjIPee
         w7mgb5FDD9deCYUhWl6r2cQTN39UWH3n7nwmLPvtsFl6QIkAicGtcJIg8TNULZES+XcL
         Yxw7duxdWrbkubCCXcrACLofHwdIdAhVhLSZW//4K/9jmmpU5M5h0fGq+/Y4UPjzOccO
         jkwldOdCTqs0DR005S5U/Xh/3l0iauVen4HQNLWDWB66ei5DfNg6AGXoIWuk2HgmF/7K
         vamaZM6oykn26B7OEn7TJhAjBYlpubCMJ12ewwCri3ZGZy5QSnVh+ex2l4ntRq/CcKqj
         V9EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YRqgHgDk3ZMxGyOr9AtrKuCFg8e7pbgfKo6daoS3HD0=;
        b=lJBqOeybro5WdbnnsKkylFR+LarfjJQuJRBjP17uQPMPhvcN6bPETjQ1luvSd+uETy
         H9BdyYYI85Mpk1bVTpPlsu0CqfPY3R+/P1v8TGNfuUwuW6YC+LrnlHW/NIHjATABVwfB
         eHDTMgn9V41kmaH7PBH3Co0wXH6dex90XOUOan0IeKAAqky8c12NzG9RC/N783I+Dty/
         oj44Ijuk7N825oKfWLopPqCprmpcM8sxpOPYD4qYLYv0IRzo6PniqcuH4P1ygXWFScuO
         0iL3Q4kTHnvKKLWFG53uT61EJrXzswE7jmAP0OBsy3Lfdy1Ri4S3wTeQO5Iz0zXvjlaH
         eOGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NvG7Q+sUd/1yahBJKFqcxiqlu7ACuRNjq3lAmNwrfVvnecoZI
	EmiA0NOW00/COqyx4CyIx9Q=
X-Google-Smtp-Source: ABdhPJx0RaDhGhtwteTk8UzgrrW3/cJqtXksxXheFMHr1wHfW+Jn4HPUcmAg/GGpGMpJvC8H2FItwA==
X-Received: by 2002:ab0:6d90:: with SMTP id m16mr2726304uah.112.1599162495151;
        Thu, 03 Sep 2020 12:48:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:21a1:: with SMTP id 30ls564843uac.5.gmail; Thu, 03 Sep
 2020 12:48:14 -0700 (PDT)
X-Received: by 2002:a9f:2c9a:: with SMTP id w26mr2622514uaj.89.1599162494659;
        Thu, 03 Sep 2020 12:48:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599162494; cv=none;
        d=google.com; s=arc-20160816;
        b=jQ823ohekL91CCm2e3T6wI42B73pC8PPcvuMb0hfT/eEr5kPBhU8HIGHTGRRev9cBd
         C3R8UJmL+KcJfGYIBj6Qjp7dmf+W7J9cvDfEO3qtUxt5PWBjJtlInC+LwdQkSw4CVJMw
         dkae/gkNNdyou5Hx0wtpqe1KAaX2a6jthYzcB6kvU07WODUCD7zDRMA2cEpBsflw7feL
         NvebiaXGvCRSnR0fx5a/J9d72JAET1BUus1PyNvYMRGvWtNg7l7sKGCNTAv48BjnCs4T
         7oUCL9Ttc1aAXuF130tQH2PigaxDtlZ1YPoCS1yH6EBu/ExmatuRbHa3x/gr8kuf/hQl
         mlag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=t/waX3ZU5qExYQPBNxMsC0RD//1qcJgBlnXDana+bGM=;
        b=GWF7fU7kmAsvMydgQMXu3pXTH6Mcg0hLb+vWxWc1UzP6oWB8vJaneh3n9IxzktBwga
         zqtmYlpUCuRTxjJpxKmXRcoXQrZEFsFYAOho0xdIQu1IVfNg4Z3a1P86JxkWaJ7O91/s
         TXn6oG7u5OWKDhmvYU3z1S/XmILP3zAfE5bDDNLrXflSzXM9UkFtRR9EzWk5ixPMeSoB
         diQLeUQHcO/ghy5qArFDUv5wQBJfqc6TdDmq+6RntlRvocLbHtaLhZDFExmto84U2E6T
         Vaqs0vAJY5COraVCvJZEtFPBzB6Hd6jBzpt+tTU7LIJbKnS4BwVl8cfNwyw7xm4ZzaUu
         0lQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id q10si207920uas.1.2020.09.03.12.48.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Sep 2020 12:48:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: 4VFUj++GOeJ7Byv24neMfiLZNXsvedtnV4mQ+eZDwSEdCAA2Daoyg6klet3oN0RWrAnam4hgpi
 uLPNH8vfPeqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9733"; a="145384577"
X-IronPort-AV: E=Sophos;i="5.76,387,1592895600"; 
   d="gz'50?scan'50,208,50";a="145384577"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2020 12:48:12 -0700
IronPort-SDR: z+tOqHm5UJYSAq5tI3y8ShAxwBgUB2JNo5hGuibHF27KoBmAhqUwrX/VdJXLSODzx5gFvoHlvH
 FU0lldroOXcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,387,1592895600"; 
   d="gz'50?scan'50,208,50";a="331902416"
Received: from lkp-server01.sh.intel.com (HELO f1af165c0d27) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 03 Sep 2020 12:48:10 -0700
Received: from kbuild by f1af165c0d27 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kDvDO-0000EX-4G; Thu, 03 Sep 2020 19:48:10 +0000
Date: Fri, 4 Sep 2020 03:47:28 +0800
From: kernel test robot <lkp@intel.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [linuxppc:next-test 66/74]
 arch/powerpc/kernel/vdso32/gettimeofday.S:40: Error: syntax error; found
 `@', expected `,'
Message-ID: <202009040318.TyBLvxpl%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2oS5YaxWCcQjTEyO"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--2oS5YaxWCcQjTEyO
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Michael,

First bad commit (maybe != root cause):

tree:   https://github.com/linuxppc/linux next-test
head:   d2087055c445c6b3c0c966ba10f6b54db4abd6ac
commit: d054a37884d3097ddcdf96e8a2ad755ac2d8fed0 [66/74] powerpc/64: Make VDSO32 track COMPAT on 64-bit
config: powerpc-randconfig-r035-20200902 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1284dc34abd11ce4275ad21c0470ad8c679b59b7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        git checkout d054a37884d3097ddcdf96e8a2ad755ac2d8fed0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   arch/powerpc/kernel/vdso32/gettimeofday.S: Assembler messages:
>> arch/powerpc/kernel/vdso32/gettimeofday.S:40: Error: syntax error; found `@', expected `,'
>> arch/powerpc/kernel/vdso32/gettimeofday.S:40: Error: junk at end of line: `@local'
>> arch/powerpc/kernel/vdso32/gettimeofday.S:68: Warning: invalid register expression
>> arch/powerpc/kernel/vdso32/gettimeofday.S:68: Error: operand out of range (3 is not between 0 and 1)
   arch/powerpc/kernel/vdso32/gettimeofday.S:68: Error: missing operand
   arch/powerpc/kernel/vdso32/gettimeofday.S:69: Warning: invalid register expression
   arch/powerpc/kernel/vdso32/gettimeofday.S:69: Error: operand out of range (3 is not between 0 and 1)
   arch/powerpc/kernel/vdso32/gettimeofday.S:69: Error: missing operand
   arch/powerpc/kernel/vdso32/gettimeofday.S:72: Warning: invalid register expression
   arch/powerpc/kernel/vdso32/gettimeofday.S:72: Error: operand out of range (3 is not between 0 and 1)
   arch/powerpc/kernel/vdso32/gettimeofday.S:72: Error: missing operand
   arch/powerpc/kernel/vdso32/gettimeofday.S:73: Warning: invalid register expression
   arch/powerpc/kernel/vdso32/gettimeofday.S:73: Error: operand out of range (3 is not between 0 and 1)
   arch/powerpc/kernel/vdso32/gettimeofday.S:73: Error: missing operand
   arch/powerpc/kernel/vdso32/gettimeofday.S:86: Error: syntax error; found `@', expected `,'
   arch/powerpc/kernel/vdso32/gettimeofday.S:86: Error: junk at end of line: `@local'
   arch/powerpc/kernel/vdso32/gettimeofday.S:110: Warning: invalid register expression
   arch/powerpc/kernel/vdso32/gettimeofday.S:110: Error: operand out of range (8 is not between 0 and 1)
   arch/powerpc/kernel/vdso32/gettimeofday.S:110: Error: missing operand
   arch/powerpc/kernel/vdso32/gettimeofday.S:144: Warning: invalid register expression
   arch/powerpc/kernel/vdso32/gettimeofday.S:144: Error: missing operand
   arch/powerpc/kernel/vdso32/gettimeofday.S:213: Warning: invalid register expression
   arch/powerpc/kernel/vdso32/gettimeofday.S:213: Error: operand out of range (4 is not between 0 and 1)
   arch/powerpc/kernel/vdso32/gettimeofday.S:213: Error: missing operand
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)

# https://github.com/linuxppc/linux/commit/d054a37884d3097ddcdf96e8a2ad755ac2d8fed0
git remote add linuxppc https://github.com/linuxppc/linux
git fetch --no-tags linuxppc next-test
git checkout d054a37884d3097ddcdf96e8a2ad755ac2d8fed0
vim +40 arch/powerpc/kernel/vdso32/gettimeofday.S

597bc5c00b666f Paul Mackerras         2008-10-27   22  
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   23  	.text
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   24  /*
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   25   * Exact prototype of gettimeofday
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   26   *
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   27   * int __kernel_gettimeofday(struct timeval *tv, struct timezone *tz);
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   28   *
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   29   */
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   30  V_FUNCTION_BEGIN(__kernel_gettimeofday)
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   31    .cfi_startproc
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   32  	mflr	r12
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   33    .cfi_register lr,r12
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   34  
bfc2eae0ad72a4 Christophe Leroy       2019-12-02   35  	mr.	r10,r3			/* r10 saves tv */
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   36  	mr	r11,r4			/* r11 saves tz */
ec0895f08f9951 Christophe Leroy       2019-12-02   37  	get_datapage	r9, r0
74609f4536f2b8 Tony Breeds            2007-06-26   38  	beq	3f
6e2f9e9cfd560f Christophe Leroy       2019-12-02   39  	LOAD_REG_IMMEDIATE(r7, 1000000)	/* load up USEC_PER_SEC */
8fd63a9ea75284 Paul Mackerras         2010-06-20  @40  	bl	__do_get_tspec@local	/* get sec/usec from tb & kernel */
8fd63a9ea75284 Paul Mackerras         2010-06-20   41  	stw	r3,TVAL32_TV_SEC(r10)
8fd63a9ea75284 Paul Mackerras         2010-06-20   42  	stw	r4,TVAL32_TV_USEC(r10)
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   43  
74609f4536f2b8 Tony Breeds            2007-06-26   44  3:	cmplwi	r11,0			/* check if tz is NULL */
bfc2eae0ad72a4 Christophe Leroy       2019-12-02   45  	mtlr	r12
bfc2eae0ad72a4 Christophe Leroy       2019-12-02   46  	crclr	cr0*4+so
bfc2eae0ad72a4 Christophe Leroy       2019-12-02   47  	li	r3,0
bfc2eae0ad72a4 Christophe Leroy       2019-12-02   48  	beqlr
bfc2eae0ad72a4 Christophe Leroy       2019-12-02   49  
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   50  	lwz	r4,CFG_TZ_MINUTEWEST(r9)/* fill tz */
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   51  	lwz	r5,CFG_TZ_DSTTIME(r9)
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   52  	stw	r4,TZONE_TZ_MINWEST(r11)
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   53  	stw	r5,TZONE_TZ_DSTTIME(r11)
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   54  
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   55  	blr
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   56    .cfi_endproc
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   57  V_FUNCTION_END(__kernel_gettimeofday)
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   58  
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   59  /*
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   60   * Exact prototype of clock_gettime()
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   61   *
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   62   * int __kernel_clock_gettime(clockid_t clock_id, struct timespec *tp);
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   63   *
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   64   */
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   65  V_FUNCTION_BEGIN(__kernel_clock_gettime)
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   66    .cfi_startproc
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   67  	/* Check for supported clock IDs */
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  @68  	cmpli	cr0,r3,CLOCK_REALTIME
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   69  	cmpli	cr1,r3,CLOCK_MONOTONIC
0c37ec2aa88bd8 Benjamin Herrenschmidt 2005-11-14   70  	cror	cr0*4+eq,cr0*4+eq,cr1*4+eq
654abc69ef2e69 Christophe Leroy       2019-12-02   71  
654abc69ef2e69 Christophe Leroy       2019-12-02   72  	cmpli	cr5,r3,CLOCK_REALTIME_COARSE
654abc69ef2e69 Christophe Leroy       2019-12-02   73  	cmpli	cr6,r3,CLOCK_MONOTONIC_COARSE
654abc69ef2e69 Christophe Leroy       2019-12-02   74  	cror	cr5*4+eq,cr5*4+eq,cr6*4+eq
654abc69ef2e69 Christophe Leroy       2019-12-02   75  
654abc69ef2e69 Christophe Leroy       2019-12-02   76  	cror	cr0*4+eq,cr0*4+eq,cr5*4+eq
654abc69ef2e69 Christophe Leroy       2019-12-02   77  	bne	cr0, .Lgettime_fallback
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   78  
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   79  	mflr	r12			/* r12 saves lr */
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   80    .cfi_register lr,r12
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   81  	mr	r11,r4			/* r11 saves tp */
ec0895f08f9951 Christophe Leroy       2019-12-02   82  	get_datapage	r9, r0
6e2f9e9cfd560f Christophe Leroy       2019-12-02   83  	LOAD_REG_IMMEDIATE(r7, NSEC_PER_SEC)	/* load up NSEC_PER_SEC */
654abc69ef2e69 Christophe Leroy       2019-12-02   84  	beq	cr5, .Lcoarse_clocks
654abc69ef2e69 Christophe Leroy       2019-12-02   85  .Lprecise_clocks:
654abc69ef2e69 Christophe Leroy       2019-12-02   86  	bl	__do_get_tspec@local	/* get sec/nsec from tb & kernel */
654abc69ef2e69 Christophe Leroy       2019-12-02   87  	bne	cr1, .Lfinish		/* not monotonic -> all done */
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   88  
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   89  	/*
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   90  	 * CLOCK_MONOTONIC
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   91  	 */
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   92  
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   93  	/* now we must fixup using wall to monotonic. We need to snapshot
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   94  	 * that value and do the counter trick again. Fortunately, we still
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   95  	 * have the counter value in r8 that was returned by __do_get_xsec.
597bc5c00b666f Paul Mackerras         2008-10-27   96  	 * At this point, r3,r4 contain our sec/nsec values, r5 and r6
597bc5c00b666f Paul Mackerras         2008-10-27   97  	 * can be used, r7 contains NSEC_PER_SEC.
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   98  	 */
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   99  
dd9a994fc68d19 Christophe Leroy       2019-04-04  100  	lwz	r5,(WTOM_CLOCK_SEC+LOPART)(r9)
597bc5c00b666f Paul Mackerras         2008-10-27  101  	lwz	r6,WTOM_CLOCK_NSEC(r9)
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  102  
597bc5c00b666f Paul Mackerras         2008-10-27  103  	/* We now have our offset in r5,r6. We create a fake dependency
597bc5c00b666f Paul Mackerras         2008-10-27  104  	 * on that value and re-check the counter
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  105  	 */
597bc5c00b666f Paul Mackerras         2008-10-27  106  	or	r0,r6,r5
597bc5c00b666f Paul Mackerras         2008-10-27  107  	xor	r0,r0,r0
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  108  	add	r9,r9,r0
597bc5c00b666f Paul Mackerras         2008-10-27  109  	lwz	r0,(CFG_TB_UPDATE_COUNT+LOPART)(r9)
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  110          cmpl    cr0,r8,r0		/* check if updated */
654abc69ef2e69 Christophe Leroy       2019-12-02  111  	bne-	.Lprecise_clocks
654abc69ef2e69 Christophe Leroy       2019-12-02  112  	b	.Lfinish_monotonic
654abc69ef2e69 Christophe Leroy       2019-12-02  113  
654abc69ef2e69 Christophe Leroy       2019-12-02  114  	/*
654abc69ef2e69 Christophe Leroy       2019-12-02  115  	 * For coarse clocks we get data directly from the vdso data page, so
654abc69ef2e69 Christophe Leroy       2019-12-02  116  	 * we don't need to call __do_get_tspec, but we still need to do the
654abc69ef2e69 Christophe Leroy       2019-12-02  117  	 * counter trick.
654abc69ef2e69 Christophe Leroy       2019-12-02  118  	 */
654abc69ef2e69 Christophe Leroy       2019-12-02  119  .Lcoarse_clocks:
654abc69ef2e69 Christophe Leroy       2019-12-02  120  	lwz	r8,(CFG_TB_UPDATE_COUNT+LOPART)(r9)
654abc69ef2e69 Christophe Leroy       2019-12-02  121  	andi.	r0,r8,1                 /* pending update ? loop */
654abc69ef2e69 Christophe Leroy       2019-12-02  122  	bne-	.Lcoarse_clocks
654abc69ef2e69 Christophe Leroy       2019-12-02  123  	add	r9,r9,r0		/* r0 is already 0 */
654abc69ef2e69 Christophe Leroy       2019-12-02  124  
654abc69ef2e69 Christophe Leroy       2019-12-02  125  	/*
654abc69ef2e69 Christophe Leroy       2019-12-02  126  	 * CLOCK_REALTIME_COARSE, below values are needed for MONOTONIC_COARSE
654abc69ef2e69 Christophe Leroy       2019-12-02  127  	 * too
654abc69ef2e69 Christophe Leroy       2019-12-02  128  	 */
654abc69ef2e69 Christophe Leroy       2019-12-02  129  	lwz	r3,STAMP_XTIME_SEC+LOPART(r9)
654abc69ef2e69 Christophe Leroy       2019-12-02  130  	lwz	r4,STAMP_XTIME_NSEC+LOPART(r9)
654abc69ef2e69 Christophe Leroy       2019-12-02  131  	bne	cr6,1f
654abc69ef2e69 Christophe Leroy       2019-12-02  132  
654abc69ef2e69 Christophe Leroy       2019-12-02  133  	/* CLOCK_MONOTONIC_COARSE */
654abc69ef2e69 Christophe Leroy       2019-12-02  134  	lwz	r5,(WTOM_CLOCK_SEC+LOPART)(r9)
654abc69ef2e69 Christophe Leroy       2019-12-02  135  	lwz	r6,WTOM_CLOCK_NSEC(r9)
654abc69ef2e69 Christophe Leroy       2019-12-02  136  
654abc69ef2e69 Christophe Leroy       2019-12-02  137  	/* check if counter has updated */
654abc69ef2e69 Christophe Leroy       2019-12-02  138  	or	r0,r6,r5
654abc69ef2e69 Christophe Leroy       2019-12-02  139  1:	or	r0,r0,r3
654abc69ef2e69 Christophe Leroy       2019-12-02  140  	or	r0,r0,r4
654abc69ef2e69 Christophe Leroy       2019-12-02  141  	xor	r0,r0,r0
654abc69ef2e69 Christophe Leroy       2019-12-02  142  	add	r3,r3,r0
654abc69ef2e69 Christophe Leroy       2019-12-02  143  	lwz	r0,CFG_TB_UPDATE_COUNT+LOPART(r9)
654abc69ef2e69 Christophe Leroy       2019-12-02  144  	cmpl	cr0,r0,r8               /* check if updated */
654abc69ef2e69 Christophe Leroy       2019-12-02  145  	bne-	.Lcoarse_clocks
654abc69ef2e69 Christophe Leroy       2019-12-02  146  
654abc69ef2e69 Christophe Leroy       2019-12-02  147  	/* Counter has not updated, so continue calculating proper values for
654abc69ef2e69 Christophe Leroy       2019-12-02  148  	 * sec and nsec if monotonic coarse, or just return with the proper
654abc69ef2e69 Christophe Leroy       2019-12-02  149  	 * values for realtime.
654abc69ef2e69 Christophe Leroy       2019-12-02  150  	 */
654abc69ef2e69 Christophe Leroy       2019-12-02  151  	bne	cr6, .Lfinish
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  152  
597bc5c00b666f Paul Mackerras         2008-10-27  153  	/* Calculate and store result. Note that this mimics the C code,
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  154  	 * which may cause funny results if nsec goes negative... is that
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  155  	 * possible at all ?
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  156  	 */
654abc69ef2e69 Christophe Leroy       2019-12-02  157  .Lfinish_monotonic:
597bc5c00b666f Paul Mackerras         2008-10-27  158  	add	r3,r3,r5
597bc5c00b666f Paul Mackerras         2008-10-27  159  	add	r4,r4,r6
597bc5c00b666f Paul Mackerras         2008-10-27  160  	cmpw	cr0,r4,r7
597bc5c00b666f Paul Mackerras         2008-10-27  161  	cmpwi	cr1,r4,0
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  162  	blt	1f
597bc5c00b666f Paul Mackerras         2008-10-27  163  	subf	r4,r7,r4
a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  164  	addi	r3,r3,1
654abc69ef2e69 Christophe Leroy       2019-12-02  165  1:	bge	cr1, .Lfinish
0c37ec2aa88bd8 Benjamin Herrenschmidt 2005-11-14  166  	addi	r3,r3,-1
597bc5c00b666f Paul Mackerras         2008-10-27  167  	add	r4,r4,r7
597bc5c00b666f Paul Mackerras         2008-10-27  168  

:::::: The code at line 40 was first introduced by commit
:::::: 8fd63a9ea7528463211a6c88d500c51851d960c8 powerpc: Rework VDSO gettimeofday to prevent time going backwards

:::::: TO: Paul Mackerras <paulus@samba.org>
:::::: CC: Benjamin Herrenschmidt <benh@kernel.crashing.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009040318.TyBLvxpl%25lkp%40intel.com.

--2oS5YaxWCcQjTEyO
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--2oS5YaxWCcQjTEyO--
