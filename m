Return-Path: <clang-built-linux+bncBD63HSEZTUIBB5HNT73AKGQEHSWRKRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAE31DECA7
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 17:59:49 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id 194sf8516794pfb.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 08:59:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590163188; cv=pass;
        d=google.com; s=arc-20160816;
        b=EQCNjYhup/ktX2uz7GmA66dz2q4sNOevhTUVrPdooYAMVIUidOxDJrCn/BP8at6sFI
         7L+uTiExsX7Gt2UXBTE0BcTBFlVZoFHv9gB/tSCP4HUtTxeafGH2bC60Y14+DeV+j2FT
         UmW1Mh69XJLEqRKNn/NPkRQtCdH4AvFGb4D+vUTiAu2qZ2aUEqiIj9OHTqoHe+tk3aO2
         /mCpwuv3DF41Fy/t4Pd1VoFjxhImdXpzffG9S7iEmmdpsgh0bM8MY8iUesjBoGI5a/FQ
         WArCSkZ8Ki9C0+ebaqAClKMzKv4BuRoJCuJrE21PBzXuYkdImQzG8GUr08lpPlHiqJ7J
         n2Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=LungljtIBF67KpowskoWjlE4bIxDREjEWg+d86Soaqc=;
        b=lmgree42zqXr8/9TfbkGc96TjCpvPmYQC5aeuq6KD54ywP+RKXJh2Oo40KV13cdx3h
         bFS4cXvgjsMa3669v0wP2uMSu8bqd3Oim97LEkGMdJMQ0Rydmb/L51eMSLS4o0NrWsId
         KHy9fmdmeu/FHxKR4l0Xjxq/2tUD2y1Oxqm2PS73D/OitG2ee8IHoq/uG0Fq7MmM1mns
         VHFee0GiyevPfv4k4r5SHPIlsBV45qs4q3SbwYycMs6E9nCSIT9jiBwgIjOMu1ndd0Vl
         ccMA8obsYSK6cl2jsw/HhiwbbNDuRZZMmF8DFf7DloFyD9Mle+mfwUz0+S+BV8ULexmE
         1MPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="2pSMJ4+/";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LungljtIBF67KpowskoWjlE4bIxDREjEWg+d86Soaqc=;
        b=kp4tjHLkdZfSdhG0ZBJwaaoqt//f3zXzcAuUNPDqEu2+FNpvn/m7JS5TeBwBm9daTj
         0/SCimUtP0pkCVBqA+y833MHigo4HWQ9oiu6uflbyN/ryQq3GW+P34oJxKD0x+bqAwlj
         8GeVuIomBA6kaqYQwYDjJ+J4ocuHWI9e2A7HNJ15Z61xwX8ijYWOZdMFRGZC81J/R2M/
         3R6kYFJZNcZmLlvKRgXBZb+hLHeBM2r0ukRfd0PYkpM4dFVqWRFa5jJFCry4ywjY5sj9
         D8Evyc3RP5PcJAZFRtM8zpGoIeODF/jms4CmK37rH0m2giifMbKzgCZFXoPj3KuOoVuc
         0eQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LungljtIBF67KpowskoWjlE4bIxDREjEWg+d86Soaqc=;
        b=Eol2V2gXcfgIP4iF8g8moDKR3+ld7w84JaP8GQ99rhDKFYXUXSc2hHvgU/iT3ATjQn
         mlVc3E/O9HYHKcFNmYE8iZe2fXmCz2vhonuVaI1Ey+oKnsjyfdqlb+1TgY+3jF5qRKri
         QAllKky717OQADnfP7xAPOL4h+fEKxWSjqsTL9xFqmzYMglbL1CNIcecS4sYzPOhG72Y
         H4uD+ftrkb/zfJ1ZdpTH7TKOCN7oSnoJATeWgQ3qUHJq1IK7u7t16nrHuBR8eMvBAECz
         I5RHETS6AWiZM1iFqYiQ8xmfO0MUVYr+rVDi8hNUxmhANOlZ7wmfa4dNEM0S0rVdkMjZ
         NOwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tBqQV8MHt09n01X0H2b8bGiNpGFn/7rFjXhgrYDWNaMCO5Uxx
	9tAoct9bXIxNnVUQUxFZEdA=
X-Google-Smtp-Source: ABdhPJy1SSxJzMwgugAQYVceLj645NhP7jvp9y0hsjZV30FJEv82Aa9M2ICkVxaVmKDr1ClQWBl7Cw==
X-Received: by 2002:a17:902:a505:: with SMTP id s5mr15373563plq.20.1590163188332;
        Fri, 22 May 2020 08:59:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b219:: with SMTP id x25ls482258pge.8.gmail; Fri, 22 May
 2020 08:59:48 -0700 (PDT)
