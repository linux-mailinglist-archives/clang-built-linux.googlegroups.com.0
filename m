Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVPEX75AKGQEV4ZPRRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B096025B463
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 21:28:22 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id r3sf67678ooq.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 12:28:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599074901; cv=pass;
        d=google.com; s=arc-20160816;
        b=kHOwaHn3JD4Bk0nPOoyDIGwmgKcWcY+fKip7k4GQh2TCIIgj9ifoz7DB5je6Ls1qwP
         qZqTcb2ikZplbHkP3RT3lDMqWTRKfdC2qqadQ01hOLdhxwPr2zu9XGkuCotZzs8Qkv0Z
         D7xxV2a0DJQo/EHB0VkGr/32cuJnAJRlIGCN/W+vP5R8VEpHrPkEWmRjkJDRufLNUaHi
         TOVIuhgCsuCR8QoebMcdIGt8YFgKgBb2Jpczls6a4t1xGiRb/Tx6Vd89/bsFHrRBgkOl
         VU0ic3lwXKoJ95Rg2yZolUEgONaMw6UxEjCbWzm3TGn2Zhw1fhJVtRL4gaBZwkWjdpLG
         ljpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oMX5JxfV/N2nDWyoOfhcVKsOZ8Wg3p7rcB7NH73PTfI=;
        b=JAGwLUFbe0eFXAr2Yq3u0UHaemqIkg9KGdkFHyqdlURN2Gxkw+J2/W87hfXjXFasxN
         lqeeHlUSYsUXZQQ28qbSXr3N6mFTRNs1V9B6U1tKfjAuzljzZ7EjD1SV9KlMsVzJ9qA/
         9OqMiVMU9L4Vbb7GQRgv1gVXDV2Khfw71B62r36+PYIpTb0ie0LFthSW8VN2q0l/oqeZ
         AnBopHp+iSn6mAFfXA86kjRwxGEt0M5nidc428F8pFlYXUv6L1nTN1S8S7M41oCR7zgW
         mGcokqGiuSBH8K8l7F/m1SvupkBFsp5r5eibIcPisNQL1FBq2U1SDu6Zswb08LltFF1u
         ItRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oxn45NiK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oMX5JxfV/N2nDWyoOfhcVKsOZ8Wg3p7rcB7NH73PTfI=;
        b=Jlp8Jhv3Rhfelt3yrDRz3ME98GiO6mR+tvMlsidbyGwURunmFeiIKslVoqK72bE26u
         f0fhLnXL1ugkk2EF81jAr2KioW2I7ZoQisVT3f7xv7pym3QeybADsYtbtlwHpmsFoybU
         oSwW8Y4+NasltLoL5w8hA2z3f1TCTryNJG9+78BAEyENvB16uvAtugDYuS13MQeZcFqD
         dRvHzbiM156o/SMiew1npT9YtCgPNZ0pBt0iqPGT6itIRLA3XVLgXdpTk+GB+8ACnmPs
         WN41ntBgwmxWeURJ2fzdFcTR4y/LxZkr5aV4Sx+1Y29W3uKJu4kfxAs5Xaj4s/qWsBYB
         reYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oMX5JxfV/N2nDWyoOfhcVKsOZ8Wg3p7rcB7NH73PTfI=;
        b=qZNTvLtei6WraZYo3ASjH0p6RXBEBoP41Exqhkk8NTayRLu1PN5imBxkSvhvFWub9X
         nauqiLMxU68KZFCez/QrTcS+xXstiliTWI2VpM7V1ymG2bSTWRKZWH2WQFPh6usJ1qYQ
         jWXRPCAEX2X4lgDhiCCtyCHyoe3xhgXA29bsfPyT93I8aBA1SAokznkiKFVpwyHMuF/T
         GbBIhRbNj0fnepg6he0QN+nc0RfLjNZHJNiXago1fE4cmnn2PoNIla7mF2XbokHIfu6B
         SsN8h/UwLPR/yIH+Wl3/W2meSA/EqbANA1hCs5u0rjeqy8AV2KcCxVUdVDiqQM9kiCeM
         cdJg==
X-Gm-Message-State: AOAM533Vs5lN2iJ2fq3fLT0Sfd9tOzw1t002ers93OtuBtsyiyJwqHM3
	7Xmp0/PjQ6mH+eNv/bLe/kI=
