Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3564D3AKGQEWTT5NBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9F31ED868
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 00:08:49 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id x67sf2270834oix.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 15:08:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591222128; cv=pass;
        d=google.com; s=arc-20160816;
        b=ix2BXCkWbJZpMJKf1RYrgJyRC4+L4Yd1ncu6WkjeZeO4bjwP6fTsrRAxl+OFYO3cNx
         2sFBdPmXDMdMKOq7Ul767TiSq14MKpIAuJ+RtzEivENh+CwLXWY/DJ8KVDBJUQJvcgRf
         Wc+ZrmyNJtZMW3Q5Go9Ysrg8S0Zs3ChkvqdeH+Sw/WvuLNvzshjPzmU6aGtO0TDd/jpI
         4uNPBzVig8iseOgdJUiTRNX6LJZ2FsvFuSVXq/D8utCF7QyexNH4esiuzDsw8Crj//Eh
         bPr7Dmvoam5rkz0Jt2YW6zwNlVEjOUtEosYXch9xvMdSZLWMzJGhevILUn3Pz0sFEcE6
         Yo9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=scHkjvUKJVIFNSke3+3uCp1AMmhAvmR0frL2tOr7oJs=;
        b=f86eoz4QBp5hsMCLj1rcCgiIy6gqltMch4mo+xXCXjtuYIVXf2uQtv6wT+K13L0vCc
         33ICUgpGpSeaD3TWxGU6gHyrRm/aeWKOHq7VjN35IqoaHc0WM77/r+JXXwSAIUzW6LgN
         HD95kAgBeBKw+eF1bE8IeSWkG4M6HSl0nvwHUPqfaDk9G9/jRerQxBpQW8nSGy3yCfou
         SN40IHKUaWmu7eMhdSgQT5F3HaUkHefsw/TfeTSJFMT/CEhNaK/Mu03RqQmu4WKE2KF1
         /qhebY6/sUXpvISkLIoNOSsIe38moEuVCZOwes6pcmVsN1O7Zdat3rz4k3CLkHwallo0
         mbpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IF14zQD5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=scHkjvUKJVIFNSke3+3uCp1AMmhAvmR0frL2tOr7oJs=;
        b=VfkVfwD/WjGCSsNER8pjT5n4h22YZh1LF/qi8Vzms4viBZGD73l00c+Gh9+sD0UaHq
         wPdT2Kik9njpMHr6xXpoVyPz1THWj1As9cAcuiwAGfxdfqsxc7bZSdAY3w7VU9bAk7Pm
         jRVd6ICLrjjpKj9gk5sDlsvZ+TNAF5nmXqZdFA2vhlj9RwwzxfopGDbPP9UnJI3ELkYO
         X6jE0JNANAoNSpJB3KwwJ6Gpt1vkAICpUSrSQ6QaVYaZ/aRuiojcz/B1kPahDNZf5gUp
         hJjHG6Jkikd24a78qL9wkE5odnauq/y3OO2jITQgQR4n+WrJTuMxjgfWylc8m4a06imm
         l49w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=scHkjvUKJVIFNSke3+3uCp1AMmhAvmR0frL2tOr7oJs=;
        b=ANTaFHi+mZ+R2dPnLa5pLOggFz92DWgbW/1a2/ctKoCoN2CHpeKgstl4o38o8qS+H5
         xDiXuFuzkNL4W4iCwnLydehU5HgdTJPRFjkqL5bGmhCYPlaUpb2l1DQ4e+bUTRh8vvjP
         y6HT09eMgsKl60kApLnWA2pXICNHMd0L9anEP353Elh5mX2hsl16SU5Gt5lfCjIExi+p
         Z4SPUfMdQUOee4URpqZR7NwOg1agTc2c3J13sJCctaN8I2j6DO6T8Jv+Y3BMvI5YeEm7
         YvwUayaoEMt/VUIY6KRqbqkawBuZ4v8vKGAJmDFAlto79Q4CZ54LHTRhLL/FYV8UMqNi
         DP9A==
X-Gm-Message-State: AOAM530sDAONEKlo/E8jfmBYdeiNYrcBBVYzPC0bfq1mES0ZBEzSc6/s
	RqrsGnAsCARV7LhY8115bgo=
