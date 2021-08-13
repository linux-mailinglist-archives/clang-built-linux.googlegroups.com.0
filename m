Return-Path: <clang-built-linux+bncBD66FMGZA4INZ4O2RADBUBDKUQ6PE@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAE53EBBFF
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 20:24:29 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id h39-20020a0565123ca7b02903ba26e9bc4csf2920637lfv.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 11:24:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628879069; cv=pass;
        d=google.com; s=arc-20160816;
        b=ugwpefxO/obYfS7jY5Y3NqAJjjBbo6naegXkmsftrZ1NOaAQhsCibPIw0b7bJv7axh
         xArDtOLJoMlSvhniqbdqzzjA5Eqwd8CzuBkQkwv5gDreJIc79QqfJFW3dV+bWzBbUUFd
         /9VDz8f27YXM+WFNO4ocLxzZxadQ+a2tED/UGaYfqnsCdrOviZv9OdMIPU5ZeQw6Tyxs
         +TaN5SkFaBoZUC6iNp24vvIerONjQGgs+/SHrCJr48HDlDye1GM3nCN8vYHOawbumfPT
         ZQS+f0PESsULZfUBLZ8DaDlAougIxUHocV/untpnmCEwJC3tZmsSpRPsC6qcdJUuquDA
         Mlgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YiPjyxRHEaYAy3IbwoFTH1BZVBIvARAZ8wAHVXcDRWs=;
        b=E7NeLvj6MbCerkBzy6SMdl0YYkYcRBFHGXOU0ZUs/VIy0kxMMqdgJm0ic+OGKX8iIM
         2tQljBdrZF/GD92ViiV298sTbcBBcTfjXXghmbTW12KYo9mty49KRr27XOgZk9nYz507
         El/FvRD/lD+/PzYgcJ6Jk4GJ8zZ9XiHGP6jqdHWIgFrcsqMRKwGSOaPWJ8DVwqYC/xsJ
         FO5S72WNpQ8ODiNOK4TZEb6REPIx4S2r30hxgirgBRu7gFvUGaPU5qIboLkDU0p0ufc6
         qiFBVXf3N+tcBHcDyafAvQSYjDdaHfd7rj6s78dDPfa3TS02VxxDseRuArIIG8dfuJXC
         qoBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T4ogPSfD;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YiPjyxRHEaYAy3IbwoFTH1BZVBIvARAZ8wAHVXcDRWs=;
        b=ATaCT25NOlzV/6yMNq44seDNQqDx1VTROmcVhricjftRrTYstNWTmDb30iaXPBdPvM
         45QtMGRG7oQ26NpJBjlB2Dwb5WY4+N7VmgibYF5SwYooyE/9TaO3Ng/lW8QvZJpbF8wZ
         q3TUO3UeJdzssi7HFQI3RuZXRDT5VTiRG+iqcbRNroIQY7rFhmINljkm6xbJ8rfu0tc7
         EOK2wMGdKQLGnF8Nwn3eodR60D275ra/bsjsDBaLNBiII/3ZkL4U30I5gEwuhhdz1y5j
         fh2YaOgIqdnl04QH0yRl9ijistt/1VgDrmxXSxHm1RLgFpxMfbTL2H1u5ukkpL282TSa
         OtWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YiPjyxRHEaYAy3IbwoFTH1BZVBIvARAZ8wAHVXcDRWs=;
        b=WLREWXIksCCsu1zAfcXxxmUvDdBSafE5Syl3Fco7ody0e/4Y/fLRmGrf2MfSBjgCaB
         t4mR0Gkb0JxeSH3iNu5y3rLVHRzs3vC1Y6bG08sIXBWldvEyKO8P6uNiKj+xJ4lesCJY
         EBCPD9hExQ1LFmcEJ7GJxs7fctWilvDQQPvhgdo9XMwZ3IJrVNFGhEWeF4WsvQoIbcP2
         oZZylqkMzO/C6phhE7ZF3Z0nigD19knGChnsLQPJSlfIOEAdsStlU+HtZtHydcsoFfCx
         tDj77r9Ves7jNIuiewYqR7WXkPQekltfZ/IND/p3NIT5TUJD4xq/MRrY5d9DICZSaENC
         929g==
X-Gm-Message-State: AOAM532ZgrebVV/zx9R2upIgM2x7iUmgiRJ+XE0wib453f3U5Lnr6MF7
	m5XgKfi45+W7FufC0lHOuSY=
