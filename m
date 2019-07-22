Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB2VR27UQKGQES22RZMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BEB70401
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 17:40:26 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id u10sf3622852lfl.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 08:40:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563810026; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wn7vnC8TrC0vhJK6LmYRCg305M+dnX7c/GztgGiBIijdDMH14xsJ8pymExh0WFVUF+
         sOwM4AKYFkTmNjn28Tc2Ruhzqvt4WRW8iVgIOISy6bPoITIa3uLsD8DGq/csUmOgU1h2
         F8Ss7HN47Deel5ieReO6kYHAhuS39dbZ0Yr4SR+6e05edc/Ake/nPr/50rN/YAX0S1by
         v4eSbd8/DenVroTXw5bb1SX/3E+LsatkC7GY1sn3laOf3EvDU1zE7MYvfhq7MNYP6h1H
         J9F24YKtdtWdy5YgcbeXfUBuI5R85eK5wAi0mniaFB/ciL8xh40ehkwmSbiOH5n/WXuq
         e1sA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=fgU3pCY4YLFSWRTqXhJDkAJYpf1U1C2DLXCvLIZuGSU=;
        b=hd/jPHGdYeZaU+ep5hXhqffTlF5b94wdbEfBPL+mMsKs2T/zM01nXwf5v44cQ2pBsS
         vFwyT36DxFrNA1djvzNc4ktIXR6EFtyG2YAt/YGrniNYCWCKU7W8sf1XRmk0Lfebqgia
         iRRXuWa6GxgajumOtdejDZsL4/LgRiC2h1iWbxbBi67OdXSx//vZgu5glfcWHJtNdcjs
         TtKbC4ej25UZmgZf6omljHY5QZ8i4h51x0XgP9lEYCWK2y1bPYOrWK5iQXlrNtCoxTJc
         V6cZt4JEMuOKRgQlWBE3I+kYWFlTHm31pCtDB5N1fMq8at86yPRIY433aIoZr/28QT5M
         T9LA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wamzhstl;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fgU3pCY4YLFSWRTqXhJDkAJYpf1U1C2DLXCvLIZuGSU=;
        b=LIZk6SPHYPtLQVeUv3q80bQrcFNeQC57jagXX5jLCkVC8E69q7TGAxbNJntIMJeDQE
         87jQRfT9cqheJR5WTUUIoBnqpgzCUGoPl/8fnkfXBXdN4lYlUHs0EBj69tBT2Gr4G0ay
         7LODbLkLKGgiGmnkz8W/CZtI8N0Wk/jtiFFcBXGdN3rrr+S11R/mhUzerEEM4lyq3Jkl
         bFXeCrxd6tP92Qgb4kvPNCKzTl/7DG66r/ajmHkLQnDyo/jKqVWFrlo5vJ8/7a3jCOoe
         TRZxSoMy7rjS/AG5T6hPnObO1KQIO2f8nrextDBFxWPzoqCaChJa3LCeC+DyCD15e22Y
         JnWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fgU3pCY4YLFSWRTqXhJDkAJYpf1U1C2DLXCvLIZuGSU=;
        b=boe7XTzADtmeq/5QOGGZBYoC/anjl7Jkbb+Gl/qnrTYgLmUowK5K3umlxum1yw4nIa
         ntRdM0jFkZQl5lSABaSp0cWM+XasSzBmyotn2uQ7F6zksb+niJ/I7jwI9gTzldWGP52j
         /vMFmcKDYQ5SvuiR7tFYYBsbBie4MnOSl0A3TN+uuV1yJ8d+BKKdhaS1bYQxqUxYqJe7
         HQjqlHE5Y0xMUAO3W7NZu6hjCB8095DFl9zAnfGI8V46bookrP2nnaIpWgCPUtEAl7wm
         Y4cNemUWOkr6epiE3dV7/46gYmOG+RmPoF313+xUNuSJJsm4sh/qxACdivhOz3Spwrcs
         ct/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fgU3pCY4YLFSWRTqXhJDkAJYpf1U1C2DLXCvLIZuGSU=;
        b=Lijidua8gfbNwvy3phUzD9MpdhI/wU6HNiGnHNXvlHB20UQ+zbOGB3NKPMPHnBmqbF
         a1GGDR+awaNZyBtE2lrnqc0kvC28qaQRiGV9j2z9kvNQS8qx/HCdJZERp6v47784v+Di
         o4vM4fm7wjWpp7+eKTLhAsKNNTS4vwUYuY0wxpndAe7Tzv6IjA1Ok+6v4lR2vkvY9YoP
         Uf8VqUYucRxTox9tudX5vqZqVIjmC0hcADpvN2Jtq+czUoB8vG4HkboBIxekXD5n01MV
         RNRiSPLv7Q2OrH7ouNp3kNw2GTThiCqgFgqSMk8XDxtjhE30mOdUHDDqUyeVhyp7Y0Za
         bVbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV3AwYH0e2kaZ1txlX9Zb3M1fQ4QNkW7EwzcGQ8KFyYLahoMV++
	RPouziacLrsPIqLXFWQWkCw=
