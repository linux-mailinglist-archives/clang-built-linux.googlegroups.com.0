Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHUZT32AKGQEMSHVAFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C3619DE80
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Apr 2020 21:21:04 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id k10sf6108315plx.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 12:21:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585941663; cv=pass;
        d=google.com; s=arc-20160816;
        b=NQkXCn6dc5cIBIDeuoLFzsBMReElJubbxwxFJi/BLVmFkmxrTPqoQwKpoGuEhPvBv6
         0cf8y5plrQD83pWQlS9/B/LtVeO0aZPGL/1Yuj4J92n5fJTd5mzQSwDB6yMwmEBf1ncx
         RKLdyODuYmK1TkIkvapVwdEVlOJT292nrhrI90QUnUPsT1P4sJYxhvXPCrMaDTDOoqG9
         ioDPw397aP5lF3s1hlML1dWhk3vpn/ptyy5hu1f9r83wiuE3Jd4dSsHbKk9K9iodHABv
         Dfe+gK+kcrq0KayNGh1qoFAf7q5gIiTpp8BlSHzAQaUahGSeNkScmDCVxmXbPa9EiOvH
         hxxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=WGKqbDT49ciRufd1/Sjzoj/AOrcjBp+teN+HkFQzGf4=;
        b=VOiVbiqxvAHreNlPyeUiOjHRrsAKQ8TNj19o3nPropsNhvSHgMY7q4oh5jGUe0jyr8
         XHNDwggqsf8uBiCjKjOX5GsO8PIu2nIjPMp6Rkpbfyzt5dTGb1o/etiI3UUr75g5Axhe
         xQCueneQAPuhaf7A2z6FZoIBe9t0JsLY46lBs7eqnQECIrZEfIJpzcQfRw+Ckb5jkUsl
         oLBhFwKkZb8fqY5vB8FfmqQIFs2rOt0U0hN1cbpXlFJ82HERlmD4cWB8OahCN1X8b2rO
         0ksdqX7/9+Jy9xfsOnb985w3invtjKW2QRnRDJm1sARvUw/YOzJzrOx18Yp3cxP3Wv46
         gEgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u7Zz3iMb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WGKqbDT49ciRufd1/Sjzoj/AOrcjBp+teN+HkFQzGf4=;
        b=LQnnk+JvHt0FLjkmxFhfCJJcru1/M0ugfm+3hW1qub6QexWr3aZEdja+wuV9A+Qv+8
         v8KCixkQS5Qhf4TjxmLzowe0SnCEbUvlPcPHUWA+uy0n8rzcDNYpk9sXdK2ZO2xWw6xT
         9y0prVO1ndYCDWqBXExI5CLC6WF+Gvl09urgiCP1pf2D40cKRs1YxXNGkbNbB6UwOale
         T6ZpRgchzxMCMdEvVxfHpl0t03J2uBJXJ7buuArFHFEeaBGkuS1owYWy1ZScvJVnEhq3
         /nmW4QS1V2xf7xwV5EddCtFdhfKPxidmUUc9DegaSVpKbKqoy+S7kuskSAQy4+kaTBn3
         h+zg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WGKqbDT49ciRufd1/Sjzoj/AOrcjBp+teN+HkFQzGf4=;
        b=n/I+HTSTycqmra9bcGyX700GcvV2cDRhEfVJHNblsZ8yxXdAxGwz3zEpdeKNeLbXLC
         9LNfyDrWLXab13Qt2a56npXd+0smdTlUUY0ME4KKifam28/gTIMDsZCxGsK7bbKD15Nz
         9A2eXbzDzkLt7aa40/SPgODAzY45DrIsL9dfYSWIDE5Od/ZpjQshQZhcnd0aAgHtprFh
         G2NHbBOXLTxdTfSUdB8tWX5ClH8Q1DagWIDRBBpndGP2ECGGQBDaPhyofhnC2sa+KDmK
         +V4afmunE3ywCshPjiCYl/O1pNE+Z8WsL7sqUr247O7F4eO2cXcUyiAy2XaMv7iZIrGA
         oDaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WGKqbDT49ciRufd1/Sjzoj/AOrcjBp+teN+HkFQzGf4=;
        b=tggjE5TMT/3vdf4Z/xM6lbkginSawKhGl87FMWJcFMfLTDMGOlN8sF+0C1qc1q0BFm
         WnylfCypiG+DuIqD4AYGv4zKC0MjfResXyxPdHITE6T1E5dhpOcIRsbrRQ7itytXcvlN
         yZadUfujn6DT1LQcf/O5yoCYQHBaJtOgJSfLmAhxvqg9Lq/bERSHQrqNfEu6m/rLKSQr
         /pPo6Bv50oKqp4LyLD9yI6D00SfmMwDeuYNSdufXWXuqSgtNCDvlzuE2ExLjY7mOg9X1
         OwigRfuFiAdQT3wwhNffSgXmAr/W9VlKhWBSTZrKhXpawNrYeNSpKNCBXGciBGCc8ktj
         03Cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZc5EbESYXVgOx4HIeCm0Pis3oKn8QqdCi5h9CRJZEVVBi4Fr7c
	8ywZlvgLvcweIZTKgzvSBcw=
