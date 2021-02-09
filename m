Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBR4JRSAQMGQE2RQAAHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA66315901
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 22:55:20 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id l7sf14215824pgj.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 13:55:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612907719; cv=pass;
        d=google.com; s=arc-20160816;
        b=cAeumgWL2DLyNuXgpTf5+Jg84upyAe9aF0X/jdJ4Ge3GA0G1qLTan7CLlIrufno29L
         K17LoRc0Dmq/bXVfVcqSHsv+jgsjATLbhzk2khQAc6MqqMVkbOpwojFVoGYW1IdsY7DZ
         trmwNujPvYPbXxzbiSVMQx02BAbSqmP6TOw6jnpdYqwpC+bPjYQ8gZmilPa/jxXxDTLF
         2VjdrTsn2tzywNhOYNV8emdKM8cyjS/v+410yISja2jCo5ghe7JgC/lnAB3FJ47Cv6rp
         ZruTaLHN44f6R6tPptOIujCeuQktX7GazUK7+0sHEel+FnjL4Sfiy9GQC1Yl5Izi9zBq
         sLBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kxBkGXnHc5gmm7RT+PXxsLzTpBX2Kf3ZKgJ8bSIAbTQ=;
        b=wqGwdcu6him/e69BqKRNfydk/6MSRE+jJm/oDuuXlM5sWdZ9LL7RkPEtizDBkRdVOb
         HS3SNuq3Zb0r/lXTj/lQp1aLc/A/Gtf06GbgqS0aZ917k9pQZhAjCg/rXunBvp2/ZIXa
         WT8Y6Dxz6f2lpjGdHtipxjfsZC/Uol4kMKuQNB+KelVtPE5C+RxB3O1QEhAMgPFZxgBr
         kJodAMdddVyYR/HfDlL+aajyAa80oMpeAsp+mqkTFWkbPYaKZrqhAHWAqe/ui4sRbeIg
         1uzsEdSpAmLhfEbJZl5opq8HVSRFdo5k0c1rVH2PQDPBa3QgujXpi1sq6NiW3pwVEzKd
         nIJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="YB/YCeKK";
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kxBkGXnHc5gmm7RT+PXxsLzTpBX2Kf3ZKgJ8bSIAbTQ=;
        b=badk8BbaLWl7I8HW/uGudbnTNxOe0cd+9MIkC4oVY3rBhpKbZ5lgZCA7clLMtyOzzm
         JXOFPxx/SDRGlKKTiAyf4TAjx3jvp3Ua3btL+IwbOppDkM8aev+qCaFa3I5mxW8wurbT
         0XISFh52H7e8kUG3QaYzVz4udeqqI9detV6N6Eyzm5VBnI3ohO9Xxesa5dcyVK/I9T5S
         r3tOdcbiE8BCOTQZWYQRCu0D3G57+BE39SxdrEKVpzYNFwGJl/GB+uZSV7sCo4q6Z28M
         vSqho5BN/WD6SS1ltm//unh08g2xP+rMDrw5hiE/gsf6T2Osua4LM4txbzQMl6g5n5b5
         Js2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kxBkGXnHc5gmm7RT+PXxsLzTpBX2Kf3ZKgJ8bSIAbTQ=;
        b=dA64q3Mider+3gRs2weX/8fEZK9ljcK3jWWkB4R5Nuc13hQFlAeUXSaG7H+j1NkKdr
         djCrm4eMeDcQ326M0I2A2uwWKswl1OejruP7eqyekoHd3uCUag2GxS9c6D08ThSDDqr1
         W5ZDfHseaVHoMOPlpbYtGMQDEAIi5KESGERGoHakAx1n2GYNMTdLQNj6mOesosFnFe6c
         OR8MjWCxS2S2kmeq08Zuw2pH6RqWyle5w4O/Pa6S0y7Y+nHqv/ca1bv1/pK0+mNjGf7A
         hF6yr/jBq79IRFBGwwoU+eSJR+5uPKb1DBk92dCn6D8BgI3XmdO20G4HVc4696cGqHxZ
         /csA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336HbjUToe7F/gTLiHdGWD9JzzFs96xuIGgRYsp/EuQo/M1sHHb
	rhLOjPnN8OP0TQU3zo+K8nM=
