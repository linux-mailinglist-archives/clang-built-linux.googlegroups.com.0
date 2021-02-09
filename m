Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBZ4DRKAQMGQERTWC7TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD48314EFD
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 13:36:56 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id u9sf9408133oon.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 04:36:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612874215; cv=pass;
        d=google.com; s=arc-20160816;
        b=WzTJZT0tOIYParHJYrKQ2chd1cXEoLYkuX6ZTAzF60NZtTP7iR5WYKhAxchI+m0OpL
         462mxuoHXYofPNBG4zmQU3Ov7z10/Ycn6MZveNITr2mDJmhMGzVbKR/ZwfsJ5EqjM/AE
         97bS/95ts94tTYoOiYUNJRwsi3BekG3Cx72FBxnvbGv8oOf4JX7OgR0Zb1C7+bydghTE
         2OgidQtpJPUl3HBOXNi39emB8kCszNKFIRlLmaIWbxrTDsYyZB/XrQgyRDGWGeHJhghs
         7Qy/2v4VaxACPBdjW3xxU42muXAnOS00893am/pHqbxEtL13BVIx8Ico4UxrtVQpQ3sU
         aQ3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vz3vqqDYWlcm6X1FA6rZONretNkHrCJk8IiStK7E9UY=;
        b=hOw8c4i1m48f5TEnyUQbqzLLLDrNvrSIqQKUgnilex3BF141RIjMrVWEXHB7KYDW4T
         ZCJM2m5mprC37d1vYthG//QaJJftm80IP6ivx5MsJnEuA0B09XgML2a9iyVDrleo+bI9
         GQNMujckWmACUeKV/Svn6aE7zsURNCnE4YyLDHuqS8y0MUWKMSEKx/GllXGmUVNL5x7V
         +Jub08JlDk9PQxUvfkcOswelG6AZlY5ixI/WH9hjJ2ViHHCIiE3puUF2cjoY5roJcPp5
         gW6kYZZAxzjnx90d3gSuyBuLyklasHgr41XpdgXE9mWUOTficNWT/0UQrp32NueGCYlr
         HknQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=adlfWkMZ;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vz3vqqDYWlcm6X1FA6rZONretNkHrCJk8IiStK7E9UY=;
        b=GQ9Gpgnd6oE0zv763rFoPP4N8gHloozq0t23Mkb+zRKSgO+bQYvimp6+8LaUBjcgmC
         CyVHBeOKMOlc59TWrJtsqIvTTG729dEKnfh03cPbiVUgkGVJqT54WExHg0hbfCeqx03S
         TXhjSsJtEvufgouc4owFBTxa7tsnvcyGBleOhPw+shabikUOeo1Y958/bbiGYucnDoGz
         H+DHEDPJK4n5l+jzbNtQXMY/EW9tEAIcPyCaDLcV0L0LdiOBpfznPbM0aCjUsAXi+eIV
         CCLTRL9IGJ9qb25Rc3enxDQb80q0DdqWqO4001B+ONlekhDDDTLad1JjwSa03uLbkpfu
         YT7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vz3vqqDYWlcm6X1FA6rZONretNkHrCJk8IiStK7E9UY=;
        b=r7NVyYQAU+y4Cf7JVAEpmuZzCgX4a6fL2n9vpBrNHeqH3WIgQuJXad4gLAiE0Xr9AP
         3T4ACpSqIV7DX0KiQ6nVBYqWpM5kU/+KdgxlUaR0zhFueW7BjYoRMoNZ9pnx5Br5Xdr7
         DZb5cb6DUB/Wv2lka28Xvp04uY9/eRcYl2YGEyDydz7UBPBfxup3G3XNpjzrOc37ddGw
         1fZ7/gUT95jL5PDWMA4m9ym8uwU5/ZlUyD+qIh6ueO3FYZQm3FJIctX9A/OMJ8s9/26F
         35ScHWKlYh4LpneJwOAjk4BnFp5ShqfwZGds+bsQXLKO7/4BTDdLQVKa0ZGi9Vm7fzYs
         RCqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325yfpqb9s//F8aiOF7fgWltjY70zOifjJye1kO4DFqxH6ChCAE
	65of0+Np0pB5qXDUlz6tBcg=