X-Google-Smtp-Source: APiQypLzOOF/LRWLzv1qjyU7wGTaMaVNkBcDztpSq5A2BIdELUaZzgvo0TE8eqBrPt9C35rgA9T6jA==
X-Received: by 2002:a17:90a:be11:: with SMTP id a17mr11949962pjs.150.1585941662728;
        Fri, 03 Apr 2020 12:21:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8ac8:: with SMTP id b8ls5528212pfd.2.gmail; Fri, 03 Apr
 2020 12:21:02 -0700 (PDT)
X-Received: by 2002:a62:5f06:: with SMTP id t6mr10322622pfb.192.1585941662219;
        Fri, 03 Apr 2020 12:21:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585941662; cv=none;
        d=google.com; s=arc-20160816;
        b=yIzynSIcF/IT7ORcKbR76RkHCBSN1JDj55PZma2jFA7/UcRhespg2g2IKF43BmBljQ
         h1AU5Pfeeoe+iVv8cLRhWqJDdpxkAdxyDIHe6r9zLXqrB/lBXG9aNqsv56nW3LF9dSS3
         K7SbALTlxCj0hyTx7/kfYcp07n+XNr3plvlpQO9udUPJartzameGv0Gsj68z4AN/N+rG
         R6GBWE/8UZ0M2G5eu1iAHwjvbJ7EDchx5VjL7g6T71lScgBd2R5O2SHGpoD3HcukONPs
         qwusBOwblo6ZEQC95v/Jm7I1gBa7wzWNjeDjV5okra1oWJlBbTTYvpIvZYJW+GK544JY
         TF0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uUuuonGvGYbWKgFMptSfo1fx8PZdDjMpZkDiIXqdK10=;
        b=EQhsIK48Kx0lLvLen6kBL+LoaykccegZWILF34lYdfzGq6Hkki1Nu9gnHdbnmgFQMB
         RrmCPANWBBgJuJcGoiKpg+OcUx+knTUMWIhaIepQ+UO+Qc2t1n05wtwqkY2bz7clpz9K
         Y/do3olPTwz15KLJ33zcW93CaYQm4jJ4BXxwfIEhjO+lR7rzu+adg01xvFJbnBQiJtT+
         WlfHAm88Pn5RwXUUBVdvEhPyE1q5mCR3wH616+xGlpEJFEC0XQ1v1ICqxuH7ZDGBRTx7
         pt/wD+ScVEdjdKuhJZqPTaqxPZqCKsRGF5nTYuYGykCDeNogcLXebQxgWnvgp7lYIlE1
         ZbpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u7Zz3iMb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id k3si474376plt.1.2020.04.03.12.21.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 12:21:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id v2so8486239oto.2
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 12:21:02 -0700 (PDT)
X-Received: by 2002:a05:6830:2314:: with SMTP id u20mr7701719ote.166.1585941661416;
        Fri, 03 Apr 2020 12:21:01 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 33sm2274158otn.50.2020.04.03.12.21.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 03 Apr 2020 12:21:00 -0700 (PDT)
