Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBS6YU75AKGQE4KPRVIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D4C2564E0
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 Aug 2020 07:49:01 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id t18sf729847otk.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 22:49:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598680140; cv=pass;
        d=google.com; s=arc-20160816;
        b=QnJ9JNzzOqU1bxnqb9CnVrbm1nTZ8VKsdRVpoyWFwvs7g6oCuhX5W9iEMvHgR++/ON
         0ZoS4cXxkmQajLOwiA563Q/H1wPbStzrANQAaPPh9tbEariqrM7F992KdMdt6a7P8W/B
         5s5cwC9FkjMrSMsPWP9x3vlHG4iGgylp41c9ZNVMq5dJOuWdtF73Ly6dW3NFwZa3axy2
         CfVcfHaJt63z4Deb0lG19WrNd5QXgzIgaB+k5Hy/9iuaHoMUsRnRxYhzdsDB6IDkQ1au
         ZCMi3xeYo24Dv+1WrqpVn41utMUDbL/MVKETdCSz4yjdhDlwmWXiuiuTQbs2w8WwMXx0
         0d7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=rfpoTuPluSBqgrIR6O7IQ29V0vzqCyiu47vjYJm2NPQ=;
        b=KeV3GRv0LEsJ8yzJ8Sz2TQcPHqPZ033cc8k1pTH4JhBt6+dWQBLSm63rx5+zei8IBL
         5yHlz+VYXZkHYuYpNhSVUavkXngVKq7sBrpFhsQvvz9Rbaa75y+AjJJqZ/rzKE8ODA+8
         g1velmQfpZwNGS+Hdon+fmEecZ66jaFuSf0VxWg+AuD5jy8lFBSq1a+dWNjDNUvk9Df8
         vdIf1DzE5eLTmi4HIKaZihO8d4sBq0/2K1ZWfG0HZYHnz2zkdd6fvxF2MhAFHG3loqlf
         c3eQSFbyaGrOLvEhyCGW4yKdCwExI6s3dqJaJfOt4KkfYYZ1yHsx7rVa7Xx+G6EynWwg
         C0rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rfpoTuPluSBqgrIR6O7IQ29V0vzqCyiu47vjYJm2NPQ=;
        b=ZICi8eoXaXOj0Xeg/RN8k1griKgcr/G1yJD2PkJ4mT4XdnV/AgbJErjWoSCPCqcPo0
         wK1X2N/nt56WV8i2MhItZJdCp4lsss9DDwsp74seWuCI3YcFawIx8gW0VFwgzHNC2OAc
         OP6DdVidVbIpmTOgNdtcWc7lF9ghw0upAIzJ0lHlIEM7/gMvmZl7GkrdHpMHG3UTTZZ/
         4AjtvV1jxKhCw5SX+gY+8Oyf6K3F5h7LhbQyx+p6MOLYAkp78NrDXMepdO38jHevjleS
         6DYHFPCnbuW9kiPh0RzaYpNSxJkiYl640jHVa6p62V7QgX7E2zT/OQEc7evAPx5o21Ku
         YroQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rfpoTuPluSBqgrIR6O7IQ29V0vzqCyiu47vjYJm2NPQ=;
        b=BYeXeDCwJgpt2/CllBt1LKf46nqOb2aag5zTsbPl/OMHaBu+3zi/yu3wdY5eAN4Seo
         r0lJWNr9ine0GFvCRd8CjGLEvs9lnPSc6NWb6R+bO/uDvTY/92iIy0fM38u1LHfxkcEv
         4mWTwMao6eFsGG8Tsbb1lSX4LMFnsAOrE/6JBc2L+J1GJUS/fwHf2u1AnbZjtoO70ezV
         Q1vAm0Z6rRMSkIe3N5p2q1EnoqOc8wl0FP2jTcr8vS/T7CybCbe3cII6pIa/PDlPYFeg
         8tsHDyYZhfHq1/BbuasNaLzBR9ybDVFMOkYRNL0Qc2lT7+IwNoEPIU05TQDjP9on2I6Y
         tnGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307/J0r0EmT3zjLsd4WX26GSIhcIPNY+darCA7VNRf49xVGaB6G
	XpXdvKDh7QF7vHi1Ik0Orw0=
