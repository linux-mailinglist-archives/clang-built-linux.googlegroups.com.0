Return-Path: <clang-built-linux+bncBC53FPW2UIOBBUVPT6DAMGQEMXFSO5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B313A71E7
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 00:27:31 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id q9-20020a05651232a9b029030bb8017049sf3798652lfe.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 15:27:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623709650; cv=pass;
        d=google.com; s=arc-20160816;
        b=cdxILCL4knHcJoINJcTLplfxvhfMhBoPCC1dBk4P8UdhKB7RRLKYlgQjIBfobo8UwW
         7BnIxk8JgtrnEuPxFQTJXkVYbvC0NV33y5Wts5ADxTzfJJb2ds5BS2D10Rh8XgDsV3E5
         DmbOh/jcfAkAshqc1nEGQiibp1eSDp5Vr/dOooLwRBYWpeiQOZuVJcgKceFhLI7rEPuW
         C6mQKoRtZn98CxHSNI36YDLA+Iy1L71YENCUDSRh/FwWqBqlEO21ERGVUjEoSMf9G+4n
         PkBY+4DqEAFolfiXh0cu6QIat/9Dhw8ppHOYN9pSgtusfQaFg4pIURpzPG9NlqMv4I3N
         xRIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature:dkim-signature;
        bh=XM9sw6DBA+06HPfy+ISpunVAn4yw6Ld3hZISNOjEjBo=;
        b=g6kELIre6FmNG1d+mV5DcjwdHyYtqlIqvr+HZjANKH/7FAd6r/IvbXz9pg0SUC5RnU
         GQAvWLejmsHpPhpWEybSFbkY2b1vpmJY+FlZ4y/FiV3wxpiH8gxlVFuPyQI7icbylOjk
         fctEEWuGYCa849CXIJA8irbNf3o5l5V23uabopp9CfMXzlp3EJSXjkpJbgrX+Xee5K7c
         O7oQ9Gfuhvpk9y5U4/kNNL4+KiRQfxvHO4OJwf7PWi6qqOOMdRyL8hG8A8ajaPx0OqsX
         Ff2yJi+VEuHyCn/2YNPNO7wU8YgpfKt+3OZyjJoWtJP4JfqIUrVrBbFVapRrRpJaOIoY
         Zf5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CieIEi/i";
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XM9sw6DBA+06HPfy+ISpunVAn4yw6Ld3hZISNOjEjBo=;
        b=MAnTAFNIAvcFE9trCbj4dky7tuBB2RPtih0/EROWdcFei7ZDt8f0+ZB2vyXrW3+Vtf
         jUa/b8pwhVyT6Wr1G7h+DHoPXz8cK392kBgMS49acwT+C6OyDkf9gya0w/6ViSPfsh96
         RmFK90LHPuxwfOsk1+VIwlwsW4Rmts7Gbm6wQQwcStJhRd83AqdG9WFc4mf1TOqHTfWV
         1np1xwzgv4m2Ow7hDXYqnECB/b5V2ygb/3P/PPcUK9bWzgXBnOKPTteuPMg3EfppNTWz
         OGSW8rIbvDFyEJwZpAnXBF78gogAXSdBuFmyncUsj0fMKCXkVIhdy227ofXJimpxiYc9
         wwKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XM9sw6DBA+06HPfy+ISpunVAn4yw6Ld3hZISNOjEjBo=;
        b=gV8d3yqiH+ejZ3nWKC24zrOoxBEDpweHckQ71ZT3RQivWga5o1hqLSAA9ynMWmmWgA
         gEUj1fpAWcSYjcwn2iteWSOp6Q28jEqKnbAaQa1rCBpXfaQEx1BOQQ77nmauhi4xvt6W
         5ev0JDas4dWGrEihXI9+bByTfes83ANK+xVSDKLFR7VD+igetT+tFuRKaAwInUdKSsB4
         /cx56xL+A86qy/3BDj5NyhiYl92xfwgQVTAa+5DfIPFH9LefWsgH7tzoKedHq5v8iJX0
         4C4rx5mzd9k7BzReuSe8AVyfmIQZjoOdWobLmqo5Zqu7ixeIzY/ObciHOSUtXB4cMqVL
         2AyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XM9sw6DBA+06HPfy+ISpunVAn4yw6Ld3hZISNOjEjBo=;
        b=X6+11jhcm715ew+z9Er4JxqoFH40N7bkpwTZIqdJmQcuFURF6vdp+01GLEl8y2am8I
         SV7wCJ8y0Nv4KqDflMtLZcC/ZPnX8cTr/NlWyGUAZ+XiThJFf65ZwS2hnvm5EYEBahiv
         CGOTMPRqRxK1mSV2fmCzhezMQEVoqFFS66FjzHisfKuqzBZnsez5qya5NcIKnaL7hy3O
         92rcN04EQsDyBtIW1pEbT+8hPyIsIjT5/CH1KXGmrB7ncRi/UacC1GN5k+8/nwSwBdJp
         RdTfe1sI0UbuhDFbb43gUFTWdH0yjUM8Xnnfu6p2s0K00Fje8nLM9xh9ly8nC4x7BEn6
         ydCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tfrb8+s31Dehx2hXDDL4e1Q6eEa+/4Jw+AyQ7vPH7YAEflcJg
	tYM4ZSvU1zFwga/g+YujROM=
