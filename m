Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBTOV2KAAMGQEYQPK6KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E878309107
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 01:39:43 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id e92sf776159otb.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 16:39:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611967182; cv=pass;
        d=google.com; s=arc-20160816;
        b=MLXKP9/hlvbvVphk6xyCAF8pMVj5zgkCh9pCNwezK8ApgeF5oY7fGeTiJrrc0M1Drf
         V4ufOiWOGIK7xp9Ey/whDq9KQmqWjqVhIOcFOVP12xd/0qjEQb5DcQOxXiuU1TcjoPwG
         QyaLvhckI208OaJ7T7fRlHFfzJPJNegcaZkJujdkGOPXjVBLiHGAw3TiOQha23fEQ1TS
         UCwAhqFtWczIOAkObVt6c3y8GbuKddDFj/EeTMeO6RskQXMYs0IKgLkcba8u4pW5QA0G
         rJ5D+sdpse3pGfH6XMVH/9rcpz3Rzyy5J7uRIm7d3PdSBzo0GpWWldKHRIp9pFRIEqxx
         qqHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=hIXoeUAe81FbfgQV5IgECB5Sfo4H1ZRzbrkNfqS6nII=;
        b=UCj2/kULABlTFz0V4yn0Kc5ryP7mEiITNJpwZ0pyEOnCRHlzOwckmp1fyuTLQkNKuh
         PMDFvkGiQHtqsHeZWliGACPuTpos2Whcn0KKvg7qH2cSA4swoZSSLQaYHVJTStQ5Y5tl
         N7vaNoHSzQPeiXZSYicCr7fwdqvutsb8GJkbofo+OhK/2WXBelnX6GQXS5vm4Fzvmqqf
         pGaDRPCIfHr/JNH5vVhIGcJ9cwWqfQyPovizHv8DBp9Qe/E10/tmUSA5nchBSxiJxqoY
         iBM3gDbfPyIybPsd+MP/Uoif7uHZqiAo8Cd6n+zZfC91zk2r1+Qy6ctCBlHgpwg972oz
         X91Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="fb7p3r/d";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hIXoeUAe81FbfgQV5IgECB5Sfo4H1ZRzbrkNfqS6nII=;
        b=GO+ZYLf3DfK8xUN+3N9icDg8abo/bW4/ai/wqdXOQJNlSsP9W2GuoJ9XcKJgsBhH0u
         9wUPP5zen6nGdMztjKEwsFlY8OwN38ktfDr/7MXo8JXDQOj/R6kDuUhjCynH/fhtp39+
         J6FTYoYgKDHRb86xCfabtfuxt083CNlkeyw4pD3CjZR686aDZw64S7iePay0fNSZ8P52
         diRxk7speVwlgv3aqK7ebjxGCSUMBT9oo2iSYblP6BP+oO19rdqaZ9MbGYCX/6dBL7+X
         sg9m+l183UzRBnlq6q2zWflPD4ynOauDQoklQbHk6f/GUF+03uy1L+/u9ip9Alqdh8ax
         ImTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hIXoeUAe81FbfgQV5IgECB5Sfo4H1ZRzbrkNfqS6nII=;
        b=cvScn/AuXcEgoGmuNUU0lIn3eCxXx/Tra0lc1DTzew83i0BP0fQyXx7VPCU8w+mMlU
         Hk7sT4kLcSLoB8vsnow2gONHIvSu24XAOc26M0S/8PelIas/hq/PYldfkarPVCx47mr4
         ctyI5kBYnFKhN9lkTvjiuIxVBrZSAyY4IC0cVYMbw7ZhtfI0cTPmSc5ta8nVf7dMy4rU
         rlgD5gxEfRNNyEUVW4MKUyNGQTtKtnkMSa5gm0XLd2AUDxy1nUr0W95AlBPWq5mrTTkV
         GJtvtWmQR1oy33tWQsVdrXeafYNa9YQvahRNEUocDua0ROiqqmCFf4v8kiqb8km8xsig
         53cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hIXoeUAe81FbfgQV5IgECB5Sfo4H1ZRzbrkNfqS6nII=;
        b=DLvVQLE59nCQuzkXayl4yir1oOmEHZDm6nI6szdA+LuT5d6kmIvRFhYAPKSxEE6Px2
         0UeUbElpQ8wzaDFhCN2sX+jvjSKBgRvpcH++bKRTBGTpENHAN0gYlLic+OdObvdId3BQ
         M17P+aLknH4Ki7mCARKWkjkghoCIn01aFJO56mc74l3YNPl0nS9igbKvO/p+RYZumGwZ
         mIkXHoJi/Q///yXLGl/RWJeGeuZfnLr0+p3CWS3cfBmTe9Of6DvxJburqqwaSjiCTGWV
         h1+b0NOKGGz7dvZ8QyPVfLX4y2j71eZQHXxFRfXJkxkXGhmiGQjo3utezoavw1KErmec
         zD0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JPMgn34kOkEvzzvOdWzkTnnIQqb45P2jJ54PVzJ429Ckk532w
	RLprPvung0Jq5ZhhSI9Py/M=