X-Google-Smtp-Source: ABdhPJw1NOGVe7XMpUefbTeUfHM0vbi9kay7+XtHiNceXOGAV+UdVz9c+Zmo5F6aoytY1XxugE+tHw==
X-Received: by 2002:aca:b705:: with SMTP id h5mr1263438oif.31.1598680140029;
        Fri, 28 Aug 2020 22:49:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:8c0d:: with SMTP id u13ls91877ooj.7.gmail; Fri, 28 Aug
 2020 22:48:59 -0700 (PDT)
X-Received: by 2002:a4a:315b:: with SMTP id v27mr1412926oog.20.1598680139635;
        Fri, 28 Aug 2020 22:48:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598680139; cv=none;
        d=google.com; s=arc-20160816;
        b=M8D1QqfAuciQQDSahg3oaWIEPpPJmbs2jLuRkol9rSzMXQA+IVGBOQu/6aid+VLAHc
         et0WenoL/16poqkT9fSnVGuBQRdR4cpo3tXp8fbCqPKG8HiCS7fd5/w6B9KsSTUcHX/M
         lNb4ibGz7inur8SaP0u60dpM1/OrhmjrQSD88W/Q+ScZwZYrmcsijit4Evgg8N51Lf+v
         pcgxpS8D4Hu/zDAM/4MsRQ6m7xsICFQgASMj6KQ442fw2ZHXwRBBLQALvPcP5ZjD/xsn
         56BFRIolYOhoHLtvMYRhX3HihsXAmWUq674QlDc7cZsfVK38gfl2Z8vyu5g18FuRJ9AU
         V/pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=g9Z99F1eX5r8L2kQlxyN6UUpFXi1G4wwkgbzz61EJRM=;
        b=vE1MXBjvAIjcv3mRGW1i4VR656APY9+KXTKyyLGFIqrV/bMkB2DY0LIgxtil/orQA2
         Oy8pZKa1/Wi2tCU5CPIBi/bSj/aPCfgR97NI+brk9wNLSiLFBFns7hlmCPBsdMNikRZX
         6+4pFqCMQOv+OwbSlDK5CYhZL0jCQM1zMPP3bwDHbwZHEFnIwW42XF8o73lWLJuodTVk
         KiEgaoggfKMY1yJkV0vNEsmY3NHYbMDzMSlqctst+jRstDYnY7EZ6FAD3IuC275n4hyl
         nV4pk3CGgORwyCvql/qX3TvT3FztFdF3Jvv9SYpgK0ciZuISnEUgr5dmkc0B8ZWLlluV
         xtKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id j139si96852oib.1.2020.08.28.22.48.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 Aug 2020 22:48:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: NZpyl0aEs+SwGBOpu58+SfFX8rNftJc+gEnZou5lx68FN9jMUxmgospQdmf4fW1kysL/xQ6lzr
 jQ2D1YR6mfrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9727"; a="156042944"
X-IronPort-AV: E=Sophos;i="5.76,366,1592895600"; 
   d="gz'50?scan'50,208,50";a="156042944"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Aug 2020 22:48:57 -0700
IronPort-SDR: 9W3+GwBJJ43EJTkG5mpPjogD61TH3JO50HTqZZr2lvg+i8Kb+rCfQbFvty0PUjucvHIHaRfaJf
 RyadG4kpIn0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,366,1592895600"; 
   d="gz'50?scan'50,208,50";a="300467769"
Received: from lkp-server02.sh.intel.com (HELO 301dc1beeb51) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 28 Aug 2020 22:48:55 -0700
Received: from kbuild by 301dc1beeb51 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kBtjT-0000Mr-47; Sat, 29 Aug 2020 05:48:55 +0000
Date: Sat, 29 Aug 2020 13:48:35 +0800
From: kernel test robot <lkp@intel.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [weiny2:lm-pks-pmem-for-5.10 13/71] arch/x86/kernel/process.c:252:3:
 warning: variable 'new' is uninitialized when used here
