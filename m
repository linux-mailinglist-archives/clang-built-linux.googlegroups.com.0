Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBD5VZOCAMGQECXXLQDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 719883744C7
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 19:49:04 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id s123-20020a3777810000b02902e9adec2313sf1698355qkc.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 10:49:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620236943; cv=pass;
        d=google.com; s=arc-20160816;
        b=g/0cBTqzJBnBvc1VPLVp69r8p+QJ2jvP3yNDaX6ugL9EwCS1H/oRUcDf1qn1pKlMRz
         3GjoX1bcuCiKAZGLepcemuhJY21KreJgqil6JjLHlLuNGfA/QVIYCU7JvzXDWsXCkeuq
         SlaxK0f910a8r+xIpsANJSKbpoo02kB1qy55jwetCp9tzl3k2l/pE8JHyvmNidq63f7A
         qX7c5q59ItPAU1v8NRDJm02YnELsvUsAaKZjZEquysMdeWuVscMV+ALpax4SlORSvjj1
         yAteaqyJILtg4oUvEjwEU2Q/cGK5OSWifDkoptB9MzDg63U+yXkCtll3Mezg98t8aaob
         WGQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=VG/wJmrwFv9MrI24rbUwBXC07LDTyripweHwv4qVMKo=;
        b=o5OnqLPIyUZ0bgoW1KvEeCUio0SL1tetE7dVbWn693krPGcSdH7MUU43N6yIUXiFsH
         Pg1OQMRELq7A32zXWey5TxTzEJnoh/VDlYu+sfJUwPFPwStwsLWClb94ErRiTtwmLfBT
         2hMZt+QnptHGLpTM+vMmiwjuOtAT33QmgRfJ2oXLE9CoEMhhFzoVedO8Yy9T9ckH4OOv
         v/0NyvLYzJl3DJTpoM6ApwypkISAKEpOw6lIzWbC/ddsAR/cAzs/rONX2T/a22Wvrj6P
         e71QZI5BDu6Rem6Rt8fG2F6dZnSq2wzRNT9g8tZVz+kx0hcpNNBKRkTfG5rSIZN9DmBO
         vsng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=LNOr7+LT;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VG/wJmrwFv9MrI24rbUwBXC07LDTyripweHwv4qVMKo=;
        b=PZ8gtgiLzhRuXPrEYURyYiOac2j77969bjYCK2pPWXLQh7V0bglogyTea+4rKAZo4g
         Ycc/gfKpAVLkCPrjPLM3O0E+z+798Yv73uNOgXSjE36f91eQV1G7FAMffuUo+E7SFJjJ
         RtpOwLYVJPqi1pUkck15oUa96qZ4MoorUfJOIEAdWyVodhxC1Q3eJQ50Fc7XKqlFjfzE
         o5MZWU+J3I7OO5L/aFzZj+GmNmLwc9cx8YpkZt0BPvxtaf5eoE3osHWynQeel/NNhxKV
         pW0WsgUiU/B8dRRbk8LZHWt7+iBDjvO42TUuLF0MH3Krj3e+OjHKyY0F7Omg4Z2OKNpR
         Nm0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VG/wJmrwFv9MrI24rbUwBXC07LDTyripweHwv4qVMKo=;
        b=PCWtoDGkdFwNBhzUqdl1Sif8ZpWNq861Vivnjs6JflZcyJ4PQEo81nf2DVndVtp+qS
         LCSPK/ZjWRYDzs9sELJ4crTShcB52KMjODcNaxNJpVWSQ9x5GYBEafvszXT/EMgVEAY1
         hLeAH9zcdJvjUauRzpH+GeEZzzS+YVadTw2EDqHO47ngoyQGXkJWDue2uMyOgGR9ttsS
         Xz/NWune/uw/SZlkCkLH3dzsNRCtHHJzyJnApbBO4TIZeFIkS6c2U5VjTDlydCtsxrZP
         9mZfPdqBsNN7xUIlAmnPnbAO0hAQEAxw87lvrL5R0QBRQhaZNUpHzah975oqmkY8WdkB
         jLHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BksBwk1egastfUYYhJR/RjPyxYQP9zz1jkZhkCozi/854GktM
	99L5BC3gDNFkPP2lHTsk6S0=
X-Google-Smtp-Source: ABdhPJxNVOygBKHOXKz4MFb61lLTLanjVUCimvQ14wnYaYJ/x5XBg5GFSFrl1P08l+oDvEE0NuK/0g==
X-Received: by 2002:ae9:e90b:: with SMTP id x11mr9427371qkf.85.1620236943577;
        Wed, 05 May 2021 10:49:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:100c:: with SMTP id d12ls11756qte.3.gmail; Wed, 05
 May 2021 10:49:03 -0700 (PDT)
