Return-Path: <clang-built-linux+bncBCS6NPVSS4JBB2UGUWBAMGQENUOATOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BC3334AF0
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 23:08:43 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id w12sf9430713ooe.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 14:08:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615414122; cv=pass;
        d=google.com; s=arc-20160816;
        b=aqfNPpfO0hpLJCPsU2avnW/0fIVopTK8AU215fE7EjQQ6i+Ohp/A/mAQ9GSu6LkH4e
         x6a4M/NnQ3LqB8fh9qhMgYRu22n51ech1ygNoxcNM8+GPS2eyGUWqoKSW6mTt9jd024I
         LnGpG4R8iSxo1nXYZn+K3rZqc6Bjt4SQGeyBmx3vYm8THrY3Pz8h+GuspXqzmdHKBfBX
         e4EGrfSToe7B35Edyq4+2Zm3ef1PU390bgX2kwIf/3D3QW2baknz8Nu+1biTKDMNscpy
         1lTuTi5N0GBdKzzzi8tuHkDsCz2zFwOS3UEqBCKh8VAMp0Z9ztbJ/3UQw9M28p8v6XLF
         3qxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=ylOaSNb1AdavsEDr3XmpYcv+cvraMUi6uCwm+TrK3OQ=;
        b=TcIkgsxUdkzzGVIU/AWDEihroPF1k9hiFmMmkmLqUT2ouuXobudHKgAG424ZCqgBWw
         jVQKeYR9EE3Xe+4ratxUd3yrfj3sh8OlzxNhrb8WhckmRVN3UHLDB8miWtNc0D+T627u
         rc6uSPodNPWwPJdAg3potlXWc2RuMT0ox2UD4pdpv0AJzqXK0wmeY0GOhZQOnJ2kodnH
         zY3g3HuuHQ3PeslIFcT4OcglLGxOIVqb1RFqQbs9zbmN9FH6affy+5wIxauNuqWCM1gm
         VlFt1DmKp86QspgL4oy7IAefWpQyN9zxSxLlLrkZLtvBNWAfUFrpaVzdjHsWFW7sdIPN
         3WRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=YzueOrRX;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=R4OnUqYu;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.86 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ylOaSNb1AdavsEDr3XmpYcv+cvraMUi6uCwm+TrK3OQ=;
        b=gAppefUPnBi7TrwWZwgZ25KRklccPet2GFr2kPBC+K6mCyIn+JBB2Rs4jBELzZsapG
         M4mm58o2sAUxm4+vy3hiaQh9z9mZgfXv6SZb+WC97IhPtIFWkk8zZVx2z7D99Z57aw+D
         TcQAd+JzF7/aS4zBmHeZCPKpgonceMvPaO/V24CTqCv6Un3DLhjwHmj3n3jgr9qTmJ28
         KxE4/YmTw0wqzNgTjqkZOsX+SSEYptW7F21kP8njss441ap+aIx7JcxIhjBd+FHzI5t3
         zd/RylbWQbvslqXYx2ONV2NfySwAXLOIjwctDC48XYL53DAQDspwrhMFJd+BOtQCi/mD
         SXww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ylOaSNb1AdavsEDr3XmpYcv+cvraMUi6uCwm+TrK3OQ=;
        b=c3FMlXkxyzkt1ErTAni+8Uxe20bzojAuPasK01dTIUFVy/Cn2/kFMCPv0BymIq/nFh
         42fJRrt25VN3yOXq2Yex29zW5dahzJN8da0AxyipLri4+PQj3mJHaYHcbjlRF68IPefl
         mMlsm2cDEGozogVHNQ5I2c7Y5v6cFAdrID3L0vQQi2ccEZTAlpFaFcIB8d0GVUv6+rhR
         6WJWmSVuk8p3Qwewhu7Bdn6Jz2qjtp0vZu3l8oT/HpCs4aw12g1uaWQM/j2HIEMIRsE4
         9dNZFUBgp780KRZ27ez0renqkP5ccjqzQOV+Kk0jb1RN86bLJMhLzy4P94d/ZEzLTfFv
         bXhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321OQumVD9wtIMStNOQnVDqbVYkCQHtQpTVWnkkudDa7vOqnfYb
	Oct3TIY3JfBMAVVutpzauC8=
