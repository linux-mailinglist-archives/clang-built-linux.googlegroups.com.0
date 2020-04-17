Return-Path: <clang-built-linux+bncBAABBCXT432AKGQEWJTPN7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id D25B41ADF93
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 16:13:31 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id w16sf1866388plq.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 07:13:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587132810; cv=pass;
        d=google.com; s=arc-20160816;
        b=gvgWPtjIJyHKQdQQkF5ly6qkkZfCIToBWlrSnN3q3sKnpkTpr3H8HVd8sR+dHAzX24
         DzsE6yRfKabtp+BNUQPu0K7nzb9KPMtSXHgg+rdUzmmEx0tAuXXjEtYnW1nAJcBQfQA2
         Qr8DpdYOUQASla0RmVQzWooD/Vps306GgdlCMmeQ6L3DsuzLZAdVPXmS9ynd/KjkIvDs
         +0Ly0fwtM+S4ba8570XRPsIoXFFXL1mnef5emjliJ5a8ScWWnRxJOikQZ2tSxW8WQ73t
         nB9zz5KrXpduRzsWWKMVtthz4iCyCEn719HI5A9kpXzBBCZCIUdtZ6Sg7qLPBeuiwDA/
         cKrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=xBSaU1tiGgrqWwCAxJvLWcsRQ3LSsng7xrgIUI+BiYM=;
        b=Nmv+9FrJ0fQO3+dkmf6dcX0vQnEJnnxkrTl6VY64vTkc1ogG3E8xAV9Grb4SAabTUF
         6J0pIE2LyT9Ojvb34/ZSizZ7JQk9z7x5Q9xp/33XtcTL8XclKl7TnPJinZoYEIR92IV2
         vLanhJrPyERBoRyB2BiGXolbSNdSznrcUDreLJIzp41++yunE9QC9O2XKh+QCW2MvAWy
         5GyavtcCuW2ij1q5oSOvBqAfnNhnjit41mBtjOcg1n5zqOe8nusjyAnl+5LH5y8yHuwI
         aBwG02N0Ss59e0aR+l6POBvjOZjTS9K1ubhAMUQ2YIwrILU5j1evXneF29MtE9XQRtjs
         SptQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vXuRLTov;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xBSaU1tiGgrqWwCAxJvLWcsRQ3LSsng7xrgIUI+BiYM=;
        b=lg6bvsqFepIy+dUSaxucP0NJ5z55BuTvkMtsas/BRPJf4H2akAMxIctdzg9HeyILBw
         AmBdZO7edPzP9htTBXTw9g1P1nyBM8QJo8i1JjJy3FBPGoQz1XvaREsQRVIL8OFaYp/y
         kPRa28aqJTlyT2Oa96aOGE5NeH/ZTWd86PQ8vh2e+OtGmWEqim71AEK0nlfv37oBZVOu
         dNangkfgGEFnF+3GoM+R8aOXfleBMuODYfHjbj8tYoyjfadQBQ1kRhYPrVZ3OovIc69z
         w3JundgKHBCWg9paPe6pvhexh1xOJyQsRG7hbECkhCvPghgcvcctvpuE57Y/IykHmXcL
         UReQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xBSaU1tiGgrqWwCAxJvLWcsRQ3LSsng7xrgIUI+BiYM=;
        b=tLHHOvZkDhhoLpUc/f9ySbC+KKBfH9vI2GgE0BdgVSr64LMAH1qHP15yrT38ygFs8/
         frri3Mq6NeA9UNqgYa23MeSykkiPF949RNNWF0wYMs1yHhd+r6YeYNytxoqtPdXHGA1l
         HS1Y94+js3UNQ2v0pA1aJHEUF2ScyeGLmMYZOvOuiN5ZX0fRl9wXVtzyXzLv4irSKdEe
         o/9Li4yUrRqewM6iKmnh9mlafJyFNpq20HIRSGwf+hidnkfJTJlLvYZIprXA9YKc0l/u
         I2ePmyjO5BXmGlKkKkM5W7R/3BwEZdKAZH7lxj71fmN3J0/Oot/PnEWlzEJGO0Q5dgBh
         KkAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubqDDpSKY4gi3JMWCSwEaw2b63FLbuJVg4P3nSBR7pxqjdJWjBg
	g+jmTYCcFVDaeSTD6n97Wb4=
