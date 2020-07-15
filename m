Return-Path: <clang-built-linux+bncBCIO53XE7YHBBQFBXH4AKGQE7NCKQVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 52007220169
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 02:41:38 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id q5sf711054pjd.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 17:41:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594773696; cv=pass;
        d=google.com; s=arc-20160816;
        b=J51WJLOLF6Qo3rmslAae/iQ/wo/7FdZaVmg73RYEm52o6Hl001r+5K7muqxRMW+K4N
         U3PTFHmekE6rUK4hB6dTQJl4BFUq3PuNvHN+gNWEhuzQq86yoe3HXIER6ixxvgLbYMln
         CjuerTmqs/7QCGV56PhLfqsudCFEbpSFhLD1m44otIAxCgeIr+mB7pSfOj+4Qjq0nUGG
         5+D1YyIX3BX+i4B4uaZLsvEUG7+ZuMGXDarxzdMFIsXFR64JAhcDRLuYa5A8TsRhfF9c
         EJwHUiBXMUcMUce1gubEDiejefn+6mnp3iWwLTTMOj+b/d3CR2jU8S1R+NDkJO+ZvY4Y
         grig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=zFpDCWjm1rZ5rlwr+vsaWv+pQ2sZlS/NITzocr9IOlM=;
        b=a/SrCJC7OnRJ6N0PrkceOaUBqd7OFRUWe84WUFLWEr66rGNXoruKmjm9sw9yNocNoy
         fXOSX3v8wl+LAjB0l1mE7I3A2qRyh+3B5WRtftNp3VyNKcLg68WvoHDA0T7Im2VeGQJi
         jcrUFGloV99Yen43X09Te2CxDXompYR1MNpXCf+uI6xJ7R/v7jJyVFZl6wjIKqWqDpUN
         8kjgt/jxZxSv+QNRggcia9JRzvR0koOVQtSP+3y7urlvfSDm+HWQcg47JL3vH095SYbs
         gJc2+0ibO8GBspjpDAWynTF9ZyzyAL6+eQN+JS1p4Yvm/ZxZYSAgh2BUPK6Z7VCJabmz
         vS+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.66 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zFpDCWjm1rZ5rlwr+vsaWv+pQ2sZlS/NITzocr9IOlM=;
        b=ff06nYtoQZHXmhGNdgX2VKglXK/bPRcJGL8J+9ZisKp+yPBcq5zYoGI62iUCZtwDz5
         FGDXvxwz8O32ySUwGGqJHbymcBu0KHYbmWzs39POYIJwv6pQGNjlV398GekenZNJ62Ho
         /B6D10W5WvbyojvcVG33HFB3Mcaxk3il/zdO6iUaPptVTLUamPFmRbvFRS1uBLughoqW
         EyYrBeJMdk/rpENskl3+1oetTSRc1w80ri4VcDngbvPEgs4wDnRBnc8JVLyGNwt8fuz4
         BLlEmW4jE2wqoihqFsdvO294cStMZJ8ROl8zl2VpdK8EnpTjKaOMhzFafhwKhb0o2JoW
         3l0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zFpDCWjm1rZ5rlwr+vsaWv+pQ2sZlS/NITzocr9IOlM=;
        b=fpGB+PXRbd7n8yfwlyNZHrN2AAsXDk2qI9jMdxBpcvNBwuo7FDEssVsL3Nzn459HwD
         maQ1ro6gRmuF6hnUT/ymHvzl8pUSiM1FeLdZ5Xl4tMs32XdsQnJRUUqCusUQ04wpURCv
         OatXCkQCj71xA9sp5OWA/Er6psAH5zy/G/JwR5gECrnXX8phq7p8FCu8xDJY22nVAKNE
         znZaO/CAd9G6KZD560ipLpqWe4TDDzIIfTu5mbIlipFWqHGoAgVJXfpFyzwEhisxQrq6
         D115Fgg+OVoFWnXB0iEcAphl+J3OAYK7bA5lL6kxCgjpU/Fzbxn0RB1lQQCr/vkRoBuu
         wLWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nnfwNTq7c5neBIWJLK7gTTP6XAXF2KfMi6DIbgpgTC/2TYRbp
	klPAXNwvH/RUW6wQ650Xj8c=
X-Google-Smtp-Source: ABdhPJx0FGGY7wDm/U0s7GZUcnvXWCOWqkCPbxH5nygVMVTS62If5zn/ZxNETjGB44n3JeyNZY+Acw==
X-Received: by 2002:a63:c509:: with SMTP id f9mr5599266pgd.144.1594773696631;
        Tue, 14 Jul 2020 17:41:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c1cb:: with SMTP id c11ls134203plc.7.gmail; Tue, 14
 Jul 2020 17:41:36 -0700 (PDT)
