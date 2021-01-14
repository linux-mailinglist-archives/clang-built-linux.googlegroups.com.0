Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBLF4QKAAMGQEXGUGDNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 789822F6B39
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:40:29 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id o23sf3995500pji.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:40:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653228; cv=pass;
        d=google.com; s=arc-20160816;
        b=u9qMfMO270fQ4hzBntPo16ZN0cLp5bcyW3INnTqaiCzxNivvQPOO8cQPBEeTr0QOxY
         dyLh3duxSlW1vwTIANRt8TZGVzRXiFIdftIKDCT8AlBSV5WRB7E4thGLXAoGnDVPkiVd
         vD1YLY0Tvk2BvSJx9dLV8sJPmoVuNPrSasWfmfqPud/d2XCK53asOvF6Fa7JJDjSP/R7
         em0mph/nRCjT6UuZ1Q2vZco1OXdefwa9i2mZNiwkbyg5idnvHdivCmMnMNieGh/6XXg7
         L9wfC2/liNZ8OeIInTWCR8r/oftcaMaGu2VfcdE0beQ0ZiNY2QK3mPdAYZySKvSMxWBd
         JJ4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=ISar2OB1BBkcUK4WoQTfnyDdFhllwsPVzBtyb6vClxs=;
        b=nYhvPL8V0MT+Ut2dBE8K/wLUvDsp0FqPnDhfxsOp97vKHEXcBPQjppp1/qHcxJSdHQ
         nyM1yvgH/IGl0i51nJWL35YdZ9yt1jiCGSrnjyyHeKERa7sQuam/TY6iB1e2yvUTRk+F
         ZMUcZhRBDjp7bHRd9p6suBZsMuTGP49+Wfx4se5a0sp6Z31ls7F/f0Bk4EaffBpS+v9O
         P5j+60c/gm9nNWP4qy284QNbQPJa7urECl4Gx3mbfWAv777V++eJuHmAS2SwS4OvMowW
         NLIPC/JYRjhexqlqXg4I+v2B2fW1KWnfumUATq2piYiGITEjlUWV7J/RybgO1BA32uX3
         NijA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CBOyQg0V;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ISar2OB1BBkcUK4WoQTfnyDdFhllwsPVzBtyb6vClxs=;
        b=XaDLUBqHPV4GvoZjUim3IqlNKz+Irbl2fBsvxM6HkiEe8mWcD8OqhLgSNB5YyRFjBM
         HRlhkBm/eGUK+G0z/AsTBDpd1lfX31Ysn2PdCaKtE5yoJIV0O3SvMKWjWUWpT+kcsEhX
         Esg372/RrcTRJGX2dk5aAIz4+6jZTlGfsfj8SXMht8L3dW3kNazvyILFqaOcxkuyBQqQ
         /alWFuZcre6A76+hz85mTkBmePnhwup8QKQHcsgH2+kHjBC2pY4T6/D/aFE59rONDBxw
         +7xT6iHz+VqTA4wj6Ctiv9JpYhpZSNYI6aP269Xys9hvCl7iyPF1TKUrcux0mwGJsLa9
         ShfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ISar2OB1BBkcUK4WoQTfnyDdFhllwsPVzBtyb6vClxs=;
        b=PBtRbY7Bc6DX6voWypk9+S7/8HriEpjpqvbjeD4xBTTuPeh0TW8nKUtXD0tvdU6u9R
         V627Ys64D8w18pJ82FzEvT2oaIkDde1itj8Ya7SVphswCzyiH6Nl747jqL1ZQT4IC+po
         rGzxuRqNqJNbG/9SHA0RXPzh2Wjer9AGJGk+PlgTJNR2lhyJpaUEppnBsN1h4e0aAGOh
         zxNWvzSgFGnlIwowuG4C5aw5sDkyEWzNvPIOoqYnKl0CDplIG1mxUDjLOqOTI8XrsXVy
         pCPndHDeuCrKb3VL0B7smh1/HsHa9PzVPyvyrWOj5sfgtz6rbvYXYK5mnWq+T26OileE
         l0ZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325Xur4kpHn4nrsOnvUoJbo7zXd/1EAqDGFZa8gxSeevSuxVzBc
	9A15rig9qg/IK7PsBwt5hVY=
X-Google-Smtp-Source: ABdhPJxSHPibAlskCGB/VXBC23LH5wfZCNbtmCtkUHF/0Ht64yxZ7A4Cvjv9pq4HGBV7pKdiX+rj/g==
X-Received: by 2002:a17:90a:cb8d:: with SMTP id a13mr6431132pju.155.1610653228199;
        Thu, 14 Jan 2021 11:40:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:511:: with SMTP id r17ls3218083pjz.1.canary-gmail;
 Thu, 14 Jan 2021 11:40:27 -0800 (PST)
