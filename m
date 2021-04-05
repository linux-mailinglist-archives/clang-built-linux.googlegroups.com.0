Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSVIV2BQMGQEQG4HWDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3BC3548FB
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 00:50:52 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id z11sf9829465pfe.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Apr 2021 15:50:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617663050; cv=pass;
        d=google.com; s=arc-20160816;
        b=JQ+i3CGfHD24w6GjDI27AXevgoAuET7xh8NlCG/bwtps9Q8ngy3wmkoBQXBjb8ctQF
         xWBp3MqozwrjOMvHQwZaxqCn3gs7l0w7Q+JgT6pDamUWpjbsGozYmzkt3QphrgP60J/L
         oFkjEDrunAL7GGU7LFV37BRDU6FbdCBmcZ5QHp+HyQeg7QLkcm7c1P/HileYkYgh26uc
         pir43ITIW5Sm7E+cyp9x2/f5op/As91jBinPKMmSgAU2TxwzuqyLD3J82k3+2p/LNqZI
         QXYryANH/7pYC7hKH7uIvXRC+ovjiVZxQuE9MT+EtWvFKzjjtyfeAIf3nZM56klh1Ol5
         476Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=O9Aaq1Pao5qQmQEvKpVgekktNsO/bjqkXjQhespgZnk=;
        b=w0wvkvxnwtEcdD03wGszK4ncH63m060DkhpqBrfnr/qBUi37dwLzSx8TJIZlwH+kDc
         GGV9x6ElhLVzZ5bBj1eNq+9NYnIlDX9KuqAGYfYKyxeh2aP1pNHtt4szt4LSY3ClLeqz
         OXF3iFf3GmN4PL/0zBAzFGsxuHv6c+WlYLebkOf5qA0jRV/tYZfio+CCJM6zxa4Rnryj
         eMorgqiERKWkUm1tjIt7AfN1jlJ2t5IpyFTWI7kZx60+rSZf/u6jpd8M8wSNadnF7/ce
         6MU7vozE76a50HzvFmLiM+GvfrKVpl37JgDcCBd+VXPg/366Q7irhKxkXX2sTfKWnCBB
         1rdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O9Aaq1Pao5qQmQEvKpVgekktNsO/bjqkXjQhespgZnk=;
        b=XOFnj0TgEpfh5OnoKXdRBzkjarIKib9+3k7fr5OwMjb6IyjpLMVatiCAdKuqODUeJv
         PS0bWSeJeW5et4cxdTrOeOolwH2j2LxPFtYf/N4GDBoy2JuuWrekQXi7oDyh2dgg7e8x
         otLS5SBPzm24Jmk8zFm5B+XyUcpGlwDtXNPBYRMwRIwIQjc4LA6nQ0HHYH+g+DEPmE3E
         /okycJG20qUXYAm+ml6N+kHJCIb31zRX4X21TIppCD5f1ndlYXekalOJHW5x11TeS7IZ
         7ckx59du/+OX887VQ9nLNPvpqdoDNIRLO5GqRSgflsPDEV55n2R5vxZtFI4ohrYy2vCt
         tKJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O9Aaq1Pao5qQmQEvKpVgekktNsO/bjqkXjQhespgZnk=;
        b=tjqRV7wMpeOnKy7TW5s+7g49BnddyC6vngwcWlS3/4Y0EQnheg4fSwUz5/Y7EBrIe9
         +QUMwHm8EOP9Y7gvM4QdGesRlIJENaRwF8RWDbV5eeJyCZV3gTRuKuqajKnRQuZgMNkb
         ogrrfw56LWbrmjcTy9APpI75Nju8bF5CDaoTNaVKIpD3Xl7Pg3q16nEIFd29K6n6+xVx
         zwWjXYBkcnq2ACmeAOuOPRZSjGuN2IN0p+BDAYihxhMeqQ0Iu9lNfE4a31mNYmxPrnaZ
         qWzXW94BG/Rq9S31NYKYSLmt/yYTc3W4C4mhTg53zQab+MwC7VKcnf31MA+zOZEuVgEa
         jlzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NaKnugEKzFDNltoqCEq8U+x7ijHyb0iJW9gNq7DYUKw+Q7kei
	BMFh4LeJdutTKrwGXZ3q0DI=
X-Google-Smtp-Source: ABdhPJwpxbaXl2ULzpW+8PTYRnUhMLBvDFxlVX2Ic10sXrBKmidix0meifGG7oGpwewosCKCqlaQtw==
X-Received: by 2002:a17:90b:1887:: with SMTP id mn7mr1350419pjb.39.1617663050568;
        Mon, 05 Apr 2021 15:50:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5f88:: with SMTP id t130ls6530880pgb.7.gmail; Mon, 05
 Apr 2021 15:50:50 -0700 (PDT)
