Return-Path: <clang-built-linux+bncBCS7XUWOUULBBN57674QKGQEQKJC5LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F9124AD00
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 04:28:09 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id q19sf537744qtp.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 19:28:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597890487; cv=pass;
        d=google.com; s=arc-20160816;
        b=ERkDY5H7VI4Iq9UXPH2lC62hnTinTTPDCHh1obe3s9WSwregNrVMbV8fFAVlh29lF1
         mfnwJBlHJdxy1IQIPM2B9IzuTJbc1Q0+QbctmRbm0bkKX3IOiAMJ/N8mKZEoPIYQjpaE
         OyoFy7GuN4H2SEJtHym+I+QdkoFwykl/0f6tu7MqnFKF+YAmhmmejoKMj59SQXoZW5g1
         kyDm9mUVVJ32WghKxli4Ij/4lmhPsKtbmVKZRLkYLkCh0AUV9TbQ+IPDw6X8kgpFMQLS
         X5T99bCyYd85FkFasOBsp8m4YzGjaPRI0td4nWqUjdPOxqHToa22FUJIoj+CQd6P59YB
         rpvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OU7VVZXA9IRQ9NII/+hznu37PsQ5x6+bYf53a5WbD4w=;
        b=OVNWtkNrlyaM2XAB6mtOyCIeNXRez8jyqvOChPmZXVeVMox0OHsI/l3mX5VBgrmQ7t
         YGYaV1zAnHJW+MdsST+gy2vtJrIDRr67U7yk4B+sxEf70Y8C9HhOnwG77uUW3aH1Y7y0
         HRxFnHuKACZlXhRLPrSCrrIMHunzPzOOMJ+P6uhwVKZiGOk0Yyp6FLiFbFZpKoRDNPcE
         LtMMkRFSEAxanvUZfR9SuFXzuspV98onmNAy8OU34mZREk+a4CpXjIhqSF1VOJH6/WxJ
         obgo9nVIenE9xh+dGhD/m3pNGFFWshtPuCNRKuyu3gkFbT15XCUvMUvmQYKfjhqmHHyl
         KfPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="nMaZM/wn";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=OU7VVZXA9IRQ9NII/+hznu37PsQ5x6+bYf53a5WbD4w=;
        b=GkQEvPwYqSWQo7DPR15y2anI5A+pa+TWiMHc6e2CEkJuo1MWfp7oJ0rKzG39aW0Rae
         g/Tl0NUVtJTCPl4uoc/Ir9grQnhIQRGW+HlU2Vrmqpo+bWLG3hbztRzLG/B7mg8Leu1c
         Rg4CuJlSgShnguveSX7Ks98R3YwTtkerVjG81L8szU7EatQc7WmGK1Z2ZOktTzeQrHDV
         e5DyyY1zqTL/Wqw85zlhwhlBxRrZA6Nl7Vvlt5c1Rhye4xrALHAk5auEFGy84FXkYQtU
         LdN6V1ra6UfNvY3wfgRDdtUP5C4jCF9nE4kCBkfPcauaJ7Rm9i7dOKnZBZoRKCgUjfxW
         j72A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OU7VVZXA9IRQ9NII/+hznu37PsQ5x6+bYf53a5WbD4w=;
        b=oHgW3U9DgNfixgvzSGIqxRVuOOhx2Kwjxuh8OeABmvqYNr1i7Q9lFHyE3mXNGm0x6l
         FTV3OgO8ar8hHqDDgltvMq0XojGUuOPAZH7//lfwmqh9xPP1WSzl4JvqGxImyNJx43Sz
         hnulDZwnad7MpPr9SpBj3H4icczb81w648MDJta/0+Qj8b6O8HpHFn5ANel0tYLI4hRQ
         x60qWq/fRt5Vfag9CIR9hUZzIA7Ut6VXLEaFaIvuD5KwnX98wEAzNpUB3p3wecASY54t
         4QSbXx2kMGqROby8T3RIboMGiFWxMk8fTS1TkH+rpeQflLpEBgPqadKE8Br8yt2J/3lf
         ncJQ==
