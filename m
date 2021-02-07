Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBC7S72AAMGQEETWKEMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id E290D31234D
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Feb 2021 10:55:24 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id f132sf2593573oig.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Feb 2021 01:55:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612691723; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rdi6EZgyvfXePh1BUpxUGtKuJLtm44ImnTlJyCljbrnoJZFrNeh/+Nk6f5VRlB4pzq
         igKaMjAAwi5x7cZpu8G7VtUIhyZlyoUl5z5VyJKZKBNFGs29NEPW2kf1yw8Dfhhnj4Oz
         Rs+sQQQvq9wVpHZwTyR04NUJc/v8QafBl21DmTLUtJVN6m640l8afsLO+Ta5RUdhVJhx
         YNLbAo721OlXL7mg5x4DbP2eaGdnzchmfvl8Dcv2i3duSAvfUR/lAsEHLBW3aDOZsTzB
         Dyvnvf+k27xQy+WPn4K6ngE4Ox4IYCZ7Tg1D5sV5JWA8wmWjA3dR/tE0kePrjJKpiZ6Q
         mapA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=5qWDB/i9CApp5sVQwNLUDHTgBgor15ZB+dEnP+itxjo=;
        b=CpA7KZnx1IRgsrqLyjo+ASpAMXKhW4f8w7Qu+2RVcmXWIcdmQtjYOEgqwVgH2yvaRK
         IHHPEPxWj2SEkQLT7VFrVlHZ/kKuvUhMJ1d9EP7FbhlBY9FZ0NO/RoY08TqP5MQGjogh
         gPpgs4qmyVsJiISB/l/eYYpwPtKoBVu5Td70oemo3WeSn35RpECzRxssSBWEk/YpCIKs
         3OEqIuoFKTLAxVo+QwCjDd7VtNBW8YrV9tIfegow7vCfipsd4px9G0AWwuaxlcnWDI4e
         Ul5nNKVj3ZqRCHow9IgqjIpMV59T8SDuoVishVQa6kRJ35KLHhA0qg1+eTJe9Z/mGjVQ
         ARtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5qWDB/i9CApp5sVQwNLUDHTgBgor15ZB+dEnP+itxjo=;
        b=AocbeeqVZ1zUB+Yxh2+VjLDitPQ005ORBhImo2W5m7IVIeVvYTH8zADj403VncOQyD
         SF9rw3EQ/H1e67usCfhwrWaeOFvZCT1pIFzLezsDd+duA1MLyhxDkgD6Hv4PzO8JFG6c
         203fQuW4JGmkXHnB703J5i0QA+g0SOjkGfb1jJUhb1cK0eaLd7uhKWgytxTV1AOlsTOb
         RmrLTdZTBnTLeG66CWRtX6ETnJpakhS5IkKFu6ikYFpgcn90suoGDtj4yIgWsAqp1xhf
         pFO0ksFGWu0hmB3w42wSab4LUVzFfNBmaimDM5Zb/3mxYLpS24qmzQSDmdopFn5CDtXB
         CYrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5qWDB/i9CApp5sVQwNLUDHTgBgor15ZB+dEnP+itxjo=;
        b=tbyzBnnOjw3Mvpb2wMYIEmjNbw54SG3+Ai27Q+e0sdGHKPbSKuOJZ0KWZXdTn5Hy+F
         HQgf5FQyHgIByu66GYpQCb5OgqXNnLvQUmMjN0/14jm880byvWrQA0BrTiXlWcgqRDxW
         4iyu74ni3mTHZMW0KmG/Ui6BXVlUN34EibD46VqryFFoAaZWAkrJ8FDwARY3e9T/Vt1m
         I0jONr9yJ/zOq1+2eF4vyRMNCyufzcJEZ36f9rfoECtFcvw9BTfbxKRrb+eSkZ6gOxVU
         LW4sDh+Tv7FGloxLukC0/wvgQ6YBS/xNmc9/aYFgv4dTG7blAwKtFohxHk3oifFLils8
         CK6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530geGPRZyOWIyYe3lC/GDsjrZIT3lYOvnlb9k6meO8Jj/3Qe8Kb
	wDS7y9TIk/nFf0LPVedPKoU=
X-Google-Smtp-Source: ABdhPJwBdoyqbj40CBF8EDY/AvB3au8uWupQbrxkHw15Iy6Zo9zd8N7HGqicmjs0v1M21T02nlWZmg==
X-Received: by 2002:a9d:4587:: with SMTP id x7mr9126633ote.274.1612691723297;
        Sun, 07 Feb 2021 01:55:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2a88:: with SMTP id e8ls3070358otb.6.gmail; Sun, 07 Feb
 2021 01:55:22 -0800 (PST)
