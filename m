Return-Path: <clang-built-linux+bncBDYJPJO25UGBB35D7WDAMGQEVO6VC2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6CD3BA3C0
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 19:50:40 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id e17-20020ac254710000b029031b81f01389sf3244633lfn.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Jul 2021 10:50:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625248239; cv=pass;
        d=google.com; s=arc-20160816;
        b=EXDDJD0NXnCeNH5UkdBp+unPF++FpGbn6Vc0T//KvQB7Nu8wcjmj7pEaZt/MlW+7sV
         tQkJT8VpffKpezh4lLJjVqNJa9R5k/eX5yBKklOqSht6bqoTxAV2niwAUx2BnyMC6eg+
         yB1vutBOw6S4d9Bb1cMtkLbdYxyyhieLq9p6P9HOZLAAHgY7euwEepWik+yAPqzdL+Ub
         UgkeWXCmV0lbw+HCnoBlLUqNGmeUqigUKmKkK+uLX+Lx8OD1BovMXia6IZVsCRb2LlnJ
         CcNzOrNmVjpzCVPgPXfmkgpP8ytSaGjlL/yopVikpYqoL7AJtVkMhhe16SSDoz+iq8d8
         XBGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dtZBtvNIqLMqdek9ySHbu4+iiNByvaurnZObTt2JY7c=;
        b=uHOywIv7oOyVC2NUTWlNq4z7e7e11xo3ueo4Nd+oUVnw5ZHLtePXGG/IzODp1C55o/
         Dq5NxrI+CWVNGc9F7MQe8L7RxfyXwAxf2jwyZRg99dLV0fqH/kUN55L7VeF/zXTSG5Vw
         sEWO55Ne5tcm6aIx6gxdK2S0XWPM/LdqIdLDSK3OyDbRujXbW5l/r681XCsnj1h72HSD
         PUsQZ3aC2cytNmdh6Xfz/ufumtR0Ke4FtZE66YU5WlFUYrXJkRD0NnVMbapPpzaHz4hA
         FonZ2fYeS60hYEfydpxat8GAxPLrn/JrxlC1V5YdKnKh0IHQURPOCAZAGl8QGcqlvyPu
         52Wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g49VPuys;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dtZBtvNIqLMqdek9ySHbu4+iiNByvaurnZObTt2JY7c=;
        b=XZotaSFji7wRDuMTpl06HRSfbfgJQTI6a1rLlI3rIoR77+l9mJebGsLNze6RqbjSgX
         7LEWHSxXzyBwIn3LCrf6PcdhmIuyigvaKmiC5bFmc6j//sgLpmgsdCUmHlTkEhM0JPVi
         fPt5LmkASeti2wCf7ZIAFqWGqXvdWX/sozh3+Hnd1ci63WjUZrbAbDsYSuEggRxEepV7
         oCSBTLSnq6uH/A0d5kjcj4k5yCyDXDYn9YPYOSd/alH6Qn/g8s87vgN3oBNqqjo0Wbf4
         NMGA50XZoIhI83Wo6OHMv4Ud3J3Kc/SIEodnwtXX3MqDMtRLK0zKZUimkWdFf7q0lcSE
         T2yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dtZBtvNIqLMqdek9ySHbu4+iiNByvaurnZObTt2JY7c=;
        b=cPaz7GDufOkEZFRBmPN+qe8jwIiX6RHmQbxn8chaOgPWI1Z5XvREDKxV6KK+YrhsFd
         S/J8ajy+xUznSTFWO2FEz4TSyYHRFuAYG8PxIE6KATL8tnqr0hyn6Wjoqj/JAE0m3PBV
         NsrUke6xhwQaoEIPQE0FwTT4C6oYK9DcO5cMCdX37s5gok65llbD3OgkDy4hKhTlERoO
         aRyZmCZGw0gRWB2bziLY9YipkPvNgR+3n4Ka3nbRc///K2M58PpuGg7GnsscyJqTTxqE
         WhHA+nZfqzLD2yx9f9Xu2Bh63eiWITbHyrWdyITdllEBzSSGtxmiFKVkdDRL31FFKCYb
         J//Q==
X-Gm-Message-State: AOAM530FGXXNeORlRWh0f3rknhkeH8GWpkZ5te3BLnezINgYmIwkev+j
	7WBUiIYvVBBHAL1x48O0JuQ=
X-Google-Smtp-Source: ABdhPJygccsM3GBvI1XkH3iB1w1TnThe3WWx/6J0zNz3qUBRO/PKDsjXIZ0nRJbR3XwST6u1CWurgQ==
X-Received: by 2002:ac2:5236:: with SMTP id i22mr567482lfl.637.1625248239683;
        Fri, 02 Jul 2021 10:50:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:430b:: with SMTP id l11ls1721014lfh.1.gmail; Fri, 02 Jul
 2021 10:50:38 -0700 (PDT)
