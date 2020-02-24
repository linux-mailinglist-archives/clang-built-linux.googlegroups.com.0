Return-Path: <clang-built-linux+bncBCIO53XE7YHBB7VU2HZAKGQE2KG2LBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E55816B50C
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 00:21:35 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id x8sf80860pgq.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 15:21:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582586494; cv=pass;
        d=google.com; s=arc-20160816;
        b=McXt4RuF9p3i1AvVssTeZZ1FMr3sodYnr5JDFziq9dfvey6m3LeAITocXHEIg7VlXG
         wuwNjCRFZjKQaKt6veO25H0i32oLmTl7C6dNdgXp2n6ujOJMEuxmyFHmGeeRrUpaC34O
         U/yBvKzdH8Ph1R55JwVOOMiLAiMg3jmJkVWeZFhNjyJwirS7cK+Pylj9ZEcUNdDneZ8/
         ae5lW7fUO1TBse3gB3iG0pTCmfE1JbuKtg1WDLOedSbYW1jxzWsEdFtIYvauz/KwPrbY
         DE3WFsLnRvo71w4Tq2i3DqB7UBm8wtJYRpFz1ofEOcrDgA8XfrvAIWPJSqRstNvEGgLF
         Qm1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cFhrv0pK78icCaqEK48y4V2qK0sDeHV2W6eKMT9b6tw=;
        b=uZyJsvCoIbNkGgpehQ0lhjIFLQUgB/Tf41vaN3DRg79Cq3LvJH+atYBEkxz5tvdRH3
         j0ekYF9X9luKI/XOKPeUPnHnruxHniO5bwoMGVCD+cGcaY/6hPNNg7R1TiKJ5LeBOUNY
         a1mlte3kxjEADiK3HnJJw7PX6G07ZpAuEFM5hzPD52E1CAEZ0QqW75bjvJqAeChsiCnZ
         UOfnkVTQnEpyXjNQSy5Zor7xUgRIjkc06vC5HLGOopbHIufrK9Dswaw4cGoeq1Ny2Oqe
         8z90gwzf0PcRg3ilx/34pFSMrJE4+Ay6FGJRGNk6tECOmENrvd56I52zMAVmFPsOsldt
         zNBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cFhrv0pK78icCaqEK48y4V2qK0sDeHV2W6eKMT9b6tw=;
        b=X470KOxodt2wvsKp+4jMjl31pE3Ohe4JnTZnCer9EIHWEjT5sKw/IavN0g3RzBVFuX
         lGckSQETvYHGXOPLUhpzxOBF11izknptPQQMjJfO4DNjKPr5BbYti6vFneoj19/bQWuG
         2qfyt6gqpw0LywC8JTndr6bcsNqzqMkh73wzu9ViRKYWc7dnBNAHrOAmOhV3D7F1pHm0
         nyXyIGxL4aVcr1ynaZ7EwsEh/rHCnyTDbBIS3VRijTR7ozVH1/U1hbL/iehGvvNdukPw
         +q6oMUnDqkbf4exxGpwGRl6LN1ol5e7AyVK++XW0fVWnlbbaG9z1Q41xy81d+bxfbYVe
         ldZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cFhrv0pK78icCaqEK48y4V2qK0sDeHV2W6eKMT9b6tw=;
        b=CcloUTsF/h28IqhczbtBhFW4ovlL8Kw0OGTcFwUXkrJdQ4vZUZO2WJc6dZtoBCHqvf
         bLhCSrVGLwXgdlkMJaBIl9LqU7rIBvZEqFlVw5xQRZbqMp6MaT3onn+bOSh2CViptSU8
         3MgHmEjcn4D5FvISdwsS+sJ4alvdeFgwrbOTfvcPm0u7treBB/4i81MXUYjkAQV8FOB8
         +Qxg+NVybYaLrkUvChURAFhQpdNV//nMIO+DdNtvBvFWCZ8HzqI3vjQcYK7xIX84wpD1
         bzHcHA3hlIRTfph4lHXkJ5n0JZ/+oYCQhowyGiuuQzF10zChhBE8xHB+FrrqdkMGpP1E
         LJXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVTURHoZzKO26zFnwAFKpeoYTxSji56VsAFFqdcO6WKZXACkmQH
	x04uGIwl7xh9oMkZ2GFpTlQ=
