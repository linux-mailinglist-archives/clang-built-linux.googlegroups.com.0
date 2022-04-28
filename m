Return-Path: <clang-built-linux+bncBCS7XUWOUULBB3HVVCJQMGQE2SJDWOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C0D512C18
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Apr 2022 08:57:49 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id z132-20020a63338a000000b003844e317066sf1982470pgz.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Apr 2022 23:57:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651129068; cv=pass;
        d=google.com; s=arc-20160816;
        b=x6jniy2w2WY+mEcz8HY3dJE8FbCMEH8HccaPd0m/x+Iw0SfKoymjjhJoxUX7VKeSGM
         tTqWtQHmFkKnOrysvzx8RySwVIy98+cDi+U1SfAqx7eQ9upQ7xhq/UbvYsQ7cVJ4tSgF
         +63ImbAFyQ13qYZ6PtpfL18jpqYMNejTeYNV8iZoJjlbL/h3FE0bj9cJFrViKmtREdCZ
         AyoieBwii+grQED2RRnnp4iC1UUfUsGSi3NZguQEApgigr9Y0xhQVMoiwCKQXI+3MXLu
         FLcRL1NV2n5N4Xk6ig2vd8tCQ3sYyPlTOPd2BfEKQOyqxWdYseRZBzStpBH6SFpNl47h
         vCiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=YZS96VkkkU1gWqahkjn+lV91hi1lg2HOh1tlTDr3X1I=;
        b=n7Dgga2zqtVZntUOXNGJKOvQZeo0PK7RbxJWnkb+vCfNgwrtpOOr6smewtY+7HTJoN
         e/wfJOrXy9a9EWgbyedPJLaNjmVgo6QCOMuH4MIfZSFR/B5Bz6TjvQqaRAoOz8y1gcwc
         50oArMrbCVViDE92kYWRZSxYOwsldPGyjtyxd9BhEIcI3KoQXUnjHqba33FPdURyylXA
         9GImKkCIucG+fx31CcJ5vlXoznJPF7LvAjvDXk9NDHSBvaoGIvjmKfL8gx7lSc3W60/l
         Q+acxuG0VIq2O8r+1/j61bbITo5t3b+UG0BWCYPjMZylcrlPh8O+N9xtZm+Gxnb6Xomq
         R4GQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=KYkXTkpf;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=YZS96VkkkU1gWqahkjn+lV91hi1lg2HOh1tlTDr3X1I=;
        b=UxwlwJQ4cUdR+w9grDGz6O4awnAm6/hJO9ls5N5JrZXziWdca6CUZdXkXtxBepjFC6
         cljUWTgP2g/Ay9M8EMa/k6ahfFVux3vlAZxPeUPl5J6WTg5Ls+xQLZNX2VPXMdNU+U05
         MHetFnMbhkrxC3HkIj7cE3rJ4px8tBh2xiWa5saRgAwbCWl4Nw3TCLbR8i27SjlzQLik
         RdPfiQZYkO7Qbfm4IEBP4e05PwffXAtYMzH3b1CJd/fnejCOQRDzUNLIgqaqU3O/kKvb
         ts8PfSsdjWejzUZrLJfFCEQeCScobSnwYNkfmsFKoLKnGZr0KbB6MHW+CkAiNeuzfTiy
         5UAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YZS96VkkkU1gWqahkjn+lV91hi1lg2HOh1tlTDr3X1I=;
        b=ceFMEggc23KrO3oWkHvAPn38XwjPl6u6GtZn0cd4UcQijGfIpngfXfkht92Ybdj9Xr
         BGPyXneMUPMbJdV5lqE05gHfiG+sF96p4qGEpybG9FxwZ8oO9ASb5CENM92DhROXFaKs
         ZTJft2wTv8dluHHusasJAgs2QPFzosF99UIqQSAzs+RRPhOSP/yNCf5vRAy9Zq05NPXt
         41xver+JdA2U269AcDn3D7Zd6ECNxMdjwvrVXDc6V372IakSgUdx9HAKB7Uq4vMdw0Vs
         IJOorxPoZPBn7z8v+jj1LV9je6PkGf7EtDSdq3yjOrqnTbmlcaKGMwv5DNdEcvP7siPL
         2k+w==
X-Gm-Message-State: AOAM532Q/U1ql9amu2nD4kK5TxTstshmTgGTd6KK6W+VmD4absdpDL6i
	WEj8s5WXz3qADNJWmk+pkVo=
