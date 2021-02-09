Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBAWQRCAQMGQEOEAOULA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8905031487E
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 07:13:23 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id c46sf4894755uad.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 22:13:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612851202; cv=pass;
        d=google.com; s=arc-20160816;
        b=C81v2ztUqfnMjg49Jbu9ZM5bEDwbbvwInQ9zu4onjShsl3SVd8qBkK0ur8hJ3bAkm7
         suhK5K8RLz3JMJRMjNRNtsKSREmnDeXr1N+nGM5+slnACkN/XFbz/L8HE5Bl9z9hgrDn
         r6LQqAYXHzITJ1vChG4q/xBHxS3WaHRz2xdNqVcE1VjNrf/hcFM04pvYYYvLiQ2YstjF
         JjRpeb1kn2uAEdktGvaecV0E16fhz6VxvDrP9GuBflw//IIhKUvcV+jnpnmFcYfXjRFA
         KN/HArpV+sL97m3g5E66nrlmgcu72XPC3Za9hWKDmkI+kqPGMjSnyc/Jy8EIRcQZEgJQ
         qduw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=jyPrWePGKYw59Lc4afP2txLSqm8sEOamKK0EdSxbej0=;
        b=B93sVF1qsoxnmpjxC1P5/2ftZ3ouHLMSrbpxV7Jh9IdvGYNrPPJ+lsFteVyfLtTTdS
         IJtH3NfRQvS8r25fwOaaAWuM/bpM6SM4Z++lz76AkBZuL2SeFILMxc83iIfTUFe9j8hT
         Ra7ZZ5CXZ+bv4ii7Xs0VDX8zMeZhVSFGqYlO+GOoLkXkPVOcYXKVdnAI0aAAseDeh7vV
         WvanxW0+VN0mv0okMSgy4sptHThrTtYOScpkdZ0IBruKd0qx7dJ020u2V+0Spr4silaL
         s6k4w9hZE4LUMG+HXqokmpgUc3InfD8UOLLEIGNQCQXq305TAmchdpQfYqEejFp29xxO
         rCNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WtqTXmst;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jyPrWePGKYw59Lc4afP2txLSqm8sEOamKK0EdSxbej0=;
        b=ryKwg2v8V09GdDOziJ+rQTxvA+02HBglf6+2yyZ7AO8WQmdCZ3AL9JNPIjcd9Xtw/U
         XCF2tmdnPsjClowXQue5y3QSM5szb+6Z1mcE3ltxBQd/2xwFzDlM1pZiS2THSrmEwDL+
         avJ2gDg19NAwJBeBeZOA2/BQBqam6gOuxEDmEkYqQT9qmEfhvwtf22Kn/StJ0kNM7E1h
         af3zJEhr7PEly5Div9kGBN4ihZZj+murTMbTTQhZGI3JZ7LPy004V26PqgfF1ta7H4bt
         5QiFpQwLeSEd1T2OQ3cjq6W10WOKK63xezr0cd+1WWjkUjPL/QsJgeLZNWN1ePDHygAi
         2fxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jyPrWePGKYw59Lc4afP2txLSqm8sEOamKK0EdSxbej0=;
        b=CKcrzB3AiNtqdjl1y+7RebXouHCBHKQo2rh1qSQaBGx6GkbJ4YZR+WJ2JkN+Wnqxbt
         HoCzWIwxwuHt0eXGOwnnVU1f2QyzvNtKxo/N4F/slDU/+bN3xPMZLDv2CnVtNMvlxweC
         BQVKOnaeIyhx8LHA6rPr3d4NpY6D/8JDfR/84qtcNk4qxGd7OrOu10xcnYTzeb5pW2du
         zYxQ3hDTuE+x8MyyCXsptQnrcP77AP7MYu6MTCVA8BKxuh8tM+GipkJ7w8RvwvuZPGVq
         7Ep32Kh353DHwgRmI5v3I87aaDWBr5M+vvzw/qcnryfzU94MAmyJBOFzVZTnB7ypwji6
         bsEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jyPrWePGKYw59Lc4afP2txLSqm8sEOamKK0EdSxbej0=;
        b=IEIJPPqDh4VwfI6gj8mJMN+HDx5DyPOawbjDggW4VTTGqrz30/7oVDoF+NzJXdVO3T
         NlXyZPxeT1QYoPJWgEN/VwtNbVE/hKUDk3T9gI79ufMyT14Wg5KxdtEISdvvjw+/vCix
         Y/VuCX6FkQwFVhxNJiG1Qui/x10BGr3zNWqKQK4LvbGDLml1w6G2EodEjEW3Z1OivP5Z
         f1OLR1gnESByiEeDqlUsh9sKy5Tez2kYvMwT95nQby7/T7nWwDU0xTd3WVWQ49B/XsMV
         b7w2YiS3TXdQhfmBCghElRSjWJgcmoDaR1hUSrnckGAOhF54c1OJFIptow2Gd8NfPr+E
         KWZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HAWwXDxGUioG7Ic+cbyYfkxMIV2pmSXG2rIgbxvzcu1tDV0pH
	+NUSocEpWZNqYY41Es8XR/8=
X-Google-Smtp-Source: ABdhPJy+IAvlT9c1Y2cabH6YosJAMenmPm7wk56ddTrE9exxbl20slkYmY5kHghATSis+iqXFcaZAQ==
X-Received: by 2002:a67:cd18:: with SMTP id u24mr11901334vsl.19.1612851202467;
        Mon, 08 Feb 2021 22:13:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:3d86:: with SMTP id k128ls1016562vka.0.gmail; Mon, 08
 Feb 2021 22:13:22 -0800 (PST)
X-Received: by 2002:a1f:21d7:: with SMTP id h206mr3741302vkh.8.1612851202061;
        Mon, 08 Feb 2021 22:13:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612851202; cv=none;
        d=google.com; s=arc-20160816;
        b=k2gTFwvT8UCN3LaobH+wm7RclM9XjquoyPiIr1W1Tg64/U1+QO6D/ls0XMfhHIQtph
         lCeSeTtK34MvAzvOSLr9e20LOFcTAaXXUEuNxeFUmNstV4SeqVp1SfD4sDtwCnmAGGyW
         A1RPs2EFg1XDVuUvTshahm87YfEUdKq3Tbk1sesCNuk9oh5Xat09zQNg27Kx1ZNhaJfc
         xi4Vs7aa7kmmSJ9vBVwocKuBm0teLS0myLYJZIgF3rqW8DOwkQCWHztCbCmUXrpFrDe/
         cD7tisNr04VE71Rp63QKl2csya/5RQ3sOrJwAZfCuNupM7nWcRSCqLJu0ka/AgJ8/0TB
         ncVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Wlmna3DEiIiZVjhHWOjRL7VmzEe2uosGs1W7iJ27zug=;
        b=gIM0kjhJoYa+D/uX3QQQkG1zD3xXrzWwFl+fIy2611PtW5EUxg+dhfZXkY9keOC9AL
         oRTwAs0rjk9pc3YSTP5dPiznAzakf9yPcv8V+Dpfx+2XBeERN+oSIFdJtd8QhwZOeld9
         xdIuy+PAbLylpLDqMEqWZZTY+7Hs7Y09Vvdn8Lp+sx21sggwiEnhyY7k+19I4SefPLcX
         k+l2u22UGGKGk1ZMReapz7szr3QMvfUvXNh06QR0wdAHPLki8aEFELrDr/z4uZnG+Smi
         ZhkXAe98UpxLKdC1b8I4UGCM6WfQcF7MNUpOS8seIjx/JQjKjbMTXUmPJ4XGVV6mbmcb
         sgrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WtqTXmst;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com. [2607:f8b0:4864:20::b32])
        by gmr-mx.google.com with ESMTPS id y127si830798vsc.0.2021.02.08.22.13.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Feb 2021 22:13:22 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) client-ip=2607:f8b0:4864:20::b32;
Received: by mail-yb1-xb32.google.com with SMTP id l8so4717784ybe.12
        for <clang-built-linux@googlegroups.com>; Mon, 08 Feb 2021 22:13:22 -0800 (PST)
X-Received: by 2002:a25:4b86:: with SMTP id y128mr30188961yba.403.1612851201745;
 Mon, 08 Feb 2021 22:13:21 -0800 (PST)
