Return-Path: <clang-built-linux+bncBD63HSEZTUIBBX7BXH6QKGQEH7BW53I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A372B1A34
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 12:41:20 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id t72sf2602084vke.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 03:41:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605267680; cv=pass;
        d=google.com; s=arc-20160816;
        b=RF90L2HA85zut1EfWLSaCBwCQeZbtrDY2Y56fzMA8riikyfDyPQ0XI+TQJLdVgbmuK
         Q1xHe+9MmzKeRyrDwk87TudUo4fwfUM1zuoHrUntexuuLP4KkbSXzYqRxdv/aHjUngBI
         grdx3xBN52PEKOs5CC05M7B7UdpTUGaJOmv9f4rH1dfXz8tHD+9ObnyVP8rs5/QzSKEq
         GxTH7ayzfz/YwxQDBNqNhiAykvppm1TmqQSNGr/cBosvtNk73Y2+U1z0s6C0B2pYzWWD
         4dCW1GRcLEIfCQDCYlarJZDCvvd3ddAReayDQB5o6qcRPxB1AF/S5SCkbEVljsWmKEfG
         Y+HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=KorXncmYurRuTIDrDzOlXi3aIaCOkPJ0g1pqOAGXK/g=;
        b=YigARTi1VqOdttakQ+35r6omsCrTMxFOS3ypEBTVkgqzVcvdXQBDYxnKVxrjyNUJoI
         wnnfk+NYln+VirVKRTvmP6VD1TEiltKbyZOLU8DsKCdYOEp4gaxBn9M+RXXBlepb5cUd
         qUPMzXi6zlX68tLKdeq4YMLK65j8iXK33p71CphnwU7ICvdUDBa2D4wRccxZ/lpy+jxa
         r0Gza2ncDo7barpbKghrWGcirEn8hspN8O05QBMiABNNwFK/hhGVrivqEzQVwcSZexlN
         Oob7o4mv8ATi3UdaWsv5EoH7/39IPIwZ9o7p8EiJm3Rv6YdV332E5lIF6YOYKPZK/sqr
         YREA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lM+vBoKx;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KorXncmYurRuTIDrDzOlXi3aIaCOkPJ0g1pqOAGXK/g=;
        b=Ffc1EynMPcp+tgaVXm3GtnGpKQAczg11LXf/PiSAgBUsqxsm88sgtS0s5gjHEy0k+s
         Dl+nNghVsh0iEhn9QILVZRdQDFmsCY8DOLLWBaKzYwE4tx+tR0gADLWLKJpUo83k7qT2
         qfBCLeK2GKsKizAGS0+lvIgb9XQE4EmflLX0PIvcbz23AmX/nEH/iHXMRahAP9DshuBz
         L3mNqSTxwC9jM73XfCnoTY/v2yhIAIPdVjcON0RWy81Cr3W1TIaoF7oiqbIFcHIZHVTt
         E2k7sxPmVNf5KJ3F5mdMQJcJV6XozkgTnIBPBSJEKg+ANC9bsCrkd3ytAXaSKQ6ttK/6
         RJZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KorXncmYurRuTIDrDzOlXi3aIaCOkPJ0g1pqOAGXK/g=;
        b=XsNkP0zy0ZcFCTDkwavtFTqqoDABFlIT4tfUHDNVTJKT266zSG36QgeDAo+r7UhYbO
         mypw9bhCnVUntJPO/i0D557AmFpvFEOzO3NxSr+Sztv/+aUC+6JN8Xa5lBo9mGYMNA0m
         IHGs1NsDlW3IBeDLL3m1SKF8YrQO2fJ2uoX5KJSZBBQuXxbeTeax7k0iYw7EzRpdLks8
         1ZGZj6PVPNYc+v1Q9/ien59b8l8hZ48fmbm28BWCJ5tRrmPM+w+o7R8ZmmYjGA0/zytK
         wzRKXIT27Ild9on/0JFazMTx402ggQf+TMC5o8OyFZsMhZewtKAyVTYJEDCpNVSOsMRe
         SYjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301tCqQRIeSribjIwkJWkbi63qvpmNtY7pZtdK49EgVsL/XdfAe
	erXO5F/m5D3IJQQp9iVQ1/Y=
X-Google-Smtp-Source: ABdhPJxFiQ+tAmh5bAg+HRYPKW0NYRFEND8sis+pMlTkn12AbKCYuQUhdfM5guC9FQa+iBKKMGrIHQ==
X-Received: by 2002:a05:6102:3016:: with SMTP id s22mr826076vsa.27.1605267679956;
        Fri, 13 Nov 2020 03:41:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f583:: with SMTP id i3ls829331vso.4.gmail; Fri, 13 Nov
 2020 03:41:19 -0800 (PST)