X-Google-Smtp-Source: ABdhPJyDyKTyjyhfGAnVhpnIGd3+MXG9dgjfn8YQoWmYSRXWyNikBPXCqDgn8kfx/UnTgY+xg44riA==
X-Received: by 2002:a65:520d:: with SMTP id o13mr28778pgp.57.1612907719129;
        Tue, 09 Feb 2021 13:55:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ba17:: with SMTP id s23ls2094549pjr.3.canary-gmail;
 Tue, 09 Feb 2021 13:55:18 -0800 (PST)
X-Received: by 2002:a17:902:7b96:b029:de:7ae6:b8db with SMTP id w22-20020a1709027b96b02900de7ae6b8dbmr22785198pll.0.1612907718436;
        Tue, 09 Feb 2021 13:55:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612907718; cv=none;
        d=google.com; s=arc-20160816;
        b=nr385AE0wdmRFuHi4bwy22lf24e0SmsVMSTINjgZCWeTBzJiWhsf2GIiRPIhgFXKOC
         ykBEk/rHfAlI4E/x8q7YSTJ3fLS0KP9fEDlcWEFwxeOdpDgKom6WVlZFZDlpWxfdrR7Z
         xKF9Kswu/UlxtA0SVHW2AGo9R67+nAKPPlIWW0gewfFP7Xv+m5S+U5/o1ELd8ahTgH/i
         M/ZZfUOkspmXW3kOQIWRdvQmY7AhkGTcGR/N2ZwtXH8eP+09byK0VHi4zt9aJKizsgO2
         1wTIWZ3kR4aY8CvolpCwkOkSzFa8VxdU08Ms4ae6A1VYacDYzwkEU+CEIIwSogvG2DM0
         C7bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=k0hty/1N2nNDoySj6uUiH4vrUX6CERHagjY1LtXvMBs=;
        b=Ak6Raf9E795l57qFeGqGqcDUUvRJuPQ81X+Za8KHa8/OL8fBuw6ljsKjJneqhuiTpH
         xcv7+dcFPHYU6xA7Umu5B8+ziTkuPj1RxO/x9v0tyKRGzMzOG99pjRsX5F+ACGGP2q+4
         HfuJNZ2xjBwkkxicyzanULe59kRpC4lT9sXHWnBCAYIa6EaxwMXMIpvcDEU4T4tw/6dT
         TfhB2HDsurScKp2uzDS08/I1ZWZtDcK7M/sHD7oUcTeu+z2yk5fd/ver40+DJY09d204
         QbhKWP5Lu8MZdhpWa7hRa8f394fzjoXT+aZRGig5YA3Mk0th4Rdp7mSaouT7EBfhoXQ5
         tXdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="YB/YCeKK";
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id a21si236441pjo.2.2021.02.09.13.55.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 13:55:18 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-309-CEflJrryPAu39YK5HzIMng-1; Tue, 09 Feb 2021 16:55:12 -0500
X-MC-Unique: CEflJrryPAu39YK5HzIMng-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC3E818A08C3;
	Tue,  9 Feb 2021 21:55:09 +0000 (UTC)
Received: from krava (unknown [10.40.192.77])
	by smtp.corp.redhat.com (Postfix) with SMTP id A6C44100164C;
	Tue,  9 Feb 2021 21:55:06 +0000 (UTC)
Date: Tue, 9 Feb 2021 22:55:05 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Veronika Kabatova <vkabatov@redhat.com>,
	Jiri Olsa <jolsa@kernel.org>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Message-ID: <YCMEucGZVPPQuxWw@krava>
