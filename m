Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXFJ5T6AKGQE5DMHOLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A01D29F4AB
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 20:15:41 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id t127sf1067605vkf.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 12:15:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603998940; cv=pass;
        d=google.com; s=arc-20160816;
        b=nl1jhRpgaD8CkTKp7ksK2+upONWbMq+72N33BXul+ZdLIqFe3NSk2jaLn/d3t299cW
         ZHzrVtYJzIMgWHopdx9QdnkSMDlSvbHe7gHe1Bqa7DFq6Bik5fKDp5hVX/Mzdb60FV8C
         kurw+4UyKZ5w600UUR4W8DC9GjakCdMSoYNbBZ4KF3OSD28fQYYBUhNWk4KCDRb8t3Ke
         otJf6B8XasPavruLuaLsREoWw11qHKnRl6Cdb89UjrDaTwfKHy4zIkKCpiFaBZ4CPL/h
         4cimcHTywHl+6X6blMwnZDeSYPrsYmWfOmr52w0n21mtnJYdHUKXvj5fRoTzaAR2GZJw
         sHpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=q6p2K7winYNlaIFFtEsR4KAjoLpiHVJ0Y4AFiDGbzgw=;
        b=DCmLLwRWNk30OmB7IZwVVDhh7uBvxcxuOXkLjqfr8mU1g8hv1slvkTKi9qpwvbPeIC
         IGSxezoLzLWj2XPiWF/Vnrf8XBMoqffDL87F+lOCSu8IAhtE9JrAnPpjv5LjmgVXh4pT
         K07ES8XcpjvCxkds+U7NNcDrm3o5HSqSrBX6Ur/3H7uZFC9EkfPwVMc7Fw1k3OLd3jjD
         97wPoFvTVSBMV6qyMvLLy34gwgTdFtJ2oT16e8K4AH23NB+fgE6oYJ71cI2KoZNurpQA
         QxGstu/sO1WskALmyqVFsNcmyn7vON8/8AlOLRQ67q3mYHpL5GtJKcigXdeyXoYhvTZQ
         zYww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rLxjrKJk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q6p2K7winYNlaIFFtEsR4KAjoLpiHVJ0Y4AFiDGbzgw=;
        b=ZOZ6W/b4D7i4ABcBy6TZCa/y6/zcrSGttOv6ZDdKskFWc/zK6qaM+7uSz43jD51QGN
         FaZIuySQUeTmjB5YucBxH48oCDnpe4UuL5iozotyGDM1YWo8a8wYOcnZYc9LUiUcTLvP
         14OBszg6vaW8S/rrOF2/+fUI+8YuvcjbEvdbLuHo1I4Siq2W8CGlzOGzkJqqA63CvfQf
         fbqjTUMrxk4Un0/C+fV98SoEpWNA6dAkcV59mBfgMq/iChpXeLPdLzF7ZVBEb3tm9wCU
         KiPlxHd6KjCyUPwyr8wt0w22vbwL5y5MKb7AV+pXek/ciUtAzx9wMX+l5LfoAr3lGlMj
         xliA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q6p2K7winYNlaIFFtEsR4KAjoLpiHVJ0Y4AFiDGbzgw=;
        b=SCt2lIdrRihfvNJ/t3EwCInxkwBYz8v8v6em8VCA4ZQ9ttxZ3OEnUI82cPtuyLxSRZ
         h/AF+6axG7tHfowjmRkiiBpR0N73rMfeCcGvpQfsPdC05bUF3K0N3vzbkTabcGo/qU9W
         zdd0nI9Fd1sqNcbCwBhU1jr7dY/2HqJje4icEMicGsrNs0N8JxvKe4K4BoKWgZ1RhHFp
         hC0F7FZ6K7xyWzXWkIaY/kIV5moO8F829MxPGCg6g0eFCKUG5qTU28tiPXQCK9uS2A5q
         WvWp9uOrvaxTzDzAy0+umd4K6AoPkRzGOpeuGo1cfJmOwwqu2iVIYLcg0eKBHOKn8NfR
         aG5Q==
X-Gm-Message-State: AOAM532omwLeH+0Pb/yNug47/Ts5LHrp09y704sUD8WUe/HVcg4RzOKL
	wGxlOGzq5je4Ge6efGUeHZI=
X-Google-Smtp-Source: ABdhPJw0WXefIpcVtEpzf7uRKe1sh37OtoMey3sAkIbmDkFc+EKTki/pHhz7jagHt2U8ZFGUUZs/Jw==
X-Received: by 2002:a67:de11:: with SMTP id q17mr2838257vsk.37.1603998940523;
        Thu, 29 Oct 2020 12:15:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6102:: with SMTP id v2ls308659vsb.7.gmail; Thu, 29 Oct
 2020 12:15:39 -0700 (PDT)