X-Received: by 2002:a05:6a00:13a3:b029:203:5c4d:7a22 with SMTP id t35-20020a056a0013a3b02902035c4d7a22mr24981963pfg.22.1617663049904;
        Mon, 05 Apr 2021 15:50:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617663049; cv=none;
        d=google.com; s=arc-20160816;
        b=jd2JLmIevmkB6ZnY6zZB/jTxmi+7qQm3I9AaPI6R3ahVAgV3t6mfE837x+xfcWcLYg
         MYHnOAgmgGZoSO2dOZjbzLP++PJTB2qKM9RCgmKvJ/PAA/xLoP5qYmgignLbPMZisoz2
         CfzBBAXC6f7Lc9X+ciFRU07TeOGWZhffW6dnOfO32d5kNIlaA1Eq0DDKrAfVcG3x8ZuX
         hFU8PzsMX78R3eAyR9HeQ5J9QfeBpzvvglUnfiFGkKcF6Gwm0i/aoLQffuYMm/mCY8pk
         dio9iDl6A1DnX9WOHQdg+AMEWem/Dh8Jw+vPIDGl8VWWZLGpkdQOEoX7dLS3Ssb5cVEF
         Gi8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=bS0xxTQE0+cC2b0V2xj6SHy+u/ViHCiQ5sP74DE4FQI=;
        b=cJsC7ffIzYxlJm2s0eZkWoEdw6CcmLFw3PC3uhS6NF8F+G9XqhsNinYOY8pG8Ow9oX
         xzzAL25tFQidWJn5rE5PFIZuOpFCb401vFX0qy2KZRTs1/eU+NmjhpnnVjYXElVyb+Ga
         z6BFjYQqZABYEcTsrsQzc16sLbOEK4gjwoDSy4DH1dIBXtIPdWe9q8LjYzAHwplf9ISJ
         t+BCI/fR6raRpwOuNXx1bkQ90mL1sJhVMFzmRMqsVzOOIKOefGc8qNSPoC1I6pLadlUz
         hpdZHXR+T+er3RxYDEYwOC7c/U35aDbXEVUqlkqsSRNjpTUB21jI/dgzjOCKzJ4Dszlq
         Y91g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id z22si1965479pfc.6.2021.04.05.15.50.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 15:50:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: qvvKJPp975TZoafheViZuomNDRjdzrRket97v5vXIwPII1J0E3zq01YkFzPcY20f6g7QTQPA1v
 MySJ0ah9YU4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9945"; a="256923630"
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; 
   d="gz'50?scan'50,208,50";a="256923630"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Apr 2021 15:50:49 -0700
IronPort-SDR: PsgEUK2UFs+Zy+PlT9W5qnWbs9iFjNqxTG6MB3VO0XRUhYLtkjjDFkhX11nqzOW59KzHxlHzTu
 YJjCNm+vRsiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; 
   d="gz'50?scan'50,208,50";a="440678599"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 05 Apr 2021 15:50:46 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lTY3S-000ApX-28; Mon, 05 Apr 2021 22:50:46 +0000
Date: Tue, 6 Apr 2021 06:49:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Jason A. Donenfeld" <zx2c4@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Herbert Xu <herbert@gondor.apana.org.au>
Subject: arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly
 requires more registers than available
Message-ID: <202104060650.eRytwCh6-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5mCyUwZo2JvN/JJP"
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


--5mCyUwZo2JvN/JJP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Jason,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   0a50438c84363bd37fe18fe432888ae9a074dcab
commit: 07b586fe06625b0b610dc3d3a969c51913d143d4 crypto: x86/curve25519 - replace with formally verified implementation
date:   1 year, 2 months ago
config: x86_64-randconfig-a012-20210406 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 2760a808b9916a2839513b7fd7314a464f52481e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=07b586fe06625b0b610dc3d3a969c51913d143d4
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 07b586fe06625b0b610dc3d3a969c51913d143d4
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
                   "  movq 0(%1), %%rdx;"                                       /* f[0] */
                   ^
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
>> arch/x86/crypto/curve25519-x86_64.c:518:3: error: inline assembly requires more registers than available
   19 errors generated.


