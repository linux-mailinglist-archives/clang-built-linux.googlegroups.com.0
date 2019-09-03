Return-Path: <clang-built-linux+bncBDTI55WH24IRBXUSXLVQKGQE3A2J7AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id C0492A6D13
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Sep 2019 17:40:15 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id 11sf7680695qkh.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Sep 2019 08:40:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567525214; cv=pass;
        d=google.com; s=arc-20160816;
        b=vKewvGa/+5W2RbkHpfK0SJ5jJ84J+GlitelhkE0IUJZIR4xCCtN1/oIWlrR22mOh3b
         +s8OvwTPQnZS/zht7Dj7OlSQpYaK3jvGASpewRH5KtrOHjHbnzmEkxY3FG53WmnE+wqI
         nLOLq3vSX8n+ALlJYzBnwnJ1tLP/uoLTi5DJl3gNIDCk1TSxuAqV8Jpt4SBkmmviiATJ
         VOmAc1if62fvtD5Pqs6w6NfgzYT3PLNlZ/iDpEIR71FDnhkNLTdnZb/2uuLg6woryM/s
         I0O8pBf84Jx7tXSduBR85gNrymTMPbbtqn2S32CWTWyPkADz3YRh4ZspIOg+PEg6Or1l
         jP8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=D0YWkBrKOd/CjPFEj7yW2vr5Tzh04Wd5w8AaTdvNBTU=;
        b=Z+Sbhx/i0s/HScRJ/5clJX4EoBca9emUFi5vaaSuzIgsZ1v840DnDVMTmVedHWMKji
         rVdfflmKHKzRjUD/NCZ/vmtqRhla4M/hkslKLX3xSrjUUTQSXPfs8zjQKRHIK2rRiCN2
         qatpHL67BeSTnZouiqG/H3+u/0zKYSR5B5+tvh9H0vpx6kWrng54k8PGkha29hAUxwJk
         8VjeegRLKMJ8fZLnbhxq4fBpBVqYFf67el6QQVZG9+nY1271uossCCxJrW8XcFV6C3NF
         CyccpbtiSLunCp4ZOnBAJj7t2qRyhH2rDX4WxErD9sCABmgLYNG6jaKrxp2E3/zAhBFH
         a5kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=LI2L8c7D;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D0YWkBrKOd/CjPFEj7yW2vr5Tzh04Wd5w8AaTdvNBTU=;
        b=fUG4yTACeHPQckP96NPQG0bUUzNHm8T38jazoKD1p9xMu49q8c7DwpjZG57MJVirTT
         ubUwhV5vIs2L9aial4prqnDXmZmFmygp+/UcuE7/lK+/ToMxMqE+lanVhOjBfzOwoRY8
         xGxfomDFM89fuofmZYRinM7nNKqypBIJxXcao7gCAVBLDIyXD3tEnnjE4oHbZtbEr7IN
         QAY5EXSNLg7z16+rbC61Qx0zGQROya7fTgs3gEQatLYK36OwE5mwpXXLYsWzZiJjpz1K
         WF9Kda2Lk4oiDZKTorqZIso9ngQRxq4cNhrB5CRRUsKlJZlq9PUHu0Vw2bh1HDiEyldS
         +Vkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D0YWkBrKOd/CjPFEj7yW2vr5Tzh04Wd5w8AaTdvNBTU=;
        b=Qk7wJYKEyHmpznT7gdQRJ9tQYKXqko8y2Ddtq2dsrCrq4XU4JZLNoDOi2X5QSThZ3f
         5mqo078FJwrWkWrUwQ3k1+SI1iedjbHF8fwVAwkYKfobThPUMc3a0WJ6pADRS0tzH3e+
         4aEk39RghOdRdxQdICFcaD/8bSkKP0jiIOoj+vOABOVLpV1NfBf+Aut5ieUFVrV1kfgC
         PjeEClYrGDS5IJU1kMvieTgZ9eEZuXF3OnxrHWp51ZTYoaQSoOzjcUCJAZ6NPeaU2YcS
         t0oSF5EIeWKbWAZqiF4YgFjgyAjAio7AfQpGxptTUWujrL5VPcEH6L4jBi8fnnY6fMIs
         3B/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWwra6XtMzDOGT9jbsWV/hHlMX8Ye7Jx/i8a7eiVVqXWUb1uhuS
	7w9F60nijK961kzXNg/vi8Q=
X-Google-Smtp-Source: APXvYqy/Ydg47CuLK1O2Q9wCDDuikhq+pfuUhOQeQab9mC0P8hcP4K55qV7QkYh1kscmZ/iUixUGDg==
X-Received: by 2002:ac8:94f:: with SMTP id z15mr34980404qth.233.1567525214674;
        Tue, 03 Sep 2019 08:40:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1a73:: with SMTP id q48ls3187936qtk.14.gmail; Tue, 03
 Sep 2019 08:40:14 -0700 (PDT)
