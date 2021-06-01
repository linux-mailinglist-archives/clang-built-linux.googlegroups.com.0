Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGEQ3KCQMGQEXIMX67I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id DF255397A96
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 21:18:48 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id m14-20020a5d4a0e0000b0290117148ba384sf1750755wrq.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 12:18:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622575128; cv=pass;
        d=google.com; s=arc-20160816;
        b=aNKorKYRohkYbw50QAZuKIZwueReJQD41Q1RHzbUQ043Z9r/ODbizvhhALdUELZtdA
         VVfigl9nU75mwClFk3ErJcnxMmM6Rk1IxEuF/2QksDX7IY30Vg0mwrGzUaE+wjhmvY8/
         7T/8CUMtMH3iekuzgK9bUUxBD1T5pUEOxmsLVpq590Su6FyDmGaqFHYwjKoU5w50UCXX
         RscV2DD7bIc+w+ja8hkjfSoi/IO0AoIHulIItCsi092L3FqRxTARGxWDBpjd7qZEu38j
         Bv/67509MvDpHm7Ml6gTYTT9vd9853aPesVC+/RkICjqhH4ReDqG0Q2CUgYmNlrD8QUA
         IZJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5JkxFidIugfeYfKWz4ulnJxFRSM41ex2mOu8OqEnkms=;
        b=cj0D/ZpnFkgRsqsDXAXACwm38AXJqLtChSbUYn7jSo9o8w3fI+5++QLajQ/z+gkI4y
         oWKgwjsgwj/471ZL+j0QsVc4ffeAeNr7a/MFN99p90a2WBet4n8LxZQZw8Lu9vsVSsW3
         ZHUOydN40emrbk1S87b3U0NrjcxHcR1eVgDLkAoOHohBcIh4J+P5DL59zUKTOrEgyKqm
         7HFFN0Kk7LXRpCdqbCa7a4T8GKnLfKIYQeKPXGDkU0FMLkVG3E7/O/9XdR2VaDTb71C/
         DjeV+RRXhYYLE//bRGggNvhjGV0LLZujgscglm95WPt3i7+7+15kz/izfM7FPg8PY1Dl
         tKGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pqfGVO0r;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5JkxFidIugfeYfKWz4ulnJxFRSM41ex2mOu8OqEnkms=;
        b=izRfNCwUrS25hqTg7y4B6J2wTs+DPua4hkIOf0gx9KwIBIn3mG8tO/pj24eIexbaMU
         ZFDu4kvv6Qp7n7Ozo0WLESk2dNjKHSQmN24FN09TPtU13ywNqsboE2PMtiFFQkuVRpoI
         TuMPtWcQZXWk8Mz9p8b9btaEIZTUyK03mOn+2GFNxEC1kNg3qSfjOPRs906sZxyUmQfj
         dja5iZyEgxnRvXwg70WsDF9SEa0uNE7cdx0Bbdfnv9JeXAiCOVAS/0voiJVbs/rJ8tot
         8RqhzSl3byQtgvQ6MFB7Ulg4knQakE/V4ScFxGYcmj5BcIZHYtF0TQv9xkFr2Ns8oXTj
         1xLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5JkxFidIugfeYfKWz4ulnJxFRSM41ex2mOu8OqEnkms=;
        b=GZTSpErC/JPJUP7KyeOGA8tLtEZiaqf96WEW6fEXK1/DWzf4V8u0K/TpWkdSIvbnbC
         P6Mall0KquvtBlcAXNr8lNyF27oQRGKZkW5fXWhxiVwWGCWY5AZ3/G3HzbmvH0i/8AtY
         kBtN6H4GDjrZRPDvtA0Jou+djGppMXga7rkGgVouvUwgI5dKnhv6EjkSrut03dMRiXfk
         ExFEKAf+OtSmsNUk+92ZNlnRRo7n0J4qFwCi6b1RGT+0kKQL9FC8n7nA/TyJErq7Yd75
         Ny95b/Hi4UtTKw0HHNnvS8WpJET6NShIqTof6Kt7L4WwcqPQCTLQ11af3IsB4TmLzMfx
         6ZJg==
X-Gm-Message-State: AOAM532pWbysj5lR823RKl0bqaULYnR6bYVJPe3AWr6jQi7a6fsRfVWU
	NAdToZ9tnzNbYY5Yvar1Wh0=
X-Google-Smtp-Source: ABdhPJzADWHDbdv/TTZTUdpby3FXjHrH1CkGufQIF9r7QJVBVJ+y9wdlxwKs8eJBCm/qkZs8pO8DnQ==
X-Received: by 2002:a5d:6e0d:: with SMTP id h13mr29951453wrz.118.1622575128706;
        Tue, 01 Jun 2021 12:18:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fe4c:: with SMTP id m12ls3231477wrs.0.gmail; Tue, 01 Jun
 2021 12:18:47 -0700 (PDT)
