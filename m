Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBSPKZHZQKGQEKVY7J4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B8218A313
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 20:23:54 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id j68sf7466374vkj.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 12:23:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584559433; cv=pass;
        d=google.com; s=arc-20160816;
        b=rX9K7ITRUE44RJGyoADLLxU35e2KMo0VGQa4akewO5Y4tvkh7OG/JT+D2dOMMKDU9Y
         Z5N7wnzHn7s90ehIhrTjhW8Xy+AV5d5u0L3zMi8CguYqF7UcpsTc1DiVR3hz/3+mYqN3
         kXNhdDsW7Oaf5UDlN+83/ADX+TwGcMjoK6JwHR/J3pcpUyGSbVSBQVX/LrbwM36uWDKA
         2kaOXKNu8A1nIBR3/f6/cQIbQaeo7r8tuVKt+i8t4i6HZVikl02tuWDmOO1rwYlowCEW
         nIF0RGDU/Du2wVdr21yLxA1AAFrTsB0Te+dYdapX/YK15r8XnQbqcXJPvqmOQWJF8VuQ
         Kwdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=JKNEwuqFTc/XtBA/HTX1e6SqRaxOkjFMXBRFVSL5tGY=;
        b=EcVxQvGuwAL9alJrBwolMjcGVVGbBuJuFplwT+hc7wJcrQeG+YyEaF9+CC27wLo/Nq
         LbZk/xraRXPWODKHbMHd+X7ZRJTL/lweTsSB+Jbx2B/FaV97iQ8LBUrDBHJwR4GCnXgK
         ZtED9noEoCA8QhaWWRU7DI5zHb9D4mUvfQCEm98GsxhUWENrIfmfcLIzvAHbXYLiYe99
         l4SlrXLYT9WaYpBI8zJKT2iBPT3shPgqpjWX94CwTXeToQFJSf3Zapc/AXftzW+r6rdm
         EwYKEWapjBql4ZD/VECGp19fGJOQzt9KTq3hiDUY4BanhQ53egwAE+/bbSVwhMWIe0EX
         majQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qG2t+6jg;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JKNEwuqFTc/XtBA/HTX1e6SqRaxOkjFMXBRFVSL5tGY=;
        b=cqSf2fhCVTLYzx01bk2aCnvLQrKHNu47YFGXt+wSyL1MOZpySTu1Dzq4hQLBQjjYi3
         1VMh7WIgYT+ira8ih5g3LhMVBeOoPS5b2ZfFXMSnsFjC5jbw4Z4C0wBTlhu/vykGIwfJ
         Rk93pRG16kKI3CGrqKPgrOwGHwqknfVS0O+8c2lTD+7IXIOjSemIOyqKFO5VJO4reK5s
         HQNSI/7voFDs4APT6MIWAnMThV4AP4zMCSlkiobQLtRWP2k4ekIBYogYRpHWjJjCNQlq
         E7TPOT9WG3MBLrRN2eBbFcaGH2RapC0uRitIU5oOePlv31/JgB4WoISKqcWOXDZZy1y9
         HQPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JKNEwuqFTc/XtBA/HTX1e6SqRaxOkjFMXBRFVSL5tGY=;
        b=g8E6ai2mkgdUEsql4COQsDhf/QqqAz3ApqKeOBS7romvMX+8pHxwFFoQRPe+KLVqfm
         xFWoIaPDDFmAurbG+G8yUg3oCc15kVJMHnxtT+i9VVAy3uy9MLWJqJQDPnrNXJJfBgRW
         2bDjKr2WMSGEFE14dF/rN1DjBiSXYgQqDMgYD70q6fsE9AZ2QgD7w23R9rjISCTR09aY
         sBHqy7UaR4D6z3htaYyWjTCFkGUkN2geth1BnIRd7BxJnibBOLwQ9aA9XGhBM5ee5bmZ
         TrKNVp6zaSKYtg9WfK6/1siumCJ4FvKVoCVfHcy3lcHkbgqkjRQImd2zynjojLN8/IOf
         AODA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JKNEwuqFTc/XtBA/HTX1e6SqRaxOkjFMXBRFVSL5tGY=;
        b=heoeNZ9TJvcAxhnMOv7LdxtPi8LabYnc3+yC8nHI75PJUzs1ju7lBYciRgI+U4CAbw
         hQ7f+xa5sw7fFScxfOwbGSSmXhabl/vkMTymcqITjjMtb5L4qCNLm8xHW2sQ3Gd9+Jg+
         ckvjb4DrRDd8VoNyVYu9jFRCZGdceJVzklpW/UbK97RXuanldvK5FTJE484T9NGzjaGc
         ZcnBA+1KtyiV3z+D8KsJO7XVZmYT7RmSRjkAB8kw3n5q5S4Ql1Af327+qUE58iBzpxcn
         hgWxSRfwJRW2J0+fRm9j1WPXCz5r9hVWcKpSNrBcQEjjd3ByPG3xLztfYJEZLnf38XX8
         XKNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3d0iveOPZbgaeR9MfIPfKAtinz0KgPdbDxr6GEBxMBbTfOzCZN
	kx7qia2HYScGtsoZ/jSA8RQ=
