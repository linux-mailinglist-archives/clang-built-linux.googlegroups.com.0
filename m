Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBNVWL6QKGQEYRTFWUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB412AFD72
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 03:14:30 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id t72sf1146480vke.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 18:14:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605147269; cv=pass;
        d=google.com; s=arc-20160816;
        b=fMdsoQdH/7sPmUXu2H8q5Cc0gkZopyLHHG/MOpvz3sewvEKWJbSzc+C14TzyofrB2T
         9Yt+uguxCYK5D5CDI9mSY0a0wIJzFoDYW2d21SbxXDTr9D+dS2lh3c9sXOXy7sm1Q2bA
         RboNKJpY7BQxYQlsTCM1iasJuTp04h4e0u+8p+r/hnsO29jxmQOvdCJiD4Q9JN9yBjtX
         t2LNI1f5aK6cDTUcAM/BuUr7jvvZaoN3mPQ+8BgI8NKdbYPqMTE1IEVw7mWZZjmUiRv8
         D0HcyoJGYhvlFgT5X8BhUz/7SDGvV/iMB6lHtxnIZqgYRiVs1QfCDojdVjQg5JFbKO7I
         JNRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=t72owSAbWBr9746nUYMkY7tgWjrX9JkSOjO9ThT3+mY=;
        b=y0WkqFsaiTZzK19duBMAyrGCzU39cqRoJNiBkP+OFcv8qePXGEl5q3O/VaYx1dl95W
         2IMLTrwJ0JXZKOLuX/gmfCYj3r2ySHJvNMw13gzXJqdRY8LWUg887TUytFvZtIUnUa1J
         xAGNFb1gZh0uurKpNkRQxqLLfT3a/u/mjT0OP9D9COtytXiv5kXHnk01FCrSdrvrY9KD
         0fEBUXevtJDdF29qcCtpOGiszVaQ+FVY5zxyOgr5Y8KRDrT3oVDcnHz4SU3tAMhDODy1
         tuuX+8dpsGG7JtBkNA/V8WbfzRqgeb7jonOQuzZqJCo5EP936xldLiJcuvmWxg2qZ0L0
         zxmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KRuBmPx0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t72owSAbWBr9746nUYMkY7tgWjrX9JkSOjO9ThT3+mY=;
        b=ASGJPL/rh6+eJucjHsSvgYPiXCNbY6C+bbjMBJeJDb67BBainFL9zpx0trBR9jRQJH
         23oDdc9uCtpLvgAZdm4LrrrCeQEGrnQhqrKNcaI/HlBvJi/awoYu1G7m5a2u8WWbpRJ0
         o81p7KyMefIZHg2oJYsdWJ5AqSGwOtyGb44cn7xQSqvsGTIjpVaiqXWV21U8KKOEmqcs
         1O3e8W0pb0yqXbeVY/3rFI4jOwGKraLfhwkT8lGiRpDqEByKSVabLVG8/ovLlnapuBp2
         HIQGJAAUUHNVuuEkVPQQ0aFzmKmxIauukjS9PvYRUfTo+HLFEIQbew+9Wvxl6t86CWo7
         sLqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t72owSAbWBr9746nUYMkY7tgWjrX9JkSOjO9ThT3+mY=;
        b=WCQseAVYkGHlHk39kBsY6x/wCP4BuZq7WIRpIi4fPYsPhHtzqPsdpHr7VBoAmdPmoX
         jZM5Zaq5Eo3nd2uoToVNeIlvcMChyWzQMJBJHThaiz4sveGGspESUxK2YsBefhxEpkKw
         EMMRCLohCtPXJ8177fre01TgnKRauUMPeqmosRizgUXfyr19ZO21frc9GrM3eKmEz1xS
         n5MoOrhElfPX9tADMcE40tGEPh+iQ4ZOOF9r7C6se3mzgrNqWCLCHlcm9Gb9BqwhFapc
         dyymNA/Kf7zwCoxlGXhDxBBKYsmQlGjSPHXKXGwRsDhA1/ntp2sKtPB77JuZf8BCp/XV
         Qqrw==
X-Gm-Message-State: AOAM532r6X1ymSecpFny23J4NRAexB72XAfmahc50GvQmj6tFYJ3t4PN
	5kwA9liHOlFA4gkExs6LI+A=