X-Gm-Message-State: AOAM531Sq6jgrQwe1LWJRmdZfWSjvtxjV3vzjsQglNG3Ef4FtzOZkPY0
	pDnlnkolmuNoTFgPYWiUmPU=
X-Google-Smtp-Source: ABdhPJzIpDVcPK4cqj40095hWfzUcGaFIdjKKqWf6zlpc/+M/PclnuYwwaVBUQP2mWi7qHghYm2E7A==
X-Received: by 2002:a37:6741:: with SMTP id b62mr820408qkc.217.1597890487601;
        Wed, 19 Aug 2020 19:28:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2f66:: with SMTP id l93ls373152qtd.8.gmail; Wed, 19 Aug
 2020 19:28:07 -0700 (PDT)
X-Received: by 2002:ac8:3a65:: with SMTP id w92mr853586qte.184.1597890487158;
        Wed, 19 Aug 2020 19:28:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597890487; cv=none;
        d=google.com; s=arc-20160816;
        b=XgfC7eTW0yIwe9qY5ZhbZ2dG8DcDWhKs76eeT0MUmI1TrT9yg/ctPSckAMyHgdCDbT
         MGnKAm3db2NVr47u9p2upMLoBgTiSyZetY8F9MpxPdard9LPFjWgV6Ua/vWLOR/jOCQQ
         QN8zlT+bRFmX/NgFMw43OBUSWauQGr8M82QbYySQCu96y2yOnYxbXJHyeMyCMNIIJmnx
         c7vR4zCLmEjg+/Dr9+FKILqf2300JJgqLrPC4/Rh1OkIl6oi/se3EMwIfnVeUVRrYqlS
         csnSOTWtHz+rFxURJrm/LjIVzoeLU77/uQlzOckBgcVEtZcYdHbFHC60Jthj+ygDqDO+
         CHfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mkuNUSpCXTz0USifEvkWtGVwwthb17DUhyOsL4nK7yY=;
        b=WzL7o9h5l56q9id6rHwghiQL5+ZY3oYCyGzcut3BswvYKUKjFoHx+A5qC81Ly41hMj
         lRdTajxKvJMc9ofFAX1rzwt6qr/2Xk+Cqc3EkukdbNMBLX87vD/cUKMdSn5svotx/N/i
         gy5mPGyGNvP9bRKqllBtlUAyRmjXCrS2+dAAupx+YBS92AsMOsCx1q4p8UPh6qY8bRYL
         4nXPm8ldGHZ4BLu6v6S/tqRWYlBS2J/lx6Sbnd/ryc0d2Bo4XWTKRGu53acPQqhlGNoq
         5M4WqKioQwWYGlit04kWdCqOoO64xJjrY13ebCy3u9FyqiFVKKLUfywup8o/0ETPHca4
         QHrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="nMaZM/wn";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id e16si41691qto.5.2020.08.19.19.28.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 19:28:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id x25so305915pff.4
        for <clang-built-linux@googlegroups.com>; Wed, 19 Aug 2020 19:28:07 -0700 (PDT)
X-Received: by 2002:aa7:9552:: with SMTP id w18mr644205pfq.150.1597890486025;
 Wed, 19 Aug 2020 19:28:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200819092342.259004-1-jolsa@kernel.org> <254246ed-1b76-c435-a7bd-0783a29094d9@fb.com>
 <20200819173618.GH177896@krava> <CAKwvOdnfy4ASdeVqPjMtALXOXgMKdEB8U0UzWDPBKVqdhcPaFg@mail.gmail.com>
 <2e35cf9e-d815-5cd7-9106-7947e5b9fe3f@fb.com>
In-Reply-To: <2e35cf9e-d815-5cd7-9106-7947e5b9fe3f@fb.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Wed, 19 Aug 2020 19:27:54 -0700
Message-ID: <CAFP8O3+mqgQr_zVS9pMXSpFsCm0yp5y5Vgx1jmDc+wi-8-HOVQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next] tools/resolve_btfids: Fix sections with wrong alignment
To: Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Mark Wielaard <mjw@redhat.com>, Nick Clifton <nickc@redhat.com>, 
	Jesper Dangaard Brouer <brouer@redhat.com>, Network Development <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Andrii Nakryiko <andriin@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="nMaZM/wn";       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