X-Google-Smtp-Source: ABdhPJwCwDHdkGXxROs69x/njRNNgHQG/zRGemTcGiTpePTDd2DoIaaskO0KWkEFHW1WqTWeUT6shg==
X-Received: by 2002:aca:4d93:: with SMTP id a141mr4060285oib.107.1611967181994;
        Fri, 29 Jan 2021 16:39:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f0d:: with SMTP id u13ls2585473otg.8.gmail; Fri,
 29 Jan 2021 16:39:40 -0800 (PST)
X-Received: by 2002:a9d:784a:: with SMTP id c10mr4814247otm.132.1611967179967;
        Fri, 29 Jan 2021 16:39:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611967179; cv=none;
        d=google.com; s=arc-20160816;
        b=KheQFGDQGJoeu/EAkJqQ2/2O82t5egTAXHDMH2JFCmqDNtLLCPRNcciLzYxzZ79/LZ
         509F+plOeFWFtBMnN4cZL3Ki6rFk+jTRNSejS2AxmM5dG8b3LYUTZlhh4tW05n/o/Lae
         ocsUq+oNFa1ttyjxFqcTqw3sJrrDQ4clpppPtuQrgxNFxmqK7mZRBHpyPVyiAhkc+epK
         5ObXURethkhrZcr34n4bEaWqTIDIH+MzskGw6iJVUinDD8zhwE+Kh/WS10cbRlcnLnzC
         OO1u5HM4ROJWZqf4eTSu+JEL84CXWYWDSVmiPP8ydx9jmtAZTYXIrZTyDxeGwdtXk2pB
         4kSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fN/7Srg6RMZMQg+Pj363TOFpYds2LIdsI9psnGjzFYE=;
        b=P27HVw9xajJhVNfa//nEAFY6FCybsUVy2Afh490jCdjxefKt7/+CBXDxKHdJsaHA/f
         xxHDj8WmkFTJ/QJbjUb7l3i34HKBTLojlec0xKA/9df8KFdnS6Am91tJXwgafX84Savn
         OSPRPvNQSxudXn9UKYPRWA6tBV6h3eh23aCRer8n700+CpmqWOqkft3xmo/Sb+xI3yZb
         fRSNyYrQlgxBiFWeOZ0uidGX8K3gMmCVYMzaYWV+y59ffs898AlToTmZeZeFqGJtj4ys
         B84Zcr6bx44Ug0cSXGTIx78pAn6TP6wFi8Zn5oVg6LCVCcJY3ahGcUfxDYWiu0pT4hSc
         1Sfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="fb7p3r/d";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com. [2607:f8b0:4864:20::d35])
        by gmr-mx.google.com with ESMTPS id g62si535158oif.2.2021.01.29.16.39.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 16:39:39 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) client-ip=2607:f8b0:4864:20::d35;
