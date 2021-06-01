Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAWT3GCQMGQEMEY7KXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 558B43978B8
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 19:08:19 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id b28-20020a056512061cb02902aeab39c9b6sf5180846lfe.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 10:08:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622567299; cv=pass;
        d=google.com; s=arc-20160816;
        b=uvkz0CrB+MToDH93YG+MzNrjgbf4yv1YNDrYHJ1kyJ4H30HYBu2CxWH976ySZ/9BmF
         fW++sojuTnKXi/UD+bgr7eBhHVp8PEGkTJIEpA0YIFMpczPatG5sCnbqISDMYh7WTTxd
         KOBar00xxgqhoLTMf/cDmNp12fdCrz6RxJ4ZRLXKuJsmoTO7G9lQg4nEb7hweuNlMc0J
         9UhFY2Zo2g7DWJR7upFwaqa6EPFcuAfKM659tHIukVORQsrLq8gCEUcSASGorCirOrvT
         RiZajMMpJUgqy5GTxkeZwm7bkES+BWncRQBee3FOGc4SUrMaUgmdwyDxHSqrRRkUi62J
         9HWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=z6GG5NxiC4Tr6A7FcPBQW1PWSZXYcVKf7YMilS95H88=;
        b=GTTAaqALYlpmvgzgpt6UC3VTJoyVZ/4AQkv7d+4lLXsUidXG60ybCWESSzeyix6ilb
         XCni7hqIlefy2go2qkk5tjFhsEmlI3YqEMAEeh9hkIAdjkfpPeXXx6RdaVJfTG8xtP2T
         kBGWrNeKOD6tdnWt/xyJ9jMjOQSEBM0wOqGFAlQ0cXEalWpaZQwgHCioNOVP9xp5sUCP
         SzuJTs3aG/UyaOxTFO4Bocph6kI9UgyZAxHikCMU5VsRl0EFWq7llsObotKRcJYxqIeM
         mKiJb5fYVwFTzkt+oBa0bDlL3sE3oH7KmKsimiqI1wG0R0tklBrL04xd2owSeG3r2SFF
         6g0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Pvzi2RTs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z6GG5NxiC4Tr6A7FcPBQW1PWSZXYcVKf7YMilS95H88=;
        b=BUaF99lIaD0H1S6sZTbSyGKV/gnbrNApIRiJkJNvnWwOh0u+aTRCjh20Mzff85cX9R
         Lx3lLet7ckCk7kRkxqeHbV9JMam2OXlZjGipv3JnEbjyMkSnfFc4u6oIV6+7ZAkTwbRV
         BCbY0upasEcPzIt2lIecjAr5u8s5mTjBBmOWyEMZhneLod3kGYqoK6kIdq8rbk8S0sqz
         Yey4xe5nOdG0EbradE4CwzQVn/NCv3FiYnW55hgujk3lzChmPhEHSIXQa3iPYBp+lrwe
         ihlFxp9IU5uFH9Pk/qBOSfKBECdkIZQ5lMFaEVxxRWKWNEaMXhyd12ucahX2HGoqV1Vk
         5vtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z6GG5NxiC4Tr6A7FcPBQW1PWSZXYcVKf7YMilS95H88=;
        b=BwvhQ/eSpWC84CXM0nhdjgbEU+dNSZWpdtCHppUrCequOSavDTNY2zwmclqMYY5FAw
         F/abd5Y0e0L1fSJs6w+goOM/5Jk8ZGbBWzhCCV/TfkXZRo+Un8RrOLBYZFK/3PCFpg4w
         3+uMSzB3ktPdIlwWH2OgT9Dvq7JKdJIFLRTmBSX0jOncCpmPOALlWCAxFq8BaZ+1OP0i
         PG+NPYjEk57YyH+16kZBV/oyKUlWFMUVkdutqtDcUR04VxVd2Atn0WMa0MpLZq+c231L
         +SFinGyRXNUmb8363uTAp9an8sxD3VklGCFJUi7xbEAZxH8ahi3vcoMoeVnLQ6e0upLO
         QMXw==
X-Gm-Message-State: AOAM5318MiMR7/c3iANclvvPzvhi2CSAms2IBDjzvi2CxE4dYcEvAzn/
	DNOl42P0wHd22zP35mHxiQ4=
X-Google-Smtp-Source: ABdhPJydlv33aDHXEmKz6VHbkdo/+oxVXqXfoi7kILMJYq5YkmfAY/KcxPhf4msJTnd7Gtuz7QRmDQ==
X-Received: by 2002:a05:6512:3ba5:: with SMTP id g37mr19815884lfv.453.1622567298352;
        Tue, 01 Jun 2021 10:08:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls815319lfa.0.gmail; Tue, 01
 Jun 2021 10:08:16 -0700 (PDT)
