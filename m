Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRNXVOEAMGQE4Y5DYNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CC13E078C
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 20:26:15 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id 16-20020a17090a1990b029017582e03c3bsf7245343pji.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 11:26:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628101574; cv=pass;
        d=google.com; s=arc-20160816;
        b=CS5KvD/EepIHsfF/y5q9v2TmnbakC7To69htj8Teqw1Qgiyq7/icFfQUSOsSxrwEes
         r/00U87AEMp7f6SW4T2ayEJvzQKFKP5vVnLvjLAIeF/LEqFC7x8/F+pnl0JLdYAETCng
         nrO8Xa2YkNbBIoSqocbsTZaUwCLZ53f5K1lrDsJi5l2NC/4yveTJEEtCbI6pzIEGUxG4
         2/45MhZEG+nPr8T4UsqsamHAPILHXGm3t+JVtNcMKiQHiSTXUsA9NIsJiH23K0xRorSS
         7P/Zw+9Zs5vvGw4E+U+B+aY2sT4+XycUoWRlB2vWVsJVoe7qBubw5g0gWvMKQEtwCJGO
         6Azg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=W0C9H2Y5kEzqDu1KFTTwvU4fOisTj1ALJj0IgakrKpw=;
        b=Zey7lEzqH/NiLQZ36u02O4YatslhZx2Q5fLnRUSyCPmNtvoRyB7GDFyR+KQNZXUUzC
         4F96CSF2TcFYVjwfIyZ8w/lTH4BG6iABohMk3k84Q7F3G0begXd74GCChgIlwKuJU/7M
         v7Pp0il+CoMMBNaLg6SeMucgwtcMrJi/HO0Kvin9N0ij0751aNnKvzEa+R6OjYEQ6+T2
         PhPafZJHsz3ZZwfQ46lQ1UBQ9lGsy5GZTEJ46e5VIfxtDSNVxXbRMGTwfMxtRpaS220a
         77ErxQhXVaQO4LmS/x8K+KSH1vJpTl7MNLpiJVl1BT4Gt+8p60yDIQEymNIo8//95mMO
         7WUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WcuxIXe8;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W0C9H2Y5kEzqDu1KFTTwvU4fOisTj1ALJj0IgakrKpw=;
        b=simq4nhrwDlNTIQbCYEiBFcyApj10Z50YdiCIuPJNYFnTT+yBxMCfRSvKmX6mQ5JxR
         jpzrhyqsxNYEV2MLHYeg9XE+hdyS8oJtk0DUL7Zp1oDR17SIsGPzzFJnzRQgQx4BpCnb
         jNVlP6GvRK1EhgSzs1SSju4ZdSvjkK5S/pd9IMiNkC7FKC0JZsvJCRaet92Q9IMnJYnL
         anEm7aycAwVIHuWEpz2FxjJWWlYXH0xJwI/xWJUy+0LTitW3FI19Hi9+pFUudgKewtVX
         gST1ybYNJHk6FYxo8xhiv6u02o8quIA4Ss+qb7wtb5F3xVtpqZtRP9JblA6fGb1OeWZH
         OfFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=W0C9H2Y5kEzqDu1KFTTwvU4fOisTj1ALJj0IgakrKpw=;
        b=D8nAVvgTux2b1lL86TWCsBLvLAuuRL9A/6uuajhPE+KiEzk0aSi89Q5XU4TflQFlfX
         HJSN+uSNYEI0Jy1bD3nlCMB4N3Q84wHxKYn6n3hSPejbdeROraSs4q+iH6wipV/2U9z6
         Z4AQFkgXyIT8j/P36HgLIEeciHQ22jfF1FWazFdYghNO7eFvVG0570UgAonWpipHK6+T
         X/H730AHXO1oN7wm3EmsWLQGpYun1jPgQfpiwtjc1sFsVfOZRURgqSCtJ44SkCsa2T//
         m2Xg4/Or+dpk+e16903Mgrj0nk50IZeGZee+rDdIHLIr1PBMm+Kkfljt/ZqiWvpzCGki
         puXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532o+8jc97Tl2FFatclO6DK2sRXF7MxnVcAXrpIcMCXw6IYUkhLp
	52Se5z9X4u1ox6UaYn25/uc=
X-Google-Smtp-Source: ABdhPJzNhpiNfvKagzR7EQWZ1ngF3+6Xb3Rj5biq5AiSo6HR/dQDkJGV5VgoceoDhp9UTAI049brKg==
X-Received: by 2002:a62:e50c:0:b029:2f9:b9b1:d44f with SMTP id n12-20020a62e50c0000b02902f9b9b1d44fmr928029pff.42.1628101574052;
        Wed, 04 Aug 2021 11:26:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:b92:: with SMTP id g18ls734380pfj.1.gmail; Wed, 04
 Aug 2021 11:26:13 -0700 (PDT)
