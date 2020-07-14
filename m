Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRXCW74AKGQE2U46XCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E41421F892
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 19:54:16 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id g85sf12040098pfb.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 10:54:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594749254; cv=pass;
        d=google.com; s=arc-20160816;
        b=dj16/NiuNOdxUi0xFMUIWFJdrhvzKk+d8kD+OOmmQMyJve+ZCk68pZyQNKYjpFVj2y
         OPy5yH9HNBm/Pk2x/l2OT56W071KHrCS9S93CGIfbD0eheb5rqsk7KDDqcur41saIL+j
         0nwgi8tt5SRe/OXdeOP/erDaGQlUMxag4tnmEQWOU45P1UqQzEg6GsoVFu1TbGnaMUjn
         YV1FmIwxfofnK1KpIkw+9D7twySEJ3gmFBSdkqTY92o9QmhG+aic13Ih+QLpiYNqbfJ2
         Lmlj5AgzMshNovYrhYdFqE4ho437ecsNMmYN4Zvw882XAmYEXDNeEIUBB3PcyM/t1bj4
         Ah2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZCir0qVwe1r2fckS4Bq+ghTDsThA+NHsdFj3Q6TmePM=;
        b=z5v0tFUKotutb86+kR8MJDN9cBjFGH58oYgN1paHZbC7tEUMwRmykJ6Lz7/1SHFKZp
         Sh7jhva0I9HBUbuLnpEhZbwC7r0Iu+iAZFiqjum0FJwT6TSb0owkWHOaBYRybeeqa1nk
         hz3FAjrbBwS14CYVMRMvY9ADC7xTwOX+DojMZMx5n292SbXI5AQAfRFzUglUTehr5Ag5
         PtWFpEp3YL96auSx2aKd5xutMU7SICXKL4auYo38nJF4ZlZX2BwFGed4wqBsDI/URu9G
         3dnFdn9J2af36qqSonHCV+d4T0Mdt/mZNp8S0YMyn35+bIoixmxCGpTofGwvNZJQPNcb
         815Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Rw2Ooa/4";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZCir0qVwe1r2fckS4Bq+ghTDsThA+NHsdFj3Q6TmePM=;
        b=FAxlFXTMM067kEl7bY+zFnwipd2u4dXvmPfsdI9JsDR3kUrLAkBwnu5Ij12xGyPwBV
         bkQOytfg7nX2t21VBV7nmrc4mJZVvnfepUOokxHGqm33RbJC3bB4RJfQxMKc6rWUXvnI
         Epog7uAihe4GR2cn/6n2LBks7ADdRc+yUIbE9B2mw3ISd0jBVX0MhAbB9nqJ9bBGjyfy
         1mhKzWcD8zcKsXTlp9ISrd+u/OYAk9LErwsysaKH1Xw686Fd22fQwZpsJNL5vGbq52vx
         xuIEOgPm8csX1k4vrfbcJ+vSb+3Bftu/jMpBy3sX2dFOND7pR80hu5VCVA8Mav0R1xpi
         wPAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZCir0qVwe1r2fckS4Bq+ghTDsThA+NHsdFj3Q6TmePM=;
        b=S1YhE+jJvABAIR8gAe4jWcSUmlr2TuOaI8PIhzks824iL9D5C32hDf1r/X9mOZGMry
         O7+/FamekAyviSSsSHgre+i73+B6kdLz7C4ktxtu63FjHGmRhsWLCMnJKmwVERg8kUVn
         /+C1jGkq7h755Ih1bWOmCpyBsf3MtnVgLApEpPZ95/Q/vzKylTK5ArMyIvgBTgkZ3Cu7
         fNfzl04hmnspCHxIKD0qF656ND8CB9csBrpL8Tng4xPdXaHJ6Oynt+Gx8MroePuNo/Ay
         0I8i0sSFJo7s/mFqKFFMS3LrTK85eB3+1ejZ2eL/DyQ09jnOFix96OWUrfSK7SK/+y4C
         TBiw==
X-Gm-Message-State: AOAM532219Zp/PD7LRuW0t7I8jgbxEzawXMvEpVE8iO9fz+73Mgr7rII
	EER4ASarblXlsRnPn1ziDgo=
X-Google-Smtp-Source: ABdhPJyInl1adPefUj4uM0OjvElb0YA2MuHUgTbak1mHYFIaPODU4E9bd+HMKCII462qDsMAXl0HgQ==
X-Received: by 2002:a17:902:b7c8:: with SMTP id v8mr4858438plz.201.1594749254680;
        Tue, 14 Jul 2020 10:54:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:582:: with SMTP id 124ls5789589pgf.6.gmail; Tue, 14 Jul
 2020 10:54:14 -0700 (PDT)
