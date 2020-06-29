Return-Path: <clang-built-linux+bncBCIO53XE7YHBBG7M473QKGQERM6RIYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE8820CF06
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 16:09:32 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id t12sf1612878qvw.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 07:09:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593439771; cv=pass;
        d=google.com; s=arc-20160816;
        b=e52vlE3ZleoTFNZxgD+rjZgU1ML3vQ1fsrGZZAcyGFOqXk1kntwdqNOTPjijgBsNXb
         urQpVAhdQ3tMFgQUn9ozIR7k44N569FCBSz3LP1rc7dOCHdltwOvOYcx78Nn24tz8uWN
         Bk4MsfOJJs4KqgBvprRyTsPcHtMxAx6u37OPqbdSEoVMQRtFIMQeNCdhzbwPVfi6o7SI
         W/1LFFGxU9SV8dXNC3/SA797otRi06hWmAOQsRbaG3CrDTivyjv9XkLICon6H9O31Mi7
         AIQMyrWdbkBRa7qsnFYB3KQskiuvcJW4c3+RpxOkQT4OO8qDErte8CJNPzFek1m+/+oG
         IkEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=c/NDpuuN72xVmA3qCsrQX23rqtRXvihPUC/oZZJD/TE=;
        b=Tzvy8oMmVvniBOmeFYu7fm0m/gZthk+F7cYZxMB5QxRcozRfsxTVmxGE+6BjYtkEXv
         //dyTyApUAwuSyZxqgfL6UyznXzVJTFbOriwQBQP6bBAjof0t2A1mZ9q7E3ODSlDBm1a
         YBpmQ70ILEqiHFXsMTb7PF1i5P6NmkgJ7zKq7SW5wXJyttMkg2HKvCb0h3osHu0Dvn13
         nyVBnlrC51uE4LnNyqaVWKSRFRCsDeGC7Q1PstSJCG7mFU8o2pY6ERLLjcyahQpuhY/F
         Kq6/JcxEZttbUb50o6SfhYGubw6paNf/C6mScjUvnZHPBbX8LTH9/y3+rpO59oJzTmDj
         AD7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c/NDpuuN72xVmA3qCsrQX23rqtRXvihPUC/oZZJD/TE=;
        b=Thxz9FOPNk1rbkof0DSZS+sW45JBhk5gCF4tPgFSHIBuQgdyBmCtLjicYMqTySk/ZJ
         ONzOnkxutTk21Ylbxe0nySo+wqYQUErm8WUZgEC+FOj9tjhSjGlZS6IpIU4UqcTgYwjH
         eR5UDUrKTj22P6MVUVih7tvrvrbxBmF8yfWWd2LHPSIKP1PaLelaTF3XwC7z9x9e1OZo
         9hwwnxBoJGtqBbSC2lAlICYoHuQw3vI9mMwWVCNBGv9KaV46Uo4xH2gAn1eOdy7qZg2I
         XWtdCZOf2h4ju71Y/5M2eN80qL5EKNqUstVH1VE5pOONcB8tdA7eYIuRgAoBpgy/V1Wm
         kxmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c/NDpuuN72xVmA3qCsrQX23rqtRXvihPUC/oZZJD/TE=;
        b=CvqAB4J5q5fnHODbUjgbC7KD3gplFoL9NBnjyyLDbM5itgpEZ5VY+ilUUh3YFlpY7e
         abZHRIdjm0ykFh0+4BgXzLQxgDMIlZTYCYYqyVmsxZXMP0mt8ybDvCrNZfO0uIQpCacu
         kLaEYhXpRAb3VzrVh2ZW/aTiLjOPy+HMsMp0HS2ZMGBm+eMvOe+t4CvuL4VYNL4Bz3NT
         p/b71dmhV88QOZxGR1KVr4hjUdLloOoR4i01TzagtfOmKVrJxMPZcnpB1LRQDkVo1fWz
         VlskZumPT7+GpxZcSn5/G5z3l63ZXkMp5v3kZ1UkFZ8xXlRYWYu0Q32LFWuQQ/Y2a7zs
         HSyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Ivb0v9260b36N0TM0K/ZatB2eg5Du7OacIQs1AVRI4I6Hf3L+
	l3b5DnF82TPnNsUuYQ2sjA8=
