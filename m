Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFVO676QKGQETBIDHSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id D275C2C37BC
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 05:01:27 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id l7sf957841qkl.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 20:01:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606276887; cv=pass;
        d=google.com; s=arc-20160816;
        b=S6st9DcdKIlJ6CvcfsY/C9HYAIE2dRM1pd17bFecjopa0xzjfocWTSVcmWSViB55op
         nnsr6Aw//A8rwEEZ98fBdLCQxIw8eNZzulwoZDJcRkLr3UpNxlWUtvC4t/kmqheq8hlZ
         TzUqjS4qpexhro1eYHzNN3iS42SSqkIFf1y+yBvrmJ0C8+OuFXIHWNMuqc6n6VMXBgEG
         latbrZQ1W0NazZeuqYAi2Xv13qkcll9OTTanYFAJRbhSEa2dXL3XwOyUzWDKkuZ3TzH6
         8VGmXySVdWqxFDfhit8/4WY0sm73WWR+Dx2sAlbVFe3yxAJcd1cb8CmjbiJVi0C9gL84
         0rOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=xPY+ueP2PLJYZ9rZP5kRJBvK5531XviShwNQyjPQYyQ=;
        b=FDHqjQdIkYtTF1tva5SgFcWaM+/GuOhCm7Q5QDsaQ7QRUDrcLABq50e/i0WuiPzBu3
         qu2OXHo7SfIL9tts8RGPMk6FILIykskmwVCYHdumYZJPys+XOrs7bmhfXV7Iy/Y3tLWR
         3E+JCn9oiEYptUpzy+1opiXWpxUiwp62TieWqJInZebybRb58C2v1EPqWkwsO8cCYGr0
         pcMNqtP2gqGtoT6pQ69JDcTdLnMZSyiVXBpAQemUklMQocjzCv3NbvoALzr1CEM9isw/
         RXCj8ETfoDLX+CLU0yDxaJFRdo5mFgg86as8NdLw6/1yseRkZnyDAV+8Bdx0nMgeuB7H
         3ELA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xPY+ueP2PLJYZ9rZP5kRJBvK5531XviShwNQyjPQYyQ=;
        b=Pkc9A/rPflokIIe7hc8aeOkbLzxmHC+CXP8Iju7zVSLq3Kztzm8uefe6slCMkC6KlC
         lViYzFA/VhlK2MWhmerIuIBeM5Je9aAivzPP/A/I2ESo5cx8ASZYS/2GdNGbURzv9C1Y
         ZKNHg/EYjcCFNpzGJ8hvoXp5QhQXitlTvdnPYCPwoONu0bM7QMGWuaYilCS1rtmjuW6o
         79761QMAmzEPExz1P/VHbBpn4BEfhmvdjuBZznBEPANejAa7vgy9pPal7T3pZIy8cScs
         K5DaU4XVfdSSjafTH0JVxkcqD7mIqCvdKJJFmPdt+UBmtSrxmy1GL1gjpUmVgOLv+SPK
         BZFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xPY+ueP2PLJYZ9rZP5kRJBvK5531XviShwNQyjPQYyQ=;
        b=RcCI3CdvQo8DS6Id+L8fTuSjJD4lwb6AivYNnt+gBZuM/XCsZIDOvbBg9M/HXxPEay
         f7vuX7MpUxPK4ztnie9CaAwu+2PrdDdPYTmgUK7yskOhxHm5q8RxpaY0FBhFruGzJ/g0
         vDJdSgolfhF6KeFeoO9bDdNr23urCtQUAEVehwqrrOL6T1CMGHc+TZuwJiGtiOaKoIxT
         OENeBfD7vmUxqv6DvZJ3o3o43a3QOzUsCiSKqvCpIMu13y2KhdOVxc4ByIpJfazcCLS5
         xkvzZT6YoPexzsCcqwxsyVmJ9alTbXAV83C3ec83xRCFJYaRbMuPKp9mFzY7eJXcKkNE
         BFaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jPeb+UhJ5oyvl8YhAzTjVAxCjAGNbmUrLiIqj7B1kpPsbMRaD
	dLZ9Xsph0UECagGslo9Ffz0=