X-Received: by 2002:a63:135b:: with SMTP id 27mr4394365pgt.37.1594749254209;
        Tue, 14 Jul 2020 10:54:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594749254; cv=none;
        d=google.com; s=arc-20160816;
        b=G22wU9M3Ty0bO0DIXUpPyGnqPSeRF/8UHpA6CeAAALteNAm1JfAIB+TIHvigy0ErvH
         qtbFHd1kf5RnmigNSufyYXZlK9I5tn41+Z9h1g0yN+6/VILL8E6YKtw2QFYXW6ZnjKsw
         YMwjdVJ6G0yP9t0wUX8ZAnmZjT246fudL89LTmmzdtqbjrQ19/a4PASYPjskPmKb4AOe
         8u7BfwJP/aa9c3TwfL+/eUQyNSG+/upcJz2Dck8QZPeq5v0+uNrMY0wb/PyXlxrSo+qi
         0txud7GDVICh1xcxTxAQO2OTjpcLl6leNL7LOg9E1PYgPCowMmEZHeJk7WEIE8J6XZCg
         qslw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=45xI8rEeWi7QXFwrqKcRbpSWjjoJSS/Qt/Ikgj5NGNk=;
        b=SfQOm15AMdssocLeb+CgcmxqUYkLmyV6TSFddtIlqJaeQkVXU297xFIEVHQgdN5yZx
         lKcmVSyc1oefNp3TYdg09lBIZRuAor0WPOtJLZXKYUjfQMyBHHtRliJ5UGN18etD+Z9r
         mwZAsyTVL+/6YjH7ol9G8Dash5zbd7QQIrVlxcFFqcBMXWQ83d0rM6Z4he87+UTLKXwd
         qAUPAvtMEWVkum+f6uKH6Iqp5tK4JxVzyr8pV7adhMI32m7LQVcWUPyTaYMptqh9GG+J
         1T/yUuqvr46VnaiJUhjJECbmXoMWoZHVxGYFxehhr7aIiyB0LPI4MNCEW20rNj+Z3Fnb
         DUMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Rw2Ooa/4";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id s7si126728pjq.2.2020.07.14.10.54.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 10:54:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id k4so7315618pld.12
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 10:54:14 -0700 (PDT)
X-Received: by 2002:a17:90a:21ef:: with SMTP id q102mr6056117pjc.101.1594749253773;
 Tue, 14 Jul 2020 10:54:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <671d8923-ed43-4600-2628-33ae7cb82ccb@molgen.mpg.de> <CA+icZUXPB_C1bjA13zi3OLFCpiZh+GsgHT0y6kumzVRavs4LkQ@mail.gmail.com>
 <20200712184041.GA1838@Ryzen-9-3900X.localdomain> <CA+icZUWyqb8jdzTAophvBKuX3e2NvG7vQPnMW+SRW5v0PmU7TA@mail.gmail.com>
In-Reply-To: <CA+icZUWyqb8jdzTAophvBKuX3e2NvG7vQPnMW+SRW5v0PmU7TA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Jul 2020 10:54:02 -0700
Message-ID: <CAKwvOdnFxihNnGYTsowzEbtMvb-pwv9pHNo-tihD2h74LX+H+g@mail.gmail.com>
Subject: Re: [PATCH 00/22] add support for Clang LTO
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Paul Menzel <pmenzel@molgen.mpg.de>, 
	Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Rw2Ooa/4";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Tue, Jul 14, 2020 at 2:44 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Sun, Jul 12, 2020 at 8:40 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Lastly, for the future, I would recommend grabbing b4 to easily apply
> > patches (specifically full series) from lore.kernel.org.
> >
> > https://git.kernel.org/pub/scm/utils/b4/b4.git/
> > https://git.kernel.org/pub/scm/utils/b4/b4.git/tree/README.rst
> >
> > You could grab this series and apply it easily by either downloading the
> > mbox file and following the instructions it gives for applying the mbox
> > file:
> >
> > $ b4 am 20200624203200.78870-1-samitolvanen@google.com
> >
> > or I prefer piping so that I don't have to clean up later:
> >
> > $ b4 am -o - 20200624203200.78870-1-samitolvanen@google.com | git am
> >
>
> It is always a pleasure to read your replies and enrich my know-how
> beyond Linux-kernel hacking :-).
>
> Thanks for the tip with "b4" tool.
> Might add this to our ClangBuiltLinux wiki "Command line tips and tricks"?
>
> - Sedat -
>
> [1] https://github.com/ClangBuiltLinux/linux/wiki/Command-line-tips-and-tricks

Good idea, done.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnFxihNnGYTsowzEbtMvb-pwv9pHNo-tihD2h74LX%2BH%2Bg%40mail.gmail.com.