X-Received: by 2002:a67:f512:: with SMTP id u18mr5177396vsn.29.1603998939832;
        Thu, 29 Oct 2020 12:15:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603998939; cv=none;
        d=google.com; s=arc-20160816;
        b=UCm8EfVUwvPBOs3fgF6HQNrc0AYCE6M7EvQWXnMXo0ejNY0IT3rdoiPpDPQMuRlqUg
         ZWIo7D0YN1E/dXZTpD4L9F4WKQeeZhA/aITZ4waOuqoUCmVdiqfYPewjPufucgFJW3F+
         5daoRmIBjEm4Qfj8S7yWhJ9DR6i2pQiFfmgfDD5EMwmCGBEuta/jN8mB1Vq1SZICPNxf
         ljtR/u9qqY/DGNGRQY3oxm9m23IyuXtCZ5AiJvXe5tkC+JaEjbHdoslpeelTkH3VAzAq
         FxunG2wtP76CCHgih4RVpMJXJPc31BjpGCbhCd7jGRhAhP2wupsZm8mF7J05kLJ5FLIc
         5N6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mBw1GAOtbTvacIIrPn9i1fR24iJjUEupxZ8BqkGfkX8=;
        b=PuPq1MQTeB15BLGpNx2tXg/pIOcjlZzYrzW3V13jHumMiKH89gbRxb8vR10r3qWa3d
         OPFSA3YTn3JAzJ/p4rjjtbkrvuGYubDl0AAxbik1RDBrgSKSewep4erowelKLP/UuBAF
         HWpw/Ro54AJf7q//ClmwIoIW+ujxH9QJz5NRMKbzyJ8GPuBXpQ1PivAm1PfUSmiWRYjP
         qGzPDjvZU6KxWl3XzxrPtgdg7MWS64NUMhIlb7vLK8vgmys5oV4NlwgDSaoVAUFH1Db7
         QccgW+hCh6dVa/5LP5OLtJcBJ3CPjxXBl9fnpkCsz5Zo9WUJtIxZKZ4BnQpDgvxEOpkC
         O/cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rLxjrKJk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id e7si302261vsr.2.2020.10.29.12.15.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 12:15:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Received: by mail-pf1-x42a.google.com with SMTP id y14so3144679pfp.13
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 12:15:39 -0700 (PDT)
X-Received: by 2002:a17:90a:740a:: with SMTP id a10mr1329483pjg.32.1603998938686;
 Thu, 29 Oct 2020 12:15:38 -0700 (PDT)
MIME-Version: 1.0
References: <20201029181951.1866093-1-maskray@google.com>
In-Reply-To: <20201029181951.1866093-1-maskray@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Oct 2020 12:15:26 -0700
Message-ID: <CAKwvOd=wBKYMWMSvRbfWWUPJ3pUThKF5=1iRvwg0yDWTyE-TLg@mail.gmail.com>
Subject: Re: [PATCH] arm64: Change .weak to SYM_FUNC_START_WEAK_PI for arch/arm64/lib/mem*.S
To: Fangrui Song <maskray@google.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <jiancai@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rLxjrKJk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a
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

On Thu, Oct 29, 2020 at 11:20 AM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Commit 39d114ddc682 ("arm64: add KASAN support") added .weak directives to
> arch/arm64/lib/mem*.S instead of changing the existing SYM_FUNC_START_PI
> macros. This can lead to the assembly snippet `.weak memcpy ... .globl
> memcpy` which will produce a STB_WEAK memcpy with GNU as but STB_GLOBAL
> memcpy with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
> https://reviews.llvm.org/D90108) will error on such an overridden symbol
> binding.
>
> Use the appropriate SYM_FUNC_START_WEAK_PI instead.
>
> Fixes: 39d114ddc682 ("arm64: add KASAN support")
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Cc: <stable@vger.kernel.org>

Before your patch, with GNU `as`:
$ llvm-readelf -s arch/arm64/lib/memcpy.o | grep memcpy
    19: 0000000000000000   340 FUNC    WEAK   DEFAULT     1 memcpy
    20: 0000000000000000   340 FUNC    GLOBAL DEFAULT     1 __memcpy
    21: 0000000000000000   340 FUNC    GLOBAL DEFAULT     1 __pi_memcpy