X-Received: by 2002:a05:622a:1354:: with SMTP id w20mr29256682qtk.223.1620236943121;
        Wed, 05 May 2021 10:49:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620236943; cv=none;
        d=google.com; s=arc-20160816;
        b=DYRpq3ylu9I3XN4n9+Z4DfweHEcEQOLePXgBWahkgtY9Ti6tvdaGwd+N/DoPiYU+2T
         shjR207its7dt7n01BVfE+3OM7Lc4gKWrRzW6PKGEpi5po2czY7fCPA2FkP53Jxz+WfK
         tH1KZaS+QtUl57eAqmF+6tAp2QURtVEa91r0ETcsMlfPWWEPwYOfWbp3P3NJ6EE88Bcu
         TjveobUia+hVxGU84KWPCi1JdfxWCKBb94ZpUMTrYu3ugHjczaHrYKuuKJ/BBqu1PIJu
         Ttsw/VHzcV4nPx5NnQY0YnDNZMgEyRYBmB27f4RRdjLIyci9K0PLF810BBdV7VH45E8o
         x8Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=ir46Etvd5HEmsWvvFCQEwM57MdYnrHyoHbe/TY2pWzc=;
        b=cF76+CqdDHYig8mYlHmT4xrriN7WjuZvq4LQ+OC5/qv9MXP11knZ9A5FIPOEUGLupO
         xgmVE4vjCFqdQjnJSz7bjjwY/Umf1rGc4TG3oJ3nbY6a/7JyqgXZYP6PVocm1CB/Xjsr
         u4a2+wBF0wvkucfiYfc1YNYSaytu3b92KqNLvbRHpACeaO/GGHFOgrvgTV0TcXD9fvFW
         ILuIGdlhmgfI0F0riGErmX+O1GM7IjWcRQiVEMao+in35AnpmA/0v1+Do5vo6kCa+/D1
         /ZTEN4n9VHRINayakUhK4/2IlLSxuHUli7vlsZy7LMckLSkr5iQ18S5NrqioBJbhbR+6
         fZzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=LNOr7+LT;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id k15si13415qtu.0.2021.05.05.10.49.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 10:49:03 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 145HmlqH006856
	for <clang-built-linux@googlegroups.com>; Thu, 6 May 2021 02:48:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 145HmlqH006856
X-Nifty-SrcIP: [209.85.210.182]
Received: by mail-pf1-f182.google.com with SMTP id c17so2552781pfn.6
        for <clang-built-linux@googlegroups.com>; Wed, 05 May 2021 10:48:48 -0700 (PDT)
X-Received: by 2002:a63:e044:: with SMTP id n4mr107487pgj.47.1620236927301;
 Wed, 05 May 2021 10:48:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210429012350.600951-1-nathan@kernel.org>
In-Reply-To: <20210429012350.600951-1-nathan@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 6 May 2021 02:48:09 +0900
X-Gmail-Original-Message-ID: <CAK7LNARJt9tx1_Uuw2S_RLcrqaueAOf2D2UdNH7XP4zRzdaJ3g@mail.gmail.com>
Message-ID: <CAK7LNARJt9tx1_Uuw2S_RLcrqaueAOf2D2UdNH7XP4zRzdaJ3g@mail.gmail.com>
Subject: Re: [PATCH] Makefile: Move -Wno-unused-but-set-variable out of GCC
 only block
To: Nathan Chancellor <nathan@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=LNOr7+LT;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Apr 29, 2021 at 10:24 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Currently, -Wunused-but-set-variable is only supported by GCC so it is
> disabled unconditionally in a GCC only block (it is enabled with W=1).
> clang currently has its implementation for this warning in review so
> preemptively move this statement out of the GCC only block and wrap it
> with cc-disable-warning so that both compilers function the same.
>
> Cc: stable@vger.kernel.org
> Link: https://reviews.llvm.org/D100581
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---


Applied to linux-kbuild. Thanks.


>  Makefile | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index f03888cdba4e..911d839cfea8 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -775,16 +775,16 @@ KBUILD_CFLAGS += -Wno-gnu
>  KBUILD_CFLAGS += -mno-global-merge
>  else
>
> -# These warnings generated too much noise in a regular build.
> -# Use make W=1 to enable them (see scripts/Makefile.extrawarn)
> -KBUILD_CFLAGS += -Wno-unused-but-set-variable
> -
>  # Warn about unmarked fall-throughs in switch statement.
>  # Disabled for clang while comment to attribute conversion happens and
>  # https://github.com/ClangBuiltLinux/linux/issues/636 is discussed.
>  KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
>  endif
>
> +# These warnings generated too much noise in a regular build.
> +# Use make W=1 to enable them (see scripts/Makefile.extrawarn)
> +KBUILD_CFLAGS += $(call cc-disable-warning, unused-but-set-variable)
> +
>  KBUILD_CFLAGS += $(call cc-disable-warning, unused-const-variable)
>  ifdef CONFIG_FRAME_POINTER
>  KBUILD_CFLAGS  += -fno-omit-frame-pointer -fno-optimize-sibling-calls
>
> base-commit: d8201efe75e13146ebde433745c7920e15593baf
> --
> 2.31.1.362.g311531c9de
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARJt9tx1_Uuw2S_RLcrqaueAOf2D2UdNH7XP4zRzdaJ3g%40mail.gmail.com.
