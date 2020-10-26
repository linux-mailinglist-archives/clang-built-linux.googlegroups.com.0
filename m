Return-Path: <clang-built-linux+bncBD63HSEZTUIBBM4T3T6AKGQECI7HIGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9FF299406
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 18:39:00 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id f9sf2709668qkg.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 10:39:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603733939; cv=pass;
        d=google.com; s=arc-20160816;
        b=qb2o3GQc4aMHVswwffPekOnSgagHI9WkP7hUW4opvfNqBnXhyib6763AhAz9Cx9uzr
         7gOHCX3beLupYCewRbklKesJmpz2TkrRaFnGGKgCjFOxYWihytWv08MVYmO7zQGAzupm
         sHOWQIFDpVRbS0Zr4GkHqEwSrpOquKe06PISy3wvXPqpjkDy3xXb9HsNIM9xBLGbtIIU
         voIq5ZunaSHWVKXuAozb/v/218oNVcgKqFtoroQKrNOgxhP9LgH7Lmwz5bQ8DNYexZ3Y
         F6RWCpJmz+rZjzbx5j8ePw6AQUkzFtbLWFxQVJZFAWug+a439CXNjrjgYynKQkqWzx6m
         K/9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=VJrWfBix6fV2UINDNkZfQDF2U2iszW+pj+4vrSS+OI8=;
        b=Q29s3YbjKLzl84RzpIp+U/Bq1ilqMW+4/t4ZBJvFzdOe5M7nT5hVxnAfEwUH68q3Ve
         aye9amK6gm8apSSR/+0HdtBzac5Rzd9F2aHfdjWtVzoWir9ZwKWHLh2l5RJI8Ipka4Aq
         4VufzColk0CdnFqlEJNGp097+WrwEJcjiemvbEir5XVxGDI23bmh7EYa3COgg+ILKmjO
         5UFQOgCvJKZCqVWD7rzZqTNCPzcm+DgeoinIvCuZWZkW8y0XLje4kNRoMtJLIKnwK3va
         0oZRiO8k2QWTBj2rOpEYQ034OuLoTG9M818osORZR62kiMEaH6xfwP2SC/JoTbYTgusB
         AecA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ki915xzF;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VJrWfBix6fV2UINDNkZfQDF2U2iszW+pj+4vrSS+OI8=;
        b=NzKcxKMAPrnEMJ41XtxtbeQFeXpOMus9H7pdnI/plMD3iIehNXsNlGU0KbvSujyxZ2
         irTr1V+gM/lQjT8TYYs0Fql3a1DsnnpZY2VJm7bw5KLxPoRfpobU0eBO31FRnv8eLHyz
         iKs5jHSjDEf6rdBhwd5zmBfTQbvHACW5mBmMTaAEIDZNRdtoAEootxJarGoYW0+wGlJp
         z21xoqT83edh2hQlhBYE/lFnzZZTYJVvpVXVlmhpJIuuyqNSzt9Avawzzr7f3comLz6E
         TVFFb1RpjMOkMu+HCNO2z13LhGl7Zj78+i/3xS6VNTF8QiYZMeWxoQ9SkBtf0QEgYDyQ
         hy/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VJrWfBix6fV2UINDNkZfQDF2U2iszW+pj+4vrSS+OI8=;
        b=MAdiJTHm65MNQ/AyJ/+tpLMbJSzdtjpBEWRPMefvNED0/7QdZ/jhmSwgIPsZraw2d0
         egnbFcigX9XvHfL5B6GHbHK96HdPaMDg+vPVQ+4lLTzUiNNo4DcX7VYo9Mu1lxE8yT+b
         ckzVn17wNx5dHm8AfWZyl06NBeZ2tPZw6QvQgIkZCM4PH4bZE7ATwsoOR9vbv15y9E3d
         Hyyl5T4RQ3iEBMEudRq4OIfhegE7TPJ8CA1leGEB1aFHvOuTnLPJaXDAE/eH970ToaBA
         vTn3h/kmOkwUuTkimI3RCg8Wp6SfSppH+i88z5IaXvG6mzFWjQmX8Z3JCuXa2Ywmykfa
         zt9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OiWGsUFeTBhfJcdFUH6N5QRl6+tHcVwnhmEP9o7zE/7/O2YiW
	T1rQpcivf8afM1kG1ClrSQM=
X-Google-Smtp-Source: ABdhPJxfErw5vfTs5hAosa+x+izGEMYg+Tw6term+R5wBDQrr9dJB7MBpirfRakv6nswfeWMBt3luw==
X-Received: by 2002:a37:6151:: with SMTP id v78mr19111899qkb.177.1603733939396;
        Mon, 26 Oct 2020 10:38:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5845:: with SMTP id h5ls3817043qth.0.gmail; Mon, 26 Oct
 2020 10:38:58 -0700 (PDT)
