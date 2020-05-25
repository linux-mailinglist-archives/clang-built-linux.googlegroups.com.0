Return-Path: <clang-built-linux+bncBCIO53XE7YHBBSM3WH3AKGQEJ3LONHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1DA1E17FB
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 00:59:22 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id j26sf6994697uan.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 15:59:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590447561; cv=pass;
        d=google.com; s=arc-20160816;
        b=XpqmRWZlgdBJ44UxUf2s44FQnPBljmgTTYGnvMAHKuAO5v5KhoNL0QGzMc7osqYg9y
         fwuJGV0rBadw6DarTV2ICWiQR2C97cSJH+PVRL2N2HexEIQjaGQ6EvWMs110NR/kWsJl
         5cAto6/f/Ctfh5wrHBc5PBlrNm3SilYfde+10g8/AHlr+I9bhB9+CLuY+RUcjffXmj3A
         qz3uLlYNUKPvhMEpC2+lij1kUeJg6K4YaLRwcNEJRy0liLedgsekdKGLQAJ0BNj2hdqV
         9vGglr+HIOvZ7bb9FamhqErYqoOMzBMb9Qr7s4N0BBXb6P8iCdJHIZa6MxUR45HRVk2P
         hpgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BbLKF5CQlWhpjKMV1Hq/QVCZT5Vu53s8pHORAz2rLI4=;
        b=jkdhu2leKagyxEdpDTahxqrASt+Lk6xhBE1HQAW1mz8HI81pC4TnJKhfUGj9INM4z1
         pGzQvieDi+XK1/gP5tux9KkbyzxRMtagoNsquDV9Oop6m2oas1hLrAT6D7wFFCMuZGOJ
         yLaK1Z9xIr1wz+mDjXIrII9CFs4X1kIHgPT3oL7dfOsjv6+OR+1+LWjXCC+qNVDEKrPH
         HXzE/dzvuTXET/OPbjWlr9/KT5O9vPN6OT14fZavWggiFj9RC5TASB28ELZTovfjO2jo
         m5maUFir3246iWJ09aIUGr8jh3/QJTVc3FNs/9S6W/Q6YDsLVZfQEv8Sxz/NtMgAvLBT
         hDrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.66 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BbLKF5CQlWhpjKMV1Hq/QVCZT5Vu53s8pHORAz2rLI4=;
        b=YBz3kofmqTZ0WafmIcByToJfi0rh7V6xeQaSosBSchnd7EeuuCBFEVXavCcTnzgKpP
         xkIxj0xxe0CTyl2bmal5MuUZhI0bI+5GBZgTyHYMnoaZ2HP9YW2/LIqITIP3B+CazFQt
         ablEx6TBXdCViLm4piN4TzYgJNrO7xkTAecfNq5qYztxKBm3iKlALdDdmY93IvWTM8lE
         X/6rRvEj6YTroYEUUoF09HqewQGUBS2cB18YOycMYxqrmy6C5h7ME66Ru9bbty6Ic9jE
         NStjP5FBtaimYvmnHHIjM/XqFjKRf2C3HXJQD1PKeZW19AtyO/WjuNGAAYGuQ9ShmxBv
         CCoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BbLKF5CQlWhpjKMV1Hq/QVCZT5Vu53s8pHORAz2rLI4=;
        b=Jo7FuxXX0zlXJ43bXb8uDpMdJIt/+F0k1LDX2M8s2g+n6Q662e5NlhTgR289uS/jtj
         Gg9ZhDPcIux4vpm5NRM7nyjdUS1WSN8eD5TvuU/FmQcNnb01vQuK4kG2myPFjjvBC8TS
         fjdPsvyzYb/4m5NH/JEuCyXTHDBTMxbHpT9QEnytylunvroi7dVFAm55qIpUqjCilzVQ
         lJPnDXJ7leH5dB0wKlEgUpoI3CEuobEZ4G5dqyc7VdeW8ZJreYpdrH37wG0Qc6NYAhS4
         pryXoXr5Iny3bAjjRQJecF+pKo3DBgZjRLXiOPtrO04/3LlXVUIBO0oIkGY+pjTo37x+
         4whA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533C+Vf6kSkA9r6tm6gmKoqkZiASww/B6g9pdtAhvqB9ZDSmjdNG
	uyxhx7Xk6Tlr6NrW4slRAUo=
