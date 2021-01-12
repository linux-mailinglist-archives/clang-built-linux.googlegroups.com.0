Return-Path: <clang-built-linux+bncBD66FMGZA4IO5XXT74CRUBCHKV556@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id C921A2F244A
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 01:38:06 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id a19sf265236lfd.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 16:38:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610411886; cv=pass;
        d=google.com; s=arc-20160816;
        b=J2dViSNTT6yWehnEzOI4boVjVkKKT7dUQIYCvMxlGycLrM2KL30FxKqSEUVOQnx+vI
         nlcsSkQdYGitwfbhyE0YEyRBquD9jy2UNJJUHgOlQjbpxu4v/k7YWfoffRZ5wbq84dif
         b8oZHJuak1/p0Fcl/tFRgnvruDTZa0ArGMPYnbPK4zOnyt0yCge5cowHvMa5iH5tmm6B
         5+Q29xHgDq+tTSc3luTXQWEzRTMgQy7TbElI18B3BFcO5PQJx0IIGEtROF0Vs9kzKTJJ
         MGVh/PjugGzzzveuLVSsU01AmYg4Fj09ufZA7/frGhMAeDR9uG+kxF04R7OJU35NrV/e
         QYQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LMO9JncodartI7BLTitEUI4l82tfVE+TmYMFVC8oRTw=;
        b=rog1hvhSBRfFmCXLmzgh1KeVRnH3WlkxNZUdjuVdmZxsC7xwnqgO0x9R+iSkV/FGdY
         LqZ7BcKQhxxKQp6uUlJuWOfFhyXHRR+jBxEDZydNSFYILEeIY6j/fG7VGiga6egAeBTP
         wJFpipiljMjCpi7OcL6iAPxPcbbipeVsCd9dysSXVCaF4HXe9tarlF9m3Xo/UdKHaWuX
         108IYc7gpIDZIkLC/IfrRpbCQQNtRopS4zak0QL6VrTKkmBTIAaFDONMmTTNUwM6h6ii
         ij5j6DPHfcPPBHlnTdtvA2PwqWHxfSHsedt3XhtULRzMpXleusf0qE5inW0SXT381tL3
         9nIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Zj+qOLhH;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LMO9JncodartI7BLTitEUI4l82tfVE+TmYMFVC8oRTw=;
        b=OGJc1V+2rGdQlAt4oamAR+VDN9fcvA62FqVIVRNax7MVPzgq3ZobXjT0QzO/u7KAul
         rZBcP/11TI8RgHUrbq6l1C1COodguoXfVoMA5OGj9xJ5Dz9QaNEACXNBea/j35X8QdOp
         Y5ybTH6BwnK/34zyoV/vYvwX7RPiaAEKnuj72EY3Lpowwy3SNp4UsmXcWa9bYw6kuZTv
         WvRxkkuatypgLqEgX9VaQvmbYF+L2PylZPZSd+TXXfgw0bDjvYMLyF0T74i35ZyPeAkt
         HYLOFzHJRAuwctf+4LJBTN8rhDs4WVVLG6bbBlzKKhvejvdpi0X+BkwYyJqj9u8ldUWj
         B+iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LMO9JncodartI7BLTitEUI4l82tfVE+TmYMFVC8oRTw=;
        b=kM349auVMHkehTRErzB7nOiwqgPVMvAAkGfShuqbxXLKHVI6qBIFZp/7ZazD3aNBxp
         DEm9QUn8n6IQA4Q6Ak5fG0+rtm5Im/V5vqX3EhIhCjZIWzunHDh0ZvZePJvCOk0D16JH
         6692mLTESOwMKHMtSAtjs9Ioe592apOIyMfUbYlf4KAkocN9qZzNLky+XQGx3I1IMbR1
         vLUnHeWEroeLkXmLH0UP4gGRC/zFXYJIKz9Q9I77RDIPKgRjJxUJ3B1o+POxDXMAeQSB
         ei+5iRUhbu+SQOcoJAugfY7luFJ2UUATdtnXGaTHpaL7CBv8We8Ql19usReu+OrYrsa5
         mbTw==
X-Gm-Message-State: AOAM53106qwr3rYpn/xMtU/NFcPulJvOv689ILmHDJQLJOQ4J8H6TDmX
	znCBW9Ex1SpNUs79dWlQa2s=
X-Google-Smtp-Source: ABdhPJyuGzN1fpwN6NJmyw2xcig02TryuhjDEX/iBjG8R7prH7Ju7QXjs9VLqFEqURY0HkBc6XJeHw==
X-Received: by 2002:a19:8357:: with SMTP id f84mr883774lfd.567.1610411886406;
        Mon, 11 Jan 2021 16:38:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:980e:: with SMTP id a14ls233487ljj.7.gmail; Mon, 11 Jan
 2021 16:38:05 -0800 (PST)