Date: Fri, 3 Apr 2020 12:20:58 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Fangrui Song <maskray@google.com>, Rui Ueyama <ruiu@google.com>,
	George Rimar <grimar@accesssoftek.com>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>,
	kbuild test robot <lkp@intel.com>
Subject: Re: [peterz-queue:sched/urgent 4/5] ld.lld: error: section .text at
 0xFFFFFFFF80200000 of size 0x1E8915C exceeds available address space
Message-ID: <20200403192058.GA41585@ubuntu-m2-xlarge-x86>
References: <202004032329.oBqXCsfi%lkp@intel.com>
 <CAKwvOd=H71Q=r=S6Zr=N1zgkXTb9HyEwF78ZbuKkoigWZxiBDA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=H71Q=r=S6Zr=N1zgkXTb9HyEwF78ZbuKkoigWZxiBDA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=u7Zz3iMb;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Apr 03, 2020 at 09:37:57AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> + Fangrui, Rui, George
> The below errors from LLD look new to me, thoughts?
> 
> On Fri, Apr 3, 2020 at 8:42 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/urgent
> > head:   59d4dade8ccbaa299f5f5dcd775f7a9b7277fb5a
> > commit: ae1177617ed17157f29959b0fe4d60f532a5b36e [4/5] workqueue: Remove the warning in wq_worker_sleeping()
> > config: mips-randconfig-a001-20200403 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f68cc2a7ed766965028b8b0f0d9300a0460c3cf1)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout ae1177617ed17157f29959b0fe4d60f532a5b36e
> >         # save the attached .config to linux build tree
> >         COMPILER=clang make.cross ARCH=mips
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> ld.lld: error: section .text at 0xFFFFFFFF80200000 of size 0x1E8915C exceeds available address space
> > >> ld.lld: error: section __ex_table at 0xFFFFFFFF82089160 of size 0x27B0 exceeds available address space
> > >> ld.lld: error: section __dbe_table at 0xFFFFFFFF8208B910 of size 0x0 exceeds available address space
> >    ld.lld: error: section .rodata at 0xFFFFFFFF8208C000 of size 0x480F81 exceeds available address space
> >    ld.lld: error: section .data..page_aligned at 0xFFFFFFFF8250D000 of size 0x2000 exceeds available address space
> >    ld.lld: error: section .got at 0xFFFFFFFF8250F000 of size 0x8 exceeds available address space
> >    ld.lld: error: section .rodata1 at 0xFFFFFFFF8250F008 of size 0x0 exceeds available address space
> >    ld.lld: error: section .pci_fixup at 0xFFFFFFFF8250F008 of size 0x0 exceeds available address space
> >    ld.lld: error: section .builtin_fw at 0xFFFFFFFF8250F008 of size 0x0 exceeds available address space
> >    ld.lld: error: section __ksymtab at 0xFFFFFFFF8250F008 of size 0x145EC exceeds available address space
> >    ld.lld: error: section __ksymtab_gpl at 0xFFFFFFFF825235F4 of size 0x12378 exceeds available address space
> >    ld.lld: error: section __ksymtab_unused at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> >    ld.lld: error: section __ksymtab_unused_gpl at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> >    ld.lld: error: section __ksymtab_gpl_future at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> >    ld.lld: error: section __kcrctab at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> >    ld.lld: error: section __kcrctab_gpl at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> >    ld.lld: error: section __kcrctab_unused at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> >    ld.lld: error: section __kcrctab_unused_gpl at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> >    ld.lld: error: section __kcrctab_gpl_future at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
> >    ld.lld: error: section __ksymtab_strings at 0xFFFFFFFF8253596C of size 0x40CB3 exceeds available address space
> >    ld.lld: error: too many errors emitted, stopping now (use -error-limit=0 to see all errors)
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

This is an open issue on our issue tracker:

https://github.com/ClangBuiltLinux/linux/issues/786

Note that this is a mips-randconfig.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200403192058.GA41585%40ubuntu-m2-xlarge-x86.