X-Google-Smtp-Source: ABdhPJzNp4Q9xcEKJHTZaIrr9pYf+K2bu7NzMlunEh86tjwyobYpx/L/h1aPzjYpkV9uLsZQxQ8hSw==
X-Received: by 2002:a9d:2941:: with SMTP id d59mr14940432otb.40.1612874215370;
        Tue, 09 Feb 2021 04:36:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:2d3:: with SMTP id a19ls844063oid.4.gmail; Tue, 09
 Feb 2021 04:36:55 -0800 (PST)
X-Received: by 2002:a05:6808:21a:: with SMTP id l26mr2213250oie.42.1612874214920;
        Tue, 09 Feb 2021 04:36:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612874214; cv=none;
        d=google.com; s=arc-20160816;
        b=bjURDkO1ZWYhkrnaGUjDtf+0Bp4n7rqRuoJcbe2RQre7YhZ7UlHVkHhDY652XEymSZ
         zJtrbjqdRIFFoBPfDwQjhWstu4041X+O+5l1a9DpFj6g8S6BklvqbdjK4dsQMy4FDE14
         ekN0JK6VK+2bFEUsVnffQyail4apgXvzUUDoyfvNKVM6N6GwauGgLtL3dnX/4l437AmE
         voON8hI4njroGmDagSJOGoT+rVfPpoMzSB73asc1DuxoXGem5pzvovQzTocATmwpf9fh
         ZVcyC/OPb3BOGxUt+IvaVVYSiG73GRfOCNkwlvCVBFGCRmlxQ2mCLg7n4+E9U/7afXy9
         yg2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eulVAMoLgsuddyX2bCd+R+0WX0Ut6HY0WT7Kb2ZLf3w=;
        b=OgsnWRnLQbFhcul7uoHh9XqU2yJWZdV5HANy9rb4f8p1MlktXd5Bzk0wO4w6qvbcSl
         VztMj1/HDG+ExNdWO6LIgYPhNNsC5y2HCpApx3gqiJQV+Syxd6AfICSSgzaitrdAyJBZ
         505dpwyimuQftQTFcT38KQnmAGyZ7ixJKRGLnpqVRI+haFywSRHDFmTkHAzOE3PtX1D3
         gW1zU1ehaMLEOx3IcQ2gnDxOimIKNS+DNav4h/Z8yCTKg9dCj4WZE5bof8TuaU4updrm
         +31NOWJAFr9tqTez4aC6Ndrsl7x6Oi885IU3A/6AaYsATwmmZKgFoqQN4MbxzcCZmxYi
         tqMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=adlfWkMZ;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id m7si1377856otq.5.2021.02.09.04.36.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 04:36:54 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-340-tNzawCiWNlSngklNyFLHRw-1; Tue, 09 Feb 2021 07:36:43 -0500
X-MC-Unique: tNzawCiWNlSngklNyFLHRw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B344ABBEED;
	Tue,  9 Feb 2021 12:36:41 +0000 (UTC)
Received: from krava (unknown [10.40.196.4])
	by smtp.corp.redhat.com (Postfix) with SMTP id 4577A5D6D7;
	Tue,  9 Feb 2021 12:36:38 +0000 (UTC)
Date: Tue, 9 Feb 2021 13:36:37 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
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
Message-ID: <YCKB1TF5wz93EIBK@krava>
References: <20210209034416.GA1669105@ubuntu-m3-large-x86>
 <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86>
 <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210209074904.GA286822@ubuntu-m3-large-x86>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=adlfWkMZ;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Tue, Feb 09, 2021 at 12:49:04AM -0700, Nathan Chancellor wrote:
> On Mon, Feb 08, 2021 at 10:56:36PM -0800, Andrii Nakryiko wrote:
> > On Mon, Feb 8, 2021 at 10:13 PM Andrii Nakryiko
> > <andrii.nakryiko@gmail.com> wrote:
> > >
> > > On Mon, Feb 8, 2021 at 10:09 PM Andrii Nakryiko
> > > <andrii.nakryiko@gmail.com> wrote:
> > > >
> > > > On Mon, Feb 8, 2021 at 9:23 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > > >
> > > > > On Mon, Feb 08, 2021 at 08:45:43PM -0800, Andrii Nakryiko wrote:
> > > > > > On Mon, Feb 8, 2021 at 7:44 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > > > > >
> > > > > > > Hi all,
> > > > > > >
> > > > > > > Recently, an issue with CONFIG_DEBUG_INFO_BTF was reported for arm64:
> > > > > > > https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/E7cu5BwbBAAJ
> > > > > > >
> > > > > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > > > > >                       LLVM=1 O=build/aarch64 defconfig
> > > > > > >
> > > > > > > $ scripts/config \
> > > > > > >     --file build/aarch64/.config \
> > > > > > >     -e BPF_SYSCALL \
> > > > > > >     -e DEBUG_INFO_BTF \
> > > > > > >     -e FTRACE \
> > > > > > >     -e FUNCTION_TRACER
> > > > > > >
> > > > > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > > > > >                       LLVM=1 O=build/aarch64 olddefconfig all
> > > > > > > ...
> > > > > > > FAILED unresolved symbol vfs_truncate
> > > > > > > ...
> > > > > > >
> > > > > > > My bisect landed on commit 6e22ab9da793 ("bpf: Add d_path helper")
> > > > > > > although that seems obvious given that is what introduced
> > > > > > > BTF_ID(func, vfs_truncate).
> > > > > > >
> > > > > > > I am using the latest pahole v1.20 and LLVM is at
> > > > > > > https://github.com/llvm/llvm-project/commit/14da287e18846ea86e45b421dc47f78ecc5aa7cb
> > > > > > > although I can reproduce back to LLVM 10.0.1, which is the earliest
> > > > > > > version that the kernel supports. I am very unfamiliar with BPF so I
> > > > > > > have no idea what is going wrong here. Is this a known issue?
> > > > > > >
> > > > > >
> > > > > > I'll skip the reproduction games this time and will just request the
> > > > > > vmlinux image. Please upload somewhere so that we can look at DWARF
> > > > > > and see what's going on. Thanks.
> > > > > >
> > > > >
> > > > > Sure thing, let me know if this works. I uploaded in two places to make
> > > > > it easier to grab:
> > > > >
> > > > > zstd compressed:
> > > > > https://github.com/nathanchance/bug-files/blob/3b2873751e29311e084ae2c71604a1963f5e1a48/btf-aarch64/vmlinux.zst
> > > > >
> > > >
> > > > Thanks. I clearly see at least one instance of seemingly well-formed
> > > > vfs_truncate DWARF declaration. Also there is a proper ELF symbol for
> > > > it. Which means it should have been generated in BTF, but it doesn't
> > > > appear to be, so it does seem like a pahole bug. I (or someone else
> > > > before me) will continue tomorrow.
> > > >
> > > > $ llvm-dwarfdump vmlinux
> > > > ...
> > > >
> > > > 0x00052e6f:   DW_TAG_subprogram
> > > >                 DW_AT_name      ("vfs_truncate")
> > > >                 DW_AT_decl_file
> > > > ("/home/nathan/cbl/src/linux/include/linux/fs.h")
> > > >                 DW_AT_decl_line (2520)
> > > >                 DW_AT_prototyped        (true)
> > > >                 DW_AT_type      (0x000452cb "long int")
> > > >                 DW_AT_declaration       (true)
> > > >                 DW_AT_external  (true)
> > > >
> > > > 0x00052e7b:     DW_TAG_formal_parameter
> > > >                   DW_AT_type    (0x00045fc6 "const path*")
> > > >
> > > > 0x00052e80:     DW_TAG_formal_parameter
> > > >                   DW_AT_type    (0x00045213 "long long int")
> > > >
> > > > ...
> > > >
> > >
> > > ... and here's the *only* other one (not marked as declaration, but I
> > > thought we already handle that, Jiri?):
> > >
> > > 0x01d0da35:   DW_TAG_subprogram
> > >                 DW_AT_low_pc    (0xffff80001031f430)
> > >                 DW_AT_high_pc   (0xffff80001031f598)
> > >                 DW_AT_frame_base        (DW_OP_reg29)
> > >                 DW_AT_GNU_all_call_sites        (true)
> > >                 DW_AT_name      ("vfs_truncate")
> > >                 DW_AT_decl_file ("/home/nathan/cbl/src/linux/fs/open.c")
> > >                 DW_AT_decl_line (69)
> > >                 DW_AT_prototyped        (true)
> > >                 DW_AT_type      (0x01cfdfe4 "long int")
> > >                 DW_AT_external  (true)
> > >
> > 
> > Ok, the problem appears to be not in DWARF, but in mcount_loc data.
> > vfs_truncate's address is not recorded as ftrace-attachable, and thus
> > pahole ignores it. I don't know why this happens and it's quite
> > strange, given vfs_truncate is just a normal global function.

