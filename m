Return-Path: <clang-built-linux+bncBCIO53XE7YHBBSE3WH3AKGQETPY7QZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 528621E17FA
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 00:59:22 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id e23sf4754328uan.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 15:59:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590447561; cv=pass;
        d=google.com; s=arc-20160816;
        b=lAimKxILy072F0n3O49Mq5NcZcyVnDbbBnJG+rAexuUJN7Xg8/pDxxBib9sWFiVOsp
         jhhYLQdpHNEM1mkGNl/xnNxE5ydOLrzXhK/agnYxp0gsMOUeHMzTKlXXCdSkCuPUhE6W
         L2l4tkWNwPCb8sK/IarwW7ZhlO6whDr+q26hPG7h6kG9vC/eD78MJmtBSC7iaEBTGHxO
         hZI/dcr2M0hZZ2774J0TGtHaX37/gW2ReAS8NEmj93kQbDiy5ZC6LEr/qKvfHjtB4JxV
         9AECysXq56R58I3UKxtT0Hgb83RIZdbuUyZzHISHH8u6frO84CR0yPnkHmJAABvGJ5Aj
         qPaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vVtJvJy3iwvoEqXOn2rkKaInfDH8O50YR5mBLKs/Sjs=;
        b=Xp10b9I0ewzr5r6r80qqKnBSI32fAstvxQlV088kZ+eluU6ZJcdcpiNbPmsJaz10NU
         AWCFn75XKOC9K8H46SGUQnf2XXtxk3+qsbAjMg5kLmIeEgA8dKUPMuBFbWVRYifXlGxV
         qfXxUHfzqs74m20leYrmup9YATcvD+xLOMX6YghGm4eUlNVgWqcnmzByeHscQ8eRRyjl
         +9zf5ey6mnHO5WX/kVdOLa/5QDyT0+Ehdj/umWfoeHAUBl69Jh/k6GdmcvtoKLZZRl1D
         /DN4+gNBFc07iIHJCoowQVENiVS8Jk/3ZBjodP+D4E4J+mLtboetSyE40rcJMcejNzIk
         +f5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vVtJvJy3iwvoEqXOn2rkKaInfDH8O50YR5mBLKs/Sjs=;
        b=ihyHO9WJErHGw82EkpN0s3A8I6rioK4OUo/XKJHGkM77lsg8OBw4Tjuahr8cBZ/Idb
         xkijH9xhDUxWlepZ4bK3u3qct1bI8Cc2pmUn8F9jhxVwrvm1NuLcUL1vdKiP6CfFbZI3
         iveT9Tqe8RhLfYl9sAA6DdNbLapj39BHYcAqEnZzll8+Ebk/IrEoTFv0XsYMLgi34mCE
         R1vg4DGK4spSwWnKf3w1fC/CDzJGNpuftOQZxcI2qnWqOV2rUTiFo8Rdj5Uo7soX1I4R
         AxGSMazVT92rqDd0VPz+pZN2Y4CQfcUTXOUScqj8buFMX75l85SbC2it7NdBqqcBjyTk
         CBVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vVtJvJy3iwvoEqXOn2rkKaInfDH8O50YR5mBLKs/Sjs=;
        b=mLi/9Aa8Qhdlk71Eujft5bygk6K926s8TaOrcOrj436LMAx5nVsa08rCGIY7dnonYs
         VbFNhNQbQ3FfJ8q8+o+zDoSwvc43w/2fv7uwYIHFIZfRDoBcoUC/3fxw76Ri8OVz79YU
         6IFt0H0jLJTGnJWbQLttsJasRE6F7p0hOJhu2e6SwW3fjJBfXMT6rtkI8KoKImgZz/lG
         GsJiwRr1ljRL28DhEHi7kvuRVk8/zk9Zc6Th9B1PrUoqck0DodWyQ3yOelTbEm/dWHyP
         AUKsGnGaNAbcC9M7zWQbqNuJymVnBqhMZO4JSTOheZdmXZk8OSNL2ChM5NZEcIAJbO92
         X3uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+Fi29rm7XajEEiurOviEyc3pCPwS28vdj60GNRocegkJugikD
	OCim7cMaHBxL2jbURMoLHgY=
X-Google-Smtp-Source: ABdhPJwKgsOroDW6Pt6k/Nw1NofTmgAegGxVqEqvHjPs6dPSmy+8OpEF+BQZdpzFoDvqp0gPLSdTRg==
X-Received: by 2002:a67:d019:: with SMTP id r25mr20683055vsi.187.1590447561169;
        Mon, 25 May 2020 15:59:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6197:: with SMTP id h23ls583503uan.1.gmail; Mon, 25 May
 2020 15:59:20 -0700 (PDT)
