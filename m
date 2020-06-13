Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBM57ST3QKGQEJFFVCPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6C71F84C5
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jun 2020 20:49:24 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id y16sf8958182ilm.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jun 2020 11:49:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592074163; cv=pass;
        d=google.com; s=arc-20160816;
        b=onyQLvzC/o85wotqTjpwEWIGMy1WadEpDX4VXUtEfkcKrQ8mqyA9YiBXMLetxRogDz
         RoItf7t8xy4egDs1YK868BhPrCy8YIy0uUHynt4VZ5fJ+rOQi5rRTnvOFsUPuKy/gstw
         hHrufEI0zbs6ElV6cup+ao/B1W3708df3DhqDO14Fi1CotP5keVexd1+6eLHTE2960Vy
         sy4E6WtkeL79xNi9E2ztLQ3VASVjsC25zCwPKR1/UrIOzQwHeoG229rNlVZg8e8j7W/+
         5cYTY+ul5tGirZCL1OMRHA/Mvl5iY8Hot/yO2yYMDtMz0l19esJSCY5gWp5pAq2mEdgT
         nNNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=UnpHYZn1pvRBd/5C9OUScnnRVRRQvu2wj4br9m/9IG4=;
        b=hW8POq6NxlWxO+3JFA834anfIj4M5EHKghAZPg56aBkN9yeqpQGocjdBaxLggQ3Rka
         0P6N5kILJqM/nKILB/TVnINa0efPwf5V//f04go5kNqPyhfPFA0gLPX54hkMhd+cLiFU
         GW4iYSgzVXL+whw5d6jamrXY1RSGIGoyKlEtmPme7/JVki7xhdyDcaDFwSG0+F6O6bDy
         vd+XMyOTMJdIuJQPbIc9mo2EWaJfOtH+g3pwv3SwB7OpgnFBopSu67jLyk1u/LOIjQp+
         qskHD1J1cB2drZx2gA7m6Y21fJEZ2MUpT64q0EG2145wLpn3P5zHxLC1pVDvaVZvskIG
         13wA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UnpHYZn1pvRBd/5C9OUScnnRVRRQvu2wj4br9m/9IG4=;
        b=dNcixjHzMyb2FL8hXqTGPc5hm+EGIZGuRML23CeA2txvaYiGt70oBGRjRc5AmcW9ph
         gGAJmSZp3LaSOBFx9xCrXr16utRLmtfwSktSAl1mIlqKytVU+HNuu44BVuduG6W2J0ic
         ix9cq8mc0u21T220x+izqtgs+U3BvMlStysJnZs8ren0dLYxWnfYTHlzpO181ywHgn8t
         AwjWU9RyYhIAUcaZsv9tFDXp/HO9f3ZBMGYMBYFpoIOF9LzBLTMxdxUdV7C8GbcGvA47
         UevLcWn4FkPBGvMbtCyC5EauiLQWApkySug90WEGVpJ9fWw2dbEyfjcbffZ76GC2USyg
         pORA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UnpHYZn1pvRBd/5C9OUScnnRVRRQvu2wj4br9m/9IG4=;
        b=QzcNh7vsCVmgni9MgKtoWQSZ7FLh6ZyXRJAIe9TogkzNp0EIVSoHGkoeNVWtBQ5Q2Z
         8iQBjUMxxSzI/7iaCFxdLDUzKcj2DHFd32CkpnLEm4wmSPuj1J6csnKoAE72Z9D2Zjpi
         Fc8piTkqUNMREm50mAs90qr/OPhffbTMRpyYnMXOA5ThhwJr2wrFW7RvmWbRMDS8EUji
         IJpNibDlgl0Pzp0KRKl6RmXB0uYvD0NZJIu0dxZoTMFNbdnru25PpS0P1t2/I5LsCJiw
         nrJuyKxH5rr+e+0Jo38Yues3kzZoMXEDIS9ZzIYlAE1QrpT4byMWxQxq9t2C47ErYAMl
         GSlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CxYpXEa7j3w62N01ZsIVupLd+iy5k7VHtY5ZEGPDN3SLmTwXo
	as1DfR9dcifaw+07ElX3tAU=
X-Google-Smtp-Source: ABdhPJyOYJs0iMOx+28Htk6gde5IDpHqSoTzY6qCFh1RbhasE8/MAuv1RyoCHfvZqK0y7CSd+CpyXg==
X-Received: by 2002:a5d:890d:: with SMTP id b13mr13631356ion.19.1592074163539;
        Sat, 13 Jun 2020 11:49:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:96d6:: with SMTP id r22ls1808270iol.7.gmail; Sat, 13 Jun
 2020 11:49:23 -0700 (PDT)
