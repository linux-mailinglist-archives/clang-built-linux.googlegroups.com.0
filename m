Return-Path: <clang-built-linux+bncBAABBPUJ4OAQMGQE4EX437Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8960E32607F
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 10:51:59 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id j7sf6308846pfa.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 01:51:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614333118; cv=pass;
        d=google.com; s=arc-20160816;
        b=jpxaLKOuwRNGKPmBLe1rE6pQJ8Q94IBJyut8/nka8HQkUzs4Azwi4fmziY6jcX5iHS
         m1QZGOEGEHgnIHDoDxFNORC3w51UBJnslkBFKTCwiy2zf1KFjVkjrbidipI6ahkOtD5h
         s6w+nBNoMlfX6Cs+DS3u4zBPReYaWPJCuHIEmQb4u0E7MQnfN2OkXf72a1LNHrb3K7QW
         YxdftPaktdA1VDjGchyIddUbAQEmKuHcpLi1vL4iWxfHEkqWL1IQO5xKgAYK1GUeuNma
         8CU0UmpRlmXTVBBx9ZyPfFNMLN4DHKE0RGGZfvN8TjL9Ui9aCAaSfOrN2iYuIMOp/5jz
         M1hA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=2VRFX4c0R1F+WvBihF1bT8pXRkULJ22DdzbQRoiN1ks=;
        b=n11UwzGbucEKNapJ4J2GT5wAHTWDdWEUaWZNzWWVZV9n7RYxFGMTIO+N4Ox7ImjhNE
         4uLgUR44L5KHxmnva/DyNmQg0cyRuv9XaerGwGhQ7aOVj+R8QZSJdPS5Uyz2mDZ3YPNw
         mF/SaM0HmRwby/A3747HdEp93waLkJgWEBQQh+C44CAVBE/uqc7/1kHPdN/pF5S1/A1N
         wLGUNNC4wWVZAstPiMavzxgI0C3rBRHQBf65H8MzkQAOo2brdHH5rYpTTuoq9rZew0Dw
         frWM9BBWPlT+PeBIpds2VLP0s3OX5SH03FmMItCgkbjlqtJRJRuWejn9xRfiVaWDBXq6
         QyGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=D1D7MK9G;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2VRFX4c0R1F+WvBihF1bT8pXRkULJ22DdzbQRoiN1ks=;
        b=DP0JN0i2gzaS4M12NdPsJ7Lu92zaIUxMisCxo9LSonjeF2RwBJnPwedImGZRsrR9Sk
         YzVtYouC2y1A9CIgOz8H4nPDsWHNR5oDmyFE9TlwZX3eYMYfxMaentDHcAi5fv+o6N3h
         cH+iM+4TC84KdyNkUZHVIM10MqsHpRzDrY8FexecC96P4flZIwM3zSmJ8zRKWeMT7Pnz
         0wEpwlGACmhdoqoBrBKWYwOmB7dcaPQvMfjwLem4h9ebOc/PsPFvYOGiBIqz09i3m1u1
         IkO6rLKYAZ4cv4e/9gSjtJTwAg3MZ9KXOh5x5enhqaX5kE+U+vCDVGaKC3TWMdoxcvfh
         G7aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2VRFX4c0R1F+WvBihF1bT8pXRkULJ22DdzbQRoiN1ks=;
        b=iqPMDGAfwuNW0mfYSoV6TsootjaNSNYgb6qvP5YVA0U2IVxF5BQK2M8zhZzoZyoRlX
         Tcwv3nxJuHleACa8XwyS7ND4Z3pPflwyvOU71fhRITxG8Q72rBMYUOTkLTTCqFsu06ul
         kplcf6S1qTca1ILHRwVO0hqo4RalLzkvg/2x454pKyMTbzQunEagEQME5leqZYEQqzbx
         2cK3SuAc2RvGabN1UXO9ajiHBTrCuwbVPbWP7YQ8yemXAgmZFth4fkPv0qH+M0BqJn5m
         VbibasRLWMEwJPsml1Iq2GL+A2N0S+OMM5yEiOmtr4FAuItTynO2V8pBBsYEF4//852c
         mfww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531d4tQ3Oyz8mpmuN3gCgvFVa2MQAWxSDxJqF4ewHTczq6QrBAXV
	R9vtbP6XDzS67YPg/N4pFYA=
X-Google-Smtp-Source: ABdhPJw/yr7TsS62v5KiiQqaO0mQnmrDrky4HOWCG2hDoLzK8Nc4qitusml+qD+qP/rabSRjnV9zSw==
X-Received: by 2002:a62:7bc5:0:b029:1ed:62d5:31f7 with SMTP id w188-20020a627bc50000b02901ed62d531f7mr2603599pfc.24.1614333118248;
        Fri, 26 Feb 2021 01:51:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:5290:: with SMTP id w16ls5214844pjh.2.canary-gmail;
 Fri, 26 Feb 2021 01:51:57 -0800 (PST)
