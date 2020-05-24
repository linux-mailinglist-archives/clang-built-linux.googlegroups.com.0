Return-Path: <clang-built-linux+bncBCIO53XE7YHBB46NVP3AKGQEA4X7APQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9E81E0301
	for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 23:28:21 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id p184sf8559669oif.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 14:28:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590355699; cv=pass;
        d=google.com; s=arc-20160816;
        b=nYe4RFKWZVKCKmex0cSefvylHBiKGk+8uEMuwmoVRcTYE2W3p1mvYMzdEq0aoO34fy
         A/bO0yFJWYtyonCaHWTgncG8TkBTtDwd+ETjdZewFyvte9i2QuMvHpPh5DlLEEZrxiUY
         S3fSRYSCiobXjzwEMHI3NUwuFAT90bBkUGADyWQAMykN5DVWbwMPfWvxsqhTRk9baGsI
         zXs2ul5WXzEh0LLx5qzMa9aTc3SiUlbHDDjLvxzN89MOELI3gGrBNekjbzhiE6ql4S3w
         UCNIGbY3wB4kEO85D5w3of3J4ZTaou7d0oq9raZFShGly359k+bBxoaRFpVsZYJ9aEY9
         zYgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=h/KMH5G4TN3copJLLI3OnnhAkFEZbNexLRAZmSI18W8=;
        b=ITgOg6kXW5fzn16MxkxNYQzi2MPYLr2CuRIjCdXQK8DzWgduo+1UVPjTCej2k77Ssv
         5x+rocyJxrQgPU5/XKQlKOF6tHQ2jC23cfY3iuGtKRSiBHWMDje1+RFzJEykGusNChZy
         pEqko4GMZeYnqoBe2NT5sO2K9wCLMYz47rHAfD5JwTcUcd7ohZ8CA4DXf1f6sPBqpsns
         GkrinHHtaYv4d93cn9X9T5QBX8i+dEeeQgpZAMJ2bNGwqw1ExxpmFxHKr+wlJQD4qI58
         9Y5llL1lY3A5TM3cj7iSd9fhApPGZo8JjcCh2y9YvMCZinhvO05eS4ToCriSyYvDCbNn
         qNjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h/KMH5G4TN3copJLLI3OnnhAkFEZbNexLRAZmSI18W8=;
        b=MIkp2Z/ZbjeXggOrEMV9C6dOoW3y57qFbgjKs+cCz5/+Cl12Anj+wrR96nBotNQUJV
         CBPbrxXIJ6GLAuFBCvYLPQ/Hu34zGQuIm/6SY0XFf/e+4a6Do/lv1zBjYX7lI6/yHqwF
         4WcMUmsHlWYoBaoYp2Cn5/jgHwAPMzScWG3Ro/lphuHw+/0tHOij1fJC0XLBE2m9MP57
         FiS5cz7WJFVblhLFrWtnEPlMeg9nJmLyoVCzqZaNk1OY3KWPWyeiR97yiALbM0S1b0e+
         aoSGOvP36tbdwvI0UIE5YqIEKXiPGF73VVG59fy8aUjLN7dGiiyv04wMfgkQcAEyVfPD
         lqmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h/KMH5G4TN3copJLLI3OnnhAkFEZbNexLRAZmSI18W8=;
        b=MTBdbwGdFHzTMkyeh3bewCo91Wk8eBIBoYhinRtPFrk5KIVOGVAyB57tiFqhxeMmpE
         VprePBoQYf7FWvG3uJXX/8PUcfWDpDQN8q0vkW0s6m4b0S9jo4nfvC3LMJjje12mJqb1
         HUvzReDYTotpk5xm4FX0sCokiHdwN6vuNv7uaWijuMNpZA0p8+j3NxCS4UBzBc28HVW6
         Jl1M6BAH0gZSWx9+45UsHnulVwVz+GtpfiFFMsWe5cXAc+f4M69/gNPna6WxC/jiIAm2
         myelSCtZqTLR9wQyTFRAcR72nwVsidVtSy4PhIh4dvOUoSEWzQYm/DTXCIkTWApb44ls
         v5sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+d1XtXzObf4ppSZY7mWIHfi8ZIYAPfz6LptBn4hysE5CYxREz
	GGAGaokO7vpc/QdNzydu/qk=
X-Google-Smtp-Source: ABdhPJw2LunrpbHAEalzLaIMw2seCTZoQfrhukneB1Evh3MlC+3Jb2fQbNhl3BtTPlfKN5XPvaa+4Q==
X-Received: by 2002:a9d:6b8e:: with SMTP id b14mr18924062otq.347.1590355699553;
        Sun, 24 May 2020 14:28:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2d81:: with SMTP id g1ls1291031otb.6.gmail; Sun, 24 May
 2020 14:28:19 -0700 (PDT)
