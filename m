Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBTPEU6AAMGQECORM76I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9332FF736
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:29:51 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id q13sf1881185pll.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:29:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264589; cv=pass;
        d=google.com; s=arc-20160816;
        b=vZ3Jk0eJ0LGHtvtR8HkkbO41V0SNfGx9JDkwc4lpFcy/2XXgwWL9HL8NztlKwl3sAJ
         KhEEcTv69SFR8hItQEjXwrq7wsSvCQBfz8O5Qo934g+UyZT/iBV8CaoaC0X+Q5w9qRLv
         Rov89tYolBRS+zDfUvchAFOzfoFmFQjriTYeKw51BMNDVlOz1DNVSyPHue0Ql+x1QXp2
         /evYMAhH6yEeLEP6XWVJ4M0c6Py0UlZIuhzj66Q6WlJgsTIhC6iXRuElWJVg73Un2lLh
         r0GleTQb1/Ux78NUfhVuO/02HJKFPnobs97YmsksltILMs8oiyi8rJE+/HcO6cvZIiEO
         hbkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=zHCvMP2o0ZoYPnDtaenLLmf+CIQRHx1/u3d3a5k42dg=;
        b=vXwHyAbzXdfvSoTvF6JWGQAtsjsb9HbwhfnIe25JX3UGFpzNgmGPp5BznscxjYa7BR
         bnEbhnIw4jjlBWC5JNVDgFbsm8ctd56i/zK7cZ2BkHkSr1iUuOcu7zDdHQzsFUQJyRZi
         V5EkzPBf22w0bxLcvZtw5smcLPc0st/LvbVh/zBClxAw/Jyn5vIz6A4Z9pox4Ce6V9Ju
         xl87tytWESrlXXEYrnPlw373Mc2Pgwa6rL9jqxxhk93NQmcmKKNR9Pji52xfr/z8PU2o
         X12MUeF5phgR9pLrRkzsR57KEX3LTxVoIMhilZIq0UkeKs6PLUcYplHQr2N+IM/sQRSY
         bD9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZuNFhNRt;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zHCvMP2o0ZoYPnDtaenLLmf+CIQRHx1/u3d3a5k42dg=;
        b=nhIQI2pEgEy46i8QIS3+s4b6cYcrtlv4gfTZcxQONIccakSkkpYOm57QwkzXvsgkWx
         9WVM+xbB72oBZm8piUfGtj4lSBAKu7tbUhKPxTJiyA3ne6V4N8DbpFSe7t6Vb/VqAv68
         gG8Yaobc33uAU/K722YlpgWbpRUUejJAr8W1emmKs8FmFuLUNAxTCLctoPg3vwWKydSE
         zydwcwoFLttI/dLRbam5rCltqd4ywE2F26XevjiCTZyaGfTVfTx1GdWN/NYFkUfc+Yuj
         PCAQiC7E4gljNcBsNUn+Pj9DxbF1z/2epoxMazm+VGP9Krzb1PAW6vTynSHP4kkGBdRl
         qqrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zHCvMP2o0ZoYPnDtaenLLmf+CIQRHx1/u3d3a5k42dg=;
        b=GS6kF0K9G9UrssOMSNBiBPdTfKtQD8++gikN0K16AuTHV7sWpw89wKQcW5rzOA/bca
         YapP4tDFx261p8cawyh2XDEQ1P+65UFomc45bC3Chx23EcTKjICyTepBUDA9vfAH4HOu
         JXMt37yBshi+XB8rBNxCfPFe4d/lU1jmfGGb1SB9V2vvfyEZXfWpcu7x6AmNcykbF2JY
         F+VoADdTA2yM9ZQgkmAhy9bYu7ea47jbvbpWJKCqtVyXT1tm7gfE+Fn2YVJOO6lp0Mqc
         vzWw6XovVCyIRNQQXljkxBIOOZHqM9C2kPuSVPfV9z+W0MaKdcOSOrnjIFm0fYr60GYW
         XEEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309B6eosTXo28Fujt8y2L2BpkWt+icv6L8PChhLU+2iZP/FinS2
	rwloJzmCcNvlcAvpC0fHWl8=
X-Google-Smtp-Source: ABdhPJxJQWVzvSDF9qPe00nK0MURlhmIBb1BnUwhocX1bOzfb0tfnPUtwueBLom9d+vDDNfXCGIIVw==
X-Received: by 2002:a65:6484:: with SMTP id e4mr1250618pgv.401.1611264589597;
        Thu, 21 Jan 2021 13:29:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ea89:: with SMTP id x9ls1672501plb.2.gmail; Thu, 21
 Jan 2021 13:29:49 -0800 (PST)
X-Received: by 2002:a17:902:fe08:b029:de:36a1:9f12 with SMTP id g8-20020a170902fe08b02900de36a19f12mr1714147plj.30.1611264588993;
        Thu, 21 Jan 2021 13:29:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264588; cv=none;
        d=google.com; s=arc-20160816;
        b=Bamzdg8IxWYJol02kn7LZGrgcaBPPte7fQOdgC6REzYXlrrKqb1/UwHD/Mbabt872Q
         Fk2zQH1z+q403Fkn6pk5RMWeqTlzeney9fv4A58Nv0YyII6EXGnRcfj6B8q5UUKKlG2A
         XYEz4EBVx4MqJokP7wMPdSSLyEKJLsOUX4wJhirKZ5PwR9oaDWBJD+ClgKlkctH7XBQ0
         Uvv0o7CEoQEgUxYWVgr7hLJ35Z6MadNtAvT3Qbgrm+Jsuk3igNfJVVqCJksm+qFFHqBJ
         6Th7P6UyF8KxZZMj6HcwgWuvMKrzo/6GQIn6bUzybO8vSM9YKSBAdDzPfqlW4RMKd5hG
         cFXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=3DozC8dW0Uhol+BqgLOqbQLSP2NyYp20B/rQ0y/gMvk=;
        b=FoDMqhzuOvamY2zW2HoxeXvEC7M2/uN190xzWA1TbZSYPeeTRkSbV9gCukJuGY6Bkx
         rHgl2E330AvqHs5hY2G4n0UnGNtFg7jdKzKw8hOotdUwS/URAlNrIl9V6e6kNif/4UUq
         E9J7w7rO+rORUgmZuFxbvO3OuUfvnW6CTcWMRydmm8y7JKxMN2ZuwY59Nhky2SK8e6Nb
         KKzPakm2D6DpPO8sD0Fy/uvffzr5g9+JzhH7Zut4cBx42hBeUt6qRk6lmUU2OMJi/JN9
         /Rlln78EvRAydqenEApGCEyAgFvCD7xnWtpG8nu5RHrynQORb5n563LcH7MslRjtXDFm
         fpvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZuNFhNRt;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id d13si356439pgm.5.2021.01.21.13.29.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:29:48 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-442-GT9ystTpPTW1Hn3-hgxKOg-1; Thu, 21 Jan 2021 16:29:44 -0500
X-MC-Unique: GT9ystTpPTW1Hn3-hgxKOg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 37C301800D41;
	Thu, 21 Jan 2021 21:29:43 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3488119C59;
	Thu, 21 Jan 2021 21:29:42 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>
Subject: [PATCH v2 00/20] objtool: vmlinux.o and CLANG LTO support
Date: Thu, 21 Jan 2021 15:29:16 -0600
Message-Id: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZuNFhNRt;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

v2:
- fix commit description for why xen hypervisor page contents don't
  matter [Juergen]
- annotate indirect jumps as safe instead of converting them to
  retpolines [Andrew, Juergen]
- drop patch 1 - fake jumps no longer exist
- add acks

Based on tip/objtool/core.


Add support for proper vmlinux.o validation, which will be needed for
Sami's upcoming x86 LTO set.  (And vmlinux validation is the future for
objtool anyway, for other reasons.)

This isn't 100% done -- most notably, crypto still needs to be supported
-- but I think this gets us most of the way there.

This can also be found at

  git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux

And for more testing it can be combined with Sami's x86 LTO patches:

  https://github.com/samitolvanen/linux clang-lto


Josh Poimboeuf (20):
  objtool: Fix error handling for STD/CLD warnings
  objtool: Fix retpoline detection in asm code
  objtool: Fix ".cold" section suffix check for newer versions of GCC
  objtool: Support retpoline jump detection for vmlinux.o
  x86/ftrace: Add UNWIND_HINT_FUNC annotation for ftrace_stub
  objtool: Assume only ELF functions do sibling calls
  objtool: Add asm version of STACK_FRAME_NON_STANDARD
  objtool: Combine UNWIND_HINT_RET_OFFSET and UNWIND_HINT_FUNC
  objtool: Add xen_start_kernel() to noreturn list
  objtool: Move unsuffixed symbol conversion to a helper function
  objtool: Add CONFIG_CFI_CLANG support
  x86/xen: Support objtool validation in xen-asm.S
  x86/xen: Support objtool vmlinux.o validation in xen-head.S
  x86/xen/pvh: Annotate indirect branch as safe
  x86/ftrace: Support objtool vmlinux.o validation in ftrace_64.S
  x86/acpi: Annotate indirect branch as safe
  x86/acpi: Support objtool validation in wakeup_64.S
  x86/power: Annotate indirect branches as safe
  x86/power: Move restore_registers() to top of the file
  x86/power: Support objtool validation in hibernate_asm_64.S

 arch/x86/include/asm/unwind_hints.h   |  13 +---
 arch/x86/kernel/acpi/Makefile         |   1 -
 arch/x86/kernel/acpi/wakeup_64.S      |   4 +
 arch/x86/kernel/ftrace_64.S           |   8 +-
 arch/x86/lib/retpoline.S              |   2 +-
 arch/x86/platform/pvh/head.S          |   2 +
 arch/x86/power/Makefile               |   1 -
 arch/x86/power/hibernate_asm_64.S     | 103 +++++++++++++-------------
 arch/x86/xen/Makefile                 |   1 -
 arch/x86/xen/xen-asm.S                |  29 +++++---
 arch/x86/xen/xen-head.S               |   5 +-
 include/linux/objtool.h               |  13 +++-
 tools/include/linux/objtool.h         |  13 +++-
 tools/objtool/arch/x86/decode.c       |   4 +-
 tools/objtool/arch/x86/special.c      |   2 +-
 tools/objtool/check.c                 |  89 ++++++++++++----------
 tools/objtool/elf.c                   |  88 ++++++++++++++++------
 tools/objtool/include/objtool/check.h |  12 ++-
 tools/objtool/include/objtool/elf.h   |   2 +-
 19 files changed, 240 insertions(+), 152 deletions(-)

-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cover.1611263461.git.jpoimboe%40redhat.com.