X-Google-Smtp-Source: APXvYqxzLnt4HzNC4W7JfLS4e4sWY/Mt5HeuxUdnQc2QXF7DBEm8tN05HHJEbp2LIep0OmCqadczvw==
X-Received: by 2002:a17:90a:e2d4:: with SMTP id fr20mr1729975pjb.85.1582586494320;
        Mon, 24 Feb 2020 15:21:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b586:: with SMTP id a6ls3676727pls.0.gmail; Mon, 24
 Feb 2020 15:21:33 -0800 (PST)
X-Received: by 2002:a17:902:9a84:: with SMTP id w4mr52096313plp.21.1582586493775;
        Mon, 24 Feb 2020 15:21:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582586493; cv=none;
        d=google.com; s=arc-20160816;
        b=sD74c1XaimlV7WdkvZUfqZSKU7aKlkeV7W6vaBJvI48rSnp1PmDb6rp0q6yTHkublX
         tc8X+MPv8xcd28CVtZNJxnhEk7542clzWkHX0JkC0jIRwEFfHvZov6lf/ibe1F6lSwV+
         wek6AcOok6j681cdn/SVmnKyw2SfdWlvEpufnLjgFj/ZsD/lVLyfAhmiugwUt3sj9zW2
         RsQqnVznC6WujBOecno+EUOgoRStcJGgEyOvUBkOBj0fyQ1xd5GxdquQSwnrnk4pnTrZ
         7XSdZK1RQW5g68L+REbhBfyFn3SvLygpEf6KRoDk7y+iEdZhiaZ9Pv2QeSruEW4NR582
         Bc/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=dV6KOm+5xGU5Fmvg1Yr6S6y1zc/vzXFOAFt08+WthgA=;
        b=biGp+hxEgo3d7vNe71UkubU28oDglqdCGx0kiqkPHqjKDRQgXkmFDuWWGCiFaXI2We
         bUZQiWJUgsnVcwwOSRbVnj3afTzAtZzy1y8flCu3DYiuVE+FhgSQj8M8LFRSYD/6FEkm
         8NKTo2T9zNcwYF8/b08mknyjt9yVVpOjpOZ/D9XyzEf3NR2Q3ywZMMe3LFwMlpZUhbXc
         lEgMxE4hGaPTr468PSiymfqCED1ALaG7BScDByb7SDS5SYixO7cMI38Ra/E5jMS/UOab
         EkvaGjhsOsk66o4AofFHkJSY2wT4HytQJaR6Dc6voe26ZPDCRYe3SZ3/R9Oo/AyjifnK
         ytSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com. [209.85.160.194])
        by gmr-mx.google.com with ESMTPS id m187si968978pga.3.2020.02.24.15.21.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 15:21:33 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.194 as permitted sender) client-ip=209.85.160.194;
Received: by mail-qt1-f194.google.com with SMTP id d5so7814159qto.0
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 15:21:33 -0800 (PST)
X-Received: by 2002:ac8:2784:: with SMTP id w4mr195974qtw.218.1582586492814;
        Mon, 24 Feb 2020 15:21:32 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 202sm3757849qkg.132.2020.02.24.15.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 15:21:32 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>,
	Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>,
	Andy Lutomirski <luto@kernel.org>