X-Google-Smtp-Source: ABdhPJyCa7ANQ+iqrkEjYxCdRXeKNmSSZOpkEkcw9QhsmjHciv7NF1HuXAX88ynqcQok7U6+OR4Ltg==
X-Received: by 2002:a4a:d88a:: with SMTP id b10mr3942005oov.29.1615414122720;
        Wed, 10 Mar 2021 14:08:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1482:: with SMTP id e2ls859557oiw.4.gmail; Wed, 10
 Mar 2021 14:08:42 -0800 (PST)
X-Received: by 2002:a05:6808:1407:: with SMTP id w7mr3841698oiv.15.1615414122345;
        Wed, 10 Mar 2021 14:08:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615414122; cv=none;
        d=google.com; s=arc-20160816;
        b=EBNZ2XdFo6kJWRPB+2c/58KFceocUTbta3zURfYLulb0sW/iNGYCvF4QiBaRu3Mjxo
         68UTQ1zS08xlnjtjMSmtHGWT6owDyIT/6S6c2noOtfNrRiNgy7vUqRVGEKwvl8ip94uq
         MOhCZStgX4YyeFJM4hKg0ZR5t8xe98ttW8qbw/na9azLMRlQKIvAkHR/InAzwsaHe1aR
         /E4Bd7DRmHdnwaqoVj9e+aYfVWfNRyKn3q0yNmAMiQqx471HoyYCp69mk2iMw4yTV8Wt
         bCHzfqTOWNspeTszKsrp15xs6Bs29Vi1a1ckkEQPddaR5R4KzrHI01r1tK5faXJnOnKz
         Fk5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature:dkim-signature;
        bh=DUP5I+ycwaPZWPx7WAEYHzqJlP1PHlx2K5igdBQqJtw=;
        b=ap+U0aM2JKs9t79KJ6VjFeZbx20CB5D34T7PBg1CCo0MXdPCUNqYeNVhOQKgWs2s/n
         dMOAKXnCgb1d1SKVCTK3SAVj2VidyJCWUH6dD0xCzacRuWCdGAqNiaDpK7JRuee9w8J+
         BobSbPfndgJncPPUrP+FE1jVfXDymYj+y2WG/JCHQJLweYDZu0KNSITBoiN34IoixQ99
         1XZauAewjF8axSMHCli5e7/4WcWTWwHaAzRkh457YTXYfzfHJV7yiaQLmYyAKNPMKeB4
         tfbgLoGENwpb5nRYV4rjHK3axaWQ3r+9wnRopomtRkBuysOcuBwQkIqkK3f/m8OZaS3g
         sAvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=YzueOrRX;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=R4OnUqYu;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.86 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-sasl-trial2.pobox.com (pb-sasl-trial2.pobox.com. [64.147.108.86])
        by gmr-mx.google.com with ESMTPS id v12si28827otj.0.2021.03.10.14.08.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 14:08:42 -0800 (PST)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 64.147.108.86 as permitted sender) client-ip=64.147.108.86;
Received: from pb-sasl-trial2.pobox.com (localhost.local [127.0.0.1])
	by pb-sasl-trial2.pobox.com (Postfix) with ESMTP id EB027364A1;
	Wed, 10 Mar 2021 17:08:37 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from pb-smtp2.nyi.icgroup.com (pb-smtp2.pobox.com [10.90.30.54])
	by pb-sasl-trial2.pobox.com (Postfix) with ESMTP id CD0C53649E;
	Wed, 10 Mar 2021 17:08:37 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 3F050ACB8D;
	Wed, 10 Mar 2021 17:08:37 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id 522552DA004F;
	Wed, 10 Mar 2021 17:08:36 -0500 (EST)
Date: Wed, 10 Mar 2021 17:08:36 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: kernel-toolchains@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>, 
    Nicholas Piggin <npiggin@gmail.com>, Fangrui Song <maskray@google.com>, 
    Ard Biesheuvel <ardb@kernel.org>, Andrew Scull <ascull@google.com>, 
    Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    David Brazdil <dbrazdil@google.com>, 
    Geert Uytterhoeven <geert+renesas@glider.be>, 
    Ionela Voinescu <ionela.voinescu@arm.com>, 
    Kees Cook <keescook@chromium.org>, 
    Kristina Martsenko <kristina.martsenko@arm.com>, 
    Linux ARM <linux-arm-kernel@lists.infradead.org>, 
    "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
    Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
    Nathan Chancellor <nathan@kernel.org>, 
    Vincenzo Frascino <vincenzo.frascino@arm.com>, 
    Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