Message-ID: <202008291332.JsuzjrCP%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline
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


--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Ira,

FYI, the error/warning still remains.

tree:   https://github.com/weiny2/linux-kernel.git lm-pks-pmem-for-5.10
head:   8c1ba4f489f57e3fdf76c0eb534ff192ddb6c227
commit: 22fa65b728068e0e4bbb74b899868e8c4a9bddeb [13/71] x86/pks: Add a global pkrs option
config: x86_64-randconfig-r015-20200829 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c10e63677f5d20f18010f8f68c631ddc97546f7d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 22fa65b728068e0e4bbb74b899868e8c4a9bddeb
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> arch/x86/kernel/process.c:252:3: warning: variable 'new' is uninitialized when used here [-Wuninitialized]
                   new |= (new_bits << pkey_shift);
                   ^~~
   arch/x86/kernel/process.c:235:9: note: initialize the variable 'new' to silence this warning
           u32 new;
                  ^
                   = 0
   1 warning generated.

# https://github.com/weiny2/linux-kernel/commit/22fa65b728068e0e4bbb74b899868e8c4a9bddeb
git remote add weiny2 https://github.com/weiny2/linux-kernel.git
git fetch --no-tags weiny2 lm-pks-pmem-for-5.10
git checkout 22fa65b728068e0e4bbb74b899868e8c4a9bddeb
vim +/new +252 arch/x86/kernel/process.c

   199	
   200	/**
   201	 * The global value can only decrease permissions (increase access) so the
   202	 * following are the possibilities.  Unfortunately, bit wise '&' works most of
   203	 * the time but not all.  So if the global is not the default we must check the
   204	 * individual pkey values.
   205	 *
   206	 * 00 all access
   207	 * 10 write disabled
   208	 * 01 access disabled
   209	 * 11 dont care
   210	 *
   211	 * local  global  result  effective
   212	 *                        operation
   213	 * 00     00      00       &
   214	 * 00     10      00       &
   215	 * 00     01      00       &
   216	 * 00     11      00       &
   217	 *
   218	 * 10     00      00       &
   219	 * 10     10      10       &
   220	 * 10     01      10       ^ special case
   221	 * 10     11      10       &
   222	 *
   223	 * 01     00      00       &
   224	 * 01     10      10       ^ special case
   225	 * 01     01      01       &
   226	 * 01     11      01       &
   227	 *
   228	 * 11     00      00       &
   229	 * 11     10      10       &
   230	 * 11     01      01       &
   231	 * 11     11      11       &
   232	 */
   233	static inline u32 add_in_global(u32 old)
   234	{
   235		u32 new;
   236		u32 global_reg = READ_ONCE(pkrs_global_cache);
   237		int i;
   238	
   239		if (global_reg == INIT_PKRS_VALUE)
   240			return old;
   241	
   242		for (i = PKS_KERN_DEFAULT_KEY; i < PKS_NUM_KEYS; i++) {
   243			int pkey_shift = i * PKR_BITS_PER_PKEY;
   244			u8 local = (old >> pkey_shift) & 0x3;
   245			u8 global = (global_reg >> pkey_shift) & 0x3;
   246			u8 new_bits = local & global;
   247	
   248			/* Special case */
   249			if (local && global && !new_bits)
   250				new_bits = 0x2;
   251	
 > 252			new |= (new_bits << pkey_shift);
   253		}
   254	
   255		return new;
   256	}
   257	static inline void pks_sched_in(void)
   258	{
   259		u32 val = current->thread.saved_pkrs;
   260	
   261		val = add_in_global(val);
   262		write_pkrs(val);
   263	}
   264	#else
   265	static inline void pks_init_task(struct task_struct *tsk) { }
   266	static inline void pks_sched_in(void) { }
   267	#endif
   268	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008291332.JsuzjrCP%25lkp%40intel.com.

--J2SCkAp4GZ/dPZZf
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
3nBNVz2evRijYHx5vf8X9RwK2kSdAQA=

--J2SCkAp4GZ/dPZZf--