right, I can't see it in mcount adresses.. but it begins with instructions
that appears to be nops, which would suggest it's traceable

	ffff80001031f430 <vfs_truncate>:
	ffff80001031f430: 5f 24 03 d5   hint    #34
	ffff80001031f434: 1f 20 03 d5   nop
	ffff80001031f438: 1f 20 03 d5   nop
	ffff80001031f43c: 3f 23 03 d5   hint    #25

> > 
> > I'd like to understand this issue before we try to fix it, but there
> > is at least one improvement we can make: pahole should check ftrace
> > addresses only for static functions, not the global ones (global ones
> > should be always attachable, unless they are special, e.g., notrace
> > and stuff). We can easily check that by looking at the corresponding
> > symbol. But I'd like to verify that vfs_truncate is ftrace-attachable
> > for that particular kernel. For that we'll need Nathan's cooperation,
> > unless someone else can build an arm64 kernel with the same problem
> > and check.

I'm building on arm now, let's see

> 
> Sure, just let me know what I need to do and I can do it!


could you please verify that you don't see vfs_truncate in
available_filter_functions?

 # cat /sys/kernel/debug/tracing/available_filter_functions | grep vfs_truncate

thanks,
jirka

> 
> Cheers,
> Nathan
> 
> > >
> > > > $ llvm-readelf -s vmlinux | rg vfs_truncate
> > > >  15013: ffff800011c22418     4 OBJECT  LOCAL  DEFAULT    24
> > > > __BTF_ID__func__vfs_truncate__609
> > > >  22531: ffff80001189fe0d     0 NOTYPE  LOCAL  DEFAULT    17
> > > > __kstrtab_vfs_truncate
> > > >  22532: ffff8000118a985b     0 NOTYPE  LOCAL  DEFAULT    17
> > > > __kstrtabns_vfs_truncate
> > > >  22534: ffff800011873b7c     0 NOTYPE  LOCAL  DEFAULT     8
> > > > __ksymtab_vfs_truncate
> > > > 176099: ffff80001031f430   360 FUNC    GLOBAL DEFAULT     2 vfs_truncate
> > > >
> > > > $ bpftool btf dump file vmlinux | rg vfs_truncate
> > > > <nothing>
> > > >
> > > > > uncompressed:
> > > > > https://1drv.ms/u/s!AsQNYeB-IEbqjQiUOspbEdXx49o7?e=ipA9Hv
> > > > >
> > > > > Cheers,
> > > > > Nathan
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bzax90hn_5axpnCpW%2BE6gVc1mtUgCXWqmxV0tJ4Ud7bsaA%40mail.gmail.com.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCKB1TF5wz93EIBK%40krava.
