Return-Path: <clang-built-linux+bncBDYJPJO25UGBB56ESCCQMGQE6HYY6TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B88B388150
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 22:24:24 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id x26-20020a2e9c9a0000b02900eaf62d380esf5085624lji.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 13:24:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621369463; cv=pass;
        d=google.com; s=arc-20160816;
        b=OXImWww3NZV8LJnu2SAW9yroc2rDSdayoyaQoOjIPHkDS1xVhOyJtd0w3L1bTPAsXC
         O5dSJ30qmIlSf2c+vjdw8QRGfeE4gkj0yYStPmz6QvgqMc71vNigp9HnWBg84k9eUgYy
         SmYS0uVaMEmOJ2inHJ0vCxe/gYwl3P7Fo5Hxd8j6l1A5qn3cx8oM2t3Cv9al4D6JIUEv
         hzrggUlbFKHmmW1gA8t3AXzeOgxzF77aNtCnNfBVOyr4NVWWwPt4bkkzFDoFdagrMjrD
         GQCAy8bTX3FvHUFF3G5pbAk5BSB9VCISMeBAG3UmWSvK8bkCLoziKES3hZxZ/eSCOBRl
         JWtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=i9TBbP+kzZC22j0UhRun3905MPM6WdIe3K16qhG4PbE=;
        b=cjQuTMZ427X4fFcxR6ik4xfwhusoyfFCcVwkwCg7MutCQIECgVtptm+TunuM9/WSIV
         zffDlC0LHEUsNUomy08x1lw1oE/hPiEnhlmZpMGuCFeRaAsv++k71n0t7vct9lIsNsqD
         gqxoPphmyNWJLdMWnKwN5zTT38I9wI8jfrlGuNRSAiv5gskHchIyB3gbsJ7zb+hOJlAM
         smeaud9tGglssnGJU4FN6S1+gITCtcdpP/VScIJLI3glRfi8xOP732Hp5w6InKSB2X9N
         zSJYuDpQ1VBNCje/y0aWKyJ4MjJoMmuknJBAy43fY6G+ytPgNLqvfS777xwcT5BwGiMX
         2lBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YO8cHWoD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i9TBbP+kzZC22j0UhRun3905MPM6WdIe3K16qhG4PbE=;
        b=MMSklhpSGhg78fad/g9/uTVxZaSBQ0RTWtuZtr2ihJeMgmB6YkhzKNV1aeew+mNKEF
         A8po5cNQI5SHjWl2jtNlGDxPxE7Ni8UBdLjL1NT/h/5XlgRAtjmX1MyWG6ytck5rfbIg
         /rEFUtzJsstUM3LEyTvLiqNAkXS0QpVNrTcAv40C9lu9cQoVP6kSaj1SAu4gf+UWXxKc
         9wa4+EeLsCJxcsz26C67/ntsamXajElfVHi2zPArGVQvSsfSwQ2jpva3Ciy5rLCvlS1+
         HDm6A/Hm1wL4OOVbwS7yXatN65rEeYJihXaW+au5aRgipIY7B22EN5oa32Fs7/RjxveQ
         LTCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i9TBbP+kzZC22j0UhRun3905MPM6WdIe3K16qhG4PbE=;
        b=q+9k8aPmeNTP5MNyJOiEegFuY94u01XkIiKUMQW9anDCH/IQjbLMlFzh0t0kUn76ia
         4iesKQ+rN9OLjDjM2uvJMc3h7ye4uM5wkyacYYf0ktgIQSjMm7MeUOcTacZhdJukht7g
         nAGxMr0tAblsdZCrOSMNjOEkDUnUjPZdFtoD+3HIFcsHUkq+jVollUPrLNYOkf4JUy41
         LDzj4uVq/7uKxCdO+FsEIt3rk8prB0eyiCVDNGbAOvj/xT2tafTT0okc39g1HnV35zpK
         q3DXmJgCU0b9zOBZ3rYA3NbUy58ltwTTurnZllPz9SQ3fcIkhVNcTLyk5sOzjzFghMN6
         xPRQ==
X-Gm-Message-State: AOAM533JZCKuGsxA/VWQQBTRkay1WNVlUPBlzoBHg6OjkLiPbjmuFG2N
	m6WWB244ULjDe3176y1Z6wU=
X-Google-Smtp-Source: ABdhPJx7DYU+Uw5MqjvdtaA5cGPQS7ZTW6CeZL7CY/oETBJzxVySgS+P9lUA4t2BzXKCDtJOyV8A+g==
X-Received: by 2002:a05:6512:1141:: with SMTP id m1mr5229065lfg.28.1621369463510;
        Tue, 18 May 2021 13:24:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf0f:: with SMTP id c15ls3752378ljr.9.gmail; Tue, 18 May
 2021 13:24:22 -0700 (PDT)
