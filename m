Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBB7V43WQKGQEOGF6OJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B10EA1C5
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 17:30:01 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id g39sf1407888otg.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 09:30:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572453000; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ey55pJpP9o21sE9xpAJ9qSwuhJFixrsQqV5LnQIaAXzHhVADFB17R7ByJE3+ceZAjy
         XghUzFCv03HRrnzvcCcHeGqoSGfO0PEfnjTC5JMFz3fqOasaQs89XSeE1syVR+Z4zAUk
         8w6gYxsxXpakJqWMFnoM0McdnZ4UefOdVHDq0pm4EwBMmBlOpzGZ/Jo936w7WkiSpj3f
         eGOtEqRwv4vBFH7fxk/r3SQHiU9eQHzHDcdf54I05frmBcVQwI5LvskWs20M99tRGH8m
         dojtWQSPXLLsM6QTIb4e1XeQSIi+eQmvg9ZUbsqOrZpniwevz5AVVbiYO6fkTPDhgrgo
         nvyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=aakrA7hEmzDHVM1g4T7tTJXWR1l+mv3TUo7FKxzcxwI=;
        b=n1mjkbhZnq591camGxkU5pUa56MW4+TfLQSIjq9XhcrGCaq+daN/L+BxDJWD0D+/jg
         nSUyZADeHo2MPTC7EX7oqwCyVXkam8XzG2PjaZgicxjtf+aC6kwYnLOQlPfe2p1emMgr
         dqr/1uV6zr7o8V7jx3Yo8WWQSo8pNUqnPL20tvV9lQ67ekukerJqcju30jJ9p51W0//e
         1+y1q5mvqlgi/6gAWB0VfAd6LwGKsI1KwzqjUR63OjaeAEykqvqCybAv7BlHNWiteVlC
         pQkUWmE/+wgAqbz8r/6qhXYTcePBy0M2JFsg/sy8ktsw34ZFyc/Mf4zE+xn92vI9exHq
         xXWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aakrA7hEmzDHVM1g4T7tTJXWR1l+mv3TUo7FKxzcxwI=;
        b=PtejDadbvbbeZGhOSX08Ev72x17hJUFRAKcTnt3MJSCaF5YIBuyStYllZQAPMBbpzw
         TFggNph7Hw1pDCzdab9kqRCgX/39wNOUaGEfa+dTDNHecNgzr011uT7ukqwzi4Bgkuv1
         LctPgLUQ4Am0svD63MNpbREgNJZ4GFdf4LG5ea+mVmK98on1E3MdsSrFX4GiA6bB+iaQ
         Sad/VyzyYm/dfWuVE7p1I9iCZ91co+58z0V61O7p8VcCt3qNslFgcls0w9MtCHrevK5M
         04LXhUDNklLA3ng0kC70Jpn4bDiFGUceOHj4qGDQcf9ZmfDku0kjOKMdv70wyoHxb7zf
         TPeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aakrA7hEmzDHVM1g4T7tTJXWR1l+mv3TUo7FKxzcxwI=;
        b=F3i5Xwbwlt+EbiF5hrR581t4Qh8QGaGuds9aG8sPzCIEeki5L/4fV3J9LZj8SC558F
         O4GEstWg0I12hWWVlwKlskg5unjLOChvi/V6rmfA2AdK/tIGch4DmBPNm28SINj1nHB1
         +yYIN457l/kiewu58971TpQ8PscNIOxOvtYxUEMNjbF8gvHbBIOsJY6vPj6JBmELdzuA
         /kxxI3pCMsF2gcxY0ph9M1EINDyY67Y+5QVVvZ4b+k49GiWGlEVaKQ+l+fGxDOPXMT63
         xu8BaPmvQmbiw5SoqZGKs+nNSBNmXv+22HvrkYgt0kZg/czRp4I+Es0gNvnM7jew9wz9
         2+pw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVZW0rQ1EuWSX9Q/z9ywghdTyeeuPgCU9EK90naceBoTxcmSxfO
	QspEhpACSIZ7LMG+NtYEH8A=
X-Google-Smtp-Source: APXvYqx8lw5zh9DGIRms9Ob1JN1EfVhazEGz4D21DsSxqFzLDVfmMIm1Cp3RMcatxrL5DiJ5zhigbQ==
X-Received: by 2002:aca:3456:: with SMTP id b83mr46870oia.9.1572452999942;
        Wed, 30 Oct 2019 09:29:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:65c8:: with SMTP id z8ls2191004oth.3.gmail; Wed, 30 Oct
 2019 09:29:59 -0700 (PDT)