X-Google-Smtp-Source: ABdhPJyYj7BZ5UaW/WmEDJd8y0Nk3TbbusjIK0SGAmJncpWiHKOxCCpK8kz7orgF3FEig3acwHmGWg==
X-Received: by 2002:a25:d215:: with SMTP id j21mr1441147ybg.279.1606276886791;
        Tue, 24 Nov 2020 20:01:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:344b:: with SMTP id b72ls550486yba.1.gmail; Tue, 24 Nov
 2020 20:01:26 -0800 (PST)
X-Received: by 2002:a25:bc02:: with SMTP id i2mr1644697ybh.478.1606276886172;
        Tue, 24 Nov 2020 20:01:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606276886; cv=none;
        d=google.com; s=arc-20160816;
        b=Va9Ky36RhivzAkBoMFoIyPDYLSOpY5K3AnJfy+GzoOhYD2GFHFxiChAxU7xl02EsrT
         r5442u8jtg9gCKIFKb6XNEN9RQD3Wlo3VsIwY70HLlHbSBaDh1TJ9S9iCJVjqgPF8k+X
         GjLKYJUoBxxKBYbIJBfY5EBjXxm+e0t9FzkxTba3et9zkuDsf4HZkfTm+2QCD3Duj4A4
         u1ziF+5pTNDtqSya2gJmHDlFBQIb+QxqwtSyA1C8S8xcyWHIokRhpx73vUecJt6BVeN+
         j+6CsG7EClmRjqVP4NqDUOxMuYi+vfp+mp8g11fMj1e/rLtJY09o6V/ZYWeAhROLXITP
         +zOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=RBmi0wOu4l/wZAWF3c8H1junXiRMGhmhxya6OlRNcoI=;
        b=aKCeKN42wRfCwDDUnlav3S0QxlBo1bnx5Wgjlc1NAo7XkVsC9ZAf4XwpRLZPreTRHw
         8533kwVUFIop5jcA3CQDFiWDk3VNfH66WYHlBhEc74Q5MkYQocAjRXpLJ9kNIlgZGLmT
         IMg20d9VJ2yQxjolojgMkayvWLjrbm/zIW9whDLMjYiOikkq4qiMTS4ZwvQVQkvsdBUA
         D/XPFaYLMIum0U7Un0m+rxDLOu82oM1FaSInSkc7FXqHIx9bkv6h7BOaetFhafSU+OKk
         AGgvQqQ9ksEF1V3UXG8vuZ34Xtaz7sdq0j2kG/6tFUswbidEmJ+aJhRVxd0RUonqKNRN
         +qpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id m3si82384ybf.1.2020.11.24.20.01.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Nov 2020 20:01:26 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: vgcrdwmMh4j2PA7S2E4/Z2J5eAuqfCxVcoRGdhHDN6dvmPmEjhMXkRJdc12SLYi4QHT6XB73kS
 rI4LL6+flfXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="236197937"
X-IronPort-AV: E=Sophos;i="5.78,368,1599548400"; 
   d="gz'50?scan'50,208,50";a="236197937"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Nov 2020 20:01:24 -0800
IronPort-SDR: KE5xoTULwX7IBCoJNu/OdkVVTNrRZouk4ozg1PsW0S+VEeosANDdYK0bc4mr63PVk9KXJ0eH9o
 tZUTLMsrS1Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,368,1599548400"; 
   d="gz'50?scan'50,208,50";a="403140158"
