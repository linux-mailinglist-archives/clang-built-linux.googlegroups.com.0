Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBKNFQDVAKGQE2CLK4UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBE67A529
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 11:49:30 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id m17sf31294541pgh.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 02:49:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564480169; cv=pass;
        d=google.com; s=arc-20160816;
        b=lG9GIkcuUbRVF5ju24O9xRg8CN0UL1tI5BziYHQdvsugjDdG5zYjea5op+/5oLk4TU
         Yf7qrFuSP8MjOJIhaAQzZP+ND9SIdomeH0UOhNwWXkQLSfYzLlyyi6SP24mnV17SPoCk
         sHxtt2w0N2FC/M086k9mkalpD9koA5LyJxfe6pJVZjG2Qz71rEiufVHE4N9Gj5RvOSqM
         4oQLBxgo01f5eI5qWmHwW64W62ClvCODRdSi6AQWxOJZJVcdG+haUjJOof+YA7tjc506
         Rw8CPxp//F0qPOqC3w0kyOt2WsGfZKm9JlRmzusat+iOuL9C2MaWkCtJlW7Lx9nC7MeY
         AuzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=EM0K8kaXN1FIvoalYIO3wL7OMwmQaam5bxQkYGVpprw=;
        b=qzj97DnSYP6Wf2UXClitUiJTowz1pfIo6/aeAZJ/idxUEvOOTnjJbdB6EC4vYFRWfa
         kWmeeusOwLFT8pboShDk9SdFZiLuqEGhUsVWadT7LHJTOo03bD8rJ/n37RYNuDNV/wwn
         PZQKPmPPJm0F/bgulOq1HTyoMoUm9tppDzrrfosNgAIIk8MhdCVOaUiFN/gDZVTpFsB+
         +zTefS2m7vWHRLUP0jCa7MfBUARDRIFN3+mkNvDQ9mfyOre8mCFc7rGh/f4rsW9hN1u6
         Ah/gWky9TLYPjAFKMTmZEzeY8EfkH4CygN7aiw/M3I8UdO95uekTx1g77JYIMgJEUFiP
         u13g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rGm3m1Ck;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EM0K8kaXN1FIvoalYIO3wL7OMwmQaam5bxQkYGVpprw=;
        b=Yd14m/SnFtz2eriqUwztF8qLtPi88+wy+efar8kYtiw2UnqQkAwLIYGVEvQEAPZQeZ
         8fD63QEJzNnoIMS0JEx5hPp2qCzzSnlpNf6TZwt1hXID8BIyY3EqJW1PCtrq9gaHL2F+
         uAEsqwz2mviP/GwTy7hP7G4HNSrAHItXI6bJKTv1q8OKqKm4mO5178cV8t9552g58rnL
         h4+jWEi7VPnk0bqYU9BWpxRudk4Vqu2jhLMskspOcb5rv3kG50KoACaV2gq63dzj0MQG
         iTQFfjLJF/iErvZFD72pBRKAeEvQC71IRgRNPG6UHDzoYO+ggiLAH587jG4aEwne5vnf
         C42w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EM0K8kaXN1FIvoalYIO3wL7OMwmQaam5bxQkYGVpprw=;
        b=sM4vptf1xl+OIxFYmqZKlwW79xHIISdjEzBWYK+7uDH/TIxGUsJgT3mk8LL87+nhDI
         kihAYhq235LiGCv7lwevXI1jpb0mX8KUZFB/O8oO1H8LvKmg8bj9QOQNUTiX5lgYaBwj
         ppsO16nZZ/J4498TVmQA2adCH3d/Q6JvSy6DWIHedsIj8bxSg/B89PtVAp96J+JxKLoU
         Gnlr4tihrC23pSyGefTZ/SZ6oL5kwmx839AhAGZ/gN9yN3cKasSK4rcHNfUhQeDrm5g+
         tvqhQf4YMhwkm97ikE7MOlJ/+m1JinQpze/1PNMTzPre0lGNI0LGQyHNi17mIMvK9E3/
         dWKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXIxwJyHyV/L698MNdbNywKiQ0Woe7pO7RYH8GiObjDMlVcubho
	mZhbH5lHMRDNYeGHdWe/VX8=
