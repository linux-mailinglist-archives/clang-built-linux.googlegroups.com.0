Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMM2WODQMGQECWXGCMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6C23C66D5
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 01:16:01 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id j6-20020adff5460000b029013c7749ad05sf5535345wrp.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 16:16:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626131761; cv=pass;
        d=google.com; s=arc-20160816;
        b=laaxI/4Udqta74uNvc/xI/2kRErgdSykrbr7HMgAbZDz4wCVPbsoaXs6exO1HhuLS5
         qXkrey2JYR6ugW9wNr7k894RAioUxRPDqgatB+asGNIAedR4pXyP7fdHmjFhf3WPd6ZP
         b2fptyD+4Gtg3eQLfJYd8cMjMI3CQQKVCd8KKrcnqh2/pWAlNlhMySkcB2Aq4s0uTxyB
         MqXpIf0WdybJFYEKA5rvi8FUSNwJ98oYmM79I23yLrNZWm6uvLmXTmIXh5pzcjU8QR86
         sn/+6yb1iBAMK/6nUKx6FRFaNgNFwhQv21YbPE7D7QYk3HKwsVwtgGYZ5VPOBeSpbSIx
         gLsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Bzr/tEZhmcvJPWHPHpS5N0/AqeG4iDFz/H4ybOL6bKo=;
        b=ByAfzqXrlI6RuUFGcio5SmHVQhvPe+MXR+snCNB9VZzdUhVfghu89ODnjvFURGjLLR
         TUmJLJuAT5/fAjvUnHMIaLx5GIvi/p7gBItnSfE4kHINu7DPMG2feCthtqR/GJnTX/LT
         PmPBi8mZTWjzCr2tOtI7bpGaKEHbRGqjkwJDgvTCYDJsaEHMuEqWF+vVesduPC4SSr7V
         YPhHQlUnTVP6PwEdH3bj3ljIpoDr4TgrGReM5dPRlp08QB/PSbDdR2abL4xBoGDNNQ+b
         E35TZtdnpUcLDL17jHgFLhgTXB5FlUqdpQ7DpzIJG4DyCQJGxSH3X4y6mv6SaotDEtt2
         XWDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t3Uf+z8d;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bzr/tEZhmcvJPWHPHpS5N0/AqeG4iDFz/H4ybOL6bKo=;
        b=HsvWUP8g+MFx31Q3Oar0nj1PHcKonPk7icvSIjjONblP2twhvKA0wC2828KNchxwSv
         jBDRNiwJX3PN7AKL9caRsjgHgh4Ws1kTBTmMdH87RaRbDsTejgnGLLThO9j03B20gbWL
         nGHJ0v/USEYHlTt9ZpE1b12QVwrAbdUniZQEQ3Lqzm9U2n/axCmi3n2UixDApOT8HGpV
         V7tNRNG75Fh1723ASwApt1sGz7ci/gCawL8jx6cNu2+RfEBFv9ZUCoDmlr7ME5yn9iQk
         3RH6vy3k+WdZFxrZZP69VPR7DuPb+4bMqjj1tuBhKufu8Zhdy6DRmwvGsQFe1zJJZkoh
         6gQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bzr/tEZhmcvJPWHPHpS5N0/AqeG4iDFz/H4ybOL6bKo=;
        b=amy/ZqsQ4Go04n0FLwcMKK2+00Y60kbKvJ90v1hG/UP8nupaIy+Hg/xzA8QzlJvezR
         XXtLrd60qttL9TBv/ArRZZV+lNpM9EuhnoyszqzaaYi4F07iq26N4ytYw9QsvxHsjr2X
         MGoThl4aHrQTO3PEWograqajAbnQ4DzXebjTaJwXHSGWp1uO1qxAvPjSBVh0Ib4tsjxw
         Y1pH2tYaCMTXtC71fu1ZqCVhsQiv7veUw/yu3KjohIs9thxfb7L1NH9r2pBtmlqJBTJj
         pjWlu/gffUn4eDFQ5Vegn4jMXjy/F/k+pAV/F+0juvkI2DCXZedyBaRChsSg9/Jk6Wsx
         3IAg==