X-Received: by 2002:a9d:5544:: with SMTP id h4mr9444096oti.104.1612691722691;
        Sun, 07 Feb 2021 01:55:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612691722; cv=none;
        d=google.com; s=arc-20160816;
        b=om4t8VdkUX34dUmsprtM4PKyCIrPkI5yGATxdAxIyLghwuLZwHxO/cH5jpK9B6gmTq
         NiDe5hWxTog0FKdpHPOHqSkcCJ2z++limD81P7ugmuZHcIYp6Yr8N27oDMx2qdFN6dAw
         skMEFIO7oBRs//sH9C2V1UTocX9BQEGBzxLtw6sqrMxwb3AQb+VmSmsnTPEKwH74wWwD
         SGOG0cnf8S+aDjAiOB+PGoKnE/iwyqekOXV+VVC3Pjb3iXp3ynoDC+e13/xaHYgm3Qrx
         oURkrWmhAt+y3RgfI0OkLdnNXAlhOf9soaWbvv6cLkKihK95zr+mv27cjzeapGb/z6J8
         UyAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=aXRr/E+4OshnN2bfusTnTx15GHtYEBiCaxFVcfdU+6M=;
        b=Gm30EBufjnXfJyyNzoK3+bU2bx1tHMoUbkVtOWTqpAvI5mH3nBy8ntpcddSS+gMuDy
         SQBwt7fkgNEq82CVWsZ82ej3nh8Ij7GLtjWSAMELcTM+kVlhhoLSYASSg9advGb9cAC9
         NNSSlA7V0KKIJhu/HYpQUtCfJAS/ckxVg5mwl/5gcLCeAOoMrV2P5ZLQc9AxGkmj5OfS
         eFh4Yj2wcFnIQ7Ip+2OVNNfUFE6xg5c/QP+JKJOnz5l1wejvL9Oj826bYiZV+5lWkteq
         sWxJi6Hpfc23qwinHxqxLjgGQ3cf1zMqsVU2tYHN4bM80FJ4yvj4tU1oek8Mr5VGrPUO
         p6Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id g62si704601oif.2.2021.02.07.01.55.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Feb 2021 01:55:22 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: mXjKdDRFW0TBiwbYlSDVWS2hOH84aXyFHPWwQ1EbGFhapj/6KXJFHNRuVSRk2CsMYpdi1XORI/
 mnWlzFn7nqhQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9887"; a="181660982"
X-IronPort-AV: E=Sophos;i="5.81,159,1610438400"; 
   d="gz'50?scan'50,208,50";a="181660982"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2021 01:55:21 -0800
IronPort-SDR: 06OC8j9HTNmREgm+DpeCiYp2N0XlDNLgk3dSbw2sLCfbnosPBR96kZ89VYbiYE/wud0BOwGbuz
 PmLpcSSOX2UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,159,1610438400"; 
   d="gz'50?scan'50,208,50";a="374068279"
Received: from lkp-server02.sh.intel.com (HELO 8b832f01bb9c) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 07 Feb 2021 01:55:18 -0800
Received: from kbuild by 8b832f01bb9c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l8gmj-0002pe-UE; Sun, 07 Feb 2021 09:55:17 +0000
Date: Sun, 7 Feb 2021 17:54:28 +0800
From: kernel test robot <lkp@intel.com>
To: Huacai Chen <chenhc@lemote.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Pei Huang <huangpei@loongson.cn>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: arch/mips/loongson64/cop2-ex.c:97:30: error: no member named 'fpu'
 in 'struct thread_struct'
Message-ID: <202102071722.ZSOVyRyJ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   61556703b610a104de324e4f061dc6cf7b218b46
commit: f83e4f9896eff614d0f2547a561fa5f39f9cddde MIPS: Loongson-3: Add some unaligned instructions emulation
date:   10 months ago
config: mips-randconfig-r032-20210207 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f83e4f9896eff614d0f2547a561fa5f39f9cddde
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout f83e4f9896eff614d0f2547a561fa5f39f9cddde
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   arch/mips/loongson64/cop2-ex.c:44:15: error: implicit declaration of function '__is_fpu_owner' [-Werror,-Wimplicit-function-declaration]
                   fpu_owned = __is_fpu_owner();
                               ^
   arch/mips/loongson64/cop2-ex.c:44:15: note: did you mean 'is_fpu_owner'?
   arch/mips/include/asm/fpu.h:269:19: note: 'is_fpu_owner' declared here
   static inline int is_fpu_owner(void)
                     ^