X-Google-Smtp-Source: APiQypLzn5++wjWIPzJuoR8Gn3RPhyXF9kJW906DpFQFslZOKyUijfxuh0yHFxXX6Ccwao9uiLmuLg==
X-Received: by 2002:a62:2905:: with SMTP id p5mr3272679pfp.271.1587132810171;
        Fri, 17 Apr 2020 07:13:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:224f:: with SMTP id c73ls3001411pje.3.canary-gmail;
 Fri, 17 Apr 2020 07:13:29 -0700 (PDT)
X-Received: by 2002:a17:90a:a111:: with SMTP id s17mr4888770pjp.129.1587132809857;
        Fri, 17 Apr 2020 07:13:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587132809; cv=none;
        d=google.com; s=arc-20160816;
        b=zfk+vg+Nxg6Mxckwk9HHLASYwOuwpCnCCXjnC/DiEd3XBBaWIGMVfrf5TOz9Tl3zH8
         1glnU3BygxcDvYBPncCSkdShlgMEbTW0kTq7sz3L8sGrisH9K0hnscxLTq/n72O0wyT8
         HhJ4whIP+YCwfq0jDCDaFgAb+QGtc0K+QOe5eR2RNquy4K8JiuMryem5Alw//bzv/iA7
         Do2eOpVhsB+KzP7FdlU+cuv4JcAtUMGmAZbzRiHYlEi798GaXQFipVDIuY+p/pOAxcol
         bSfaWkm/jYeD2VlhPviy9x7WKXVheC1HaOA+MvNHkVgwR3dRQti6L+nvk1RzRO5y2I6P
         B4Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=soczHQygZ5e4Z4/uBgr0PVGiMli0DNK+wn9N64tR5qU=;
        b=D46gQAcdTBgx7rlT5BNX4K4XEnA9Ys40AR60aa3x2PmqzNtXNJ23YlCcUJKSkdYZCF
         991OjN6x8DqqWmqV2CRxg/AhDOSM+iNQ03g/sgBkBQKVsQtfHV7VRI8aUPlFIODeox9t
         nZ1SNgqdX4bAeQanfwaHcKtSsZcHqqKjhMctkxer7z9S5Xtm9PHUGFshr4X8Qod3EF9j
         yGK0cIZMJCEgCwj0BQQZSZf0iWDF2mtmahyPe7cU72H20b+xoeJwYOUxHGXJ5rmRCzRI
         VKlRxTnkGXH0VQK++PxsNoF/vURS3NefT40zOD8epT2WvLMo6X3Jd66REmbpf00IdaVx
         FtDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vXuRLTov;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id t15si1717830pgb.1.2020.04.17.07.13.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Apr 2020 07:13:29 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 03HEDDIR001130
	for <clang-built-linux@googlegroups.com>; Fri, 17 Apr 2020 23:13:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 03HEDDIR001130
X-Nifty-SrcIP: [209.85.222.45]
Received: by mail-ua1-f45.google.com with SMTP id g10so689864uae.5
        for <clang-built-linux@googlegroups.com>; Fri, 17 Apr 2020 07:13:13 -0700 (PDT)
X-Received: by 2002:ab0:20d6:: with SMTP id z22mr2640996ual.121.1587132792213;
 Fri, 17 Apr 2020 07:13:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk> <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
 <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
 <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
 <CAKwvOdm5aawsa2-=atB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ@mail.gmail.com>
 <202004141258.6D9CB92507@keescook> <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
 <202004150833.E2E9A89E0@keescook>
