Return-Path: <clang-built-linux+bncBDRZHGH43YJRBPFA4PWAKGQEMQ5KP7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD08CCB9A
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Oct 2019 19:17:48 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id q3sf1054984lfc.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Oct 2019 10:17:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570295868; cv=pass;
        d=google.com; s=arc-20160816;
        b=P/AmIiiAzKj3IrnapO24HyJ/j7ZxX6G/QguIIBzFwl3qver2eq9yuocYY/0AU1kPYW
         wMbPefLBTt085ci1PP2FWU+8Bh9+gYYpViUqqq3p82v1NYD9SD+XF1nTJA9+LftAj8iq
         FcHoxqLI8LVlVHiKUVmaYgB40cZ9QHP3OyTAYG+8iFkj1OKS2Q8GgChAOvjLyKBVGarI
         61D8v2vjzrNkz6DVsjQ2qo7jgy8b4WGQfe/T9l6EYjtEPr0c6Er+SlSnHNgNcK8AHDR5
         o0JMJhkLojT1CVrTQ/qjiJ6h1ORmsj8L1ViNHxTKzKf1efvxvX8i+kg2uKUeQwfPXAp9
         6P4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=myF5eLo0untIiYukOGmCfsBmf0WpTxACKCvcbMae658=;
        b=dSyiOglaBYbHCeilFordBq1ADoHCRzPcN8D98tTkUb5Iw/VEV2Uab4c94N/Tz0qYUU
         Ke4iaHu9vvzVZfhtmopjgZqJPIO69Ws1WPYQ/FCSLFc9yadY+3kHBKS6z09tq9zW1zu6
         OEjZG+gZHDT1ilWfI+8QWRq/nhBbdUUtwRVw0l/UJKyRU5v+YHhhS2xMQnLn+UzA0dhP
         7UX4xPwiuGIX3S8TtUTywLcrWCJTAUO0qfzuV2oN6O/d9AA7OTeFKltPS25nOb5NSb3L
         GY8GJOBvZN/RbKFvrkONblyEHjZRKP+JhjV2U7Jru408A3Jv8ka9u3zy5wNNCKktaYFC
         2qcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nmnkvKAn;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=myF5eLo0untIiYukOGmCfsBmf0WpTxACKCvcbMae658=;
        b=cZq3qKzkVWwkXBmewBJArr64A+Vx1ym0h+finaPBOqjQYTreQQOsv1PvaPD30N3tki
         SerceCXA8h/FLXJ4pMyuvoGelD09wKnXKAz8pUWc/EZbcKziFX50azzEZhHi1ZWoeDWW
         BPuITqvPrgC8FEJdcSnKzKGz9awlDl8ZKb8pWd85oKKaIIXPFdPud9Vp2473RT95gM7w
         VJdVNjukWY4K5h+ZInFG4Hnpfw3y7lwvlhOvT86UW+r1ebgfIrHwHvu8aLQXqC7cER8U
         QivOCuWsbvtOcBAIK9GddI2hng19DkLB6J4v7iA9h3ey+QVAH7p5ej9HltkX0UID/hNy
         yMww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=myF5eLo0untIiYukOGmCfsBmf0WpTxACKCvcbMae658=;
        b=RPBoNl6+NY8MHcqWBv8kxF1o66u4tTDeSpBk3g1tIyG5O8FQ+b26KTFaTo5bRC3r9f
         +mYPDxFjV7HLruD9Lg34KPH/ISZYfYtNPCn2BxYSJbBSJ+aRtxduux/ZmwYgt6WxDY+5
         H7HyorC9ZwVEsp2XWH9EL+M/gi+VxlJqYqBzipNeG5Kx4IbVWPsVUTO7YgQhFPvWKX62
         PaWS1nL76EhFZYS+gneiQXbuSCfdr8ZEcy0pAMMI31xC/gi/VE7nMznr+WqfCI020dqO
         mhkmxEtWuM0bFxWKgm/gdlAtngVqwtj4enjxmYwoPpWAm9kEZIxbccz8u2K2BgA1kXoR
         96yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=myF5eLo0untIiYukOGmCfsBmf0WpTxACKCvcbMae658=;
        b=cDD+I0rDvvANsQ4JaWhSsvAeAXDie67bg6dRMK1gdfeynaZ2lNFm8oz+IWi4Jyq/5h
         KF8lD+lzm/rdP5zEVMY/HLj+VjDKGnsWbSEXkvSKcs6Dmc1pSKT+1/nIPh+lSpaViBkM
         Q5AtSANI7EXMY1gEqLTQnDDxaK9RQZ7rN6BsDCGs56NRtmq4uIOsksXt7+tOaVK09PX9
         snWlPTMIb4VdVtyiUhFyouguZQPCdfaEcaFJMc1C+l70taa86IeaHJ7O6kZoRUB75K9S
         b6YQAZfxFGu+cLB7hgAtu37rWHtxikyiDFMrHtVsBtpmTHhBDhh8l/3omyXDRPGp/a0C
         p8mw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVer5WscoIpSqomcutw/fIykBjVbqnE1ck5zG7BLX8CmnundDbn
	CPoYBbXSWBP/+cgcbMnOKfQ=
X-Google-Smtp-Source: APXvYqwY7jJHjC6cvp3rA5AweeTjNU7tk/CKIrIHAM+rjsCDL3ntT/0WFy9VU5UE/gn/qcs+x1nwxg==
X-Received: by 2002:a2e:9898:: with SMTP id b24mr13333693ljj.157.1570295868379;
        Sat, 05 Oct 2019 10:17:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:651a:: with SMTP id z26ls1667936ljb.2.gmail; Sat, 05 Oct
 2019 10:17:47 -0700 (PDT)
X-Received: by 2002:a2e:a0c5:: with SMTP id f5mr13305839ljm.114.1570295867762;
        Sat, 05 Oct 2019 10:17:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570295867; cv=none;
        d=google.com; s=arc-20160816;
        b=grNDdbIaPBhhgAf+F72bwuTuiiNlVtA2WIeAmEcFDlSlYq//wioUT2mnTc2E23lLG5
         Nq6054C9kkKBefz4E0LpsvGi7AUfpdeK55X5SvMRvRQNyz0udDcWB1agf31POUvYfE0u
         uasIwMuXMR0wku86DQpEavocfRaoi0v8+EumXsbkXgV3bEGEi+lEvXGQdYRLuCi/ehrw
         /jw6LwNj+nlXTq4EU9VrpfoFJ563Y0ytcS/HaNfFouUtL8RDfLgrC+geH71iDxUpkQw5
         /QGW9HzpNj5uA5cPyzEX5MPunE0eHFGaE6gICRmCUg62oY96FqMRzYx9asawtxliQ5be
         ww0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aOGwf0ucGcTkS6kG4Kqk1TV9ERcqoABUEj/aVR2d/Z8=;
        b=Jri2hIAQ3P/fprKbzlBVByxOFHrSO8CVt2YMhPJo3CIiImOrI34Jg3J7XUHgB3vp0o
         L5L7sxIFxIuhP6bCnn9voEYdG7zl2rTBeTtpp121bCBLcIkDH8NgQ85dHX/VNzLDnaXB
         jvtztUA4IRvbnz7G9FdKJkOTkqoBy6z3/HaZ3wobV0uEwMwGPsUaBB2yjHdOpLhbJ5EV
         XHMDCrGBqrlXZCR+49oUFjWvkfH2aVF+zb0oB/Fh2MQyGE386UU4RFJcbgwDu64W5Bj3
         tcxAcH6maRWJi1SX5CFfqMGyF2qCQcCdRnbzcMFACTorPGm6XjdfK+HSp7H/JuVM6/C+
         lTQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nmnkvKAn;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id c25si696920lji.2.2019.10.05.10.17.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Oct 2019 10:17:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id n14so9549605ljj.10
        for <clang-built-linux@googlegroups.com>; Sat, 05 Oct 2019 10:17:47 -0700 (PDT)