MIME-Version: 1.0
References: <20210209034416.GA1669105@ubuntu-m3-large-x86> <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86> <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
In-Reply-To: <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 8 Feb 2021 22:13:10 -0800
Message-ID: <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
To: Nathan Chancellor <nathan@kernel.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Veronika Kabatova <vkabatov@redhat.com>, Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WtqTXmst;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Feb 8, 2021 at 10:09 PM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Mon, Feb 8, 2021 at 9:23 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > On Mon, Feb 08, 2021 at 08:45:43PM -0800, Andrii Nakryiko wrote:
> > > On Mon, Feb 8, 2021 at 7:44 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > >
> > > > Hi all,
> > > >
> > > > Recently, an issue with CONFIG_DEBUG_INFO_BTF was reported for arm64:
> > > > https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/E7cu5BwbBAAJ
> > > >
> > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > >                       LLVM=1 O=build/aarch64 defconfig
> > > >
> > > > $ scripts/config \
> > > >     --file build/aarch64/.config \
> > > >     -e BPF_SYSCALL \
> > > >     -e DEBUG_INFO_BTF \
> > > >     -e FTRACE \
> > > >     -e FUNCTION_TRACER
> > > >
> > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > >                       LLVM=1 O=build/aarch64 olddefconfig all
> > > > ...
> > > > FAILED unresolved symbol vfs_truncate
> > > > ...
> > > >
> > > > My bisect landed on commit 6e22ab9da793 ("bpf: Add d_path helper")
> > > > although that seems obvious given that is what introduced
> > > > BTF_ID(func, vfs_truncate).
> > > >
> > > > I am using the latest pahole v1.20 and LLVM is at
> > > > https://github.com/llvm/llvm-project/commit/14da287e18846ea86e45b421dc47f78ecc5aa7cb
> > > > although I can reproduce back to LLVM 10.0.1, which is the earliest
> > > > version that the kernel supports. I am very unfamiliar with BPF so I
> > > > have no idea what is going wrong here. Is this a known issue?
> > > >
> > >
> > > I'll skip the reproduction games this time and will just request the
> > > vmlinux image. Please upload somewhere so that we can look at DWARF
> > > and see what's going on. Thanks.
> > >
> >
> > Sure thing, let me know if this works. I uploaded in two places to make
> > it easier to grab:
> >
> > zstd compressed:
> > https://github.com/nathanchance/bug-files/blob/3b2873751e29311e084ae2c71604a1963f5e1a48/btf-aarch64/vmlinux.zst
> >
>
> Thanks. I clearly see at least one instance of seemingly well-formed
> vfs_truncate DWARF declaration. Also there is a proper ELF symbol for
> it. Which means it should have been generated in BTF, but it doesn't
> appear to be, so it does seem like a pahole bug. I (or someone else
> before me) will continue tomorrow.
>
> $ llvm-dwarfdump vmlinux
> ...
>
> 0x00052e6f:   DW_TAG_subprogram
>                 DW_AT_name      ("vfs_truncate")
>                 DW_AT_decl_file
> ("/home/nathan/cbl/src/linux/include/linux/fs.h")
>                 DW_AT_decl_line (2520)
>                 DW_AT_prototyped        (true)
>                 DW_AT_type      (0x000452cb "long int")
>                 DW_AT_declaration       (true)
>                 DW_AT_external  (true)
>
> 0x00052e7b:     DW_TAG_formal_parameter
>                   DW_AT_type    (0x00045fc6 "const path*")
>
> 0x00052e80:     DW_TAG_formal_parameter
>                   DW_AT_type    (0x00045213 "long long int")
>
> ...
>

... and here's the *only* other one (not marked as declaration, but I
thought we already handle that, Jiri?):

0x01d0da35:   DW_TAG_subprogram
                DW_AT_low_pc    (0xffff80001031f430)
                DW_AT_high_pc   (0xffff80001031f598)
                DW_AT_frame_base        (DW_OP_reg29)
                DW_AT_GNU_all_call_sites        (true)
                DW_AT_name      ("vfs_truncate")
                DW_AT_decl_file ("/home/nathan/cbl/src/linux/fs/open.c")
                DW_AT_decl_line (69)
                DW_AT_prototyped        (true)
                DW_AT_type      (0x01cfdfe4 "long int")
                DW_AT_external  (true)


> $ llvm-readelf -s vmlinux | rg vfs_truncate
>  15013: ffff800011c22418     4 OBJECT  LOCAL  DEFAULT    24
> __BTF_ID__func__vfs_truncate__609
>  22531: ffff80001189fe0d     0 NOTYPE  LOCAL  DEFAULT    17
> __kstrtab_vfs_truncate
>  22532: ffff8000118a985b     0 NOTYPE  LOCAL  DEFAULT    17
> __kstrtabns_vfs_truncate
>  22534: ffff800011873b7c     0 NOTYPE  LOCAL  DEFAULT     8
> __ksymtab_vfs_truncate
> 176099: ffff80001031f430   360 FUNC    GLOBAL DEFAULT     2 vfs_truncate
>
> $ bpftool btf dump file vmlinux | rg vfs_truncate
> <nothing>
>
> > uncompressed:
> > https://1drv.ms/u/s!AsQNYeB-IEbqjQiUOspbEdXx49o7?e=ipA9Hv
> >
> > Cheers,
> > Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn%3DYNGv%2BvNVw%40mail.gmail.com.
