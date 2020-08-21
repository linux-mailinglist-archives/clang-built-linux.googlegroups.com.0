Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGU77X4QKGQEDWD3L3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A11824CCD3
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 06:37:48 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id r9sf394764qtp.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 21:37:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597984667; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Rv5N3yo5OQysMMhYsemVWs6yAgjB+s0/ughUlxJeCBSfdaABKkPgOCO1G/KM+/5aP
         +EZtH3DaNBOd0ajVntM7joyoPH0h2jB1PJPrY1biqhvgEf0NX+zm3+CnjIF/kWSEMz1S
         Nc1sAjcIwJH8RYyYK+Tb+asFYqH+GHLheLoUFPnawnK20IODUHClwubvCkEf53z7qG2k
         Tp8tAZKh9uMxGsklO19SdDIbbwocsZmtLgXTnQbGJQgmickgwuYUkFPmuRYQivl9cGHc
         cgUHfZI4A52FTkRpCHv2oC1GbGr+wbkBO6zTzIj1fT+N9+vv0zq/RjnIJWjgbudKeuvQ
         w0Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=3MeuUwKpEX9LOnXXdzPO0EmQ/dmFjFrbsyaZuLv+hC4=;
        b=N8jBOqZylpDJdZ5sTTgtChTd/B4WID88u0kWybBQHwGdzha5UtYZ8B6GTkZGQZKZVm
         2i1/8lGa+xQ0y7OaCqp4ssHqwU+itoyFoclDLCDQfkSCcdUfLZIXt7/WHTABi6SRUJLs
         nyfzexaHSy3K0iHkfv9cbgQLJfzmu/T/URJP4uNy4hHD6T2UroFkLb0DXALvjHbhiLeK
         639sHkxEczTawQiU1N9VMxkQ1x3Rje78QO66+VjWITnXJLlCIWbUG81lBSvJi22VG/0S
         EsaKnWqoTGbgaypomY/kR2ZRuZGIh/aCtqwsxGwso1ghwhGKAN0uHUu0QqrnIFl6adlv
         LgWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3MeuUwKpEX9LOnXXdzPO0EmQ/dmFjFrbsyaZuLv+hC4=;
        b=qZI4oDknCaGgdDoSLcVfEW81wAW1goQNT1fW0F1CWzOspnhV/0iPm9lygbvhDB30tm
         iV15SYzFdOz9CFVLypxGYwMGWYsi9DRmnUvASIABZzZP1jh5pczWEQJIKlVijbeGhx25
         49cR10MzVGpTKe+5XX8Hf/70kt27mnOHF98DMIPU8uFWant2R2p/fLWkb20ne3O0ynNt
         q+oCmaayQc2ZlbBIXQ4syUHh7LBCbMoxdTUM23cZrn/9UCpvD1vm68r40ERwHfcsdeAa
         spkwZFIFCu9zKw1ehBK/cTbym8aP1zesMUh9tcseHDkf5cCZVSI/yqFJ4H9eu7NFOxbh
         aEzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3MeuUwKpEX9LOnXXdzPO0EmQ/dmFjFrbsyaZuLv+hC4=;
        b=Nqx/jvYUXPqlNW58CTJEjPN836zcs+5X3Lv3asvG8YjePzrBYsYORoEMR2uiAiXcjf
         a512ZIJ9MASKW1siPz9df/G4FFm100f/272bPOzsoyq2m6Jv7L560uz6Zi9oTpyg6mSY
         KDqCjwMWTKvZunMnCPMq6heIZCR691NZBBF/CSFkU0qeG+M4qp+wKxGSomtVHzZKo3lg
         m+uX622ubqBIbmlJBuVM0QLWq0Qwyr6iBKn7MVbVjVeXcS1L3ykO44OBV5vSgttRoLGH
         S2KsNr98hsZBifH7zKEd4+1ZD7omhjU9wXh2Mkl3L3ifb9SsSa8a8OGbbuuC1R2t3ODV
         kgsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XWuevIrA6jTGWfhEPp11asQUqQwrFd4RMiO9uEp1VVUpOl9kp
	B+xEjIU4x92d1nb2zkRbT/c=
X-Google-Smtp-Source: ABdhPJxXU3GAa5iMQst/M9YvdHdf5G3CHI+AiRlG2c3xwFHubW62krVUIE03JvzErDuWJB2zUdSRng==
X-Received: by 2002:ac8:4e51:: with SMTP id e17mr1082184qtw.173.1597984666922;
        Thu, 20 Aug 2020 21:37:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:120e:: with SMTP id u14ls296131qkj.3.gmail; Thu, 20
 Aug 2020 21:37:46 -0700 (PDT)
