Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBNVZT72AKGQE4FBTVQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D1219E206
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 03:02:48 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id v198sf8631994oia.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 18:02:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585962166; cv=pass;
        d=google.com; s=arc-20160816;
        b=dH2f6iz2gmxUS33tDRMFALWrWowQESgUQDL9WqEDsy43y+glQ9Ezm2HcRbrdsjp2l7
         XXxJIqWfezyUJEJhHOwNBTZjEilLQztjqF08Y2bQIny/elNHqhiqmu5qtr8NTZsmaEFY
         LXnpr3F2SGA8faDwOiLsf+jo6ofcebTBy/593lDb3rKpJ3pGMa7L2RnK1+7wksiA+BFz
         aaMsvupmht4P+n+ek1/L2l/tyA1slSz9Bp9IJn8WEiwkaNO7hcqS0Q41kuWnh1iwPqMU
         03lH9HGdiLbuhXWgrXNMCJ3XCNW/2Nc/uGMHhBEYn2UxetwnPkCjVWbrRLpvMHUQKwYO
         GWwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=nS2wsgVwENyDyxCaTZg9Qsq/2NALFza/WE+V1GDA/6s=;
        b=M3tKXWMnj/xKImrTirttl0179dnsBr4WMcalNN/OliN67FOlNBJp46YdeLoQt9LudN
         AaZFUlsnYRmMyYxISNryduiBNVT6url031zNpaGI/XNP2ShCQCww3llpFUdKRJOxY0G6
         fNYv6WuJKeRP0mPC9nqVP+l3Gd2tDNRkMvRobpdagg6uumFl0OuT0dcwu7BLDY45irO2
         QkKgPuHboBcAruxtVQUxZAmrk1JI56amJN4w0kHJWXNT583sa56EsKE+Ul3MEUE9zLWm
         pkJ2KMiEW2B+PfcpwiFUu340gMz1Z4Us+KDTthntBzocveq4RR/LLWOgXheCeOxx5fkd
         8W+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nS2wsgVwENyDyxCaTZg9Qsq/2NALFza/WE+V1GDA/6s=;
        b=JG4ROMb/9Tco0L2iyaIcCgL0KhN9sRBfl3M8iNO7Z6J52PH7fqgdaKJnyaZfcSFMyH
         Q4TyMsxu7aMAzPCmiGzEKTl2MOeSXUeqSqU7CMZ+tb5of+A0yx1sHf3WdXRg79nM3azD
         2mvxjgUgbMZZR4Ta3n6Y13ZD5D9gHLs3QwgVEQbWj2Ki856JnCpuH78sk1WGxESf2w+q
         OKwyi1u0SU5eFghWtTnH4Fjr3lM8EA16qbzO1nQkF2h2LacDTb1f9MbyR92wRMmDFoWH
         Ds9ClFvt9dBHG7RpP1BMG15Da9UE6s0+KGKVXyo4YpwD3SZ/FOWiMRg/6O5paZPAKA9k
         TO+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nS2wsgVwENyDyxCaTZg9Qsq/2NALFza/WE+V1GDA/6s=;
        b=DwugnbDQ2gnZuW6jOuVWxhJSrK84/DnN9RIXmlvbpGf2YSYxqsEuCrdhcQcnHhR/UJ
         Clj2HaefWFavCIQCv0T0Oqhycxw0eo1MRpyXHb9/ObLiZAhb3SSecyVf29cQuP5IfQt6
         vHQw4TevF7KCfZMjSNl2JyFKD/hn/XgVKUq4OwWVa2lwNyeIQ+9oZO/2rmrcshQ5O9/1
         k+mDYlB2949d2ZWfB2k5/CYe/52DxH4bL941vFF++cm7hps8qPAKwqkH4oeRg0QSrvze
         laAeZawY9sKspsrgzhpGcvfls2yeDD+VBHXYnbMuyg2DO4NNrpdqCMUxVygTjHhILNK2
         kFXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZEivAU3dzbJDhdri2pqjtZKAParTk+bg45Gx20XI5dUH09gufU
	kmEb0vmnNUjNiT8mXhfKmNQ=