X-Received: by 2002:a9d:7410:: with SMTP id n16mr652065otk.3.1572452999480;
        Wed, 30 Oct 2019 09:29:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572452999; cv=none;
        d=google.com; s=arc-20160816;
        b=BSwJ2LYxUD8o3tpD2RnIUyj/3x1DSmAFIps8LUHlbekQawT1cdtxSdV7uTDVafNskm
         GDokE74Bio/bFnfwF3Dx1+gx4UUMr2SziOpdabMOB2XqNJQIu1JkLhNjfR+jNAcZF1Oe
         7YOwNv2p5aVApdhfuFn3tj29HBEPANNKUPZhHBeN0ILm7VE+iBdzr2BKRwfyqKzN76Ou
         12mGwkeKAsjvn39QeoXsxu8jz6P+HucsPEz9CXYH/hMNMTI8ONIa5XECz0OKI6Rkxbik
         qY6Wx1oY263N5opKG/pwh3b28ZdLXIdy9jWF0iE4itdLMMhC4bTlCdAz5eG6ZmB9QpRc
         ZBJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=EVnSy6M6y8aU1tOvNlXAwDV5Un3gs+ayNxeNAinB/tg=;
        b=e4BcY6eLS/FZNcd+qnuOm1A1Bm5EebAA+3V4qc9dLjHGdPF/tvGmCLFudVItEFTBTj
         NbCJMUiU/GtMfaiBIOMf3WIqUznLym/LbQYhw4gtzOayUgb1tSIqPxgm3k2WpWBPWVqe
         uyjm9bEH6vDOaqKFXy7+QGQmLMfiBz7rW+n4u+oGPvS3VRzEFK4HiJ+JXtHuTTrCV682
         3enu48ke9TUsMfwqkgTRswHNcVUo3YB3n248yrgtlxyCskgK34SvG/YDNtCu2RtyLjr3
         RsN0WE1+sYG4c7E7RacJ5tDOsrc5zMT4mOnH205JWOU0L1lPBimnuSeonlCsD1SSgWem
         /0QA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id l141si153319oib.4.2019.10.30.09.29.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 09:29:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Oct 2019 09:29:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,248,1569308400"; 
   d="scan'208";a="198725767"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 30 Oct 2019 09:29:56 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iPqr6-0000Ox-47; Thu, 31 Oct 2019 00:29:56 +0800
Date: Thu, 31 Oct 2019 00:29:04 +0800
From: kbuild test robot <lkp@intel.com>
To: Joe Perches <joe@perches.com>
Cc: kbuild-all@lists.01.org, Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] compiler*.h: Add '__' prefix and suffix to all
 __attribute__ #defines
Message-ID: <201910310006.XmSNHarx%lkp@intel.com>
References: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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

Hi Joe,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.4-rc5 next-20191030]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Joe-Perches/compiler-h-Add-__-prefix-and-suffix-to-all-__attribute__-defines/20191030-054036
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 23fdb198ae81f47a574296dab5167c5e136a02ba
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   kernel/bpf/core.c:79:27: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:79:27: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:79:27: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:79:40: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:88:37: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:88:37: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:88:37: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:106:27: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:106:27: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:106:27: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:106:40: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:138:42: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:138:42: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:138:42: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:138:55: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:629:47: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:206:49: sparse: sparse: arithmetics on pointers to functions
   kernel/bpf/core.c:219:27: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:219:27: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:219:27: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:219:40: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:320:17: sparse: sparse: cast to restricted __be64
   kernel/bpf/core.c:329:29: sparse: sparse: cast to restricted __be32
   kernel/bpf/core.c:462:37: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:462:37: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:462:37: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:462:37: sparse: sparse: cast to restricted gfp_t
>> kernel/bpf/core.c:1417:45: sparse: sparse: cast to restricted __be16
>> kernel/bpf/core.c:1417:32: sparse: sparse: cast from restricted __be16
   kernel/bpf/core.c:1420:45: sparse: sparse: cast to restricted __be32
>> kernel/bpf/core.c:1420:32: sparse: sparse: cast from restricted __be32
   kernel/bpf/core.c:1423:45: sparse: sparse: cast to restricted __be64