X-Gm-Message-State: AOAM531sUL04k0vguzuPJtxFYAWDC3240T7lNjCT6NXNteyOyOPNmyjN
	GGYhpFJUWYodBMhcThbnOHI=
X-Google-Smtp-Source: ABdhPJzAOCJvhhDeJDlIYME13v8LXOMbv6ImJoL6jCotWcGf4ngLvPZ2a+2DTKPfuX51E8nDBC0L4w==
X-Received: by 2002:a05:600c:2047:: with SMTP id p7mr8376881wmg.93.1626131761462;
        Mon, 12 Jul 2021 16:16:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4c50:: with SMTP id n16ls1190074wrt.2.gmail; Mon, 12 Jul
 2021 16:16:00 -0700 (PDT)
X-Received: by 2002:adf:b605:: with SMTP id f5mr1654608wre.419.1626131760506;
        Mon, 12 Jul 2021 16:16:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626131760; cv=none;
        d=google.com; s=arc-20160816;
        b=nZggPq9VYYrY01Iw+JpqVAyzzVhIMPIE5FfYcicY3pkUnEofI76IUx0DiguEam9IJk
         KzNF0U/dFMf709GbAbHq+blCEoyf75SdjszoB6Cbdki2QuR9BuiyM56CnTTEe1/Iegkg
         QjK5JqWFJ52eEtyeoDxDH6WHRS6PTLBvbewT9HVu7znjDiWCeFwDPlF8VnVy/+4+EC9n
         NiLO4bgwrROHmK2aaTiF8qz1y4UngPURMCqFFVM4Q9B2L7fqbMi4M19MqG6P23rvWvFC
         rUR9evCFD8TLnsoyZABFr6yF0Ax6pzgwTYEDpGmjLydtoMUJ0GNGXIqbsPqgJ5qXdMtb
         tfWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kFV3Ph/loXo+FuvqW94oKyOTqGWGGJph3tyBWfseX5w=;
        b=z0WSX8YT/E9TO7cW+XzbMFWrywO/q2+Yg0N4C2Y88I5e5zGGBTJEpq94l6/lEolDMc
         qBDj5j/5c8IZrIxbsk6o6Clq0eqGP4hOoLJLrsuYtE9Xp+YCTybvpod4qFB3cexEknWB
         ndODu24ysLMAMvPef21+VcaH6XokevoFWL7gNCtTiniOJicWJYostJxHdGpmZTlj7V20
         L8ksEymaX3cur2mfYyVDWt0dW4MPNZM9AwTEcL7peIzv6NAkOJgBHedOZzyZo0dTWTE2
         z71bxGsACdZqfk73JOnJMTvitPYmF/J8woq3C1zJfKK8sFpIrpZ5qbIzN4gvjdUTrl1X
         Rpjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t3Uf+z8d;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id c26si890719wmr.1.2021.07.12.16.16.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jul 2021 16:16:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id t17so46633873lfq.0
        for <clang-built-linux@googlegroups.com>; Mon, 12 Jul 2021 16:16:00 -0700 (PDT)
X-Received: by 2002:a19:5f04:: with SMTP id t4mr917513lfb.297.1626131759149;
 Mon, 12 Jul 2021 16:15:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210709000627.3183718-1-nathan@kernel.org> <20210712214636.3134425-1-nathan@kernel.org>
In-Reply-To: <20210712214636.3134425-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Jul 2021 16:15:47 -0700
Message-ID: <CAKwvOdmDOSY4du_6V0Mh5WdqWWU8nC_b-2Eii7Pa5fVhZXbG9A@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: Restrict ARM64_BTI_KERNEL to clang 12.0.0 and newer
To: Nathan Chancellor <nathan@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=t3Uf+z8d;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e
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

