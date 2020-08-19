Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7OY6X4QKGQEXHZELLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 970CA24A5BE
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 20:16:30 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id y22sf11834528oog.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 11:16:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597860989; cv=pass;
        d=google.com; s=arc-20160816;
        b=zy7ucorH/YEHgZ0M+qH6P3XuYxduGdtxb/P8uFH+UJ9cb7YU52m6lqVPcDN2I4OQoA
         0hlfKZRPYY1+1VXian8NLcuXI2VSomYeLR2DnN0cF31hFwBpDTs3YXZ5hYPfa+cl+w8S
         NFXu8SKb+p9QwKXvydw/OcNWwn1s3gdb/p/f1PdKKcDzEsWGNrtVs9Nl9PRGYMvdXHaD
         e/GUwWejZLvIn4CbCsVg6Wpu3VDuuM7z18iN4JHESl2lrlAe2R6/ObXnfHsoVoxE5/L0
         i1E4xSDdZ9y4GG8ju5kuZc9TdSY54Q3osaZoZKHv9QiE+azaeF/29XVmmaLXuf3QfZrR
         Xk7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=g632eNPNxNambEz0LJOAznvS22z1TokN3r/n9iGTLec=;
        b=IZGHWfyMXD12AIRQ0bvvt+pDMaURARwgBZlMC52DoJYmoY4RNZEI43z3LPjZJubLGV
         WPSLP9ACqRgYjDtt0yfXv6TxiEUUs3jyJk1qMn9J2Zs0VYGCC+lGfLIL9MpCcHJzV1Rj
         lCF/DbD9b1NdrPgpwCbohww5zbUBd7OC76RG/PjJi2tO55lOA51NDQL5NfkY1JVzBXUd
         YawVfUhPJiOKJGS/aOHKBgt0mZPji483p0BM/VmqizRhR87ilz5OHGly0+5U8pZ3FiEo
         6Dzj1DzaH6OQ9LSJ6PIK2umfByQgTcHzawbXsJtlnSvgy896z7Hk4X8Pgyg7OPLGqDe0
         /TFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dF/8AYNH";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g632eNPNxNambEz0LJOAznvS22z1TokN3r/n9iGTLec=;
        b=YhBLVjAyabKEtNzA/hY35xSz+PVkGw2d5qkSTOzOB+EFWP2X887VTSBNW46WUAb+kN
         +GWMhV62E1WIj7RLosYItdaBOnARHI+DcaPmuZ7PEe5Sg5uUpLO536jIAZzok/WDtZAT
         KIIikpn2IwNDrB5DnWwgT2bfUDMOv0KUkT6FEiGoquE2aoAcyOj16knSRK6LD0bulZGt
         hypqfsyxOlW9x6qBcNOreIehZilHY5zbCIjd3E1b84akXskCz6cGN6dHnJd0iZ9AofRZ
         Bd4konvVNpHo1MQT+VzxRu1ZsLPcbqd+A2bF7qHnJHoIyigzbjcHf1c2gcg9ruRmffyn
         1IUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g632eNPNxNambEz0LJOAznvS22z1TokN3r/n9iGTLec=;
        b=pw0Rs9lLsfpMLFHKar/0pjgsWGfspL1SZ+HxUoT+GSFuzqg8ba/B/91/Mwfax+lqhU
         BUmMgs6TrzMc9RS7FYch7Y5L7mC1255ayRCS5ObL5hC3F5ZkRMsMiHOyhUO2Qj2qr01z
         xSqRkzjfwdLQJ/bZ6PS8or4F1ddyghRN9mUVmiTfd4tZnqD5yVw67UHyYN5/+GeNmFJj
         J7rKU7u+9SElOXnzz7dacOZi4unoYkBnMyC5iR3I2t2kU1FURo16an0jwWxmn2BIGwVr
         kr2lIehT2K7KfdXcSYKjWiV2YTFzkky2r9gX744Xd9OYqr3py5AVECCOZ/GbQhV4rdxG
         3eRA==
X-Gm-Message-State: AOAM531GnCh39Ip+5fWEkJNdqizijrU2bNqLvLJzI6xSHqSUqh3r4y0q
	QdIH8ASPAKB6FHi9DSSn8rs=