X-Google-Smtp-Source: ABdhPJzn5sr4hyMETUtmGLRUaScC0g7EMMk4I2sSBx30zDOwIEVj3fUqDMogKLEHn5T6sBJiLSChMA==
X-Received: by 2002:a2e:7d19:: with SMTP id y25mr14991464ljc.231.1623709650748;
        Mon, 14 Jun 2021 15:27:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1025:: with SMTP id w5ls3809387ljm.0.gmail; Mon, 14
 Jun 2021 15:27:29 -0700 (PDT)
X-Received: by 2002:a2e:b0f3:: with SMTP id h19mr15406804ljl.62.1623709649786;
        Mon, 14 Jun 2021 15:27:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623709649; cv=none;
        d=google.com; s=arc-20160816;
        b=T6/U469fAyHGKLZHTXBdGe4izTL3U88QSwm1tAH0yhXHQ4QfrEWOBCey4I1BCy/p63
         i5c04UvoLzwWva+iUZJ/z46Qcb7K3NZS5tuf6uLcVVrtDWXjeuhriZIbYWJd60NLhWOq
         lJJzuDbXzT4y3+x1G5wEAvgctcycLmuhxxNma1DBA9VyiYZqplVBdoo5nLhatKWOsX1b
         3Z+iUzJ3ULWRZYal/WQRE3rYBRIAglKH4SpP/+8hdV+BXPPRsJDiEkDmaEgCnQGkH50Z
         qPA8JTjga4yhZmACkzo0zrXgHgvZpUSQpL1r80vqAFpqwLsuSuSf6i5lxRkOhjgrxLuw
         +dlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GyMEdvibDhNly5uv8Pg1ye0etmkB4AI1saE08dXRZGQ=;
        b=FohUrduQepn+lbcLF9Hjiw3e4rxnQQkvU7aKJt4HlVCPmtbGgYXnw+Bj/6ZV73SRQw
         YHqrsh6SjxVfK62A5mKfRLd7uxk0VBxTicG39g+AilAcJKy51qDCc8TwAaMcAgRWTfMD
         0kJc6XcxPTSrLUvUXrV7c+Ex8ge3TBr96GjJ4Msgjz/28uZfYj+VDO4kOiIQi0GbBbuW
         sj1alWur/+w9T5FsKiKMy6eG+g4Mgpz6IThsmJ5YoGPancIdrZmR3vFDw/Zck9jXZLCy
         MS+jqCYkkxBOwtK6zuDQ/OW89qh+KnWfxsNWObj4yeDF0xANpyUkgzkGb6R/8VhBP+Hx
         GYCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CieIEi/i";
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id p17si22692lfe.0.2021.06.14.15.27.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 15:27:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id r5so23608457lfr.5
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 15:27:29 -0700 (PDT)
X-Received: by 2002:a19:ec14:: with SMTP id b20mr13726725lfa.244.1623709649642;
        Mon, 14 Jun 2021 15:27:29 -0700 (PDT)
Received: from hyperiorarchmachine.localnet (dcx7x4yffpgq---2xhdgy-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:8461:5bff:fed3:30ca])
        by smtp.gmail.com with ESMTPSA id y5sm1603918lfs.265.2021.06.14.15.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 15:27:29 -0700 (PDT)
From: jarmo.tiitto@gmail.com
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>, Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, morbo@google.com
Subject: Re: [RFC PATCH 0/5] pgo: Add PGO support for module profile data
Date: Tue, 15 Jun 2021 01:27:28 +0300
Message-ID: <2164227.uJ0V1KJIEf@hyperiorarchmachine>
In-Reply-To: <202106141455.45C7B198D7@keescook>
References: <20210612032425.11425-1-jarmo.tiitto@gmail.com> <202106140904.484E2337C@keescook> <202106141455.45C7B198D7@keescook>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="CieIEi/i";       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::135
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
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

Kees Cook wrote tiistaina 15. kes=C3=A4kuuta 2021 0.57.46 EEST:
> On Sat, Jun 12, 2021 at 06:24:21AM +0300, Jarmo Tiitto wrote:
> > [...]
> > The patches itself are based on Kees/for-next/clang/features tree
> > where I have two of my bug fix patches already in. :-)
>=20
> BTW, due to the (soon to be addressed) requirements of noinstr[1],
> I've removed PGO from my -next tree, and moved it into its own tree in
> "for-next/clang/pgo".
>=20
> -Kees
>=20
> [1] https://lore.kernel.org/lkml/202106140921.5E591BD@keescook/
>=20
> --
> Kees Cook

Yeah, I noticed that. Actually, I think we really should wait for that noin=
str=20
stuff since:

> There is an lockup that only occurs during bare metal run after +15min, s=
o I=20
> haven't been able to catch it in VM.
> I suspect this is caused by the RCU locking I added such that it results =
in=20
> recursive calls into __llvm_profile_instrument_target()

That basically means LLVM is instrumenting code that I call from
__llvm_profile_instrument_target() resulting in nice cycle of doom.
Sigh...

I wrote fix for this but it would be nice to be sure the compiler
doesn't pull the rug under my toes. :-)
--
Jarmo


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/2164227.uJ0V1KJIEf%40hyperiorarchmachine.
