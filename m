Return-Path: <clang-built-linux+bncBC2ORX645YPRBG54V34AKGQEJMYC32Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 4992A21CC28
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 01:34:52 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id o25sf15378952wro.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 16:34:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594596892; cv=pass;
        d=google.com; s=arc-20160816;
        b=OYK6SOA5JwjArnSN+BoFml1T1a+t/MwJvms4tONB2x+4uWtoU+/K3fJf25KosMftkE
         GokIudDrz1Rs359AbTorSbG6HwTpP1N9XOikORc/AAM0PL+3A/fLg2MEC4QU/OtpI/Ai
         Zmof0x4VHMFUMLS4/S6FTq9iNV8pApe7WTn+i7ub34nYvVwz5As8F6u2sQlnADWZU/qC
         LSl/2yZjcP8CyhuHWlCwqdP2SG8+228Skw+BWUtgqyd9/Z4pKbmLCavi7rDtWoIACZ34
         Z/R4M6dpisDuSfwd7a24mLx4Tf/7I6SCGdMKwERIyHl7GYh2R+3SA1mWVfsj0FeBL4wv
         TlPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cwV5qvjf3+/NDAduuWQ3kxI/eIrAipLkcyyJ9BQxikg=;
        b=JzMgjV5IBLH1x/YhgRfPQh/re04hB+qaA+6aami89NEt/jX5JBei7gaKiR+I66Lv+I
         J7cR0Tp4Hd5jgIVsQ8VERRWo5GLY+0X5P/IQR8+quozjEVtprU41Hp5ljOVCygZkYKMu
         NXJMuvT/6Hnn/yDQIqQ6fqGXDTnedw4TFrq074XmSkgAVbT4iTFx/ZHNOk2JQ0GSBNrO
         mwnjuYx5yNv3NfwiHmfLM5h/tmdEJ5ZzunSsQHySUN4hx0FJFldji19JiDpo0cqddMtG
         MAJBDfT4nkZkOAPp/zpjR7dJQv5UeeVLn71nSV+K+LnffISYdggx7YhJGF8mxDdCTjzq
         tUCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pBpXJX53;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cwV5qvjf3+/NDAduuWQ3kxI/eIrAipLkcyyJ9BQxikg=;
        b=Kvdq5pYj5VEDuKJwJLPZhMNerLefUg+tc0fMPG3h1Yd2RSnpBiJcFAh9gFuKo4qZTS
         dhAUM7Wtn3CutLa/5EeCqeMTj7JPizTlx9OKjM8t4iYY16+XFhha5EiYBTvASQlgMq85
         f+2PFiTwFJBvO7/ThLcEXIC6V90IZ/LOiPV0zfkjSt16PsMXx6BND+D1v1r5M78Uwxdf
         Znmxhdi+vTc2tSvf4ojMtIWr18HzMTrxRk2eByFOMybw6ucc+BXcapnlh5QQuILNHqgG
         LiDj6DGvX6m267cvE+LJkos3R31XNrVHsMW1ozaNZwC/LT0DrWX1oJp9xLqs9XqHI7kQ
         P1Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cwV5qvjf3+/NDAduuWQ3kxI/eIrAipLkcyyJ9BQxikg=;
        b=gGPKD8qLU5HpjU3nArBrfIwR2KwPnefbxsTD2yeByXIq45DBAUKENfGNG/pfPcvh12
         lZ0hGIkrmqv/AuAgwseKCEo0F0rmQ5YXtHRHnPygcO0WQ9bkDIwUTo9Hhrfwf+LgkEC8
         81c9/b/FYId/ZDBLdsU62PQteG9TrrQcrMf76Q87UuP52ScA/6u+J0OWwvPY/RzF5OEW
         sPBaV+AM+WOWf/6yI0oHw857+LBzsmUu9gbB7nVcVPIlPPFkjDaAGIcU1Bf8q7BRkPxp
         nA2xI1Pg3VdQ95xANxZrjG20S7ep9gQynDpq5Qp17OZ92ylCO3hqGQrOsg3TyFWEOoNZ
         O8QA==
X-Gm-Message-State: AOAM532SoUbzovLMxGEgqSMPED7JM71EOvFvfE+UDn4tQ5ZwHapdeGX/
	WAaSJsa5L12UWDpcpKtuWYE=
X-Google-Smtp-Source: ABdhPJx8Vfzwr639JS2VgFd9v+mylWe4rTiXeIMdWp5cZlEmJB/phHQM3j/9Lm/jYZqKdlopoDQwTg==
X-Received: by 2002:adf:c542:: with SMTP id s2mr52052359wrf.132.1594596892024;
        Sun, 12 Jul 2020 16:34:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9c95:: with SMTP id f143ls7455944wme.3.gmail; Sun, 12
 Jul 2020 16:34:51 -0700 (PDT)