vim +518 arch/x86/crypto/curve25519-x86_64.c

   509	
   510	/* Computes the square of a field element: out <- f * f
   511	 * Uses the 8-element buffer tmp for intermediate results */
   512	static inline void fsqr(u64 *out, const u64 *f, u64 *tmp)
   513	{
   514		asm volatile(
   515			/* Compute the raw multiplication: tmp <- f * f */
   516	
   517			/* Step 1: Compute all partial products */
 > 518			"  movq 0(%1), %%rdx;"                                       /* f[0] */
   519			"  mulxq 8(%1), %%r8, %%r14;"      "  xor %%r15, %%r15;"     /* f[1]*f[0] */
   520			"  mulxq 16(%1), %%r9, %%r10;"     "  adcx %%r14, %%r9;"     /* f[2]*f[0] */
   521			"  mulxq 24(%1), %%rax, %%rcx;"    "  adcx %%rax, %%r10;"    /* f[3]*f[0] */
   522			"  movq 24(%1), %%rdx;"                                      /* f[3] */
   523			"  mulxq 8(%1), %%r11, %%r12;"     "  adcx %%rcx, %%r11;"    /* f[1]*f[3] */
   524			"  mulxq 16(%1), %%rax, %%r13;"    "  adcx %%rax, %%r12;"    /* f[2]*f[3] */
   525			"  movq 8(%1), %%rdx;"             "  adcx %%r15, %%r13;"    /* f1 */
   526			"  mulxq 16(%1), %%rax, %%rcx;"    "  mov $0, %%r14;"        /* f[2]*f[1] */
   527	
   528			/* Step 2: Compute two parallel carry chains */
   529			"  xor %%r15, %%r15;"
   530			"  adox %%rax, %%r10;"
   531			"  adcx %%r8, %%r8;"
   532			"  adox %%rcx, %%r11;"
   533			"  adcx %%r9, %%r9;"
   534			"  adox %%r15, %%r12;"
   535			"  adcx %%r10, %%r10;"
   536			"  adox %%r15, %%r13;"
   537			"  adcx %%r11, %%r11;"
   538			"  adox %%r15, %%r14;"
   539			"  adcx %%r12, %%r12;"
   540			"  adcx %%r13, %%r13;"
   541			"  adcx %%r14, %%r14;"
   542	
   543			/* Step 3: Compute intermediate squares */
   544			"  movq 0(%1), %%rdx;"     "  mulx %%rdx, %%rax, %%rcx;"    /* f[0]^2 */
   545			                           "  movq %%rax, 0(%0);"
   546			"  add %%rcx, %%r8;"       "  movq %%r8, 8(%0);"
   547			"  movq 8(%1), %%rdx;"     "  mulx %%rdx, %%rax, %%rcx;"    /* f[1]^2 */
   548			"  adcx %%rax, %%r9;"      "  movq %%r9, 16(%0);"
   549			"  adcx %%rcx, %%r10;"     "  movq %%r10, 24(%0);"
   550			"  movq 16(%1), %%rdx;"    "  mulx %%rdx, %%rax, %%rcx;"    /* f[2]^2 */
   551			"  adcx %%rax, %%r11;"     "  movq %%r11, 32(%0);"
   552			"  adcx %%rcx, %%r12;"     "  movq %%r12, 40(%0);"
   553			"  movq 24(%1), %%rdx;"    "  mulx %%rdx, %%rax, %%rcx;"    /* f[3]^2 */
   554			"  adcx %%rax, %%r13;"     "  movq %%r13, 48(%0);"
   555			"  adcx %%rcx, %%r14;"     "  movq %%r14, 56(%0);"
   556	
   557			/* Line up pointers */
   558			"  mov %0, %1;"
   559			"  mov %2, %0;"
   560	
   561			/* Wrap the result back into the field */
   562	
   563			/* Step 1: Compute dst + carry == tmp_hi * 38 + tmp_lo */
   564			"  mov $38, %%rdx;"
   565			"  mulxq 32(%1), %%r8, %%r13;"
   566			"  xor %%rcx, %%rcx;"
   567			"  adoxq 0(%1), %%r8;"
   568			"  mulxq 40(%1), %%r9, %%r12;"
   569			"  adcx %%r13, %%r9;"
   570			"  adoxq 8(%1), %%r9;"
   571			"  mulxq 48(%1), %%r10, %%r13;"
   572			"  adcx %%r12, %%r10;"
   573			"  adoxq 16(%1), %%r10;"
   574			"  mulxq 56(%1), %%r11, %%rax;"
   575			"  adcx %%r13, %%r11;"
   576			"  adoxq 24(%1), %%r11;"
   577			"  adcx %%rcx, %%rax;"
   578			"  adox %%rcx, %%rax;"
   579			"  imul %%rdx, %%rax;"
   580	
   581			/* Step 2: Fold the carry back into dst */
   582			"  add %%rax, %%r8;"
   583			"  adcx %%rcx, %%r9;"
   584			"  movq %%r9, 8(%0);"
   585			"  adcx %%rcx, %%r10;"
   586			"  movq %%r10, 16(%0);"
   587			"  adcx %%rcx, %%r11;"
   588			"  movq %%r11, 24(%0);"
   589	
   590			/* Step 3: Fold the carry bit back in; guaranteed not to carry at this point */
   591			"  mov $0, %%rax;"
   592			"  cmovc %%rdx, %%rax;"
   593			"  add %%rax, %%r8;"
   594			"  movq %%r8, 0(%0);"
   595		: "+&r" (tmp), "+&r" (f), "+&r" (out)
   596		:
   597		: "%rax", "%rcx", "%rdx", "%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15", "memory", "cc"
   598		);
   599	}
   600	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104060650.eRytwCh6-lkp%40intel.com.

--5mCyUwZo2JvN/JJP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--5mCyUwZo2JvN/JJP--