X-Google-Smtp-Source: APiQypLCjIJm8l57e1kQWmxu70S5Vh1VT+6Flzn7N40eUDR1272WC0g8jAWwnX7+6MDIvIS+uDe6WA==
X-Received: by 2002:aca:d68a:: with SMTP id n132mr5438255oig.40.1585962166803;
        Fri, 03 Apr 2020 18:02:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:787:: with SMTP id 7ls3972821oto.3.gmail; Fri, 03 Apr
 2020 18:02:46 -0700 (PDT)
X-Received: by 2002:a9d:69d5:: with SMTP id v21mr9002637oto.197.1585962166357;
        Fri, 03 Apr 2020 18:02:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585962166; cv=none;
        d=google.com; s=arc-20160816;
        b=0qm6D5NkF2zOe9cwDWhtpC2z8PXSoY02FqAbRIGuGHIZ1KPBc7b51kHHw+V+76yhtG
         V6aXDbr1QokGfcElE75iI+bm0rQ4U2BWAo59+h3a1vtEbOCfM5M5Vod8E5lrtlNROY6g
         PNpXdwaZDwUCdSRn1+BdzmRS6B3gDkp8c2nXsNshnK0+EWJol000CbFA5KbdTFjPlpKj
         L92GORtr9jTeLr/Q3oFB5qnyyQe8fkCriT10vOKqB6Dx4iFhdhqDUmw4UVFnVJh2lJ2d
         /rNixAh6hVHEtDQMmbr7yb3kLZPtJDVfKnGdYe+Wy11Eekm3tBKlE9by2BHW52eVpF+1
         HxUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=OpN6gHSsCNDFDJTwfJOR9/ANiX3m4XoXOIE6CXUE4MU=;
        b=juPzN3j/JlBfdmADr6DHQ6ucp2IqFeLoVmWwvcVf32a4gRfkrfJRoXil+q5ZvQFld5
         fq/g0KmAYddpJXnh06el/tv9XiunmL7eV+j8EdovObZi8/uuVOgfe+yxDmNUsaddorkZ
         KF3senURNF5pFRhHR/WgKfRPYqPKYbTtXE/0IPbP+tUC47kQ3c3/sq4N1o2T8WCjO6/b
         +1mVmI2D5IAsdzQqH21MVleTjbb/pWM59vH55Mjc0s/c3gdRbG9/L4lX+cMy3bJtCa1r
         Qph3Gs1xE3PddjXdABZJViASGELbFINvK0cgJBX1wUleOACsDyt21tThrTRCH+OkEMbm
         QkMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id x23si836804oif.2.2020.04.03.18.02.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 18:02:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: RAMbyS5fEw8k2N3ROGdnz5uP+0qpNFxJc7bG2WS7G3Fel7n50Uc/yjPVTI38nN4RFz+m9S9nRj
 8ry25i+KPClw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Apr 2020 18:02:44 -0700
IronPort-SDR: 0VkANFwCaf2pUHEHBV6JPTsFOwCJaHNcq3H9zjcx73qUx/KXPjmYW2dVtRNvO2Z98txs+M7BJi
 C9BzszJdZCyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,341,1580803200"; 
   d="scan'208";a="329324367"
Received: from unknown (HELO intel.com) ([10.239.159.39])
  by orsmga001.jf.intel.com with ESMTP; 03 Apr 2020 18:02:41 -0700
Date: Sat, 4 Apr 2020 09:02:10 +0800
From: Philip Li <philip.li@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Rui Ueyama <ruiu@google.com>,
	George Rimar <grimar@accesssoftek.com>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>,
	kbuild test robot <lkp@intel.com>
Subject: Re: [peterz-queue:sched/urgent 4/5] ld.lld: error: section .text at
 0xFFFFFFFF80200000 of size 0x1E8915C exceeds available address space