X-Google-Smtp-Source: ABdhPJwV8wZVK1h4PUwi/FqzictFfmLzvHw+MS4ur3Twe1ZwQAVdA4P4PLJFH3FVcDMrt9JKXIGgfQ==
X-Received: by 2002:a2e:8e86:: with SMTP id z6mr2798071ljk.222.1628879068972;
        Fri, 13 Aug 2021 11:24:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:691e:: with SMTP id e30ls597674lfc.0.gmail; Fri, 13 Aug
 2021 11:24:28 -0700 (PDT)
X-Received: by 2002:a19:f713:: with SMTP id z19mr2683077lfe.238.1628879068118;
        Fri, 13 Aug 2021 11:24:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628879068; cv=none;
        d=google.com; s=arc-20160816;
        b=cOY67Yk63NkxgI63aZEGaCmVT+2vxIdbB3ioqql56n1mFPlCxvq01FlkrFM7BTwJo8
         gYtuGI1LYQ5pnagrfH1+IgoOzhnHizaxm4fxDF5ZVu20zFvGRce8zO1vji8s5euwwJmq
         Dh81PWQvo7TR4JdtkjGc6N9mU63tMt8TTxZex+cDq6bN3Wi7fVcnpMdsLb9wgjtLziu4
         xa1G0u2Kk9XhX0X4LJXeYkqZSg5gLh9WeopBgxBOUnDQngALB6qhzrHtoSnzqVtlX4V5
         QzVQn3yJQoxx68K8HJdNBxfpKEcoRHZbxK67Z9RKx7wiwAJICZ4o8YvhXRyhOcfyHIKs
         rteQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IgSWlgrvg7Y/toinu9+8DguAJs62b7mo/FK1YGP/k+M=;
        b=KXPqSK171kTaci9BH5QPTsYu8AKk/dN6W61bkkGOzxpKmksZIyHIf3CiY6Gq5LhjS8
         XBhRDMrO2AaUCsG3RoTEarkLYkFKv763n5+Ywnir7SR2HyaqDIbB1JDPfFAtMLV2zvw5
         4h14jzSrOlAQOF3Z8aOLG6KWTX7UiLmpw8MvHgnAJj93jHoghneixAx6V8JGq8Brv4Hw
         Q4kJ89cU8+TnNKJDlet+N99b80CIofJuPJlxq8oy76SbeNmkOLtrw5eUwoL6U3hGFIHO
         H3wHoOccZYChCo0w+MishuH3fRgYt7Nw6M2Yb25nA/IrLAmePdF7NdxzVso1Tt65IMaK
         bglw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T4ogPSfD;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id u9si87704lfs.9.2021.08.13.11.24.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Aug 2021 11:24:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Received: by mail-ej1-x62b.google.com with SMTP id z20so19863412ejf.5
        for <clang-built-linux@googlegroups.com>; Fri, 13 Aug 2021 11:24:28 -0700 (PDT)
X-Received: by 2002:a17:906:f854:: with SMTP id ks20mr3839626ejb.421.1628879067322;
 Fri, 13 Aug 2021 11:24:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210812204951.1551782-1-morbo@google.com> <87sfzde8lk.fsf@linkitivity.dja.id.au>
In-Reply-To: <87sfzde8lk.fsf@linkitivity.dja.id.au>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Aug 2021 11:24:16 -0700
Message-ID: <CAGG=3QUz2LNgC8Hn6rU68ejjv4=J9Uidef0oH9A7=sKTs+vf7g@mail.gmail.com>
Subject: Re: [PATCH] ppc: add "-z notext" flag to disable diagnostic
To: Daniel Axtens <dja@axtens.net>, Fangrui Song <maskray@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, linuxppc-dev@lists.ozlabs.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=T4ogPSfD;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62b as
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

On Fri, Aug 13, 2021 at 7:13 AM Daniel Axtens <dja@axtens.net> wrote:
>
> Bill Wendling <morbo@google.com> writes:
>
> > The "-z notext" flag disables reporting an error if DT_TEXTREL is set on
> > PPC with CONFIG=kdump:
> >
> >   ld.lld: error: can't create dynamic relocation R_PPC64_ADDR64 against
> >     local symbol in readonly segment; recompile object files with -fPIC
> >     or pass '-Wl,-z,notext' to allow text relocations in the output
> >   >>> defined in built-in.a(arch/powerpc/kernel/misc.o)
> >   >>> referenced by arch/powerpc/kernel/misc.o:(.text+0x20) in archive
> >       built-in.a
> >
> > The BFD linker disables this by default (though it's configurable in
> > current versions). LLD enables this by default. So we add the flag to
> > keep LLD from emitting the error.
>
> You didn't provide a huge amount of context but I was able to reproduce
> a similar set of errors with pseries_le_defconfig and
>
My apologies for the lack of context. We discovered this issue when
moving to use LLD instead of BFD for our linker. This change suggested
by Fangrui Song. Here's his comments from
https://github.com/ClangBuiltLinux/linux/issues/811. (Nick Desaulniers
added a "Link" tag with his review.)