X-Received: by 2002:a2e:9a4e:: with SMTP id k14mr9654449ljj.129.1570295867498;
 Sat, 05 Oct 2019 10:17:47 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570292505.git.joe@perches.com> <79237afe056af8d81662f183491e3589922b8ddd.1570292505.git.joe@perches.com>
In-Reply-To: <79237afe056af8d81662f183491e3589922b8ddd.1570292505.git.joe@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 5 Oct 2019 19:17:36 +0200
Message-ID: <CANiq72kU2_s=58HqdN6VMGDAh_+G+dtns9xzoc4huSVwP+ZXUg@mail.gmail.com>
Subject: Re: [PATCH 2/4] compiler_attributes.h: Add 'fallthrough' pseudo
 keyword for switch/case use
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Pavel Machek <pavel@ucw.cz>, "Gustavo A . R . Silva" <gustavo@embeddedor.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Kan Liang <kan.liang@linux.intel.com>, 
	Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Shawn Landden <shawn@git.icu>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, David Miller <davem@davemloft.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nmnkvKAn;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Joe,

On Sat, Oct 5, 2019 at 6:46 PM Joe Perches <joe@perches.com> wrote:
>
> Reserve the pseudo keyword 'fallthrough' for the ability to convert the
> various case block /* fallthrough */ style comments to appear to be an
> actual reserved word with the same gcc case block missing fallthrough
> warning capability.
>
> All switch/case blocks now must end in one of:
>
>         break;
>         fallthrough;
>         goto <label>;
>         return [expression];
>         continue;
>
> fallthough is gcc's __attribute__((__fallthrough__)) which was introduced
> in gcc version 7..

Nits: double period, missing "r" in fallthough.

> fallthrough devolves to an empty "do {} while (0)" if the compiler
> version (any version less than gcc 7) does not support the attribute.

Perhaps add a short note why (empty statement warnings maybe? I don't
remember them but it was months ago so maybe it changed).

> Signed-off-by: Joe Perches <joe@perches.com>
> Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

Please add Dan's Suggested-by and copy the things I wrote in the
commit message when I proposed this:

  https://github.com/ojeda/linux/commit/668f011a2706ea555987e263f609a5deba9c7fc4

> ---
>  include/linux/compiler_attributes.h | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
> index 6b318efd8a74..cdf016596659 100644
> --- a/include/linux/compiler_attributes.h
> +++ b/include/linux/compiler_attributes.h
> @@ -40,6 +40,7 @@
>  # define __GCC4_has_attribute___noclone__             1
>  # define __GCC4_has_attribute___nonstring__           0
>  # define __GCC4_has_attribute___no_sanitize_address__ (__GNUC_MINOR__ >= 8)
> +# define __GCC4_has_attribute___fallthrough__         0

This goes after __externally_visible__.

>  #endif
>
>  /*
> @@ -185,6 +186,22 @@
>  # define __noclone
>  #endif
>
> +/*
> + * Add the pseudo keyword 'fallthrough' so case statement blocks
> + * must end with any of these keywords:
> + *   break;
> + *   fallthrough;
> + *   goto <label>;
> + *   return [expression];
> + *
> + *  gcc: https://gcc.gnu.org/onlinedocs/gcc/Statement-Attributes.html#Statement-Attributes

This also goes after __externally_visible__.

Please add:

  * Optional: only supported since gcc >= 7.1
  * Optional: only supported since clang >= 10
  * Optional: not supported by icc

As well as:

  clang: https://clang.llvm.org/docs/AttributeReference.html#fallthrough

See how I did it in the link above:

  https://github.com/ojeda/linux/commit/668f011a2706ea555987e263f609a5deba9c7fc4

> + */
> +#if __has_attribute(__fallthrough__)
> +# define fallthrough                    __attribute__((__fallthrough__))
> +#else
> +# define fallthrough                    do {} while (0)  /* fallthrough */
> +#endif
> +
>  /*
>   * Note the missing underscores.
>   *
> --
> 2.15.0
>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kU2_s%3D58HqdN6VMGDAh_%2BG%2Bdtns9xzoc4huSVwP%2BZXUg%40mail.gmail.com.
