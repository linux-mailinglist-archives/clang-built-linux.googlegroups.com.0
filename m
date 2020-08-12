Return-Path: <clang-built-linux+bncBCIO53XE7YHBBHXWZT4QKGQEXGM2NRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id E0ED524237B
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 02:43:11 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id k5sf127533ual.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 17:43:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597192990; cv=pass;
        d=google.com; s=arc-20160816;
        b=r4PX0Z3RAVnnknmYFalelWAxRPVnBqsdJn7FrJX8vF22qsKhtylO54e/SSY6kzg5/6
         40K9ZfNL6PK6ultgEq0FHoEtp6xqLnMxrgKHHvQZp7Bo6OHlu/TLW4/smGbk9XDCNeaX
         AyIe0YRGoOnQStytjL7lVFAh8ZBeaKaUIq+P+QuCFaT/sNSKpa81980qENE8eLLc/nyS
         ippOq1U/q100x3Zys/h9hl4ggldo04tFnnpQ/Kgspf8i1++pzCS0rz65MplghTS4O9DT
         JdYhL87J22XPkXQYeC9RUTh0CepOhdbMJ/uc48UayjCu8HKly7boVJfkfD0Lr2qEwyS5
         wQwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lpjBCpARc87T2xyRiyMWFvObLqQAHuqzmL9ViVeH+kE=;
        b=vfgogppNP1cWDNzfFAX9DncpQBio0hhzFzz5xQ7Gxw/yLVxifUtM+jNwzJrKV2tEEI
         HurarqNqnRvlngC8G2lDod/V0m9L4W3ZvGJUg37mMF839+zOUZpkoAt9wdMt4/BGNMz9
         3guxVZtFNgPF/QYwoofgZsu7PFYcvTMLEqwn0c6H5+54AheXB+nZZn8OQ+3MyP6f9dg/
         1epum4pgoYEXlbGhuam1PeFDOONpQEWSzhWNdfdgKJH7WqA1vHDlo14BG4FhZmfZy+Cp
         RqE8RxVv+7qrFs/2krfcB6XA+iBMroFjDhTqjMwh4298aZN93JQl8lgrTJKE91fNKeB1
         NXUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lpjBCpARc87T2xyRiyMWFvObLqQAHuqzmL9ViVeH+kE=;
        b=nbiF/GRAuhkJe5uDY2Ky7NyLZxvvnRu8u3rp7xq4D9YI/5SxnyaQvyNIY6L718BuZl
         jLi88tfDGnjJjZ9NMKtYk9c6n2M+1eRUF45vunKQokiVebPGazGwzjMk/03Bv9YuOOAy
         Co/zaz5YbQHlASzCRk2A5iaQMIYpPC5KRX+QZmMh9CGgKzUZ8mtBym5PwY5uEMFqDhKC
         Rh/V/Mk6nXZCcS7w2I7xdjKTlRB6Y82Wxw7s6MlOqad8AoWTUcslI7/Lz314mxjQICwi
         EYrwF/hNlEXJrsXzld43m+98mUWMUotX/uPNrjPuztkOtz9XAano52JP983mW/eetTy/
         ogzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lpjBCpARc87T2xyRiyMWFvObLqQAHuqzmL9ViVeH+kE=;
        b=ts0KYlPO9z+uAfcLpUpYmNGfAo8gBcFJ3WKvduGCq+64XD7/Fb92Es1f3JEuMJRaCt
         pH+t3jgFal3gq1jZHZsI3SNxJJBzYJyJGrSk0dh90q3+8w5Mjyqmvh7j/y6dz033yYi2
         /+beeb0fOyFXaOJTq6kYtrj05Wv5EB689AEUajozLKd50TX8bzMHW6HwFlSOw6igKfvw
         iaCcbVTsuoAV23kAugCqvsELUV675q07aDYZtQZwAKcIzY+5pzp7eId3UvvcwrerZwbw
         O983lBCumJ4mcsynwa9KB6FmvogCn/eZATdr2peqZVdMIZqkLzW1sWU8BDy4Au7zVebp
         ssBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LAuOMD7Pr5ntd6YTo4QFUCyx7oTli+fBFke7YYMXhEG5jB/Yi
	t4HOBlw9DDHgaNRf0DDz0KA=
X-Google-Smtp-Source: ABdhPJy6r3dtQ5QVW9Ks2JQ+JIUq8zq5/h7aBoZoMOSeSOK2MLqIYNfJAWpHLOZqzUf0Qt4ouuVSUQ==
X-Received: by 2002:ab0:66d8:: with SMTP id d24mr24656265uaq.119.1597192990771;
        Tue, 11 Aug 2020 17:43:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7f0b:: with SMTP id a11ls30509vsd.1.gmail; Tue, 11 Aug
 2020 17:43:10 -0700 (PDT)
X-Received: by 2002:a67:fd5b:: with SMTP id g27mr26040475vsr.230.1597192990265;
        Tue, 11 Aug 2020 17:43:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597192990; cv=none;
        d=google.com; s=arc-20160816;
        b=vaK73ISxy0mUvb41lXGXmZjceFv+xxhBGviQWhFEaLCqsiGGmKpwzvWUJ4IqpQzUNS
         d+2vGKui2syOMlrvfrz7OdhyVKPHQ9wcAOA3OaPnP7mhciAAMLQCRNgo9Ziw/D4NV+Z1
         e/jGY+6uaXpbsztj8qrbQN/e5WR/hNOAoR/6Bu45iudVUXeExeeOkknWY+lmzz8Qyq2c
         /3te1Doh6XyI8wU3a1sD1XHJuE0Fqiw0sehxLuJ/pms/Z6SnBhQN+4qy+N202WFgGWw3
         1ZA8bB0x1L+o2+sNovk4cVloKN3NCZYHL2yoYakY43mv1ztPupcVxp818k873B7QRTkK
         PxPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=GCDImrRgW3iCWcpk2/WqD39sC7GwesCsUaBl58SFiQk=;
        b=VNgqer+QHkOmmrB2QipoiCMu6CZqkhZUrfLe4SvNLQMwdBPg8K5cpkMpcGr4Ze/Z8i
         OJMF7/hNDD6/wPxfzClbrcMIiFhkcQBhg5mHzYNXT/YlH6IzfiAapSjr3aseAyqgW9or
         rYtO2GOSbXp3pdAhE5k15L62DLofgAik/3gRPhAAMbBv97+jz74lk1CX0+KoJbX7rsPx
         KxjA7efvDTuB38EkkqIT9ktdPf/iYpr39vgZoGR/zICGVvn2dALp+E9E6NG6jmtM9i6T
         Bc4PrsgTvfLC+5Y5IfPv9pG+JVdgzx+s8IcUU36Ah9nXeqUAs8vEWzrK2a2zTnC8EWC1
         bkBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com. [209.85.222.196])
        by gmr-mx.google.com with ESMTPS id u18si53221vsq.0.2020.08.11.17.43.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 17:43:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) client-ip=209.85.222.196;
Received: by mail-qk1-f196.google.com with SMTP id l64so640600qkb.8
        for <clang-built-linux@googlegroups.com>; Tue, 11 Aug 2020 17:43:10 -0700 (PDT)
X-Received: by 2002:a37:a354:: with SMTP id m81mr3762457qke.277.1597192989829;
        Tue, 11 Aug 2020 17:43:09 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id x13sm549749qts.23.2020.08.11.17.43.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Aug 2020 17:43:09 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Fangrui Song <maskray@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	e5ten.arch@gmail.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	LKML <linux-kernel@vger.kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH v2] x86/boot/compressed: Disable relocation relaxation
Date: Tue, 11 Aug 2020 20:43:08 -0400
Message-Id: <20200812004308.1448603-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200812004158.GA1447296@rani.riverdale.lan>
References: <20200812004158.GA1447296@rani.riverdale.lan>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
Content-Type: text/plain; charset="UTF-8"
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

The x86-64 psABI [0] specifies special relocation types
(R_X86_64_[REX_]GOTPCRELX) for indirection through the Global Offset
Table, semantically equivalent to R_X86_64_GOTPCREL, which the linker
can take advantage of for optimization (relaxation) at link time. This
is supported by LLD and binutils versions 2.26 onwards.

The compressed kernel is position-independent code, however, when using
LLD or binutils versions before 2.27, it must be linked without the -pie
option. In this case, the linker may optimize certain instructions into
a non-position-independent form, by converting foo@GOTPCREL(%rip) to $foo.

This potential issue has been present with LLD and binutils-2.26 for a
long time, but it has never manifested itself before now:
- LLD and binutils-2.26 only relax
	movq	foo@GOTPCREL(%rip), %reg
  to
	leaq	foo(%rip), %reg
  which is still position-independent, rather than
	mov	$foo, %reg
  which is permitted by the psABI when -pie is not enabled.
- gcc happens to only generate GOTPCREL relocations on mov instructions.
- clang does generate GOTPCREL relocations on non-mov instructions, but
  when building the compressed kernel, it uses its integrated assembler
  (due to the redefinition of KBUILD_CFLAGS dropping -no-integrated-as),
  which has so far defaulted to not generating the GOTPCRELX
  relocations.

Nick Desaulniers reports [1,2]:
  A recent change [3] to a default value of configuration variable
  (ENABLE_X86_RELAX_RELOCATIONS OFF -> ON) in LLVM now causes Clang's
  integrated assembler to emit R_X86_64_GOTPCRELX/R_X86_64_REX_GOTPCRELX
  relocations. LLD will relax instructions with these relocations based
  on whether the image is being linked as position independent or not.
  When not, then LLD will relax these instructions to use absolute
  addressing mode (R_RELAX_GOT_PC_NOPIC). This causes kernels built with
  Clang and linked with LLD to fail to boot.

Patch series [4] is a solution to allow the compressed kernel to be
linked with -pie unconditionally, but even if merged is unlikely to be
backported. As a simple solution that can be applied to stable as well,
prevent the assembler from generating the relaxed relocation types using
the -mrelax-relocations=no option. For ease of backporting, do this
unconditionally.

[0] https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/linker-optimization.tex#L65
[1] https://lore.kernel.org/lkml/20200807194100.3570838-1-ndesaulniers@google.com/
[2] https://github.com/ClangBuiltLinux/linux/issues/1121
[3] https://reviews.llvm.org/rGc41a18cf61790fc898dcda1055c3efbf442c14c0
[4] https://lore.kernel.org/lkml/20200731202738.2577854-1-nivedita@alum.mit.edu/

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: stable@vger.kernel.org
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/compressed/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 3962f592633d..ff7894f39e0e 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -43,6 +43,8 @@ KBUILD_CFLAGS += -Wno-pointer-sign
 KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
 KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
 KBUILD_CFLAGS += -D__DISABLE_EXPORTS
+# Disable relocation relaxation in case the link is not PIE.
+KBUILD_CFLAGS += $(call as-option,-Wa$(comma)-mrelax-relocations=no)
 
 KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
 GCOV_PROFILE := n
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200812004308.1448603-1-nivedita%40alum.mit.edu.
