Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJHP3SDQMGQEZ4A2VWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8773D0367
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 22:52:52 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id k3-20020a5d52430000b0290138092aea94sf10788385wrc.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 13:52:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626814372; cv=pass;
        d=google.com; s=arc-20160816;
        b=pkCBKUdiA2025azsWNuPhGjtchEzUJJ5Mv4bYkW/DgngDsPxLTvmyY1+FyGRmm6XUD
         041Zr4sES16yu5ydslDTNmfMx/mWwXpIUTLUrJQ5x+LtMWBhT9Kp8QnHVh88gBuod3kx
         YJOFTLAHpr2q15DfzzqtCrGEaOqqcQItq33XPTgYRgEBNrzMQz/fmv97iDZ7LgtpDwdQ
         GRmtkMYIzNRSGiaqtaPZWz0iuZ38Diz+Ix6fvZr8qN59z7jyCi/LLpEYsK953LkpT+PY
         uG9KqUYxURcweVmnyH/RfyStTzkwMzJrDEekWf+bUjqnCic0waWH/4eY+MEGk1eHFU1Z
         9Gqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Gmn9lxhtfPbgH1wmKujxHu3mXidFhZ5Pis4e6F9nMvA=;
        b=MCWfbrJpSnqAQbvticJPnAj1FICJlV/N2i81yV/7ATLQ4KaXdNgDN9Z3lpTVS+bXE9
         g34SIRz8v29/XoRGo/v3mHUrP78lzTQby+nbW0Ede8w70q7vLcwylQaYqPl6+9e7RuUn
         gPUKM8jkPrQzZOqpGm/LhKANQzlzEYGYMeNjFG9vW8jmuIMCWzHnveSlxCmHxVmUoSiH
         ashmONZgnQA8uSY6Pmk0CqLSFHnR6mdtA6GyH8XSD2M9GRIodibcNYNAkm96h0NARVId
         OtUxM1OwOvHnby4EfYaL39AZUaf1tgQGLhTyrnx9e3T3XrxT3S+oRl/4bdL5uvMqyC7I
         cO9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RZrjkrsp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gmn9lxhtfPbgH1wmKujxHu3mXidFhZ5Pis4e6F9nMvA=;
        b=nss5RNiWbRq8e7dhMwVYdM9uhvYNEVkwLl+2/P8vudLcMIII848tL5XcLFhqRsXA3P
         tRcr8KxDjPTrOFYUWjd5VOP5eNLiyAkZDgtvJITzpObUPdUgtcpbFBaTZWkABcaKrotb
         FpOzmSd9pz2GxICVpLxICwmwh/l6BUIW70Ss+rLVkeWzwbI6fWbnksn25FIsOetbyGUv
         4CySt1Hvvgb/G1JYqgA/vxsSNWSTCv6oM8OB9QENcThX0AlZKeIUDlAMe7DqziN3p4Ct
         pT0QITzTuJLlp+3aIiMr0yfM0ytUcO3rWepQVmgklh26Y0S0mNIWVlSZDqgM4FVJdv9r
         6Gnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gmn9lxhtfPbgH1wmKujxHu3mXidFhZ5Pis4e6F9nMvA=;
        b=m/dUtZEWGVfCBduINKU3xpGmgKAiN6b3mJdo5yR52F0nMaWqH48AaoXvG+J1fetfW8
         oDbW6xLArW0ELbAn2cbZI5Al/b+41LcRxvno0eTuAqh40shQF+PwC8jy5rz9rbxHMuLm
         sZFbY/H/gTi0Yw6KsAUPC26yvxKm3n9skLEtxi7JzBhDPRSeK/sXOKFh3B82GcusufhL
         zlFFoBblklfnTpK/L9H/qbVkEn081ZeLihaxX1WojE9c70/YP//sPzxJRJx+Lf2kVjkb
         7hSXNucDQjdQvLnidd6Sgq09wLHssiNmx6kIKGD+3TBr/TAY77NG8DH53SrpII/Z1o0g
         pOrg==
X-Gm-Message-State: AOAM533ohEinVdMs6DDxeSvKM0vypM5DTljfobmQnrc8F5PMZU02CX5n
	IfDNho9cHK9vlqLlNUN9BX4=
X-Google-Smtp-Source: ABdhPJx5RRoCbuh0tFGu8W2ZI5aL3p0Wue972giG0lSv4ChGaEpehGDwKKm87MtIiErLD2iBTQWiTg==
X-Received: by 2002:a05:600c:430c:: with SMTP id p12mr418620wme.16.1626814372188;
        Tue, 20 Jul 2021 13:52:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls124358wrr.3.gmail; Tue, 20 Jul
 2021 13:52:51 -0700 (PDT)
