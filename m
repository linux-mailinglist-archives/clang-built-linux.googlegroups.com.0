Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDW33DUQKGQEUSZVNJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C925170BB5
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 23:41:35 +0200 (CEST)
Received: by mail-yw1-xc3b.google.com with SMTP id 75sf30664757ywb.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 14:41:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563831694; cv=pass;
        d=google.com; s=arc-20160816;
        b=zqqQGtXiwGNGeJIjHdNEDolAeqll5Er+Q0j/PhUXt6WRlM2IF6v8WkLYaujb0xkC6d
         mPZuJe4wXGjAZmWgqbqBvkjUaSyVt3czpfm1HLorkhCCMui+cWacNvaY+xbTNBuwwWsy
         nEC48DO2afpnGpNHbjb4NXrRbvp/wbL8+sfEJmkI0zAelsenX+QXp/U8jc/4yYVAr3ee
         I6i9jm2TsKDT6yT0gPbkXOSJQRtmYttRswfZNBn753s/BwI3sKNsR26lueDuSa2hiR2S
         el9w3HkH7gMY/y0CzQj0HY4wOVc9FfKnAMNn44+5byJo6YI/wD+i41rNwZ2jgmPwl+Cr
         gkUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4JjOWMj74DV1AZnt3KbBBWyj4PvhBQCE5FVqALbfF/M=;
        b=T+35ZPBsiDgymKlIwD00SPX8j/I1YsPZChh4R2nr2su+khHTH6eiNoxZk4OJlNmaGs
         m/X+ydLx/3Ws5B2OaT2KWMmx0swHjBRzLafNUaN4T57Kinr1x7wquGMu/+Kuu5VVsUjl
         k4SYtY2DOW88v5C893LhODFyM1EeecI0RSIWTYl0bYTpiZf/1NyjGebtKuVXb+Iek2y5
         /yFNdHQRjKZcx6OYTI+LB51MAfl0HP2gxY3wznII2kBkrG3Njc1aEnN05T7rMRyvxkwV
         ebwJ+POMrBIn9KZI1KvsaRAbl5dp7Bel1qkPm4xAXDSzzohNI5BLbi2BDZ0hqd83nGHd
         yL8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="H2cyMu/Z";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4JjOWMj74DV1AZnt3KbBBWyj4PvhBQCE5FVqALbfF/M=;
        b=fBaBhVPWnMYqSNF8hRZ+8jX3Qm82UiD+fSQSWytmZ+9W69DesmknBFYSZ6JQc1IXDZ
         oUmVindsID8NW2c62IEjQEiIo+WHMGKqhAyepTcd1Sy+oS1cuICXOiyTWer+ttk6dA9u
         7hM4NceVlr1jdXsuN/KjHszSjWl0GlEAyd+uRrT3U+XOAo9DhNIdKnlG56GJ48Xl19XO
         n7UREFiPRAAf/DtMvVaf4zXmdp4DBbLmXoLbC3Nfz+GE72+suiDyW5XcNvEQi67galEk
         tL8gteeFKjfsld+RT0J+LebRLkWPmgvC5dF9Z6UGtxsbAQfvk9pjt0dAcnSHo6UH+JsF
         d6kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4JjOWMj74DV1AZnt3KbBBWyj4PvhBQCE5FVqALbfF/M=;
        b=dHL8x+MxGMX9WoQNnmax+U48HmNE9aT0fJpr8RalUwZ9p4asAGnU159D3xgLV/iuCQ
         8A4OPVA8HMljORQGpRtNpBv5OK6dwk/1pG3QpoBJXMBOEVSxaxwnFsrSIMo8D6b1WqOY
         cyEYirQqco8IMYKgMbV+Vc7OOaeHG94StpubdnU5UZPN1fdiItP+6T8numxXlxYBK+aB
         P9ERdaT2tZTwm+h+YF5Sm238ug5CWFiI4roKd2HVwAgyo0rjcyHgER+ZfTxwXF8PT8oy
         TCYbDp2ggnmJRC0fE6oHP7tLOwHot38ijQwf2JsKYQofkNNOCA4bEaPoIGiamkvs4u5o
         UZiw==
X-Gm-Message-State: APjAAAUB9Zg57ZmzFQXR+PnyFcGQ6U6vkKC8aSYvdtoA36p5+3t4DaaS
	dbq1aicptT0ItSpj/SRrHoU=
X-Google-Smtp-Source: APXvYqx48iKecJQdD/kOH9F15IPs+8Q8E3uD6np+bJdQ5Qiz2KBVrCwh4sJdBrB1AQW1e9BFSHSGWw==
X-Received: by 2002:a25:d907:: with SMTP id q7mr2004198ybg.348.1563831694469;
        Mon, 22 Jul 2019 14:41:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:a50a:: with SMTP id u10ls5397395ywg.1.gmail; Mon, 22 Jul
 2019 14:41:34 -0700 (PDT)
