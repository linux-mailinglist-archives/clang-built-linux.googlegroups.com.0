Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBCUMRSAQMGQEME3WK3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBF6315911
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 23:00:43 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id m25sf2744239uap.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 14:00:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612908042; cv=pass;
        d=google.com; s=arc-20160816;
        b=y66UXif9gjaGZeh7N4T3CVorH8jmsOs/xe8LOlt8ZpbaDb0VwwDGojQWP1cVaCY2ng
         xxLzsAHnDPTbf533tScwqttLmHdtI5nC8lhPkL3fTJvPXiftERwbZUIZat7SH6l44gpL
         U0xWAHf1pw9nd2HpM0jphYXLiVAxxJBBmgJjq6CRp4UjSB4eLjYYBIwr7d7GeS795dAE
         vrRXg69FTCH6n+wRhJ7KI7M/DNP5sNoi8SfmDfT2CNjuwRcDraurOCp0KB5xCO/EP0HV
         bjCuLKb1B9M1w/z3anOx6+IXI42BW82YsgKU+V96bVwEzobchvEDi0uAJ99rP6qC6LZu
         8SIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=DjIoN+ZJtxfnPazApdZTwTAo3ug7SVJ3NuQ81kV0cS0=;
        b=vZvVkJDVg7JQfULRVj3dErHuJok4VUtagcr2CUHhG3AEc8Fm6MbjCt0GMyJSkG/KtA
         uf5JK0dN6rIXAGRldIA4PFZgz1gsRYey1KxCIhMMVax0GcaXDor0fS+LZoz1v0plOZZX
         T/Tvw+0hkbaX2G9q7zIPseGF5Cp/ld0pr/rHxtpVv5ZtHOyxn8EkLvvX0mwX4tnzaC+Y
         9GbZAt2HKtjjoj8Hl9M5hdzFwMNIrHopw1Vj49/nTZ0ZK0guNkNLSD7kjGvUnXLoepsq
         Pv84qY97P69JCwtlgL0xiW2c5ao7m4bJ+CXtvz4p06Z0AfxdYg6Kt8gSwYG1f+U3RdBr
         I3eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TIttP2sm;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DjIoN+ZJtxfnPazApdZTwTAo3ug7SVJ3NuQ81kV0cS0=;
        b=GDVXQ01iEhQg5PTm838MbwCxAbKKC7b22z22+tlRrO100uqb2w/VfmRGSVrdp9xoZU
         w1nfhT9mxKJiba1kCpuZBXU7Si8ViA4ZntnJeKgkSztNqUtd1zqngE2Xb0sgVuM8CayL
         iya3BBU306Oj+PZrFMMiV0nxbPM4lWUoJEFzWelOrFw5mx9aTJ2lbe6X6DXX+6O0R5R6
         3zS2z8MDI07cPBcqjzLnN49+VRMFOh7ndKzW3e+dPxcEzvM0VjgSwm7C+cxnUSEbWj7A
         XuVtdPpbHAYAKRI8nuZ4o2Eb/FTFRFlH5oVLzU/pVtxg1ribEtgegfySJrNa/RJyjoqa
         zW8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DjIoN+ZJtxfnPazApdZTwTAo3ug7SVJ3NuQ81kV0cS0=;
        b=JqAnk4PpmxOs14i4XwJg4yEpozGiEkM44oiJbKz208DOXxQzZM1SMXsmgDFvXnVZA9
         0HMxIow3zJQDVqw7eYm1egkpf5gubT/8XDUpOOe1x+PkeKV3K9cq+JAGXHGjKaBKjH7t
         EiDJhyxSTtGW853nafjRDQEPiipH5otDFgpYaYBt7eAIUyGVcxfnj5zu5iY6KbnOQMr2
         ukcahsHQQW/1KXfYjGAdgMB1g61cYBq15noIhEH9s2zGM0+ph0sA9m9gbUNmcuaa1mzu
         UvWv7lzA9HCExP1N1YktYFJMtR2/K2UTJVPZfoQNmp/VOcOHeATZjNfUs3fyl093ufsW
         eRBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DjIoN+ZJtxfnPazApdZTwTAo3ug7SVJ3NuQ81kV0cS0=;
        b=Uby78SCYfq/3koaHDrHNSa6TQXKRU+E0PZgMtumgBVdvtN1/m4twv3DsreMeDbtmUT
         GlKFH09FxGEjM7//DgoNZ0zuDQw374fAwn3AKGVtGXe54sVvNxN14twO22Cr083fDmou
         u3lhkTFq+z6W5WtSdTbKr4P5TcKYXy0tVpLgMNh499WXBjOIF+Lw/w3vjynHYtron4hp
         atkGjU5u7v71MZQIlmBmDYe/aiqpZMcqlYc4fRX10GwHu1JZ1e6eoPQrdrNOJjdlxPmP
         CcrJNG1wMgyx/NX1BHtb/+DozAlK9dk1iVqljWeitpVwMqMbmTBQBpjY9zYKbyoopJpp
         6VhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CUJXgEffVsF66q3Bz5m83lCsazOL+PJ80kYbu58IrFiMNU9l7
	Nsy5cqwarZoG9uH3lFvATec=
