Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBU75XKAQMGQETZ74ZWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EA731EFA9
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Feb 2021 20:24:05 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id j32sf1338259uae.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Feb 2021 11:24:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613676244; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pi7U7guIr9o2NcaVFe7pevxa2y3i3oQn8fEZHTGX20NCF4cDf7c3ya0eNpIZpxd16a
         DQOLHrX7rGzTJH55U+MnWpthJZOGrdJFYarbaClRjS/WLrXY87NV7mhXMQ6WMREtpJ9a
         FM4Vds1gKXSD2plQQ0u3cL45J/AtBN42NHwnDiL0qWSU1VAQYi6nrSUkl8RRc3hw2RmV
         FRKcMZ8s33gYq35a3YfGQitQarcttnZLguYpliuEyDgc5MF5Nk8Rp1ATxj+1o2LG+oxg
         culCwpE5/pappjUOn+X687P8Q22y5CfxsqqLQrhxJ53xZu6FvHM/vO9PVNJFmdmpiGiS
         uudQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=oqihJPDFuwC6cgMFQ7PKe5UPkF4ElOTk9l8PLmLc06I=;
        b=tI6E2Nru++lHI3ak+3G0r+UjOl/anylIVsYiHdGRa/HsC53heXc2cI/jT8NHPyQfwj
         AQ+h89mIxMGSM7rDH+7SY+iTmbyDtJyh+ikOPq9kHXwOYDf9audvP5ujmQ/5/tuEOLxd
         69oz7WzEQFfWlypYzkzB2wrkzBaKj5FYOM2AB0lRvmExZprUeflEyrCCY/MYNEZ1HqqD
         bGQVyNgDMkwu8e7a77gWtGVNYft/sqI9Or5r77DPZmQWqyH6yYzyaJvCske+ffOF4YQd
         gAM0FgkQVjqgYkdQCXUp/LEAuLyTwybj8qAJfzobPqm6RQ/nDl9bujHs3F1uDuILlIpU
         qYzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oqihJPDFuwC6cgMFQ7PKe5UPkF4ElOTk9l8PLmLc06I=;
        b=Mp1ld4RPNO+E0EBxLGM8UIQoHaIX4NOAFUS8teq60Z6hR5Knz8W0MvQswq2LVzzK1E
         dwJkOwovwARr8BbMPWPRPcGGblNHRMihXpf+Sfn7/F+hwfAJ00GFX1uzKn4vx9VvKZVV
         Bjukm8buuZ9eT6G8XVqxhoqdautr8DDDiLtiwubi7ugV4kTm/GMyX8YwJK0dLWkQlLBo
         s5x0jZNLNF98XP/jkVzW/EtzmA0BlPIzPqgAd8bPImyNiiYaOgqXH8F0Y2GHEdGfZfKt
         9EfrH6/GFvd17W6T+Mx4ByTG/KcatHMPpXo56qtUzFv6UWTjdGPrHouwdSfUxLAorVHG
         d5kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oqihJPDFuwC6cgMFQ7PKe5UPkF4ElOTk9l8PLmLc06I=;
        b=oGcfeTDP1fy1ZJxjb0H8cjqwrvfEWfSDexJxMyeCD4zRr1o5QoBpLG7T/0SNvgL5oH
         W/Fwi02sNEeRUvoBuH7G9aIwOWzH9sWDBr2yxpnKkLN8f5zg1LyQw+OmLLhRWCIGxkgp
         UUyhSyfjuyw6k+4V5nKTOky5lDTRb8/gBrSoq1AfXjJ30C+HOp1HWs1/EJ4HY8ID+kQv
         5+T24J+z+aX7JzQTyps6kxgoxZxQNzJ9UZ7Zb0bm5kExnK3xHKumSw18qAk9cCdr0duP
         Kl4ceLl7QB025f642Hk2LSa80uyNbhl2SgvS4RfCMOhKGlKENIH/S2pkcrH+fEfu1msN
         5w5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lNm0yQk0aIcnzGRSe5sg2txhaYqBuc2fVrVO6VA1gyj33j74f
	mtnX8sO8oC3VInhpgQ1rwaQ=
X-Google-Smtp-Source: ABdhPJxf55MWtSt8R2ZIvmQjhoX6NucbkbXW1Fdc+KDL9c18fvvqc2uAZFXzPGVkKJY/aqY3Xukr1g==
X-Received: by 2002:a05:6102:a08:: with SMTP id t8mr4333115vsa.25.1613676244029;
        Thu, 18 Feb 2021 11:24:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3004:: with SMTP id w4ls503630vsw.9.gmail; Thu, 18 Feb
 2021 11:24:03 -0800 (PST)