>> kernel/bpf/core.c:1423:32: sparse: sparse: cast from restricted __be64
>> kernel/bpf/core.c:1430:45: sparse: sparse: cast to restricted __le16
>> kernel/bpf/core.c:1430:32: sparse: sparse: cast from restricted __le16
>> kernel/bpf/core.c:1433:45: sparse: sparse: cast to restricted __le32
>> kernel/bpf/core.c:1433:32: sparse: sparse: cast from restricted __le32
>> kernel/bpf/core.c:1436:45: sparse: sparse: cast to restricted __le64
>> kernel/bpf/core.c:1436:32: sparse: sparse: cast from restricted __le64
   kernel/bpf/core.c:1447:43: sparse: sparse: arithmetics on pointers to functions
   kernel/bpf/core.c:1452:48: sparse: sparse: arithmetics on pointers to functions
   kernel/bpf/core.c:1632:77: sparse: sparse: subtraction of functions? Share your drugs
   kernel/bpf/core.c:1858:41: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:1858:41: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:1858:41: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:1858:41: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:1858:52: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:1926:56: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:1926:56: sparse: sparse: cast to restricted gfp_t
   kernel/bpf/core.c:1926:56: sparse: sparse: cast to restricted gfp_t

vim +1417 kernel/bpf/core.c