X-Google-Smtp-Source: ABdhPJx08iORecLUTROD5eAoRQ9xIt4MaEuj+8OJ3UgwcdhGDveRPTeSoi6fE5hUycFtCqjvPGxo1A==
X-Received: by 2002:a67:14c4:: with SMTP id 187mr158906vsu.15.1612908042409;
        Tue, 09 Feb 2021 14:00:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:bc14:: with SMTP id t20ls1288413vsn.6.gmail; Tue, 09 Feb
 2021 14:00:42 -0800 (PST)
X-Received: by 2002:a67:328e:: with SMTP id y136mr6868171vsy.40.1612908041914;
        Tue, 09 Feb 2021 14:00:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612908041; cv=none;
        d=google.com; s=arc-20160816;
        b=h6WIHMIAC1uYkqmwNE9gAf3QfmcvNsDcRBONQGr0vqSDS3RhT3VZYauokrIJ/tXBwa
         epip+NOJYKm91aQkGFUzT1/O6KR41Pt8XYhqOlMIo2iZwcQmK9dMFYKxUGe3jgmf+97n
         keljBE2zVCNRBs4rN3Ihv2ehTDD/B6ijN+i+dEZ8kpWozJklmBz0aZ9yF094WP65ynT2
         iut3A0n0xWGuVqlnk81Sux7CYXlJVB1r0DtGExAaPh5N81V5NCmgJiEHl+fsGnI3Jjd8
         Dcpow/3i8BGPXGP1m9Zi86eqSovL8N6Ec5ecGCLLKxyfWYb0LMtPUp6bbs+/eqFCZMMv
         NdCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1mNuTGw6QCJ1rVyIZY1Ms361jxEOonZzcPnEb1PlR7s=;
        b=P2i+TK4yWYl/FsFdb6ZGHQOz+U/aHEnu/GMGmWJe+drc1L7il61BCTEoWvh5xJLLvG
         hluABqoLGawa6hWCcXIxolWbWSPIhDEwdd7FdiV+86kr9JcHFvc6bzUpyV+2DzM7bvii
         shXs25jH98Kd+nRF+TCZwyyHP7LTUX44e53gjTolmrNm2lEU8bkR/CrM9FV1W4ZGj4Be
         IV4v67L08uS6jBDxc5/pZDse4Hdu7qjqIfhjjR3RT27GmKIenRBSbmtPuRnwZkTqeKun
         hwfMwNl5ONa+GOFn4S4JhlM/x7KGwoOzWh5KGfhJMMKMbFl8sRwiv4Bga7RONX4Olp+b
         58Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TIttP2sm;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com. [2607:f8b0:4864:20::b36])
        by gmr-mx.google.com with ESMTPS id j25si8088vsq.2.2021.02.09.14.00.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 14:00:41 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) client-ip=2607:f8b0:4864:20::b36;
Received: by mail-yb1-xb36.google.com with SMTP id p186so2370379ybg.2
        for <clang-built-linux@googlegroups.com>; Tue, 09 Feb 2021 14:00:41 -0800 (PST)
X-Received: by 2002:a25:37c4:: with SMTP id e187mr13125154yba.347.1612908040498;
 Tue, 09 Feb 2021 14:00:40 -0800 (PST)