X-Received: by 2002:a67:f7d0:: with SMTP id a16mr3968079vsp.15.1613676243305;
        Thu, 18 Feb 2021 11:24:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613676243; cv=none;
        d=google.com; s=arc-20160816;
        b=O5sPieZLS5NHjWgu0/3JVU7MQefOjTEqteRPE6t5TGIE36Sjqo5q4aVulkJT8rzUgO
         vtvVeiI4U71dEWIk/wp/78QJDgVZ8qaTIqwKKEmazlAgTU4zYNqZus1tqMOZzEwGlaCz
         hPcVzgk2WHzT6J01Ge5UOlxyrw7+hOs7BsOTqg0op582pJoxXXfCEJkXVu9tJP4+o1bZ
         Bpuri+PtvFfbqw//vzvIAHHUKYzNMvoNuKzCEP90WMMUrAW1bfcyk59NqSr11CdZvrrn
         xDQZccwKKb+KQTZpXT7/XoiPwpQcegtVkpUGfVJTQRW66w2F5w/8v/0kYnPZu+VqrY6A
         2Ibw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=ynV4u+vpR6LWAtfpxENfCP0zlFB85oAh8FeYHvnhf44=;
        b=KxRPMtBxmr4Je+AFLGUOYCXk7eEXj2EJ409Io/dkAq7JZsfZuTe5bnxm1bHSMfFS4t
         DQddoVxDnP4sBM31jvz7iy0pjskpE1rfhw90zdrlSQB/KjFNVTNwbFrSMQs22YSioSfF
         1AuFWM/ozfFPb0rLRggcgnFq6jEBn7hL0y64roT24pM43KIA26F+fyTNmqQatFmQpOyf
         4R1dJ96OYNf33BLTq0yhTVcdGqh4rOZlqKJFXPlogJvE1zml9sjB7ii9EB2UW3tttVyg
         oIsdVem031IyZfjypj4TPw0WqH4ye86mLNTG1qr9IYsrSiKMz2Hi9emgnpIajmsJvryZ
         Ba2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id q23si644219ual.1.2021.02.18.11.24.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2021 11:24:03 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: HpGOxEX05L6KnWw9v0Z1b3ejrfzy2IpLdgtPSoqGneWJNKcRHWKE61ZV1oVs/EuNwPK/bfESLJ
 yBZrcrJ6456A==
X-IronPort-AV: E=McAfee;i="6000,8403,9899"; a="268472912"
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; 
   d="gz'50?scan'50,208,50";a="268472912"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Feb 2021 11:24:01 -0800
IronPort-SDR: 1SNuBUvQiAOeZvWR0F4Hn2NEiNtua+aaVcmb243otFSI/nKjvlsy9c9QOdHKcquKXb0V8Ox76J
 kx8T3JxXtsQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; 
   d="gz'50?scan'50,208,50";a="513398802"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 18 Feb 2021 11:23:58 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lCou6-0009qU-5C; Thu, 18 Feb 2021 19:23:58 +0000
Date: Fri, 19 Feb 2021 03:23:51 +0800
From: kernel test robot <lkp@intel.com>
To: Atish Patra <atish.patra@wdc.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Anup Patel <anup@brainfault.org>,
	Paolo Bonzini <pbonzini@redhat.com>
Subject: [avpatel:riscv_kvm_v17 19/22] arch/riscv/kvm/vcpu_sbi.c:89:7: error:
 use of undeclared identifier 'SBI_EXT_0_1_CONSOLE_GETCHAR'
Message-ID: <202102190345.gDOhxsFU-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="LQksG6bCIzRHxTLp"
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


--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/avpatel/linux.git riscv_kvm_v17
head:   ba7ce7de0cc0281ef05082cf82d498222443c9bf
commit: 0de9ca2d7cf641c1bdf1efaa2a6e57bcb854af70 [19/22] RISC-V: KVM: Add SBI v0.1 support
config: riscv-randconfig-r005-20210217 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/avpatel/linux/commit/0de9ca2d7cf641c1bdf1efaa2a6e57bcb854af70
        git remote add avpatel https://github.com/avpatel/linux.git
        git fetch --no-tags avpatel riscv_kvm_v17
        git checkout 0de9ca2d7cf641c1bdf1efaa2a6e57bcb854af70
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/riscv/kvm/vcpu_sbi.c:89:7: error: use of undeclared identifier 'SBI_EXT_0_1_CONSOLE_GETCHAR'
           case SBI_EXT_0_1_CONSOLE_GETCHAR:
                ^
>> arch/riscv/kvm/vcpu_sbi.c:90:7: error: use of undeclared identifier 'SBI_EXT_0_1_CONSOLE_PUTCHAR'
           case SBI_EXT_0_1_CONSOLE_PUTCHAR:
                ^