X-Google-Smtp-Source: ABdhPJxOmAkSTbfiuwcYzySTQrcrApBk7prEWuf0nRAO0TbH6LwAXP8BcvMha/WV/o2gdERioZ2ycg==
X-Received: by 2002:aca:cf15:: with SMTP id f21mr4115352oig.102.1597860989575;
        Wed, 19 Aug 2020 11:16:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:56c3:: with SMTP id k186ls5100789oib.5.gmail; Wed, 19
 Aug 2020 11:16:29 -0700 (PDT)
X-Received: by 2002:aca:190c:: with SMTP id l12mr4159876oii.147.1597860989198;
        Wed, 19 Aug 2020 11:16:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597860989; cv=none;
        d=google.com; s=arc-20160816;
        b=UaK2XM8M7l4z3h2YfiGWwsXqsaifDd+SlzrMiBA6zc0SynHhq6HSh/by6jM3SFDijh
         XJ9+CmWi5utjrxGsZcA1QLO9G45pD5EHZ8T5h6wgaGxt6KFkKQggAGacp06NVTnwNQbL
         6cTeGjJgUqh8mCOrsWYKLxOOIGVP701eX5PIjnFWdSLJqBI3/DTL4mNj3E02yLxpnM8N
         26wCDV/DAAJDLPS8UzBrPJ98je2etjsGN4ShRnX0NeUCXfD54Xnvcqbrj1GBIzUmHc3B
         90s5SIZsuPydt7NqAKrKMFZfL097U94k8MtxdL88f1pnUHmKMKcQajD80W7rQp8suo0s
         P8ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dSui/fSURO6y1Wz5D3dLmsitas0HJHJce/emppKsko8=;
        b=Anjzbzy9kEYjREikLgNF48yCqQ3NabC8SLV7LPsqIG9ZXP9DC+6ruhzWUEw1qYDIqE
         3yVYnSes1DRSGf8CywtR6/dspjCeVbbj9CfI+HgyTte1Zvf8r5n1JZWBcv/onQ6ZC2Xq
         n/fUNQqOfDx9Yc8HR5V1eYOrk+UhrkKUS3MbF6pn4fr31G4kC2TTIAaLRzE1PU3QPckK
         XJM7dISlIWl9r6kX14sd8K5LBtP+V8d2g8qnaCjEFcdxQm58pdlcgBAe1SK00IaB6q2Z
         Au6c3CTTlXOI7zUbCppDrNkviPtEdQNZWQ3GUxTrucHyUazROV6NtgSqY79qEBbwl2EL
         pTNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dF/8AYNH";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id m19si1675822otn.1.2020.08.19.11.16.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 11:16:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id ds1so1150104pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 19 Aug 2020 11:16:29 -0700 (PDT)
X-Received: by 2002:a17:902:cb91:: with SMTP id d17mr19284728ply.223.1597860988249;
 Wed, 19 Aug 2020 11:16:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200819092342.259004-1-jolsa@kernel.org> <254246ed-1b76-c435-a7bd-0783a29094d9@fb.com>
 <20200819173618.GH177896@krava>
In-Reply-To: <20200819173618.GH177896@krava>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Aug 2020 11:16:17 -0700
Message-ID: <CAKwvOdnfy4ASdeVqPjMtALXOXgMKdEB8U0UzWDPBKVqdhcPaFg@mail.gmail.com>
Subject: Re: [PATCH bpf-next] tools/resolve_btfids: Fix sections with wrong alignment
To: Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Mark Wielaard <mjw@redhat.com>, 
	Nick Clifton <nickc@redhat.com>, Jesper Dangaard Brouer <brouer@redhat.com>, 
	Network Development <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Andrii Nakryiko <andriin@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="dF/8AYNH";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Wed, Aug 19, 2020 at 10:36 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Wed, Aug 19, 2020 at 08:31:51AM -0700, Yonghong Song wrote:
> >
> >
> > On 8/19/20 2:23 AM, Jiri Olsa wrote:
> > > The data of compressed section should be aligned to 4
> > > (for 32bit) or 8 (for 64 bit) bytes.
> > >
> > > The binutils ld sets sh_addralign to 1, which makes libelf
> > > fail with misaligned section error during the update as
> > > reported by Jesper:
> > >
> > >     FAILED elf_update(WRITE): invalid section alignment
> > >
> > > While waiting for ld fix, we can fix compressed sections
> > > sh_addralign value manually.