X-Received: by 2002:a17:90a:7f8b:: with SMTP id m11mr2711893pjl.179.1614333117794;
        Fri, 26 Feb 2021 01:51:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614333117; cv=none;
        d=google.com; s=arc-20160816;
        b=yVAy4ys/DNWq77zHuMR6aED1nBTWwTcPZtrMry+63a1KQ9QjA7CaTCIWle8fhSUe5s
         c/Ki4ChPOMiPb8C6bxBFxqrN5OP0uV1kiW6PwewoljMNAMD4xLbFRZBY8PVuY1fYgHld
         di78qE9nO1NJaEt0hQodABBbzLz+PCJikKEfSbWekHKgw0BXrDY15I6IfHyuooa+2QjW
         EaEDxihtfWABmh1WJ9x5PKQmfV7HJ0UIXxSWeoxl3KPScQUOG6amYfofnKJMFYvRODeb
         jZRZ6pxE2H7UqvkyxLoTt81jxZghVlY6uuOY5cOXRZrn3sJZrcBWpo1d4sUAbEvWpqaj
         2z5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2+CQEiVu5oW3AFzTTmqeg9IRb6cxxaddpNbQwElxLFM=;
        b=QLj/55kdMi2e9CO5ogCrtVF8jyzOpUuZ+55ApqJTXO4RpdC+D0qPbVxBgbBgVXRhy0
         5V2HwT0+HhZWmyhdTC4rhD8yKQIlJwO2p4Ome8PS78FtG/MaOfNznGjAs8RwnfYIDwvi
         qwe8k9il6TAwnmVbbN3Po9AUhr1duNFYeVOF5tyY79R3zQi/l0kMna+hkJyddRg6o6LU
         e91YNRSAUavudVdrPrOAWMi06LXFrAsszFxdWrH2jBrhur8BuHiuTzoD36bfn6am7UDj
         5v+kR4DoM/HTFbxZhTE+4M9lqmZZtnfZzNLdyphU8coIMiPB48/d4dbBmNP5iQ7C7Upt
         B4rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=D1D7MK9G;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g7si507453pju.3.2021.02.26.01.51.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 01:51:57 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 250B764EF0
	for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 09:51:57 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id 40so171650otu.0
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 01:51:57 -0800 (PST)
X-Received: by 2002:a9d:6b8b:: with SMTP id b11mr1655619otq.210.1614333116293;
 Fri, 26 Feb 2021 01:51:56 -0800 (PST)
MIME-Version: 1.0
References: <20210225112122.2198845-1-arnd@kernel.org> <CA+icZUUDnKBxkfgOVYDdpA29GnLUTT22mqRNyxQeYmay044ejg@mail.gmail.com>
 <CAK8P3a1QmS6g3cHTR93wWPkKs8vaP6RJEb8nZbTMLX+xphLJRw@mail.gmail.com> <CA+icZUW9Hzm_ZZtLiJu8pVeOmYJMOaXkV4Om_u4yZKYRVWNddA@mail.gmail.com>
In-Reply-To: <CA+icZUW9Hzm_ZZtLiJu8pVeOmYJMOaXkV4Om_u4yZKYRVWNddA@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 26 Feb 2021 10:51:40 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0cyAYqdPg_OoaVVY2Gjn=vtwAyfsVPjZ5qYddiOOc-eA@mail.gmail.com>
Message-ID: <CAK8P3a0cyAYqdPg_OoaVVY2Gjn=vtwAyfsVPjZ5qYddiOOc-eA@mail.gmail.com>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Mark Brown <broonie@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Kristina Martsenko <kristina.martsenko@arm.com>, Ionela Voinescu <ionela.voinescu@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Andrew Scull <ascull@google.com>, 
	David Brazdil <dbrazdil@google.com>, Marc Zyngier <maz@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=D1D7MK9G;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Feb 26, 2021 at 10:05 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> On Fri, Feb 26, 2021 at 9:14 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> > > BTW, is CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=y setable for x86 (64bit)?
> > > ( Did not look or check for it. )
> >
> > No, in mainline, HAVE_LD_DEAD_CODE_DATA_ELIMINATION is currently
> > only selected on MIPS and PowerPC. I only sent experimental patches to
> > enable it on arm64 and m68k, but have not tried booting them. If you
> > select the symbol on x86, you should see similar results.
> >
>
> OK, i see:
>
> $ git grep HAVE_LD_DEAD_CODE_DATA_ELIMINATION arch/mips/
> arch/mips/Kconfig:      select HAVE_LD_DEAD_CODE_DATA_ELIMINATION
>
> $ git grep HAVE_LD_DEAD_CODE_DATA_ELIMINATION arch/powerpc/
> arch/powerpc/Kconfig:   select HAVE_LD_DEAD_CODE_DATA_ELIMINATION
>
> So, I need to add this to arch/x86/Kconfig.
>
> You happen to know if changes to arch/x86/kernel/vmlinux.lds.S
> (sections) are needed?

No idea. I'm still debugging a possible regression on arm64, but both
issues I found for arm64 are specific to that architecture and won't
happen on x86. It's likely that something else breaks though.

> Last question:
> The last days I see a lot of fixes touching inlining with LLVM/Clang v13-git.
> What git tag are you using?
> What are your experiences?
> Pending patches (kernel-side)?
>
> I use:
> $ /opt/llvm-toolchain/bin/clang --version
> dileks clang version 13.0.0 (https://github.com/llvm/llvm-project.git
> c465429f286f50e52a8d2b3b39f38344f3381cce)

This is what I have on the build box:
Ubuntu clang version
13.0.0-++20210223104451+ebca13c66504-1~exp1~20210223095200.234

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0cyAYqdPg_OoaVVY2Gjn%3DvtwAyfsVPjZ5qYddiOOc-eA%40mail.gmail.com.