X-Received: by 2002:a6b:680c:: with SMTP id d12mr20284141ioc.102.1592074162991;
        Sat, 13 Jun 2020 11:49:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592074162; cv=none;
        d=google.com; s=arc-20160816;
        b=sQg29vliHjrLuusjo6UshhUcCPnnsFBQ5wMorz17QZw/T3ZFVvL4j1nN93ITIX1JfW
         AXJS/J2JwclU0sTEIE3aCi8aUmOYKRnKtc5lx41CF9NtJF8b7KjjBuXkhvuXwudpYBc3
         1+EXL2lWy2aigWJj9daUewmCR6qnDDh69CdxO5eYCo31AzZTBAc11mbOtXq3oR17z2Ye
         cyvcyxnJRIRT6abpFq9RjyCC8mGZnbG8YMrNHsO1cNpnNeCPwX/w0tE+6bIxd4Wax2RK
         0XfI7N7Oviuhbd+jAmS9O50KLSZn1NyCCCApQSxim3k1kH1kmj8z0ryUiSNsSNyYgDRw
         aWWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=foREMGu+GFi7cAw6P8INOC9ZX6q5DqWiUqaR687E/7w=;
        b=Nog6JLbcAMQqfh9KktdoO2nP8T2A1nf291XCWUPlJMPg7TpiJwpTIftkYNF0YFR3Jd
         jnA60VVmxnliJWvXZCEDeuFedzNtqjaI7pL4KcSZX5U5NC8fkZ8WAINpYXl+lCsfxxro
         RvxIXnIOdmHKXtnEnEBlY1uOW0rJed4+k3HXpqFHAAGhcjkBAmzi0ZhK6OjghCfPvC9B
         PqXdYP5MjLcDqWOHlsl+YW3CYPw3o+nXaw4mL5x9i98+1cTN19qWh0+/jatphwGgxjiL
         HlPl/a8j1pAR6TUu4K6son2r6i78FHxoYLItJJkLkUt5Uyww6PIY/HLRMu0uv6TNHN9q
         /d9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id z11si661988ilq.5.2020.06.13.11.49.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Jun 2020 11:49:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: Px5pq6oaFa68asUzHjZ5Y9ckFk/44g/1pUmzxHkeaj7Q9YOyxUj8HguafAeH5aqXRwHdSxaWJT
 eAHj4zqXYFzw==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jun 2020 11:49:21 -0700
IronPort-SDR: IC++ms5R1ezLG3Hw9ea9rWvVmSb705ifodjwH51MrX1l+JyYqbayKqw5nkVl3KFMRpKB5ezyZu
 Z1h6jaLlZQ0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,508,1583222400"; 
   d="gz'50?scan'50,208,50";a="448707681"
Received: from lkp-server02.sh.intel.com (HELO de5642daf266) ([10.239.97.151])
  by orsmga005.jf.intel.com with ESMTP; 13 Jun 2020 11:49:19 -0700