>> arch/riscv/kvm/vcpu_sbi.c:99:7: error: use of undeclared identifier 'SBI_EXT_0_1_SET_TIMER'; did you mean 'SBI_EXT_TIME_SET_TIMER'?
           case SBI_EXT_0_1_SET_TIMER:
                ^~~~~~~~~~~~~~~~~~~~~
                SBI_EXT_TIME_SET_TIMER
   arch/riscv/include/asm/sbi.h:44:2: note: 'SBI_EXT_TIME_SET_TIMER' declared here
           SBI_EXT_TIME_SET_TIMER = 0,
           ^
>> arch/riscv/kvm/vcpu_sbi.c:107:7: error: use of undeclared identifier 'SBI_EXT_0_1_CLEAR_IPI'; did you mean 'SBI_EXT_IPI_SEND_IPI'?
           case SBI_EXT_0_1_CLEAR_IPI:
                ^~~~~~~~~~~~~~~~~~~~~
                SBI_EXT_IPI_SEND_IPI
   arch/riscv/include/asm/sbi.h:48:2: note: 'SBI_EXT_IPI_SEND_IPI' declared here
           SBI_EXT_IPI_SEND_IPI = 0,
           ^
>> arch/riscv/kvm/vcpu_sbi.c:110:7: error: use of undeclared identifier 'SBI_EXT_0_1_SEND_IPI'; did you mean 'SBI_EXT_IPI_SEND_IPI'?
           case SBI_EXT_0_1_SEND_IPI:
                ^~~~~~~~~~~~~~~~~~~~
                SBI_EXT_IPI_SEND_IPI
   arch/riscv/include/asm/sbi.h:48:2: note: 'SBI_EXT_IPI_SEND_IPI' declared here
           SBI_EXT_IPI_SEND_IPI = 0,
           ^
>> arch/riscv/kvm/vcpu_sbi.c:127:7: error: use of undeclared identifier 'SBI_EXT_0_1_SHUTDOWN'
           case SBI_EXT_0_1_SHUTDOWN:
                ^
>> arch/riscv/kvm/vcpu_sbi.c:132:7: error: use of undeclared identifier 'SBI_EXT_0_1_REMOTE_FENCE_I'; did you mean 'SBI_EXT_RFENCE_REMOTE_FENCE_I'?
           case SBI_EXT_0_1_REMOTE_FENCE_I:
                ^~~~~~~~~~~~~~~~~~~~~~~~~~
                SBI_EXT_RFENCE_REMOTE_FENCE_I
   arch/riscv/include/asm/sbi.h:52:2: note: 'SBI_EXT_RFENCE_REMOTE_FENCE_I' declared here
           SBI_EXT_RFENCE_REMOTE_FENCE_I = 0,
           ^
>> arch/riscv/kvm/vcpu_sbi.c:133:7: error: use of undeclared identifier 'SBI_EXT_0_1_REMOTE_SFENCE_VMA'; did you mean 'SBI_EXT_RFENCE_REMOTE_SFENCE_VMA'?
           case SBI_EXT_0_1_REMOTE_SFENCE_VMA:
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                SBI_EXT_RFENCE_REMOTE_SFENCE_VMA
   arch/riscv/include/asm/sbi.h:53:2: note: 'SBI_EXT_RFENCE_REMOTE_SFENCE_VMA' declared here
           SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
           ^
>> arch/riscv/kvm/vcpu_sbi.c:134:7: error: use of undeclared identifier 'SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID'; did you mean 'SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID'?
           case SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID:
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID
   arch/riscv/include/asm/sbi.h:54:2: note: 'SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID' declared here
           SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
           ^
   arch/riscv/kvm/vcpu_sbi.c:154:17: error: use of undeclared identifier 'SBI_EXT_0_1_REMOTE_FENCE_I'; did you mean 'SBI_EXT_RFENCE_REMOTE_FENCE_I'?
                   if (cp->a7 == SBI_EXT_0_1_REMOTE_FENCE_I)
                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~
                                 SBI_EXT_RFENCE_REMOTE_FENCE_I
   arch/riscv/include/asm/sbi.h:52:2: note: 'SBI_EXT_RFENCE_REMOTE_FENCE_I' declared here
           SBI_EXT_RFENCE_REMOTE_FENCE_I = 0,
           ^
   arch/riscv/kvm/vcpu_sbi.c:156:22: error: use of undeclared identifier 'SBI_EXT_0_1_REMOTE_SFENCE_VMA'; did you mean 'SBI_EXT_RFENCE_REMOTE_SFENCE_VMA'?
                   else if (cp->a7 == SBI_EXT_0_1_REMOTE_SFENCE_VMA)
                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                      SBI_EXT_RFENCE_REMOTE_SFENCE_VMA
   arch/riscv/include/asm/sbi.h:53:2: note: 'SBI_EXT_RFENCE_REMOTE_SFENCE_VMA' declared here
           SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
           ^
