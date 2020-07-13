Return-Path: <clang-built-linux+bncBDTIRUHU4QLBB6VIWP4AKGQEFKX2ECQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF0421E28E
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 23:39:08 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id e22sf11005141pgl.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 14:39:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594676346; cv=pass;
        d=google.com; s=arc-20160816;
        b=NnDb20d0L3EZkZtZRc5OJ8PJoADNTdlA76xDI1WtjDBZ2wJc200z40Qlg4+f+wGzHQ
         TBwzVbK+ughgR2FScl+fdhqGly68I77vykj51HfUhlZxj8SXfbpyDC3Yo040aSSro64+
         Otf8MHMEc6eUKykD7vI8rwZPv+azSoiQapKq+aYScOhlGYVdc+OmB/o0g9XB7Sc9dp67
         jGfbMUuhSCFEg9xwGAUcIOQAatgNEtfK/zT3SGjdROozgbsoQlm6cnXjYpm1YmsCIlz+
         ZoYtOdHV30hmUn65D9YNDmp9fglEAhzcWL2WqBMeUKqINIF3BxDaBBePjfP3/A+eKA3s
         E4aQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=NGu38moTmOFa7AQWwEDPiow+rjibqqYyfCG9Xs8CUdM=;
        b=qKYetVz8LuSxMMf3/ndLHTgLs6yFMO042qHJWQsp0hfophPdht82U01WWDE+UmWv8Z
         6yZ9b1/2NkXY1XBGTDgbJFJVa3+iTusMh0Q4SPHf/6jmvdkXps1psThbTcib1jll87gQ
         mX6/tGuVvJfDU3hLpi+L6h0Mn4lY4ORcQDZcMtsx5ae2oDej2aolGYknJanRPC/wv8sf
         d0Z5b47Bx9YNXjmAEQA44F/VK5Au7qF8R7o/P/ZdiWF9SXe2pIml0qkSA960tDXLSeuc
         AYZlpzycFbG67ja9Q7q9r25OPOXbEa1A+qTfitL+lS5ycwYEXViHnQe5LgZcvlmdv82G
         oDOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bRJ0qbYp;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NGu38moTmOFa7AQWwEDPiow+rjibqqYyfCG9Xs8CUdM=;
        b=NoplJvGTiP8SwUR5o16coZA+wHH8JUwwYU776qJDwFhM/hRCO5Uwbk8UbrXIil4vFr
         wrdxf0manGWf0esUSR+dyLMDBSq3f9UI3SLiz6b4QP7KJ9R0uc7hurkO1hKC8kZeFnZ8
         zI2u6Zco/TgsdUwsmyFbGFdb8ZFZg/v4DoNl7gJ625O1Ppy6EdBXntEzihMS8tzNruvs
         Vo9A2waunodWrVwEYM4rGWUTMoBs5ZdlSkEb75sxGQtHiRESVD/SIp3S9s+RKmZzYA+J
         9DHHHNdpVA+fSr74eUSxGYa/tbsi41excs78S+7oGMXk62vTdHClXDeY6OtIMrvYK9Vr
         3wpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NGu38moTmOFa7AQWwEDPiow+rjibqqYyfCG9Xs8CUdM=;
        b=ujEGSmLg4F5FwM3Lj1F4bpWK11VncrJ4TYNlKLJ6JLzZ4G/Zoz1+16UCUGWVckzEr8
         2qDt6uYpVVNTOsXNJaWnKzmvf7j2lfblvKsc+kgfMaUe0GqD6xi6Cx+xtjWUxMSxErKc
         pFYlwU0DfM3JnOzafwJjbAyHi/KXJ/lAV3RiE1viR3DXouOwDCNgfUWdo/YNsH+v3JHR
         NLJXI8oAdZRk2RcQtw2+/AE+hkypr2WGFDoD3VRMeKX3sRAiDUKHaxvwAg1YxJM5EhQu
         g4HQoh1EVz6tAtQpOFwsWCIcYf4qaA1DQciF13qTOYfqxIvx7IpZys4Acfj28mAJ3No8
         rfxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NGu38moTmOFa7AQWwEDPiow+rjibqqYyfCG9Xs8CUdM=;
        b=s9egREOtQXMob8eg7gbK7ZRcSozZzUwFMZSCO9SgFX/hpyyHfu2um7TSo/MtxZWoik
         1XeSx7E4OhMiSFKkePcx3h2R6Z2efH3SSHUV8WdB9hEH4wSCTqhGeuN8vk+BQVjF7w+o
         cVvCHBrCmcRsFsoGbwPUM8631MOEBqUIGKqJLdJVOGnEzHjyDdNSeKxO3H0EtY0XKyHP
         dbCxd2saqTes1hK7++gAbh0WlSMgMb2ZbXJlqEAT9lZayERTOXjNy2yIuQCbYzexu8tT
         pTHlJh8kPzS78GqJI9UuCoUAGvnn1huQFyRDtiu1OqvuRSI+/TNYHKDto2TIwJSQFQur
         FyXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sxKsJORBY87XabYoAsLiKwIyXfVJnvr+PaEZsEfzKdlHK2bMz
	rQgEdDaDlAyLnmS9AdYBKus=