In-Reply-To: <CAKwvOdk4y3Ekc_TiWuk6D2KNbH_6YHZLRK9TtAnOP=cLP6E0Rw@mail.gmail.com>
Message-ID: <2npq25ps-q960-795-96s5-rq6736pq693q@syhkavp.arg>
References: <20210225112122.2198845-1-arnd@kernel.org> <20210226211323.arkvjnr4hifxapqu@google.com> <CAK8P3a2bLKe3js4SKeZoGp8B51+rpW6G3KvpbJ5=y83sxHSu6g@mail.gmail.com> <1614559739.p25z5x88wl.astroid@bobo.none> <CAK7LNATUSJ5T6bs-aA3sMQgXKWfcyWJLDfhmteBhQ5FuUR52Zg@mail.gmail.com>
 <CAK8P3a3yF+JV3+Xq5QtD_59JqxA7akz=u=0t05Gv-isHD9Kv4A@mail.gmail.com> <CAKwvOdk4y3Ekc_TiWuk6D2KNbH_6YHZLRK9TtAnOP=cLP6E0Rw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: 29C36E84-81ED-11EB-B246-74DE23BA3BAF-78420484!pb-smtp2.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=YzueOrRX;       dkim=pass
 header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=R4OnUqYu;
       spf=pass (google.com: domain of nico@fluxnic.net designates
 64.147.108.86 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Wed, 10 Mar 2021, Nick Desaulniers wrote:

> On Wed, Mar 10, 2021 at 1:08 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > On Wed, Mar 10, 2021 at 9:50 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > On Mon, Mar 1, 2021 at 10:11 AM Nicholas Piggin <npiggin@gmail.com> wrote:
> > > > Excerpts from Arnd Bergmann's message of February 27, 2021 7:49 pm:
> >
> > >
> > > masahiro@oscar:~/ref/linux$ echo  'void this_func_is_unused(void) {}'
> > > >>  kernel/cpu.c
> > > masahiro@oscar:~/ref/linux$ export
> > > CROSS_COMPILE=/home/masahiro/tools/powerpc-10.1.0/bin/powerpc-linux-
> > > masahiro@oscar:~/ref/linux$ make ARCH=powerpc  defconfig
> > > masahiro@oscar:~/ref/linux$ ./scripts/config  -e EXPERT
> > > masahiro@oscar:~/ref/linux$ ./scripts/config  -e LD_DEAD_CODE_DATA_ELIMINATION
> > > masahiro@oscar:~/ref/linux$
> > > ~/tools/powerpc-10.1.0/bin/powerpc-linux-nm -n  vmlinux | grep
> > > this_func
> > > c000000000170560 T .this_func_is_unused
> > > c000000001d8d560 D this_func_is_unused
> > > masahiro@oscar:~/ref/linux$ grep DEAD_CODE_ .config
> > > CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y
> > > CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=y
> > >
> > >
> > > If I remember correctly,
> > > LD_DEAD_CODE_DATA_ELIMINATION dropped unused functions
> > > when I tried it last time.
> > >
> > >
> > > I also tried arm64 with a HAVE_LD_DEAD_CODE_DATA_ELIMINATION hack.
> > > The result was the same.
> > >
> > >
> > >
> > > Am I missing something?
> >
> > It's possible that it only works in combination with CLANG_LTO now
> > because something broke. I definitely saw a reduction in kernel
> > size when both options are enabled, but did not try a simple test
> > case like you did.
> >
> > Maybe some other reference gets created that prevents the function
> > from being garbage-collected unless that other option is removed
> > as well?
> 
> I wish the linker had a debug flag that could let developers discover
> the decisions it made during --gc-sections as to why certain symbols
> were retained/kept or not.

The GNU LD has --print-gc-sections to list those sections that were 
dropped. And normally you should be able to find why a section wasn't 
dropped by looking for dependencies in the linker map file.


Nicolas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2npq25ps-q960-795-96s5-rq6736pq693q%40syhkavp.arg.