X-Google-Smtp-Source: ABdhPJwImuS8aYQTBzJTkKu3LLrkcTxVu8GOR2KDSK3KY1cDTqAgoTRcQECpf+ISs57D7e1PKnyN6g==
X-Received: by 2002:a17:902:7298:b0:158:3a08:3163 with SMTP id d24-20020a170902729800b001583a083163mr31705794pll.133.1651129068187;
        Wed, 27 Apr 2022 23:57:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:da92:b0:15d:45d8:8f96 with SMTP id
 j18-20020a170902da9200b0015d45d88f96ls5038166plx.4.gmail; Wed, 27 Apr 2022
 23:57:47 -0700 (PDT)
X-Received: by 2002:a17:90a:ce13:b0:1d9:acbe:7ede with SMTP id f19-20020a17090ace1300b001d9acbe7edemr14241675pju.16.1651129067413;
        Wed, 27 Apr 2022 23:57:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651129067; cv=none;
        d=google.com; s=arc-20160816;
        b=m8mkt121vUr/0KcQxbV9ngaYVAByA+ePiQXuU18LJ4Q3YdayR1luxsoz/XNPdyU2tF
         mAclKh7fQHYExeKidMcEs9gQOo7jwLiPWFJBtYiUyLQbba+dd9zqXH9S2aHiFBoFe3z0
         e+k9K2qHCzpRTyJ7zgPhwG8IGm+QAkMV2pnZ2DOcuaIPSvwZZJ68wi2uDRbAO3zzld/n
         U7i1REQBcaocr1mR0wWCHfzyt61oD+UojlN1ufEoupciF+ijDCxarW/KvTV/AIaUOF2q
         HODt4TguhKRXGXWD8F2sKsY3YFfWjSld8EVFqegU/WTTuVabdaBQqEYZUl2S9A94RR3z
         3cAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=applOq61A1kPgrAqYMQ6DdRNoLWzc8K0I42SOGrOzNQ=;
        b=qlXFZLcl27InhpP6OCYwBYJaIROLQdrSBtr0G4BQrIE65doiS8WiUR0P3bFpTXBbio
         cd36HW+cyrHlGF/6xm67sqCwxJ75JVWn8kBxjsM3r4TcbkvTxLDXaYlVyDnRz+PwxV9x
         EHGMR6gfnTAbR4Wdxa2sEQ3IQ6sRXJ8Padkn2rhWO1hzPiBp6vvVGGm2rDN+6vXVe9Da
         m2kkYkuwDZB5MMU7wo0sUUzrHyvAdrMu0EtyJ3m5v4ygnnRGTx4dwKpx7sQu5a24LogV
         rBrh/exGbbDdQN1I8WkoxTbKmjfbomaiuS2uzL3+k+pkiX6wQcl3X+vxzkkM7YUcwT0s
         UETw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=KYkXTkpf;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id ls13-20020a17090b350d00b001d9ead4c0cbsi533538pjb.0.2022.04.27.23.57.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 23:57:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id b12so3554477plg.4
        for <clang-built-linux@googlegroups.com>; Wed, 27 Apr 2022 23:57:47 -0700 (PDT)
X-Received: by 2002:a17:90b:606:b0:1d9:5dd5:1489 with SMTP id gb6-20020a17090b060600b001d95dd51489mr24210556pjb.171.1651129066875;
        Wed, 27 Apr 2022 23:57:46 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:97d8:6a3e:53c0:230d])
        by smtp.gmail.com with ESMTPSA id v189-20020a622fc6000000b004fb72e95806sm20868781pfv.48.2022.04.27.23.57.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 23:57:46 -0700 (PDT)
Date: Wed, 27 Apr 2022 23:57:42 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [RFC PATCH 2/2] arm64: kernel: switch to PIE code generation for
 relocatable kernels
