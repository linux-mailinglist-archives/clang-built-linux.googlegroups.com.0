Return-Path: <clang-built-linux+bncBCIO53XE7YHBBMFVWT4AKGQEZMKQMVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF2E21E5C1
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 04:38:41 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id g16sf1285485pjz.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 19:38:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594694320; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uyphv7kNRwYf1MqNa/cGPnvUlGNj6rpquL4YfTND4LUMv7bFt4+7h5S/JU0I5NS/I2
         FdIcHiimdZ6QD/d5OSHhQeRp3bh/UztiYbVqJOtuS69unbh42mRQ4BmqNykpfmuws+Lg
         jarLVuVcXAbmb6fdfVgttqUW9eQ7iIfV4GB4nRoEZB9Tq7tK+11p9ew2f75pYthIdKse
         tJXAppfqAjikhi2hcjijP2H0DKKVRGqdX2Ls8wDOBTaftf7jEqLJRes3Lf+k2Ch7jcIf
         2IhCu7N6zn+cGESQjwb9xXc6gV2eShZK0N4fQlhSdCde78/3Fty13GCXO9jpOmWDlG/W
         Apvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QGKeviHJINznJeZyhYZYVK2PWhTZKdu0SiiCFLxWfoE=;
        b=QCcxIrziNxrctFqahAeVQ1TBUB4j/zvtb3rEuc0NLWG8xaQpP5TEzfcPuHWdeXnmQa
         Vq+rkSRhhTRBCWI6gc3q4I3mcCW7L5nvX0A94TDNS2PWbldv22G2Lph3czRb/sEJ/xbO
         JGGHFUD/Kuq2tWbXJcMYaU0+T201TxxVE9Zj0XbMOtoP7sMlBI2uNFRZm02QjAPJ/Z33
         mdh+6Yifyoijiut/TybJzMeb5TgRziHsLHRbmCc5YMtm0nLCc6ymg4o7NpwvqE/t812S
         yzwTqiYjIWKK4NAo7pKsD97zBMyL2AaM12BzYAsaikY+EzuMxgPzQXxBc0eFUdV42Sw6
         EBpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QGKeviHJINznJeZyhYZYVK2PWhTZKdu0SiiCFLxWfoE=;
        b=QUofBcR8YkY2t4CiTOKIGPOsg3lj5OJdR27aGLWJ4WVyfXleCuiA6ReB+wYwDbNlgm
         q2ZJ7AhzBrLClmRwDWFlT087M/s4qRT+9PQ4LLaK9HbDLps3fkW+bA3QLf6lmQ7dmTQm
         rwcqqEWadkW7ALvUVGLCWoQzQf/XdEcaIBnZ5iGniNFcGHqUywLo/u9DwNdWHr4JIoWM
         yezDDBylPtwp+iIRTDHEyzA9DGB/+83sc+rd+y+aikwlDl6DjN1TLCKaIWs+9mO0sg0o
         A6J/qOkgzsMWHk3EQvYhS6UhUpRGmgvhKANemMK13xxMkm0P26m1IiQjQsqXJfsqUW8V
         p5uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QGKeviHJINznJeZyhYZYVK2PWhTZKdu0SiiCFLxWfoE=;
        b=dnqdRXcPFuoi2QdYDqk/i42zraQYp2NLhC+Bo3ZNDwdc0bosoZ6ExfUNEIVABdq6cF
         hV0E3LHd+KZKvnjPDikH8smewMlev3lGOSsbWvT8BMZhGCwTD0otijqLmScORlwK9Wbo
         AfufZGFb9Jp+y5WHf8DznFhQcXTiTuv4GM9gDB+k1e3DfxgcQ+Mr2ioTFxFcsvlG/i6d
         arpslx8qE40eniRCOCROWnT3VhnWir7/Cc3Yp6npAsoQgWiPmY4E4VfO0G7+OIhnCtKb
         GvYUgJrK5qdSqho6e/Tuf9VQbWvgsolZy4d1TlxKeAJiAckEsbCb0tVAv2Bg1WErBRj+
         PjCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323/y3o5reAgrTGmjJ+sYZ8nQWk2QXIi8UBuVCWHnAtispTuN+N
	E0JppZf5rlsB1wpoXFjJpGE=