X-Google-Smtp-Source: ABdhPJzvmZy44w4tp32oNmuU/eU9XlIGw1b2zIOQ9kODFCa6c1Wk29wMSfM4FJo0gOzrosPlZLgGEQ==
X-Received: by 2002:a62:de81:: with SMTP id h123mr1551087pfg.217.1594676346751;
        Mon, 13 Jul 2020 14:39:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:86c3:: with SMTP id y3ls375232pjv.0.gmail; Mon, 13
 Jul 2020 14:39:06 -0700 (PDT)
X-Received: by 2002:a17:90a:b98d:: with SMTP id q13mr1421412pjr.82.1594676346384;
        Mon, 13 Jul 2020 14:39:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594676346; cv=none;
        d=google.com; s=arc-20160816;
        b=VeNQ3+MV0OuV1OLkgQF6OZgNW08UlXnbeWA0XetOLCnjYi2s0jak2/4LZDeDqQqsh0
         /I0JwUOKpbi+xJGi93ab5EQbm4/iIG323s/qBemg2dyI/Ie/vhUE4O9lPyM4C1bYJBhY
         1AAybF1DCPAYynP8JSsGNB0ex9n4CJ6mAcKEwG854moVev5jP/XHSOcjljoqUHTOa3zx
         8fy/CZpn7ZAjIjb+1yIzQB0R5KxWNK5Z6/hPfSL0zbPdfnAwWp+X56WoB8hIC+L5RGIH
         CfdtQaokdHrRJkhLfIP9P/houuAV7dXnL6wzQSbAUFtKSj9vkcZCnVD3l/A1Y5N5uTLr
         5a1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Iq2cIgsTsK4a36l68O3I/cXrAGU91DqNfuss40tsJ6I=;
        b=gf4uU278trpppd8HbBaVAL4BumNzmMuxBLPV098Y0N4JzcvWLGW3qqzCU9FbHzzKAB
         oqOl7oApIZMBqFZFa4+rCXg4d50b0ebYQL104lPQhTRcoJGsWyCLKWYLby074xM4zbcg
         O/dwbwxBo4xxuwvDfSZWH44no5pMml+b3p53SPoEWeQ17gMTHC52nDOXcvCC+gXEQqWj
         jX8xAYvUxSeyBVufRaBfbreFy89u2+eat8njjtXCAnJBQ+VLdTxypfy5TBnxz1tpjrDE
         zZgzxs3q6z3HOcolmCbD0kC/qyOhX9kQNQiOywO2sIFyoT0WAUwe1l5xB9aCZpxRKqzx
         TYcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bRJ0qbYp;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id cp21si14501pjb.3.2020.07.13.14.39.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 14:39:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id d18so15174683ion.0
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 14:39:06 -0700 (PDT)
X-Received: by 2002:a05:6638:381:: with SMTP id y1mr2390716jap.85.1594676345783;
        Mon, 13 Jul 2020 14:39:05 -0700 (PDT)
Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:f693:9fff:fef4:238b])
        by smtp.googlemail.com with ESMTPSA id b2sm9053703ilf.0.2020.07.13.14.39.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 14:39:05 -0700 (PDT)
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
Date: Mon, 13 Jul 2020 14:38:01 -0700
Message-Id: <20200713213803.1274795-1-caij2003@gmail.com>
X-Mailer: git-send-email 2.27.0.383.g050319c2ae-goog
In-Reply-To: <20200713012428.1039487-1-caij2003@gmail.com>
References: <20200713012428.1039487-1-caij2003@gmail.com>
MIME-Version: 1.0
X-Original-Sender: caij2003@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bRJ0qbYp;       spf=pass
 (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d41
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
 arch/x86/include/asm/idtentry.h | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
index f3d70830bf2a..7d22684eafdf 100644
--- a/arch/x86/include/asm/idtentry.h
+++ b/arch/x86/include/asm/idtentry.h
@@ -469,16 +469,15 @@ __visible noinstr void func(struct pt_regs *regs,			\
 	.align 8
 SYM_CODE_START(irq_entries_start)
     vector=FIRST_EXTERNAL_VECTOR
-    pos = .
     .rept (FIRST_SYSTEM_VECTOR - FIRST_EXTERNAL_VECTOR)
+0 :
 	UNWIND_HINT_IRET_REGS
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
+0 :
 	UNWIND_HINT_IRET_REGS
-	.byte	0x6a, vector
+	.byte	0x6a, FIRST_SYSTEM_VECTOR + i
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200713213803.1274795-1-caij2003%40gmail.com.