Message-ID: <20220428065742.rl3w5rz2ni2fhngl@google.com>
References: <20220427171241.2426592-1-ardb@kernel.org>
 <20220427171241.2426592-3-ardb@kernel.org>
 <20220428024030.gwxb746c5gwvcnw6@google.com>
 <CAMj1kXEW-KPVWqS33OX0Qw-EAeX+XfocHGisVw8gsb2k_KffJA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAMj1kXEW-KPVWqS33OX0Qw-EAeX+XfocHGisVw8gsb2k_KffJA@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=KYkXTkpf;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62c
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2022-04-28, Ard Biesheuvel wrote:
>On Thu, 28 Apr 2022 at 04:40, Fangrui Song <maskray@google.com> wrote:
>>
>> On 2022-04-27, Ard Biesheuvel wrote:
>> >We currently use ordinary, position dependent code generation for the
>> >core kernel, which happens to default to the 'small' code model on both
>> >GCC and Clang. This is the code model that relies on ADRP/ADD or
>> >ADRP/LDR pairs for symbol references, which are PC-relative with a range
>> >of -/+ 4 GiB, and therefore happen to be position independent in
>> >practice.
>> >
>> >This means that the fact that we can link the relocatable KASLR kernel
>> >using the -pie linker flag (which generates the runtime relocations and
>> >inserts them into the binary) is somewhat of a coincidence, and not
>> >something which is explicitly supported by the toolchains.
>>
>> Agree. The current -fno-PIE + -shared -Bsymbolic combo works as a
>> conincidence, not guaranteed by the toolchain.
>>
>> -shared needs -fpic object files. -shared -Bsymbolic is very similar to
>> -pie and therefore works with -fpie object files, but the usage is not
>> recommended from the toolchain perspective.
>>
>
>So are you suggesting we should also switch from -shared to -Bsymbol
>to -pie if we can? I don't remember the details, but IIRC ld.bfd
>didn't set the ELF binary type correctly, but perhaps this has now
>been fixed.

Yes, -shared -Bsymbolic => -pie, but that can be done later.

For e_type: ET_DYN, I think unlikely there was a bug.
-pie was added by binutils in 2003: it's close to -shared but doesn't
allow its definitions to be preempted/interposed. Code earlier than that
might use -shared -Bsymbolic before -pie was available.

>> >The reason we have not used -fpie for code generation so far (which is
>> >the compiler flag that should be used to generate code that is to be
>> >linked with -pie) is that by default, it generates code based on
>> >assumptions that only hold for shared libraries and PIE executables,
>> >i.e., that gathering all relocatable quantities into a Global Offset
>> >Table (GOT) is desirable because it reduces the CoW footprint, and
>> >because it permits ELF symbol preemption (which lets an executable
>> >override symbols defined in a shared library, in a way that forces the
>> >shared library to update all of its internal references as well).
>> >Ironically, this means we end up with many more absolute references that
>> >all need to be fixed up at boot.
>>
>> This is not about symbol preemption (when the executable and a shared
>> objectdefine the same symbol, which one wins). An executable using a GOT
>> which will be resolved to a shared object => this is regular relocation
>> resolving and there is no preemption.
>>
>> It is that the compiler prefers code generation which can avoid text
>> relocations / copy relocations / canonical PLT entries
>> (https://maskray.me/blog/2021-01-09-copy-relocations-canonical-plt-entries-and-protected#summary).
>>
>
>Fair enough. So the compiler cannot generate relative references to
>undefined external symbols since it doesn't know at codegen time
>whether the symbol reference will be satisfied by the executable
>itself or by a shared library, and in the latter case, the relative
>distance to the symbol is not known at build time, and so a runtime
>relocation is required.

Right.

>But how about references to symbols with
>external visibility that are defined in the same compilation unit? I
>don't quite understand why those references need to go via the GOT as
>well.

If you mean references to a non-local STV_DEFAULT (default visibility) definition =>

* -fpic: use GOT because the definition may be replaced by another at run time.
   Conservatively use a GOT-generating code sequence to allow potential symbol
   preemption(interposition). The linker may optimize out the GOT (x86-64
   GOTPCRELX, recent ld.lld for aarch64, powerpc64 TOC-indirect to
   TOC-relative optimization).
* -fpie or -fno-pie: the definition cannot be replaced. GOT is unneeded.

-fpie is an optimization on top of -fpic: (a) non-local STV_DEFAULT
definitions can be assumed non-interposable (b) (irrelevant to the
kernel) TLS can use more optimized models.

>> >Fortunately, we can convince the compiler to handle this in a way that
>> >is a bit more suitable for freestanding binaries such as the kernel, by
>> >setting the 'hidden' visibility #pragma, which informs the compiler that
>> >symbol preemption or CoW footprint are of no concern to us, and so
>> >PC-relative references that are resolved at link time are perfectly
>> >fine.
>>
>> Agree
>>
>
>The only unfortunate thing is that -fvisibility=hidden does not give
>us the behavior we want, and we are forced to use the #pragma instead.

Right. For a very long time there had been no option controlling the
access mode for undefined symbols (-fvisibility= is for defined
symbols).

I added -fdirect-access-external-data to Clang which supports
many architectures (x86, aarch64, arm, riscv, ...).
GCC's x86 port added -mdirect-extern-access in 2022-02 (not available on aarch64).

The use of `#pragma GCC visibility push(hidden)` looks good as a
portable solution.

>> >So let's enable this #pragma and build with -fpie when building a
>> >relocatable kernel. This also means that all constant data items that
>> >carry statically initialized pointer variables are now emitted into the
>> >.data.rel.ro* sections, so move these into .rodata where they belong.
>>
>> LGTM, except: is ".rodata" a typo? The patch doesn't reference .rodata
>>
>
>I am referring to the .rodata pseudo-segment that we have in the
>kernel, which runs from _etext to __inittext_begin.

OK

>> >Code size impact (GCC):
>> >
>> >Before:
>> >
>> >      text       data        bss      total filename
>> >  16712396   18659064     534556   35906016 vmlinux
>> >
>> >After:
>> >
>> >      text       data        bss      total filename
>> >  16804400   18612876     534556   35951832 vmlinux
>> >
>> >Code size impact (Clang):
>> >
>> >Before:
>> >
>> >      text       data        bss      total filename
>> >  17194584   13335060     535268   31064912 vmlinux
>> >
>> >After:
>> >
>> >      text       data        bss      total filename
>> >  17194536   13310032     535268   31039836 vmlinux

The size difference for Clang matches my expecation:)
I am somewhat surprised that data is smaller, though...

