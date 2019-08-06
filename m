Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGFDVDVAKGQEE2MBURA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDA183DFD
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 01:47:36 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id s25sf77189794qkj.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 16:47:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565135256; cv=pass;
        d=google.com; s=arc-20160816;
        b=OkpNyA3Xvi5HeOCXLAxJyrPPv5zhOKGvhFdDupcpn2UrtzpP6p8BvkP4mZ3LqdCbAl
         ah0UZZxyA+nUC+DGNZ7a1Fn0dxJUffHsm/20mFs/aRIjaknGB1dZPknjy8m9npwLynDY
         rmK6F47gfTOM5rZKyWcsy0HJ3uJl6P6CtpGCKesi5KgI+HovBZgW9Zc35WBMreFu5Oyu
         kQBcf/l6jSNqWGBEazmtWxatuw50Mcn/dt2uR7DYX1JcKHraTLFivzOAZFmZP3vYL/98
         VeAxxWVxiVrxO2nWqCutSCsC+qKItHOmfQXPnvyD7OsFfPhTrGSs2vlmK+HW2ehP1AvN
         DZ+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JrXS3aJHHAUMRmD+cUjVsI/4ffiUkeYhqAaKwQXIh+A=;
        b=wQsrm1S4C4Uy6WJdNxkoZhcERswbHaALNH0z1V+HHE0aayIANh19LBLW4gGo9wnxCz
         KJa8VZmMHWcNslUQd4nvlHEtOjnIc/McfV6iix2qYH1631xkkPImvrJ1Kpm+gUQTYOX2
         vQYGsrkyVwmdehCRXVcY5zf+iJFzDRMH2orwROeXyPdKR4UM9GeBDPuqB5+/J6/qOe1G
         mXl2QvignGH5P0uPWXOTj8S3mvCbsRZZFw/ksjKbqL6GF3f6UEouTIp0nHBJX8YaXN7w
         cJkIL3FGkGNetfSMi6kv8oRArDnrURg0rSWSUV2+jsHpGelbK1RU7KJO+/FIDfAyFSUG
         FA9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QUNWt01C;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JrXS3aJHHAUMRmD+cUjVsI/4ffiUkeYhqAaKwQXIh+A=;
        b=JXT5WVasWAOKIPDODZ0PP9T2k7bJaOMQYQ1FJUU+OY5OOg/Zcz18zcHsO5n6GjXjdR
         7hihMn56NVr2Sd78e8CvNSj3mVW4uk8xSuVREOL3al6rv3CuYC9it0En5vsfPcaRkgUL
         O/mp//IpU3DF7hEye7UgDtBvE5QX9LNAMqMP/c7IVQdBtea8dwGxWDgWZt+vtAiFQQFR
         CM20TeNNmezvLWJZ/ONaYr6fyqryPulcsJKCzHwyxeQA4wmCvvyl1Vktt2+l/mD1KIsz
         QPNytEKF0r4tkiFhiaDI5+KRSQt1vpBiwzIqmAWzPSbjMwxJ+N9S8yPSOm81bZZI2TFQ
         mMEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JrXS3aJHHAUMRmD+cUjVsI/4ffiUkeYhqAaKwQXIh+A=;
        b=LwtcZOgUnPvqMgKbKYAIQvxiVv+CqH+2vz//t0/6vzKYlKxMD8Nt93/WM+EaTLd30u
         NeEo69MwRq4FL1lqjLhbqKNZYGbPZY+UFc8bnu8tlH5jQmWy76jBfsfE4zupQS9T0Pax
         jb6srwYDfwxyVks/1v0UqKQ2OPvMRW20/f5uLuJM2eMoiiTMwMSizIS/Tcx3vkju6mdd
         UzA6g8CogFJ1r3BA5lRZpEXlY608NrK2AFkPIENqcOksMXq1PaO1S7rOjn6UHOQ4CRu5
         krOojcYddDgCIgBtaZkcTOIxXzqKBJFSCYHJzKwL3K0qVza9zmVfg4kydZgNYUY9OZnX
         4Hrw==
X-Gm-Message-State: APjAAAWB3MnosdUQodVX0c6VGjYpsxVBC76QmPd/qAWRvHaGjl7OCGWh
	mR5oggRmOoceYqSrx/eq8jw=
X-Google-Smtp-Source: APXvYqw6gSg+YihIkL1jgLUVt8Qr3nSNU5apBceCMrbhq1IUGGQ2AdMdWVTX2J0mlXZ8xsxjWtzDMQ==
X-Received: by 2002:ae9:f409:: with SMTP id y9mr5772120qkl.244.1565135256095;
        Tue, 06 Aug 2019 16:47:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:f511:: with SMTP id l17ls382553qkk.6.gmail; Tue, 06 Aug
 2019 16:47:35 -0700 (PDT)