X-Received: by 2002:a2e:9b4a:: with SMTP id o10mr5455642ljj.415.1621369462371;
        Tue, 18 May 2021 13:24:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621369462; cv=none;
        d=google.com; s=arc-20160816;
        b=BXtt0TlxYcmL4STEKt6XTYUqI4eDnRFQUZnTO0ZmRTGRpxCnm94q/F9lA9+yvRxNaK
         syi3mkjyj3iydjk2R4Er2PqeBOHJwoUiP+pA5DKCGGHSyHQlgSuS8KD4ObrLnfES9Ksh
         ql4/Y9VYG+vv2DhY5jDeiGNBdSk4cC6DfnKwsQtKOvN7lal5BNe19BrCeXeS3S2sobco
         UKpRIHtOen+wl8QhNip8iXg4ElDJTTddmQMfu9FgpYmlx+PiZuPFBb2KMIUb2aHA64YO
         A5QM3Ij60TXg/oiy0uH3yMQAcdSqiT7KjWICNq3R4BlTXkB7qDkOLtsZBoNMJzrphvcG
         buhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pTzibwfqe/I3SK7JBMJocK8xyPaFvCw7pMyszzKLlIs=;
        b=bHBKuZWWGGVLV+bGklX5LuXmWz59mbYQzlYvyONpdUkbK7nIUCLNom0N2benboBe0u
         gobX4S4cXPKcEVCyCQN+7sgxbPrUONBw0PfCDaoEE6c+SfzdHG1bMGkD3NWIYO3WCNca
         mgRe96jS9PVLChLUMgLe7jji9L8vLl9DnL4i8Baf6iZ7ZVZvoJ5Ja3awFEMCy/BC5MGN
         ATivtQY34eQxSSEjM4PJdlMYQyvXnGc7al3C8i9b4mSXqkfsToQYNAW92IHjRkKcWgDg
         pi9KiI+n9jy9ZPpA1iyzbe8Rw3GWm82rS9qnVp5o194qsGpcJraXM0b7RnXxIaGjqsXF
         H00A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YO8cHWoD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id j7si822081ljc.6.2021.05.18.13.24.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 May 2021 13:24:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Received: by mail-lf1-x12a.google.com with SMTP id h4so15852946lfv.0
        for <clang-built-linux@googlegroups.com>; Tue, 18 May 2021 13:24:22 -0700 (PDT)
X-Received: by 2002:ac2:5334:: with SMTP id f20mr5342424lfh.543.1621369461815;
 Tue, 18 May 2021 13:24:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210518190106.60935-1-nathan@kernel.org>
In-Reply-To: <20210518190106.60935-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 18 May 2021 13:24:10 -0700
Message-ID: <CAKwvOd=fJ-E04ixP0k1ehHdhikF4Zqr2FXa0+AQnWn1fL=tG5g@mail.gmail.com>
Subject: Re: [PATCH] x86: Fix location of '-plugin-opt=' flags
To: Nathan Chancellor <nathan@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Sami Tolvanen <samitolvanen@google.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Anthony Ruhier <aruhier@mailbox.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YO8cHWoD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a
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

On Tue, May 18, 2021 at 12:01 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Commit b33fff07e3e3 ("x86, build: allow LTO to be selected") added a
> couple of '-plugin-opt=' flags to KBUILD_LDFLAGS because the code model
> and stack alignment are not stored in LLVM bitcode. However, these flags
> were added to KBUILD_LDFLAGS prior to the emulation flag assignment,
> which uses ':=', so they were overwritten and never added to $(LD)
> invocations. The absence of these flags caused misalignment issues in
> the AMDGPU driver when compiling with CONFIG_LTO_CLANG, resulting in
> general protection faults.
>
> Shuffle the assignment below the initial one so that the flags are
> properly passed along and all of the linker flags stay together.
>
> At the same time, avoid any future issues with clobbering flags by
> changing the emulation flag assignment to '+=' since KBUILD_LDFLAGS is
> already defined with ':=' in the main Makefile before being exported for
> modification here as a result of commit ce99d0bf312d ("kbuild: clear
> LDFLAGS in the top Makefile").

Thanks for the patch file.  I will need to be more wary of `:=`
operator in kbuild changes in the future.

Ideally, we should encode these two flags in LLVM's IR so that we
don't need to respecify them when restarting optimizations from the
linker during LTO. I've filed
https://github.com/ClangBuiltLinux/linux/issues/1377 to follow up on
that idea.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Cc: stable@vger.kernel.org
> Fixes: b33fff07e3e3 ("x86, build: allow LTO to be selected")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1374
> Reported-by: Anthony Ruhier <aruhier@mailbox.org>
> Tested-by: Anthony Ruhier <aruhier@mailbox.org>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  arch/x86/Makefile | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index c77c5d8a7b3e..307529417021 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -178,11 +178,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
>         KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
>  endif
>
> -ifdef CONFIG_LTO_CLANG
> -KBUILD_LDFLAGS += -plugin-opt=-code-model=kernel \
> -                  -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
> -endif
> -
>  # Workaround for a gcc prelease that unfortunately was shipped in a suse release
>  KBUILD_CFLAGS += -Wno-sign-compare
>  #
> @@ -202,7 +197,12 @@ ifdef CONFIG_RETPOLINE
>    endif
>  endif
>
> -KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
> +KBUILD_LDFLAGS += -m elf_$(UTS_MACHINE)
> +
> +ifdef CONFIG_LTO_CLANG
> +KBUILD_LDFLAGS += -plugin-opt=-code-model=kernel \
> +                  -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
> +endif
>
>  ifdef CONFIG_X86_NEED_RELOCS
>  LDFLAGS_vmlinux := --emit-relocs --discard-none
>
> base-commit: d07f6ca923ea0927a1024dfccafc5b53b61cfecc
> --
> 2.32.0.rc0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DfJ-E04ixP0k1ehHdhikF4Zqr2FXa0%2BAQnWn1fL%3DtG5g%40mail.gmail.com.