Message-ID: <20200404010210.GA13010@intel.com>
References: <202004032329.oBqXCsfi%lkp@intel.com>
 <CAKwvOd=H71Q=r=S6Zr=N1zgkXTb9HyEwF78ZbuKkoigWZxiBDA@mail.gmail.com>
 <20200403192058.GA41585@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200403192058.GA41585@ubuntu-m2-xlarge-x86>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.20 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Fri, Apr 03, 2020 at 12:20:58PM -0700, Nathan Chancellor wrote:
> On Fri, Apr 03, 2020 at 09:37:57AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > + Fangrui, Rui, George
> > The below errors from LLD look new to me, thoughts?
> > 
> > On Fri, Apr 3, 2020 at 8:42 AM kbuild test robot <lkp@intel.com> wrote:
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/urgent
> > > head:   59d4dade8ccbaa299f5f5dcd775f7a9b7277fb5a
> > > commit: ae1177617ed17157f29959b0fe4d60f532a5b36e [4/5] workqueue: Remove the warning in wq_worker_sleeping()
> > > config: mips-randconfig-a001-20200403 (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f68cc2a7ed766965028b8b0f0d9300a0460c3cf1)
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         git checkout ae1177617ed17157f29959b0fe4d60f532a5b36e
> > >         # save the attached .config to linux build tree
> > >         COMPILER=clang make.cross ARCH=mips
> > >
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > > >> ld.lld: error: section .text at 0xFFFFFFFF80200000 of size 0x1E8915C exceeds available address space
> > > >> ld.lld: error: section __ex_table at 0xFFFFFFFF82089160 of size 0x27B0 exceeds available address space
> > > >> ld.lld: error: section __dbe_table at 0xFFFFFFFF8208B910 of size 0x0 exceeds available address space
> > >    ld.lld: error: section .rodata at 0xFFFFFFFF8208C000 of size 0x480F81 exceeds available address space
> > >    ld.lld: error: section .data..page_aligned at 0xFFFFFFFF8250D000 of size 0x2000 exceeds available address space
> > >    ld.lld: error: section .got at 0xFFFFFFFF8250F000 of size 0x8 exceeds available address space
> > >    ld.lld: error: section .rodata1 at 0xFFFFFFFF8250F008 of size 0x0 exceeds available address space
> > >    ld.lld: error: section .pci_fixup at 0xFFFFFFFF8250F008 of size 0x0 exceeds available address space
> > >    ld.lld: error: section .builtin_fw at 0xFFFFFFFF8250F008 of size 0x0 exceeds available address space
> > >    ld.lld: error: section __ksymtab at 0xFFFFFFFF8250F008 of size 0x145EC exceeds available address space
> > >    ld.lld: error: section __ksymtab_gpl at 0xFFFFFFFF825235F4 of size 0x12378 exceeds available address space
> > >    ld.lld: error: section __ksymtab_unused at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> > >    ld.lld: error: section __ksymtab_unused_gpl at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> > >    ld.lld: error: section __ksymtab_gpl_future at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> > >    ld.lld: error: section __kcrctab at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> > >    ld.lld: error: section __kcrctab_gpl at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> > >    ld.lld: error: section __kcrctab_unused at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> > >    ld.lld: error: section __kcrctab_unused_gpl at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> > >    ld.lld: error: section __kcrctab_gpl_future at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> > >    ld.lld: error: section __ksymtab_strings at 0xFFFFFFFF8253596C of size 0x40CB3 exceeds available address space
> > >    ld.lld: error: too many errors emitted, stopping now (use -error-limit=0 to see all errors)
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >
> > 
> > 
> > 
> > -- 
> > Thanks,
> > ~Nick Desaulniers
> > 
> 
> This is an open issue on our issue tracker:
> 
> https://github.com/ClangBuiltLinux/linux/issues/786
> 
> Note that this is a mips-randconfig.
Thanks, we will temporarily blacklist this error.

> 
> Cheers,
> Nathan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200404010210.GA13010%40intel.com.