I wonder how GCC makes code bloated so much...

>> >Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>> >---
>> > arch/arm64/Makefile             | 4 ++++
>> > arch/arm64/kernel/vmlinux.lds.S | 9 ++++-----
>> > 2 files changed, 8 insertions(+), 5 deletions(-)
>> >
>> >diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
>> >index 2f1de88651e6..94b6c51f5de6 100644
>> >--- a/arch/arm64/Makefile
>> >+++ b/arch/arm64/Makefile
>> >@@ -18,6 +18,10 @@ ifeq ($(CONFIG_RELOCATABLE), y)
>> > # with the relocation offsets always being zero.
>> > LDFLAGS_vmlinux               += -shared -Bsymbolic -z notext \
>> >                       $(call ld-option, --no-apply-dynamic-relocs)
>> >+
>> >+# Generate position independent code without relying on a Global Offset Table
>> >+KBUILD_CFLAGS_KERNEL   += -fpie -include $(srctree)/include/linux/hidden.h
>> >+
>> > endif
>> >
>> > ifeq ($(CONFIG_ARM64_ERRATUM_843419),y)
>> >diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
>> >index edaf0faf766f..b1e071ac1acf 100644
>> >--- a/arch/arm64/kernel/vmlinux.lds.S
>> >+++ b/arch/arm64/kernel/vmlinux.lds.S
>> >@@ -174,8 +174,6 @@ SECTIONS
>> >                       KEXEC_TEXT
>> >                       TRAMP_TEXT
>> >                       *(.gnu.warning)
>> >-              . = ALIGN(16);
>> >-              *(.got)                 /* Global offset table          */
>> >       }
>> >
>> >       /*
>> >@@ -192,6 +190,8 @@ SECTIONS
>> >       /* everything from this point to __init_begin will be marked RO NX */
>> >       RO_DATA(PAGE_SIZE)
>> >
>> >+      .data.rel.ro : ALIGN(8) { *(.got) *(.data.rel.ro*) }
>> >+
>> >       HYPERVISOR_DATA_SECTIONS
>> >
>> >       idmap_pg_dir = .;
>> >@@ -273,6 +273,8 @@ SECTIONS
>> >       _sdata = .;
>> >       RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_ALIGN)
>> >
>> >+      .data.rel : ALIGN(8) { *(.data.rel*) }
>> >+
>> >       /*
>> >        * Data written with the MMU off but read with the MMU on requires
>> >        * cache lines to be invalidated, discarding up to a Cache Writeback
>> >@@ -320,9 +322,6 @@ SECTIONS
>> >               *(.plt) *(.plt.*) *(.iplt) *(.igot .igot.plt)
>> >       }
>> >       ASSERT(SIZEOF(.plt) == 0, "Unexpected run-time procedure linkages detected!")
>> >-
>> >-      .data.rel.ro : { *(.data.rel.ro) }
>> >-      ASSERT(SIZEOF(.data.rel.ro) == 0, "Unexpected RELRO detected!")
>> > }
>> >
>> > #include "image-vars.h"
>> >--
>> >2.30.2
>> >
>> >--
>> >You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> >To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> >To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220427171241.2426592-3-ardb%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220428065742.rl3w5rz2ni2fhngl%40google.com.