On Mon, Jul 12, 2021 at 2:51 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Commit 97fed779f2a6 ("arm64: bti: Provide Kconfig for kernel mode BTI")
> disabled CONFIG_ARM64_BTI_KERNEL when CONFIG_GCOV_KERNEL was enabled and
> compiling with clang because of warnings that were seen with
> allmodconfig because LLVM was not emitting PAC/BTI instructions for
> compiler generated functions:
>
> warning: some functions compiled with BTI and some compiled without BTI
> warning: not setting BTI in feature flags
>
> This depedency was fine for avoiding the warnings with allmodconfig
> until commit 51c2ee6d121c ("Kconfig: Introduce ARCH_WANTS_NO_INSTR and
> CC_HAS_NO_PROFILE_FN_ATTR"), which prevents CONFIG_GCOV_KERNEL from
> being enabled with clang 12.0.0 or older because those versions do not
> support the no_profile_instrument_function attribute.
>
> As a result, CONFIG_ARM64_BTI_KERNEL gets enabled with allmodconfig and
> there are more warnings like the ones above due to CONFIG_KASAN, which
> suffers from the same problem as CONFIG_GCOV_KERNEL. This was most
> likely not noticed at the time because allmodconfig +
> CONFIG_GCOV_KERNEL=n was not tested. defconfig + CONFIG_KASAN=y is
> enough to reproduce the same warnings as above.
>
> The root cause of the warnings was resolved in LLVM during the 12.0.0
> release so rather than play whack-a-mole with the dependencies, just
> update CONFIG_ARM64_BTI_KERNEL to require clang 12.0.0, which will have
> all of the issues ironed out.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1428
> Link: https://github.com/ClangBuiltLinux/continuous-integration2/runs/3010034706?check_suite_focus=true
> Link: https://github.com/ClangBuiltLinux/continuous-integration2/runs/3010035725?check_suite_focus=true
> Link: https://github.com/llvm/llvm-project/commit/a88c722e687e6780dcd6a58718350dc76fcc4cc9
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>
> v1 -> v2:
>
> * Fix typo ("compilign" to "compiling") per Will.
>
> * Clarify that these warnings are reproducible back at the time of
>   97fed779f2a6 with allmodconfig + CONFIG_GCOV_KERNEL=n but that
>   configuration was most likely not tested.
>
> * Clarify that the warnings come from CONFIG_KASAN, which suffers from
>   the same issue at CONFIG_GCOV_KERNEL because there are compiler
>   generated functions.
>
> * Clarify that the root cause of the warnings is resolved in 12.0.0 and
>   link to the GitHub commit rather than the Phabricator instance, in
>   case LLVM moves to GitHub reviews in the future.
>
> Hopefully this is adequate explanation for what is going on, thanks to
> Will and Nick for providing input on the commit message.

Perfect, sorry for being a pedant on the commit message, but this
provides much more context should we need to revisit this again in the
future.  Never say never, (again)!  Thanks very much for this patch.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
>  arch/arm64/Kconfig | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index e07e7de9ac49..b5b13a932561 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1605,7 +1605,8 @@ config ARM64_BTI_KERNEL
>         depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
>         # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
>         depends on !CC_IS_GCC || GCC_VERSION >= 100100
> -       depends on !(CC_IS_CLANG && GCOV_KERNEL)
> +       # https://github.com/llvm/llvm-project/commit/a88c722e687e6780dcd6a58718350dc76fcc4cc9
> +       depends on !CC_IS_CLANG || CLANG_VERSION >= 120000
>         depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>         help
>           Build the kernel with Branch Target Identification annotations
>
> base-commit: e73f0f0ee7541171d89f2e2491130c7771ba58d3
> --
> 2.32.0.93.g670b81a890
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmDOSY4du_6V0Mh5WdqWWU8nC_b-2Eii7Pa5fVhZXbG9A%40mail.gmail.com.
