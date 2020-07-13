Return-Path: <clang-built-linux+bncBDTIRUHU4QLBB26FWP4AKGQEDHTSJGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C54C21E31A
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 00:40:45 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id t4sf7319551oij.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 15:40:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594680044; cv=pass;
        d=google.com; s=arc-20160816;
        b=aMGyWJWVi/saq5/mK0QYBBx4AQIT6efwZcqQ8KWMkwjCMJLqYH6ISyMQyqawJ0lxOO
         I19yU3UXDt6VKzjnjQYUch6yv/907xH+30OPnXkUYAXTtrRC0c1w/bN7ttmOJOEkbTEj
         FjZuRhW6r5MdaFtSZCJAS32SSD7QZhW09KB80b8Ma7+y/5t7E2J4q/YCYfnjJIEZHb59
         9Tx989lRWCxwOWB2X7X7xoqI7AQNpP4UbgGhYHbAYeCAtfwgItcIxeujnr0rCBw6q99M
         4i2TUBgJ5El3RnxcxTRZ0U4DG++VshI7ptpcqgCVcIkVD9siVAjB+o9C2BRIOAzTY52+
         PNRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=Er33SounJ97ZSqrLeLHv7n6jaXUk4kyz9TSLu7b6nmA=;
        b=YUSojkXfRsxy07Q8KhlM0b/g2T8KN8tk8RAXP3XRvuQGEawWLukQO9WPEwBnTs8grl
         iE5j/8V5krL85AbiCxsno9CLcoTnzo5nAncZHQ2cNIa0i4SSqvT6DrVL2XxK3WlgIHvI
         xdI81Otd9h920rftgwgb9BBDF6O1TwrfOO9bdC5/Fj7g9QjfkTMCy5WBWN3gmSzrhuOq
         074DtH9JSkGxlQ4KwzjLRW6BFHScQbI2JyMCex3M+REyVLzceIXG35jhG7lbsL0vpfgO
         HNPgSH301MasnFjJWmjwNlqRnqJDJuKtsS4xBT7ONzFYUpobrIH0GTPjM5PUUG6DKcsK
         1e4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r9kfI48Q;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Er33SounJ97ZSqrLeLHv7n6jaXUk4kyz9TSLu7b6nmA=;
        b=G3ab7olXEkEjU5xq4d/3H9bysN9hhB6x1XbLyWGgzBUuJG0V2sxwsc12VKTc2IkI9m
         ydSzd5CePsWbIY4w2PbQSphehRaxcEKVXemPm/A0mGrOmDno0sMFBfVoHjqIV+YqEfT2
         Gs/B5O8abcMkakfhT+26mgUCMUGOWihQyyKwnmu/wfBpJhx7gAWWHZdu/ShGU1YDVpjO
         CZBSX27HEGytKfzxCptZEJHxNsuvid03sQeykRd1Klvowf89erRxrJihfeBBytULfM8v
         xW4dvHI4mHe5tXDDd77Yu+GZGfiUYQHLX8VMADC9xh/zTTozYC8aEBHBD+9SIpegRW+8
         mb8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Er33SounJ97ZSqrLeLHv7n6jaXUk4kyz9TSLu7b6nmA=;
        b=kPKkinf166eMDYGO9qxoO8cMJPYcTIaUYVrYvoWvTVZGUap5TwA0w0WAvFdo6ACLWU
         XCPESJTorF9KEoJA39nFKD2Xk/mzByxz1BlkHUlXaWeytVNJmcgtmD7X3IxDqaF18xxK
         0ELxxKDsVkIH2ZcMOFmit6f28NVKYHUTpHmVqDX0gS+NW0nu7RwNAQfv2D4aOxqdxpJl
         kdlFG9KqJ9bRwgdFZPcY/rf42/9FSVvvX6mLg8TOLSCZc55wnrWvv65hVUOJJUHX6t9q
         HW/xnim4ThQ3tyLSm7HfhksPKxshF/ceo0+7nSo2WNAEwfa5WMB6j474DFLcTEyYjSfE
         Hg6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Er33SounJ97ZSqrLeLHv7n6jaXUk4kyz9TSLu7b6nmA=;
        b=G/KZwHujkuFmEDefgkX5TvHtQZF+9lVQMHTFU/5/5175n9+8asWWOpiaBO7WftnuBA
         3wj/Kp8sZn55l1+rKjaPwb81jX+QNit7fl/cjvp5O6K8E/u4wdhM4OJJTQ/87xTVTOya
         w48VFJFRhr9xD/HjN6w3jL3x43qt3jZ/7Nduzk4zcaPOFxB9/jpjE3F7HPPfPHHjEAC/
         P8Tqq2yE2f1wwuDRDTeax4scQOLSuMh2Wl4jWz3iwio+X/xhelvmi3l4E1JQSYtY40ul
         usWhBcNhEoSKuWFxM0/IpSwnLTwbasv2XGu/QtFLN/HVvr8zkxkTJQKmzLMFVj/I0Ift
         K0xQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328aFRdlopDtuhB7mH3DgD4NHPQkcPYpDQ0uArwLL86ueNHIAty
	bBVz23lvMjNzrAYue5ywwsQ=
X-Google-Smtp-Source: ABdhPJzw6G+NGMMDquWROrfPeYzbkGsuwhFh7qVqz36IkjKvdc3V6x4Fr6DYj/xTANXscI2uwuEd4w==
X-Received: by 2002:a9d:316:: with SMTP id 22mr1566430otv.366.1594680043960;
        Mon, 13 Jul 2020 15:40:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:cf03:: with SMTP id l3ls1027398oos.8.gmail; Mon, 13 Jul
 2020 15:40:43 -0700 (PDT)
