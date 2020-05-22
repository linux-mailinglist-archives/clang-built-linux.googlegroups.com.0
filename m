Return-Path: <clang-built-linux+bncBD63HSEZTUIBBQXLT73AKGQEREMNPYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C64AB1DEC82
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 17:54:43 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id s206sf4391144vke.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 08:54:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590162882; cv=pass;
        d=google.com; s=arc-20160816;
        b=UdIi9SwKIegOPuEzQ7V5+I4W1Izq35E1S7tl/2fJBO0jv7TshoX4V12vtQA0uJ6BDW
         iQIQ/QK4IOdW3i6nJinblLvJokjZ6X4HyGNKE3YWhUL+evxR9WdrZ84eF1kUeYtiuQAk
         sBOE0bNBdcGGNS1BSskzGZeLIPiom/Nzl+lO3g1V6edVJVVYF2qDwDWxczBQhjsYmr5p
         Cv899EzDeQZGFlLvJjyxaJC8KNcB8G+moUjgzSXKTMT/lu5Wj++XPSNoZpkJw43bfr1b
         j/QNlK2c8xdUbwyuTNYIDhVp62Ot1Zp5boGjG5maFrT7m2kWjeNk4s8fjotylNKUC6YH
         m2uA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=+sM4XQEpqMu7EaLNCJvvcRoNJ3WNVt+ic6XCZVtWBiY=;
        b=qFtDIrFElU2LMHhsncXEVcoyf7Ru5aL6t5egLKB2w/iNqFeDE8FXcLeU+Jqq++ZRnF
         0H3Aqftgn9kb0S41QFEEBoW1AwekP4Ug+c9lFc7aEu0+c0anF5OxUOO5OSB6Vobmp5SH
         3JolEsWioq698AKjlyKgTsJl0kuu3IainHXU8q1dcsF/Nahc58wY8MgYKVKvG2ssAzuw
         bLBIWHoWlODxbjC9ryUI5HjygQqyY92NP1gkldZbceMjne98CRFuRt1Qh5BPRBBVpFjy
         Dw/pTPcUhqYBa8LxHd23JqLmLHhBP56sodFPt9a5MFaZXLD1kM0DXQAe/WbQpTf6I6EY
         kWuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=u4VVMAV0;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+sM4XQEpqMu7EaLNCJvvcRoNJ3WNVt+ic6XCZVtWBiY=;
        b=qlU7tAFYrsN+T+5mCmN2tkRygAkhf7lniUMfwM+55GSDFDSwWVnBodDAMaoREibx9S
         nvDxgFO5el9/bB54s8B5AU/9sbe4DK1XVQGKYn50C6o/QYlg9Vx+CVt4C2rfYuFThzDi
         obvr1DXqGKDqrCcWuWcJk9r7+LC44U7Y31142vvm+RA0nwE69oKCXxJRmvoaJ6FVT07P
         osBO+kcJyjsNpI76l81TwCiTtDI7RhcniiNxTW8kh0gZNhKU0yp15GHkB9irlQPcmKUV
         gK1EQrwo9Nw0eMePMIW7z28I6QvwZ4EXZDsM1QnTu7K4gniPJH17ID/RRdQGbQJlNwGD
         hhyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+sM4XQEpqMu7EaLNCJvvcRoNJ3WNVt+ic6XCZVtWBiY=;
        b=kIub8521yoRkWOaGhljQl6Il6d64aJDrvHITZGL/6RjD/AiBsQ07fL2XN5aCNQnqq2
         UEpwKfCTXsgvYLQOgAS/FXlBn3z/99xu//NeUUV9p33HacEjnviEmJuCTOeq3RF8l1rY
         CNnSuhLega7IizyrCY43ZBUuCOLvVEs6ihODnG2h6paJnTZFSY9rSqfm9yNITmCfm1at
         +AEFoAm4tu2iUB8PpuDRhpAgveHc6bGWGRbTLbl/yVKHLr+16nmlKxJoTaZgvrEYMeim
         GxttWgPuwnESgRarl30twHgKO5ZqZ5cK8B8QgRThE13DDYELZt5ZnQ0WN0WExPQ3/3Tb
         ZkSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SgJLEaoMBwBM3PAQ0i5T1R19w7K8WKScJYftVso3mwL18ltAW
	lx9+9BP8pCeonxRZEC2klT8=
X-Google-Smtp-Source: ABdhPJwubVKu0Vj6S1wfUEX0SybnIvsiw12t/ZCFD79d+TAmZepS4lVSmhCkqcT0UsfjhymCioUwoA==
X-Received: by 2002:ab0:4754:: with SMTP id i20mr9372531uac.142.1590162882545;
        Fri, 22 May 2020 08:54:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:32c3:: with SMTP id y186ls84794vky.0.gmail; Fri, 22 May
 2020 08:54:42 -0700 (PDT)