X-Google-Smtp-Source: ADFU+vv6YiIfVH1iibU/DKx5C4sPDgZ5tnFbd9w4AW48EtrqK+mRlgUbHCq1kNASAEEiYXWBHXJj1w==
X-Received: by 2002:a1f:60d5:: with SMTP id u204mr4449922vkb.55.1584559433725;
        Wed, 18 Mar 2020 12:23:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:6184:: with SMTP id v126ls1462084vkb.0.gmail; Wed, 18
 Mar 2020 12:23:53 -0700 (PDT)
X-Received: by 2002:a1f:2543:: with SMTP id l64mr4591475vkl.69.1584559433308;
        Wed, 18 Mar 2020 12:23:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584559433; cv=none;
        d=google.com; s=arc-20160816;
        b=hSODwnb0RO0UUUb880QI6OyYAHesNbqcTs7OIh1Q2CpctvBkBrroq590pJmhP4Qeda
         IqtqAHGpkZvvjMA2EXwxjBzZ9i9McdvvRvov3iZ5v0ex/9Kz/lBGbBUD8zDNWHb9u8fR
         wVR/1R3Fn7VvpTuMYECgUiedYBztaR1pHAMv9PitMYEcFj0i/hUsMc0rlKTtR2pTT0Is
         0IPuVsEGnuZHMETTjkv/Ei1ZuXSGAtf/obIzrtPNST//P0pWAA9V6X7i/cVWGnpdUNU1
         7Vb6fDzf/Tq70Wm8z58mOte1h6D3kMyDWf6g6oFlgR6BSZgTxdJZuL89PpEip0vDS+hV
         nvpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/XUFJ47TgEfd7gXFPZdqLeMwDzm7Hbmi456QyDExcmE=;
        b=zYrntA6yy6UzY2/iVlPhL1C02n0CEzHHG0MXm1gH9UBySJUvnndFri6HMdEt4el47b
         krKzjQDpe6c2KSsuOTqqHvjfobmqSfKPpWURlQyVDRBCKaF5K6Qe+d/uLHXVELcPx9LB
         viyLi+Ox+q8DEbfBtKAFd6AGS+IReo6rH+9PrpQjnwXp2zdkScNS7Uqt4YrqXDJont+1
         YiUvdkLMkpUgE6aEI5Bwgrv0K3UsH8z6/lFg7c4KV1hoZogCtt6b4QeQmFSVIbGR2wgO
         jzHa3yOcbrYWSzS7MY/Rqq8FN5S6Y+QHB7nStGdexcvE4NBx9dPRrDFsw/XXJ+/MEXtW
         H81Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qG2t+6jg;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id z26si328803vsp.1.2020.03.18.12.23.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 12:23:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id m33so21805269qtb.3
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 12:23:53 -0700 (PDT)
X-Received: by 2002:ac8:4e14:: with SMTP id c20mr6086074qtw.141.1584559432693;
 Wed, 18 Mar 2020 12:23:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200317033701.w7jwos7mvfnde2t2@google.com> <CAEf4BzYyimAo2_513kW6hrDWwmzSDhNjTYksjy01ugKKTPt+qA@mail.gmail.com>
 <20200317052120.diawg3a75kxl5hkn@google.com> <CAEf4BzYepRs4uB9vd1SCFY81H5S1kbvw2n9bKNeh-ORK_kutSg@mail.gmail.com>
 <20200317054359.snyyojyf6gjxufij@google.com> <20200317162405.GB2459609@mini-arch.hsd1.ca.comcast.net>
 <20200317205832.lna5phig2ed3bf2n@google.com> <CAEf4BzY8uzcpS8t0JW70V-DrrZ4MbeXOyEtCrpTtQyHW+uQcRg@mail.gmail.com>
 <20200318175918.ulpzopsao4sm6aei@google.com> <CAEf4BzYBgG4dyhL7Bj21CU4HO9qpm_N7SZkQekTTK6pJBA1ZJA@mail.gmail.com>
 <20200318185323.nkn76zamx5zamtbs@google.com>