In-Reply-To: <202004150833.E2E9A89E0@keescook>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 17 Apr 2020 23:12:35 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS-juF8dpeSVCuYQPwJ5HSQypFqOvesGFQR4bzTf23nUg@mail.gmail.com>
Message-ID: <CAK7LNAS-juF8dpeSVCuYQPwJ5HSQypFqOvesGFQR4bzTf23nUg@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Kees Cook <keescook@chromium.org>
Cc: Ard Biesheuvel <ardb@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Kristof Beyls <Kristof.Beyls@arm.com>,
        Stephen Hines <srhines@google.com>, Luis Lozano <llozano@google.com>,
        Russell King - ARM Linux admin <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>, Jian Cai <caij2003@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Peter Smith <Peter.Smith@arm.com>, Stefan Agner <stefan@agner.ch>,
        David Howells <dhowells@redhat.com>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        Manoj Gupta <manojgupta@google.com>,
        Benjamin Gaignard <benjamin.gaignard@linaro.org>,
        "Joel Fernandes (Google)" <joel@joelfernandes.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        "Steven Rostedt (VMware)" <rostedt@goodmis.org>,
        Jian Cai <jiancai@google.com>, Doug Anderson <armlinux@m.disordat.com>,
        Dan Williams <dan.j.williams@intel.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Patrick Bellasi <patrick.bellasi@arm.com>,
        Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=vXuRLTov;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi

On Thu, Apr 16, 2020 at 12:44 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Apr 15, 2020 at 12:32:17PM +0200, Ard Biesheuvel wrote:
> > To reiterate my point: I strongly prefer minor asm surgery over
> > elaborate Kconfig plumbing if it means we can retain the functionality
> > even when using LLVM tools. In particular, the use of macros to
> > implement missing ISA support should be considered before any other
> > solution, as these are already being used widely across architectures
> > to fill in such gaps.
>
> Yeah, this seems like the right place to start from. It sounded like
> there were cases where the people with knowledge needed to accomplish
> the macro creation were not always immediately available. But, yes,
> let's get iwmmxt fixed up.
>
> > This code has been around since 2004. It has never been possible to
> > assemble it with Clang's assembler. So the only thing this patch gives
> > you is the ability to switch from a .config where IWMMXT was disabled
> > by hand to one where it gets disabled automatically by Kconfig.
>
> Right -- I meant "let's fix iwmmxt with macro magic" not "let's disable
> it". I did want to point out the Kconfig disabling may be needed in
> other cases.
>
> > So what hard-won ground are we losing here? Did IWMMXT recently get
> > enabled in a defconfig that you care about?
>
> It's a CI's ability to do randconfig builds to catch new stuff. (i.e.
> where "disabled by hand" isn't part of the process.) Since there are
> multiple CIs doing multi-architecture builds we need to get these things
> fixed upstream, not a CI's local patch stacks or Kconfig whitelists,
> etc. And when the expertise isn't available to fix arch-specific stuff,
> Kconfig negative depends seems like a reasonable middle ground. I, too,
> prefer fixes that allow Clang to do its work without wrecking things
> for GNU as.
>
> > I am not disagreeing with you here, and I have worked with Nick,
> > Nathan and Stefan on numerous occasions to get Clang related build
> > issues solved.
>
> Yup! Totally; this thread just looked very familiar to me from doing
> treewide stuff and I didn't want what I thought looked like the core
> points to get lost in the details. :)
>
> --
> Kees Cook



When I started to read this thread,
I just slightly preferred
    depends on $(as-instr, <some iwmmxt instructions>)
over
    depends on AS_IS_CLANG

because it is what we recently did for x86.
commit 5e8ebd841a44b895e2bab5e874ff7d333ca31135


But, Ard's macro approach seems even better.


I do not know how difficult to replace
the arch/x86/Kconfig.assembler with .macro

Anyway, arch/x86/Kconfig.assembler will be gone
when we raise the binutils version next time.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS-juF8dpeSVCuYQPwJ5HSQypFqOvesGFQR4bzTf23nUg%40mail.gmail.com.