References: <20210209034416.GA1669105@ubuntu-m3-large-x86>
 <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86>
 <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="YB/YCeKK";
       spf=pass (google.com: domain of jolsa@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Feb 09, 2021 at 12:59:51PM -0800, Andrii Nakryiko wrote:
> On Tue, Feb 9, 2021 at 7:09 AM Jiri Olsa <jolsa@redhat.com> wrote:
> >
> > On Tue, Feb 09, 2021 at 01:36:41PM +0100, Jiri Olsa wrote:
> > > On Tue, Feb 09, 2021 at 12:49:04AM -0700, Nathan Chancellor wrote:
> > > > On Mon, Feb 08, 2021 at 10:56:36PM -0800, Andrii Nakryiko wrote:
> > > > > On Mon, Feb 8, 2021 at 10:13 PM Andrii Nakryiko
> > > > > <andrii.nakryiko@gmail.com> wrote:
> > > > > >
> > > > > > On Mon, Feb 8, 2021 at 10:09 PM Andrii Nakryiko
> > > > > > <andrii.nakryiko@gmail.com> wrote:
> > > > > > >
> > > > > > > On Mon, Feb 8, 2021 at 9:23 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > > > > > >
> > > > > > > > On Mon, Feb 08, 2021 at 08:45:43PM -0800, Andrii Nakryiko wrote:
> > > > > > > > > On Mon, Feb 8, 2021 at 7:44 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > > > > > > > >
> > > > > > > > > > Hi all,
> > > > > > > > > >
> > > > > > > > > > Recently, an issue with CONFIG_DEBUG_INFO_BTF was reported for arm64:
> > > > > > > > > > https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/E7cu5BwbBAAJ
> > > > > > > > > >
> > > > > > > > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > > > > > > > >                       LLVM=1 O=build/aarch64 defconfig
> > > > > > > > > >
> > > > > > > > > > $ scripts/config \
> > > > > > > > > >     --file build/aarch64/.config \
> > > > > > > > > >     -e BPF_SYSCALL \
> > > > > > > > > >     -e DEBUG_INFO_BTF \
> > > > > > > > > >     -e FTRACE \
> > > > > > > > > >     -e FUNCTION_TRACER
> > > > > > > > > >
> > > > > > > > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > > > > > > > >                       LLVM=1 O=build/aarch64 olddefconfig all
> > > > > > > > > > ...
> > > > > > > > > > FAILED unresolved symbol vfs_truncate
> > > > > > > > > > ...
> > > > > > > > > >
> > > > > > > > > > My bisect landed on commit 6e22ab9da793 ("bpf: Add d_path helper")
> > > > > > > > > > although that seems obvious given that is what introduced
> > > > > > > > > > BTF_ID(func, vfs_truncate).
> > > > > > > > > >
> > > > > > > > > > I am using the latest pahole v1.20 and LLVM is at
> > > > > > > > > > https://github.com/llvm/llvm-project/commit/14da287e18846ea86e45b421dc47f78ecc5aa7cb
> > > > > > > > > > although I can reproduce back to LLVM 10.0.1, which is the earliest
> > > > > > > > > > version that the kernel supports. I am very unfamiliar with BPF so I
> > > > > > > > > > have no idea what is going wrong here. Is this a known issue?
> > > > > > > > > >
> > > > > > > > >
> > > > > > > > > I'll skip the reproduction games this time and will just request the
> > > > > > > > > vmlinux image. Please upload somewhere so that we can look at DWARF
> > > > > > > > > and see what's going on. Thanks.
> > > > > > > > >
> > > > > > > >
> > > > > > > > Sure thing, let me know if this works. I uploaded in two places to make
> > > > > > > > it easier to grab:
> > > > > > > >
> > > > > > > > zstd compressed:
> > > > > > > > https://github.com/nathanchance/bug-files/blob/3b2873751e29311e084ae2c71604a1963f5e1a48/btf-aarch64/vmlinux.zst
> > > > > > > >
> > > > > > >
> > > > > > > Thanks. I clearly see at least one instance of seemingly well-formed
> > > > > > > vfs_truncate DWARF declaration. Also there is a proper ELF symbol for
> > > > > > > it. Which means it should have been generated in BTF, but it doesn't
> > > > > > > appear to be, so it does seem like a pahole bug. I (or someone else
> > > > > > > before me) will continue tomorrow.
> > > > > > >
> > > > > > > $ llvm-dwarfdump vmlinux
> > > > > > > ...
> > > > > > >
> > > > > > > 0x00052e6f:   DW_TAG_subprogram
> > > > > > >                 DW_AT_name      ("vfs_truncate")
> > > > > > >                 DW_AT_decl_file
> > > > > > > ("/home/nathan/cbl/src/linux/include/linux/fs.h")
> > > > > > >                 DW_AT_decl_line (2520)
> > > > > > >                 DW_AT_prototyped        (true)
> > > > > > >                 DW_AT_type      (0x000452cb "long int")
> > > > > > >                 DW_AT_declaration       (true)
> > > > > > >                 DW_AT_external  (true)
> > > > > > >
> > > > > > > 0x00052e7b:     DW_TAG_formal_parameter
> > > > > > >                   DW_AT_type    (0x00045fc6 "const path*")
> > > > > > >
> > > > > > > 0x00052e80:     DW_TAG_formal_parameter
> > > > > > >                   DW_AT_type    (0x00045213 "long long int")
> > > > > > >
> > > > > > > ...
> > > > > > >
> > > > > >
> > > > > > ... and here's the *only* other one (not marked as declaration, but I
> > > > > > thought we already handle that, Jiri?):
> > > > > >
> > > > > > 0x01d0da35:   DW_TAG_subprogram
> > > > > >                 DW_AT_low_pc    (0xffff80001031f430)
> > > > > >                 DW_AT_high_pc   (0xffff80001031f598)
> > > > > >                 DW_AT_frame_base        (DW_OP_reg29)
> > > > > >                 DW_AT_GNU_all_call_sites        (true)
> > > > > >                 DW_AT_name      ("vfs_truncate")
> > > > > >                 DW_AT_decl_file ("/home/nathan/cbl/src/linux/fs/open.c")
> > > > > >                 DW_AT_decl_line (69)
> > > > > >                 DW_AT_prototyped        (true)
> > > > > >                 DW_AT_type      (0x01cfdfe4 "long int")
> > > > > >                 DW_AT_external  (true)
> > > > > >
> > > > >
> > > > > Ok, the problem appears to be not in DWARF, but in mcount_loc data.
> > > > > vfs_truncate's address is not recorded as ftrace-attachable, and thus
> > > > > pahole ignores it. I don't know why this happens and it's quite
> > > > > strange, given vfs_truncate is just a normal global function.
> > >
> > > right, I can't see it in mcount adresses.. but it begins with instructions
> > > that appears to be nops, which would suggest it's traceable
> > >
> > >       ffff80001031f430 <vfs_truncate>:
> > >       ffff80001031f430: 5f 24 03 d5   hint    #34
> > >       ffff80001031f434: 1f 20 03 d5   nop
> > >       ffff80001031f438: 1f 20 03 d5   nop
> > >       ffff80001031f43c: 3f 23 03 d5   hint    #25
> > >
> > > > >
> > > > > I'd like to understand this issue before we try to fix it, but there
> > > > > is at least one improvement we can make: pahole should check ftrace
> > > > > addresses only for static functions, not the global ones (global ones
> > > > > should be always attachable, unless they are special, e.g., notrace
> > > > > and stuff). We can easily check that by looking at the corresponding
> > > > > symbol. But I'd like to verify that vfs_truncate is ftrace-attachable
> >
> > I'm still trying to build the kernel.. however ;-)
> >
> > patch below adds the ftrace check only for static functions
> > and lets the externa go through.. but as you said, in this
> > case we'll need to figure out the 'notrace' and other checks
> > ftrace is doing
> >
> > jirka
> >
> >
> > ---
> > diff --git a/btf_encoder.c b/btf_encoder.c
> > index b124ec20a689..4d147406cfa5 100644
> > --- a/btf_encoder.c
> > +++ b/btf_encoder.c
> > @@ -734,7 +734,7 @@ int cu__encode_btf(struct cu *cu, int verbose, bool force,
> >                         continue;
> >                 if (!has_arg_names(cu, &fn->proto))
> >                         continue;
> > -               if (functions_cnt) {
> > +               if (!fn->external && functions_cnt) {
> 
> I wouldn't trust DWARF, honestly. Wouldn't checking GLOBAL vs LOCAL
> FUNC ELF symbol be more reliable?

that'd mean extra bsearch on each processed function,
on the ther hand, we'are already slow ;-) I'll check
how big the slowdown would be

jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCMEucGZVPPQuxWw%40krava.
