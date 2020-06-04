Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJU44X3AKGQEMQ3XRCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id E12521EEB45
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 21:40:23 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id l144sf5572334pfd.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 12:40:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591299622; cv=pass;
        d=google.com; s=arc-20160816;
        b=g38WjADclmmMaWSPQ5p7l+pgZCuVQByIuw5LszQ5LDYCXCNpilQSpNFvR7S7LC9ZLz
         UxhLeExQB/MpFRhZJr04hAk0GSmaJ6Nki2uqSoahlChfaYZ6Yr68a8y/vaMqh4n26dXP
         k6QfSN1gPnuJQ2p1MfF6+B7bdSNnWjsDs7W3f1wC+q7JfQeRwqtTCA48ca5EjVrQTS29
         YGzwhpkRxrSkon30/4PG6I/gkSMKGCo3TiWEK1aGFFxWkLiUGOCvrW4JVkPgfckUtkZn
         m78FqFCmjIzpk9YRw5CRzOhvTyrE/wFmgTPSWhyT0bWMSqwpZnunH2fy4VfDjY+HjgRw
         FpDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mfc8jUgdbdcTz98RJJvKHZRhjCDHBZ/fbNquTg9tXbY=;
        b=1KdIv32T9mPFMMRf5UQw66hF0KoERVdPZnz+BWB/M7093KeA8p2KULKE7WDKf32Xnz
         djr5SPneJ1vVB2I8Q+PU7aPVSh6VNlwR0ysUVV6ajC9hixnWOhqpFmlnzOKWBzmflmKB
         ieSYFoarTTFx+xOKC7L8A5ZYQhMRWgj46hh+fV1zpgOUh6feWhD9nDWY91DuxBlSMAzR
         o8UWjB7zeVs8ooX/plOXcV5S+IXIh2i0yQuniHwXZTWv+zppI72uLxh+nYcEfoTe/889
         57/pVyVpRG2Iqde9/D6Jsp/Oi55qc7+XWKav+khCFWil1M64lCBmgQNQblsPZiEempSm
         1Upw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=khjHaUxx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=mfc8jUgdbdcTz98RJJvKHZRhjCDHBZ/fbNquTg9tXbY=;
        b=BmoEFjf0+wGlGpGKpeFzavbTTNMP/StPgIvDucv7/VFTJAknpvXFN6lXDPZGQbH7Em
         cLrTd6rpXYxu+BTqZFRMBFKJ0E61agDSWNV1ZPDuXbQDqeiS+SfiFDykSmtgAOuSYhRZ
         VwsaX4FvnO7B4uadmUkfd5aqCmvrkvGOVU42o1lpaJAV1OQR54iA3k7IXBVjmbkh7n91
         cY3jSUnVCgTmkAdLJss289YkFPFHvwoeLECUjz4S+k9vRaOCB2Pi36PeRtaqKZWX8TPS
         Sb4oDu0Y8N7btM7LsMpFghDUxhqdcYwYAJSxHgyICrMlql7Eknq/hcCUfMvznVo4y6aI
         MZ1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mfc8jUgdbdcTz98RJJvKHZRhjCDHBZ/fbNquTg9tXbY=;
        b=WPolduwaC2s4292jjnAOi51A1EQJ2LkVoOdjFurvfANMGiwZUOQNjv7XYqqNt4H7zo
         Vxp6ZpfUuqqw++4xDPb8Cws/yaex1MOeXiftLUIqV54DRnJO+ZrYGk9WZX0rZI+eFB/d
         FORCo8Um3SSicm4bzFYHGsjhzWi3DMN0DXHuNdPKysh3jEgL6D4wFx3u0FZhhwQVlBW1
         0pxKrcVdkCJHhrOtO+3ui9kqSUvYPk4t5ffb5CyXRgmgENvggwxV6CxR4kaH1olPVZNy
         y3BjXUvkX5RSIwUKVGvcNiEXnMdX2ixYSTebtbj22ADf/o40FNDZ1Rv25sWYYGkeX5rH
         mGBA==
X-Gm-Message-State: AOAM533XD1+CeTyJZpDW2PZXoHwY9p1tn1sV1+5LhzO5cmSZZ+buWG/5
	TM9azapRMViMuto2zln/Nlw=
X-Google-Smtp-Source: ABdhPJyo2LzxE43jEBV9R50zASorR1TxkyOOCJ+E8gzyQ/tHohc+VMvoY2ViagDlUaQlQ1oXSwAb2Q==
X-Received: by 2002:a62:382:: with SMTP id 124mr3365275pfd.190.1591299622465;
        Thu, 04 Jun 2020 12:40:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b702:: with SMTP id d2ls2492350pls.6.gmail; Thu, 04
 Jun 2020 12:40:22 -0700 (PDT)