f5bffecda951b5 Alexei Starovoitov 2014-07-22  1320  
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1321  select_insn:
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1322  	goto *jumptable[insn->code];
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1323  
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1324  	/* ALU */
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1325  #define ALU(OPCODE, OP)			\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1326  	ALU64_##OPCODE##_X:		\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1327  		DST = DST OP SRC;	\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1328  		CONT;			\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1329  	ALU_##OPCODE##_X:		\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1330  		DST = (u32) DST OP (u32) SRC;	\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1331  		CONT;			\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1332  	ALU64_##OPCODE##_K:		\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1333  		DST = DST OP IMM;		\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1334  		CONT;			\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1335  	ALU_##OPCODE##_K:		\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1336  		DST = (u32) DST OP (u32) IMM;	\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1337  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1338  
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1339  	ALU(ADD,  +)
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1340  	ALU(SUB,  -)
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1341  	ALU(AND,  &)
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1342  	ALU(OR,   |)
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1343  	ALU(LSH, <<)
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1344  	ALU(RSH, >>)
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1345  	ALU(XOR,  ^)
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1346  	ALU(MUL,  *)
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1347  #undef ALU
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1348  	ALU_NEG:
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1349  		DST = (u32) -DST;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1350  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1351  	ALU64_NEG:
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1352  		DST = -DST;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1353  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1354  	ALU_MOV_X:
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1355  		DST = (u32) SRC;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1356  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1357  	ALU_MOV_K:
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1358  		DST = (u32) IMM;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1359  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1360  	ALU64_MOV_X:
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1361  		DST = SRC;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1362  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1363  	ALU64_MOV_K:
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1364  		DST = IMM;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1365  		CONT;
02ab695bb37ee9 Alexei Starovoitov 2014-09-04  1366  	LD_IMM_DW:
02ab695bb37ee9 Alexei Starovoitov 2014-09-04  1367  		DST = (u64) (u32) insn[0].imm | ((u64) (u32) insn[1].imm) << 32;
02ab695bb37ee9 Alexei Starovoitov 2014-09-04  1368  		insn++;
02ab695bb37ee9 Alexei Starovoitov 2014-09-04  1369  		CONT;
2dc6b100f928aa Jiong Wang         2018-12-05  1370  	ALU_ARSH_X:
75672dda27bd00 Jiong Wang         2019-06-25  1371  		DST = (u64) (u32) (((s32) DST) >> SRC);
2dc6b100f928aa Jiong Wang         2018-12-05  1372  		CONT;
2dc6b100f928aa Jiong Wang         2018-12-05  1373  	ALU_ARSH_K:
75672dda27bd00 Jiong Wang         2019-06-25  1374  		DST = (u64) (u32) (((s32) DST) >> IMM);
2dc6b100f928aa Jiong Wang         2018-12-05  1375  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1376  	ALU64_ARSH_X:
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1377  		(*(s64 *) &DST) >>= SRC;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1378  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1379  	ALU64_ARSH_K:
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1380  		(*(s64 *) &DST) >>= IMM;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1381  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1382  	ALU64_MOD_X:
144cd91c4c2bce Daniel Borkmann    2019-01-03  1383  		div64_u64_rem(DST, SRC, &AX);
144cd91c4c2bce Daniel Borkmann    2019-01-03  1384  		DST = AX;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1385  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1386  	ALU_MOD_X:
144cd91c4c2bce Daniel Borkmann    2019-01-03  1387  		AX = (u32) DST;
144cd91c4c2bce Daniel Borkmann    2019-01-03  1388  		DST = do_div(AX, (u32) SRC);
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1389  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1390  	ALU64_MOD_K:
144cd91c4c2bce Daniel Borkmann    2019-01-03  1391  		div64_u64_rem(DST, IMM, &AX);
144cd91c4c2bce Daniel Borkmann    2019-01-03  1392  		DST = AX;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1393  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1394  	ALU_MOD_K:
144cd91c4c2bce Daniel Borkmann    2019-01-03  1395  		AX = (u32) DST;
144cd91c4c2bce Daniel Borkmann    2019-01-03  1396  		DST = do_div(AX, (u32) IMM);
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1397  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1398  	ALU64_DIV_X:
876a7ae65b86d8 Alexei Starovoitov 2015-04-27  1399  		DST = div64_u64(DST, SRC);
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1400  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1401  	ALU_DIV_X:
144cd91c4c2bce Daniel Borkmann    2019-01-03  1402  		AX = (u32) DST;
144cd91c4c2bce Daniel Borkmann    2019-01-03  1403  		do_div(AX, (u32) SRC);
144cd91c4c2bce Daniel Borkmann    2019-01-03  1404  		DST = (u32) AX;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1405  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1406  	ALU64_DIV_K:
876a7ae65b86d8 Alexei Starovoitov 2015-04-27  1407  		DST = div64_u64(DST, IMM);
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1408  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1409  	ALU_DIV_K:
144cd91c4c2bce Daniel Borkmann    2019-01-03  1410  		AX = (u32) DST;
144cd91c4c2bce Daniel Borkmann    2019-01-03  1411  		do_div(AX, (u32) IMM);
144cd91c4c2bce Daniel Borkmann    2019-01-03  1412  		DST = (u32) AX;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1413  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1414  	ALU_END_TO_BE:
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1415  		switch (IMM) {
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1416  		case 16:
f5bffecda951b5 Alexei Starovoitov 2014-07-22 @1417  			DST = (__force u16) cpu_to_be16(DST);
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1418  			break;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1419  		case 32:
f5bffecda951b5 Alexei Starovoitov 2014-07-22 @1420  			DST = (__force u32) cpu_to_be32(DST);
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1421  			break;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1422  		case 64:
f5bffecda951b5 Alexei Starovoitov 2014-07-22 @1423  			DST = (__force u64) cpu_to_be64(DST);
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1424  			break;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1425  		}
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1426  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1427  	ALU_END_TO_LE:
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1428  		switch (IMM) {
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1429  		case 16:
f5bffecda951b5 Alexei Starovoitov 2014-07-22 @1430  			DST = (__force u16) cpu_to_le16(DST);
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1431  			break;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1432  		case 32:
f5bffecda951b5 Alexei Starovoitov 2014-07-22 @1433  			DST = (__force u32) cpu_to_le32(DST);
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1434  			break;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1435  		case 64:
f5bffecda951b5 Alexei Starovoitov 2014-07-22 @1436  			DST = (__force u64) cpu_to_le64(DST);
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1437  			break;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1438  		}
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1439  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1440  
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1441  	/* CALL */
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1442  	JMP_CALL:
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1443  		/* Function call scratches BPF_R1-BPF_R5 registers,
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1444  		 * preserves BPF_R6-BPF_R9, and stores return value
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1445  		 * into BPF_R0.
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1446  		 */
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1447  		BPF_R0 = (__bpf_call_base + insn->imm)(BPF_R1, BPF_R2, BPF_R3,
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1448  						       BPF_R4, BPF_R5);
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1449  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1450  
1ea47e01ad6ea0 Alexei Starovoitov 2017-12-14  1451  	JMP_CALL_ARGS:
1ea47e01ad6ea0 Alexei Starovoitov 2017-12-14  1452  		BPF_R0 = (__bpf_call_base_args + insn->imm)(BPF_R1, BPF_R2,
1ea47e01ad6ea0 Alexei Starovoitov 2017-12-14  1453  							    BPF_R3, BPF_R4,
1ea47e01ad6ea0 Alexei Starovoitov 2017-12-14  1454  							    BPF_R5,
1ea47e01ad6ea0 Alexei Starovoitov 2017-12-14  1455  							    insn + insn->off + 1);
1ea47e01ad6ea0 Alexei Starovoitov 2017-12-14  1456  		CONT;
1ea47e01ad6ea0 Alexei Starovoitov 2017-12-14  1457  
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1458  	JMP_TAIL_CALL: {
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1459  		struct bpf_map *map = (struct bpf_map *) (unsigned long) BPF_R2;
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1460  		struct bpf_array *array = container_of(map, struct bpf_array, map);
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1461  		struct bpf_prog *prog;
90caccdd8cc021 Alexei Starovoitov 2017-10-03  1462  		u32 index = BPF_R3;
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1463  
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1464  		if (unlikely(index >= array->map.max_entries))
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1465  			goto out;
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1466  		if (unlikely(tail_call_cnt > MAX_TAIL_CALL_CNT))
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1467  			goto out;
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1468  
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1469  		tail_call_cnt++;
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1470  
2a36f0b92eb638 Wang Nan           2015-08-06  1471  		prog = READ_ONCE(array->ptrs[index]);
1ca1cc98bf7418 Daniel Borkmann    2016-06-28  1472  		if (!prog)
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1473  			goto out;
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1474  
c4675f935399cb Daniel Borkmann    2015-07-13  1475  		/* ARG1 at this point is guaranteed to point to CTX from
c4675f935399cb Daniel Borkmann    2015-07-13  1476  		 * the verifier side due to the fact that the tail call is
c4675f935399cb Daniel Borkmann    2015-07-13  1477  		 * handeled like a helper, that is, bpf_tail_call_proto,
c4675f935399cb Daniel Borkmann    2015-07-13  1478  		 * where arg1_type is ARG_PTR_TO_CTX.
c4675f935399cb Daniel Borkmann    2015-07-13  1479  		 */
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1480  		insn = prog->insnsi;
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1481  		goto select_insn;
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1482  out:
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1483  		CONT;
04fd61ab36ec06 Alexei Starovoitov 2015-05-19  1484  	}
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1485  	JMP_JA:
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1486  		insn += insn->off;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1487  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1488  	JMP_EXIT:
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1489  		return BPF_R0;
503a8865a47752 Jiong Wang         2019-01-26  1490  	/* JMP */
503a8865a47752 Jiong Wang         2019-01-26  1491  #define COND_JMP(SIGN, OPCODE, CMP_OP)				\
503a8865a47752 Jiong Wang         2019-01-26  1492  	JMP_##OPCODE##_X:					\
503a8865a47752 Jiong Wang         2019-01-26  1493  		if ((SIGN##64) DST CMP_OP (SIGN##64) SRC) {	\
503a8865a47752 Jiong Wang         2019-01-26  1494  			insn += insn->off;			\
503a8865a47752 Jiong Wang         2019-01-26  1495  			CONT_JMP;				\
503a8865a47752 Jiong Wang         2019-01-26  1496  		}						\
503a8865a47752 Jiong Wang         2019-01-26  1497  		CONT;						\
503a8865a47752 Jiong Wang         2019-01-26  1498  	JMP32_##OPCODE##_X:					\
503a8865a47752 Jiong Wang         2019-01-26  1499  		if ((SIGN##32) DST CMP_OP (SIGN##32) SRC) {	\
503a8865a47752 Jiong Wang         2019-01-26  1500  			insn += insn->off;			\
503a8865a47752 Jiong Wang         2019-01-26  1501  			CONT_JMP;				\
503a8865a47752 Jiong Wang         2019-01-26  1502  		}						\
503a8865a47752 Jiong Wang         2019-01-26  1503  		CONT;						\
503a8865a47752 Jiong Wang         2019-01-26  1504  	JMP_##OPCODE##_K:					\
503a8865a47752 Jiong Wang         2019-01-26  1505  		if ((SIGN##64) DST CMP_OP (SIGN##64) IMM) {	\
503a8865a47752 Jiong Wang         2019-01-26  1506  			insn += insn->off;			\
503a8865a47752 Jiong Wang         2019-01-26  1507  			CONT_JMP;				\
503a8865a47752 Jiong Wang         2019-01-26  1508  		}						\
503a8865a47752 Jiong Wang         2019-01-26  1509  		CONT;						\
503a8865a47752 Jiong Wang         2019-01-26  1510  	JMP32_##OPCODE##_K:					\
503a8865a47752 Jiong Wang         2019-01-26  1511  		if ((SIGN##32) DST CMP_OP (SIGN##32) IMM) {	\
503a8865a47752 Jiong Wang         2019-01-26  1512  			insn += insn->off;			\
503a8865a47752 Jiong Wang         2019-01-26  1513  			CONT_JMP;				\
503a8865a47752 Jiong Wang         2019-01-26  1514  		}						\
503a8865a47752 Jiong Wang         2019-01-26  1515  		CONT;
503a8865a47752 Jiong Wang         2019-01-26  1516  	COND_JMP(u, JEQ, ==)
503a8865a47752 Jiong Wang         2019-01-26  1517  	COND_JMP(u, JNE, !=)
503a8865a47752 Jiong Wang         2019-01-26  1518  	COND_JMP(u, JGT, >)
503a8865a47752 Jiong Wang         2019-01-26  1519  	COND_JMP(u, JLT, <)
503a8865a47752 Jiong Wang         2019-01-26  1520  	COND_JMP(u, JGE, >=)
503a8865a47752 Jiong Wang         2019-01-26  1521  	COND_JMP(u, JLE, <=)
503a8865a47752 Jiong Wang         2019-01-26  1522  	COND_JMP(u, JSET, &)
503a8865a47752 Jiong Wang         2019-01-26  1523  	COND_JMP(s, JSGT, >)
503a8865a47752 Jiong Wang         2019-01-26  1524  	COND_JMP(s, JSLT, <)
503a8865a47752 Jiong Wang         2019-01-26  1525  	COND_JMP(s, JSGE, >=)
503a8865a47752 Jiong Wang         2019-01-26  1526  	COND_JMP(s, JSLE, <=)
503a8865a47752 Jiong Wang         2019-01-26  1527  #undef COND_JMP
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1528  	/* STX and ST and LDX*/
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1529  #define LDST(SIZEOP, SIZE)						\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1530  	STX_MEM_##SIZEOP:						\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1531  		*(SIZE *)(unsigned long) (DST + insn->off) = SRC;	\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1532  		CONT;							\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1533  	ST_MEM_##SIZEOP:						\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1534  		*(SIZE *)(unsigned long) (DST + insn->off) = IMM;	\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1535  		CONT;							\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1536  	LDX_MEM_##SIZEOP:						\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1537  		DST = *(SIZE *)(unsigned long) (SRC + insn->off);	\
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1538  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1539  
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1540  	LDST(B,   u8)
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1541  	LDST(H,  u16)
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1542  	LDST(W,  u32)
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1543  	LDST(DW, u64)
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1544  #undef LDST
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1545  	STX_XADD_W: /* lock xadd *(u32 *)(dst_reg + off16) += src_reg */
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1546  		atomic_add((u32) SRC, (atomic_t *)(unsigned long)
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1547  			   (DST + insn->off));
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1548  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1549  	STX_XADD_DW: /* lock xadd *(u64 *)(dst_reg + off16) += src_reg */
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1550  		atomic64_add((u64) SRC, (atomic64_t *)(unsigned long)
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1551  			     (DST + insn->off));
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1552  		CONT;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1553  
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1554  	default_label:
5e581dad4fec0e Daniel Borkmann    2018-01-26  1555  		/* If we ever reach this, we have a bug somewhere. Die hard here
5e581dad4fec0e Daniel Borkmann    2018-01-26  1556  		 * instead of just returning 0; we could be somewhere in a subprog,
5e581dad4fec0e Daniel Borkmann    2018-01-26  1557  		 * so execution could continue otherwise which we do /not/ want.
5e581dad4fec0e Daniel Borkmann    2018-01-26  1558  		 *
5e581dad4fec0e Daniel Borkmann    2018-01-26  1559  		 * Note, verifier whitelists all opcodes in bpf_opcode_in_insntable().
5e581dad4fec0e Daniel Borkmann    2018-01-26  1560  		 */
5e581dad4fec0e Daniel Borkmann    2018-01-26  1561  		pr_warn("BPF interpreter: unknown opcode %02x\n", insn->code);
5e581dad4fec0e Daniel Borkmann    2018-01-26  1562  		BUG_ON(1);
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1563  		return 0;
f5bffecda951b5 Alexei Starovoitov 2014-07-22  1564  }
f696b8f471ec98 Alexei Starovoitov 2017-05-30  1565  

:::::: The code at line 1417 was first introduced by commit
:::::: f5bffecda951b59d0d3cdd616d68952abc52bc40 net: filter: split filter.c into two files

:::::: TO: Alexei Starovoitov <ast@plumgrid.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910310006.XmSNHarx%25lkp%40intel.com.