X-Google-Smtp-Source: ABdhPJzQE5nzOJHsyH8F/DmhOZG0GEIWsokp83YjmoAfM7xe3Geo8sXj9g59F8dwDDMCxl1joWa7pw==
X-Received: by 2002:a05:6830:1e02:: with SMTP id s2mr1476768otr.263.1591222127967;
        Wed, 03 Jun 2020 15:08:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38e:: with SMTP id t136ls802925oif.9.gmail; Wed, 03 Jun
 2020 15:08:47 -0700 (PDT)
X-Received: by 2002:aca:4389:: with SMTP id q131mr1253934oia.21.1591222127658;
        Wed, 03 Jun 2020 15:08:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591222127; cv=none;
        d=google.com; s=arc-20160816;
        b=HYYaXIey8jpgJI5mbdSFH3ez7LwiNQZQR1f/awOPtRPhANZKBQhwdIACZV+qM8yEhs
         8cGVM9h4CMWSEJQXzB89vhrf1I/JCkwMtIv0fdcWy7qbmn4nxFrnzoJ8OZ/ZVcsXyDQq
         jXUbIdj39X0LBjlhobEBp3vhrlEWtpm26RL8/+lGADCNXCTZbaPIL4ufRx8Y6cyyW2df
         zdjxfaGvvuOksBrZNj/GVTQsey+gRTs9LJfCCQ6bGtd5FbVLsaIH7eS4hjdThFwCN8NN
         v4grgPx0QIV3DOHhAYy/yK6277n5f6pmF7kfzxEfBXQV3+ba6eDtbw9CYULJDpRebMOl
         ye0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=h+MHToEeQ72U0YEWufOEayhrHOG3iG4N0aH5mkhMhLQ=;
        b=i98cALPx1QkZ/m1OnQW4xpnnCXuefFn863KbBCGzZHOnqxpCg6onzab+vEqEOcx0FR
         RUwb9GsE9LDAE7iAEAkktXO+rYC+ggE2DjkVwqEKTqbd5VsqEDEY2C+8N6RBPoiZbMiG
         XLge8B/e/nU4qrPYjr7VnA7gNJvzG5ABb/zcBmQ0v+ZSCgow+k/DSXFobcKLhO4KdoSI
         Tz0RxUaCihUfp0CfgUUOWji/5vlKaYR6LeMHKMNtoYIgpCdlg/vm1tNlpo+cssj+eh2k
         RXD/0TrNpydmgI6F2lbR54iE2nvazEOToyEhVzLWEo6idVuGtJ3JbklkQjfYh+Mr1jkr
         rVsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IF14zQD5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id e23si319501oti.4.2020.06.03.15.08.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 15:08:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id q24so192391pjd.1
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 15:08:47 -0700 (PDT)
X-Received: by 2002:a17:90a:e2c4:: with SMTP id fr4mr2334651pjb.32.1591222126801;
 Wed, 03 Jun 2020 15:08:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a04Z=JP3wRENjtKrAHwJeY_tJpN1XjxXJ7N-cHAD6eF1g@mail.gmail.com>
In-Reply-To: <CAK8P3a04Z=JP3wRENjtKrAHwJeY_tJpN1XjxXJ7N-cHAD6eF1g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Jun 2020 15:08:34 -0700
Message-ID: <CAKwvOdkzzCuN78hmz1t8X-Usa976VqbHsgqKcdrhZc9aUfVinw@mail.gmail.com>
Subject: Re: objtool broken with current libelf
To: Arnd Bergmann <arnd@arndb.de>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IF14zQD5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a
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

On Wed, Jun 3, 2020 at 12:33 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> https://lore.kernel.org/lkml/CAK8P3a1hsca02=jPQmBG68RTUAt-jDR-qo=UFwf13nZ0k-nDgA@mail.gmail.com/

Thanks for the link.  I agree with Christophe that we should let
CONFIG_DEBUG_INFO set -g.  Sound like there's still an open question
around does compressed debug info upset objtool?  I wonder if the
implicit value of -gz= is coming into play.  We could default it to
-gz=none unless CONFIG_COMPRESSED_DEBUG_INFO is set.


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkzzCuN78hmz1t8X-Usa976VqbHsgqKcdrhZc9aUfVinw%40mail.gmail.com.