X-Received: by 2002:a63:3286:: with SMTP id y128mr14456570pgy.323.1590163187912;
        Fri, 22 May 2020 08:59:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590163187; cv=none;
        d=google.com; s=arc-20160816;
        b=L7dR1BjCdUM9Nn7zyeGCzakDw71QjErupWEIJxMH7U0Kx3PAWs/quGIYAbP+7gk5DA
         ifNGx26C7+oq3KszvHXgkXOq++47YBC2o2uu+R3rLXWHwRWtq3agrdXKYSwGIcCwmzvd
         b1bq5JmzDnSyszBPIMbSRwQCbeaEPrSFxE3sBft8Tccz28A7jb766Ovzcxe2OJH3/S6A
         rn9bccyQY56YFHY9KUoZR9u59vCarEO2UseVxIa4dUxWrOZBwy+uveCGmw5tIiiR646y
         DA2qFsCqeMpuo4pEwL5kD0tjR9qd/DIuaeG6T7ein30270gawxHwNs78Z2opkMCngmL+
         hOlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+YPc7Rglkufe62c11JUbtwTq+GE/2QCGZr9JLs8ZwfM=;
        b=QF+8dwQbhTRiZoAwhPJVOeb2QiooYNgG5P/Zd2gVXthsT82US4J8+kV4ew+TghrEna
         XSNctVNixmOzIOR7WI29nF42zd1X+Uuuem15js3yBb1n4SkiKGJqTbbJEtYmeiVsaA1/
         WzUwyPWlt6oU3/w2as+PqhpZIlC0zY7PAhRRJrFIoKoRO+opZyC3VwfuBUB7u/JZLhSj
         jq95JY1LbtJYbPixca4d50+DTdowKyaoiCgW8z+D+R0t04+etyY6NtWKe/RjGDaw5lGx
         Eaeq7TLjSGmNVr11ci3Tbn61GgjdRPQJXfbQSlqzZZjmEOy5OAJ9EI5UI4VELFwJVTxN
         iYPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="2pSMJ4+/";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q12si173339pfu.4.2020.05.22.08.59.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 May 2020 08:59:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 995B320B80
	for <clang-built-linux@googlegroups.com>; Fri, 22 May 2020 15:59:47 +0000 (UTC)
Received: by mail-io1-f54.google.com with SMTP id h10so11822372iob.10
        for <clang-built-linux@googlegroups.com>; Fri, 22 May 2020 08:59:47 -0700 (PDT)
X-Received: by 2002:a05:6638:dc3:: with SMTP id m3mr8765330jaj.98.1590163187037;
 Fri, 22 May 2020 08:59:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200520182010.242489-1-maskray@google.com> <202005211942.6E5061433@keescook>
 <CA+icZUU58cY31rUYveXAwoQGmJjZf8C_zbBxA+8E5aquWQaScg@mail.gmail.com>
 <CAMj1kXFOdTcsqZB0jPMXLRYaQJLsHjTRp+_c0DQqDxLkgb163g@mail.gmail.com> <CA+icZUXmuJ8rka7zvGRV=eb3tdi_ro5R33o=yncGhRJ2DtB5=Q@mail.gmail.com>
In-Reply-To: <CA+icZUXmuJ8rka7zvGRV=eb3tdi_ro5R33o=yncGhRJ2DtB5=Q@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 22 May 2020 17:59:35 +0200
X-Gmail-Original-Message-ID: <CAMj1kXG0qbg-hs1Hj1ER1bMidAMjh1voaOdoCh-zhQ+QgVhy5w@mail.gmail.com>
Message-ID: <CAMj1kXG0qbg-hs1Hj1ER1bMidAMjh1voaOdoCh-zhQ+QgVhy5w@mail.gmail.com>
Subject: Re: [PATCH] x86/boot: Discard .discard.unreachable for arch/x86/boot/compressed/vmlinux
To: sedat.dilek@gmail.com
Cc: Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>, X86 ML <x86@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, linux-efi <linux-efi@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="2pSMJ4+/";       spf=pass
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

On Fri, 22 May 2020 at 17:57, Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, May 22, 2020 at 5:54 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Fri, 22 May 2020 at 08:51, Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Fri, May 22, 2020 at 4:43 AM Kees Cook <keescook@chromium.org> wrote:
> > > >
> > > > On Wed, May 20, 2020 at 11:20:10AM -0700, 'Fangrui Song' via Clang Built Linux wrote:
> > > > > In the latest efi tree, ce5e3f909fc0ed67e58367b9c56a54c20a51080b
> > > > > "efi/printf: Add 64-bit and 8-bit integer support",
> > > > > arch/x86/boot/compressed/vmlinux may have an undesired
> > > > > .discard.unreachable section from drivers/firmware/efi/libstub/vsprintf.stub.o
> > > > >
> > > > > .discard.unreachable contains an R_X86_64_PC32 relocation, which will be
> > > > > warned by LLD: a non-SHF_ALLOC section (.discard.unreachable) is not
> > > > > part of the memory image, thus conceptually the distance between a
> > > > > non-SHF_ALLOC and a SHF_ALLOC is not a constant which can be resolved at
> > > > > link time.
> > > > >
> > > > > % ld.lld -m elf_x86_64 -T arch/x86/boot/compressed/vmlinux.lds ... -o arch/x86/boot/compressed/vmlinux
> > > > > ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocation R_X86_64_PC32 against symbol ''
> > > > >
> > > > > Reuse the DISCARDS macro which includes .discard.* to drop .discard.unreachable
> > > > >
> > > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > > > Signed-off-by: Fangrui Song <maskray@google.com>
> > > >
> > > > Yay macro usage! :)
> > > >
> > > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > >
> > >
> > > Feel free to add...
> > >
> > >    Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # build and boot on
> > > Linux v5.7-rc6+ with Clang and LLD v10.0.1-rc1
> > >
> > > ...together with one more patches in the x86/boot area:
> > >
> > > x86/boot: Correct relocation destination on old linkers
> > >
> > > Next run will include:
> > >
> > > x86/boot: Add .text.startup to setup.ld (v2)
> > >
> > > - Sedat -
> > >
> > > [1] https://github.com/llvm/llvm-project/releases/tag/llvmorg-10.0.1-rc1
> >
> > Thanks, I'll queue this up.
>
> Just FYI:
> It's in tip.git#x86/build already.
>
> - Sedat -
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?h=x86/build&id=d6ee6529436a15a0541aff6e1697989ee7dc2c44

Thanks for the head's up. I'll remove it from my branch again.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXG0qbg-hs1Hj1ER1bMidAMjh1voaOdoCh-zhQ%2BQgVhy5w%40mail.gmail.com.