Received: by mail-io1-xd35.google.com with SMTP id x21so11223071iog.10
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 16:39:39 -0800 (PST)
X-Received: by 2002:a05:6602:1806:: with SMTP id t6mr5393733ioh.171.1611967179623;
 Fri, 29 Jan 2021 16:39:39 -0800 (PST)
MIME-Version: 1.0
References: <20210129201116.2658179-1-nathan@kernel.org> <20210130002557.2681512-1-nathan@kernel.org>
In-Reply-To: <20210130002557.2681512-1-nathan@kernel.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 30 Jan 2021 01:39:28 +0100
Message-ID: <CA+icZUWQVE1mAL8v1DjWziAFtY7FLBTawv3voVG8KB6sWFHaOg@mail.gmail.com>
Subject: Re: [PATCH v2] vmlinux.lds.h: Define SANTIZER_DISCARDS with CONFIG_GCOV_KERNEL=y
To: Nathan Chancellor <nathan@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="fb7p3r/d";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Jan 30, 2021 at 1:27 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> clang produces .eh_frame sections when CONFIG_GCOV_KERNEL is enabled,
> even when -fno-asynchronous-unwind-tables is in KBUILD_CFLAGS:
>
> $ make CC=clang vmlinux
> ...
> ld: warning: orphan section `.eh_frame' from `init/main.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/version.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/do_mounts.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/do_mounts_initrd.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/initramfs.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/calibrate.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/init_task.o' being placed in section `.eh_frame'
> ...
>
> $ rg "GCOV_KERNEL|GCOV_PROFILE_ALL" .config
> CONFIG_GCOV_KERNEL=y
> CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
> CONFIG_GCOV_PROFILE_ALL=y
>
> This was already handled for a couple of other options in
> commit d812db78288d ("vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted
> sections") and there is an open LLVM bug for this issue. Take advantage
> of that section for this config as well so that there are no more orphan
> warnings.
>
> Link: https://bugs.llvm.org/show_bug.cgi?id=46478
> Link: https://github.com/ClangBuiltLinux/linux/issues/1069
> Reported-by: kernel test robot <lkp@intel.com>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>
> v1 -> v2:
>
> * Keep configs and flag names alphabetized.
>
> * Drop mention of -ftest-coverage since it does not cause this issue per
>   Fangrui.
>
> * Pick up review tags from Fangrui and Nick.
>
>  include/asm-generic/vmlinux.lds.h | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index b2b3d81b1535..0e6c5da667a7 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -988,12 +988,13 @@
>  #endif
>
>  /*
> - * Clang's -fsanitize=kernel-address and -fsanitize=thread produce
> - * unwanted sections (.eh_frame and .init_array.*), but
> - * CONFIG_CONSTRUCTORS wants to keep any .init_array.* sections.
> + * Clang's -fprofile-arcs, -fsanitize=kernel-address, and
> + * -fsanitize=thread produce unwanted unwanted sections

Typo: double "unwanted".

- Sedat -

> + * (.eh_frame and .init_array.*), but CONFIG_CONSTRUCTORS
> + * wants to keep any .init_array.* sections.
>   * https://bugs.llvm.org/show_bug.cgi?id=46478
>   */
> -#if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
> +#if defined(CONFIG_GCOV_KERNEL) || defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
>  # ifdef CONFIG_CONSTRUCTORS
>  #  define SANITIZER_DISCARDS                                           \
>         *(.eh_frame)
>
> base-commit: bec4c2968fce2f44ce62d05288a633cd99a722eb
> --
> 2.30.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210130002557.2681512-1-nathan%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWQVE1mAL8v1DjWziAFtY7FLBTawv3voVG8KB6sWFHaOg%40mail.gmail.com.
