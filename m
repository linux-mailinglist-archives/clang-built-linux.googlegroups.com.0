Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBL7ERCAQMGQEVFDXRAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id D1457314927
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 07:56:48 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id 65sf2341753uan.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 22:56:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612853808; cv=pass;
        d=google.com; s=arc-20160816;
        b=JtfbO5bgN4w1LjQs6iv4KIhJMNBh0GCrb1wA0r+YT7y2sVBLSvfa5dmx4gQ+Voxlng
         JMX/XafqctaWECm4nUaSQV9c3hu9lM3Xegpb2ZuFYujhtQylqTpg408vQDc0f6RP6Px2
         YTGHe8qH1T6SUOEPA5hHJQsmprRXLjO6lUlLPNelJERgmOSaBoX9UwAVUFhL+898bpQj
         7Rin/khVgHvqF87vHpJ8RPPXDKUowaA6mmtJJd9Lf9oHHlOa3ud+jYBedJjA512h1aZh
         XiUBHJ3mpddgDzYkCskJrnQiVTNKuNvaBa7qPQDgED1bYG/eswmZejTQ/bPq8CA1kZ46
         iqpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=tqvgjnwFk9+A/+vtIXMR0eOrlSIHSDs5ohSj1IXj3vQ=;
        b=vKGsO01nsEB0F4PzeFY9ucD4VfyBbJAMNRZWaibEXPiBtiFbAz4unIg90Di4nSg/Fo
         p9kAS0JpWI7n09SB3r2GAKGtk2O4EkzrYN0Msb3mCo0CwuEB6htuBsAnDilfLWr2g5aE
         AeAs+iokNWWXEKsWXNEVwUab/tTQJ/F0ZH836GkOrgbQYzSIHOM4RLx/pIoKtx7G/Sop
         UU/iEfXziVbOKgdkAq0O/ULtlnGCaxTEidPKpTxAPKfXqMcJ9pwPAQ0HSrZjc8v2SQiQ
         eFsVD0YUWHOHKFY2m32Ql8CpGj0UQ2DevUOX+UgxD58i789OizVxaMM7dCbU0y02gV9D
         duvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UgQaVkm3;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tqvgjnwFk9+A/+vtIXMR0eOrlSIHSDs5ohSj1IXj3vQ=;
        b=BDn+osNDl7+r5fdSRV5zpy02DvtB88Knj/DrtBrzZFsAuhhDJlrJlQsz8DJxcNPu3O
         9WKXUtFjcSy4b+5+0wwgUt+y++lGpXnrGVu0x4DHp9T5at3pl39syJ9A/3P2yWmjEA7C
         mc6gIKL1LlvF888K/YLqApGdWUwryUuFRQKx3UL/UOF3FPL+c8XkLZwg8G3GN1ReCzsg
         0m0vbQXJS4WJmhFuJk1lzrRiUHOa3k/PXs0Yxy/yu7rYFEPR+rWY2AmBjtki0gAM2rPw
         KD0MFZIcS/WsKcQ4hNvLaVuASck3SeMer6HJkdXZYRU/aBn15qGvLBT8brJKwqrQBUF+
         XSbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tqvgjnwFk9+A/+vtIXMR0eOrlSIHSDs5ohSj1IXj3vQ=;
        b=GJvL5kf7Viu9WC6WaKsxwyVwddNkpNy7rIQiq3Bw3njPrS59DAp/Hv1+No1l3hs/Ot
         jgdpPxWwcUuK8brG0wxbFtiutqRJLhAy47lFVjEsEtulqAvjldlcKdFKr2o2Y6qYddhF
         Qjqu53s3naG4e/+8ccHIsmg/O1vG27SPtFAveNn7NMtch0uqlQNTMHISahFrQQseQYP4
         cCYjVwjTINJDAz97x8MjLyDFcNvTtpbn5d9ndsoiLVHVUHy0kt/iOgoNqaOV6tbryDTW
         f6nH/oZsYFf7mSO6q4WMHlQvKPijhd46V/3XkvwWKJOG/z2U74x4aJeTEoJAmt5nv0vE
         fr9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tqvgjnwFk9+A/+vtIXMR0eOrlSIHSDs5ohSj1IXj3vQ=;
        b=epkJVRnoI8Nt2hO12+Ch0RWrQRZYY8egQTDa27gsxRB8d8rD2VdhpcwFdmcnfkbNse
         LverNGhZFWG7Hk45IqUk8HLA0eI64pYDHF48flmoEovvZqG3SK93y/LIHLtk6gE2ZdCx
         dKHyNZpCWSBGAtjuPkpTN7Dl0FzyRkN0MCbQv7cn74rUmP+PC0SUUutwANJtBShkRzXI
         o/5r4HMV1KFW/wjMZEFBs0iMyo1GRglpdMmxVZPMt9pLDIZmgMUFgWRLJTuw76WV9XuI
         gXd6Bky6muKiL9zGEaXMqdY0egutcU5udE1wxKJYzFw2XD8JCaCycOHgPY0xhILVsIJU
         fgBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QUid7flonjf9hmOA/c1vHmkPFme1xJv3b8IRjq/nYksqfMSOe
	9Hqk/1ypJJKlqq48ExnrjMA=
X-Google-Smtp-Source: ABdhPJxyXZKR3CgY1rEY4kE33OuDWUknYZDyLZOQq9Bh9AuFP9+0JHZ6HN2s/zhX1VFCQAQxCQr7ew==
X-Received: by 2002:a1f:4ec7:: with SMTP id c190mr12260954vkb.11.1612853807862;
        Mon, 08 Feb 2021 22:56:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:c805:: with SMTP id y5ls237376vkf.10.gmail; Mon, 08 Feb
 2021 22:56:47 -0800 (PST)
X-Received: by 2002:a1f:1ccf:: with SMTP id c198mr12991926vkc.24.1612853807463;
        Mon, 08 Feb 2021 22:56:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612853807; cv=none;
        d=google.com; s=arc-20160816;
        b=TSggSakMm+U53i0LySkY7sS52T5eXR0ZysTMIiBFFOMf7andS/co7hbYYODboA22tQ
         fjBxk8vdUtWc06/4+ubEfTrTNlTpmc3svabqpRyAddB8rnhrX/vYlDntN7ztAmbwqhdL
         2E0al+nB6YU/gZN8tHih+TBpvowo334w2mr33uRblA4t1c0KDF+M1GD8zQ4ZsL3kgdOo
         naGSjiOhj5oK98sENMggL7lB7w781qTiGwm9ltFrjB9LxUyurj0JS/YXLpGoZhZaTDcB
         yeGET0B8BKmHUDo8zb5djkdYjTAFAXSRT/URIV4wZaTe97Af5p+DydFaxXzGf2877OwB
         W0Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eZrBOAIpzrTsqK+9+r50BZw7/7rvwYEA9Ha1KB9Yhe8=;
        b=VmGsnMMwnC7qN46XHHSSi0xCUNcLHW3EbGEoZGFftObETAVaacbUTdlbgpyCKUABeh
         tI1xVcYfc7Slk4bRdq/y/c4vg0EsEDskh9Tn2QXR8xxivj2vl7eRE/Dbv62OmiZO7Jk3
         J0RadzuIBqgqxDVLFHt5AMUA2LH5CUpornl9FTugwNJ2zkiYyD5CrcFt2qjlGX26mHLy
         BxF3yful0hyQ8lXVPFGkt+y67L8oXxZ2uzDevVLWVhdFOcuAEl+TQKRlNA3l+n32nnsK
         h0cTrcp2hCbUBeMNwurt4Rp+nlR9xqGGDisKTwGzIvAfKbqhcm4TDrGz3CiiPQvyHR6F
         dw8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UgQaVkm3;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com. [2607:f8b0:4864:20::b35])
        by gmr-mx.google.com with ESMTPS id z9si65938uaq.1.2021.02.08.22.56.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Feb 2021 22:56:47 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) client-ip=2607:f8b0:4864:20::b35;
Received: by mail-yb1-xb35.google.com with SMTP id e132so17146952ybh.8
        for <clang-built-linux@googlegroups.com>; Mon, 08 Feb 2021 22:56:47 -0800 (PST)
X-Received: by 2002:a25:c905:: with SMTP id z5mr31245749ybf.260.1612853807146;
 Mon, 08 Feb 2021 22:56:47 -0800 (PST)
