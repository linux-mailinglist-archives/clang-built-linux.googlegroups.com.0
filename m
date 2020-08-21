Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSEY734QKGQELMRXLGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F00E24D0F4
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 10:56:41 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id v11sf1446267ybm.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 01:56:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598000200; cv=pass;
        d=google.com; s=arc-20160816;
        b=cbz1xFnDJuTo1IHGKxxTZB0gDE5+8SDEvUiNhBjMPlYjpcQup+h4GjVqoOSFU2Dzre
         iU1bJqESJFQAnTxj3ELuFxGuXQlPcHuRsy6lbxVeOBGMlrmeqBzdoEebzeTO02joRY2R
         Y07UilXtMIhqeA63TLhilLkzfj4XH0bkT5zVCKfrDxVVDgH9OSFcwOJgbQ68NzKuVRWc
         WlU+S4Jxhbm72DzaAt+YBqtOWNaYXi0HKdrc8sckUACzANq5MkhSeoqENwHlEND6mZBW
         HmuuQ8AqynOaV+OrWpYErgWTvg1zcnh3arRosMt2L9qraOpQUENWwr5EEyeToqj/gQ5H
         QrFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=pTgQ8Fxfvf+8wTyrZT2P8sImBVztzSavvvXBEUYTZ3Q=;
        b=hZc6ZS4hIoAtEtu1Tw/okgDXmooLMfrRQdK1bV5inIA1Eiq7VOkPg1FMIDQZQhodB/
         fxFrF9Gddt62ZHv9undmW20+b9WEYNjZD/HGqQbwh7g4Rt1k+jK2RPkFfG9EpMoUrSbU
         AsXA342o41W5Ia+LBc75VwHZWcwrk4TicxMgodWZeOSt7DsODGvI8WkBlL8FoEGkes1v
         If5uZ77EiWNV+VDGupa3xCXYLt0ewyyPZs29NhsKdAszLjF84I8ytKghmaNWyj47YWYY
         Xs9P1Moz1/Jp0owEr32mXZo6C6gOmAvSpxU3ORDhr1rjNFOi7SwEUCf9yf6fhC0hv0fu
         XlbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pTgQ8Fxfvf+8wTyrZT2P8sImBVztzSavvvXBEUYTZ3Q=;
        b=gUf0+3pfEap/dSrnRXEyLknLUcOVNGjjPtiqp0I08cpBC2LR6bVWSjVCGxf3PB6UJw
         4yQG5/399oKJ4whmyfZSGb+2Vh7T5W8o1AHbca/nI5PTdNdwscMP+oHuADwERPhZbMC6
         Qmed3P0ChDlkqLepVt5bJGmWYSJOZ49fl+lbfXyoTwNa+i/2kUTg7RglpvVZzbDSY90f
         Q11dYlFQPkwgmxtALpdFqGsI3iEjQmAv2VbHxWmW5BYFUuUZ/mNgnJVAv9j0YGDj+mZW
         LEnYhl2LU7h8dSdvjos/x/DdCtMztB5o2UKlTxgaJUFzQTZaui6Vehc5Rh03i61nLUmN
         OEEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pTgQ8Fxfvf+8wTyrZT2P8sImBVztzSavvvXBEUYTZ3Q=;
        b=k+f/5LgWJRyCLoEDLTrJAmj3uRXDjtLr6YUcMk8gnMiXdHkm6JVAQPoEL5ACw5e4S+
         zvT8LljBhXcK53fXn9gIv674sc4ljxxEDXzQgBl25Tu0xZ4fq7r0w/wfuGgCQwUFl/kt
         myxMlE48AEWi+MwdmW/ZQIecicuPAfW1IHSPw1TZp/2KrJM8j+Ia/5zV/PiCwV3nzZ0m
         hVgZkvm4GME7XcMSlnSxByjEdGLoxR+PY9KUKN6h06muNvvgrja9IkCjihcPPtG3z+5d
         fCy+M6om+sn8mXCeJtCdDueRaM+rNUXZQ9Bcjb6tT4cDK6VoyA+zMvDNxWa2xABgCvnR
         DmRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530X8dGS+wBV6kJQ9/7N2nbPGRCZ+OjS5g0ewnvHCouSe/UJlEKb
	9Os/A5k9MbT1a+gxXazwgnU=