X-Received: by 2002:aed:3527:: with SMTP id a36mr22568384qte.82.1567525214325;
        Tue, 03 Sep 2019 08:40:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567525214; cv=none;
        d=google.com; s=arc-20160816;
        b=MYtxoaMpIaLt0IxDQbArzEAzqRXwEsKqW/ft1dHiQg3Oh+t+lvpgFMkJrCwy3Nthov
         BHHsD7yzmgExYwb8zvJwHFQ624r7LIWeqxYfeaYlHKDiscbYvSC8SHgu0Ewyaiqp+KhL
         G2x/QY1Hd4MeuC86FiBKWFK+0PSNjmbLJqlWisNMLGX7y2WmW6gIR1a5OxL4NRfR0nJ9
         kWT3JQ0Gn1fo2tKfZiX3hzNhJt5PbYgcHGo/PPMm6yfh5KjrTY/1u+PfgCx2Kl08QvND
         eTkdSwnEPT58IuJt0LWTBBQncZXifP61xS7z+Xy6agtAdjGgIaEPHbNNCyqB7uvaf3zV
         2zTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=mNQ/8Q4lNQ2CgeCETQDXp73cvMbK+QmBj7K2vN48yOY=;
        b=YuA1RtHWZQL4MC/JaoiWgM5/InbQNtk9a/GHVAD6yQfyyocDKj13MEJCIGAlFnyxeR
         tck5DNAhwEsd1o5DS5xCZdIlO1OTioxw26N4Wz/URqrgTJdWbEdz6l9qSZTo8sALPEjC
         BcpNhDoqXbwhRIOdl2DRGknPd+mcTQz5rJx71voqCmRJhEqdW1fXmyQYCu72LK0heaUC
         w/ERZRdrX16npUaGm0XP1/R3T23DzgqJP+Zs9LJMfREHxxr9X9UD3MBS2ZsZ989Pa7vy
         dKx67GLgMiGmjngFACR0NMjqrVD82BTLwj/w6fwX9tjEvXvDgx8hLOqKlGoViTmRTshI
         qh7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=LI2L8c7D;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id j23si708429qkg.2.2019.09.03.08.40.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Sep 2019 08:40:14 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id x83FdifP005478
	for <clang-built-linux@googlegroups.com>; Wed, 4 Sep 2019 00:39:44 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x83FdifP005478
X-Nifty-SrcIP: [209.85.217.47]
Received: by mail-vs1-f47.google.com with SMTP id s18so4552545vsa.0
        for <clang-built-linux@googlegroups.com>; Tue, 03 Sep 2019 08:39:44 -0700 (PDT)
X-Received: by 2002:a67:f418:: with SMTP id p24mr1417399vsn.215.1567525183683;
 Tue, 03 Sep 2019 08:39:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190828055425.24765-1-yamada.masahiro@socionext.com>
 <20190828055425.24765-2-yamada.masahiro@socionext.com> <20190828182017.GB127646@archlinux-threadripper>
 <CAKwvOd=r5Y8hQQBeKZ6zAokPdyeT2AVKFsdviTvwV5AyDQQHrw@mail.gmail.com>
 <CA+icZUWmmC7CruvXx6U0cdXMLaMWJadU=T61E0om1rOuW3==pw@mail.gmail.com> <CA+icZUXX6YG7=4n60A3_HiTYE0SkNXd8yr4-pqfOsqg66QvXzw@mail.gmail.com>
In-Reply-To: <CA+icZUXX6YG7=4n60A3_HiTYE0SkNXd8yr4-pqfOsqg66QvXzw@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 4 Sep 2019 00:39:07 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQLM2RXELr=WY7O8UEHx3EQZKeQdfZ_Ko4wTTPe0ZrqHg@mail.gmail.com>
Message-ID: <CAK7LNAQLM2RXELr=WY7O8UEHx3EQZKeQdfZ_Ko4wTTPe0ZrqHg@mail.gmail.com>
Subject: Re: [PATCH 2/2] kbuild: allow Clang to find unused static inline
 functions for W=1 build
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
        Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Sven Schnelle <svens@stackframe.org>,
        Xiaozhou Liu <liuxiaozhou@bytedance.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=LI2L8c7D;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Fri, Aug 30, 2019 at 6:52 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> Just as a sidenote:
>
> From [PATCH v2] kbuild: enable unused-function warnings for W= build with Clang:
>
> "Per the documentation [1], -Wno-unused-function will also disable
> -Wunneeded-internal-declaration, which can help find bugs like
> commit 8289c4b6f2e5 ("platform/x86: mlx-platform: Properly use
> mlxplat_mlxcpld_msn201x_items"). (pointed out by Nathan Chancellor)
> I added -Wunneeded-internal-declaration to address it.
>
> If you contribute to code clean-up, please run "make CC=clang W=1"
> and check -Wunused-function warnings. You will find lots of unused
> functions."

This information is unrelated to this version,
so I dropped it.


> Isn't that missing in your double?
>
> - Sedat -
>
> [1] https://lkml.org/lkml/2019/8/27/729



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQLM2RXELr%3DWY7O8UEHx3EQZKeQdfZ_Ko4wTTPe0ZrqHg%40mail.gmail.com.
