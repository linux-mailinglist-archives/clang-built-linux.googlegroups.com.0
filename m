Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHVGQKAAMGQEOYTBWIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3BD2F69FA
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 19:53:19 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id v187sf1337738ybv.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 10:53:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610650398; cv=pass;
        d=google.com; s=arc-20160816;
        b=LpPqouLtTOQutE/9DSHhjzorueH8I8DYb9SfFx4oXU620qxsZoVqlMp9cY7ktHZFuS
         h6e5yRs1REUWpWDMP3cTzd8hHTjkcx1tUbwE+Cm/EGc1zkeQU6w2XI41dwXn69b7qZQd
         KqpOioeE0bnwUFWVePYqxbOqQYSQAXcgJMPJWBGHyT6tYKAWQucoj8/Op38KQK1xWHF8
         aUXX3IIyne0ZF8UPyPc/YMGoQ/1m1MpgsNLGtU8vU7SyGaYobl/w1KrUN8lta/RAUTWr
         iUeonGFF7PwYrO4n90R+BfCwj2bsbH26AMom5fWNzm1fHigJLb5wYtK+x9z870X69xV0
         hdDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=B7PNiaNVsaBIEU5z7GWLr6p2GhgX4NDJZChLcn98BRo=;
        b=ayqxUydoZHzgb9mzi+1FsNRvlqmWnkps43xvD05Vzgb5kT4dZutpWNvvwojK1PWWBs
         v1cDM4tNZWtwK4JNqFxYnQFr24ULJFiJs7NUwJyBH4JqTw5teKhYNj/QVD3xt+4y7Z0Q
         IJEU4zCqspj48om4CqmgahCgf0bdgjC/6ugjbxRwSNMzAlKOpU/S1HcXfXF8P9SWIxOu
         wlNu8+v/Trg8L4F7pfHn/nZKxj/H5L45g9OUwtMPdVSjcRfnKslwZMCB1t7W2dUhXqqk
         alLs0vojjTb+fPA/ZTTJsqnshBakn8oN/l0Xv+zdkCGw6h12XjN85IKfZdvmtto9lXqt
         uVXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PkfoBY28;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B7PNiaNVsaBIEU5z7GWLr6p2GhgX4NDJZChLcn98BRo=;
        b=Sft7dSqH8jwaBZS6I4HmHwEqxN0vV7Iy2MTK7ywzxqG3d1RIWd9T1cWX79esoQbdnM
         vUmtXBDDDOwPmyzYkALqtuXiH8S/wm/Cjrezc9FbyoaypNopbu2/XzkKIsQjgRv3bwO2
         iQmeLj+JQBrwmQGmFvjaydM3Ogwfmknzeal958SGpSRAnu5OVcQM/t591sv4xn58e85d
         yRAKKjkrd2lwczBHQGbmuV9XifuseyUcV36N4W/49DsIlxwKg3u97dyyb5432Tcgg1vN
         1nZgFtWKlhCsmCrYXE1qrRGhXeOztAsHC0b/B0WSKHtnq4WES3pabgr1pZkUFAn4P5/P
         LahA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B7PNiaNVsaBIEU5z7GWLr6p2GhgX4NDJZChLcn98BRo=;
        b=phSUFDYH05T8P5PijysSQrtxwzzVRg42MIk+ehKAX5vBnuKL3FnCmhfAeGLuqHtEnl
         JYzR6tsNLwQVmitCeK5NP2M+WDz8JZ5oRcEKvcHUbDZn0U1ZrSiLfyEwOdeiT8Jt/UyQ
         jGt0skL0m9mbfxZG59+lISsxH7LDEt486bDdFxDdGdByuUvYZ9+riuQFym5lRw44WuSm
         3cVtVREyhj4JtkjCYKXa/SnoWYxKe+SlaHoyj9RDsH8fnmf65v6ODN9YZ/beJ+NR/lV0
         dqlx2Imzr+D8j7S+0/Jz8IsTelnI9UsU6tuVkrn+YtCXziISlZsszTz0reYLDSW7s+t/
         qT9g==
X-Gm-Message-State: AOAM531NAi2xol6E+jxwH5kE+5qcULJb7ILx+6O/yGc/eQpUEfaCSUYO
	yAXmHgspWsNYHZRhjx201yc=
X-Google-Smtp-Source: ABdhPJwkQNiR3C5s5jeF3Kl+QIxts483+pCWEXOj5jV1QPwExWe073z4FIqyWKMuhd5aMVbmcY46Lg==
X-Received: by 2002:a25:2a56:: with SMTP id q83mr5974846ybq.144.1610650398764;
        Thu, 14 Jan 2021 10:53:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:f80c:: with SMTP id u12ls3166125ybd.4.gmail; Thu, 14 Jan
 2021 10:53:18 -0800 (PST)
