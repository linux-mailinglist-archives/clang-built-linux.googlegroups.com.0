Return-Path: <clang-built-linux+bncBCIO53XE7YHBBH7M473QKGQEAW4PDOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 643EE20CF09
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 16:09:36 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id c1sf2707052ilr.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 07:09:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593439775; cv=pass;
        d=google.com; s=arc-20160816;
        b=Py/k3AYOf0DOTKDZCYJwD3P+3mHGY08b2aZxUGEp0gwbuJOLaJiYpy2cd7fgU99F8o
         bnGwcmtP47cWYI3g8QmXN7V4+ivYxrkVXHMv5AruNvktNcaq0O9PzzqiFYOcWB9apux8
         KYPBscmORG8ij2SlsRlp+19H2zQqx4jFtBGtMb8XxKucxBH/LIBhmosjLtgeMWpytBKo
         ZsBcQ0NffMhbGDIBo/KmmXqRgAgMmW3C31f3pJ/iJVqYKEn1KipNLW64tub2JNgNREvv
         0ANOOLQgFs61easfW57eQENgRVty5uKS/6+ztLaSyCUVWzbLiK/YnA1ffUmDesLBIyjx
         PmUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tCxyX2NnRRTPxLTqJN2rJV1TOmzI7OZ/098pbjaedOw=;
        b=H/MBsQriadRB8pP+YZRios87k0dhD4emWEYxNKXANYQ/5wAyBFMSOJrP9RsOlPRTY0
         Fr3GYkkVDbYBHQEKPQU+nI3G/D62JWU7gaSTPARvf0tqR4Pwuo6CeIo4w345HYZ6juUJ
         My8ogJnyINWjj5DfJrQRk9w2WIR8eaUJTM03dYSxH8fuVlzpQTYPdQ+T4UJ2y6Im6Qxy
         urPFGHsg2qHMv8pYvgW6MlzC8d9wiymGLkaTk1sOqFgJIY8zgE1jMkUMDS1KDVG1C3Qd
         BIryLAN3OrUtYYYQwvbb1iQFb+Pg4JubShrVz1zT2vk1JgJeciZ/f512N2/1kA5gI8jM
         aYTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tCxyX2NnRRTPxLTqJN2rJV1TOmzI7OZ/098pbjaedOw=;
        b=C2fK0L31I+lllgvwjEFK0FZIhL9tZcFWBFu5T+wGYTMzIyc59ak0CR0kVsp1BMh64x
         W0pf7X247qFYmlfcL7BMBLalmdRkznb25WeGp2cviy5OqfhnSldsTaFOWmkFToqtjT2D
         lo73v7Cz5GVxSCsiPRv18knjl+TfPmxj+tUP/Gn5NegkD0pxoOg9Z+VJ/rvYKUWMq0FP
         MveOPb6QJm50mqNPt8DPS1C7HC0QG5TMoZyM9ltt/wRLoO2sldUjrBUApez8DhJU+Ych
         Qy6XBV2QL2yW7Ogc3aczvPVxkMB5JV+2KMMnRYzyku1yAF4f/89g++o1pBOrSon56CQ7
         HBMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tCxyX2NnRRTPxLTqJN2rJV1TOmzI7OZ/098pbjaedOw=;
        b=bhDuCzHcyRj3grpdNLUsUryXd7ic/LKnFZ8HimpX6CBKUlRKP+g7Ku93W29IeSY2/w
         iUjoc/LWPq82V7iV8DimDZDesCQft6V8zRr0Fflsbl37E50O4aMEnSVniuZKZNbv7bW2
         vmVoI/iMkYYpRdUo1zERgxaQQG4FXtuMNS9+vmLX7sVfgtve0J+IQ6thfdwQN9TL3K59
         n0lP2Hu7Rl7tfkGmheZewdO/1XejWcRT3No4OpRqlr8i/PqEwiqIcaic6S8/NsWk/N4I
         j9tGnhFpxlMiFAxZJG2sXxcikNhrfnX1u6HBcHvEiOIJ85WEldMkw92MFjnma2GswxXk
         r6+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KMrQc95OpnkvWc6nhEamEtYqG+3XaFY9DMqlA+vK6tx9zL4GH
	Uwkbpui1WNKYFwtIaWGj96k=
X-Google-Smtp-Source: ABdhPJzoVJrZSRPqTtPBC3zANopMieov7z4g24leZLtDSbznyCRU/cQueryYcnrKn6C5UUknGOo/Cg==
X-Received: by 2002:a02:6f1e:: with SMTP id x30mr17558232jab.51.1593439775379;
        Mon, 29 Jun 2020 07:09:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2e8f:: with SMTP id m15ls3274431iow.9.gmail; Mon,
 29 Jun 2020 07:09:35 -0700 (PDT)