X-Google-Smtp-Source: APXvYqwnKPJn8j85nWUW4ffpY3xJYSYwaI6kx7v8B+EHNB6AY4KuUfCrRCvVYUlTVFcqkqfsfRmuHw==
X-Received: by 2002:a65:6546:: with SMTP id a6mr54759265pgw.220.1564480169099;
        Tue, 30 Jul 2019 02:49:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7a43:: with SMTP id j3ls11434296pgn.0.gmail; Tue, 30 Jul
 2019 02:49:28 -0700 (PDT)
X-Received: by 2002:a62:2aca:: with SMTP id q193mr41918769pfq.209.1564480168778;
        Tue, 30 Jul 2019 02:49:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564480168; cv=none;
        d=google.com; s=arc-20160816;
        b=w4nN/VsDTMpEFRDANdIjMDDVxo/EV8qYa3vL1p0bo+/tmZsbyzgS6VDVi8iZFJFMR2
         yjjwRsv3DMmsSAAAWr1MQJ270LzL9FJsAo19i4O3y+iu8wt6QeoKEJO/amXt8yLPyqNz
         Yw8nwt6JDsX0WCwWqSSlLiC5shlXQzHc3LnfBufnyyorq9e8QkcmdVBcrF99sh0wr8eu
         hLRULF+xvmmx3jpgKwNRXSwTbnHIsCPGDFV6m64hvrQo1PFKaOKIw6epyXoK6AIlYizm
         LsRZg3gHRZNYzTNNZzumiYC8JF90PHc8Aar/Cc+R8myt8OSDt7gZSs8hpT/e0wVLkLU4
         qD9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kIW/6Ur1+WPREriyGthYKgaV+//5J1SX9CUTe0+8mFo=;
        b=zY6HCHXrLKGNEKej270NoGwNHd2ml7sTVu37kWxifXOcesm0BJp6BPkbqXW+7u8Rd2
         DlDfK9fD5i91mKMrm6+LEw0GQ/sx4cuDUT2CDhMdeYITERV0uyerrtAk9mAIl9nMdpEY
         emlORz8U5YIN0TYeIsLjDi1GJffID+jrOm7ou+YB7MOt9KB+Z/lIBRBZ5E87C8Ohkgxb
         93UHldUxYSGaoJsHxg1Nk/rrKYZGnuwgftCbiotLHASH7+G1ND7P/6+9AsysAAL6xfxU
         pRoh1EWFj8Jl8brOaj08bD2w/h8a1kl1nxtDSjrpOLbFATLOVcyocJUY7VfJuRA5p3MV
         4Nfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rGm3m1Ck;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l72si2579106pge.0.2019.07.30.02.49.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 02:49:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8BD6720679;
	Tue, 30 Jul 2019 09:49:27 +0000 (UTC)
Date: Tue, 30 Jul 2019 10:49:24 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild test robot <lkp@intel.com>, Will Deacon <will.deacon@arm.com>,
	kbuild@01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [arm-perf:iommu/cmdq 20/20] drivers/iommu/arm-smmu-v3.c:1451:15:
 warning: multiple unsequenced modifications to 'id'
Message-ID: <20190730094924.qjq2bpdvjswmthqa@willie-the-truck>
References: <201907300535.IujjRzq7%lkp@intel.com>
 <CAKwvOd=t-_ZYHxu4sLFarm+5Qb89KkJW3W57FxvOGVsL3sN8CA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=t-_ZYHxu4sLFarm+5Qb89KkJW3W57FxvOGVsL3sN8CA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=rGm3m1Ck;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Jul 29, 2019 at 02:13:33PM -0700, Nick Desaulniers wrote:
> + Will
> 
> On Mon, Jul 29, 2019 at 2:05 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@01.org
> > TO: Will Deacon <will@kernel.org>
> >
> > tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/will/linux.git iommu/cmdq
> > head:   f549d24887a687d42c3264e8c8a4c384a1df638b
> > commit: f549d24887a687d42c3264e8c8a4c384a1df638b [20/20] Benchmarks
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout f549d24887a687d42c3264e8c8a4c384a1df638b
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/iommu/arm-smmu-v3.c:1451:15: warning: multiple unsequenced modifications to 'id' [-Wunsequenced]
> >                                    .asid   = id++,
> >                                                ^
> >    1 warning generated.
> >
> > vim +/id +1451 drivers/iommu/arm-smmu-v3.c

Cheers, although this patch is just a rough-and-ready benchmarking thing I
wrote and didn't intend to push out. It doesn't even have a SoB! So nothing
to worry about,

Thanks,

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190730094924.qjq2bpdvjswmthqa%40willie-the-truck.