X-Received: by 2002:ac8:744a:: with SMTP id h10mr18292548qtr.388.1603733938867;
        Mon, 26 Oct 2020 10:38:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603733938; cv=none;
        d=google.com; s=arc-20160816;
        b=Lr1O3JjjWqyT4sLZCnonSoImrxNwHnGS0sPyIJ/Noho5WCaqqXvCjq2piKi2uXqNab
         TkbkWJfcbE2hJmS71u0R2whmPAUfhDhoMeMx1NKXvbzoM0w3b8Y+7viZ/vnsniOIwUAp
         bZJ7FSJMYat+DqtYhx0F2HG2GF4fo7+E9AXfZW4SSQDdyP3Vidt1ypKm8/T+3ChHfoh9
         ckvJhjOzzgky2eUnGIbsMb5qNXwiA3Se1/5nW9RWHaypLWoD/mrYekGz/G7zcTlCmm23
         7zuxCXWCvyoetSuleS3jQbkckCfD9sMXF6l4CV22S4V9No9nyTqj9or2U9tleAvXgeTx
         rr9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3Lau4JP94GTEBhDar3G9maH10AJVPlUYR1+GooIwz4Q=;
        b=PDLByBiuPU9Qbpsm5UOdrM/wcOu9OITOJZQuZTgSSYsQRIjLU2zkcJebfekRmUcr3x
         fjv9hYwJkdvJFq3RESEnZuY8JGdyVc6/20n5NQJaka3PIrI38MjS8VryqFzL4lXTs40i
         qfk9w8R98GnenktAFdnoDm7KTp1IM052gywwDjtFOJqCR3P7WpD/NxbbAzw3s4yI4or6
         2RMck2bWUi63iI/j60hzU6cDkzD8zth6gYMxT4bUL4z36dyt0fClOoX4owD3G+zIkA0t
         a1fbzFk0Z0XyrcLvRtUzkmQ88cbFoU1HiRKTb19/FcY0ulTmkPc6M2KgtSlyofGfNfqg
         FMTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ki915xzF;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p51si761532qtc.4.2020.10.26.10.38.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 10:38:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C18DA22264
	for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 17:38:57 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id s21so11327756oij.0
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 10:38:57 -0700 (PDT)
X-Received: by 2002:aca:d64f:: with SMTP id n76mr15186195oig.174.1603733937001;
 Mon, 26 Oct 2020 10:38:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com> <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
In-Reply-To: <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 26 Oct 2020 18:38:46 +0100
X-Gmail-Original-Message-ID: <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
Message-ID: <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>, 
	Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "the arch/x86 maintainers" <x86@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Ki915xzF;       spf=pass
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

On Mon, 26 Oct 2020 at 17:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> On Mon, Oct 26, 2020 at 2:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Mon, Oct 26, 2020 at 1:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > On Fri, Aug 21, 2020 at 9:56 PM Kees Cook <keescook@chromium.org> wrote:
> > > > In preparation for warning on orphan sections, discard
> > > > unwanted non-zero-sized generated sections, and enforce other
> > > > expected-to-be-zero-sized sections (since discarding them might hide
> > > > problems with them suddenly gaining unexpected entries).
> > > >
> > > > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > >
> > > This is now commit be2881824ae9eb92 ("arm64/build: Assert for unwanted
> > > sections") in v5.10-rc1, and is causing the following error with
> > > renesas_defconfig[1]:
> > >
> > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> > >
> > > I cannot reproduce this with the standard arm64 defconfig.
> > >
> > > I bisected the error to the aforementioned commit, but understand this
> > > is not the real reason.  If I revert this commit, I still get:
> > >
> > >     aarch64-linux-gnu-ld: warning: orphan section `.got.plt' from
> > > `arch/arm64/kernel/head.o' being placed in section `.got.plt'
> > >     aarch64-linux-gnu-ld: warning: orphan section `.plt' from
> > > `arch/arm64/kernel/head.o' being placed in section `.plt'
> > >     aarch64-linux-gnu-ld: warning: orphan section `.data.rel.ro' from
> > > `arch/arm64/kernel/head.o' being placed in section `.data.rel.ro'
> > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > >
> > > I.e. including the ".eh_frame" warning. I have tried bisecting that
> > > warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
> > > commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
> > > placement"), which is another red herring.
> >
> > kernel/bpf/core.o is the only file containing an eh_frame section,
> > causing the warning.
> > If I compile core.c with "-g" added, like arm64 defconfig does, the
> > eh_frame section is no longer emitted.
> >
> > Hence setting CONFIG_DEBUG_INFO=y, cfr. arm64 defconfig, the warning
> > is gone, but I'm back to the the "Unexpected GOT/PLT entries" below...
> >
> > > Note that even on plain be2881824ae9eb92, I get:
> > >
> > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> > >
> > > The parent commit obviously doesn't show that (but probably still has
> > > the problem).
>
> Reverting both
> b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section placement")
> be2881824ae9eb92 ("arm64/build: Assert for unwanted sections")
> seems to solve my problems, without any ill effects?
>

I cannot reproduce the issue here with my distro GCC+binutils (Debian 8.3.0)

The presence of .data.rel.ro and .got.plt sections suggests that the
toolchain is using -fpie and/or -z relro to build shared objects
rather than a fully linked bare metal binary.

Which toolchain are you using? Does adding -fno-pie to the compiler
command line and/or adding -z norelro to the linker command line make
any difference?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-%3D1S57tV3__N9JQOcDEw%40mail.gmail.com.