Received: from lkp-server01.sh.intel.com (HELO d5aceba519b7) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 24 Nov 2020 20:01:20 -0800
Received: from kbuild by d5aceba519b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1khlzc-000012-Bm; Wed, 25 Nov 2020 04:01:20 +0000
Date: Wed, 25 Nov 2020 12:01:06 +0800
From: kernel test robot <lkp@intel.com>
To: Wei Liu <wei.liu@kernel.org>,
	Linux on Hyper-V List <linux-hyperv@vger.kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	virtualization@lists.linux-foundation.org,
	Linux Kernel List <linux-kernel@vger.kernel.org>,
	Michael Kelley <mikelley@microsoft.com>,
	Vineeth Pillai <viremana@linux.microsoft.com>,
	Sunil Muthuswamy <sunilmut@microsoft.com>,
	Nuno Das Neves <nunodasneves@linux.microsoft.com>,
	Wei Liu <wei.liu@kernel.org>,
	"K. Y. Srinivasan" <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>
Subject: Re: [PATCH v3 15/17] x86/hyperv: implement an MSI domain for root
 partition
Message-ID: <202011251128.eOO4DsPg-lkp@intel.com>
References: <20201124170744.112180-16-wei.liu@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline
In-Reply-To: <20201124170744.112180-16-wei.liu@kernel.org>
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


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Wei,

I love your patch! Perhaps something to improve:

[auto build test WARNING on tip/x86/core]
[also build test WARNING on asm-generic/master iommu/next tip/timers/core pci/next linus/master v5.10-rc5]
[cannot apply to next-20201124]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Wei-Liu/Introducing-Linux-root-partition-support-for-Microsoft-Hypervisor/20201125-011026
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 238c91115cd05c71447ea071624a4c9fe661f970
config: x86_64-randconfig-a003-20201125 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 77e98eaee2e8d4b9b297b66fda5b1e51e2a69999)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/ae7533bcd9667c0f23b545d941d3c68460f91ea2
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Wei-Liu/Introducing-Linux-root-partition-support-for-Microsoft-Hypervisor/20201125-011026
        git checkout ae7533bcd9667c0f23b545d941d3c68460f91ea2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   arch/x86/hyperv/irqdomain.c:303:3: error: field designator 'domain_free_irqs' does not refer to any field in type 'struct msi_domain_ops'
           .domain_free_irqs       = hv_msi_domain_free_irqs,
            ^
>> arch/x86/hyperv/irqdomain.c:316:28: warning: no previous prototype for function 'hv_create_pci_msi_domain' [-Wmissing-prototypes]
   struct irq_domain * __init hv_create_pci_msi_domain(void)
                              ^
   arch/x86/hyperv/irqdomain.c:316:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct irq_domain * __init hv_create_pci_msi_domain(void)
   ^
   static 
   1 warning and 1 error generated.

vim +/hv_create_pci_msi_domain +316 arch/x86/hyperv/irqdomain.c

   301	
   302	static struct msi_domain_ops pci_msi_domain_ops = {
 > 303		.domain_free_irqs	= hv_msi_domain_free_irqs,
   304		.msi_prepare		= pci_msi_prepare,
   305	};
   306	
   307	static struct msi_domain_info hv_pci_msi_domain_info = {
   308		.flags		= MSI_FLAG_USE_DEF_DOM_OPS | MSI_FLAG_USE_DEF_CHIP_OPS |
   309				  MSI_FLAG_PCI_MSIX,
   310		.ops		= &pci_msi_domain_ops,
   311		.chip		= &hv_pci_msi_controller,
   312		.handler	= handle_edge_irq,
   313		.handler_name	= "edge",
   314	};
   315	
 > 316	struct irq_domain * __init hv_create_pci_msi_domain(void)
   317	{
   318		struct irq_domain *d = NULL;
   319		struct fwnode_handle *fn;
   320	
   321		fn = irq_domain_alloc_named_fwnode("HV-PCI-MSI");
   322		if (fn)
   323			d = pci_msi_create_irq_domain(fn, &hv_pci_msi_domain_info, x86_vector_domain);
   324	
   325		/* No point in going further if we can't get an irq domain */
   326		BUG_ON(!d);
   327	
   328		return d;
   329	}
   330	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011251128.eOO4DsPg-lkp%40intel.com.

--bp/iNruPH9dso1Pn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
O1JWCK24bfh/fuNsqYCRAQA=

--bp/iNruPH9dso1Pn--