X-Received: by 2002:a37:a45:: with SMTP id 66mr1247150qkk.435.1597984666119;
        Thu, 20 Aug 2020 21:37:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597984666; cv=none;
        d=google.com; s=arc-20160816;
        b=mEUTjWzeGbf/dov1whCzKQ2+ODTcrZZW8q1Fq2kn/xt7pZPmn9eeFDGkCsNCGSkYsD
         Sg66bIrxDQi2RehUFcUGN0AzWwEae15lQj9p8T2cxv0NPRIpzlNB7ZtTU0OMd8lAxmFf
         oCTuDAiQMmrq02F5zsf/GnVdfl2uBdDocLE2uv6cjY/hkcC6chEb/SqiBpxoF1OpplMS
         58gbd0ecQMJ5UNLw46dp5yGqaHUQYD9eMCfmFibew8OVad7XeZNR4AogWOz8OJcBBXeA
         wf2fAz5w18KTRBce23jpkE2NBeJ+rvDBw/tlsTPhZBWNxcQdmqBgOIFATYzSSft7H04S
         XhIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=U7JLub/bwcgwrQiTaQBZMHAYhcV0CRxWEN0ETNeD7oo=;
        b=sd8FSD05N5iJ11yq67Q/45zcosTjTj3eQy5BBIFwbW5LmhJineQlRR174wiWR/EcXJ
         HA+NAOzKB05y5SJu3oz2rpdDFpkJXiudvwZqIg5W+1RtCJuzfF+U7zWAo0Egg90O52Ax
         8DYNiNb2VZqJ6si1beMJhWjWstx3ZEM+l3tmLvRZxNe62N5xqOUYesdWdRXqCfdfanWD
         pWeq41W0cVOMAd7YWdf+NA5lpG9ZLfi11Uqvzv0pmHtvh/0FAL0xALEnTCF8eHdB7uEj
         pTymgXI6JP2CLeriZZKUfZWOSgR4G0e3JmAEDBzuMApDqymmcKIjMV2UJM8f+TsjJT2/
         jJCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id f38si47394qte.4.2020.08.20.21.37.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Aug 2020 21:37:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 9LsI0NHuN0Wykpi1GfA2bPdFmQQMWODa2QmLJBleCnqzMRaeiMuPRFxxb5appqhXuDWEHAZ+Gp
 iwWe/ai9RMYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="153063567"
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; 
   d="gz'50?scan'50,208,50";a="153063567"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Aug 2020 21:37:43 -0700
IronPort-SDR: 0t1X4uGKctQfRhVviy7S3ptDquoi0Fw6K+jP2j1oVhUf3qBpakHj6jNAEP7poN6ZvFISj7jlcL
 KkJkGs5Rklzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; 
   d="gz'50?scan'50,208,50";a="472908314"
Received: from lkp-server01.sh.intel.com (HELO 91ed66e1ca04) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 20 Aug 2020 21:37:41 -0700
Received: from kbuild by 91ed66e1ca04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k8yo8-0000ZO-Ul; Fri, 21 Aug 2020 04:37:40 +0000
Date: Fri, 21 Aug 2020 12:36:56 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [tglx-devel:devicemsi 18/38] arch/x86/kernel/x86_init.c:80:28:
 error: use of undeclared identifier 'native_create_pci_msi_domain'
Message-ID: <202008211252.0TQroObj%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--SUOF0GtieIMvvwua
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git devicemsi
head:   67d94e5e316843b1af2b0c4cf5d4f8e9a91d97b4
commit: c788f3e806861afdef54db59dc5be9afb5bc906f [18/38] x86/irq: Initialize PCI/MSI domain at PCI init time
config: x86_64-randconfig-a005-20200820 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b587ca93be114d07ec3bf654add97d7872325281)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout c788f3e806861afdef54db59dc5be9afb5bc906f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/x86/kernel/x86_init.c:80:28: error: use of undeclared identifier 'native_create_pci_msi_domain'
                   .create_pci_msi_domain  = native_create_pci_msi_domain,
                                             ^
   1 error generated.

# https://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git/commit/?id=c788f3e806861afdef54db59dc5be9afb5bc906f
git remote add tglx-devel https://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git
git fetch --no-tags tglx-devel devicemsi
git checkout c788f3e806861afdef54db59dc5be9afb5bc906f
vim +/native_create_pci_msi_domain +80 arch/x86/kernel/x86_init.c

    62	
    63		.resources = {
    64			.probe_roms		= probe_roms,
    65			.reserve_resources	= reserve_standard_io_resources,
    66			.memory_setup		= e820__memory_setup_default,
    67		},
    68	
    69		.mpparse = {
    70			.setup_ioapic_ids	= x86_init_noop,
    71			.find_smp_config	= default_find_smp_config,
    72			.get_smp_config		= default_get_smp_config,
    73		},
    74	
    75		.irqs = {
    76			.pre_vector_init	= init_ISA_irqs,
    77			.intr_init		= native_init_IRQ,
    78			.intr_mode_select	= apic_intr_mode_select,
    79			.intr_mode_init		= apic_intr_mode_init,
  > 80			.create_pci_msi_domain	= native_create_pci_msi_domain,
    81		},
    82	
    83		.oem = {
    84			.arch_setup		= x86_init_noop,
    85			.banner			= default_banner,
    86		},
    87	
    88		.paging = {
    89			.pagetable_init		= native_pagetable_init,
    90		},
    91	
    92		.timers = {
    93			.setup_percpu_clockev	= setup_boot_APIC_clock,
    94			.timer_init		= hpet_time_init,
    95			.wallclock_init		= x86_wallclock_init,
    96		},
    97	
    98		.iommu = {
    99			.iommu_init		= iommu_init_noop,
   100		},
   101	
   102		.pci = {
   103			.init			= x86_default_pci_init,
   104			.init_irq		= x86_default_pci_init_irq,
   105			.fixup_irqs		= x86_default_pci_fixup_irqs,
   106		},
   107	
   108		.hyper = {
   109			.init_platform		= x86_init_noop,
   110			.guest_late_init	= x86_init_noop,
   111			.x2apic_available	= bool_x86_init_noop,
   112			.init_mem_mapping	= x86_init_noop,
   113			.init_after_bootmem	= x86_init_noop,
   114		},
   115	
   116		.acpi = {
   117			.set_root_pointer	= x86_default_set_root_pointer,
   118			.get_root_pointer	= x86_default_get_root_pointer,
   119			.reduced_hw_early_init	= acpi_generic_reduced_hw_init,
   120		},
   121	};
   122	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008211252.0TQroObj%25lkp%40intel.com.

--SUOF0GtieIMvvwua
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--SUOF0GtieIMvvwua--