$ llvm-readelf -s arch/arm64/lib/memmove.o | grep memmove
    19: 0000000000000000   340 FUNC    WEAK   DEFAULT     1 memmove
    20: 0000000000000000   340 FUNC    GLOBAL DEFAULT     1 __memmove
    21: 0000000000000000   340 FUNC    GLOBAL DEFAULT     1 __pi_memmove
$  llvm-readelf -s arch/arm64/lib/memset.o | grep memset
    19: 0000000000000000   392 FUNC    WEAK   DEFAULT     1 memset
    20: 0000000000000000   392 FUNC    GLOBAL DEFAULT     1 __memset
    21: 0000000000000000   392 FUNC    GLOBAL DEFAULT     1 __pi_memset
After your patch, with GNU `as`:
$ llvm-readelf -s arch/arm64/lib/memcpy.o | grep memcpy
    19: 0000000000000000   340 FUNC    GLOBAL DEFAULT     1 __memcpy
    20: 0000000000000000   340 FUNC    GLOBAL DEFAULT     1 __pi_memcpy
    21: 0000000000000000   340 FUNC    WEAK   DEFAULT     1 memcpy
$ llvm-readelf -s arch/arm64/lib/memmove.o | grep memmove
    19: 0000000000000000   340 FUNC    GLOBAL DEFAULT     1 __memmove
    20: 0000000000000000   340 FUNC    GLOBAL DEFAULT     1 __pi_memmove
    21: 0000000000000000   340 FUNC    WEAK   DEFAULT     1 memmove
$ llvm-readelf -s arch/arm64/lib/memset.o | grep memset
    19: 0000000000000000   392 FUNC    GLOBAL DEFAULT     1 __memset
    20: 0000000000000000   392 FUNC    GLOBAL DEFAULT     1 __pi_memset
    21: 0000000000000000   392 FUNC    WEAK   DEFAULT     1 memset

So it didn't change any bindings (good), but it did reorder symbols.
I suspect if you flip the ordering of SYM_FUNC_START_WEAK_PI relative
to SYM_FUNC_START_ALIAS you can get the previous ordering back, but I
also suspect that the ordering of these symbols is not important.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/arm64/lib/memcpy.S  | 3 +--
>  arch/arm64/lib/memmove.S | 3 +--
>  arch/arm64/lib/memset.S  | 3 +--
>  3 files changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/lib/memcpy.S b/arch/arm64/lib/memcpy.S
> index e0bf83d556f2..dc8d2a216a6e 100644
> --- a/arch/arm64/lib/memcpy.S
> +++ b/arch/arm64/lib/memcpy.S
> @@ -56,9 +56,8 @@
>         stp \reg1, \reg2, [\ptr], \val
>         .endm
>
> -       .weak memcpy
>  SYM_FUNC_START_ALIAS(__memcpy)
> -SYM_FUNC_START_PI(memcpy)
> +SYM_FUNC_START_WEAK_PI(memcpy)
>  #include "copy_template.S"
>         ret
>  SYM_FUNC_END_PI(memcpy)
> diff --git a/arch/arm64/lib/memmove.S b/arch/arm64/lib/memmove.S
> index 02cda2e33bde..1035dce4bdaf 100644
> --- a/arch/arm64/lib/memmove.S
> +++ b/arch/arm64/lib/memmove.S
> @@ -45,9 +45,8 @@ C_h   .req    x12
>  D_l    .req    x13
>  D_h    .req    x14
>
> -       .weak memmove
>  SYM_FUNC_START_ALIAS(__memmove)
> -SYM_FUNC_START_PI(memmove)
> +SYM_FUNC_START_WEAK_PI(memmove)
>         cmp     dstin, src
>         b.lo    __memcpy
>         add     tmp1, src, count
> diff --git a/arch/arm64/lib/memset.S b/arch/arm64/lib/memset.S
> index 77c3c7ba0084..a9c1c9a01ea9 100644
> --- a/arch/arm64/lib/memset.S
> +++ b/arch/arm64/lib/memset.S
> @@ -42,9 +42,8 @@ dst           .req    x8
>  tmp3w          .req    w9
>  tmp3           .req    x9
>
> -       .weak memset
>  SYM_FUNC_START_ALIAS(__memset)
> -SYM_FUNC_START_PI(memset)
> +SYM_FUNC_START_WEAK_PI(memset)
>         mov     dst, dstin      /* Preserve return value.  */
>         and     A_lw, val, #255
>         orr     A_lw, A_lw, A_lw, lsl #8
> --
> 2.29.1.341.ge80a0c044ae-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201029181951.1866093-1-maskray%40google.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DwBKYMWMSvRbfWWUPJ3pUThKF5%3D1iRvwg0yDWTyE-TLg%40mail.gmail.com.
