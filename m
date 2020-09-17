Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZP6R35QKGQEZAK5GJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A762926E5BD
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 21:56:22 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id t3sf1574941ood.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 12:56:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600372581; cv=pass;
        d=google.com; s=arc-20160816;
        b=BjDm1o+WnIxeInAuEk1EWi4Q0jW6r0Ds/7vb07Ex5f2rPxy9MoqNjNR+qyCUzd1mhB
         F0oKHl8mx5YMKi6WRdLLLOr9MaSX+7b4YOMKYLZghy1fFU33Id/KBnll5jsUYnc5ldBL
         f1Wn/dYS47ie017trsry3XXLFSQJ/W5fZqXS4bq8axxOxmwo1DQLyK8g+1e08AV/7IeR
         BxaD+hbQfscEii6czdKfRG9Aur+MmVnaLuHqdQJ1ZwTjST4AMs6Ip6QsPlmTkg9Y2Pjm
         GDlRgKPYDsih323quz0Z5istMLkPMyIDiRF8DmU8CkQ+3DGc0bTCPjoykhKOQQsJ8AJ3
         uB4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=xhixxNuSxQD0mrf4xvDsIpsfKOjn/GiI2XVlTNYFIP0=;
        b=AoJoibo5hftP7je3QXYHJp/S9+RARTgTSGjjWe8F1wPFJGbjJYSs1AGuWWBWupNk8O
         Gj1S8JS360sRhHAcXFw/okTc9RmmznILCdV7QS7r++6w1BY1BS9HU7kh6FcS3bUbhh71
         dUPQnGGB/SaGEDTAig2SuK7387PP/VplqyVFOMvWPUCKxyUTaYsyCfb1GcqHeS63o85r
         6MRiKNc0RVTl4cJMlrQuhgLRc0AGc8zusewB5q/p0ESoBOKtR3MiKaOcUzOMccqTnJPd
         ppIY+5F74IiJUgAYW8a0fDYHZ9hwHPB9mBeYOlvgxGO7uwOGcTD81oSAB9SnyIvhDmUZ
         IESw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xhixxNuSxQD0mrf4xvDsIpsfKOjn/GiI2XVlTNYFIP0=;
        b=rsQ4XIuWs2sr2Tp2WFLAa2aY3f/y59MtRKzUa/O5N8btreZwuFdXMa+N4PW4NyIwE5
         WkqmlKFvdTHZiGiCbMFbM6kHGF64uoIClqWXiXQg+MRNgB0YTD5eVeHOLbI4s93/d5nZ
         IEj/54seALUVs2D0nbZBZZnRUswZJSifctJDHUlsb1K00en+QYYvSJh7tyjExWr0aWI2
         Rhada0eouK1Kk4pn6zx5LBtnGgJJDCee8zq4OcinfirRGJkjQ3GcOgCzXyHGne2tyZS1
         L1ORkPypRk7cA3fRjnJrqTBHs8lWsoaLT8hNDwOeiHs6rDegYriEOunhho0LFANC7L08
         9VVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xhixxNuSxQD0mrf4xvDsIpsfKOjn/GiI2XVlTNYFIP0=;
        b=DGj+2AmYSbS5BR7S3PVPakJu6RjneBffKrN83TTYHHqz4ZQy5jvR8QdLRZJ08Jawaq
         ojuuM6xMCE0s4gJVPXwgTt4u8YZYeyzf28Dwv4Z0uS+BAOTDwABuT3V0rAHXuzoEQ1MF
         rqedzcLiTlPThkcPUEICKwVZRWepqSNs0w7QwQnjoyVq2nq/9EqEweld7YknTSH9IVzy
         LwrivxPs5DeHVIX7fxNdX+E6I+3ELytSDSot2Yx5T8x/V1Dg8nuBAQ7QOIJwCKdngTAD
         D6VNmbq1GeMhzl1yr6w+jPQD64j2eFiNy33xFyLLeSsYCaChpolJQvSgE2HkF6JcmUc/
         VkgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BJN3R2Me8qGwnUW/zPi5FLwRGXlAwZp7jFB3kRYgc0ejG98vD
	C8WMYAHMKk5sVngWkMuC3Vk=
X-Google-Smtp-Source: ABdhPJzPRLNXCRMye/H7IeFUpuygDWMc/xztE+tmEV2ZCjQasc7XJreoFoNCEmvaH++6icvR92H2rQ==
X-Received: by 2002:a05:6830:1e22:: with SMTP id t2mr16452516otr.100.1600372581279;
        Thu, 17 Sep 2020 12:56:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:72ca:: with SMTP id p193ls748752oic.3.gmail; Thu, 17 Sep
 2020 12:56:20 -0700 (PDT)