In-Reply-To: <20200318185323.nkn76zamx5zamtbs@google.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 18 Mar 2020 12:23:41 -0700
Message-ID: <CAEf4BzYa1mavW10iusAf+W-OZ9C5WNUUNcHPoHz+vuuuiu=XOA@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4] bpf: Support llvm-objcopy and llvm-objdump
 for vmlinux BTF
To: Fangrui Song <maskray@google.com>
Cc: bpf <bpf@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, clang-built-linux@googlegroups.com, 
	Stanislav Fomichev <sdf@google.com>, "David S. Miller" <davem@davemloft.net>, 
	Alexei Starovoitov <ast@kernel.org>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qG2t+6jg;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Mar 18, 2020 at 11:53 AM Fangrui Song <maskray@google.com> wrote:
>
> On 2020-03-18, Andrii Nakryiko wrote:
> >On Wed, Mar 18, 2020 at 10:59 AM Fangrui Song <maskray@google.com> wrote:
> >>
> >>
> >> On 2020-03-17, Andrii Nakryiko wrote:
> >> >On Tue, Mar 17, 2020 at 1:58 PM Fangrui Song <maskray@google.com> wrote:
> >> >>
> >> >>
> >> >> On 2020-03-17, Stanislav Fomichev wrote:
> >> >> >On 03/16, Fangrui Song wrote:
> >> >> >> On 2020-03-16, Andrii Nakryiko wrote:
> >> >> >> > On Mon, Mar 16, 2020 at 10:21 PM Fangrui Song <maskray@google.com> wrote:
> >> >> >> > >
> >> >> >> > >
> >> >> >> > > On 2020-03-16, Andrii Nakryiko wrote:
> >> >> >> > > >On Mon, Mar 16, 2020 at 8:37 PM Fangrui Song <maskray@google.com> wrote:
> >> >> >> > > >>
> >> >> >> > > >> On 2020-03-16, Andrii Nakryiko wrote:
> >> >> >> > > >> >On Mon, Mar 16, 2020 at 6:17 PM Fangrui Song <maskray@google.com> wrote:
> >> >> >> > > >> >>

[...]