X-Received: by 2002:ac2:4f8b:: with SMTP id z11mr18885032lfs.482.1622567296264;
        Tue, 01 Jun 2021 10:08:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622567296; cv=none;
        d=google.com; s=arc-20160816;
        b=vGw+U7KtEy1L0CxhZps9tXeuSRGaSe22WBlXO6Oyu6o45QiiSilUFGOrfZNgnl2l99
         421Uz5qIyautdrMvc8nNP01jTB1/BNUjJTiC/Zq1QFWkTdQWoU6iQmvq59DYz3JA6MNF
         1neSMf9sNiHDGfQyfYCDz527YDJ+YH9IK+0hIODRpYP1JWM372zKOF8P78ka1pTDmTY+
         K9WPVCraC6bJJpa/ubyxDUnaIfadwFkqmNFUCsMjFwxGbxI8vkxvIR2BNRkw/EteKRh+
         d95FvFt9mQdpi+RN85J3cYwaRiMfNyqItOEiwIdxHug3+O2/Y0yFLYOUJJLINHTQQyDp
         5Vbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4iyHaQ7eusXLRjtFERBUVZNb8xaPVSBCRT0/y8uyn4c=;
        b=Hj7bFy0pRDz0Qe0rf8YVmcxQsz5LXFZnK/I4cEh+XsNT0RDRuVHg37NL+q4mIbh1go
         W9ruY2D4NgfL6eJICmlYC8u/tMjI49ZqzWSMtKv5lxYnlF/we2GIdnkjxTN4aXk90XgG
         wK4rUidy139oGuwPPmg1v51dZKQaiyjx2jd+E9qtHVmaWh7m42VbBpVuCGCiVARPGfCQ
         z9DlRl4NN3Rki/Zv5Gl5fvvEIEnfxTMqNsss47mDfShT62QZvX7W26N5FzgeXvMYQxif
         zXiJfWfCFwgVAUgF9yKUovN/iQ7jB2whiiv6sbjDude0h/4AeSxSFZ4sWrsxu4x9nJUL
         MB6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Pvzi2RTs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id a21si115575lfl.10.2021.06.01.10.08.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 10:08:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id a4so13503685ljq.9
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 10:08:16 -0700 (PDT)
X-Received: by 2002:a2e:b0f2:: with SMTP id h18mr11079691ljl.244.1622567295431;
 Tue, 01 Jun 2021 10:08:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210531205405.67993-1-nathan@kernel.org> <20210531210629.864888-1-nathan@kernel.org>
In-Reply-To: <20210531210629.864888-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Jun 2021 10:08:04 -0700
Message-ID: <CAKwvOdkwKc5opVXUAVxehDCGfgidhEr2LH4LQaS-HUSk7gQk1g@mail.gmail.com>
Subject: Re: [PATCH v2] MAINTAINERS: Add Clang CFI section
To: Nathan Chancellor <nathan@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Pvzi2RTs;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

On Mon, May 31, 2021 at 2:06 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Sami is the primary developer and Kees has been chauffeuring the patches
> to Linus so ensure they are always kept in the loop about proposed
> changes to these files. Add Nick and I as reviewers so we are CC'd as
> well.
>
> Fixes: cf68fffb66d6 ("add support for Clang CFI")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> v1 -> v2:
>
> * Add "git " in front of the "T:" entry to match the rest of MAINTAINERS
>
>  MAINTAINERS | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 008fcad7ac00..4ddf370572d3 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4436,6 +4436,18 @@ F:       include/linux/compiler-clang.h
>  F:     scripts/clang-tools/
>  K:     \b(?i:clang|llvm)\b
>
> +CLANG CONTROL FLOW INTEGRITY SUPPORT
> +M:     Sami Tolvanen <samitolvanen@google.com>
> +M:     Kees Cook <keescook@chromium.org>
> +R:     Nathan Chancellor <nathan@kernel.org>
> +R:     Nick Desaulniers <ndesaulniers@google.com>
> +L:     clang-built-linux@googlegroups.com
> +S:     Supported
> +B:     https://github.com/ClangBuiltLinux/linux/issues
> +T:     git git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/clang/features
> +F:     include/linux/cfi.h
> +F:     kernel/cfi.c
> +
>  CLEANCACHE API
>  M:     Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
>  L:     linux-kernel@vger.kernel.org
>
> base-commit: 24845dcb170e16b3100bd49743687648c71387ae
> --
> 2.32.0.rc0

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkwKc5opVXUAVxehDCGfgidhEr2LH4LQaS-HUSk7gQk1g%40mail.gmail.com.