X-Received: by 2002:a9f:25d5:: with SMTP id 79mr10473691uaf.74.1590447560662;
        Mon, 25 May 2020 15:59:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590447560; cv=none;
        d=google.com; s=arc-20160816;
        b=TOpFgasy7F51OxG22Gf+tz4Ng7VVjjt5YxZ+e0W1kZ7DAHHZtKRXwwlYpNsA9A+Paa
         bsvUUL9BDOgLgXfpinmovHQ7Ja/TIQ9+qHx1tppinGuhMqKwL6Oc3LdpwFeNZoYQdO4v
         wwypYn79fRathrH4y/zkIJHuNOQVQEUUc3LLumL+yCjUnlz2U9jQNMlWhwaxfU5sZ+Z2
         OBdG//XnPBbOWzmBsTTNGgqbPqs1SYa9Isr9yVqkipguApYzX8poDc/wzrr3QHYyD0U9
         RqpxKmM/5OdplIYNXISqTBmVFJqCVdaM4ZaJFZ7ofXyISRSqtB6fyYs7PKvbGXF7CtOb
         dYEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=nkhs1vMkliVWrepyz3nCPdQswI/d3UMqurs0UD2o4Lc=;
        b=xN3Xpah2rTJsRtVKBHZORqFAut37xE1LtqfFTMsO4/ew0eIkuKq/IW5j/FVMg3Gkz/
         bQ12Oh9NlyyCP4+eeV5ilXTceVUr47xxYNlU7in/Cewk9ip3l4GujVpVVRwUqZBqio/V
         09rHBnx6SPZDKgufw14CEasUd7f5YVqQoowcT3TpKdr+07AY1eaIg+KA4hqBgHZxkthZ
         xFBBrQi2nOtcaEhvOSGMSeUy8nrczWQOiRf4wpGAn8Scu7zWJtqdKz0n/DNMqd+8DDqM
         0XQUTxVLY45uoh99C4o/TsXPFY3ZdKeUo3rPn8gohQ2ADr/ZyAMIMDmzQu2U6efb+dKx
         rZUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com. [209.85.160.194])
        by gmr-mx.google.com with ESMTPS id m16si1066099ual.1.2020.05.25.15.59.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2020 15:59:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.194 as permitted sender) client-ip=209.85.160.194;
Received: by mail-qt1-f194.google.com with SMTP id p12so14785291qtn.13
        for <clang-built-linux@googlegroups.com>; Mon, 25 May 2020 15:59:20 -0700 (PDT)
X-Received: by 2002:ac8:543:: with SMTP id c3mr29290586qth.8.1590447560082;
        Mon, 25 May 2020 15:59:20 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d140sm15024585qkc.22.2020.05.25.15.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 May 2020 15:59:19 -0700 (PDT)
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
Subject: [PATCH v2 0/4] x86/boot: Remove runtime relocations from compressed kernel
Date: Mon, 25 May 2020 18:59:14 -0400
Message-Id: <20200525225918.1624470-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200524212816.243139-1-nivedita@alum.mit.edu>
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.194 as
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
efi/next, where the latest patches touch the head code to eliminate the
global offset table.

The first patch is an independent fix for LLD, to avoid an orphan
section in arch/x86/boot/setup.elf.

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
but the BFD linker does, prior to the upcoming 2.35. To get around this,
piggy.S is extended to also define two u32 variables (in .rodata) with
the lengths, and the head code is modified to use those instead of the
symbol addresses.

An alternative way to handle z_input_len/z_output_len would be to just
include piggy.S in head_{32,64}.S instead of as a separate object file,
since the GNU assembler doesn't generate relocations for symbols set to
constants.

The last patch adds a check in the linker script to ensure that no
runtime relocations get reintroduced. Since the GOT has been eliminated
as well, the compressed kernel has no runtime relocations whatsoever any
more.

Changes from v1:
- Add .text.* to setup.ld instead of just .text.startup
- Rename the la() macro introduced in the second patch for 64-bit to
  rva(), and rework the explanatory comment.
- In the last patch, check both .rel.dyn and .rela.dyn, instead of just
  one per arch.

Arvind Sankar (4):
  x86/boot: Add .text.* to setup.ld
  x86/boot: Remove run-time relocations from .head.text code
  x86/boot: Remove runtime relocations from head_{32,64}.S
  x86/boot: Check that there are no runtime relocations

 arch/x86/boot/compressed/Makefile      |  36 +--------
 arch/x86/boot/compressed/head_32.S     |  59 +++++++-------
 arch/x86/boot/compressed/head_64.S     | 108 +++++++++++++++----------
 arch/x86/boot/compressed/mkpiggy.c     |   6 ++
 arch/x86/boot/compressed/vmlinux.lds.S |   8 ++
 arch/x86/boot/setup.ld                 |   2 +-
 6 files changed, 115 insertions(+), 104 deletions(-)

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200525225918.1624470-1-nivedita%40alum.mit.edu.