> > >    section(36) .comment, size 44, link 0, flags 30, type=3D1
> > >    section(37) .debug_aranges, size 45684, link 0, flags 800, type=3D=
1
> > >     - fixing wrong alignment sh_addralign 16, expected 8
> > >    section(38) .debug_info, size 129104957, link 0, flags 800, type=
=3D1
> > >     - fixing wrong alignment sh_addralign 1, expected 8
> > >    section(39) .debug_abbrev, size 1152583, link 0, flags 800, type=
=3D1
> > >     - fixing wrong alignment sh_addralign 1, expected 8
> > >    section(40) .debug_line, size 7374522, link 0, flags 800, type=3D1
> > >     - fixing wrong alignment sh_addralign 1, expected 8
> > >    section(41) .debug_frame, size 702463, link 0, flags 800, type=3D1
> > >    section(42) .debug_str, size 1017571, link 0, flags 830, type=3D1
> > >     - fixing wrong alignment sh_addralign 1, expected 8
> > >    section(43) .debug_loc, size 3019453, link 0, flags 800, type=3D1
> > >     - fixing wrong alignment sh_addralign 1, expected 8
> > >    section(44) .debug_ranges, size 1744583, link 0, flags 800, type=
=3D1
> > >     - fixing wrong alignment sh_addralign 16, expected 8
> > >    section(45) .symtab, size 2955888, link 46, flags 0, type=3D2
> > >    section(46) .strtab, size 2613072, link 0, flags 0, type=3D3

I think this is resolve_btfids's bug. GNU ld and LLD are innocent.
These .debug_* sections work fine if their sh_addralign is 1.
When the section flag SHF_COMPRESSED is set, the meaningful alignment
is Elf64_Chdr::ch_addralign, after the header is uncompressed.

On Wed, Aug 19, 2020 at 2:30 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 8/19/20 11:16 AM, Nick Desaulniers wrote:
> > On Wed, Aug 19, 2020 at 10:36 AM Jiri Olsa <jolsa@redhat.com> wrote:
> >>
> >> On Wed, Aug 19, 2020 at 08:31:51AM -0700, Yonghong Song wrote:
> >>>
> >>>
> >>> On 8/19/20 2:23 AM, Jiri Olsa wrote:
> >>>> The data of compressed section should be aligned to 4
> >>>> (for 32bit) or 8 (for 64 bit) bytes.
> >>>>
> >>>> The binutils ld sets sh_addralign to 1, which makes libelf
> >>>> fail with misaligned section error during the update as
> >>>> reported by Jesper:
> >>>>
> >>>>      FAILED elf_update(WRITE): invalid section alignment
> >>>>
> >>>> While waiting for ld fix, we can fix compressed sections
> >>>> sh_addralign value manually.
> >
> > Is there a bug filed against GNU ld? Link?
> >
> >>>>
> >>>> Adding warning in -vv mode when the fix is triggered:
> >>>>
> >>>>     $ ./tools/bpf/resolve_btfids/resolve_btfids -vv vmlinux
> >>>>     ...
> >>>>     section(36) .comment, size 44, link 0, flags 30, type=3D1
> >>>>     section(37) .debug_aranges, size 45684, link 0, flags 800, type=
=3D1
> >>>>      - fixing wrong alignment sh_addralign 16, expected 8
> >>>>     section(38) .debug_info, size 129104957, link 0, flags 800, type=
=3D1
> >>>>      - fixing wrong alignment sh_addralign 1, expected 8
> >>>>     section(39) .debug_abbrev, size 1152583, link 0, flags 800, type=
=3D1
> >>>>      - fixing wrong alignment sh_addralign 1, expected 8
> >>>>     section(40) .debug_line, size 7374522, link 0, flags 800, type=
=3D1
> >>>>      - fixing wrong alignment sh_addralign 1, expected 8
> >>>>     section(41) .debug_frame, size 702463, link 0, flags 800, type=
=3D1
> >>>>     section(42) .debug_str, size 1017571, link 0, flags 830, type=3D=
1
> >>>>      - fixing wrong alignment sh_addralign 1, expected 8
> >>>>     section(43) .debug_loc, size 3019453, link 0, flags 800, type=3D=
1
> >>>>      - fixing wrong alignment sh_addralign 1, expected 8
> >>>>     section(44) .debug_ranges, size 1744583, link 0, flags 800, type=
=3D1
> >>>>      - fixing wrong alignment sh_addralign 16, expected 8
> >>>>     section(45) .symtab, size 2955888, link 46, flags 0, type=3D2
> >>>>     section(46) .strtab, size 2613072, link 0, flags 0, type=3D3
> >>>>     ...
> >>>>     update ok for vmlinux
> >>>>
> >>>> Another workaround is to disable compressed debug info data
> >>>> CONFIG_DEBUG_INFO_COMPRESSED kernel option.
> >>>
> >>> So CONFIG_DEBUG_INFO_COMPRESSED is required to reproduce the bug, rig=
ht?
> >>
> >> correct
> >>
> >>>
> >>> I turned on CONFIG_DEBUG_INFO_COMPRESSED in my config and got a bunch=
 of