X-Google-Smtp-Source: ABdhPJy5XpN5P+Vn9W/WGp4rhQO+MRUgDkyrIR+I/20zaX1MyAtKn/jwOUSeWbLsikZARmcc29kNmQ==
X-Received: by 2002:a17:90a:e7c2:: with SMTP id kb2mr2448665pjb.69.1594694320402;
        Mon, 13 Jul 2020 19:38:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:730d:: with SMTP id o13ls5200936pgc.1.gmail; Mon, 13 Jul
 2020 19:38:39 -0700 (PDT)
X-Received: by 2002:a05:6a00:2294:: with SMTP id f20mr2476752pfe.126.1594694319868;
        Mon, 13 Jul 2020 19:38:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594694319; cv=none;
        d=google.com; s=arc-20160816;
        b=Xog4Iz1xRWwTegCP7otS1HsVnlRqKMhfSA3VsQuNoB28Aeu+aONuOCCCFR1Bz4bs7H
         SI1dyK6BC4g97uHNBTWVfxq7c6ULHRq22F9d4WMH8ep2UW7g590XPeeqHoBMC7znqSbx
         Rpvh12lO+YbC+uLRziMAMumxHnrcLJJ8HKVNc1MO+1JrhBCqoCcbsAgBLbcSGpikv6vv
         avBCxXu4y4TTw1IzE857e5rJ29cIIg3xO+TiNkn/pkmimuk/soWvr58fZYitCSNQsbS9
         1vcKlzLqlWcRt/XVxqBW9n3oTnxbbSeLPYAYwKdD+hVLcnFmgjLrv+v+BluCKojS9hSu
         vO8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=aLJKGhiT24jFn5bdFjl0Bt69kYs80uYBlHCplcAgbAg=;
        b=w5Zxu2GxbTY3QeKL9uHMKfW6kNBqQDP2ba6vZKcYX6Wjl7KKy3nqr5lnr/v5BGDL7I
         0z5XXc1+MifSh+zWhOQptkmw/E5w7P/ASRi4zEoWQTG+0kUIDrlKqLcVf1MMN3FeK7Dy
         Z2Mkzy1dz2QMQK5hiDrNE8q9x9VEhZSMIlUGvCO4UBxxMoKEFOyzgpiQwof8ECpGobji
         KWxqgEEV/72/XXKjqZ7s6z7xC/mK/VCvXHAzg6YfZyIcSt77DUVYKRjjwyGT5epSsiaZ
         Th0nZt9sm0hRRaoTw+A5rGiLBCT5RJN3VKVXfqfzcjUx2QXPCWZ3KB0ES3sqC0Tz72Nx
         0jEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com. [209.85.222.194])
        by gmr-mx.google.com with ESMTPS id s7si29288pjq.2.2020.07.13.19.38.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 19:38:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) client-ip=209.85.222.194;
Received: by mail-qk1-f194.google.com with SMTP id q198so14331971qka.2
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 19:38:39 -0700 (PDT)
X-Received: by 2002:a37:7d86:: with SMTP id y128mr2285057qkc.343.1594694318979;
        Mon, 13 Jul 2020 19:38:38 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a22sm21046291qka.64.2020.07.13.19.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 19:38:38 -0700 (PDT)
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
Subject: [PATCH v4 0/7] x86/boot: Remove runtime relocations from compressed kernel
Date: Mon, 13 Jul 2020 22:38:29 -0400
Message-Id: <20200714023836.2310569-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200629140928.858507-1-nivedita@alum.mit.edu>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as
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
gcc-4.9.0 with bfd-2.24, skipping clang on 32-bit because it currently
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

Changes from v3:
- Move hidden.h to include/linux so the EFI stub and the compressed
  kernel can share the same file

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
 arch/x86/boot/compressed/mkpiggy.c     |   6 +
 arch/x86/boot/compressed/vmlinux.lds.S |  24 +++-
 arch/x86/boot/setup.ld                 |   2 +-
 drivers/firmware/efi/libstub/Makefile  |   2 +-
 drivers/firmware/efi/libstub/hidden.h  |   6 -
 include/linux/hidden.h                 |  19 +++
 9 files changed, 152 insertions(+), 208 deletions(-)
 delete mode 100644 drivers/firmware/efi/libstub/hidden.h
 create mode 100644 include/linux/hidden.h


base-commit: 11ba468877bb23f28956a35e896356252d63c983
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714023836.2310569-1-nivedita%40alum.mit.edu.