>> arch/riscv/kvm/vcpu_sbi.c:107:7: error: duplicate case value: 'SBI_EXT_TIME_SET_TIMER' and 'SBI_EXT_IPI_SEND_IPI' both equal '0'
           case SBI_EXT_0_1_CLEAR_IPI:
                ^
   arch/riscv/kvm/vcpu_sbi.c:99:7: note: previous case defined here
           case SBI_EXT_0_1_SET_TIMER:
                ^
>> arch/riscv/kvm/vcpu_sbi.c:110:7: error: duplicate case value 'SBI_EXT_IPI_SEND_IPI'
           case SBI_EXT_0_1_SEND_IPI:
                ^
   arch/riscv/kvm/vcpu_sbi.c:107:7: note: previous case defined here
           case SBI_EXT_0_1_CLEAR_IPI:
                ^
>> arch/riscv/kvm/vcpu_sbi.c:132:7: error: duplicate case value: 'SBI_EXT_IPI_SEND_IPI' and 'SBI_EXT_RFENCE_REMOTE_FENCE_I' both equal '0'
           case SBI_EXT_0_1_REMOTE_FENCE_I:
                ^
   arch/riscv/kvm/vcpu_sbi.c:110:7: note: previous case defined here
           case SBI_EXT_0_1_SEND_IPI:
                ^
   14 errors generated.


vim +/SBI_EXT_0_1_CONSOLE_GETCHAR +89 arch/riscv/kvm/vcpu_sbi.c

    72	
    73	int kvm_riscv_vcpu_sbi_ecall(struct kvm_vcpu *vcpu, struct kvm_run *run)
    74	{
    75		ulong hmask;
    76		int i, ret = 1;
    77		u64 next_cycle;
    78		struct kvm_vcpu *rvcpu;
    79		bool next_sepc = true;
    80		struct cpumask cm, hm;
    81		struct kvm *kvm = vcpu->kvm;
    82		struct kvm_cpu_trap utrap = { 0 };
    83		struct kvm_cpu_context *cp = &vcpu->arch.guest_context;
    84	
    85		if (!cp)
    86			return -EINVAL;
    87	
    88		switch (cp->a7) {
  > 89		case SBI_EXT_0_1_CONSOLE_GETCHAR:
  > 90		case SBI_EXT_0_1_CONSOLE_PUTCHAR:
    91			/*
    92			 * The CONSOLE_GETCHAR/CONSOLE_PUTCHAR SBI calls cannot be
    93			 * handled in kernel so we forward these to user-space
    94			 */
    95			kvm_riscv_vcpu_sbi_forward(vcpu, run);
    96			next_sepc = false;
    97			ret = 0;
    98			break;
  > 99		case SBI_EXT_0_1_SET_TIMER:
   100	#if __riscv_xlen == 32
   101			next_cycle = ((u64)cp->a1 << 32) | (u64)cp->a0;
   102	#else
   103			next_cycle = (u64)cp->a0;
   104	#endif
   105			kvm_riscv_vcpu_timer_next_event(vcpu, next_cycle);
   106			break;
 > 107		case SBI_EXT_0_1_CLEAR_IPI:
   108			kvm_riscv_vcpu_unset_interrupt(vcpu, IRQ_VS_SOFT);
   109			break;
 > 110		case SBI_EXT_0_1_SEND_IPI:
   111			if (cp->a0)
   112				hmask = kvm_riscv_vcpu_unpriv_read(vcpu, false, cp->a0,
   113								   &utrap);
   114			else
   115				hmask = (1UL << atomic_read(&kvm->online_vcpus)) - 1;
   116			if (utrap.scause) {
   117				utrap.sepc = cp->sepc;
   118				kvm_riscv_vcpu_trap_redirect(vcpu, &utrap);
   119				next_sepc = false;
   120				break;
   121			}
   122			for_each_set_bit(i, &hmask, BITS_PER_LONG) {
   123				rvcpu = kvm_get_vcpu_by_id(vcpu->kvm, i);
   124				kvm_riscv_vcpu_set_interrupt(rvcpu, IRQ_VS_SOFT);
   125			}
   126			break;
 > 127		case SBI_EXT_0_1_SHUTDOWN:
   128			kvm_sbi_system_shutdown(vcpu, run, KVM_SYSTEM_EVENT_SHUTDOWN);
   129			next_sepc = false;
   130			ret = 0;
   131			break;
 > 132		case SBI_EXT_0_1_REMOTE_FENCE_I:
 > 133		case SBI_EXT_0_1_REMOTE_SFENCE_VMA:
 > 134		case SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID:

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102190345.gDOhxsFU-lkp%40intel.com.

--LQksG6bCIzRHxTLp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
LcP/A1H8+CcZkQEA

--LQksG6bCIzRHxTLp--