X-Google-Smtp-Source: ABdhPJwztYDMLfq/wHCvdMsXzLFYmvasCA14FAId1UnkrBDeUo1H1laeMuzaZtIMpZEINbIXwaweSg==
X-Received: by 2002:a25:ad5a:: with SMTP id l26mr2216674ybe.510.1598000200173;
        Fri, 21 Aug 2020 01:56:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cace:: with SMTP id a197ls530645ybg.11.gmail; Fri, 21
 Aug 2020 01:56:39 -0700 (PDT)
X-Received: by 2002:a25:e791:: with SMTP id e139mr2459140ybh.67.1598000199729;
        Fri, 21 Aug 2020 01:56:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598000199; cv=none;
        d=google.com; s=arc-20160816;
        b=BtT4t67X9VD/m8piIWxFMvFU4yzrnWP7iM3LfIPrN+AWfOeWlga4idJn9v8SFtEttr
         KtZuqM48rPInKYBtz0wWfq6E8KmdPEnR0QmKozTfFUJaWxglI0Iarv4E68zR1WAzqhMn
         pHNgIRDwZ1Y9HZTboqXPrr4agsba6WN+PVy53XUzM3j2mxubFQJ8gmof4qF7XYuFcOFw
         eZZZgUrdoqykCBzhia+BhtdVfsHUGJeWyZrb2ags+gbILfruyQV5uXoYWOAI5cxpeL25
         NdHX+/qrlVtZsofV5IUMx74Khk0QsniDBQADcjuiyKgAOsp1fD1X2h8EoO1e9kaKZljM
         LcUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=3EY8IvQse0won+oiVWyoeTD3zTFdD4PtE+qR0gFWBKM=;
        b=Yj0vDXQQ2kE38lWAaFS5bvAFZjziVE7atlee4Dxf2epFD/3djZRrAYVgXwD+IpGdDe
         bYWD3ng22bjYRzeSsggPjJm+QeA3my7PKhOAjk9OeIRzUOHo7ZkzngLL0JOPEqP80iIy
         taHW1lXaRE4C8cPV0i82IhBiAFTHu6u31fadoBgaDtsWiOnH7a62iiOPUYVD/UANbCwH
         o90eYDKfhGQfzkQYLlu1eG6QqLBreNqougWpMaMzoDpfJdisP55o47XeEpu3Il6g/isa
         ldulN5KAWGJoLzoxuUTa09MvHBSHZN1jLvbPcdqV2Btk9z7NnBn3UfSZVAeIAVHdTB8O
         C/8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id y18si91644ybk.3.2020.08.21.01.56.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 01:56:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: B2LsmwysnXnxEJKuxui+nGEw5PF03cM/iKITUhDT+uqqQyPWQBOSgAjaHm48ewQtv3zAsSe8a4
 t03Q+ZKcSOfA==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="135552283"
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; 
   d="gz'50?scan'50,208,50";a="135552283"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2020 01:56:38 -0700
IronPort-SDR: FQIIp74cFvEKouXQTovTxy7u7aoza5Fsg1SGp8TVHfEh6TNqrm6NmdGMTGMKIkhAX1Ek2y4ZLB
 kY3ieDcRMb4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; 
   d="gz'50?scan'50,208,50";a="327709299"
Received: from lkp-server01.sh.intel.com (HELO 91ed66e1ca04) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 21 Aug 2020 01:56:34 -0700
Received: from kbuild by 91ed66e1ca04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k92qf-0000qG-Hb; Fri, 21 Aug 2020 08:56:33 +0000
Date: Fri, 21 Aug 2020 16:56:01 +0800
From: kernel test robot <lkp@intel.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>,
	Andy Lutomirski <luto@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"H. Peter Anvin" <hpa@zytor.com>, linux-kernel@vger.kernel.org,
	Dave Hansen <dave.hansen@intel.com>,
	Chang Seok Bae <chang.seok.bae@intel.com>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] x86/entry/64: Disallow RDPID in paranoid entry if KVM is
 enabled
Message-ID: <202008211618.FvZwiOHJ%lkp@intel.com>
References: <20200821025050.32573-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0F1p//8PRICkK4MW"
Content-Disposition: inline
In-Reply-To: <20200821025050.32573-1-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--0F1p//8PRICkK4MW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Sean,