X-Received: by 2002:a81:311:: with SMTP id 17mr45303715ywd.446.1563831694183;
        Mon, 22 Jul 2019 14:41:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563831694; cv=none;
        d=google.com; s=arc-20160816;
        b=BX3zqPqZXiX6sRCjuifp4h6iRFbjkhcFDixXCmj34dFHlUbdhNOqXhc+xPXzYF3wH2
         suOeYB8N5iGOG/Sm/NBRDQRwNAcInS4HDI6NGvTyAd3PB2XA+rk6yWB3CCYEAT8IlcjQ
         xGePMVjx5xcLdEqXuqQ8NE431teztBHi5ziEloJ5Pd4G3N3CbIIA00IO57lw+ZsrHBXQ
         s2QYfeZtsPDvGq2xTlRWIdtODdN5+wEVZPyCSTAdikZz1PuaL3Glu+TzUdz+V8CPVHoY
         mPiSRlBNLZQL7d8ru0EU6O04ycNdGAs8jCqgi1kf1C6u3fwy7dS03pDbvdXKakaISDWL
         huDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UHgKF/faf+gKSnKAdZwRQ42YfMIcLjQkGrWNVDHMzzA=;
        b=PYY4/GMom645K10tSJLcN6VS2kg+1J3Ot3tLcy8yDxXZmYYOWWabSA282lqoILeXle
         kSMuahrG+MyeRdL0vP3BLeBDlVxqFOECwHT3O8bsmR1e6/uHzcObtvohM//4ccylUN8t
         uKWpcMs0vM9RcerROUcM5oNDxOvU9sas0T/waZjVXqgs5qfKpC8Ms/n62PDH01mI0lYf
         iOGNG7hmju52taXTzOzLCF9nqy7fqciMF6QNjWwV/jdRBwfTUoMRXkOW3Zrwnj+UD3re
         pJc1++kbQB8WqybuW2Ng2ZkkMd6cbgfDz7gJngkuwEVB/H+hOeVJF5LJUUKiEtsCO7In
         I8Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="H2cyMu/Z";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id r1si2381155ywg.4.2019.07.22.14.41.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 14:41:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id i2so19734685plt.1
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 14:41:34 -0700 (PDT)
X-Received: by 2002:a17:902:4aa3:: with SMTP id x32mr74093089pld.119.1563831692996;
 Mon, 22 Jul 2019 14:41:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190722213250.238685-1-ndesaulniers@google.com> <20190722213250.238685-3-ndesaulniers@google.com>
In-Reply-To: <20190722213250.238685-3-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jul 2019 14:41:21 -0700
Message-ID: <CAKwvOdnkaT+zQFoXtjmf+CE0B4RHPr1zuH2pVRpP6=aVjq7nCA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Support kexec/kdump for clang built kernel
To: Joe Perches <joe@perches.com>
Cc: Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="H2cyMu/Z";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

Joe,
Is it possible to have scripts/get_maintainer.pl always cc
linux-kernel@vger.kernel.org?  I just sent out a series, and it seems
the cover letter didn't get sent to LKML.  I usually use this shell
function to send patches:
```
function kpatch () {
  patch=$1
  shift
  git send-email \
      --cc-cmd="./scripts/get_maintainer.pl --norolestats $patch" \
        $@ $patch
}
```

Invoked via:
```
$ mkdir purgatory
$ git format-patch HEAD~2 --cover-letter -o purgatory -v2
$ kpatch purgatory/v2-000* --cc peterz@infradead.org --cc
clang-built-linux@googlegroups.com
```
Maybe I should just add `--cc linux-kernel@vger.kernel.org` to my
shell function?

On Mon, Jul 22, 2019 at 2:33 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> 1. Reuse the implementation of memcpy and memset instead of relying on
> __builtin_memcpy and __builtin_memset as it causes infinite recursion
> in Clang (at any opt level) or GCC at -O2.
> 2. Don't reset KBUILD_CFLAGS, rather filter CONFIG_FUNCTION_TRACER flags
> via `CFLAGS_REMOVE_<file>.o = -pg`.
>
> The order of the patches are reversed; in case we ever need to bisect,
> the memcpy/memset infinite recursion would occur with just patch 2/2
> applied.
>
> V2 of: https://lkml.org/lkml/2019/7/17/755
>
> Nick Desaulniers (2):
>   x86/purgatory: do not use __builtin_memcpy and __builtin_memset
>   x86/purgatory: use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS
>
>  arch/x86/purgatory/Makefile    | 15 ++++++++++-----
>  arch/x86/purgatory/purgatory.c |  6 ++++++
>  arch/x86/purgatory/string.c    | 23 -----------------------
>  3 files changed, 16 insertions(+), 28 deletions(-)
>  delete mode 100644 arch/x86/purgatory/string.c
>
> --
> 2.22.0.657.g960e92d24f-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnkaT%2BzQFoXtjmf%2BCE0B4RHPr1zuH2pVRpP6%3DaVjq7nCA%40mail.gmail.com.