X-Google-Smtp-Source: ABdhPJw7dJSMLGXQq3jZ1bWZ4ZuvvrP6Kp1d9dhJQ+icUCF+C7nT8EDTyInR0adaSsCPcvWFa8lEGA==
X-Received: by 2002:a9d:3bf7:: with SMTP id k110mr6464621otc.11.1599074901680;
        Wed, 02 Sep 2020 12:28:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:42c5:: with SMTP id p188ls719829oia.3.gmail; Wed, 02 Sep
 2020 12:28:21 -0700 (PDT)
X-Received: by 2002:aca:3954:: with SMTP id g81mr3118547oia.142.1599074901258;
        Wed, 02 Sep 2020 12:28:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599074901; cv=none;
        d=google.com; s=arc-20160816;
        b=Rnit2+DiOL5297VhYsVgt8AoHi/plfuiZyBDk0IM7IP2gKk+NHEgGoC//SUzb9PIJK
         bCZgDsWobeiDnvrm5GFWhLUJhvmoQhopM0AcDcwq1IDeczP7LW0Vhh92prXuWI+OGQAE
         OMd3Ak5+9eMOVoPEivoNy9zpSbGde1lazNP4OKttlyxXn0/RfIZbKAHrTzDzrlcwd76+
         xCh0ZUx9Pwn2UrljPImJiUU5e2E2vDwDn176kKo91zO5VssmwRyP9Smh+dc6Aq+gSNWK
         CdcrjgqeQ43kPtaCi5kmgkzGZ83v30LJJtqNkTjK45BKukJjb+b6wCHM1H+cjC75pEW+
         1VGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+ow1ubksHg2fW7r+dLInAj3bLacIWDt2iKSFX/lPoWI=;
        b=zDyLyddBuAX4x5L48sxEVflWIs9mIvwexZ/GiEiHKih6GazZobLj2nmBmE09vF8lMw
         V+JBQJixP/gDsoq2CyrrR+LuDnhCL7yWU3nfHe+RWKTGjOJa5bkwKztV7kB/w5/PW6sm
         v8Rl6Z4ZcTBHaoOmUvoEQUQBmYHgz+mujIBZ3fwH9+vZNRaqHDZxhTdLRmx1OXVdgVi0
         +ekeQbtqS0SUT498AH3W5IsqfrraK4uV6diuJLXOBHHIFWs+ot3VGUH31yzxXIisAgXG
         fTHAL2zcFNiIXDuvEsnnzTQ/NH/kiANWkVYDu6rt2Aq5Rq6TivkCuKUKCCSOmUOIvIMa
         CJog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oxn45NiK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id m19si39517otn.1.2020.09.02.12.28.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 12:28:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id d19so159103pgl.10
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 12:28:21 -0700 (PDT)
X-Received: by 2002:a63:9d09:: with SMTP id i9mr2941158pgd.381.1599074900374;
 Wed, 02 Sep 2020 12:28:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200901002326.1137289-1-ndesaulniers@google.com> <202009011255.5BBF4F31F1@keescook>
In-Reply-To: <202009011255.5BBF4F31F1@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Sep 2020 12:28:09 -0700
Message-ID: <CAKwvOdmq7d4PhKH28HhbiNDhk4qoAT1n0TobQiNe+7_PapVTYA@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] set clang minimum version to 10.0.1
To: Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oxn45NiK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Tue, Sep 1, 2020 at 1:01 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Aug 31, 2020 at 05:23:19PM -0700, Nick Desaulniers wrote:
> > Adds a compile time #error to compiler-clang.h setting the effective
> > minimum supported version to clang 10.0.1. A separate patch has already
> > been picked up into the Documentation/ tree also confirming the version.
> >
> > Next are a series of reverts. One for 32b arm is a partial revert.
> >
> > Then Marco suggested fixes to KASAN docs.
> >
> > Finally, improve the warning for GCC too as per Kees.
> > [...]
> >  8 files changed, 16 insertions(+), 27 deletions(-)
>
> A nice simplification!
>
> Reviewed-by: Kees Cook <keescook@chromium.org>
>
> (I do note that for Ubuntu 20.04, they're going to need to do an LLVM
> 10.0.0 -> 10.0.1 bump to do kernel builds for their latest LTS...)
>
> --
> Kees Cook

I'll collect relevant tags and fixup feedback and send akpm a v3,
maybe this afternoon.  Thanks everyone for the reviews+feedback.

--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmq7d4PhKH28HhbiNDhk4qoAT1n0TobQiNe%2B7_PapVTYA%40mail.gmail.com.