> >>> build failures.
> >>>
> >>> ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
> >>> decompress status for section .debug_info
> >>> ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
> >>> decompress status for section .debug_info
> >>> ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
> >>> decompress status for section .debug_info
> >>> ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
> >>> decompress status for section .debug_info
> >>> drivers/crypto/virtio/virtio_crypto_algs.o: file not recognized: File=
 format
> >>> not recognized
> >>>
> >>> ld: net/llc/llc_core.o: unable to initialize decompress status for se=
ction
> >>> .debug_info
> >>> ld: net/llc/llc_core.o: unable to initialize decompress status for se=
ction
> >>> .debug_info
> >>> ld: net/llc/llc_core.o: unable to initialize decompress status for se=
ction
> >>> .debug_info
> >>> ld: net/llc/llc_core.o: unable to initialize decompress status for se=
ction
> >>> .debug_info
> >>> net/llc/llc_core.o: file not recognized: File format not recognized
> >>>
> >>> ...
> >>>
> >>> The 'ld' in my system:
> >>>
> >>> $ ld -V
> >>> GNU ld version 2.30-74.el8
> >>>    Supported emulations:
> >>>     elf_x86_64
> >>>     elf32_x86_64
> >>>     elf_i386
> >>>     elf_iamcu
> >>>     i386linux
> >>>     elf_l1om
> >>>     elf_k1om
> >>>     i386pep
> >>>     i386pe
> >
> > According to Documentation/process/changes.rst, the minimum supported
> > version of GNU binutils for the kernels is 2.23.  Can you upgrade to
> > that and confirm that you still observe the issue?  I don't want to
> > spend time chasing bugs in old, unsupported versions of GNU binutils,
> > especially as Jiri notes, 2.26 is required for
> > CONFIG_DEBUG_INFO_COMPRESSED.  We can always strengthen the Kconfig
> > check for it.  Otherwise, I'm not familiar with the observed error
> > message.
>
> I built a "ld" with latest binutils-gdb repo and I can reproduced
> the issue. Indeed applying the patch here fixed the issue. So
> I think there is no need to investigate since upstream exhibits
> the exact issue described here.
>
> >
> >>> $
> >>>
> >>> Do you know what is the issue here?
> >>
> >> mine's: GNU ld version 2.32-31.fc31
> >>
> >> there's version info in commit:
> >>    10e68b02c861 Makefile: support compressed debug info
> >>
> >>    Compress the debug information using zlib.  Requires GCC 5.0+ or Cl=
ang
> >>    5.0+, binutils 2.26+, and zlib.
> >>
> >> cc-ing Nick Desaulniers, author of that patch.. any idea about the err=
or above?
> >>
> >> thanks,
> >> jirka
> >>
> >
> >



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3%2BmqgQr_zVS9pMXSpFsCm0yp5y5Vgx1jmDc%2Bwi-8-HOVQ%4=
0mail.gmail.com.