X-Received: by 2002:a2e:858a:: with SMTP id b10mr855642lji.227.1610411885438;
        Mon, 11 Jan 2021 16:38:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610411885; cv=none;
        d=google.com; s=arc-20160816;
        b=teOkDUbGmpeyRRHWOh2FVPsgF1ZMA+R7DcTE3hz2iSCGfiei+U+hyj4GWq5wTZ0Oz2
         wVqAQASDoHDk+TH3qYv2XjyXCd3GtopEuzAK2Edrdpa6Fph6OEue++ZviHOzH30dxlqD
         /QfbAn+TMrT3LtLHalB6u7MBK0/sudUyB0WisueB3pAazD36DdREP3WaFo2yxJ+RiP53
         GxZ2fs4LUCGilJKqbwMe1LFId8DlmHqP4Jnq1WwnlUmYD5O5SfvEq9ItndJkMjBUHj0l
         KeJzFm0XoLGs4P4In2VxiQPgt7KYZ/6L/u862AUywUc/XwIqTvCtvXT6lPYgwpLK+Qus
         lEaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AAGK7QJnpAigixBsDwJOzFarQpa+uBn1LCtFQ6nqZOg=;
        b=fZkKtwUMSdxKj7n3wgdfzALyu2k1HJjdw8bUA5GRDyGlVFICfNb/H/GiYZi/2cZroX
         7zgEjykpGFSev1aynsOjxFF6Q14Cw+LPZCM1pdhdyF8kojF52J/MFPVIbk/cHdOuoHC+
         vpcVyA0PCZ09kSaKV3gQfc0x0s3aXT5pNvlAWP+1SbPTLHv6FMv9jKMPl8wD7Q9Po0OZ
         66YL35D0I7GDYtfO+eHMEENqE4vJ6SdbXUn3UA0YVcxJ2JgM2XeSh3GG/Z7iwfaQH/fR
         pTdfl2CQ1jARGL2338Xep7BxEHwu4zZtdrR8fyFPF8nr7q0YKTVta/RDI+2vLl6kfBZN
         GaZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Zj+qOLhH;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id 207si34456lfm.0.2021.01.11.16.38.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 16:38:05 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Received: by mail-ej1-x630.google.com with SMTP id d17so993647ejy.9
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 16:38:05 -0800 (PST)
X-Received: by 2002:a17:906:1194:: with SMTP id n20mr1301510eja.269.1610411884658;
 Mon, 11 Jan 2021 16:38:04 -0800 (PST)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210111201224.l5r2zxuyd7ayszke@google.com>
 <CAGG=3QWo5_wwTMHtif4BzFssByaW1ScvpaEH1p1nZ6ymVggLjA@mail.gmail.com> <20210111203120.daeef4yuwgmk5em4@google.com>
In-Reply-To: <20210111203120.daeef4yuwgmk5em4@google.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 Jan 2021 16:37:53 -0800
Message-ID: <CAGG=3QVs8dUaqcnuHYiaqccMhp7OmkxewZ_PAhAr96todNJhfQ@mail.gmail.com>
Subject: Re: [PATCH] pgo: add clang's Profile Guided Optimization infrastructure
To: Fangrui Song <maskray@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Zj+qOLhH;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Mon, Jan 11, 2021 at 12:31 PM Fangrui Song <maskray@google.com> wrote:
> On 2021-01-11, Bill Wendling wrote:
> >On Mon, Jan 11, 2021 at 12:12 PM Fangrui Song <maskray@google.com> wrote:
> >>
> >> On 2021-01-11, 'Bill Wendling' via Clang Built Linux wrote:
> >> >From: Sami Tolvanen <samitolvanen@google.com>
> >> >
> >> >Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> >> >profile, the kernel is instrumented with PGO counters, a representative
> >> >workload is run, and the raw profile data is collected from
> >> >/sys/kernel/debug/pgo/profraw.
> >> >
> >> >The raw profile data must be processed by clang's "llvm-profdata" tool before
> >> >it can be used during recompilation:
> >> >
> >> >  $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> >> >  $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> >> >
> >> >Multiple raw profiles may be merged during this step.
> >> >
> >> >The data can be used either by the compiler if LTO isn't enabled:
> >> >
> >> >    ... -fprofile-use=vmlinux.profdata ...
> >> >
> >> >or by LLD if LTO is enabled:
> >> >
> >> >    ... -lto-cs-profile-file=vmlinux.profdata ...
> >>
> >> This LLD option does not exist.
> >> LLD does have some `--lto-*` options but the `-lto-*` form is not supported
> >> (it clashes with -l) https://reviews.llvm.org/D79371
> >>
> >That's strange. I've been using that option for years now. :-) Is this
> >a recent change?
>
> The more frequently used options (specifyed by the clang driver) are
> -plugin-opt=... (options implemented by LLVMgold.so).
> `-lto-*` is rare.
>
> >> (There is an earlier -fprofile-instr-generate which does
> >> instrumentation in Clang, but the option does not have broad usage.
> >> It is used more for code coverage, not for optimization.
> >> Noticeably, it does not even implement the Kirchhoff's current law
> >> optimization)
> >>
> >Right. I've been told outside of this email that -fprofile-generate is
> >the prefered flag to use.
> >
> >> -fprofile-use= is used by both regular PGO and context-sensitive PGO (CSPGO).
> >>
> >> clang -flto=thin -fprofile-use= passes -plugin-opt=cs-profile-path= to the linker.
> >> For regular PGO, this option is effectively a no-op (confirmed with CSPGO main developer).
> >>
> >> So I think the "or by LLD if LTO is enabled:" part should be removed.
> >
> >But what if you specify the linking step explicitly? Linux doesn't
> >call "clang" when linking, but "ld.lld".
>
> Regular PGO+LTO does not need -plugin-opt=cs-profile-path=
> CSPGO+LTO needs it.
> Because -fprofile-use= may be used by both, Clang driver adds it.
> CSPGO is relevant in this this patch, so the linker option does not need to be mentioned.

I'm still a bit confused. Are you saying that when clang uses
`-flto=thin -fprofile-use=foo` that the profile file "foo" is embedded
into the bitcode file so that when the linker's run it'll be used?

This is the workflow:

clang ... -fprofile-use=vmlinux.profdata ... -c -o foo.o foo.c
clang ... -fprofile-use=vmlinux.profdata ... -c -o bar.o bar.c
ld.lld ... <output file> foo.o bar.o

Are you saying that we don't need to have
"-plugin-opt=cs-profile-path=vmlinux.profdata" on the "ld.lld ..."
line?

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVs8dUaqcnuHYiaqccMhp7OmkxewZ_PAhAr96todNJhfQ%40mail.gmail.com.