X-Received: by 2002:a63:1b51:: with SMTP id b17mr441077pgm.22.1628101573467;
        Wed, 04 Aug 2021 11:26:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628101573; cv=none;
        d=google.com; s=arc-20160816;
        b=puMjnxuKFwfLwUGOb2r20EB5DO8N/B57HIN2qjGi3952usiI7UA89pM+yGj/w1FNJg
         r0HQt1EfddLshI3BbSwR1m4fDwTvfspMjtty2//wquNJB3YIBakKVr5oWREP8W1xiBOl
         r1fDDdwhH/VQGNTRp967A2wx3S9s05IlycHB4nyTwdYL0cLVTey0aQ2cEjG53CYLVBpQ
         beYfzp1/d0CKzfqqnPQ8i4u9uur2JZ0dcu+8rFl0zzVjwx0mHgGAxmxrbZ/d/BmDzOWz
         BWi8Ue5NUZu6ZV22eu7e+f44aABI1gH1mE7olsA8KuT09mjEi8XmtRp4MZOTMRRiuooQ
         HbYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NZgcLOw4C4n9UCCOKVJDyYjS794vHuoBsMDwq/26r+Q=;
        b=nj7z1xY0yGLFiCaf9FSOlIqRBpj6QS8ZeWta8nhAOs+PRj0FLQs07clGUEIT/rtzNJ
         gT+8xFZwL99s5RV76CnP9/K2z2ggwt7454Fk1ExhpLKBjVuZzbY47CbvQURjwu9luGT+
         jQQGBX3fUFjOE6NtqVl0iSuoV4gg8CuhQPGpa2PaJI0rFMua14wpb+3uuMMnX/I3R2yp
         /QhWnvixe4b7zMpUwE40E+bB+AKMbnLNfSGy3Tk9qrwwMqTeJSMoL+Dx75l/myooXbMl
         P0D32AhKNVO68vpImrXwxaxrMsANTwbtfnUQPFvWUb3RMK8EH+UWR/o5FIxEECMvw0jo
         6PZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WcuxIXe8;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u5si426725pji.0.2021.08.04.11.26.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Aug 2021 11:26:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9F93960F01;
	Wed,  4 Aug 2021 18:26:12 +0000 (UTC)
Date: Wed, 4 Aug 2021 11:26:10 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-hexagon@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Brian Cain <bcain@codeaurora.org>
Subject: Re: [PATCH] Hexagon: Export raw I/O routines for modules
Message-ID: <YQrbwnDf7KaiSMzF@Ryzen-9-3900X.localdomain>
References: <20210708233849.3140194-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210708233849.3140194-1-nathan@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=WcuxIXe8;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Andrew, could you pick this up? Brian gave his ack and we just got a
0day report about this:

https://lore.kernel.org/r/202108041936.52T4sUU6-lkp@intel.com/

If you need me to resend this, I can.

Cheers,
Nathan

On Thu, Jul 08, 2021 at 04:38:50PM -0700, Nathan Chancellor wrote:
> When building ARCH=hexagon allmodconfig, the following errors occur:
> 
> ERROR: modpost: "__raw_readsl" [drivers/i3c/master/svc-i3c-master.ko] undefined!
> ERROR: modpost: "__raw_writesl" [drivers/i3c/master/dw-i3c-master.ko] undefined!
> ERROR: modpost: "__raw_readsl" [drivers/i3c/master/dw-i3c-master.ko] undefined!
> ERROR: modpost: "__raw_writesl" [drivers/i3c/master/i3c-master-cdns.ko] undefined!
> ERROR: modpost: "__raw_readsl" [drivers/i3c/master/i3c-master-cdns.ko] undefined!
> 
> Export these symbols so that modules can use them without any errors.
> 
> Fixes: 013bf24c3829 ("Hexagon: Provide basic implementation and/or stubs for I/O routines.")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
> 
> It would be nice if this could get into 5.14 at some point so that we
> can build ARCH=hexagon allmodconfig in our CI.
> 
>  arch/hexagon/lib/io.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/hexagon/lib/io.c b/arch/hexagon/lib/io.c
> index d35d69d6588c..55f75392857b 100644
> --- a/arch/hexagon/lib/io.c
> +++ b/arch/hexagon/lib/io.c
> @@ -27,6 +27,7 @@ void __raw_readsw(const void __iomem *addr, void *data, int len)
>  		*dst++ = *src;
>  
>  }
> +EXPORT_SYMBOL(__raw_readsw);
>  
>  /*
>   * __raw_writesw - read words a short at a time
> @@ -47,6 +48,7 @@ void __raw_writesw(void __iomem *addr, const void *data, int len)
>  
>  
>  }
> +EXPORT_SYMBOL(__raw_writesw);
>  
>  /*  Pretty sure len is pre-adjusted for the length of the access already */
>  void __raw_readsl(const void __iomem *addr, void *data, int len)
> @@ -62,6 +64,7 @@ void __raw_readsl(const void __iomem *addr, void *data, int len)
>  
>  
>  }
> +EXPORT_SYMBOL(__raw_readsl);
>  
>  void __raw_writesl(void __iomem *addr, const void *data, int len)
>  {
> @@ -76,3 +79,4 @@ void __raw_writesl(void __iomem *addr, const void *data, int len)
>  
>  
>  }
> +EXPORT_SYMBOL(__raw_writesl);
> 
> base-commit: f55966571d5eb2876a11e48e798b4592fa1ffbb7
> -- 
> 2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQrbwnDf7KaiSMzF%40Ryzen-9-3900X.localdomain.