Received: from kbuild by de5642daf266 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jkBDS-0000QC-OX; Sat, 13 Jun 2020 18:49:18 +0000
Date: Sun, 14 Jun 2020 02:48:30 +0800
From: kernel test robot <lkp@intel.com>
To: Jiri Slaby <jslaby@suse.cz>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [jirislaby:devel 65/69] arch/arm64/kernel/head.S:420: Error: symbol
 `SYM_L_LOCAL' is already defined
Message-ID: <202006140224.3CDVhXMK%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jirislaby/linux.git devel
head:   94ff56d3b360c9a7dc6d0bb3f3f26ec3f5f58592
commit: fc32f1ee21f93af9cd4f597d7c749dd42939e23e [65/69] linkage: asm/x86, perform symbol pair checking (per group)
config: arm64-randconfig-r026-20200612 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project d7e6f116f4517952fbdf5ad4b5ff67e378600c60)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        git checkout fc32f1ee21f93af9cd4f597d7c749dd42939e23e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

arch/arm64/kernel/head.S: Assembler messages:
>> arch/arm64/kernel/head.S:279: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/head.S:420: Error: junk at end of line, first unrecognized character is `('
>> arch/arm64/kernel/head.S:420: Error: symbol `SYM_L_LOCAL' is already defined
arch/arm64/kernel/head.S:495: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/head.S:662: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/head.S:662: Error: symbol `SYM_L_LOCAL' is already defined
arch/arm64/kernel/head.S:705: Error: junk at end of line, first unrecognized character is `('
>> arch/arm64/kernel/head.S:705: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/head.S:723: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/head.S:723: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/head.S:729: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/head.S:729: Error: symbol `SYM_L_LOCAL' is already defined
arch/arm64/kernel/head.S:741: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/head.S:741: Error: symbol `SYM_L_LOCAL' is already defined
arch/arm64/kernel/head.S:764: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/head.S:764: Error: symbol `SYM_L_LOCAL' is already defined
arch/arm64/kernel/head.S:800: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/head.S:800: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/head.S:826: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/head.S:826: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/head.S:846: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/head.S:846: Error: symbol `SYM_L_LOCAL' is already defined
arch/arm64/kernel/head.S:857: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/head.S:857: Error: symbol `SYM_L_LOCAL' is already defined
arch/arm64/kernel/head.S:962: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/head.S:962: Error: symbol `SYM_L_LOCAL' is already defined
/tmp/head-76229b.s: Error: .size expression for el2_setup does not evaluate to a constant
/tmp/head-76229b.s: Error: .size expression for set_cpu_boot_mode_flag does not evaluate to a constant
/tmp/head-76229b.s: Error: .size expression for __create_page_tables does not evaluate to a constant
/tmp/head-76229b.s: Error: .size expression for __primary_switch does not evaluate to a constant
/tmp/head-76229b.s: Error: .size expression for __primary_switched does not evaluate to a constant
/tmp/head-76229b.s: Error: .size expression for secondary_startup does not evaluate to a constant
/tmp/head-76229b.s: Error: .size expression for secondary_holding_pen does not evaluate to a constant
/tmp/head-76229b.s: Error: .size expression for secondary_entry does not evaluate to a constant
/tmp/head-76229b.s: Error: .size expression for __cpu_secondary_check52bitva does not evaluate to a constant
/tmp/head-76229b.s: Error: .size expression for __enable_mmu does not evaluate to a constant
/tmp/head-76229b.s: Error: .size expression for __secondary_switched does not evaluate to a constant
/tmp/head-76229b.s: Error: .size expression for __secondary_too_slow does not evaluate to a constant
/tmp/head-76229b.s: Error: .size expression for __no_granule_support does not evaluate to a constant
/tmp/head-76229b.s: Error: .size expression for __relocate_kernel does not evaluate to a constant
clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
--
arch/arm64/kernel/reloc_test_syms.S: Assembler messages:
>> arch/arm64/kernel/reloc_test_syms.S:8: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/reloc_test_syms.S:14: Error: junk at end of line, first unrecognized character is `('
>> arch/arm64/kernel/reloc_test_syms.S:14: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/reloc_test_syms.S:20: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/reloc_test_syms.S:20: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/reloc_test_syms.S:27: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/reloc_test_syms.S:27: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/reloc_test_syms.S:34: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/reloc_test_syms.S:34: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/reloc_test_syms.S:44: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/reloc_test_syms.S:44: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/reloc_test_syms.S:52: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/reloc_test_syms.S:52: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/reloc_test_syms.S:58: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/reloc_test_syms.S:58: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/reloc_test_syms.S:63: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/reloc_test_syms.S:63: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/reloc_test_syms.S:71: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/reloc_test_syms.S:71: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/reloc_test_syms.S:79: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/reloc_test_syms.S:79: Error: symbol `SYM_L_GLOBAL' is already defined
/tmp/reloc_test_syms-bf46d9.s: Error: .size expression for absolute_data64 does not evaluate to a constant
/tmp/reloc_test_syms-bf46d9.s: Error: .size expression for absolute_data32 does not evaluate to a constant
/tmp/reloc_test_syms-bf46d9.s: Error: .size expression for absolute_data16 does not evaluate to a constant
/tmp/reloc_test_syms-bf46d9.s: Error: .size expression for signed_movw does not evaluate to a constant
/tmp/reloc_test_syms-bf46d9.s: Error: .size expression for unsigned_movw does not evaluate to a constant
/tmp/reloc_test_syms-bf46d9.s: Error: .size expression for relative_adrp does not evaluate to a constant
/tmp/reloc_test_syms-bf46d9.s: Error: .size expression for relative_adrp_far does not evaluate to a constant
/tmp/reloc_test_syms-bf46d9.s: Error: .size expression for relative_adr does not evaluate to a constant
/tmp/reloc_test_syms-bf46d9.s: Error: .size expression for relative_data64 does not evaluate to a constant
/tmp/reloc_test_syms-bf46d9.s: Error: .size expression for relative_data32 does not evaluate to a constant
/tmp/reloc_test_syms-bf46d9.s: Error: .size expression for relative_data16 does not evaluate to a constant
clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
--
arch/arm64/kernel/entry.S: Assembler messages:
>> arch/arm64/kernel/entry.S:901: Error: junk at end of line, first unrecognized character is `('
/tmp/entry-290aa7.s: Error: .size expression for cpu_switch_to does not evaluate to a constant
clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
--
arch/arm64/kernel/entry-fpsimd.S: Assembler messages:
>> arch/arm64/kernel/entry-fpsimd.S:19: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/entry-fpsimd.S:29: Error: junk at end of line, first unrecognized character is `('
>> arch/arm64/kernel/entry-fpsimd.S:29: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/entry-fpsimd.S:35: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/entry-fpsimd.S:35: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/entry-fpsimd.S:40: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/entry-fpsimd.S:40: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/kernel/entry-fpsimd.S:45: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/entry-fpsimd.S:45: Error: symbol `SYM_L_GLOBAL' is already defined
/tmp/entry-fpsimd-66374e.s: Error: .size expression for fpsimd_save_state does not evaluate to a constant
/tmp/entry-fpsimd-66374e.s: Error: .size expression for fpsimd_load_state does not evaluate to a constant
/tmp/entry-fpsimd-66374e.s: Error: .size expression for sve_save_state does not evaluate to a constant
/tmp/entry-fpsimd-66374e.s: Error: .size expression for sve_load_state does not evaluate to a constant
/tmp/entry-fpsimd-66374e.s: Error: .size expression for sve_get_vl does not evaluate to a constant
clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
--
arch/arm64/kernel/hyp-stub.S: Assembler messages:
>> arch/arm64/kernel/hyp-stub.S:109: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/hyp-stub.S:116: Error: junk at end of line, first unrecognized character is `('
>> arch/arm64/kernel/hyp-stub.S:116: Error: symbol `SYM_L_GLOBAL' is already defined
/tmp/hyp-stub-9b7a23.s: Error: .size expression for __hyp_set_vectors does not evaluate to a constant
/tmp/hyp-stub-9b7a23.s: Error: .size expression for __hyp_reset_vectors does not evaluate to a constant
clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
--
arch/arm64/kernel/smccc-call.S: Assembler messages:
>> arch/arm64/kernel/smccc-call.S:33: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/smccc-call.S:44: Error: junk at end of line, first unrecognized character is `('
>> arch/arm64/kernel/smccc-call.S:44: Error: symbol `SYM_L_GLOBAL' is already defined
/tmp/smccc-call-e892d2.s: Error: .size expression for __arm_smccc_smc does not evaluate to a constant
/tmp/smccc-call-e892d2.s: Error: .size expression for __arm_smccc_hvc does not evaluate to a constant
clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
--
arch/arm64/kernel/sleep.S: Assembler messages:
>> arch/arm64/kernel/sleep.S:65: Error: junk at end of line, first unrecognized character is `('
arch/arm64/kernel/sleep.S:113: Error: junk at end of line, first unrecognized character is `('
>> arch/arm64/kernel/sleep.S:113: Error: symbol `SYM_L_GLOBAL' is already defined
/tmp/sleep-0b7984.s: Error: .size expression for __cpu_suspend_enter does not evaluate to a constant
/tmp/sleep-0b7984.s: Error: .size expression for _cpu_resume does not evaluate to a constant
clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
--
arch/arm64/mm/cache.S: Assembler messages:
>> arch/arm64/mm/cache.S:27: Error: junk at end of line, first unrecognized character is `('
arch/arm64/mm/cache.S:40: Error: junk at end of line, first unrecognized character is `('
>> arch/arm64/mm/cache.S:40: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/mm/cache.S:80: Error: junk at end of line, first unrecognized character is `('
arch/arm64/mm/cache.S:80: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/mm/cache.S:108: Error: junk at end of line, first unrecognized character is `('
arch/arm64/mm/cache.S:108: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/mm/cache.S:122: Error: junk at end of line, first unrecognized character is `('
arch/arm64/mm/cache.S:122: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/mm/cache.S:141: Error: junk at end of line, first unrecognized character is `('
arch/arm64/mm/cache.S:142: Error: junk at end of line, first unrecognized character is `('
arch/arm64/mm/cache.S:142: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/mm/cache.S:180: Error: junk at end of line, first unrecognized character is `('
>> arch/arm64/mm/cache.S:180: Error: symbol `SYM_L_LOCAL' is already defined
arch/arm64/mm/cache.S:181: Error: junk at end of line, first unrecognized character is `('
arch/arm64/mm/cache.S:181: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/mm/cache.S:203: Error: junk at end of line, first unrecognized character is `('
arch/arm64/mm/cache.S:203: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/mm/cache.S:219: Error: junk at end of line, first unrecognized character is `('
arch/arm64/mm/cache.S:219: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/mm/cache.S:230: Error: junk at end of line, first unrecognized character is `('
arch/arm64/mm/cache.S:230: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/mm/cache.S:242: Error: junk at end of line, first unrecognized character is `('
arch/arm64/mm/cache.S:242: Error: symbol `SYM_L_GLOBAL' is already defined
/tmp/cache-6d3f62.s: Error: .size expression for __flush_icache_range does not evaluate to a constant
/tmp/cache-6d3f62.s: Error: .size expression for __flush_cache_user_range does not evaluate to a constant
/tmp/cache-6d3f62.s: Error: .size expression for invalidate_icache_range does not evaluate to a constant
/tmp/cache-6d3f62.s: Error: .size expression for __flush_dcache_area does not evaluate to a constant
/tmp/cache-6d3f62.s: Error: .size expression for __clean_dcache_area_pou does not evaluate to a constant
/tmp/cache-6d3f62.s: Error: .size expression for __inval_dcache_area does not evaluate to a constant
/tmp/cache-6d3f62.s: Error: .size expression for __dma_inv_area does not evaluate to a constant
/tmp/cache-6d3f62.s: Error: .size expression for __clean_dcache_area_poc does not evaluate to a constant
/tmp/cache-6d3f62.s: Error: .size expression for __dma_clean_area does not evaluate to a constant
/tmp/cache-6d3f62.s: Error: .size expression for __clean_dcache_area_pop does not evaluate to a constant
/tmp/cache-6d3f62.s: Error: .size expression for __dma_flush_area does not evaluate to a constant
/tmp/cache-6d3f62.s: Error: .size expression for __dma_map_area does not evaluate to a constant
/tmp/cache-6d3f62.s: Error: .size expression for __dma_unmap_area does not evaluate to a constant
clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
--
arch/arm64/mm/proc.S: Assembler messages:
>> arch/arm64/mm/proc.S:64: Error: junk at end of line, first unrecognized character is `('
arch/arm64/mm/proc.S:101: Error: junk at end of line, first unrecognized character is `('
>> arch/arm64/mm/proc.S:101: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/mm/proc.S:182: Error: junk at end of line, first unrecognized character is `('
arch/arm64/mm/proc.S:182: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/mm/proc.S:222: Error: junk at end of line, first unrecognized character is `('
arch/arm64/mm/proc.S:222: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/mm/proc.S:407: Error: junk at end of line, first unrecognized character is `('
arch/arm64/mm/proc.S:407: Error: symbol `SYM_L_GLOBAL' is already defined
/tmp/proc-2e1b71.s: Error: .size expression for cpu_do_suspend does not evaluate to a constant
/tmp/proc-2e1b71.s: Error: .size expression for cpu_do_resume does not evaluate to a constant
/tmp/proc-2e1b71.s: Error: .size expression for idmap_cpu_replace_ttbr1 does not evaluate to a constant
/tmp/proc-2e1b71.s: Error: .size expression for idmap_kpti_install_ng_mappings does not evaluate to a constant
/tmp/proc-2e1b71.s: Error: .size expression for __cpu_setup does not evaluate to a constant
clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
--
arch/arm64/kvm/hyp.S: Assembler messages:
>> arch/arm64/kvm/hyp.S:31: Error: junk at end of line, first unrecognized character is `('
/tmp/hyp-a75cac.s: Error: .size expression for __kvm_call_hyp does not evaluate to a constant
clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
--
arch/arm64/xen/hypercall.S: Assembler messages:
>> arch/arm64/xen/hypercall.S:74: Error: junk at end of line, first unrecognized character is `('
arch/arm64/xen/hypercall.S:75: Error: junk at end of line, first unrecognized character is `('
>> arch/arm64/xen/hypercall.S:75: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/xen/hypercall.S:76: Error: junk at end of line, first unrecognized character is `('
arch/arm64/xen/hypercall.S:76: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/xen/hypercall.S:77: Error: junk at end of line, first unrecognized character is `('
arch/arm64/xen/hypercall.S:77: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/xen/hypercall.S:78: Error: junk at end of line, first unrecognized character is `('
arch/arm64/xen/hypercall.S:78: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/xen/hypercall.S:79: Error: junk at end of line, first unrecognized character is `('
arch/arm64/xen/hypercall.S:79: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/xen/hypercall.S:80: Error: junk at end of line, first unrecognized character is `('
arch/arm64/xen/hypercall.S:80: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/xen/hypercall.S:81: Error: junk at end of line, first unrecognized character is `('
arch/arm64/xen/hypercall.S:81: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/xen/hypercall.S:82: Error: junk at end of line, first unrecognized character is `('
arch/arm64/xen/hypercall.S:82: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/xen/hypercall.S:83: Error: junk at end of line, first unrecognized character is `('
arch/arm64/xen/hypercall.S:83: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/xen/hypercall.S:84: Error: junk at end of line, first unrecognized character is `('
arch/arm64/xen/hypercall.S:84: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/xen/hypercall.S:85: Error: junk at end of line, first unrecognized character is `('
arch/arm64/xen/hypercall.S:85: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/xen/hypercall.S:86: Error: junk at end of line, first unrecognized character is `('
arch/arm64/xen/hypercall.S:86: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/xen/hypercall.S:87: Error: junk at end of line, first unrecognized character is `('
arch/arm64/xen/hypercall.S:87: Error: symbol `SYM_L_GLOBAL' is already defined
arch/arm64/xen/hypercall.S:89: Error: junk at end of line, first unrecognized character is `('
arch/arm64/xen/hypercall.S:89: Error: symbol `SYM_L_GLOBAL' is already defined
/tmp/hypercall-472250.s: Error: .size expression for HYPERVISOR_xen_version does not evaluate to a constant
/tmp/hypercall-472250.s: Error: .size expression for HYPERVISOR_console_io does not evaluate to a constant
/tmp/hypercall-472250.s: Error: .size expression for HYPERVISOR_grant_table_op does not evaluate to a constant
/tmp/hypercall-472250.s: Error: .size expression for HYPERVISOR_sched_op does not evaluate to a constant
/tmp/hypercall-472250.s: Error: .size expression for HYPERVISOR_event_channel_op does not evaluate to a constant
/tmp/hypercall-472250.s: Error: .size expression for HYPERVISOR_hvm_op does not evaluate to a constant
/tmp/hypercall-472250.s: Error: .size expression for HYPERVISOR_memory_op does not evaluate to a constant
/tmp/hypercall-472250.s: Error: .size expression for HYPERVISOR_physdev_op does not evaluate to a constant
/tmp/hypercall-472250.s: Error: .size expression for HYPERVISOR_vcpu_op does not evaluate to a constant
/tmp/hypercall-472250.s: Error: .size expression for HYPERVISOR_tmem_op does not evaluate to a constant
/tmp/hypercall-472250.s: Error: .size expression for HYPERVISOR_platform_op_raw does not evaluate to a constant
/tmp/hypercall-472250.s: Error: .size expression for HYPERVISOR_multicall does not evaluate to a constant
/tmp/hypercall-472250.s: Error: .size expression for HYPERVISOR_vm_assist does not evaluate to a constant
/tmp/hypercall-472250.s: Error: .size expression for HYPERVISOR_dm_op does not evaluate to a constant
/tmp/hypercall-472250.s: Error: .size expression for privcmd_call does not evaluate to a constant
clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
..

vim +420 arch/arm64/kernel/head.S

0370b31e48454d Steve Capper       2018-01-11  266  
0370b31e48454d Steve Capper       2018-01-11  267  	compute_indices \vstart, \vend, #SWAPPER_BLOCK_SHIFT, #PTRS_PER_PTE, \istart, \iend, \count
0370b31e48454d Steve Capper       2018-01-11  268  	bic \count, \phys, #SWAPPER_BLOCK_SIZE - 1
0370b31e48454d Steve Capper       2018-01-11  269  	populate_entries \tbl, \count, \istart, \iend, \flags, #SWAPPER_BLOCK_SIZE, \tmp
034edabe6cf1d0 Laura Abbott       2014-11-21  270  	.endm
034edabe6cf1d0 Laura Abbott       2014-11-21  271  
034edabe6cf1d0 Laura Abbott       2014-11-21  272  /*
034edabe6cf1d0 Laura Abbott       2014-11-21  273   * Setup the initial page tables. We only setup the barest amount which is
034edabe6cf1d0 Laura Abbott       2014-11-21  274   * required to get the kernel running. The following sections are required:
034edabe6cf1d0 Laura Abbott       2014-11-21  275   *   - identity mapping to enable the MMU (low address, TTBR0)
034edabe6cf1d0 Laura Abbott       2014-11-21  276   *   - first few MB of the kernel linear mapping to jump to once the MMU has
61bd93ce801bb6 Ard Biesheuvel     2015-06-01  277   *     been enabled
034edabe6cf1d0 Laura Abbott       2014-11-21  278   */
c63d9f82db9439 Mark Brown         2020-02-18 @279  SYM_FUNC_START_LOCAL(__create_page_tables)
f80fb3a3d50843 Ard Biesheuvel     2016-01-26  280  	mov	x28, lr
034edabe6cf1d0 Laura Abbott       2014-11-21  281  
034edabe6cf1d0 Laura Abbott       2014-11-21  282  	/*
8eb7e28d4c642c Jun Yao            2018-09-24  283  	 * Invalidate the init page tables to avoid potential dirty cache lines
8eb7e28d4c642c Jun Yao            2018-09-24  284  	 * being evicted. Other page tables are allocated in rodata as part of
8eb7e28d4c642c Jun Yao            2018-09-24  285  	 * the kernel image, and thus are clean to the PoC per the boot
8eb7e28d4c642c Jun Yao            2018-09-24  286  	 * protocol.
034edabe6cf1d0 Laura Abbott       2014-11-21  287  	 */
8eb7e28d4c642c Jun Yao            2018-09-24  288  	adrp	x0, init_pg_dir
2b5548b68199c1 Jun Yao            2018-09-24  289  	adrp	x1, init_pg_end
0370b31e48454d Steve Capper       2018-01-11  290  	sub	x1, x1, x0
d46befef4c03fb Robin Murphy       2017-07-25  291  	bl	__inval_dcache_area
034edabe6cf1d0 Laura Abbott       2014-11-21  292  
034edabe6cf1d0 Laura Abbott       2014-11-21  293  	/*
8eb7e28d4c642c Jun Yao            2018-09-24  294  	 * Clear the init page tables.
034edabe6cf1d0 Laura Abbott       2014-11-21  295  	 */
8eb7e28d4c642c Jun Yao            2018-09-24  296  	adrp	x0, init_pg_dir
2b5548b68199c1 Jun Yao            2018-09-24  297  	adrp	x1, init_pg_end
0370b31e48454d Steve Capper       2018-01-11  298  	sub	x1, x1, x0
034edabe6cf1d0 Laura Abbott       2014-11-21  299  1:	stp	xzr, xzr, [x0], #16
034edabe6cf1d0 Laura Abbott       2014-11-21  300  	stp	xzr, xzr, [x0], #16
034edabe6cf1d0 Laura Abbott       2014-11-21  301  	stp	xzr, xzr, [x0], #16
034edabe6cf1d0 Laura Abbott       2014-11-21  302  	stp	xzr, xzr, [x0], #16
d46befef4c03fb Robin Murphy       2017-07-25  303  	subs	x1, x1, #64
d46befef4c03fb Robin Murphy       2017-07-25  304  	b.ne	1b
034edabe6cf1d0 Laura Abbott       2014-11-21  305  
b03cc885328e3c Ard Biesheuvel     2016-04-18  306  	mov	x7, SWAPPER_MM_MMUFLAGS
034edabe6cf1d0 Laura Abbott       2014-11-21  307  
034edabe6cf1d0 Laura Abbott       2014-11-21  308  	/*
034edabe6cf1d0 Laura Abbott       2014-11-21  309  	 * Create the identity mapping.
034edabe6cf1d0 Laura Abbott       2014-11-21  310  	 */
aea73abb902651 Ard Biesheuvel     2016-08-16  311  	adrp	x0, idmap_pg_dir
5dfe9d7d23c26d Ard Biesheuvel     2015-06-01  312  	adrp	x3, __idmap_text_start		// __pa(__idmap_text_start)
dd006da21646f1 Ard Biesheuvel     2015-03-19  313  
b6d00d47e81a49 Steve Capper       2019-08-07  314  #ifdef CONFIG_ARM64_VA_BITS_52
67e7fdfcc6824a Steve Capper       2018-12-06  315  	mrs_s	x6, SYS_ID_AA64MMFR2_EL1
67e7fdfcc6824a Steve Capper       2018-12-06  316  	and	x6, x6, #(0xf << ID_AA64MMFR2_LVA_SHIFT)
67e7fdfcc6824a Steve Capper       2018-12-06  317  	mov	x5, #52
67e7fdfcc6824a Steve Capper       2018-12-06  318  	cbnz	x6, 1f
67e7fdfcc6824a Steve Capper       2018-12-06  319  #endif
90ec95cda91a02 Steve Capper       2019-08-07  320  	mov	x5, #VA_BITS_MIN
67e7fdfcc6824a Steve Capper       2018-12-06  321  1:
5383cc6efed137 Steve Capper       2019-08-07  322  	adr_l	x6, vabits_actual
67e7fdfcc6824a Steve Capper       2018-12-06  323  	str	x5, [x6]
67e7fdfcc6824a Steve Capper       2018-12-06  324  	dmb	sy
67e7fdfcc6824a Steve Capper       2018-12-06  325  	dc	ivac, x6		// Invalidate potentially stale cache line
67e7fdfcc6824a Steve Capper       2018-12-06  326  
dd006da21646f1 Ard Biesheuvel     2015-03-19  327  	/*
fa2a8445b1d381 Kristina Martsenko 2017-12-13  328  	 * VA_BITS may be too small to allow for an ID mapping to be created
fa2a8445b1d381 Kristina Martsenko 2017-12-13  329  	 * that covers system RAM if that is located sufficiently high in the
fa2a8445b1d381 Kristina Martsenko 2017-12-13  330  	 * physical address space. So for the ID map, use an extended virtual
fa2a8445b1d381 Kristina Martsenko 2017-12-13  331  	 * range in that case, and configure an additional translation level
fa2a8445b1d381 Kristina Martsenko 2017-12-13  332  	 * if needed.
fa2a8445b1d381 Kristina Martsenko 2017-12-13  333  	 *
dd006da21646f1 Ard Biesheuvel     2015-03-19  334  	 * Calculate the maximum allowed value for TCR_EL1.T0SZ so that the
5dfe9d7d23c26d Ard Biesheuvel     2015-06-01  335  	 * entire ID map region can be mapped. As T0SZ == (64 - #bits used),
dd006da21646f1 Ard Biesheuvel     2015-03-19  336  	 * this number conveniently equals the number of leading zeroes in
5dfe9d7d23c26d Ard Biesheuvel     2015-06-01  337  	 * the physical address of __idmap_text_end.
dd006da21646f1 Ard Biesheuvel     2015-03-19  338  	 */
5dfe9d7d23c26d Ard Biesheuvel     2015-06-01  339  	adrp	x5, __idmap_text_end
dd006da21646f1 Ard Biesheuvel     2015-03-19  340  	clz	x5, x5
dd006da21646f1 Ard Biesheuvel     2015-03-19  341  	cmp	x5, TCR_T0SZ(VA_BITS)	// default T0SZ small enough?
fa2a8445b1d381 Kristina Martsenko 2017-12-13  342  	b.ge	1f			// .. then skip VA range extension
dd006da21646f1 Ard Biesheuvel     2015-03-19  343  
0c20856c260236 Mark Rutland       2015-03-24  344  	adr_l	x6, idmap_t0sz
0c20856c260236 Mark Rutland       2015-03-24  345  	str	x5, [x6]
0c20856c260236 Mark Rutland       2015-03-24  346  	dmb	sy
0c20856c260236 Mark Rutland       2015-03-24  347  	dc	ivac, x6		// Invalidate potentially stale cache line
dd006da21646f1 Ard Biesheuvel     2015-03-19  348  
fa2a8445b1d381 Kristina Martsenko 2017-12-13  349  #if (VA_BITS < 48)
fa2a8445b1d381 Kristina Martsenko 2017-12-13  350  #define EXTRA_SHIFT	(PGDIR_SHIFT + PAGE_SHIFT - 3)
fa2a8445b1d381 Kristina Martsenko 2017-12-13  351  #define EXTRA_PTRS	(1 << (PHYS_MASK_SHIFT - EXTRA_SHIFT))
fa2a8445b1d381 Kristina Martsenko 2017-12-13  352  
fa2a8445b1d381 Kristina Martsenko 2017-12-13  353  	/*
fa2a8445b1d381 Kristina Martsenko 2017-12-13  354  	 * If VA_BITS < 48, we have to configure an additional table level.
fa2a8445b1d381 Kristina Martsenko 2017-12-13  355  	 * First, we have to verify our assumption that the current value of
fa2a8445b1d381 Kristina Martsenko 2017-12-13  356  	 * VA_BITS was chosen such that all translation levels are fully
fa2a8445b1d381 Kristina Martsenko 2017-12-13  357  	 * utilised, and that lowering T0SZ will always result in an additional
fa2a8445b1d381 Kristina Martsenko 2017-12-13  358  	 * translation level to be configured.
fa2a8445b1d381 Kristina Martsenko 2017-12-13  359  	 */
fa2a8445b1d381 Kristina Martsenko 2017-12-13  360  #if VA_BITS != EXTRA_SHIFT
fa2a8445b1d381 Kristina Martsenko 2017-12-13  361  #error "Mismatch between VA_BITS and page size/number of translation levels"
dd006da21646f1 Ard Biesheuvel     2015-03-19  362  #endif
dd006da21646f1 Ard Biesheuvel     2015-03-19  363  
fa2a8445b1d381 Kristina Martsenko 2017-12-13  364  	mov	x4, EXTRA_PTRS
fa2a8445b1d381 Kristina Martsenko 2017-12-13  365  	create_table_entry x0, x3, EXTRA_SHIFT, x4, x5, x6
fa2a8445b1d381 Kristina Martsenko 2017-12-13  366  #else
fa2a8445b1d381 Kristina Martsenko 2017-12-13  367  	/*
fa2a8445b1d381 Kristina Martsenko 2017-12-13  368  	 * If VA_BITS == 48, we don't have to configure an additional
fa2a8445b1d381 Kristina Martsenko 2017-12-13  369  	 * translation level, but the top-level table has more entries.
fa2a8445b1d381 Kristina Martsenko 2017-12-13  370  	 */
fa2a8445b1d381 Kristina Martsenko 2017-12-13  371  	mov	x4, #1 << (PHYS_MASK_SHIFT - PGDIR_SHIFT)
fa2a8445b1d381 Kristina Martsenko 2017-12-13  372  	str_l	x4, idmap_ptrs_per_pgd, x5
fa2a8445b1d381 Kristina Martsenko 2017-12-13  373  #endif
fa2a8445b1d381 Kristina Martsenko 2017-12-13  374  1:
fa2a8445b1d381 Kristina Martsenko 2017-12-13  375  	ldr_l	x4, idmap_ptrs_per_pgd
5dfe9d7d23c26d Ard Biesheuvel     2015-06-01  376  	mov	x5, x3				// __pa(__idmap_text_start)
5dfe9d7d23c26d Ard Biesheuvel     2015-06-01  377  	adr_l	x6, __idmap_text_end		// __pa(__idmap_text_end)
0370b31e48454d Steve Capper       2018-01-11  378  
0370b31e48454d Steve Capper       2018-01-11  379  	map_memory x0, x1, x3, x6, x7, x3, x4, x10, x11, x12, x13, x14
034edabe6cf1d0 Laura Abbott       2014-11-21  380  
034edabe6cf1d0 Laura Abbott       2014-11-21  381  	/*
034edabe6cf1d0 Laura Abbott       2014-11-21  382  	 * Map the kernel image (starting with PHYS_OFFSET).
034edabe6cf1d0 Laura Abbott       2014-11-21  383  	 */
2b5548b68199c1 Jun Yao            2018-09-24  384  	adrp	x0, init_pg_dir
18b9c0d6419382 Ard Biesheuvel     2016-04-18  385  	mov_q	x5, KIMAGE_VADDR + TEXT_OFFSET	// compile time __va(_text)
f80fb3a3d50843 Ard Biesheuvel     2016-01-26  386  	add	x5, x5, x23			// add KASLR displacement
fa2a8445b1d381 Kristina Martsenko 2017-12-13  387  	mov	x4, PTRS_PER_PGD
18b9c0d6419382 Ard Biesheuvel     2016-04-18  388  	adrp	x6, _end			// runtime __pa(_end)
18b9c0d6419382 Ard Biesheuvel     2016-04-18  389  	adrp	x3, _text			// runtime __pa(_text)
18b9c0d6419382 Ard Biesheuvel     2016-04-18  390  	sub	x6, x6, x3			// _end - _text
18b9c0d6419382 Ard Biesheuvel     2016-04-18  391  	add	x6, x6, x5			// runtime __va(_end)
0370b31e48454d Steve Capper       2018-01-11  392  
0370b31e48454d Steve Capper       2018-01-11  393  	map_memory x0, x1, x5, x6, x7, x3, x4, x10, x11, x12, x13, x14
034edabe6cf1d0 Laura Abbott       2014-11-21  394  
034edabe6cf1d0 Laura Abbott       2014-11-21  395  	/*
034edabe6cf1d0 Laura Abbott       2014-11-21  396  	 * Since the page tables have been populated with non-cacheable
9d2d75ede59bc1 Gavin Shan         2020-04-28  397  	 * accesses (MMU disabled), invalidate those tables again to
9d2d75ede59bc1 Gavin Shan         2020-04-28  398  	 * remove any speculatively loaded cache lines.
034edabe6cf1d0 Laura Abbott       2014-11-21  399  	 */
9d2d75ede59bc1 Gavin Shan         2020-04-28  400  	dmb	sy
9d2d75ede59bc1 Gavin Shan         2020-04-28  401  
aea73abb902651 Ard Biesheuvel     2016-08-16  402  	adrp	x0, idmap_pg_dir
9d2d75ede59bc1 Gavin Shan         2020-04-28  403  	adrp	x1, idmap_pg_end
9d2d75ede59bc1 Gavin Shan         2020-04-28  404  	sub	x1, x1, x0
9d2d75ede59bc1 Gavin Shan         2020-04-28  405  	bl	__inval_dcache_area
9d2d75ede59bc1 Gavin Shan         2020-04-28  406  
9d2d75ede59bc1 Gavin Shan         2020-04-28  407  	adrp	x0, init_pg_dir
2b5548b68199c1 Jun Yao            2018-09-24  408  	adrp	x1, init_pg_end
0370b31e48454d Steve Capper       2018-01-11  409  	sub	x1, x1, x0
d46befef4c03fb Robin Murphy       2017-07-25  410  	bl	__inval_dcache_area
034edabe6cf1d0 Laura Abbott       2014-11-21  411  
f80fb3a3d50843 Ard Biesheuvel     2016-01-26  412  	ret	x28
c63d9f82db9439 Mark Brown         2020-02-18  413  SYM_FUNC_END(__create_page_tables)
034edabe6cf1d0 Laura Abbott       2014-11-21  414  
034edabe6cf1d0 Laura Abbott       2014-11-21  415  /*
a871d354f795c4 Ard Biesheuvel     2015-03-04  416   * The following fragment of code is executed with the MMU enabled.
b929fe320e5f3c Ard Biesheuvel     2016-08-31  417   *
b929fe320e5f3c Ard Biesheuvel     2016-08-31  418   *   x0 = __PHYS_OFFSET
034edabe6cf1d0 Laura Abbott       2014-11-21  419   */
c63d9f82db9439 Mark Brown         2020-02-18 @420  SYM_FUNC_START_LOCAL(__primary_switched)
60699ba18b69ff Ard Biesheuvel     2016-08-31  421  	adrp	x4, init_thread_union
60699ba18b69ff Ard Biesheuvel     2016-08-31  422  	add	sp, x4, #THREAD_SIZE
c02433dd6de32f Mark Rutland       2016-11-03  423  	adr_l	x5, init_task
c02433dd6de32f Mark Rutland       2016-11-03  424  	msr	sp_el0, x5			// Save thread_info
60699ba18b69ff Ard Biesheuvel     2016-08-31  425  

:::::: The code at line 420 was first introduced by commit
:::::: c63d9f82db94399022a193cdfd57dbafa2a871cb arm64: head.S: Convert to modern annotations for assembly functions

:::::: TO: Mark Brown <broonie@kernel.org>
:::::: CC: Catalin Marinas <catalin.marinas@arm.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006140224.3CDVhXMK%25lkp%40intel.com.

--BXVAT5kNtrzKuDFl
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AsYV/I+eP563q37G+j+LfOE5krkCAA==

--BXVAT5kNtrzKuDFl--