X-Received: by 2002:a05:6830:4b4:: with SMTP id l20mr18652212otd.98.1590355699201;
        Sun, 24 May 2020 14:28:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590355699; cv=none;
        d=google.com; s=arc-20160816;
        b=BQQx638ZE5VMlzaTR97Vs3KcKteWLxEQ/2zo0Sf8RxoMTED4r5q6hhQRyGwYCXWQKU
         UA7GZFcv47X8xSWNEm4qsOSRTfYdL/R7GPXgv3huX6TENM2QXfohHcUHVn7ygKXNctIb
         dfdvdjv3iGJDUH5Tw7V2BNsU5puM16h9Sr2tp5I/5m15ND+d7EkN9w9i7s5JnLlnhLLl
         v8If6VP7jAs1rRKJpFVXLJzoLFaAE0EPbkjZGrs8h7z/O5wFz6uzIY76R4LE52JXrTnm
         JKZEGzO+6sJdc7UXCWDoRc0IFSrG8iEpVWZPw9jNaZS4A0UvYmC1aNEWY1tfK3DDbmoK
         OsSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=k86zNxnaewD/kcJp/CHjCp3w81OEIlc7GLgOACCIBWU=;
        b=WFuXvt9wrlx5WHzUVrwMMXhN0IOph0nHdDFb2/8MCu4YSALr+eupZxjoBtTlDKZZEo
         ndN47KFW+SrHsHir1CqyTMsnHXE2UIzFe+hZ51BU+/bZv3RBrBCXPhWklOm+tVsq2vsz
         gz+MHZ3f7fXS+ymHpEprhBsFNCPDn0yFXZpVHpv2GJ8YgbWc37eiBfldwbjpX67EbFU6
         mMfMKMR/C/Yzl21yiUIiR7cYzrgvGYm7CBqr43hZchwfCIytZt9trw6bNuX8DJsM22Op
         xGXzJ/3eZXp3zonr/hK1Eil84EjtbnOCHvAA9nXg1sv8SUbIGV98DE3diPaJDyzjy/ML
         WoBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com. [209.85.160.196])
        by gmr-mx.google.com with ESMTPS id n140si926354oig.0.2020.05.24.14.28.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 14:28:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.196 as permitted sender) client-ip=209.85.160.196;
Received: by mail-qt1-f196.google.com with SMTP id a23so12620318qto.1
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 14:28:19 -0700 (PDT)
X-Received: by 2002:aed:2213:: with SMTP id n19mr25897885qtc.246.1590355698528;
        Sun, 24 May 2020 14:28:18 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d14sm3665729qkg.25.2020.05.24.14.28.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2020 14:28:18 -0700 (PDT)
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
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] x86/boot: Remove runtime relocations from compressed kernel
Date: Sun, 24 May 2020 17:28:12 -0400
Message-Id: <20200524212816.243139-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.196 as
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
relocated are only 32-bits in size and so cannot normally have
R_X86_64_RELATIVE relocations.

This series aims to get rid of these relocations. It is based on
efi/next (efi-changes-for-v5.8), where the latest patches touch the
head code to eliminate the global offset table.

The first patch is an independent fix for LLD, to avoid an orphan
section in arch/x86/boot/setup.elf [0].

The second patch gets rid of almost all the relocations. It uses
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

The third patch addresses a remaining issue with the BFD linker, which
insists on generating runtime relocations for absolute symbols. We use
z_input_len and z_output_len, defined in the generated piggy.S file, as
symbols whose absolute "addresses" are actually the size of the
compressed payload and the size of the decompressed kernel image
respectively. LLD does not generate relocations for these two symbols,
but the BFD linker does. To get around this, piggy.S is extended to also
define two u32 variables (in .rodata) with the lengths, and the head
code is modified to use those instead of the symbol addresses.

An alternative way to handle z_input_len/z_output_len would be to just
include piggy.S in head_{32,64}.S instead of as a separate object file,
since the GNU assembler doesn't generate relocations for symbols set to
constants.

The last patch adds a check in the linker script to ensure that no
runtime relocations get reintroduced. Since the GOT has been eliminated
as well, the compressed kernel has no runtime relocations whatsoever any
more.

[0] https://lore.kernel.org/lkml/20200521152459.558081-1-nivedita@alum.mit.edu/

Arvind Sankar (4):
  x86/boot: Add .text.startup to setup.ld
  x86/boot: Remove runtime relocations from .head.text code
  x86/boot: Remove runtime relocations from head_{32,64}.S
  x86/boot: Check that there are no runtime relocations

 arch/x86/boot/compressed/Makefile      | 36 +---------
 arch/x86/boot/compressed/head_32.S     | 59 +++++++--------
 arch/x86/boot/compressed/head_64.S     | 99 +++++++++++++++-----------
 arch/x86/boot/compressed/mkpiggy.c     |  6 ++
 arch/x86/boot/compressed/vmlinux.lds.S | 11 +++
 arch/x86/boot/setup.ld                 |  2 +-
 6 files changed, 109 insertions(+), 104 deletions(-)

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200524212816.243139-1-nivedita%40alum.mit.edu.