X-Received: by 2002:a17:90a:9304:: with SMTP id p4mr6394904pjo.220.1610653227571;
        Thu, 14 Jan 2021 11:40:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653227; cv=none;
        d=google.com; s=arc-20160816;
        b=EnA5niUi6+Ho3TAn1s2oU3Uzs+4mGggIisKOM+18TRMDyqAycYT5Hiv9c1cnJ91pWv
         U4SB7g3mPovDkqzimE+XGERdeBIakWKMkFyQg+PbaDHulK9kXj+/PnRwPFjg2jZcSsDL
         5Dx0ErRpkxIXz14bltp6f5WkixQ7wrOeN5Grht4GdRr73DliueWDOZdWtjrpGxB9h71f
         wvY8YiZyT+oQI+CF+elP+qcIgknhOLeWG1uHgvUVkGyGqG0mBDbjfeVlBRA0yX8dPU7U
         JmHCMyCERQcCivJNu9rP1JfThwlsoDAWV5aaaEmq5BRpqB3BkjckLfHbHiDvJpQDZ4AY
         immw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=utbSIuyoQOkLB93xAGsbds2nLdvkpqUcRNTv/wbR8kg=;
        b=qEffyB632sSC8Viu0jR/x0GgNR/wler3fuYm9Qd4FrxhVdV4iKGLhSdQ0Bn9WWoHSP
         6leCBp7o5ZgUvqRTbVEOqlRtzwimYG86kExvFpVkbJcpVudfy8W0QUkK51KKLiasDOeP
         iJ47QaUXdJRXv1EBkWWTTUgvZNEazSwlSzn3rtRADP3m5BbSzSH4CcDYzn0p7Pmn14OH
         EGC3zTiAkvrMZNfahSumMFHmDAMDpbNNkwUIRzRw8Qcyv7e0fXrpWs8oh3dmv94S8Rse
         aPWduwQG7vlgzIK6wwwTGPE3B0byp4IkKZ6QDxGSobPgDBy8f2RrAngOvUWogBLz1Fl9
         SvnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CBOyQg0V;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id e193si331000pfh.2.2021.01.14.11.40.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:40:27 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-14-OJ937Q2pNXCbNls68d4EZw-1; Thu, 14 Jan 2021 14:40:24 -0500
X-MC-Unique: OJ937Q2pNXCbNls68d4EZw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 98E39806663;
	Thu, 14 Jan 2021 19:40:22 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5DC09101E663;
	Thu, 14 Jan 2021 19:40:21 +0000 (UTC)
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
Subject: [PATCH 00/21] objtool: vmlinux.o and CLANG LTO support
Date: Thu, 14 Jan 2021 13:39:56 -0600
Message-Id: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CBOyQg0V;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

Add support for proper vmlinux.o validation, which will be needed for
Sami's upcoming x86 LTO set.  (And vmlinux validation is the future for
objtool anyway, for other reasons.)

This isn't 100% done -- most notably, crypto still needs to be supported
-- but I think this gets us most of the way there.

This can also be found at

  git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux

And for more testing it can be combined with Sami's x86 LTO patches:

  https://github.com/samitolvanen/linux clang-lto



Josh Poimboeuf (21):
  objtool: Fix seg fault in BT_FUNC() with fake jump
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
  x86/xen/pvh: Convert indirect jump to retpoline
  x86/ftrace: Support objtool vmlinux.o validation in ftrace_64.S
  x86/acpi: Convert indirect jump to retpoline
  x86/acpi: Support objtool validation in wakeup_64.S
  x86/power: Convert indirect jumps to retpolines
  x86/power: Move restore_registers() to top of the file
  x86/power: Support objtool validation in hibernate_asm_64.S

 arch/x86/include/asm/unwind_hints.h |  13 +---
 arch/x86/kernel/acpi/Makefile       |   1 -
 arch/x86/kernel/acpi/wakeup_64.S    |   5 +-
 arch/x86/kernel/ftrace_64.S         |   8 +--
 arch/x86/lib/retpoline.S            |   2 +-
 arch/x86/platform/pvh/head.S        |   3 +-
 arch/x86/power/Makefile             |   1 -
 arch/x86/power/hibernate_asm_64.S   | 105 ++++++++++++++--------------
 arch/x86/xen/Makefile               |   1 -
 arch/x86/xen/xen-asm.S              |  29 +++++---
 arch/x86/xen/xen-head.S             |   5 +-
 include/linux/objtool.h             |  13 +++-
 tools/include/linux/objtool.h       |  13 +++-
 tools/objtool/arch/x86/decode.c     |   4 +-
 tools/objtool/arch/x86/special.c    |   2 +-
 tools/objtool/check.c               |  91 +++++++++++++-----------
 tools/objtool/check.h               |  12 +++-
 tools/objtool/elf.c                 |  87 +++++++++++++++++------
 tools/objtool/elf.h                 |   2 +-
 19 files changed, 241 insertions(+), 156 deletions(-)

-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cover.1610652862.git.jpoimboe%40redhat.com.
