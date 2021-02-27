Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB66L5KAQMGQEXKDQ7IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 793F0326ED8
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 21:05:16 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id w15sf9843854ioa.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 12:05:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614456315; cv=pass;
        d=google.com; s=arc-20160816;
        b=bGtVnnRf/K+71yf2lyXNH+dz30nnX/HfMFXa+SE91QAJjM1rhBJVKr8sAM+FreRSK1
         k3Jx0NQkoZvCe5TS4KkwG1+i3msrM4CafZeUJ6WzJ+xXQHIoHQ37iav9LOKccJmGg1F0
         81gvT/cmZEVaILiLqyKMHC9vlDcID9a24J4OmMel1Rzt4XHVsklNgsU2H3nf2N3i3V6p
         GHtax4hlPx0WdLYj7OFyuhDo67N3MEmYx9xtUcRztR2nAJMdLuRStpEC0W7FI2tuQZcn
         rlvlVzWK94nhYcWEIv03aIyZc3SJ0cyUgwo3Vq+Ad0OxaGK238f0jjiqLtaQ/U86assr
         RgOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3huhkUCzxyGUbZB0bN70BqmeAqic+hDEvTtKa4+kNtE=;
        b=pCFq909fh2+CmP1KQ9I+alR40+omjTwBVCzYZWvrCx/0wRhEMdTfNjRkZc6c66d9Wf
         9zc58Zad9UPaKslUfXK1PXdFQ6/rgCs080msiAVy01SyXLbSEMk0Hkie0/nTnLOHRfwZ
         zzhTrYq8PlZBbk56Z3iQRTbuOZ677UvEWZoPhYVOkCqPKz3pGso4yHzOQ/vKAQ8Q38Cf
         xyOWJN4tyBticAhNFtMd7RpGAp+Kg6NP4RFuCIcDvf0PsvUC1MD3a3uO9FtK4Egz4DHJ
         SDxYdJaGEOJlIl3OASifC6kGejhL45PIeXktnNo/boKLldChzMr82LzQd10qev4wLvz+
         ps3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=brdjTEjg;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3huhkUCzxyGUbZB0bN70BqmeAqic+hDEvTtKa4+kNtE=;
        b=oS95j0tSBiRzfCW3Yff6VG3SS2oaKohkX4HAIMmCnJ2cwRVNJcVsbgkTceI/K0NaIQ
         gkmtUvx+1hO+gy2vHiRXlVkErt4bD8d2SU2vDzrA6atLazNYg0GRvaZlNHIhVNSpDKPM
         pOlAVoByeFVduH3K7JAPUYjVqqXL26tpX1Q3LaBcOALuDVVCPrWey9WSii9A3kGdzZsD
         /uZtjiNanClOCzhlefOZRDB4HvXFhDmWTmxXUKqvbs42R9Hx/n3u/qFqEyZzPoqWJ76/
         DKa+vb1j7821q6oa8Qpkn7AXRXhxLTkK++wKLihd89ZRjIZb3QQE1myfKUJDs6i7hajH
         OWGg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3huhkUCzxyGUbZB0bN70BqmeAqic+hDEvTtKa4+kNtE=;
        b=bkJKrb7RIouNR9RgYpPAVqfxfKt2PKuaIYFE4AxoobHuGNUcY926Pxkwe8bl5jxyHS
         C+8+2sK1m6Uv6YPkhTolZpFBSl9Cqq6FOKZep6xdVEly/s0lanwdpioZ5yDSXAFAO1LF
         fQX4rihNOPYmVX1D5FEoS/FHbBxo7zs92h2PUfVi0VrLwIdj1fF2+ae1j2jixh4RruWw
         EHhqc8bkBmEoMnyTOcvoDKFfekWOAy6jJYCshwC7zlfzpkC9wScfu3XmLmQ223u7iwkc
         5fuXK8JYcZPVbR1QZKcozpQ6EYC9PGv4Iuxvmuj0p3Qd0LzLS1fth1ttN4o9U2dpFPAk
         KLyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3huhkUCzxyGUbZB0bN70BqmeAqic+hDEvTtKa4+kNtE=;
        b=NJGl3V4gKnAbSbMf9bu66BC00TgoDaq5Wc2i4/FAvrRu90NPFiOu/vIu4eUcY63pWI
         i/l2MFhxYaua65wI6q1Kf62OCZoPblyrWQSyatTA/gaGk7R7yemiPowp5CGRM0/ot/v5
         O6xp9w3XsCBmuctELalOnqqfnL2Pa0WaofnJ9dg3Eitb+3R5ap7W8UMUJGZRPTREJbCE
         K3/EZahk7j2v5XSeDBMot9TKWAVgcrSkUcH21fVjF9xumgO635070VCScWuWo32Q1Ie5
         9oj5FzX1M5dMCTgfQXfgXx0BxyohjGO2vmlnTFyeKKwbAR5sucutwKW7zMrDPXIYeh9b
         Aj+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HGI1j5nixlb3B6am0kIIgzf5q4ohePVcAJXlAAxBDWlZueFKn
	EoF3Pa/lMKZMfl3uaQzt7t4=
X-Google-Smtp-Source: ABdhPJyblcxAziklzEFp6klzHZQXDIQAeWXP2FGtHuscFafN2B9xQsq2/b6HQpkZobZZGFfVGVNgLg==
X-Received: by 2002:a02:5bca:: with SMTP id g193mr5290261jab.97.1614456315203;
        Sat, 27 Feb 2021 12:05:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2656:: with SMTP id n22ls1742660jat.4.gmail; Sat,
 27 Feb 2021 12:05:14 -0800 (PST)
X-Received: by 2002:a02:30d5:: with SMTP id q204mr8951694jaq.55.1614456314915;
        Sat, 27 Feb 2021 12:05:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614456314; cv=none;
        d=google.com; s=arc-20160816;
        b=p60b2QThJHzU9srwK+n2TezHzqHnQ0iCexKVG1H8haCBwdb6YhAg+j5pNHd/+yZDqz
         4OvDrUD4MAVJnriL4IgeMBBF+Bh56BJTRbCEplcneJjXsINdZH6xUxLChxv3MYOsKtmG
         aouh4e9e/9MQg8TXF+2kfrExF68xfpRcaZ2UBlmjodFLM5/QE9W0fozi4ZX5VezAF2Rs
         /jkH1HLFaO9GYo7Jt6tBZNkUDKyGBwBKnA/wpXfkQYxN68mIs97O4cekhcxQ18sOWVh0
         nLAx9v91TiAaAaex/YOCNKiFDnDBDLJdEpJZlbNHtc8Bqbjj7BEJc/lgyMiUi+zobbH5
         Dqaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pPLwDk2zrlTCS7ma3hl5yenNNvgqmaQf23Nh8H3r+G0=;
        b=la0kV8ZzSi4wFfAaYwdX92pMK3kyYOAqvv64Ifqb30uCTMFZs+Q5wV3p8ssZJ4Ilb1
         cdgyA1yQwokRg4TySHuzUq0xuiq3FT/Kx6DrO3M8OFnR/xB3Aw6HeqnlzBO7fZwS91OJ
         SqtRMWdEQ1jSjJmUR9/e9YRBt/UMlTY6vACGfUSBxjT11Ru/Br332PNhAdKgWrBPiqRR
         D1AgbkBS6UFVV/FUzQRtSfhbwHsBeUYrXRtGe+u3HT6bkfweOO2berM3qv1RgJC2hUNw
         ZPufkKd1fIxsMllNbcpo+11DCieBhfILxikG/7dxDG2VYiBnXIrw48Y+v8Hb1Xg1u3mh
         ZAnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=brdjTEjg;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id i2si876731iov.2.2021.02.27.12.05.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Feb 2021 12:05:14 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id n14so13421146iog.3
        for <clang-built-linux@googlegroups.com>; Sat, 27 Feb 2021 12:05:14 -0800 (PST)
X-Received: by 2002:a5e:8c16:: with SMTP id n22mr7789426ioj.156.1614456314650;
 Sat, 27 Feb 2021 12:05:14 -0800 (PST)
MIME-Version: 1.0
References: <20210226062548.3334081-1-masahiroy@kernel.org>
 <CA+icZUXYLVjs-hXEu_5Vy=TdNvOHhyiXe=hc-jc7SAU04Dtstw@mail.gmail.com>
 <CAK7LNARmQzJwUWcYPj9QKZatYpC6-gegTuJiAvyhR==8ezWdHg@mail.gmail.com> <CA+icZUXGnOCY5O=cupmmjGnVpYA=Q=cm69ih5HrgpV9sOPozYQ@mail.gmail.com>
In-Reply-To: <CA+icZUXGnOCY5O=cupmmjGnVpYA=Q=cm69ih5HrgpV9sOPozYQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 27 Feb 2021 21:05:03 +0100
Message-ID: <CA+icZUWT7hqzA=OT=HU2CqE5EBDFZa7vh3mdtyDjhFSSgv8BkA@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: fix UNUSED_KSYMS_WHITELIST for Clang LTO
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=brdjTEjg;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31
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

On Sat, Feb 27, 2021 at 8:08 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Sat, Feb 27, 2021 at 7:55 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Fri, Feb 26, 2021 at 6:26 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Fri, Feb 26, 2021 at 7:26 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > >
> > > > Commit fbe078d397b4 ("kbuild: lto: add a default list of used symbols")
> > > > does not work as expected if the .config file has already specified
> > > > CONFIG_UNUSED_KSYMS_WHITELIST="my/own/white/list" before enabling
> > > > CONFIG_LTO_CLANG.
> > > >
> > > > So, the user-supplied whitelist and LTO-specific white list must be
> > > > independent of each other.
> > > >
> > > > I refactored the shell script so CONFIG_MODVERSIONS and CONFIG_CLANG_LTO
> > > > handle whitelists in the same way.
> > > >
> > > > Fixes: fbe078d397b4 ("kbuild: lto: add a default list of used symbols")
> > > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> > > > ---
> > > >
> > > > Changes in v2:
> > > >   - Rebase on top of Arnd's patch:
> > > >     https://lore.kernel.org/lkml/20210225143456.3829513-1-arnd@kernel.org/
> > > >
> > > >  init/Kconfig                    |  1 -
> > > >  scripts/gen_autoksyms.sh        | 35 ++++++++++++++++++++++++---------
> > > >  scripts/lto-used-symbollist.txt |  6 ------
> > >
> > > People who want to use their own "white-listed" (allow-listed)
> > > symbollist-file can do that via
> > > CONFIG_UNUSED_KSYMS_WHITELIST="my/own/white/list".
> > > Correct?
> > >
> > > Why do you delete the default "scripts/lto-used-symbollist.txt" file
> > > and remove the default in the appropriate Kconfig for people who want
> > > to enable Clang-(Thin)LTO?
> > > These people should now use
> > > CONFIG_UNUSED_KSYMS_WHITELIST="scripts/lto-used-symbollist.txt"?
> > > But again - the file was deleted with your patch.
> > > Do I miss something?
> >
> > I think so.
> >
> > I moved those symbols to scripts/gen_autoksyms.sh
> >
>
> OK, I have overseen hat.
>
> - Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWT7hqzA%3DOT%3DHU2CqE5EBDFZa7vh3mdtyDjhFSSgv8BkA%40mail.gmail.com.