X-Received: by 2002:a6b:1449:: with SMTP id 70mr17140140iou.153.1593439774936;
        Mon, 29 Jun 2020 07:09:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593439774; cv=none;
        d=google.com; s=arc-20160816;
        b=oQ6SyXvZnaTxNV+BGErVah6AP5q85akNvVrxsLRXErGOpvVKiZCo69b7bPmR1CEJYA
         ZJBPCODxckVL0A+T2WSIGYWY55HPYO5aWcy7dSd6ld9hxBGTLZV3zi1foOVJ2j7Hgial
         dfecGGB/EyuY5wUhIVd1tHwgpy46Sd4exlawKiJxESSixepHuUBQA6ZveUIFFiOAHI/N
         EU4qHqzAZFkkAm7qAquqbqPaW4LQYu07gCZq1tGSWDzh8wUtUS+Gc+veSG7rq7EvZE3s
         SJJk4XMLLdEusgChEHh4sZ0MbPmsnXmIxs5qWUleHXRMPGmq9DOvRd4TI7oz5TIFB+Yy
         qGoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Q73kT1XN4hhOuxeHjn1mfrAOy95GtpeYTquAg+kTJ+E=;
        b=yj/8Ejtb67VEtZG7eqNzB0gZMjYmY0pGqqkCFxZv5LIZkGmbG/6tjpJbB1ZrYdWiSy
         isT1BnwF9H4r2AH7v7ERXrTDt82OoCN8gUECD09yKzgqYDt3RbJOX2Us11Q72BgFtdS3
         IdVRFVlSydOr/IGe7qWeHv/ay2az6Av9sVmOSWbmn6k9sEo4psESem5xJXQ8vcTqeNKE
         zsRKpC1Q0llHcXuEa/yr1PPSY1J6sOb/XkiQdAZW9EOCwScgDfn79vjS60pxrZNz2Ny5
         qBdpY4BJidcKP/ICrhTbpbfuaauSYbZzJAoewpmwR28BLIegbhKWU8biU564mpCf4t5I
         tXrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id i20si1438iow.2.2020.06.29.07.09.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 07:09:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id q22so6386527qtl.2
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 07:09:34 -0700 (PDT)
X-Received: by 2002:ac8:5212:: with SMTP id r18mr15587792qtn.389.1593439774549;
        Mon, 29 Jun 2020 07:09:34 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id i26sm10741461qkh.14.2020.06.29.07.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 07:09:34 -0700 (PDT)
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
Subject: [PATCH v3 4/7] x86/boot: Add .text.* to setup.ld
Date: Mon, 29 Jun 2020 10:09:25 -0400
Message-Id: <20200629140928.858507-5-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200629140928.858507-1-nivedita@alum.mit.edu>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as
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

gcc puts the main function into .text.startup when compiled with -Os (or
-O2). This results in arch/x86/boot/main.c having a .text.startup
section which is currently not included explicitly in the linker script
setup.ld in the same directory.

The BFD linker places this orphan section immediately after .text, so
this still works. However, LLD git, since [1], is choosing to place it
immediately after the .bstext section instead (this is the first code
section). This plays havoc with the section layout that setup.elf
requires to create the setup header, for eg on 64-bit:

    LD      arch/x86/boot/setup.elf
  ld.lld: error: section .text.startup file range overlaps with .header
  >>> .text.startup range is [0x200040, 0x2001FE]
  >>> .header range is [0x2001EF, 0x20026B]

  ld.lld: error: section .header file range overlaps with .bsdata
  >>> .header range is [0x2001EF, 0x20026B]
  >>> .bsdata range is [0x2001FF, 0x200398]

  ld.lld: error: section .bsdata file range overlaps with .entrytext
  >>> .bsdata range is [0x2001FF, 0x200398]
  >>> .entrytext range is [0x20026C, 0x2002D3]

  ld.lld: error: section .text.startup virtual address range overlaps
  with .header
  >>> .text.startup range is [0x40, 0x1FE]
  >>> .header range is [0x1EF, 0x26B]

  ld.lld: error: section .header virtual address range overlaps with
  .bsdata
  >>> .header range is [0x1EF, 0x26B]
  >>> .bsdata range is [0x1FF, 0x398]

  ld.lld: error: section .bsdata virtual address range overlaps with
  .entrytext
  >>> .bsdata range is [0x1FF, 0x398]
  >>> .entrytext range is [0x26C, 0x2D3]

  ld.lld: error: section .text.startup load address range overlaps with
  .header
  >>> .text.startup range is [0x40, 0x1FE]
  >>> .header range is [0x1EF, 0x26B]

  ld.lld: error: section .header load address range overlaps with
  .bsdata
  >>> .header range is [0x1EF, 0x26B]
  >>> .bsdata range is [0x1FF, 0x398]

  ld.lld: error: section .bsdata load address range overlaps with
  .entrytext
  >>> .bsdata range is [0x1FF, 0x398]
  >>> .entrytext range is [0x26C, 0x2D3]

Add .text.* to the .text output section to fix this, and also prevent
any future surprises if the compiler decides to create other such
sections.

[1] https://reviews.llvm.org/D75225

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Reviewed-by: Fangrui Song <maskray@google.com>
---
 arch/x86/boot/setup.ld | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
index 24c95522f231..49546c247ae2 100644
--- a/arch/x86/boot/setup.ld
+++ b/arch/x86/boot/setup.ld
@@ -20,7 +20,7 @@ SECTIONS
 	.initdata	: { *(.initdata) }
 	__end_init = .;
 
-	.text		: { *(.text) }
+	.text		: { *(.text .text.*) }
 	.text32		: { *(.text32) }
 
 	. = ALIGN(16);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629140928.858507-5-nivedita%40alum.mit.edu.
