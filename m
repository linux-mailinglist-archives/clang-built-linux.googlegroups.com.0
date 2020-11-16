Return-Path: <clang-built-linux+bncBDIIZZ7A64LRBAMHZT6QKGQEHLVUMQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id C94632B54A7
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 23:56:02 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id 33sf12683473pgt.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 14:56:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605567361; cv=pass;
        d=google.com; s=arc-20160816;
        b=jmjB7zmY8LGSTsRnrlIy8hkro/BgqU8m/vCGLjyinfLAoKcE+DIpgM8KiDJOSNNTQv
         QkMtOelMtjXuCKdTSJgUSNdocagLIAV/JiIwybGHdyylifmr5lXH96wFTPbRVbNuv4gn
         p187d49PEveygtPb5/NE8eaIxGUKibNDfmMdGrUjod4QILOuKWiASniVnpD4hXmSvDbI
         Q1iXfMz8xhXUEQN1jXVLe6LkXDYoQl6K5KWbf2J96jpf9j00vt7WAyzO2CooPwpSCLP/
         2LM1qwYBoYzamiKp0YU39OdkpMCCf5EZipX+JcRezrvvNAunCkHBbB5N3TKe1FlSdJc4
         si7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=85K8NbYCSI93xrq+XuNLCUPcw6jd7nHvNy5ziEpS2po=;
        b=IRpuex2Zkfmd6K89uVLsmEGrT6l0bxv5v+WWzfUbYKFR7jO03t7PRoJsINmAKqt3ae
         MJGtU75qgSQxh0Ps0PKlAJPuBHy2pmt8T9Xf1jgLyGatGZtY+IZuM90uLXq/bQ6oE9/B
         a9KFfgOCx2vXg7aW3Hn9vl5fg3LG+YGrmIrLrf87ki/cbK+goR7+Xa07Y9B78VvVh4oU
         5qvPBcbKrXK2T5Evw9/MLg+9P6jH2k2gUjxbLb/mCCNA44tmdMJmnnAAICH1Ekqzi3JB
         la7BaWsuBTdX+FhbpESouAbRabQSsHXCvqmWdVUhBjleLlS3F19IPxtt40NBkZMMQ9cK
         AYsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=C5BO4byd;
       spf=pass (google.com: domain of willmcvicker@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=willmcvicker@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=85K8NbYCSI93xrq+XuNLCUPcw6jd7nHvNy5ziEpS2po=;
        b=iRkJJIRuNXTRy80w3xK3uORctgbp8APMA9UKhdYgkBiVYyzQvPG+olo+HS7VKzmLI3
         IUfd12iNIhnEVGNN/WNMgpqA/8qljOl5VwYW92Um0ZO5Oc+r4EI+HIzQo1+QSWCGoQlm
         UY0P+E0TKokg85KT83iSUYe5Pr5omnKLbc409GyeSI5d0iHowEaBpUcgUEodrZJPb7ko
         S7jzF6v7KN4dQmz7lkym5bMTdqm/6qelCCdJ2i0tpboEBKZ0Y5HqCfJLnI2aL7I8mcwn
         ZJgkyzvlF1HtdlqhMUcJ2CtCpXb9bQP/PzlsQKe6eRimYEkelJkzuLH+ewLoRkFFjR3o
         MYkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=85K8NbYCSI93xrq+XuNLCUPcw6jd7nHvNy5ziEpS2po=;
        b=GCR1KCyvpghdRu+Rk6r/8fqrGYTtjcaIltnXPqu0M2e9cr1NJahxfF8R76fDhH4slp
         wwwmSbQbDjbmU68Zqfs6nJOQU0IqBSLnnflTNARcGugKP3vwZHqVPK6Bh3Z42lB3ysAH
         0tA5guuq6DM0ruOThyPFuwtaibzNK4tlhdfMRGBwKAXjHI6VkfqlPRLtiTCEuNF7P9Y8
         mGqpaZf5Rh25JKM70RMI+nSElfEcLuPOuyijaR7LzfOOZYK3i23XGV8Aqm0FtQ/T1Nu8
         JbkM9nMwQ7tuNA4gh9DpMdJQohqRUkyIMo1ZKGsaGrCHgp/IxW1HWXM118QkxOd/p0Tv
         ISvw==
X-Gm-Message-State: AOAM532Ng4ctTnEofe4ICNRshLuicgZ6IY4bFD0M2JEM755MF2KS6NHz
	k5A0WINlwpSZ5ZmWgN/JVUU=
X-Google-Smtp-Source: ABdhPJwuIBCQSYzQrs1ZP55HppWEja3c08gMhhmn8/LHbGWsK1CMiZfTd39sPvw0OlkGSjg06smWKA==
X-Received: by 2002:a17:902:9a4c:b029:d8:e4c4:3075 with SMTP id x12-20020a1709029a4cb02900d8e4c43075mr8720147plv.39.1605567361569;
        Mon, 16 Nov 2020 14:56:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b82:: with SMTP id y2ls6977663plp.5.gmail; Mon, 16
 Nov 2020 14:56:01 -0800 (PST)
X-Received: by 2002:a17:90a:1705:: with SMTP id z5mr1251318pjd.129.1605567361032;
        Mon, 16 Nov 2020 14:56:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605567361; cv=none;
        d=google.com; s=arc-20160816;
        b=au0T2FUTs1PAz158wa28O7JtF/wgxcJphCDEfrcqxkM+6XdAzPr4solpr7nv/N01AY
         CMcXQWnY9YrCzCSimCS4g0BrP6DHCjdrBVkGeFr34ByN4i/gLk7nrOFhWUztm7UTy0PK
         94zM1ddHYoTXzipwMMQ7WPQUQK+sH7IprBN2LQphCHnicSp+7Aj9sGrDHGypjccaHgFM
         5rb42bQ52eoIuLhYlDbRfq75/1NYtcv0BIA9OYJueJhdpaNacNnFOiPbmWv3iAnx/A4t
         +os4Ew5V+3eZ58IL8gMayTEsTtfIaIYLKVvxzyxpJfilBNoLDsvC6dgAe08iX/ipF5zr
         tSMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gGQQSbaDVAU1vlvpaceSFbxVHAcyF7FfLo2QxzhNlZQ=;
        b=GadoiLYznERkgQhDC3wqIhn7n3B35dajL3TGDBU4DgfGrYmu5ibLCGu0yYxYFM8Bzk
         Ss8hemGk/btNj8S4ZRlKMZMKsjVYceJXDRVp6WAYR+kV1wrE7hchTD9W8Lu7BilDiJM/
         1qIpTjtOV7o7p+M5npSk/XjqPbPcCML4wUc6cVuFzpjCK8inX+GkEfzXdhXakP5B94dg
         9TLnNfrwHzfJnqBSC4mH3k9y+SIVG0zULF+TDI7BVsdER1DmGlQMl1QOtyyAeUFh6teD
         dmNajY8IvWbvdcHFNKaFLvy8ncd9VOCx75QKyjOH4vBUWgB2t6ph76ScTI5ie7VdZu/A
         7LQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=C5BO4byd;
       spf=pass (google.com: domain of willmcvicker@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=willmcvicker@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u133si1122909pfc.0.2020.11.16.14.56.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 14:56:01 -0800 (PST)
Received-SPF: pass (google.com: domain of willmcvicker@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id m9so4955457pgb.4
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 14:56:01 -0800 (PST)
X-Received: by 2002:a63:581b:: with SMTP id m27mr1242198pgb.204.1605567360502;
        Mon, 16 Nov 2020 14:56:00 -0800 (PST)
Received: from google.com (15.4.198.104.bc.googleusercontent.com. [104.198.4.15])
        by smtp.gmail.com with ESMTPSA id a17sm17007387pga.56.2020.11.16.14.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 14:55:59 -0800 (PST)
Date: Mon, 16 Nov 2020 22:55:55 +0000
From: "'William Mcvicker' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Andrei Vagin <avagin@gmail.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, kernel-team@android.com
Subject: Re: [PATCH] arm64: Fix off-by-one vdso trampoline return value
Message-ID: <20201116225555.GA160862@google.com>
References: <20201112001422.340449-1-willmcvicker@google.com>
 <20201112101204.GA19506@willie-the-truck>
 <20201112185136.GA585063@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201112185136.GA585063@google.com>
X-Original-Sender: willmcvicker@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=C5BO4byd;       spf=pass
 (google.com: domain of willmcvicker@google.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=willmcvicker@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: William Mcvicker <willmcvicker@google.com>
Reply-To: William Mcvicker <willmcvicker@google.com>
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

Hi All,

After digging into this even deeper with Nick, we found that the underlying
issue is with ld.lld not carrying over the st_type for the VDSO_compat* symbol
assignments in `arch/arm64/kernel/vdso32/vdso.lds.S`.

From my Android Common Kernel 4.19 build:
$ llvm-readelf -s arch/arm64/kernel/vdso32/vdso.so.raw | grep thumb | sort
    26: 0000094d     0 NOTYPE  LOCAL  DEFAULT    11 VDSO_compat_sigreturn_thumb
    28: 00000955     0 NOTYPE  LOCAL  DEFAULT    11 VDSO_compat_rt_sigreturn_thumb
    37: 0000094d     4 FUNC    GLOBAL DEFAULT    11 __kernel_sigreturn_thumb
    38: 00000955     4 FUNC    GLOBAL DEFAULT    11 __kernel_rt_sigreturn_thumb
     8: 0000094d     4 FUNC    GLOBAL DEFAULT    11 __kernel_sigreturn_thumb@@LINUX_2.6
     9: 00000955     4 FUNC    GLOBAL DEFAULT    11 __kernel_rt_sigreturn_thumb@@LINUX_2.6

Fortunately, this has been fixed by llvm here: https://reviews.llvm.org/D86263.
So for kernels that use ld.lld and the VDSO compat sigreturn trampoline, they
need to make sure to upgrade their toolchain.

I hope this thread helps anyone running into this issue in the future.

Thanks,
Will

On 11/12/2020, William Mcvicker wrote:
> Hi Nick,
> 
> Regarding llvm-nm, this extra thumb +1 is noticed after porting
> https://lore.kernel.org/linux-arm-kernel/20201013033947.2257501-1-natechancellor@gmail.com/
> to the Android Common Kernel android-4.19-stable. I'm not sure why using ld.lld
> causes this difference, but this proposed patch ensures that we don't rely on
> the nm tool used.
> 
> Will D.,
> Regarding applying this to some stable kernels vs backporting 2d071968a405
> ("arm64: compat: Remove 32-bit sigreturn code from the vDSO"), I am hesitant to
> backport commit 2d071968a405 due it's dependencies. For 4.19 at least, I would
> also need to backport these:
> 
> 8e411be6aad13 will@kernel.org  arm64: compat: Always use sigpage for sigreturn trampoline
> a39060b009ca0 will@kernel.org  arm64: compat: Allow 32-bit vdso and sigpage to co-exist
> 1d09094aa6205 mark.rutland@arm.com  arm64: vdso: use consistent 'map' nomenclature
> d3418f3839b66 mark.rutland@arm.com  arm64: vdso: use consistent 'abi' nomenclature
> 3ee16ff3437ca mark.rutland@arm.com  arm64: vdso: simplify arch_vdso_type ifdeffery
> 74fc72e77dc5c mark.rutland@arm.com  arm64: vdso: remove aarch32_vdso_pages[]
> 
> I have done this in my local tree and verified it fixes the SIGBUS error I'm
> seeing; however, it seems a lot cleaner and safer to just patch the VDSO_SYMBOL
> macro.  Please let me know what route you prefer. I'm happy to backport all of
> these if that's the recommended approach.
> 
> Thanks,
> Will
> 
> On 11/12/2020, Will Deacon wrote:
> > On Thu, Nov 12, 2020 at 12:14:22AM +0000, Will McVicker wrote:
> > > Depending on your host nm version, the generated header
> > > `include/generated/vdso32-offsets.h` may have the bottom bit set for the
> > > thumb vdso offset addresses (as observed when using llvm-nm). This
> > > results in an additional +1 for thumb vdso trampoline return values
> > > since compat_setup_return() already includes `vdso_trampoline + thumb`.
> > > As a result, I see a SIGBUS error when running the LTP test
> > > syscalls.rt_sigaction01. To fix this, let's clear the bottom bit of the
> > > vdso_offset in the VDSO_SYMBOL macro.
> > > 
> > > Test: LTP test syscalls.rt_sigaction01
> > > Fixes: f01703b3d2e6 ("arm64: compat: Get sigreturn trampolines from vDSO")
> > > Signed-off-by: Will McVicker <willmcvicker@google.com>
> > > ---
> > >  arch/arm64/include/asm/vdso.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/include/asm/vdso.h b/arch/arm64/include/asm/vdso.h
> > > index f99dcb94b438..a7384379e8e1 100644
> > > --- a/arch/arm64/include/asm/vdso.h
> > > +++ b/arch/arm64/include/asm/vdso.h
> > > @@ -23,7 +23,7 @@
> > >  
> > >  #define VDSO_SYMBOL(base, name)						   \
> > >  ({									   \
> > > -	(void *)(vdso_offset_##name - VDSO_LBASE + (unsigned long)(base)); \
> > > +	(void *)((vdso_offset_##name & ~1UL) - VDSO_LBASE + (unsigned long)(base)); \
> > 
> > I don't think we need this in mainline, because the sigreturn trampoline
> > is just a bunch of .byte directives and I removed the sigreturn code from
> > the compat vdso in 2d071968a405 ("arm64: compat: Remove 32-bit sigreturn code
> > from the vDSO").
> > 
> > Might be needed in some stable kernels though (or we just backport the
> > patch I mentioned above)
> > 
> > Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201116225555.GA160862%40google.com.