MIME-Version: 1.0
References: <20210209034416.GA1669105@ubuntu-m3-large-x86> <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86> <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86> <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava> <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava>
In-Reply-To: <YCMEucGZVPPQuxWw@krava>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 9 Feb 2021 14:00:29 -0800
Message-ID: <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
To: Jiri Olsa <jolsa@redhat.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Veronika Kabatova <vkabatov@redhat.com>, Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TIttP2sm;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Tue, Feb 9, 2021 at 1:55 PM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Tue, Feb 09, 2021 at 12:59:51PM -0800, Andrii Nakryiko wrote:
> > On Tue, Feb 9, 2021 at 7:09 AM Jiri Olsa <jolsa@redhat.com> wrote:
> > >
> > > On Tue, Feb 09, 2021 at 01:36:41PM +0100, Jiri Olsa wrote:
> > > > On Tue, Feb 09, 2021 at 12:49:04AM -0700, Nathan Chancellor wrote:
> > > > > On Mon, Feb 08, 2021 at 10:56:36PM -0800, Andrii Nakryiko wrote:
> > > > > > On Mon, Feb 8, 2021 at 10:13 PM Andrii Nakryiko
> > > > > > <andrii.nakryiko@gmail.com> wrote:
> > > > > > >
> > > > > > > On Mon, Feb 8, 2021 at 10:09 PM Andrii Nakryiko
> > > > > > > <andrii.nakryiko@gmail.com> wrote:
> > > > > > > >
> > > > > > > > On Mon, Feb 8, 2021 at 9:23 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > > > > > > >
> > > > > > > > > On Mon, Feb 08, 2021 at 08:45:43PM -0800, Andrii Nakryiko wrote:
> > > > > > > > > > On Mon, Feb 8, 2021 at 7:44 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > > > > > > > > >
> > > > > > > > > > > Hi all,
> > > > > > > > > > >
> > > > > > > > > > > Recently, an issue with CONFIG_DEBUG_INFO_BTF was reported for arm64:
> > > > > > > > > > > https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/E7cu5BwbBAAJ
> > > > > > > > > > >
> > > > > > > > > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > > > > > > > > >                       LLVM=1 O=build/aarch64 defconfig
> > > > > > > > > > >
> > > > > > > > > > > $ scripts/config \
> > > > > > > > > > >     --file build/aarch64/.config \
> > > > > > > > > > >     -e BPF_SYSCALL \
> > > > > > > > > > >     -e DEBUG_INFO_BTF \
> > > > > > > > > > >     -e FTRACE \
> > > > > > > > > > >     -e FUNCTION_TRACER
> > > > > > > > > > >
> > > > > > > > > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > > > > > > > > >                       LLVM=1 O=build/aarch64 olddefconfig all
> > > > > > > > > > > ...
> > > > > > > > > > > FAILED unresolved symbol vfs_truncate
> > > > > > > > > > > ...
> > > > > > > > > > >
> > > > > > > > > > > My bisect landed on commit 6e22ab9da793 ("bpf: Add d_path helper")
> > > > > > > > > > > although that seems obvious given that is what introduced
> > > > > > > > > > > BTF_ID(func, vfs_truncate).
> > > > > > > > > > >
> > > > > > > > > > > I am using the latest pahole v1.20 and LLVM is at
> > > > > > > > > > > https://github.com/llvm/llvm-project/commit/14da287e18846ea86e45b421dc47f78ecc5aa7cb
> > > > > > > > > > > although I can reproduce back to LLVM 10.0.1, which is the earliest
> > > > > > > > > > > version that the kernel supports. I am very unfamiliar with BPF so I
> > > > > > > > > > > have no idea what is going wrong here. Is this a known issue?
> > > > > > > > > > >
> > > > > > > > > >
> > > > > > > > > > I'll skip the reproduction games this time and will just request the
> > > > > > > > > > vmlinux image. Please upload somewhere so that we can look at DWARF
> > > > > > > > > > and see what's going on. Thanks.
> > > > > > > > > >
> > > > > > > > >
> > > > > > > > > Sure thing, let me know if this works. I uploaded in two places to make
> > > > > > > > > it easier to grab:
> > > > > > > > >
> > > > > > > > > zstd compressed:
> > > > > > > > > https://github.com/nathanchance/bug-files/blob/3b2873751e29311e084ae2c71604a1963f5e1a48/btf-aarch64/vmlinux.zst
> > > > > > > > >
> > > > > > > >
> > > > > > > > Thanks. I clearly see at least one instance of seemingly well-formed
> > > > > > > > vfs_truncate DWARF declaration. Also there is a proper ELF symbol for
> > > > > > > > it. Which means it should have been generated in BTF, but it doesn't
> > > > > > > > appear to be, so it does seem like a pahole bug. I (or someone else
> > > > > > > > before me) will continue tomorrow.
> > > > > > > >
> > > > > > > > $ llvm-dwarfdump vmlinux
> > > > > > > > ...
> > > > > > > >
> > > > > > > > 0x00052e6f:   DW_TAG_subprogram
> > > > > > > >                 DW_AT_name      ("vfs_truncate")
> > > > > > > >                 DW_AT_decl_file
> > > > > > > > ("/home/nathan/cbl/src/linux/include/linux/fs.h")
> > > > > > > >                 DW_AT_decl_line (2520)
> > > > > > > >                 DW_AT_prototyped        (true)
> > > > > > > >                 DW_AT_type      (0x000452cb "long int")
> > > > > > > >                 DW_AT_declaration       (true)
> > > > > > > >                 DW_AT_external  (true)
> > > > > > > >
> > > > > > > > 0x00052e7b:     DW_TAG_formal_parameter
> > > > > > > >                   DW_AT_type    (0x00045fc6 "const path*")
> > > > > > > >
> > > > > > > > 0x00052e80:     DW_TAG_formal_parameter
> > > > > > > >                   DW_AT_type    (0x00045213 "long long int")
> > > > > > > >
> > > > > > > > ...
> > > > > > > >
> > > > > > >
> > > > > > > ... and here's the *only* other one (not marked as declaration, but I
> > > > > > > thought we already handle that, Jiri?):
> > > > > > >
> > > > > > > 0x01d0da35:   DW_TAG_subprogram
> > > > > > >                 DW_AT_low_pc    (0xffff80001031f430)
> > > > > > >                 DW_AT_high_pc   (0xffff80001031f598)
> > > > > > >                 DW_AT_frame_base        (DW_OP_reg29)
> > > > > > >                 DW_AT_GNU_all_call_sites        (true)
> > > > > > >                 DW_AT_name      ("vfs_truncate")
> > > > > > >                 DW_AT_decl_file ("/home/nathan/cbl/src/linux/fs/open.c")
> > > > > > >                 DW_AT_decl_line (69)
> > > > > > >                 DW_AT_prototyped        (true)
> > > > > > >                 DW_AT_type      (0x01cfdfe4 "long int")
> > > > > > >                 DW_AT_external  (true)
> > > > > > >
> > > > > >
> > > > > > Ok, the problem appears to be not in DWARF, but in mcount_loc data.
> > > > > > vfs_truncate's address is not recorded as ftrace-attachable, and thus
> > > > > > pahole ignores it. I don't know why this happens and it's quite
> > > > > > strange, given vfs_truncate is just a normal global function.
> > > >
> > > > right, I can't see it in mcount adresses.. but it begins with instructions
> > > > that appears to be nops, which would suggest it's traceable
> > > >
> > > >       ffff80001031f430 <vfs_truncate>:
> > > >       ffff80001031f430: 5f 24 03 d5   hint    #34
> > > >       ffff80001031f434: 1f 20 03 d5   nop
> > > >       ffff80001031f438: 1f 20 03 d5   nop
> > > >       ffff80001031f43c: 3f 23 03 d5   hint    #25
> > > >
> > > > > >
> > > > > > I'd like to understand this issue before we try to fix it, but there
> > > > > > is at least one improvement we can make: pahole should check ftrace
> > > > > > addresses only for static functions, not the global ones (global ones
> > > > > > should be always attachable, unless they are special, e.g., notrace
> > > > > > and stuff). We can easily check that by looking at the corresponding
> > > > > > symbol. But I'd like to verify that vfs_truncate is ftrace-attachable
> > >
> > > I'm still trying to build the kernel.. however ;-)
> > >
> > > patch below adds the ftrace check only for static functions
> > > and lets the externa go through.. but as you said, in this
> > > case we'll need to figure out the 'notrace' and other checks
> > > ftrace is doing
> > >
> > > jirka
> > >
> > >
> > > ---
> > > diff --git a/btf_encoder.c b/btf_encoder.c
> > > index b124ec20a689..4d147406cfa5 100644
> > > --- a/btf_encoder.c
> > > +++ b/btf_encoder.c
> > > @@ -734,7 +734,7 @@ int cu__encode_btf(struct cu *cu, int verbose, bool force,
> > >                         continue;
> > >                 if (!has_arg_names(cu, &fn->proto))
> > >                         continue;
> > > -               if (functions_cnt) {
> > > +               if (!fn->external && functions_cnt) {
> >
> > I wouldn't trust DWARF, honestly. Wouldn't checking GLOBAL vs LOCAL
> > FUNC ELF symbol be more reliable?
>
> that'd mean extra bsearch on each processed function,
> on the ther hand, we'are already slow ;-) I'll check
> how big the slowdown would be
>

We currently record addresses and do binary search. Now we need to
record address + size and still do binary search with a slightly
different semantics (find closest entry >= addr). Then just check that
it overlaps, taking into account the length of the function code. It
shouldn't result in a noticeable slowdown. Might be actually faster,
because we might avoid callback function call costs.

> jirka
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA%40mail.gmail.com.