```
The text relocations are real. lld can link .tmp_vmlinux1 smoothly if
you pass -z notext. Though, it will still be insightful to investigate
where these text relocations come from. I believe there are only 2
categories.

(a) For a CONFIG_HAVE_ARCH_PREL32_RELOCATIONS=y build (x86 and arm64
select the option by default), ___ksymtab+* sections (non-SHF_WRITE)
contains entries relocated by PC relative relocations. These entries
do not need dynamic relocations.

out/powerpc64le/.config generated by ppc64le_defconfig does not enable
CONFIG_HAVE_ARCH_PREL32_RELOCATIONS=y.

% readelf -r out/x86_64/entry/entry_64.o
...
Relocation section '.rela___ksymtab+native_load_gs_index' at offset
0x6460 contains 2 entries:
    Offset             Info             Type               Symbol's
Value  Symbol's Name + Addend
0000000000000000  0000007a00000002 R_X86_64_PC32
0000000000000ea0 native_load_gs_index + 0
0000000000000004  0000001d00000002 R_X86_64_PC32
0000000000000000 __ksymtab_strings + 0

include/asm-generic/export.h

ld.lld: error: can't create dynamic relocation R_PPC64_ADDR64 against
local symbol in readonly segment; recompile object files with -fPIC or
pass '-Wl
,-z,notext' to allow text relocations in the output
>>> defined in init/built-in.a(do_mounts.o)
>>> referenced by do_mounts.c
>>>               do_mounts.o:(__ksymtab_name_to_dev_t) in archive init/built-in.a

(b) R_PPC64_ADDR64 in __mcount_loc sections.

ld.lld: error: can't create dynamic relocation R_PPC64_ADDR64 against
local symbol in readonly segment; recompile object files with -fPIC or
pass '-Wl
,-z,notext' to allow text relocations in the output
>>> defined in init/built-in.a(do_mounts_rd.o)
>>> referenced by do_mounts_rd.c
>>>               do_mounts_rd.o:(__mcount_loc+0x0) in archive init/built-in.a

This section is generated by ./scripts/recordmcount
"init/do_mounts_rd.o". The tool hard codes R_PPC64_ADDR64.

% grep PPC64 scripts/recordmcount.c
        case EM_PPC64:  reltype = R_PPC64_ADDR64; break;
```

> make ARCH=powerpc CROSS_COMPILE=powerpc64-linux-gnu- CC="ccache clang-11" LD=ld.lld-11 AR=llvm-ar-11 -j4 vmlinux
>
> I also checked the manpage, and indeed the system ld does not issue this
> warning/error by default.
>
It should be noted that the BFD linker can emit this warning/error if
binutils is configured with
"--enable-textrel-check={warning,error,yes}".

> > ---
> >  arch/powerpc/Makefile | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
> > index 6505d66f1193..17a9fbf9b789 100644
> > --- a/arch/powerpc/Makefile
> > +++ b/arch/powerpc/Makefile
> > @@ -122,6 +122,7 @@ endif
> >
> >  LDFLAGS_vmlinux-y := -Bstatic
> >  LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) := -pie
> > +LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) += -z notext
>
> Is there any reason this should be gated on CONFIG_RELOCATABLE? (I tried
> without it and got different but possibly related linker errors...)
>
My understanding is that '-z notext' allows (i.e. doesn't emit
warnings/errors for) relocations against read-only segments. So it's
not really relevant to non-relocatable builds.

Unrelated question: Should the "-pie" flag be added with "+= -pie"
(note the plus sign)?

> Also, is this behaviour new?
>
I don't believe so. It's only when we wanted to use LLD that it was noticed.

BTW, this patch should more properly be attributed to Fangrui Song. I
can send a follow-up patch that reflects this and adds more context to
the commit message.

-bw

> Kind regards,
> Daniel
>
> >  LDFLAGS_vmlinux      := $(LDFLAGS_vmlinux-y)
> >
> >  ifdef CONFIG_PPC64
> > --
> > 2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QUz2LNgC8Hn6rU68ejjv4%3DJ9Uidef0oH9A7%3DsKTs%2Bvf7g%40mail.gmail.com.