> >> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> >> >> index dd484e92752e..c0d2ecf1bff7 100755
> >> >> --- a/scripts/link-vmlinux.sh
> >> >> +++ b/scripts/link-vmlinux.sh
> >> >> @@ -122,16 +122,12 @@ gen_btf()
> >> >>         vmlinux_link ${1}
> >> >>         LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> >> >>
> >> >> -       # dump .BTF section into raw binary file to link with final vmlinux
> >> >> -       bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
> >> >> -               cut -d, -f1 | cut -d' ' -f2)
> >> >> -       bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
> >> >> -               awk '{print $4}')
> >> >> -       ${OBJCOPY} --change-section-address .BTF=0 \
> >> >> -               --set-section-flags .BTF=alloc -O binary \
> >> >> -               --only-section=.BTF ${1} .btf.vmlinux.bin
> >> >> -       ${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
> >> >> -               --rename-section .data=.BTF .btf.vmlinux.bin ${2}
> >> >> +       # Extract .BTF, add SHF_ALLOC, rename to BTF so that we can reference
> >> >> +       # it via linker synthesized __start_BTF and __stop_BTF. Change e_type
> >> >> +       # to ET_REL so that it can be used to link final vmlinux.
> >> >> +       ${OBJCOPY} --only-section=.BTF --set-section-flags .BTF=alloc,readonly \
> >> >> +               --rename-section .BTF=BTF ${1} ${2} 2>/dev/null && \
> >> >
> >> >You can't just rename .BTF into BTF. ".BTF" is part of BTF
> >> >specification, tools like bpftool rely on that specific name. Libbpf
> >> >relies on this name as well. It cannot be changed. Please stop making
> >> >arbitrary changes and breaking stuff, please.
> >>
> >> I can't find anything which really assumes ".BTF" under tools/bpf/bpftool
> >
> >It's in libbpf, which bpftool uses to load and work with BTF. See
> >tools/lib/bpf/btf.{c,h}. And at this point there are other tools and
> >apps that rely on .BTF section, so there is absolutely no way we are
> >going to rename this, I'm sorry.
>
> Stanislav informed me of the same. Thanks for the reminder.

Good, glad we figured that out.

>
> >>
> >> % grep -r '\.BTF'
> >> Documentation/bpftool-btf.rst:            .BTF section with well-defined BTF binary format data,
> >>
> >> >
> >> >> +               printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16 status=none
> >> >
> >> >I wonder if there is any less hacky and more obvious way to achieve this?..
> >>
> >> No. As a maintainer of lld/ELF, I abandoned https://reviews.llvm.org/D76174 .
> >> Also as a maintainer of LLVM binary utilities, I have to complain the whole
> >> scheme is really hacky and did not get enough scrutiny when they were merged.
> >>
> >> A previous comment said pahole somehow relied on llvm-objcopy so LLVM_OBJCOPY
> >> is used, while llvm-objcopy/llvm-objdump are not really supported...  Note, on
> >
> >pahole relies on llvm-objcopy internally to add/replace .BTF section.
> >Instead of doubting everything I'm saying, you could just have grepped
> >for 'llvm-objcopy' in pahole sources. It can be done differently, I'm
> >sure, but we'll need to support old versions of pahole anyways, so
> >LLVM_OBJCOPY=${OBJCOPY} parts stays, however confusing it might look.
> >
> >> March 16, I just pushed https://reviews.llvm.org/D76046 to make llvm-objdump
> >> print bfdnames to some part of the existing hacks happy...
> >>
> >> I am trying my best to make this stuff better.
> >> BTF, when merged into LLVM in December 2018, was not really the best example demonstrating how a subproject should be merged...
> >> OK, I'll stop complaining here.
> >
> >We should make sure that we are not making it worse first, don't you
> >agree? I think it's more important, because there are many happy users
> >already and breaking them is not an option. It's v5 of your patch and
> >every single revision is broken, so I'm not sure you are the one to
> >complain here. The least you can do to test this is to build kernel
> >with BTF and run selftests/bpf, not just throw your patch out in hopes
> >that others will point out all the issues.
>
> I am late to the party. I am sorry that it has been v5 of my patch.
> There are plenty of my own reasons: I am a kernel newbie.  So I
> apologize for that. Though, it should still be brought up that the
> various previous fixes touching this area suggest that the whole scheme
> makes any adjustment really really difficult.

It certainly is tricky, no doubt about that. But coming in changing
things drastically without understanding all the consequences and no
proper testing (and building kernel is not proper testing), is not a
great approach. And in addition to that complaining how everything is
terrible, even though it's been working fine for quite some time for a
lot of use cases (even if it doesn't work for llvm-objcopy) :)

Anyways, let's stick to more productive approach. There are really two
hard requirements, as far as I'm concerned: .BTF section name and that
section being allocatable, so that kernel can use that data in
runtime. Everything else is pretty flexible.

>
> There are many subtle things affecting the best strategy here:
>
> * Before GNU ld 2.23 (more precisely, commit d9476c5a34043d72dd855cb03d124d4052b190ce),
>    __start_foo has the st_shndx field of SHN_ABS. arch/x86/tools/relocs.c
>    can be paranoid and reject it.
> * Before GNU objcopy 2.25, --dump-section was not available.
> * llvm-objdump<11 does not print bfdnames. I fixed it just a few days ago.
> * GNU objcopy<2.34 required useless -B for -I binary: https://sourceware.org/bugzilla/show_bug.cgi?id=24968
> * GNU ld makes use of an error-prone feature: linkable ET_EXEC. I rejected it as an lld feature a few days ago.
> * We need PROVIDE in lld to avoid unnecessary symbols, or we can use #ifdef CONFIG_DEBUG_INFO_BTF
> * ...
>
> An experienced kernel developer who does not play enoguh linker scripts
> and objcopy commands may not do better than I do.

I agree completely. My concern was with attitude of making changes and
just building kernel to verify everything still works. BTF is a
critical piece in many applications, tools and various kernel
features, so running selftests/bpf (test_progs and test_verifier would
be the minimum) is mandatory to ensure stuff still works.

>
>
> >>
> >> commit cb0cc635c7a9fa8a3a0f75d4d896721819c63add "powerpc: Include .BTF section"
> >> places .BTF somewhere in the writable section area, so if you insist on ".BTF",
> >> I'll make a similar change and add some stuff to arch/x86/kernel/vmlinux.lds.S
> >>
> >> >Also, this script has `set -e` at the top, so you don't have to chain
> >> >all command with &&, you put this on separate line with the same
> >> >effect, but it will look less confusing.
> >>
> >> Not using section "BTF" has the downside that we have to add
> >>
> >> .BTF : {
> >>    PROVIDE(__start_BTF = .);
> >>    *(.BTF)
> >>    PROVIDE(__stop_BTF = .);
> >> }
> >>
> >> to every arch/*/kernel/vmlinux.lds.S which can use BTF.
> >
> >It doesn't look all that terrible, so why not, I guess? But just
> >curious, why this is not required for "BTF", but required for ".BTF"?
> >Not very familiar with linker scripts setup in kernel.
>
> If every extension needing a section adds an output section description
> to vmlinux.lds.S, the linker script will be pretty much unmanageable.
>
> Note also that arch/powerpc/kernel/vmlinux.lds.S places .BTF in an
> undesired area (writable). We will fix it later.
>
> If a section name is a valid C identifier (not precisely, for example,
> Unicode is not really supported) will have magic __start_foo __stop_foo
> defined.

Yeah, so that's what I was curious about. But anyways, it has to be
.BTF, so maybe adding special instructions for .BTF isn't such a big
deal. Not sure what others think.

>
> _binary_* was never used before BTF added them.
>

__binary_* symbols are the ones produced by objcopy automatically, so
that's what was used initially. If we need to change that, it's not a
problem, because it's internal to kernel itself.

> >>
> >> >>   }
> >> >>
> >> >>   # Create ${2} .o file with all symbols from the ${1} object file
> >> >> --
> >> >> 2.25.1.481.gfbce0eb801-goog
> >> >>
>
> I am preparing a v6 and I need to take all the stuff into account.

Sure, just make sure to run selftest, thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYa1mavW10iusAf%2BW-OZ9C5WNUUNcHPoHz%2Bvuuuiu%3DXOA%40mail.gmail.com.