X-Received: by 2002:a25:1541:: with SMTP id 62mr12848557ybv.484.1610650398373;
        Thu, 14 Jan 2021 10:53:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610650398; cv=none;
        d=google.com; s=arc-20160816;
        b=TdBnwAwt5OoMYEM+gHQsBfdJl8OWMjJhmWDKevV0mpjp1VJO+0GOXgPbTOeL9U2Hov
         RIbwGbYLQS3dX+idQBSFZKl89stcjElPWls1QubefwG2B68Fh84BwoO2TEHQGJDq/pxZ
         5HosWjTbJJwroXbsrFy7vdJ5pdhUkY8DqWDnda9/9lf/2q2AbgBZ2kuaCGXteKw+4qxJ
         mE43CB0GhXvYTqdEITm5vNFYNegngpGTPkfUBnRr0AYuTVGTW4cIP4ypzB9JQq6dMKw7
         yrwH+2SvQb8/3xEZHMKGSKitxFcQjZDxph0ECdiVQNqsEUQK/z4TQs8j+2NdAWAGqkKG
         DxuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=etEJQyE4wI0xqWJz8agLY3zHi4W3c5fEnAfHXnXZRx4=;
        b=ixDCUjNJZ+mDXCaXKbXAaH6UtEN8bok3bnySzCCiePvOBxfipMQRiEm+rSIGJswby+
         iEudq5fVsLb/vVHlA0e9pCEUq2i67ZhwJCmP3fwBhocmo7wzfloRSwPcoW8zZsXOnTyj
         eDu4G8NiXDrlxZNhUPGModcJmPhjJWGxOqpdYMBIDREHSEdIp2dsLPyrolB3L6o/QY+T
         yf/T+G8amPRBliB6b2lk8a7i45zH1AKslfon5z08remeYwDDVN0uIPs8Cqo0xTeE1tPE
         zDEMJBDua3PoK+Nt5WC873U49KQJamfIkunle1uu398iL3GMsA+PIGN3PALQwgZNmc78
         UOxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PkfoBY28;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id s9si94287ybk.4.2021.01.14.10.53.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 10:53:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id n10so4370764pgl.10
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 10:53:18 -0800 (PST)
X-Received: by 2002:a62:7c4a:0:b029:19d:b7bc:2c51 with SMTP id
 x71-20020a627c4a0000b029019db7bc2c51mr8801353pfc.30.1610650397614; Thu, 14
 Jan 2021 10:53:17 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
 <CA+icZUW6h4EkOYtEtYy=kUGnyA4RxKKMuX-20p96r9RsFV4LdQ@mail.gmail.com>
 <CABtf2+RdH0dh3NyARWSOzig8euHK33h+0jL1zsey9V1HjjzB9w@mail.gmail.com> <CA+icZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug@mail.gmail.com>
In-Reply-To: <CA+icZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 10:53:06 -0800
Message-ID: <CAKwvOd=+g88AEDO9JRrV-gwggsqx5p-Ckiqon3=XLcx8L-XaKg@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Sedat Dilek <sedat.dilek@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Caroline Tice <cmtice@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>, 
	bpf <bpf@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PkfoBY28;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530
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

On Wed, Jan 13, 2021 at 10:18 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Jan 13, 2021 at 11:25 PM Caroline Tice <cmtice@google.com> wrote:
> >
> > On Tue, Jan 12, 2021 at 3:17 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >>
> >> Unfortunately, I see with CONFIG_DEBUG_INFO_DWARF5=y and
> >> CONFIG_DEBUG_INFO_BTF=y:
> >>
> >> die__process_inline_expansion: DW_TAG_INVALID (0x48) @ <0x3f0dd5a> not handled!
> >> die__process_function: DW_TAG_INVALID (0x48) @ <0x3f0dd69> not handled!

I can confirm that I see a stream of these warnings when building with
this patch series applied, and those two configs enabled.

rebuilding with `make ... V=1`, it looks like the call to:

+ pahole -J .tmp_vmlinux.btf

is triggering these.

Shall I send a v4 that adds a Kconfig dependency on !DEBUG_INFO_BTF?
Does pahole have a bug tracker?

> >>
> >> In /usr/include/dwarf.h I found:
> >>
> >> 498:    DW_OP_lit24 = 0x48,                /* Literal 24.  *
> >
> >
> > There are multiple dwarf objects with the value 0x48, depending on which section of the dwarf.h file you search:
> >
> > DW_TAG_call_site = 0x48
> > DW_AT_static_link = 0x48
> > DW_OP_lit24 = 0x48.
> >
> > In this case, since the error message was about a DW_TAG, it would be complaining about DW_TAG_call_site, which is new to DWARF v5.
> >
> Example for "DW_TAG_INVALID (0x48)" from my build-log:
>
> die__process_inline_expansion: DW_TAG_INVALID (0x48) @ <0x1f671e7> not handled!
>
> $ llvm-dwarfdump-11 --debug-info=0x1f671e7 vmlinux
> vmlinux:        file format elf64-x86-64
>
> .debug_info contents:
>
> 0x01f671e7: DW_TAG_call_site
>              DW_AT_call_return_pc      (0xffffffff811b16f2)
>              DW_AT_call_origin (0x01f67f1d)
>
> Looking for "DW_AT_call_origin (0x01f67f1d)":
>
> $ llvm-dwarfdump-11 --debug-info=0x01f67f1d vmlinux
> vmlinux:        file format elf64-x86-64
>
> .debug_info contents:
>
> 0x01f67f1d: DW_TAG_subprogram
>              DW_AT_external    (true)
>              DW_AT_declaration (true)
>              DW_AT_linkage_name        ("fput")
>              DW_AT_name        ("fput")
>              DW_AT_decl_file
> ("/home/dileks/src/linux-kernel/git/./include/linux/file.h")
>              DW_AT_decl_line   (16)
>              DW_AT_decl_column (0x0d)

That's a neat trick (using --debug-info=offset to print one element
from the stream).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%2Bg88AEDO9JRrV-gwggsqx5p-Ckiqon3%3DXLcx8L-XaKg%40mail.gmail.com.