X-Received: by 2002:ac2:47ee:: with SMTP id b14mr586715lfp.71.1625248238698;
        Fri, 02 Jul 2021 10:50:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625248238; cv=none;
        d=google.com; s=arc-20160816;
        b=yFwgWPW7u0FkCWG5gSrXxQVUKU0I9RbTqA34QjCCc1sIuWhtHbQM9sNGGlcQtOMk5u
         m1NGYw4Vp/+0lTwdgfxlvI120CrfXiLSDO58ZAeXG4MIec0Ti27udIHD/vsvUX3YLxXX
         KTE/EGSVkZ3xs64UegXTqPnoMHdr1qCowl7haljbWZ3W0K80t3cOOPmoYIzrHrXLf6ep
         2nc6w6FXZ0w5ga7MO8djytR3hxPuu4+FuRaD1yAGukDQb8NQYyKwPCyPPoVCQxSePr/6
         og+LL5/+tdMXuqzlQ2orDQ6Yr2cje83AvHUgRh3MAro7nRH4YFnSyu6IYZFUOFGMygJo
         n14w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zR51Y6h156fP4t9AhpZig8/jxWVXQ+2FTjT81KZ0jSA=;
        b=yMI6CRm80BGetqqriJp3mAZNdUULBq/PDkCQdpUhAiZ7HW3PPvNBBft8mTkIBbM8CZ
         wKOr9BZxanqpoYs2au8CHYweh8ESwadP9J1gMTXZP508hIjQRlqfGQcLrmeFNTNTbc8a
         vGpxu4/L9Ie+HWLJWCRltWWRQdoRIPM+xGQE/pLwW9ThkNKIz/ciNwNSlMqz2EXFGGtC
         cWm3YDZUcTkZGi4JDCK7BKnYk8Y6cKt93KGNd6y8CzuHVYGy+/2bIjAE2CBXZniGGM60
         +EykCbznxNuq2fG11Mm5ACh++5XETJoXP/5ym4S06jgXi6EivYFVFm6Xn80j2RpbRF7/
         f28w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g49VPuys;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id c10si156471lfv.7.2021.07.02.10.50.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jul 2021 10:50:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id r26so2016394lfp.2
        for <clang-built-linux@googlegroups.com>; Fri, 02 Jul 2021 10:50:38 -0700 (PDT)
X-Received: by 2002:a05:6512:3884:: with SMTP id n4mr577583lft.547.1625248238229;
 Fri, 02 Jul 2021 10:50:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210701235505.1792711-1-ndesaulniers@google.com> <20210702112210.GA11084@willie-the-truck>
In-Reply-To: <20210702112210.GA11084@willie-the-truck>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 2 Jul 2021 10:50:27 -0700
Message-ID: <CAKwvOdk4GLDVrOJsxPBVM+g4sBiYW-64M3rNN6hsBgHP0eYqGg@mail.gmail.com>
Subject: Re: [PATCH] arm64: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Arnd Bergmann <arnd@kernel.org>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=g49VPuys;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Fri, Jul 2, 2021 at 4:22 AM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Jul 01, 2021 at 04:55:05PM -0700, Nick Desaulniers wrote:
> > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > index 7bc37d0a1b68..016873fddcc3 100644
> > --- a/arch/arm64/Makefile
> > +++ b/arch/arm64/Makefile
> > @@ -34,6 +34,17 @@ $(warning LSE atomics not supported by binutils)
> >    endif
> >  endif
> >
> > +ifneq ($(LLVM),)
> > +ifneq ($(LLVM_IAS),)
> > +ifeq ($(CROSS_COMPILE),)
> > +CLANG_TARGET :=--target=aarch64-linux
> > +CLANG_FLAGS  += $(CLANG_TARGET)
> > +KBUILD_CFLAGS        += $(CLANG_TARGET)
> > +KBUILD_AFLAGS        += $(CLANG_TARGET)
>
> Do we need to do anything extra for the linker here? I can't see how we
> avoid picking up the host copy.

That's handled by the top level Makefile when LLVM=1 is set.

There is $KBUILD_LDFLAGS, but we don't do anything with it at the
moment in terms of which linker we select; $LD controls which linker
we use.

LLD can figure out the target based on the object files it's given as
input, so it doesn't need any `--target=` flag. When clang is invoked
as the compiler or assembler, it does need --target.

> Have you tested the compat vDSO with this change? I think we'll just end
> up passing two --target options, which is hopefully ok, but thought I'd
> better check.

Good catch.  We don't reuse KBUILD_CFLAGS or KBUILD_AFLAGS for the
compat vdso for this very reason. In arch/arm64/kernel/vdso32/Makefile
you'll see no references to KBUILD_CFLAGS or KBUILD_AFLAGS; instead we
use VDSO_CFLAGS and VDSO_AFLAGS in their stead.

But, we could (and should) make this same change for the compat vdso,
and drop the need for CROSS_COMPILE_COMPAT for LLVM.

Let me play around with the changes Arnd suggested and see if I can
get that working.  I'm a bit nervous about making this depend on
something from the top level Makefile on initial glance; these changes
start to become tree wide rather than isolated per arch/, but let's
see.  Maybe at that point we carry a series in the kbuild tree with
acks for the arch/ specific changes from the respective maintainers?

Either way, I'll send a v2 that nixes CROSS_COMPILE_COMPAT for LLVM.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk4GLDVrOJsxPBVM%2Bg4sBiYW-64M3rNN6hsBgHP0eYqGg%40mail.gmail.com.