X-Received: by 2002:a4a:9210:: with SMTP id f16mr1985475ooh.13.1594680043643;
        Mon, 13 Jul 2020 15:40:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594680043; cv=none;
        d=google.com; s=arc-20160816;
        b=OaDFUxFzbH9To2QXUKNnEFeuvXSZuB348wXcR6XamKDugCKQENyP1ldBNMT8M19ppH
         JFgcTjaO1ZG2uQPhq5pjKVpIh+H7CCAqYRhQ0AHU9g5Iyx1vPCDMRpCtqlUFct+byN+5
         ukieG2dJjWms6B+ZNc6Yuaxi3PVTYiB+ZaLZDK/vp9UPq7iZgDTQGmJUwFZtz8ZI6CUD
         rd7QyVlBUMkJHWfXBWaiipRw4qIZ9w6BIcYSygfh7ym2bzGSTiXgmWkgsFKAU7oDu8DW
         THptXOrUk1RplaYLVGsi3Gw0TjoIDIvd4+NctztPb7rFwkc2gBeYw4SxqRSPVxHCIdhU
         RFCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FQ7NMKo03W54NhNsLDg4XkthULZUgCOASFezEvTt0gQ=;
        b=Cb8t/HcxziOFVWv+YPf/9R3PqZuOKOuo0FBKMSf0DfTCuZpUnKm3BNHywDsPd7Pd2M
         OMqSDQBg7JikcB4ibkgE4XSiO4EyGXWRjkmBkiA6cFi8pbEZEjbv1qnyPn1lekUpKHwn
         3MQrTZuA6fAmZgjnkAjRMjlBpSjvJ1TFIdOgxe4KTGg9kzhDkZI2FoiGATjRdT68s1p2
         bM2bOJd9EdBIFwFUH/q4HCRJOrubcuNElMB7k07myhZrPzb/k7iXc7FkmrKTGe9U89/7
         PWfe7ISbc/hLk0cg00sJuq0lizCfsTKiDBbH7FBlMGWaa1J5JNpE7Efml0EAFYeFg65A
         /+4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r9kfI48Q;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id b128si690733oii.3.2020.07.13.15.40.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 15:40:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Received: by mail-il1-x142.google.com with SMTP id q3so12637098ilt.8
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 15:40:43 -0700 (PDT)
X-Received: by 2002:a92:3311:: with SMTP id a17mr2059950ilf.210.1594680043340;
        Mon, 13 Jul 2020 15:40:43 -0700 (PDT)
Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:f693:9fff:fef4:238b])
        by smtp.googlemail.com with ESMTPSA id i6sm9123152ilj.61.2020.07.13.15.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 15:40:42 -0700 (PDT)
From: Jian Cai <caij2003@gmail.com>
To: 
Cc: caij2003@gmail.com,
	jiancai@google.com,
	ndesaulniers@google.com,
	manojgupta@google.com,
	sedat.dilek@gmail.com,
	Brian Gerst <brgerst@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] x86/entry: add compatibility with IAS
Date: Mon, 13 Jul 2020 15:40:18 -0700
Message-Id: <20200713224020.1297154-1-caij2003@gmail.com>
X-Mailer: git-send-email 2.27.0.383.g050319c2ae-goog
In-Reply-To: <20200713012428.1039487-1-caij2003@gmail.com>
References: <20200713012428.1039487-1-caij2003@gmail.com>
MIME-Version: 1.0
X-Original-Sender: caij2003@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=r9kfI48Q;       spf=pass
 (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::142
 as permitted sender) smtp.mailfrom=caij2003@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang's integrated assembler does not allow symbols with non-absolute
values to be reassigned. This patch allows the affected code to be
compatible with IAS.

Link: https://github.com/ClangBuiltLinux/linux/issues/1043
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Brian Gerst <brgerst@gmail.com>
Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Jian Cai <caij2003@gmail.com>
---
 arch/x86/include/asm/idtentry.h | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
index f3d70830bf2a..5efaaed34eda 100644
--- a/arch/x86/include/asm/idtentry.h
+++ b/arch/x86/include/asm/idtentry.h
@@ -469,16 +469,15 @@ __visible noinstr void func(struct pt_regs *regs,			\
 	.align 8
 SYM_CODE_START(irq_entries_start)
     vector=FIRST_EXTERNAL_VECTOR
-    pos = .
     .rept (FIRST_SYSTEM_VECTOR - FIRST_EXTERNAL_VECTOR)
 	UNWIND_HINT_IRET_REGS
+0 :
 	.byte	0x6a, vector
 	jmp	asm_common_interrupt
 	nop
 	/* Ensure that the above is 8 bytes max */
-	. = pos + 8
-    pos=pos+8
-    vector=vector+1
+	. = 0b + 8
+	vector = vector+1
     .endr
 SYM_CODE_END(irq_entries_start)
 
@@ -486,16 +485,15 @@ SYM_CODE_END(irq_entries_start)
 	.align 8
 SYM_CODE_START(spurious_entries_start)
     vector=FIRST_SYSTEM_VECTOR
-    pos = .
     .rept (NR_VECTORS - FIRST_SYSTEM_VECTOR)
 	UNWIND_HINT_IRET_REGS
+0 :
 	.byte	0x6a, vector
 	jmp	asm_spurious_interrupt
 	nop
 	/* Ensure that the above is 8 bytes max */
-	. = pos + 8
-    pos=pos+8
-    vector=vector+1
+	. = 0b + 8
+	vector = vector+1
     .endr
 SYM_CODE_END(spurious_entries_start)
 #endif
-- 
2.27.0.383.g050319c2ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200713224020.1297154-1-caij2003%40gmail.com.