X-Received: by 2002:a17:90a:db87:: with SMTP id h7mr7841095pjv.159.1594773696103;
        Tue, 14 Jul 2020 17:41:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594773696; cv=none;
        d=google.com; s=arc-20160816;
        b=bJNB3LFkfyBd1811rsAF95Y4JcldEKynh9Y1ZUugy+Lz7gNK821can5mu/tEl4l1Ka
         sujlZZfHoKfOH0KTwKWvSuywG7S3aCwpkLVTSQ3jVnrPwUfXPO1/oChmO2JGpcNVX58b
         fEQgGcifq7N5xFzdlTBP1YvNcBwihXEtdFGQh8V20ztAwS5OSdPyUElIi6zwEzKTCn+B
         C618eihCMuYwXhP4QkFMi1Emr1DUv3949O6BEIxSD9tCsI4dCcvpmfGGtlMVpsbn7ahS
         JGzRPqOOpjhqFBKqWQNJ1pqODLUadfWLl8zN9re5G6WWtPsgrwYCsX7KR00/8SDTSERA
         gzuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=+QF4vAUUBnYQYLQ3yHUBiViRPlxMNrC6DIkF6ybdH8Q=;
        b=s2TflQxkbwVCs0NGWYhRztkMf7pKF/ESdA2kwRwyBPOWrHFRDSlj7k12d+wW0RBJZO
         0OtkAzOduvu2cCE2RW3hZchZE4h1bRSftmWpAZsAVUeAYCoGaoINoEvPMLoMcsKmScX9
         scjdDrftkQiu5s5JY/FzH5Q9yDWZMn39gSJy65twC+42+4BgzW/C+JGgvZccUB8M1CYt
         L1WtrDNdrnr6U6cxmfcRdCKzKdbzGC3XX9pr62GiR2lf2w/792Bat5ImXpxJeoCveEqp
         V5WPqvU1/K55nROW10cgH4q9Gpax1mF/1m8geMQJlZoqgCyuwfWD8kkJbdGimhIsmsoF
         YOjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.66 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com. [209.85.219.66])
        by gmr-mx.google.com with ESMTPS id l6si219487pjn.1.2020.07.14.17.41.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 17:41:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.66 as permitted sender) client-ip=209.85.219.66;
Received: by mail-qv1-f66.google.com with SMTP id el4so147898qvb.13
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 17:41:36 -0700 (PDT)
X-Received: by 2002:a0c:f307:: with SMTP id j7mr7147998qvl.55.1594773695221;
        Tue, 14 Jul 2020 17:41:35 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c9sm524776qko.24.2020.07.14.17.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 17:41:34 -0700 (PDT)
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
Subject: [PATCH v5 0/7] x86/boot: Remove run-time relocations from compressed kernel
Date: Tue, 14 Jul 2020 20:41:26 -0400
Message-Id: <20200715004133.1430068-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200714023836.2310569-1-nivedita@alum.mit.edu>
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.66 as
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

The compressed kernel currently contains bogus run-time relocations in
the startup code in head_{32,64}.S, which are generated by the linker,
but must not actually be processed at run-time.

This generates warnings when linking with the BFD linker, and errors
with LLD, which defaults to erroring on run-time relocations in read-only
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
generates run-time relocations for absolute symbols. We use z_input_len
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
run-time relocations get reintroduced.

[0] https://lore.kernel.org/lkml/20200504230309.237398-1-ndesaulniers@google.com/

Changes from v4:
- Move -pie --no-dynamic-linker from KBUILD_LDFLAGS to LDFLAGS_vmlinux
  Sedat: I'm not clear on whether you tested with the final LDFLAGS,
  could you confirm: i.e. if you tested with -pie passed to LLD?
- Replace runtime -> run-time to be consistent in wording

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
  x86/boot: Remove run-time relocations from head_{32,64}.S
  x86/boot: Check that there are no run-time relocations

 arch/x86/boot/compressed/Makefile      |  39 +-----
 arch/x86/boot/compressed/head_32.S     |  99 +++++----------
 arch/x86/boot/compressed/head_64.S     | 165 ++++++++++---------------
 arch/x86/boot/compressed/mkpiggy.c     |   6 +
 arch/x86/boot/compressed/vmlinux.lds.S |  24 +++-
 arch/x86/boot/setup.ld                 |   2 +-
 drivers/firmware/efi/libstub/Makefile  |   2 +-
 drivers/firmware/efi/libstub/hidden.h  |   6 -
 include/linux/hidden.h                 |  19 +++
 9 files changed, 153 insertions(+), 209 deletions(-)
 delete mode 100644 drivers/firmware/efi/libstub/hidden.h
 create mode 100644 include/linux/hidden.h


base-commit: e9919e11e219eaa5e8041b7b1a196839143e9125
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200715004133.1430068-1-nivedita%40alum.mit.edu.