X-Received: by 2002:a05:6808:346:: with SMTP id j6mr7550327oie.8.1600372580832;
        Thu, 17 Sep 2020 12:56:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600372580; cv=none;
        d=google.com; s=arc-20160816;
        b=KawxoFm2C/nIYSN9DUTuB5Vybg5vu9Lc05oKRKYWe95Gc4jk3A9esFaU8LqX3iVCZx
         U6Q7/ksFyrP4wDU1rRKVPEI6vr0/V1WK348gF9plkezxmFHrqt7YRNF04t5afnkWV2/G
         jJElk4kJHIqZiFwnZA3fBazwW391OvpViJ3vNfxHoCHp4Kmo0w43/Hl7cPH0uTGcm2qD
         vhpaChnHwbVbRbzhHoR+Rk8C9k/YCpoLI3dWFNX4rp9I+4onLEV3Ia9HrCKRtf8EE/J4
         WRFjAvuuajWTdbmBlq5ATlrmXb3Ep/FB4buKTw1uhZZMC3+0JzIO0kVAxaPEke1R0CZF
         NxYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=HlhKmcBkskGAUGk+pVPWJ+zN2X+/dmgfawj3IJUpq6I=;
        b=B8w9xF18nm6oLwk8ERWbwTHLRxPr23y3FLpFOJ1dT3/OSWb0BsD2z6ECV5stnCGIuk
         aTHicM1PCCh7v5PSq+e7RXue1afN9R8WmQo7SU5ntXDUtzoqGKbSwFSqXWia0Iu9Wa8C
         cTh4+Svz+hYNdpsZxxFpbNqnO4onkxByzpQGrmDMVBcgAOQt/Ug8O0gcf1xqW//vM+SF
         wdh4o3m7gzTo2F+cSDDcRM9JhQgaheryJ8XhYvslK8qO6qUPjG5fLXNtGbdsEXVSQaZW
         A6F62lPhJq7YbJih010ZKXQszqWCKnhvmu2wSjZn4Eqwjx9d04mljo8CDcINVM/qeNEE
         gUOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id l18si51692otj.1.2020.09.17.12.56.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 12:56:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: 6CeK899R47ZbP9pA4ay1d83WtBpOAsbTACl5Vj9w0tiJxWM2mKdCoyr+TiC2b3a/2J3TL4youL
 XtZaYQAQ7y2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="244615253"
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; 
   d="gz'50?scan'50,208,50";a="244615253"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2020 12:56:18 -0700
IronPort-SDR: PTooUifz7OvnicFCsBJmvYr4lBmp3AZ4MPy277h7e3Dm55QkNztMIwNwGKY+x/ytOlu/3unYGN
 ZN7SHgZMH9JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; 
   d="gz'50?scan'50,208,50";a="507872410"
Received: from lkp-server01.sh.intel.com (HELO a05db971c861) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 17 Sep 2020 12:56:16 -0700
Received: from kbuild by a05db971c861 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kJ00t-00007c-DU; Thu, 17 Sep 2020 19:56:15 +0000
Date: Fri, 18 Sep 2020 03:56:10 +0800
From: kernel test robot <lkp@intel.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: [linux-next:master 7032/8629]
 arch/powerpc/kernel/vdso32/gettimeofday.S:40: Error: syntax error; found
 `@', expected `,'
Message-ID: <202009180302.cc60Lfbg%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="X1bOJ3K7DJ5YkBrT"
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


--X1bOJ3K7DJ5YkBrT
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Michael,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   860461e4fcaa76200d2d1a53523e0ff7be92e6e8
commit: 231b232df8f67e7d37af01259c21f2a131c3911e [7032/8629] powerpc/64: Make VDSO32 track COMPAT on 64-bit
config: powerpc64-randconfig-r035-20200917 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1321160a26e7e489baf9b10d6de90a342f898960)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        git checkout 231b232df8f67e7d37af01259c21f2a131c3911e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

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

# https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=231b232df8f67e7d37af01259c21f2a131c3911e
git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
git fetch --no-tags linux-next master
git checkout 231b232df8f67e7d37af01259c21f2a131c3911e
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009180302.cc60Lfbg%25lkp%40intel.com.

--X1bOJ3K7DJ5YkBrT
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--X1bOJ3K7DJ5YkBrT--