X-Received: by 2002:a1f:2144:: with SMTP id h65mr10182515vkh.50.1590162882164;
        Fri, 22 May 2020 08:54:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590162882; cv=none;
        d=google.com; s=arc-20160816;
        b=Jg/GgELq0fVULnl/k35ot7JSw3nxnHn3htl5MnvLFRqKFJwEZrCH6hR3t5fCO8oiup
         z3IbZzxDrXzGbozauRtKojH8VejhlORrXIG627m0W6QuSDNuTwAJiZVGDZ7R3gK3DmH9
         VVPABURr8HJTkyJ6rzQBpo7DnyOBr1JSYQ0WDWcDq68MtkHHRRfUwohSVoaPFJJR2o++
         7Kp0A3zS4RFnOcn8jC0oS/XipvruGpEONGa3dzUhIBE1IjpCwNi9WMIs0WnJiUw7Hhof
         IC1FVUq9Z2u36iAslfzw7Shi6rbAgGfqOD6MVrJDKIutCKMXUNFp69a7d17abR1/Iauy
         TVPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nd3LMMxdHU+iRvRepeOXSIaDYXmXoTqFHm8g40tTqq0=;
        b=YcsjSqOHqy82QyTG3mhuj7ztiQXTg2lMU7Xuz0PkPzL/hJ2fkV9GfCor+KfuRtFJO5
         6t9VJyf5re3Ij+j9IaW3gRcu6DDpspky+1EodRC77oKSHApnroS6trq5/a1oAwtCP92s
         diPdRfbd3l7N9qwvE29POUQe+74SM4iyqCdr/AbL8OkvvE9K48cCQsuAHabpRQESariJ
         LvxtqtSqrAAd6fD03yrSYd/YEL6d5em42XoNVC8dCNobJccRpWlHPvqOn7auFPvh+tNa
         bNdr8VZ+UAFXICco5aDP1TXJNXCmHITvBnX8pycgicVQrVzakuZku0OpX5F/ds1GKPlL
         H4YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=u4VVMAV0;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a126si452432vsd.2.2020.05.22.08.54.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 May 2020 08:54:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E20A920814
	for <clang-built-linux@googlegroups.com>; Fri, 22 May 2020 15:54:40 +0000 (UTC)
Received: by mail-il1-f174.google.com with SMTP id c20so11150166ilk.6
        for <clang-built-linux@googlegroups.com>; Fri, 22 May 2020 08:54:40 -0700 (PDT)
X-Received: by 2002:a92:5ec1:: with SMTP id f62mr11330415ilg.80.1590162880279;
 Fri, 22 May 2020 08:54:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200520182010.242489-1-maskray@google.com> <202005211942.6E5061433@keescook>
 <CA+icZUU58cY31rUYveXAwoQGmJjZf8C_zbBxA+8E5aquWQaScg@mail.gmail.com>
In-Reply-To: <CA+icZUU58cY31rUYveXAwoQGmJjZf8C_zbBxA+8E5aquWQaScg@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 22 May 2020 17:54:29 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFOdTcsqZB0jPMXLRYaQJLsHjTRp+_c0DQqDxLkgb163g@mail.gmail.com>
Message-ID: <CAMj1kXFOdTcsqZB0jPMXLRYaQJLsHjTRp+_c0DQqDxLkgb163g@mail.gmail.com>
Subject: Re: [PATCH] x86/boot: Discard .discard.unreachable for arch/x86/boot/compressed/vmlinux
To: sedat.dilek@gmail.com
Cc: Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>, X86 ML <x86@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, linux-efi <linux-efi@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=u4VVMAV0;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, 22 May 2020 at 08:51, Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, May 22, 2020 at 4:43 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Wed, May 20, 2020 at 11:20:10AM -0700, 'Fangrui Song' via Clang Built Linux wrote:
> > > In the latest efi tree, ce5e3f909fc0ed67e58367b9c56a54c20a51080b
> > > "efi/printf: Add 64-bit and 8-bit integer support",
> > > arch/x86/boot/compressed/vmlinux may have an undesired
> > > .discard.unreachable section from drivers/firmware/efi/libstub/vsprintf.stub.o
> > >
> > > .discard.unreachable contains an R_X86_64_PC32 relocation, which will be
> > > warned by LLD: a non-SHF_ALLOC section (.discard.unreachable) is not
> > > part of the memory image, thus conceptually the distance between a
> > > non-SHF_ALLOC and a SHF_ALLOC is not a constant which can be resolved at
> > > link time.
> > >
> > > % ld.lld -m elf_x86_64 -T arch/x86/boot/compressed/vmlinux.lds ... -o arch/x86/boot/compressed/vmlinux
> > > ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocation R_X86_64_PC32 against symbol ''
> > >
> > > Reuse the DISCARDS macro which includes .discard.* to drop .discard.unreachable
> > >
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > > Signed-off-by: Fangrui Song <maskray@google.com>
> >
> > Yay macro usage! :)
> >
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> >
>
> Feel free to add...
>
>    Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # build and boot on
> Linux v5.7-rc6+ with Clang and LLD v10.0.1-rc1
>
> ...together with one more patches in the x86/boot area:
>
> x86/boot: Correct relocation destination on old linkers
>
> Next run will include:
>
> x86/boot: Add .text.startup to setup.ld (v2)
>
> - Sedat -
>
> [1] https://github.com/llvm/llvm-project/releases/tag/llvmorg-10.0.1-rc1

Thanks, I'll queue this up.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFOdTcsqZB0jPMXLRYaQJLsHjTRp%2B_c0DQqDxLkgb163g%40mail.gmail.com.