MIME-Version: 1.0
References: <20210209034416.GA1669105@ubuntu-m3-large-x86> <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86> <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
In-Reply-To: <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 8 Feb 2021 22:56:36 -0800
Message-ID: <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=UgQaVkm3;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Feb 8, 2021 at 10:13 PM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Mon, Feb 8, 2021 at 10:09 PM Andrii Nakryiko
> <andrii.nakryiko@gmail.com> wrote:
> >
> > On Mon, Feb 8, 2021 at 9:23 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > >
> > > On Mon, Feb 08, 2021 at 08:45:43PM -0800, Andrii Nakryiko wrote:
> > > > On Mon, Feb 8, 2021 at 7:44 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > > >
> > > > > Hi all,
> > > > >
> > > > > Recently, an issue with CONFIG_DEBUG_INFO_BTF was reported for arm64:
> > > > > https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/E7cu5BwbBAAJ
> > > > >
> > > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > > >                       LLVM=1 O=build/aarch64 defconfig
> > > > >
> > > > > $ scripts/config \
> > > > >     --file build/aarch64/.config \
> > > > >     -e BPF_SYSCALL \
> > > > >     -e DEBUG_INFO_BTF \
> > > > >     -e FTRACE \
> > > > >     -e FUNCTION_TRACER
> > > > >
> > > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > > >                       LLVM=1 O=build/aarch64 olddefconfig all
> > > > > ...
> > > > > FAILED unresolved symbol vfs_truncate
> > > > > ...
> > > > >
> > > > > My bisect landed on commit 6e22ab9da793 ("bpf: Add d_path helper")
> > > > > although that seems obvious given that is what introduced
> > > > > BTF_ID(func, vfs_truncate).
> > > > >
> > > > > I am using the latest pahole v1.20 and LLVM is at
> > > > > https://github.com/llvm/llvm-project/commit/14da287e18846ea86e45b421dc47f78ecc5aa7cb
> > > > > although I can reproduce back to LLVM 10.0.1, which is the earliest
> > > > > version that the kernel supports. I am very unfamiliar with BPF so I
> > > > > have no idea what is going wrong here. Is this a known issue?
> > > > >
> > > >
> > > > I'll skip the reproduction games this time and will just request the
> > > > vmlinux image. Please upload somewhere so that we can look at DWARF
> > > > and see what's going on. Thanks.
> > > >
> > >
> > > Sure thing, let me know if this works. I uploaded in two places to make
> > > it easier to grab:
> > >
> > > zstd compressed:
> > > https://github.com/nathanchance/bug-files/blob/3b2873751e29311e084ae2c71604a1963f5e1a48/btf-aarch64/vmlinux.zst
> > >
> >
> > Thanks. I clearly see at least one instance of seemingly well-formed
> > vfs_truncate DWARF declaration. Also there is a proper ELF symbol for
> > it. Which means it should have been generated in BTF, but it doesn't
> > appear to be, so it does seem like a pahole bug. I (or someone else
> > before me) will continue tomorrow.
> >
> > $ llvm-dwarfdump vmlinux
> > ...
> >
> > 0x00052e6f:   DW_TAG_subprogram
> >                 DW_AT_name      ("vfs_truncate")
> >                 DW_AT_decl_file
> > ("/home/nathan/cbl/src/linux/include/linux/fs.h")
> >                 DW_AT_decl_line (2520)
> >                 DW_AT_prototyped        (true)
> >                 DW_AT_type      (0x000452cb "long int")
> >                 DW_AT_declaration       (true)
> >                 DW_AT_external  (true)
> >
> > 0x00052e7b:     DW_TAG_formal_parameter
> >                   DW_AT_type    (0x00045fc6 "const path*")
> >
> > 0x00052e80:     DW_TAG_formal_parameter
> >                   DW_AT_type    (0x00045213 "long long int")
> >
> > ...
> >
>
> ... and here's the *only* other one (not marked as declaration, but I
> thought we already handle that, Jiri?):
>
> 0x01d0da35:   DW_TAG_subprogram
>                 DW_AT_low_pc    (0xffff80001031f430)
>                 DW_AT_high_pc   (0xffff80001031f598)
>                 DW_AT_frame_base        (DW_OP_reg29)
>                 DW_AT_GNU_all_call_sites        (true)
>                 DW_AT_name      ("vfs_truncate")
>                 DW_AT_decl_file ("/home/nathan/cbl/src/linux/fs/open.c")
>                 DW_AT_decl_line (69)
>                 DW_AT_prototyped        (true)
>                 DW_AT_type      (0x01cfdfe4 "long int")
>                 DW_AT_external  (true)
>

Ok, the problem appears to be not in DWARF, but in mcount_loc data.
vfs_truncate's address is not recorded as ftrace-attachable, and thus
pahole ignores it. I don't know why this happens and it's quite
strange, given vfs_truncate is just a normal global function.

I'd like to understand this issue before we try to fix it, but there
is at least one improvement we can make: pahole should check ftrace
addresses only for static functions, not the global ones (global ones
should be always attachable, unless they are special, e.g., notrace
and stuff). We can easily check that by looking at the corresponding
symbol. But I'd like to verify that vfs_truncate is ftrace-attachable
for that particular kernel. For that we'll need Nathan's cooperation,
unless someone else can build an arm64 kernel with the same problem
and check.

>
> > $ llvm-readelf -s vmlinux | rg vfs_truncate
> >  15013: ffff800011c22418     4 OBJECT  LOCAL  DEFAULT    24
> > __BTF_ID__func__vfs_truncate__609
> >  22531: ffff80001189fe0d     0 NOTYPE  LOCAL  DEFAULT    17
> > __kstrtab_vfs_truncate
> >  22532: ffff8000118a985b     0 NOTYPE  LOCAL  DEFAULT    17
> > __kstrtabns_vfs_truncate
> >  22534: ffff800011873b7c     0 NOTYPE  LOCAL  DEFAULT     8
> > __ksymtab_vfs_truncate
> > 176099: ffff80001031f430   360 FUNC    GLOBAL DEFAULT     2 vfs_truncate
> >
> > $ bpftool btf dump file vmlinux | rg vfs_truncate
> > <nothing>
> >
> > > uncompressed:
> > > https://1drv.ms/u/s!AsQNYeB-IEbqjQiUOspbEdXx49o7?e=ipA9Hv
> > >
> > > Cheers,
> > > Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bzax90hn_5axpnCpW%2BE6gVc1mtUgCXWqmxV0tJ4Ud7bsaA%40mail.gmail.com.