X-Google-Smtp-Source: ABdhPJyBRrY8XJcSb7fhfgaBxqBOUL4koJ9QJM8DtyF0UOlTsIRRCWxqLNQcdkSp9UaG3vS1z1wGhA==
X-Received: by 2002:a37:6343:: with SMTP id x64mr15055926qkb.114.1593439771219;
        Mon, 29 Jun 2020 07:09:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:c987:: with SMTP id b7ls565094qvk.1.gmail; Mon, 29 Jun
 2020 07:09:30 -0700 (PDT)
X-Received: by 2002:ad4:4d06:: with SMTP id l6mr2318349qvl.93.1593439770785;
        Mon, 29 Jun 2020 07:09:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593439770; cv=none;
        d=google.com; s=arc-20160816;
        b=JGHnHnCeCtMX1161S5LoGCabKtIdfCvQd3FrqweOpN+Ww+eBroEFe40iEt6HrZBjt6
         JuRpWXRhQe0A7ZOOaN5sjWPDYGhDZyu4WxV3Ry0vYP0DMZ04OrR4ft1695Efkmn/V8t0
         2a2682klzMOt5M684qs6FNI/VHNmD1gEC2CZdcrEN2bmNokpHaG0gt0fRwYHpY9hwIJv
         7hYC+VPIGGFylI452TuK3w2QbejDT1FJioGMh/+KrHtZ9qvFEIPmGmUn9AdZvBH8wMLO
         PuP7qP3eDxp22EOjFsYG6tUjb9KOPkcGgPJ9aF6iBXmVTG6HwTWEh3T46EVZ35wjwKpJ
         mEqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=M44I2v4UaO9OPEP+jg2wmc2GcKMVwLBT5iRhIL1Tao0=;
        b=YXr7xiT72Cr5P5Rmsm+hhC45LruH2EOeCGwvSCEaqpZj8eMeXbrSvErEQchJ6KW9kQ
         SvhUx1vuJxrvedhHO49u3lEM1hnOlQAxPQQl0FQsLoQAVGwIpmVhhHKl8W2UPV30fV0M
         evbG+lHaeF0EyV6gQqqIiZRUWLAbwa7h3C56qLFhvCKKvHUKu748Nzvqgq+YOlXLKNa4
         SUSmyrL9Pws8HxcbWZ8QL30Qc5ktDZi2T3q+IJr0ePi9PbjIXeni4XoYjRjRS/CyYhZh
         mEEJKQg1thqkwQTI3yGgt0y7DAHWT7XegDJrOPKF54JN4/uoXxmTxQQQCvoFD6Q+07pe
         DBcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com. [209.85.222.196])
        by gmr-mx.google.com with ESMTPS id q14si987642qtn.4.2020.06.29.07.09.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 07:09:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) client-ip=209.85.222.196;
Received: by mail-qk1-f196.google.com with SMTP id k18so15312134qke.4
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 07:09:30 -0700 (PDT)
X-Received: by 2002:a37:a00a:: with SMTP id j10mr14602308qke.87.1593439770329;
        Mon, 29 Jun 2020 07:09:30 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id i26sm10741461qkh.14.2020.06.29.07.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 07:09:29 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/7] x86/boot: Remove runtime relocations from compressed kernel
Date: Mon, 29 Jun 2020 10:09:21 -0400
Message-Id: <20200629140928.858507-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
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

The compressed kernel currently contains bogus runtime relocations in
the startup code in head_{32,64}.S, which are generated by the linker,
but must not actually be processed at runtime.

This generates warnings when linking with the BFD linker, and errors
with LLD, which defaults to erroring on runtime relocations in read-only
sections. It also requires the -z noreloc-overflow hack for the 64-bit
kernel, which prevents us from linking it as -pie on an older BFD linker
(<= 2.26) or on LLD, because the locations that are to be apparently
relocated are only 32-bits in size and so cannot really have
R_X86_64_RELATIVE relocations.