X-Received: by 2002:a05:6000:12c2:: with SMTP id l2mr5774165wrx.144.1626814371297;
        Tue, 20 Jul 2021 13:52:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626814371; cv=none;
        d=google.com; s=arc-20160816;
        b=xQW7mdF2BKjYdimc3A0IenrEzkLirJJ73DpNQ8T5p+LPWbrhhoXm/pf0OATg/ZE7tD
         WSK0hUVniYRRJMDCxoq6pEtO2hPHubSNm0sNo6qcPEUjQHuouRha5IhQqNuJZSnncqDb
         cwKG8iYQsTDZyOnccx5uyj28ycqZNMZfx60HBWkHSszzFgN1OG83tUkwFZs1X4VwvhF4
         oUeBt3Gh66pZQVz9kBobeQ6HSPAMs4c8Exi0GKY7MfKHEE/B8xo/lnHeaO6WZ65Adfhx
         zGuAA1dQk4icyib9VRK0LLZHNNafP5owYAiOh54EZ9HCcFA3Dk9Bsk8HwQMy6jVdWyxZ
         LMow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SbK6o7K/EkXUAGGxjZp7cQsvPy5H+b1sgULKd5tuIl8=;
        b=uWPvXkdVTkE7SAFLMDcLeR0co7h9/Sa4YFpo/Xsuak1Ciih2ljdUhjoONM4MkOodQL
         nHpBkQIQSgRZVprf/tXljbITAsoo+Qad6nmgBlgAvVmjjFehl3b8Evfwqf08qar7CGM7
         mftgajzxgLErp/p4qdQuIHmAmoptbdk4I35kw1xiADcQp9PoO9zaMLsM2JpI26Lwy7iw
         teLhw59z1PRCx831YRdA4+Ypy9h+oK56bS8VsxM9jOb7k9fTNn4NZYo0qeYgYBhdOQ+V
         utl5nUYIq6YMAYnmzgsQVJQXbXo5CwFoyJB2ripZEuTUqBQDuTrydNDi/k0axN42T2Bw
         Efnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RZrjkrsp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id q63si497933wme.1.2021.07.20.13.52.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 13:52:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Received: by mail-lj1-x231.google.com with SMTP id r16so125347ljk.9
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 13:52:51 -0700 (PDT)
X-Received: by 2002:a2e:a911:: with SMTP id j17mr28057523ljq.341.1626814370202;
 Tue, 20 Jul 2021 13:52:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
In-Reply-To: <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Jul 2021 13:52:39 -0700
Message-ID: <CAKwvOdn065OJpow=7VF=ujagFoyN4sYMKAA_E2_39ZC7uThchg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RZrjkrsp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231
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

On Tue, Jul 20, 2021 at 10:43 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > LLVM=1 is a convenient switch to change all the
> > defaults, but yet you can flip each tool individually.
>
> Actually, I'd argue that "LLVM=1" is *not* a convenient switch.

Compared to the old way of CC=clang LD=ld.lld OBJCOPY=.... it certainly is.

> Neither are the individual other command line settings.

Agreed, but we needed flexibility until we could get all of the
command line tools working for each architecture.  They're still
useful when there's a regression and we need to fall back.  So I
wouldn't be in favor of removing them (not that that's been proposed).

> When clang was the odd man out, and special, it all made sense.
> Changing the path to CC was similar to changing the path to AWK. And
> that's obviously why we have what we have.
>
> But clang has become a primary compiler for some kernel communities,
> and I think it might be time to just re-visit that entirely.

:^)

> In particular, I think we should just make it a Kconfig option. I hate
> the command flag stuff so much, that my clang tree literally has this
> patch in it:
>
>     -CC = $(CROSS_COMPILE)gcc
>     +CC = $(CROSS_COMPILE)clang
>
> so that I can just do the same "make -j128" in both my gcc tree and my
> clang tree.

So you haven't been using LLD... :( (imagine using more than one
thread to link, and being faster than ld.gold)  If anything you should
be hard coding LLVM=1 in that tree.  Also, please be careful you don't
accidentally commit that! 0:-)

> But each build tree already has its own .config file, so it would be a
> lot more convenient if that was how the compiler was chosen, and then
> "make oldconfig" would just DTRT.
>
> We do most of the other heavy lifting in this area in Kconfig anyway,
> why not add that compiler choice?
>
> Obviously it would be gated by the tests to see which compilers are
> _installed_ (and that they are valid versions), so that it doesn't ask
> stupid things ("do you want gcc or clang" when only one of them is
> installed and/or viable).
>
> Hmm? So then any "LLVM=1" thing would be about the "make config"
> stage, not the actual build stage.
>
> (It has annoyed me for years that if you want to cross-compile, you
> first have to do "make ARCH=xyz config" and then remember to do "make
> ARCH=xyz" for the build too, but I cross-compile so seldom that I've
> never really cared).
>
> Let the flame wars^H^Hpolite discussions ensue..

I agree with you.  Overall the command line invocation of make when
cross compiling, or when using LLVM is too long.  You even call out
LLVM=1 and ARCH separately.  Each one of these had good reasons to
exist for years.

But I disagree that all needs to be sorted out together, or right now.
And I'd much rather tackle them separately, one by one, than try to
completely rewrite how we cross compile the kernel today.

Right now, we have:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1 -j72

This series is concerned with just CROSS_COMPILE (and just for LLVM=1).
Next I plan to default on LLVM_IAS=1 for all architectures we support,
minus ppc and s390 where we still have some assembler bugs.
Your/Arnd's ideas about LLVM=1 or not via Kconfig, or pre-Kconfig is a
good idea for eliminating LLVM=1.
Then that just leaves ARCH.
Arnd's idea about helping you install a toolchain from kernel.org is
one I support, but orthogonal to the above somewhat.  Do you allow
someone to have a config that denotes intent to build with clang then
prompt if they don't have clang installed to download it? Or do you
prevent someone from selecting building with clang because it's not in
the $PATH?
Your/Arnd's idea about detecting which toolchains are installed is one
I support, but orthogonal to the above somewhat.  (For that, I'm
curious for our build servers if that means having to put tools in
certain locations; I prefer we reference $PATH when possible. Or if
.configs can no longer be shared if tools are in different locations.
But perhaps that's a non-issue).  I'm also curious how many stat calls
we'll need to test/probe/find these, and how we prioritize which tools
are selected when there's more than one version installed.

I encourage us to make steps in the right direction; but I think this
series is ready to go for at least one of the command line variables.
I don't think we need to wait for some probing machinery to eliminate
CROSS_COMPILE when LLVM=1; and if we ever get such machinery we can
revisit whether that helps this case at all.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn065OJpow%3D7VF%3DujagFoyN4sYMKAA_E2_39ZC7uThchg%40mail.gmail.com.