X-Received: by 2002:a05:6000:233:: with SMTP id l19mr13799994wrz.34.1622575127939;
        Tue, 01 Jun 2021 12:18:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622575127; cv=none;
        d=google.com; s=arc-20160816;
        b=h/HYbahxw2KbSl8jqZJ3/lPOpwlpB50esnRW4zl4cRk5evqguH0MKJdByGDtCBzJrQ
         14YWHDcuDOwUw8n3IffO94v3+2Gu2wpcvPr7xkrpiSyJsHLcm6p8nuilvgKu6FI8/9Kf
         P+slWf2PvvWeeU/IlfINgYOc7ujl7Yof6nXYukzAFV5N2eVP2WEuAKFFEor0+vgmtQPr
         2NdPenkXDplCfFR4hEJFuFl31GZTvNO4kYHspp5Zei8D9TgLgvTjjSVze5250y/Rd2AL
         /yNqabIB9fjh96M9ekzbWhPHfKmnY0oGP3tEu1xwAG2/sNnVgGZ/HrhC1ksclp4Aiiwl
         agsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vvgn/sxx7fGdQ0zzgT5kUctxtrwYDVPpVuGOvB0eRkA=;
        b=NOb8biWV/syauU/2q/VejISEMyCYWPOliDi4bz3VGUJfF0JCleLL4MZuquMDc9TKHe
         7e3G83w45VUjq5nzH+7eceKniZqk7Hc011ENtlBdaCgJ2XZVZkwhn3aMcC/FJm2Ayb9O
         jrYc0gwG1b/KiZjEATpK8A8qHY+iYBOGAmgU2vdGWrD9SqF94vd3bd0+KqKNHVnv5Ofo
         eQb2QZleGaYUo5/Mv3i3qEc9APZHRUky73bEtZBW9oTN77GfV4yLXh5Ec4j/tA+S6b14
         tkqPsRnKfGJWCPhfmdFIfFHmkUVRzW6O/AG5u2+AN5NmorHF8KQx+JkAmtc7S8yCs0z7
         FVDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pqfGVO0r;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id 11si166471wrb.2.2021.06.01.12.18.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 12:18:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id e2so20777312ljk.4
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 12:18:47 -0700 (PDT)
X-Received: by 2002:a2e:8056:: with SMTP id p22mr8516566ljg.341.1622575126992;
 Tue, 01 Jun 2021 12:18:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210521011239.1332345-1-nathan@kernel.org> <20210521011239.1332345-3-nathan@kernel.org>
In-Reply-To: <20210521011239.1332345-3-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Jun 2021 12:18:35 -0700
Message-ID: <CAKwvOd=T9HTUXETv2EJit0Qa8+p7NhTxcfZ3FYqy1xu--GNkgA@mail.gmail.com>
Subject: Re: [PATCH 2/3] hexagon: Use common DISCARDS macro
To: Nathan Chancellor <nathan@kernel.org>
Cc: Brian Cain <bcain@codeaurora.org>, Andrew Morton <akpm@linux-foundation.org>, 
	"open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pqfGVO0r;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
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

On Thu, May 20, 2021 at 6:13 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> ld.lld warns that the '.modinfo' section is not currently handled:
>
> ld.lld: warning: kernel/built-in.a(workqueue.o):(.modinfo) is being placed in '.modinfo'
> ld.lld: warning: kernel/built-in.a(printk/printk.o):(.modinfo) is being placed in '.modinfo'
> ld.lld: warning: kernel/built-in.a(irq/spurious.o):(.modinfo) is being placed in '.modinfo'
> ld.lld: warning: kernel/built-in.a(rcu/update.o):(.modinfo) is being placed in '.modinfo'
>
> The '.modinfo' section was added in commit 898490c010b5 ("moduleparam:
> Save information about built-in modules in separate file") to the
> DISCARDS macro but Hexagon has never used that macro. The unification of
> DISCARDS happened in commit 023bf6f1b8bf ("linker script: unify usage of
> discard definition") in 2009, prior to Hexagon being added in 2011.
>
> Switch Hexagon over to the DISCARDS macro so that anything that is
> expected to be discarded gets discarded.
>
> Fixes: e95bf452a9e2 ("Hexagon: Add configuration and makefiles for the Hexagon architecture.")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/hexagon/kernel/vmlinux.lds.S | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/arch/hexagon/kernel/vmlinux.lds.S b/arch/hexagon/kernel/vmlinux.lds.S
> index 20f19539c5fc..57465bff1fe4 100644
> --- a/arch/hexagon/kernel/vmlinux.lds.S
> +++ b/arch/hexagon/kernel/vmlinux.lds.S
> @@ -61,14 +61,9 @@ SECTIONS
>
>         _end = .;
>
> -       /DISCARD/ : {
> -               EXIT_TEXT
> -               EXIT_DATA
> -               EXIT_CALL
> -       }
> -
>         STABS_DEBUG
>         DWARF_DEBUG
>         ELF_DETAILS
>
> +       DISCARDS
>  }
> --
> 2.32.0.rc0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DT9HTUXETv2EJit0Qa8%2Bp7NhTxcfZ3FYqy1xu--GNkgA%40mail.gmail.com.