X-Received: by 2002:a1c:cc0c:: with SMTP id h12mr17217705wmb.140.1594596891472;
        Sun, 12 Jul 2020 16:34:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594596891; cv=none;
        d=google.com; s=arc-20160816;
        b=pFMBTALU+xtM2BqponYNENhj/i86X7v8Qm0dWPtnOxD199LpYvhbgblDMo7zRc5jg9
         DcyitKvC9i1PfauPe6Fz90RyhWU3sUMNFTnrVOyWqSbaKyDXxBMOqycqt5e+BdsIbm/U
         VK1Ms5isjnR66t/hF+WrdztrWt1wyKhwqqTAbTD4xAVhCHqUoNChA5PTMuxKlld4NgyT
         AsCaM3QDgMTfy9laOtiP1jGWzKhefwC9CJUZuIUqFLjz4k9o9SpE9lX/WJ7FGcl781Mb
         vtx3l3e8gqrwy+58vPFvUZNHjBU0rUEdbvIx2JDZubCf9hE22BVYhF6aJeDv8RdBChSA
         xxgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LVOtLwv/Cvl11tUYp50SksGWhQhY11SC0NIkGuc8zKg=;
        b=jUwJdV+PNVK6sq+CaMxcz75onSyw4wQ4sqCok1nE6/NL9uveCSfhwyCA97mN+pV8BF
         nKM/B3UWiup4ajqNDGDqwe1k5AZST/YBQuKVRHfsYR8/EA68qTIhHXODAzrMFUxEnpkz
         pvR0sV3tPUVXp2AH+zpSK04i3glUmrureAFAMV1Gky5QXyRpl/ptbcl7pgNY3NSziYOi
         D4E4/dV5wQsDKJyxvoJ2GMAun6EWo2ConcfLluXIhqJ5DpLwUr/Ug7qmQuDo/yWUSUFG
         c1Fy9Qd1Hn02Xise45UBodu48JvNFSNkfyUGCeDvUpDMp0h27H18YjKh+X4z5AO0MPNn
         dU+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pBpXJX53;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com. [2a00:1450:4864:20::641])
        by gmr-mx.google.com with ESMTPS id f143si737454wmf.1.2020.07.12.16.34.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jul 2020 16:34:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) client-ip=2a00:1450:4864:20::641;
Received: by mail-ej1-x641.google.com with SMTP id y10so13415975eje.1
        for <clang-built-linux@googlegroups.com>; Sun, 12 Jul 2020 16:34:51 -0700 (PDT)
X-Received: by 2002:a17:906:94c4:: with SMTP id d4mr69283452ejy.232.1594596890894;
 Sun, 12 Jul 2020 16:34:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <671d8923-ed43-4600-2628-33ae7cb82ccb@molgen.mpg.de>
In-Reply-To: <671d8923-ed43-4600-2628-33ae7cb82ccb@molgen.mpg.de>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 12 Jul 2020 16:34:39 -0700
Message-ID: <CABCJKuedpxAqndgL=jHT22KtjnLkb1dsYaM6hQYyhqrWjkEe6A@mail.gmail.com>
Subject: Re: [PATCH 00/22] add support for Clang LTO
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pBpXJX53;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Sat, Jul 11, 2020 at 9:32 AM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
> Thank you very much for sending these changes.
>
> Do you have a branch, where your current work can be pulled from? Your
> branch on GitHub [1] seems 15 months old.

The clang-lto branch is rebased regularly on top of Linus' tree.
GitHub just looks at the commit date of the last commit in the tree,
which isn't all that informative.

> Out of curiosity, I applied the changes, allowed the selection for i386
> (x86), and with Clang 1:11~++20200701093119+ffee8040534-1~exp1 from
> Debian experimental, it failed with `Invalid absolute R_386_32
> relocation: KERNEL_PAGES`:

I haven't looked at getting this to work on i386, which is why we only
select ARCH_SUPPORTS_LTO for x86_64. I would expect there to be a few
issues to address.

> >   arch/x86/tools/relocs vmlinux > arch/x86/boot/compressed/vmlinux.relocs;arch/x86/tools/relocs --abs-relocs vmlinux
> > Invalid absolute R_386_32 relocation: KERNEL_PAGES

KERNEL_PAGES looks like a constant, so it's probably safe to ignore
the absolute relocation in tools/relocs.c.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuedpxAqndgL%3DjHT22KtjnLkb1dsYaM6hQYyhqrWjkEe6A%40mail.gmail.com.