X-Google-Smtp-Source: APXvYqxtnziVtWTiNEmpXDeFS1r8YdLAhT2uwEiHtHmQpxQKk6shwa7mlqSGvsvXfltFbDsot/xggQ==
X-Received: by 2002:a2e:89c8:: with SMTP id c8mr37292647ljk.70.1563810026480;
        Mon, 22 Jul 2019 08:40:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9445:: with SMTP id o5ls4508449ljh.9.gmail; Mon, 22 Jul
 2019 08:40:25 -0700 (PDT)
X-Received: by 2002:a2e:7a19:: with SMTP id v25mr36977022ljc.39.1563810025910;
        Mon, 22 Jul 2019 08:40:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563810025; cv=none;
        d=google.com; s=arc-20160816;
        b=uc93Q/nyq4AokEWsbuodTMP5Ayyq81o316wIwnik14g+DZt6aLwExeQZ2OzVUFjTIM
         BhmlwkLooR5XUVPQPL2Et0vfBM3kybXSx6XGpeGeFLLzPKPTnir7/XNCyZRSJ4DW8cpx
         rUsyz1UFWFdECZ3gQUwSXfrVGnWHHWRhHdm1rje97gB+nRp0HzuzUEWsJWhQuCNPuspL
         C3Xm6rGZ/DqK00UGNGXVEzcxcQISKcqw5ZpLa1cxA6UZVNJE/skQ3F6PVuyY+IcosMMF
         rITXOKwXMUArwKb3E2vGrMmtaRfKupWpyW6EXZIw3pJR/Zpq0LJyB9WdN/4QmG3Le34l
         xtKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IblV1eSdD9A1yoa0yRZtwaxbgDnglVW4LyJYr5t+VuA=;
        b=lUh6tCF5xIeuNyxuxpN1aCJHWUXymtZ1kM22zGZabRvIiWUkQwxi1jYxwfm9TflB1V
         eXfJWh0VRMJz+E/k/ySXwSN9jz0Pi7Rv+GUyQ5GrxqOcW/ANH7xiaqIG5lPahXDisgDu
         DG6h4sORTigKrS/wCyXyW/0g1pn7lraxlGVX7XFASjVhkzo77YXLEm80WpKsi6f1Yw4e
         wlF0QkhuIPfbe1vmuWjHDAWg5f4Kvj38+izCbR6ZMZE1fCyidkV80jLNUswJpmb/ydqq
         fDN+h4v59WtRp+AMNzVHm9F+wcvpPdYYJCk9pNlTuLi4TcRppMKyhbhk3/32dIBEvcEE
         96NQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wamzhstl;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id q11si1929640ljg.2.2019.07.22.08.40.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 08:40:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id f9so39887185wre.12
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 08:40:25 -0700 (PDT)
X-Received: by 2002:a5d:498f:: with SMTP id r15mr71037233wrq.353.1563810025346;
 Mon, 22 Jul 2019 08:40:25 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <CA+icZUW5jNJY3L5EcxrtOttwpbdAWQ7=U_bZaLHcTogOdNuTcQ@mail.gmail.com> <CA+icZUUtNibYGbHEt+cqsu6cuKYF7=MobvPQ9mkXU1pJZhFw9w@mail.gmail.com>
In-Reply-To: <CA+icZUUtNibYGbHEt+cqsu6cuKYF7=MobvPQ9mkXU1pJZhFw9w@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 22 Jul 2019 17:40:13 +0200
Message-ID: <CA+icZUVbYL9RkcVqU=Z0HJgn0U=hYStr30rQDaZ_rcBr27Cv6Q@mail.gmail.com>
Subject: Re: x86 - clang / objtool status
To: Thomas Gleixner <tglx@linutronix.de>, Josh Poimboeuf <jpoimboe@redhat.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Wamzhstl;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Fri, Jul 19, 2019 at 3:48 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> > First of all I find out that it is possible to download and apply the
> > series (here: v2) from patchwork (see [1]).
> > I highly appreciate to have this in Josh's Git [2].
> >
>
> There it is.
>
> - sed@ -
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git/log/?h=objtool-many-fixes-v2

next-20190722 has them.

Parallely, I opened an CBL issue #617
"drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
.altinstr_replacement+0x86: redundant UACCESS disable"

I hope Josh can look at this.

- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/issues/617

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVbYL9RkcVqU%3DZ0HJgn0U%3DhYStr30rQDaZ_rcBr27Cv6Q%40mail.gmail.com.