X-Received: by 2002:a37:48c7:: with SMTP id v190mr5846327qka.350.1565135255883;
        Tue, 06 Aug 2019 16:47:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565135255; cv=none;
        d=google.com; s=arc-20160816;
        b=k0/X3A/4n+oy1ShFtlzoHuCOCIqVcVrcBdMt7113WwtzcK16I4Qy5bV5q0KPXD8+7z
         zXtuRlyzBQuI5BG1pOEgkwHCQoHg5g03513fWZlfshxikQcg2KfaNdGm+w/RBV+fwSt5
         0pECS2FsWZjiYv/1ApxL9SJahwnW/GFSUcnfptrujJpGziyyvWGvlnwFuNJjhqNt2f5j
         QQ1Z1fYb2WP3I7GVdAM+MDr0go3rDVbh0ard/RZhcwGFXXWQTyPyK/+c0krdo5KVd0Z2
         j9YVwwFXUxwc05VGWLYJOBJL3BFFLnhz7HRe4/4vcw9M9KN/XjD1mYWFnsiMZaVlolWC
         8NDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aV5lAZFWsn30YUfYsELPUhW9S7mbkBmRP/hMNyYfqZs=;
        b=dWqTTsCy+/xDKJQYb0R6+ldlVrxPOEMZgVo9kN1LSsYdwyzeGssrl/tSFNpdGpL4jM
         DXr2pH57P1BubCX8ODXqrW9QY9bWu0oFB/zaHeQx7yWeiZVFB2z4Pnc8KbA/GSozFLe6
         JQYEwQj4J194FNctOy++rBw8Z6BVzbryvpGsoEFm8PlMCKNoSI/KRTviMOBihEcJ4LoM
         ByXoDQ2zC2Ck/FWdqhdN62uTXmRYajB7A5UTUnW9YTdPIK8XX5g5swCFulwJkVZjm+4A
         5fucaeRUHiIoQ7rWLo4ZNnXwM/iI9wEIcwaAIgUnq6k6VnhIaSqBuXYY3+sxHbhLVQHq
         HThA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QUNWt01C;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id u204si3966557qka.6.2019.08.06.16.47.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 16:47:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id t14so38469336plr.11
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 16:47:35 -0700 (PDT)
X-Received: by 2002:a17:902:9f93:: with SMTP id g19mr5425132plq.223.1565135254602;
 Tue, 06 Aug 2019 16:47:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190806183918.41078-1-broonie@kernel.org> <CAKwvOdkvFowCWP6cpKoMOz+EWojBXJWs3TzuTvn4180sVu4ayw@mail.gmail.com>
In-Reply-To: <CAKwvOdkvFowCWP6cpKoMOz+EWojBXJWs3TzuTvn4180sVu4ayw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 6 Aug 2019 16:47:23 -0700
Message-ID: <CAKwvOdkBhuzJ9L6L=+_PxSc4u3soB0VsiNUsjt=J55LgdYddnw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
To: Mark Brown <broonie@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Tri Vo <trong@google.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QUNWt01C;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Aug 6, 2019 at 2:25 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Aug 6, 2019 at 11:39 AM Mark Brown <broonie@kernel.org> wrote:
> >
> > Current boot tests with clang built big endian kernels in KernelCI are
> > showing problems with the kernel being unable to interpret big endian
> > userspace. This is a bug and should be fixed but for now let's prevent
> > these kernels being built, we may end up needing to add a version
> > dependency on the compiler anyway.
> >
> > Signed-off-by: Mark Brown <broonie@kernel.org>
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/628
> Acked-by: Nick Desaulniers <ndesaulniers@google.com>

+Huck
Huck notes that the device eventually boots in qemu, it just takes on
the order of 165 seconds to boot.  What's the timeout on KernelCI?

I think if we can determine why we see:
[  144.626755] request_module: kmod_concurrent_max (0) close to 0
(max_modprobes: 50), for module binfmt-4c46, throttling...
[  149.752826] request_module: modprobe binfmt-4c46 cannot be
processed, kmod busy with 50 threads for more than 5 seconds now

a lot, then we don't actually need to disable this outright when
building w/ Clang?

>
> > ---
> >
> > The clang people (CCed) are aware and looking into this.
> >
> >  arch/arm64/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 990fdcbf05c7..1c32d9889e0f 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -813,6 +813,7 @@ config ARM64_PA_BITS
> >
> >  config CPU_BIG_ENDIAN
> >         bool "Build big-endian kernel"
> > +       depends on !CC_IS_CLANG
> >         help
> >           Say Y if you plan on running a kernel in big-endian mode.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkBhuzJ9L6L%3D%2B_PxSc4u3soB0VsiNUsjt%3DJ55LgdYddnw%40mail.gmail.com.