X-Google-Smtp-Source: ABdhPJxjgbO0dOQ0Zu3lT0wCIA2MNRLYMw7uHEn8Akx0pOZync6DslsrMJgSiWR+wwrL27nmORYfIA==
X-Received: by 2002:a67:f858:: with SMTP id b24mr18124198vsp.38.1605147269427;
        Wed, 11 Nov 2020 18:14:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9bcf:: with SMTP id d198ls89208vke.9.gmail; Wed, 11 Nov
 2020 18:14:28 -0800 (PST)
X-Received: by 2002:a1f:a296:: with SMTP id l144mr2525080vke.11.1605147268923;
        Wed, 11 Nov 2020 18:14:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605147268; cv=none;
        d=google.com; s=arc-20160816;
        b=MfNqsWjOuXj2ALw3p6GZ/NOy8MdQPWjvVejGXK0+ESnOSyXtnkP8zMYLuCW513v6K8
         DJp9SWCGiet8WPOdoi5YLuxlhcsB2WqX7kpH5fBZlXHX1LDS4MANKwxRvZvX8MXsUnND
         PQLHL/DyPFJQFTD0w4wxDrqbQTMRaJ9HKeuh/ZEqjlSoFL8FfRjCMoDQ5mjE87QYeadB
         LtWRzzsnEgveJJpd9lphEiShxM/nVgpkaMjXMBPo4jFOv5+KpTCBNbGgqaL4mtxZ/yZs
         1pcDDDl+VN3LqfzPbpbd810i89abqy9r2czVQdpMQlz+uq0XINprjjwT/c5TwB1QCy7O
         zUqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=f79nMHVN8pv5/YKFzlWN37GawHBvq0Jjxuf2DH5PRsQ=;
        b=Q5RKkoFWk8fcRq0Xc1Di2CGznmm0NR6v8l9SQGfG2Fwm/rbJ2QMKGvnYd1qTpOx1x3
         wW6HB6uPUPm7Bf8fcEb73epjSb9noym0iOT2YmTJFUIqrIYsaXGta+sIOqjY0nBzCCEd
         2dw5kQazVb1SORsazZaBRvfxwwJMunl59i6/bGQlrHSwVz9ysYEBcrmxm4vuYFKctjQr
         X/z6cEvY7Ma3005KEbsTrUgOJsToH5zVuv4vBOh5eQi7wyO1vDdDFqVo/qrcnTkK7OCp
         WGz2Cth8DBbC4JTUShly2arKEOC7CLNteVqBWHHWbqFdQmAE4wYWphK/3wyK+oRz4kgl
         AnEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KRuBmPx0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id v18si261394uat.0.2020.11.11.18.14.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 18:14:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id v12so3039996pfm.13
        for <clang-built-linux@googlegroups.com>; Wed, 11 Nov 2020 18:14:28 -0800 (PST)
X-Received: by 2002:a17:90a:4881:: with SMTP id b1mr6886626pjh.32.1605147267894;
 Wed, 11 Nov 2020 18:14:27 -0800 (PST)
MIME-Version: 1.0
References: <20201112001422.340449-1-willmcvicker@google.com> <CAKwvOdkDG2wt=ZT93GT7r60_qXn=tdW_zWiJ1Gr5JVdRvcU8uw@mail.gmail.com>
In-Reply-To: <CAKwvOdkDG2wt=ZT93GT7r60_qXn=tdW_zWiJ1Gr5JVdRvcU8uw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 11 Nov 2020 18:14:15 -0800
Message-ID: <CAKwvOdnjMhjxawxNembM+XrMctitm13Cvh8gbMPEcXiPBhacPA@mail.gmail.com>
Subject: Re: [PATCH] arm64: Fix off-by-one vdso trampoline return value
To: Will McVicker <willmcvicker@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>, 
	Andrei Vagin <avagin@gmail.com>, Dmitry Safonov <0x7f454c46@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KRuBmPx0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Wed, Nov 11, 2020 at 5:00 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Nov 11, 2020 at 4:14 PM Will McVicker <willmcvicker@google.com> wrote:
> >
> > Depending on your host nm version, the generated header
> > `include/generated/vdso32-offsets.h` may have the bottom bit set for the
> > thumb vdso offset addresses (as observed when using llvm-nm). This
>
> Sorry, the commit message seems to imply a bug in llvm-nm, but I don't
> think that's the case.  If it is, please, send us a bugreport.
>
> $ aarch64-linux-gnu-nm arch/arm64/kernel/vdso32/vdso.so.raw | grep thumb
> 00000968 T __kernel_rt_sigreturn_thumb
> 00000960 T __kernel_sigreturn_thumb
> 00000968 t VDSO_compat_rt_sigreturn_thumb
> 00000960 t VDSO_compat_sigreturn_thumb
> $ llvm-nm arch/arm64/kernel/vdso32/vdso.so.raw | grep thumb
> 00000968 t VDSO_compat_rt_sigreturn_thumb
> 00000960 t VDSO_compat_sigreturn_thumb
> 00000968 T __kernel_rt_sigreturn_thumb
> 00000960 T __kernel_sigreturn_thumb
> $ /usr/bin/nm arch/arm64/kernel/vdso32/vdso.so.raw | grep thumb
> 00000969 T __kernel_rt_sigreturn_thumb
> 00000961 T __kernel_sigreturn_thumb
> 00000969 t VDSO_compat_rt_sigreturn_thumb
> 00000961 t VDSO_compat_sigreturn_thumb
> $ /usr/bin/nm --version
> GNU nm (GNU Binutils for Debian) 2.35.1
>
> Would you mind amending the commit message to not imply that llvm-nm is broken?

Testing another set of configs:

$ aarch64-linux-android-nm arch/arm64/kernel/vdso32/vdso.so.dbg | grep thumb
00000950 T __kernel_rt_sigreturn_thumb
00000948 T __kernel_sigreturn_thumb
00000951 t VDSO_compat_rt_sigreturn_thumb
00000949 t VDSO_compat_sigreturn_thumb
$ /path/to/older/aarch64-linux-gnu-nm
arch/arm64/kernel/vdso32/vdso.so.dbg | grep thumb
00000950 T __kernel_rt_sigreturn_thumb
00000948 T __kernel_sigreturn_thumb
00000951 t VDSO_compat_rt_sigreturn_thumb
00000949 t VDSO_compat_sigreturn_thumb
$ /usr/bin/nm out/android-4.19-stable/common/arch/arm64/kernel/vdso32/vdso.so.dbg
| grep thumb
00000951 T __kernel_rt_sigreturn_thumb
00000949 T __kernel_sigreturn_thumb
00000951 t VDSO_compat_rt_sigreturn_thumb
00000949 t VDSO_compat_sigreturn_thumb
$ llvm-nm out/android-4.19-stable/common/arch/arm64/kernel/vdso32/vdso.so.dbg
| grep thumb
00000951 t VDSO_compat_rt_sigreturn_thumb
00000949 t VDSO_compat_sigreturn_thumb
00000950 T __kernel_rt_sigreturn_thumb
00000948 T __kernel_sigreturn_thumb

(That llvm-nm sorts the output makes this trickier to follow). But
shows that only host GNU `nm` differs.

>
> It might be of interest to find out why the host `nm` was invoked,
> rather than $(NM)/$(CROSS_COMPILE)nm.

Possibly commit 7b7891c7bdfd ("arm64: vdso32: Fix '--prefix=' value
for newer versions of clang") missing from your tree, but I fail to
see how that would mess up or invoke the incorrect $(NM).

>
> > results in an additional +1 for thumb vdso trampoline return values
> > since compat_setup_return() already includes `vdso_trampoline + thumb`.
> > As a result, I see a SIGBUS error when running the LTP test
> > syscalls.rt_sigaction01. To fix this, let's clear the bottom bit of the
> > vdso_offset in the VDSO_SYMBOL macro.
> >
> > Test: LTP test syscalls.rt_sigaction01
> > Fixes: f01703b3d2e6 ("arm64: compat: Get sigreturn trampolines from vDSO")
> > Signed-off-by: Will McVicker <willmcvicker@google.com>
> > ---
> >  arch/arm64/include/asm/vdso.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/include/asm/vdso.h b/arch/arm64/include/asm/vdso.h
> > index f99dcb94b438..a7384379e8e1 100644
> > --- a/arch/arm64/include/asm/vdso.h
> > +++ b/arch/arm64/include/asm/vdso.h
> > @@ -23,7 +23,7 @@
> >
> >  #define VDSO_SYMBOL(base, name)                                                   \
> >  ({                                                                        \
> > -       (void *)(vdso_offset_##name - VDSO_LBASE + (unsigned long)(base)); \
> > +       (void *)((vdso_offset_##name & ~1UL) - VDSO_LBASE + (unsigned long)(base)); \
> >  })
> >
> >  #endif /* !__ASSEMBLY__ */
> > --
> > 2.29.2.299.gdc1121823c-goog
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnjMhjxawxNembM%2BXrMctitm13Cvh8gbMPEcXiPBhacPA%40mail.gmail.com.