X-Google-Smtp-Source: ABdhPJwEnkUbFpHi7gioAGvFi55ul7zY4qYRz2pmR9ICJYVklvZvs+H4bHtlHKlaW7oQ+8xJofVeMQ==
X-Received: by 2002:a67:32cb:: with SMTP id y194mr18713994vsy.114.1590447561704;
        Mon, 25 May 2020 15:59:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:7b8:: with SMTP id x24ls913970vsg.11.gmail; Mon, 25
 May 2020 15:59:21 -0700 (PDT)
X-Received: by 2002:a67:e012:: with SMTP id c18mr18935205vsl.12.1590447561251;
        Mon, 25 May 2020 15:59:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590447561; cv=none;
        d=google.com; s=arc-20160816;
        b=caVEZtiRs5kM7VtvtC9yaPPp13YFKpNUSAQFdEXu2H1xINY9e6MT0bKhF15HB37QLp
         Y+BnkEqbMVcVrqCDHkHE6RHKCXjAxnRY5RhZcpibYVoLJHsfVn+tUbaOqPyAf8qlkZsL
         nBzUeVNKkY+nEup5IB1OS2rncDLZauwgO6m7EPFz+6hKPBeoMioP4o22xLEwAfeuMlzo
         yX3TULWXNU2aDzi0j07AEFfOHXxRT7713FvfLWf3p2hVQcWPsFy8XGUoSwoLJ4mIg0Zg
         uyAlMRnu2FFhMPAyRlW9KDhs3JBN3+K/hPDJWqRzDjfHy6bT9q24Z71DTmz+m+/mUE5n
         UCVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=RWopqV06iZJwwZj9bAc/2S7UQBPLeQuHsPkq3WBvAyU=;
        b=TSfGfIdXvlSNhzoMnOksXQcgezn+POLiRtHP5rILvsPf1WVnN6qUsjEITwA/HGRpKr
         8DImFufi9voIrxSafNeXROrlQqUlx3sgk72TAUx0m5mCJ4H2LiL5n4unlSQQZK04JwO4
         zgnlxtCp9htngfF41L+KxBljRbg3LGMjKI7UGojRw2SoL7PVL7fpermHnY5q7c7lWXa3
         hAtYi06JlLGe9onBiboX4og0z2RVmFKpgkZawVtL7WowfTJGlAL54pf1odKELR6Z8DaX
         a8XBNpGJUZUbtOQUJnjX7ElKMFPawmSaD06wUAzIfItbbBN7GbtfflG/mJSTGMaU9OgF
         H2FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.66 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com. [209.85.219.66])
        by gmr-mx.google.com with ESMTPS id e10si209104vkp.4.2020.05.25.15.59.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2020 15:59:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.66 as permitted sender) client-ip=209.85.219.66;
Received: by mail-qv1-f66.google.com with SMTP id f89so8653282qva.3
        for <clang-built-linux@googlegroups.com>; Mon, 25 May 2020 15:59:21 -0700 (PDT)
X-Received: by 2002:a0c:a285:: with SMTP id g5mr18224804qva.49.1590447560843;
        Mon, 25 May 2020 15:59:20 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d140sm15024585qkc.22.2020.05.25.15.59.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 May 2020 15:59:20 -0700 (PDT)
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
Subject: [PATCH v2 1/4] x86/boot: Add .text.* to setup.ld
Date: Mon, 25 May 2020 18:59:15 -0400
Message-Id: <20200525225918.1624470-2-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200524212816.243139-1-nivedita@alum.mit.edu>
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200525225918.1624470-2-nivedita%40alum.mit.edu.