This series aims to get rid of these relocations. I've build- and
boot-tested with combinations of clang/gcc-10 with lld/bfd-2.34, and
gcc-4.8.5 with bfd-2.23, skipping clang on 32-bit because it currently
has other issues [0].

The first three patches by Ard remove indirection via the GOT from the
compressed kernel code.

The next patch is an independent fix for LLD, to avoid an orphan
section in arch/x86/boot/setup.elf.

The fifth patch gets rid of almost all the relocations. It uses
standard PIC addressing technique for 32-bit, i.e. loading a register
with the address of _GLOBAL_OFFSET_TABLE_ and then using GOTOFF
references to access variables. For 64-bit, there is 32-bit code that
cannot use RIP-relative addressing, and also cannot use the 32-bit
method, since GOTOFF references are 64-bit only. This is instead handled
using a macro to replace a reference like gdt with (gdt-startup_32)
instead. The assembler will generate a PC32 relocation entry, with
addend set to (.-startup_32), and these will be replaced with constants
at link time. This works as long as all the code using such references
lives in the same section as startup_32, i.e. in .head.text.

The sixth patch addresses a remaining issue with the BFD linker, which
generates runtime relocations for absolute symbols. We use z_input_len
and z_output_len, defined in the generated piggy.S file, as symbols
whose absolute "addresses" are actually the size of the compressed
payload and the size of the decompressed kernel image respectively. LLD
does not generate relocations for these two symbols, but the BFD linker
does, prior to the upcoming 2.35. To get around this, piggy.S is
extended to also define two u32 variables (in .rodata) with the lengths,
and the head code is modified to use those instead of the symbol
addresses.

An alternative way to handle z_input_len/z_output_len would be to just
include piggy.S in head_{32,64}.S instead of as a separate object file,
since the GNU assembler doesn't generate relocations for symbols set to
constants.

The last patch adds a check in the linker script to ensure that no
runtime relocations get reintroduced.

[0] https://lore.kernel.org/lkml/20200504230309.237398-1-ndesaulniers@google.com/

Changes from v2:
- Incorporate Ard's patches for eliminating GOT references into this
  series
- Rebase on v5.8-rc3

v2: https://lore.kernel.org/lkml/20200525225918.1624470-1-nivedita@alum.mit.edu/

Changes from v1:
- Add .text.* to setup.ld instead of just .text.startup
- Rename the la() macro introduced in the second patch for 64-bit to
  rva(), and rework the explanatory comment.
- In the last patch, check both .rel.dyn and .rela.dyn, instead of just
  one per arch.

Ard Biesheuvel (3):
  x86/boot/compressed: Move .got.plt entries out of the .got section
  x86/boot/compressed: Force hidden visibility for all symbol references
  x86/boot/compressed: Get rid of GOT fixup code

Arvind Sankar (4):
  x86/boot: Add .text.* to setup.ld
  x86/boot: Remove run-time relocations from .head.text code
  x86/boot: Remove runtime relocations from head_{32,64}.S
  x86/boot: Check that there are no runtime relocations

 arch/x86/boot/compressed/Makefile      |  37 +-----
 arch/x86/boot/compressed/head_32.S     |  99 +++++----------
 arch/x86/boot/compressed/head_64.S     | 165 ++++++++++---------------
 arch/x86/boot/compressed/hidden.h      |  19 +++
 arch/x86/boot/compressed/mkpiggy.c     |   6 +
 arch/x86/boot/compressed/vmlinux.lds.S |  24 +++-
 arch/x86/boot/setup.ld                 |   2 +-
 7 files changed, 151 insertions(+), 201 deletions(-)
 create mode 100644 arch/x86/boot/compressed/hidden.h


base-commit: 9ebcfadb0610322ac537dd7aa5d9cbc2b2894c68
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629140928.858507-1-nivedita%40alum.mit.edu.