X-Received: by 2002:a05:6102:501:: with SMTP id l1mr719928vsa.42.1605267679504;
        Fri, 13 Nov 2020 03:41:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605267679; cv=none;
        d=google.com; s=arc-20160816;
        b=Wp16HHfPW5M7wYJNfjdQEhJl6hvMLqP3bgrvs6tqj8AJkUNgkOsjoq8YwW52BML93F
         AgUXCoFHsMKvsW4hiLSQgQVF3h3wXQo59BmDSUNEc1/NopOhxLKBjuJ3DgpYiMjIi5j7
         GV2OEQMHOl5F1roKSkVoNTS6F3ZzAbFLp7oXgfxUr6cfGiNf1cyFkn0t95C5CaWWTORk
         th9um6L42cwZHO+Ik0GHZJASjmrLnYSFnjgx+sjSqEdjXllJreEcTpmI/JCXxpoI8wL3
         lB7cA/wsUkITsRP/g1FEqNI9zQaaWcGqiVRlrQoegYVnj2XtY9P3s8MoBHjb5txzbTdi
         UZ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UdClbMOEBIBlBH0ZLwesm2MW8WYZ6ZeBjAW467GAWj8=;
        b=ycRGrLBT+uMnnA2mvqTe8lAGbMkQh80BrKh5aWmPAalg/9bvhx8CPe6J+Vjv8BlTrc
         kvuYE5EaUyLio2rX7zCtz1wo/KNWDmzYz3CGi/Cyypc2LZ++zJlDynJtnnDXYoLYy0uK
         xW5DZ0mASVBc1/qMvOUE32vatFhc1EhlYDk8Lwkv08sGilsUKKqDiGYB+VaEC1xFJSSd
         ZgsxfCdQ+JngjptKznI8OJGf2a7GqLwChwT83OgeWQKHq9WV1nAkyIAXTSHeNRrztwRo
         5bfXSMng78UHwBDQ1YsbVZFuPG0z/QXDGb1YjDfMSCdM3bA/Kw2ZyOIq4jnUzyTxr/jK
         Emyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lM+vBoKx;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s4si662557vsm.1.2020.11.13.03.41.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 03:41:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 13E312224C
	for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 11:41:18 +0000 (UTC)
Received: by mail-oo1-f49.google.com with SMTP id t142so2083114oot.7
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 03:41:18 -0800 (PST)
X-Received: by 2002:a4a:9806:: with SMTP id y6mr1196261ooi.45.1605267677271;
 Fri, 13 Nov 2020 03:41:17 -0800 (PST)
MIME-Version: 1.0
References: <20201112212457.2042105-1-adrian.ratiu@collabora.com>
 <20201112212457.2042105-2-adrian.ratiu@collabora.com> <CAMj1kXFbLRTvGuRt5J3-oEuJrrHFV9+SBGFFDNsAftGUbwoTPw@mail.gmail.com>
 <87mtzljz12.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
In-Reply-To: <87mtzljz12.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 13 Nov 2020 12:41:04 +0100
X-Gmail-Original-Message-ID: <CAMj1kXHQ94ZzoSUg6U70FnRtFs0KeVXT=Zg6ri2+OU_TKQcGfg@mail.gmail.com>
Message-ID: <CAMj1kXHQ94ZzoSUg6U70FnRtFs0KeVXT=Zg6ri2+OU_TKQcGfg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Collabora Kernel ML <kernel@collabora.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lM+vBoKx;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 13 Nov 2020 at 12:05, Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> Hi Ard,
>
> On Fri, 13 Nov 2020, Ard Biesheuvel <ardb@kernel.org> wrote:
> > On Thu, 12 Nov 2020 at 22:23, Adrian Ratiu
> > <adrian.ratiu@collabora.com> wrote:
> >>
> >> From: Nathan Chancellor <natechancellor@gmail.com>
> >>
> >> Drop warning because kernel now requires GCC >= v4.9 after
> >> commit 6ec4476ac825 ("Raise gcc version requirement to 4.9").
> >>
> >> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> >> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> >> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> >
> > Again, this does not do what it says on the tin.
> >
> > If you want to disable the pragma for Clang, call that out in
> > the commit log, and don't hide it under a GCC version change.
>
> I am not doing anything for Clang in this series.
>
> The option to auto-vectorize in Clang is enabled by default but
> doesn't work for some reason (likely to do with how it computes
> the cost model, so maybe not even a bug at all) and if we enable
> it explicitely (eg via a Clang specific pragma) we get some
> warnings we currently do not understand, so I am not changing the
> Clang behaviour at the recommendation of Nick.
>
> So this is only for GCC as the "tin" says :) We can fix clang
> separately as the Clang bug has always been present and is
> unrelated.
>

But you are adding the IS_GCC check here, no? Is that equivalent? IOW,
does Clang today identify as GCC <= 4.6?

> >
> > Without the pragma, the generated code is the same as the
> > generic code, so it makes no sense to build xor-neon.ko at all,
> > right?
> >
>
> Yes that is correct and that is the reason why in v1 I opted to
> not build xor-neon.ko for Clang anymore, but that got NACKed, so
> here I'm fixing the low hanging fruit: the very obvious & clear
> GCC problems.
>
>

Fair enough.

> >> ---
> >>  arch/arm/lib/xor-neon.c | 9 +--------
> >>  1 file changed, 1 insertion(+), 8 deletions(-)
> >>
> >> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> >> index b99dd8e1c93f..e1e76186ec23 100644
> >> --- a/arch/arm/lib/xor-neon.c
> >> +++ b/arch/arm/lib/xor-neon.c
> >> @@ -19,15 +19,8 @@ MODULE_LICENSE("GPL");
> >>   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
> >>   * NEON instructions.
> >>   */
> >> -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
> >> +#ifdef CONFIG_CC_IS_GCC
> >>  #pragma GCC optimize "tree-vectorize"
> >> -#else
> >> -/*
> >> - * While older versions of GCC do not generate incorrect code, they fail to
> >> - * recognize the parallel nature of these functions, and emit plain ARM code,
> >> - * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
> >> - */
> >> -#warning This code requires at least version 4.6 of GCC
> >>  #endif
> >>
> >>  #pragma GCC diagnostic ignored "-Wunused-variable"
> >> --
> >> 2.29.2
> >>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHQ94ZzoSUg6U70FnRtFs0KeVXT%3DZg6ri2%2BOU_TKQcGfg%40mail.gmail.com.