>> arch/mips/loongson64/cop2-ex.c:97:30: error: no member named 'fpu' in 'struct thread_struct'
                           set_fpr64(current->thread.fpu.fpr,
                                     ~~~~~~~~~~~~~~~ ^
   arch/mips/loongson64/cop2-ex.c:99:30: error: no member named 'fpu' in 'struct thread_struct'
                           set_fpr64(current->thread.fpu.fpr,
                                     ~~~~~~~~~~~~~~~ ^
   arch/mips/loongson64/cop2-ex.c:132:43: error: no member named 'fpu' in 'struct thread_struct'
                           value_next = get_fpr64(current->thread.fpu.fpr,
                                                  ~~~~~~~~~~~~~~~ ^
   arch/mips/loongson64/cop2-ex.c:139:38: error: no member named 'fpu' in 'struct thread_struct'
                           value = get_fpr64(current->thread.fpu.fpr,
                                             ~~~~~~~~~~~~~~~ ^
   arch/mips/loongson64/cop2-ex.c:206:30: error: no member named 'fpu' in 'struct thread_struct'
                           set_fpr64(current->thread.fpu.fpr,
                                     ~~~~~~~~~~~~~~~ ^
   arch/mips/loongson64/cop2-ex.c:223:30: error: no member named 'fpu' in 'struct thread_struct'
                           set_fpr64(current->thread.fpu.fpr,
                                     ~~~~~~~~~~~~~~~ ^
   arch/mips/loongson64/cop2-ex.c:288:38: error: no member named 'fpu' in 'struct thread_struct'
                           value = get_fpr64(current->thread.fpu.fpr,
                                             ~~~~~~~~~~~~~~~ ^
   arch/mips/loongson64/cop2-ex.c:307:38: error: no member named 'fpu' in 'struct thread_struct'
                           value = get_fpr64(current->thread.fpu.fpr,
                                             ~~~~~~~~~~~~~~~ ^
   9 errors generated.


vim +97 arch/mips/loongson64/cop2-ex.c

    26	
    27	static int loongson_cu2_call(struct notifier_block *nfb, unsigned long action,
    28		void *data)
    29	{
    30		unsigned int res, fpu_owned;
    31		unsigned long ra, value, value_next;
    32		union mips_instruction insn;
    33		int fr = !test_thread_flag(TIF_32BIT_FPREGS);
    34		struct pt_regs *regs = (struct pt_regs *)data;
    35		void __user *addr = (void __user *)regs->cp0_badvaddr;
    36		unsigned int __user *pc = (unsigned int __user *)exception_epc(regs);
    37	
    38		ra = regs->regs[31];
    39		__get_user(insn.word, pc);
    40	
    41		switch (action) {
    42		case CU2_EXCEPTION:
    43			preempt_disable();
  > 44			fpu_owned = __is_fpu_owner();
    45			if (!fr)
    46				set_c0_status(ST0_CU1 | ST0_CU2);
    47			else
    48				set_c0_status(ST0_CU1 | ST0_CU2 | ST0_FR);
    49			enable_fpu_hazard();
    50			KSTK_STATUS(current) |= (ST0_CU1 | ST0_CU2);
    51			if (fr)
    52				KSTK_STATUS(current) |= ST0_FR;
    53			else
    54				KSTK_STATUS(current) &= ~ST0_FR;
    55			/* If FPU is owned, we needn't init or restore fp */
    56			if (!fpu_owned) {
    57				set_thread_flag(TIF_USEDFPU);
    58				init_fp_ctx(current);
    59				_restore_fp(current);
    60			}
    61			preempt_enable();
    62	
    63			return NOTIFY_STOP;	/* Don't call default notifier */
    64	
    65		case CU2_LWC2_OP:
    66			if (insn.loongson3_lswc2_format.ls == 0)
    67				goto sigbus;
    68	
    69			if (insn.loongson3_lswc2_format.fr == 0) {	/* gslq */
    70				if (!access_ok(addr, 16))
    71					goto sigbus;
    72	
    73				LoadDW(addr, value, res);
    74				if (res)
    75					goto fault;
    76	
    77				LoadDW(addr + 8, value_next, res);
    78				if (res)
    79					goto fault;
    80	
    81				regs->regs[insn.loongson3_lswc2_format.rt] = value;
    82				regs->regs[insn.loongson3_lswc2_format.rq] = value_next;
    83				compute_return_epc(regs);
    84			} else {					/* gslqc1 */
    85				if (!access_ok(addr, 16))
    86					goto sigbus;
    87	
    88				lose_fpu(1);
    89				LoadDW(addr, value, res);
    90				if (res)
    91					goto fault;
    92	
    93				LoadDW(addr + 8, value_next, res);
    94				if (res)
    95					goto fault;
    96	
  > 97				set_fpr64(current->thread.fpu.fpr,
    98					insn.loongson3_lswc2_format.rt, value);
    99				set_fpr64(current->thread.fpu.fpr,
   100					insn.loongson3_lswc2_format.rq, value_next);
   101				compute_return_epc(regs);
   102				own_fpu(1);
   103			}
   104			return NOTIFY_STOP;	/* Don't call default notifier */
   105	
   106		case CU2_SWC2_OP:
   107			if (insn.loongson3_lswc2_format.ls == 0)
   108				goto sigbus;
   109	
   110			if (insn.loongson3_lswc2_format.fr == 0) {	/* gssq */
   111				if (!access_ok(addr, 16))
   112					goto sigbus;
   113	
   114				/* write upper 8 bytes first */
   115				value_next = regs->regs[insn.loongson3_lswc2_format.rq];
   116	
   117				StoreDW(addr + 8, value_next, res);
   118				if (res)
   119					goto fault;
   120				value = regs->regs[insn.loongson3_lswc2_format.rt];
   121	
   122				StoreDW(addr, value, res);
   123				if (res)
   124					goto fault;
   125	
   126				compute_return_epc(regs);
   127			} else {					/* gssqc1 */
   128				if (!access_ok(addr, 16))
   129					goto sigbus;
   130	
   131				lose_fpu(1);
   132				value_next = get_fpr64(current->thread.fpu.fpr,
   133						insn.loongson3_lswc2_format.rq);
   134	
   135				StoreDW(addr + 8, value_next, res);
   136				if (res)
   137					goto fault;
   138	
   139				value = get_fpr64(current->thread.fpu.fpr,
   140						insn.loongson3_lswc2_format.rt);
   141	
   142				StoreDW(addr, value, res);
   143				if (res)
   144					goto fault;
   145	
   146				compute_return_epc(regs);
   147				own_fpu(1);
   148			}
   149			return NOTIFY_STOP;	/* Don't call default notifier */
   150	
   151		case CU2_LDC2_OP:
   152			switch (insn.loongson3_lsdc2_format.opcode1) {
   153			/*
   154			 * Loongson-3 overridden ldc2 instructions.
   155			 * opcode1              instruction
   156			 *   0x1          gslhx: load 2 bytes to GPR
   157			 *   0x2          gslwx: load 4 bytes to GPR
   158			 *   0x3          gsldx: load 8 bytes to GPR
   159			 *   0x6	  gslwxc1: load 4 bytes to FPR
   160			 *   0x7	  gsldxc1: load 8 bytes to FPR
   161			 */
   162			case 0x1:
   163				if (!access_ok(addr, 2))
   164					goto sigbus;
   165	
   166				LoadHW(addr, value, res);
   167				if (res)
   168					goto fault;
   169	
   170				compute_return_epc(regs);
   171				regs->regs[insn.loongson3_lsdc2_format.rt] = value;
   172				break;
   173			case 0x2:
   174				if (!access_ok(addr, 4))
   175					goto sigbus;
   176	
   177				LoadW(addr, value, res);
   178				if (res)
   179					goto fault;
   180	
   181				compute_return_epc(regs);
   182				regs->regs[insn.loongson3_lsdc2_format.rt] = value;
   183				break;
   184			case 0x3:
   185				if (!access_ok(addr, 8))
   186					goto sigbus;
   187	
   188				LoadDW(addr, value, res);
   189				if (res)
   190					goto fault;
   191	
   192				compute_return_epc(regs);
   193				regs->regs[insn.loongson3_lsdc2_format.rt] = value;
   194				break;
   195			case 0x6:
   196				die_if_kernel("Unaligned FP access in kernel code", regs);
   197				BUG_ON(!used_math());
   198				if (!access_ok(addr, 4))
   199					goto sigbus;
   200	
   201				lose_fpu(1);
   202				LoadW(addr, value, res);
   203				if (res)
   204					goto fault;
   205	
   206				set_fpr64(current->thread.fpu.fpr,
   207						insn.loongson3_lsdc2_format.rt, value);
   208				compute_return_epc(regs);
   209				own_fpu(1);
   210	
   211				break;
   212			case 0x7:
   213				die_if_kernel("Unaligned FP access in kernel code", regs);
   214				BUG_ON(!used_math());
   215				if (!access_ok(addr, 8))
   216					goto sigbus;
   217	
   218				lose_fpu(1);
   219				LoadDW(addr, value, res);
   220				if (res)
   221					goto fault;
   222	
   223				set_fpr64(current->thread.fpu.fpr,
   224						insn.loongson3_lsdc2_format.rt, value);
   225				compute_return_epc(regs);
   226				own_fpu(1);
   227				break;
   228	
   229			}
   230			return NOTIFY_STOP;	/* Don't call default notifier */
   231	
   232		case CU2_SDC2_OP:
   233			switch (insn.loongson3_lsdc2_format.opcode1) {
   234			/*
   235			 * Loongson-3 overridden sdc2 instructions.
   236			 * opcode1              instruction
   237			 *   0x1          gsshx: store 2 bytes from GPR
   238			 *   0x2          gsswx: store 4 bytes from GPR
   239			 *   0x3          gssdx: store 8 bytes from GPR
   240			 *   0x6          gsswxc1: store 4 bytes from FPR
   241			 *   0x7          gssdxc1: store 8 bytes from FPR
   242			 */
   243			case 0x1:
   244				if (!access_ok(addr, 2))
   245					goto sigbus;
   246	
   247				compute_return_epc(regs);
   248				value = regs->regs[insn.loongson3_lsdc2_format.rt];
   249	
   250				StoreHW(addr, value, res);
   251				if (res)
   252					goto fault;
   253	
   254				break;
   255			case 0x2:
   256				if (!access_ok(addr, 4))
   257					goto sigbus;
   258	
   259				compute_return_epc(regs);
   260				value = regs->regs[insn.loongson3_lsdc2_format.rt];
   261	
   262				StoreW(addr, value, res);
   263				if (res)
   264					goto fault;
   265	
   266				break;
   267			case 0x3:
   268				if (!access_ok(addr, 8))
   269					goto sigbus;
   270	
   271				compute_return_epc(regs);
   272				value = regs->regs[insn.loongson3_lsdc2_format.rt];
   273	
   274				StoreDW(addr, value, res);
   275				if (res)
   276					goto fault;
   277	
   278				break;
   279	
   280			case 0x6:
   281				die_if_kernel("Unaligned FP access in kernel code", regs);
   282				BUG_ON(!used_math());
   283	
   284				if (!access_ok(addr, 4))
   285					goto sigbus;
   286	
   287				lose_fpu(1);
   288				value = get_fpr64(current->thread.fpu.fpr,
   289						insn.loongson3_lsdc2_format.rt);
   290	
   291				StoreW(addr, value, res);
   292				if (res)
   293					goto fault;
   294	
   295				compute_return_epc(regs);
   296				own_fpu(1);
   297	
   298				break;
   299			case 0x7:
   300				die_if_kernel("Unaligned FP access in kernel code", regs);
   301				BUG_ON(!used_math());
   302	
   303				if (!access_ok(addr, 8))
   304					goto sigbus;
   305	
   306				lose_fpu(1);
   307				value = get_fpr64(current->thread.fpu.fpr,
   308						insn.loongson3_lsdc2_format.rt);
   309	
   310				StoreDW(addr, value, res);
   311				if (res)
   312					goto fault;
   313	
   314				compute_return_epc(regs);
   315				own_fpu(1);
   316	
   317				break;
   318			}
   319			return NOTIFY_STOP;	/* Don't call default notifier */
   320		}
   321	
   322		return NOTIFY_OK;		/* Let default notifier send signals */
   323	
   324	fault:
   325		/* roll back jump/branch */
   326		regs->regs[31] = ra;
   327		regs->cp0_epc = (unsigned long)pc;
   328		/* Did we have an exception handler installed? */
   329		if (fixup_exception(regs))
   330			return NOTIFY_STOP;	/* Don't call default notifier */
   331	
   332		die_if_kernel("Unhandled kernel unaligned access", regs);
   333		force_sig(SIGSEGV);
   334	
   335		return NOTIFY_STOP;	/* Don't call default notifier */
   336	
   337	sigbus:
   338		die_if_kernel("Unhandled kernel unaligned access", regs);
   339		force_sig(SIGBUS);
   340	
   341		return NOTIFY_STOP;	/* Don't call default notifier */
   342	}
   343	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102071722.ZSOVyRyJ-lkp%40intel.com.

--Q68bSM7Ycu6FN28Q
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--Q68bSM7Ycu6FN28Q--