X-Received: by 2002:a17:902:7b92:: with SMTP id w18mr6039451pll.273.1591299622099;
        Thu, 04 Jun 2020 12:40:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591299622; cv=none;
        d=google.com; s=arc-20160816;
        b=FoPsSePpqqI9dhki+XMM84F9/Sipiu6F1zeHsacb9n/QwTRZLIP8d7U3CS/Qhr5Yy3
         d5YBcFmfHtE5urHxss++aMMDvm1e5/Elom13yc4ny3ZyZGX8n7oqxY02haerMAe7ff6K
         aVJZrnIFfcvBtOvkp4qn8/woQ0tcaL1p2VruOgHasM6xbrUofK7WlNGOlTN5BCaTC5Sx
         FBUUqx1YNTAhvuQSyY/UC3/gT3IzT/YB703ODMVOQeTPq0qMpKnRdH/UgKwf1R8Pe6MK
         NSG1MYZ4ZGRJJvmvNcgaP28I+/2xtGm5+kpcoqwMbFx2q3rSCwXJhg3m7TTJAH68iJkd
         vOBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=kJllNW+A+qSZYDyNUy0KaOA5QFyWsX/L5wjqGF/eTNE=;
        b=QnRHHzvoD2gxISq32U+nqSthB5H9sThwrJlKOjqV2gabKXYVX70xxgGdzp58WmmySc
         gISbSGkQScZl++pvkMo8JAeJN/z/LysWvsEaKXd3/DL9GbT+B210IlJgYvxM/4Yys89i
         w7p0PsnMgjkYmQj4ehIe5FXGEAyrobUwbmAhJftMvAD36v9Ay4jGNdLOmXAiYkMkCFy5
         CNnCv1sNhVo4siHa7n1FMoGTIYWi1wYAvbDXeyoV6C1KwurXbkyHU/cMb3AMIPNr1h+z
         du/jL0gROQ/6lBiS35dze0W81XKRJ4Fg3eDFvZpFg8YTheTSSFBbkE3BIw1tWK6TFX57
         H96g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=khjHaUxx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id l22si395696pgt.3.2020.06.04.12.40.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 12:40:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id 185so3955617pgb.10
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 12:40:22 -0700 (PDT)
X-Received: by 2002:a63:5644:: with SMTP id g4mr5715275pgm.381.1591299621501;
 Thu, 04 Jun 2020 12:40:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org> <20200603233203.1695403-8-keescook@chromium.org>
In-Reply-To: <20200603233203.1695403-8-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Jun 2020 12:40:09 -0700
Message-ID: <CAKwvOdnQCCV7SHq+nbRd0O0A+P035kU4t5vPDs8T=BhNQ2cbdA@mail.gmail.com>
Subject: Re: [PATCH 07/10] spi: davinci: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, linux-ide@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, 
	Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>, mporter@ti.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=khjHaUxx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
>
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just remove this variable since it was
> actually unused:
>
> drivers/spi/spi-davinci.c: In function =E2=80=98davinci_spi_bufs=E2=80=99=
:
> drivers/spi/spi-davinci.c:579:11: warning: unused variable =E2=80=98rx_bu=
f_count=E2=80=99 [-Wunused-variable]
>   579 |  unsigned rx_buf_count;
>       |           ^~~~~~~~~~~~
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.co=
m/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=3D1TGqCR5vQkCzWJ0QxK6Cern=
OU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz=
9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=3DyVJu65TpLg=
N_ybYNv0VEOKA@mail.gmail.com/
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Fixes 048177ce3b39 ("spi: spi-davinci: convert to DMA engine API")

> ---
>  drivers/spi/spi-davinci.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/spi/spi-davinci.c b/drivers/spi/spi-davinci.c
> index f71c497393a6..f50c0c79cbdf 100644
> --- a/drivers/spi/spi-davinci.c
> +++ b/drivers/spi/spi-davinci.c
> @@ -576,7 +576,6 @@ static int davinci_spi_bufs(struct spi_device *spi, s=
truct spi_transfer *t)
>         u32 errors =3D 0;
>         struct davinci_spi_config *spicfg;
>         struct davinci_spi_platform_data *pdata;
> -       unsigned uninitialized_var(rx_buf_count);
>
>         dspi =3D spi_master_get_devdata(spi->master);
>         pdata =3D &dspi->pdata;
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/20200603233203.1695403-8-keescook%40chromium.org.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnQCCV7SHq%2BnbRd0O0A%2BP035kU4t5vPDs8T%3DBhNQ2cbdA=
%40mail.gmail.com.