I love your patch! Yet something to improve:

[auto build test ERROR on tip/auto-latest]
[also build test ERROR on v5.9-rc1 next-20200821]
[cannot apply to tip/x86/asm luto/next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Sean-Christopherson/x86-entry-64-Disallow-RDPID-in-paranoid-entry-if-KVM-is-enabled/20200821-105339
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git a9bd3a91d6e49ebd2d7d8ace91d4cc339c382a31
config: x86_64-randconfig-a005-20200820 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b587ca93be114d07ec3bf654add97d7872325281)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   arch/x86/entry/entry_64.S: Assembler messages:
>> arch/x86/entry/entry_64.S:851: Error: too many positional arguments
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)

# https://github.com/0day-ci/linux/commit/bebb51882f9c18938e44b6a7b66fdf0452eea142
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Sean-Christopherson/x86-entry-64-Disallow-RDPID-in-paranoid-entry-if-KVM-is-enabled/20200821-105339
git checkout bebb51882f9c18938e44b6a7b66fdf0452eea142
vim +851 arch/x86/entry/entry_64.S

   794	
   795	/*
   796	 * Save all registers in pt_regs. Return GSBASE related information
   797	 * in EBX depending on the availability of the FSGSBASE instructions:
   798	 *
   799	 * FSGSBASE	R/EBX
   800	 *     N        0 -> SWAPGS on exit
   801	 *              1 -> no SWAPGS on exit
   802	 *
   803	 *     Y        GSBASE value at entry, must be restored in paranoid_exit
   804	 */
   805	SYM_CODE_START_LOCAL(paranoid_entry)
   806		UNWIND_HINT_FUNC
   807		cld
   808		PUSH_AND_CLEAR_REGS save_ret=1
   809		ENCODE_FRAME_POINTER 8
   810	
   811		/*
   812		 * Always stash CR3 in %r14.  This value will be restored,
   813		 * verbatim, at exit.  Needed if paranoid_entry interrupted
   814		 * another entry that already switched to the user CR3 value
   815		 * but has not yet returned to userspace.
   816		 *
   817		 * This is also why CS (stashed in the "iret frame" by the
   818		 * hardware at entry) can not be used: this may be a return
   819		 * to kernel code, but with a user CR3 value.
   820		 *
   821		 * Switching CR3 does not depend on kernel GSBASE so it can
   822		 * be done before switching to the kernel GSBASE. This is
   823		 * required for FSGSBASE because the kernel GSBASE has to
   824		 * be retrieved from a kernel internal table.
   825		 */
   826		SAVE_AND_SWITCH_TO_KERNEL_CR3 scratch_reg=%rax save_reg=%r14
   827	
   828		/*
   829		 * Handling GSBASE depends on the availability of FSGSBASE.
   830		 *
   831		 * Without FSGSBASE the kernel enforces that negative GSBASE
   832		 * values indicate kernel GSBASE. With FSGSBASE no assumptions
   833		 * can be made about the GSBASE value when entering from user
   834		 * space.
   835		 */
   836		ALTERNATIVE "jmp .Lparanoid_entry_checkgs", "", X86_FEATURE_FSGSBASE
   837	
   838		/*
   839		 * Read the current GSBASE and store it in %rbx unconditionally,
   840		 * retrieve and set the current CPUs kernel GSBASE. The stored value
   841		 * has to be restored in paranoid_exit unconditionally.
   842		 *
   843		 * The MSR write ensures that no subsequent load is based on a
   844		 * mispredicted GSBASE. No extra FENCE required.
   845		 *
   846		 * Disallow RDPID if KVM is enabled as it may consume a guest's TSC_AUX
   847		 * if an NMI arrives in KVM's run loop.  KVM loads guest's TSC_AUX on
   848		 * VM-Enter and may not restore the host's value until the CPU returns
   849		 * to userspace, i.e. KVM depends on the kernel not using TSC_AUX.
   850		 */
 > 851		SAVE_AND_SET_GSBASE scratch_reg=%rax save_reg=%rbx no_rdpid=IS_ENABLED(CONFIG_KVM)
   852		ret
   853	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008211618.FvZwiOHJ%25lkp%40intel.com.

--0F1p//8PRICkK4MW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--0F1p//8PRICkK4MW--