Is there a bug filed against GNU ld? Link?

> > >
> > > Adding warning in -vv mode when the fix is triggered:
> > >
> > >    $ ./tools/bpf/resolve_btfids/resolve_btfids -vv vmlinux
> > >    ...
> > >    section(36) .comment, size 44, link 0, flags 30, type=1
> > >    section(37) .debug_aranges, size 45684, link 0, flags 800, type=1
> > >     - fixing wrong alignment sh_addralign 16, expected 8
> > >    section(38) .debug_info, size 129104957, link 0, flags 800, type=1
> > >     - fixing wrong alignment sh_addralign 1, expected 8
> > >    section(39) .debug_abbrev, size 1152583, link 0, flags 800, type=1
> > >     - fixing wrong alignment sh_addralign 1, expected 8
> > >    section(40) .debug_line, size 7374522, link 0, flags 800, type=1
> > >     - fixing wrong alignment sh_addralign 1, expected 8
> > >    section(41) .debug_frame, size 702463, link 0, flags 800, type=1
> > >    section(42) .debug_str, size 1017571, link 0, flags 830, type=1
> > >     - fixing wrong alignment sh_addralign 1, expected 8
> > >    section(43) .debug_loc, size 3019453, link 0, flags 800, type=1
> > >     - fixing wrong alignment sh_addralign 1, expected 8
> > >    section(44) .debug_ranges, size 1744583, link 0, flags 800, type=1
> > >     - fixing wrong alignment sh_addralign 16, expected 8
> > >    section(45) .symtab, size 2955888, link 46, flags 0, type=2
> > >    section(46) .strtab, size 2613072, link 0, flags 0, type=3
> > >    ...
> > >    update ok for vmlinux
> > >
> > > Another workaround is to disable compressed debug info data
> > > CONFIG_DEBUG_INFO_COMPRESSED kernel option.
> >
> > So CONFIG_DEBUG_INFO_COMPRESSED is required to reproduce the bug, right?
>
> correct
>
> >
> > I turned on CONFIG_DEBUG_INFO_COMPRESSED in my config and got a bunch of
> > build failures.
> >
> > ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
> > decompress status for section .debug_info
> > ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
> > decompress status for section .debug_info
> > ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
> > decompress status for section .debug_info
> > ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
> > decompress status for section .debug_info
> > drivers/crypto/virtio/virtio_crypto_algs.o: file not recognized: File format
> > not recognized
> >
> > ld: net/llc/llc_core.o: unable to initialize decompress status for section
> > .debug_info
> > ld: net/llc/llc_core.o: unable to initialize decompress status for section
> > .debug_info
> > ld: net/llc/llc_core.o: unable to initialize decompress status for section
> > .debug_info
> > ld: net/llc/llc_core.o: unable to initialize decompress status for section
> > .debug_info
> > net/llc/llc_core.o: file not recognized: File format not recognized
> >
> > ...
> >
> > The 'ld' in my system:
> >
> > $ ld -V
> > GNU ld version 2.30-74.el8
> >   Supported emulations:
> >    elf_x86_64
> >    elf32_x86_64
> >    elf_i386
> >    elf_iamcu
> >    i386linux
> >    elf_l1om
> >    elf_k1om
> >    i386pep
> >    i386pe

According to Documentation/process/changes.rst, the minimum supported
version of GNU binutils for the kernels is 2.23.  Can you upgrade to
that and confirm that you still observe the issue?  I don't want to
spend time chasing bugs in old, unsupported versions of GNU binutils,
especially as Jiri notes, 2.26 is required for
CONFIG_DEBUG_INFO_COMPRESSED.  We can always strengthen the Kconfig
check for it.  Otherwise, I'm not familiar with the observed error
message.

> > $
> >
> > Do you know what is the issue here?
>
> mine's: GNU ld version 2.32-31.fc31
>
> there's version info in commit:
>   10e68b02c861 Makefile: support compressed debug info
>
>   Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
>   5.0+, binutils 2.26+, and zlib.
>
> cc-ing Nick Desaulniers, author of that patch.. any idea about the error above?
>
> thanks,
> jirka
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnfy4ASdeVqPjMtALXOXgMKdEB8U0UzWDPBKVqdhcPaFg%40mail.gmail.com.