Subject: [PATCH v2 2/2] arch/x86: Drop unneeded linker script discard of .eh_frame
Date: Mon, 24 Feb 2020 18:21:29 -0500
Message-Id: <20200224232129.597160-3-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <CAKwvOdn6cxm9EpB7A9kLasttPwLY2csnhqgNAdkJ6_s2DP1-HA@mail.gmail.com>
References: <CAKwvOdn6cxm9EpB7A9kLasttPwLY2csnhqgNAdkJ6_s2DP1-HA@mail.gmail.com>
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

Now that we don't generate .eh_frame sections for the files in setup.elf
and realmode.elf, the linker scripts don't need the /DISCARD/ any more.

Remove the one in the main kernel linker script as well, since there are
no .eh_frame sections already, and fix up a comment referencing .eh_frame.

Update the comment in asm/dwarf2.h referring to .eh_frame so it continues
to make sense, as well as being more specific.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/compressed/vmlinux.lds.S | 5 -----
 arch/x86/boot/setup.ld                 | 1 -
 arch/x86/include/asm/dwarf2.h          | 4 ++--
 arch/x86/kernel/vmlinux.lds.S          | 7 ++-----
 arch/x86/realmode/rm/realmode.lds.S    | 1 -
 5 files changed, 4 insertions(+), 14 deletions(-)

diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 469dcf800a2c..508cfa6828c5 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -73,9 +73,4 @@ SECTIONS
 #endif
 	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
 	_end = .;
-
-	/* Discard .eh_frame to save some space */
-	/DISCARD/ : {
-		*(.eh_frame)
-	}
 }
diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
index 3da1c37c6dd5..24c95522f231 100644
--- a/arch/x86/boot/setup.ld
+++ b/arch/x86/boot/setup.ld
@@ -52,7 +52,6 @@ SECTIONS
 	_end = .;
 
 	/DISCARD/	: {
-		*(.eh_frame)
 		*(.note*)
 	}
 
diff --git a/arch/x86/include/asm/dwarf2.h b/arch/x86/include/asm/dwarf2.h
index ae391f609840..f71a0cce9373 100644
--- a/arch/x86/include/asm/dwarf2.h
+++ b/arch/x86/include/asm/dwarf2.h
@@ -42,8 +42,8 @@
 	 * Emit CFI data in .debug_frame sections, not .eh_frame sections.
 	 * The latter we currently just discard since we don't do DWARF
 	 * unwinding at runtime.  So only the offline DWARF information is
-	 * useful to anyone.  Note we should not use this directive if
-	 * vmlinux.lds.S gets changed so it doesn't discard .eh_frame.
+	 * useful to anyone.  Note we should not use this directive if we
+	 * ever decide to enable DWARF unwinding at runtime.
 	 */
 	.cfi_sections .debug_frame
 #else
diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index e3296aa028fe..5cab3a29adcb 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -313,8 +313,8 @@ SECTIONS
 
 	. = ALIGN(8);
 	/*
-	 * .exit.text is discard at runtime, not link time, to deal with
-	 *  references from .altinstructions and .eh_frame
+	 * .exit.text is discarded at runtime, not link time, to deal with
+	 *  references from .altinstructions
 	 */
 	.exit.text : AT(ADDR(.exit.text) - LOAD_OFFSET) {
 		EXIT_TEXT
@@ -412,9 +412,6 @@ SECTIONS
 	DWARF_DEBUG
 
 	DISCARDS
-	/DISCARD/ : {
-		*(.eh_frame)
-	}
 }
 
 
diff --git a/arch/x86/realmode/rm/realmode.lds.S b/arch/x86/realmode/rm/realmode.lds.S
index 64d135d1ee63..63aa51875ba0 100644
--- a/arch/x86/realmode/rm/realmode.lds.S
+++ b/arch/x86/realmode/rm/realmode.lds.S
@@ -71,7 +71,6 @@ SECTIONS
 	/DISCARD/ : {
 		*(.note*)
 		*(.debug*)
-		*(.eh_frame*)
 	}
 
 #include "pasyms.h"
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224232129.597160-3-nivedita%40alum.mit.edu.
