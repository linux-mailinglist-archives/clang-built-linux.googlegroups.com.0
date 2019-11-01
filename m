Return-Path: <clang-built-linux+bncBC2ORX645YPRBMG36LWQKGQE33WRQTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 69523ECAEF
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:02 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id x8sf7146219plo.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646321; cv=pass;
        d=google.com; s=arc-20160816;
        b=BFjb2/zVjJbo6FP2Rqb06GqCVIEa9Gw+4gMJfqJUwY/wuGcgF/UwI4N5kq3kUZ9+Ng
         YDAyjTB4cDwUBmZa7kv0x8oJMaDtBMG9OZtghnSey1UyKq74fZ9NwDjQ/u/PPFJu8+6M
         hgEA52Lgan4vrLQg7JhB92INSkIyjaY/GtBBK8mLJERcf77Dtg/850vjm/gJsBdENow7
         AxFg1qkkNPukdpOe2YxUTfrxvjycIOGkYnju46A8TKwQalgyOcCMV5iGKPWHoL1JttTB
         K5nLrMn4wH8cWTQ1ShW6VCCbhIPI1IWIAd/jdHlGzZKedTedyRxzS5Fe7T//xKbz2+RA
         pUjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=4NIuzDEvK/OZ0wm56sws22VQ5JVCkXHeuASEUnCpmKU=;
        b=YRWVxyy1dnpWUWxHqVTORxbM3E6XBgvqJRZRxrjTwzhwIQuv4I0GfZcyQ2OBbOSPI4
         qrWvJU661Ct2fXxfwvqVFTvkFHH6nmHpqIgPJaqDXd9MEAVItCF/E6ezlFvkj9LSGFd7
         UO6v6YbjCF4rQx1CgdrBZTkdNTpAwXM6pr41iQw33kzx3XfplFgywokcK3+T9vMviFe+
         /tMKUucW7C+G84+sC4ItY2RjwEroOcQmV7rxEhYtUyEWLWWwLhQXJHC837uffexU/Zt0
         7PrS/CXV+pjf+asccAyiy+yw6JIYghJ3qdbup3BMNBTRAE4goqPjMQK63tJ8LcWzE/Qg
         wlpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q0ypX2RR;
       spf=pass (google.com: domain of 3r628xqwkapaksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3r628XQwKAPAkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4NIuzDEvK/OZ0wm56sws22VQ5JVCkXHeuASEUnCpmKU=;
        b=fzizgbqveTf6u5T34/D8/LI8b6wTOoRswpOYnSGAc2LMmARnX35K1JAbCvbVPnRJ+O
         Mv8en8dZqA28xtLZnopdRErULrpajD63ZiGBsOwPof8jEpjDOZiRZv4fJ5IaC2tEiYi3
         ZWfgkLFHfnoVD0ZhOoKIurk2FvQVhq3RTn3HsQ0zNhWd/OV5NKMQbe/LLi3jkhuGGGXc
         QlxiDgFt58MA8uU4L4s26j6Bus+hoLSYLuMBqfxlMhW7xAtfpyAFRlB3mXNpeDWhXT7f
         cTJeAIU+YpKkCqAZV0+9bfLC9JmIp2AtnT+YsqFdyP8xN4C8THIviMV7GfFQ5r8yxOTe
         zkBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4NIuzDEvK/OZ0wm56sws22VQ5JVCkXHeuASEUnCpmKU=;
        b=BFGL2c7Cz0fjerluP0zzC/CvvXd/SUcDlJwg1lGX5JB5BIrbi6irnLMrqeDfkmccc1
         c1cPd2Zu8VqSpdhGmwUoW5XU7ogWQLs0atcTmdQaCfKgj5tvPGFupb7Tlj1AJmskrtJv
         NObbeOuUKQUI8Je0KDiRuj4x5UzuwJSdmEjB1W3+eyvP8yHsqHlRgoyqjlYnLeGim+nF
         otC53MT+1yDAXHgz8HnRrhmayiO9E1APL70BaSlTZOar4olchoiFtH0OpDJa39J++w4l
         Q4hy1409y4uEnTpbQsFCnKAul9FTwUzbkVMMitvx/o3dLN/mHWYI4hPhmXZQnInW1Vd5
         Wi7g==
X-Gm-Message-State: APjAAAU357ny9QMLoaGf1LeSWayTKb0J7oQk2rW9QZRjPwIP3JPNLVI9
	K3AomMAlVzwBrX6Nt14J75s=
X-Google-Smtp-Source: APXvYqyDfmv6KY6qaug4SapWYqEOy5rC6/3OeCBU9C5SWqBKmfipVXCPwJxTYpmXh/N2Isqfj88OCA==
X-Received: by 2002:a17:902:6b49:: with SMTP id g9mr5518554plt.72.1572646321035;
        Fri, 01 Nov 2019 15:12:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:db48:: with SMTP id u8ls949033pjx.0.canary-gmail;
 Fri, 01 Nov 2019 15:12:00 -0700 (PDT)
X-Received: by 2002:a17:90a:9a9:: with SMTP id 38mr18652210pjo.45.1572646320628;
        Fri, 01 Nov 2019 15:12:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646320; cv=none;
        d=google.com; s=arc-20160816;
        b=w36TwuZKdh1Nb7/3bveXuoJQBB2YFegX6qBA+QI+DLdU3m7TP7sO1vryClfQ9Kt3C+
         E7lQfEUadeEBur/kD+5EvjKLLTiB/TdjQCJ5vqnvdhxLSgnkn+k1MkY5OYwSzHZCqVTk
         lONk4Ir4eISm1wL47iq0VNOBDK/CKmjtxSmKcY2O7O/GZ1VAiyp3rLR7gpDpdmlZMpI9
         RYJHUY4OJTzMyLGBWAbWX5A5/HZOkHCm++ynklo2+mOwUdAU11bOiMoXNMsD00DMSyvr
         JJCE3wJAVWsZArJDI9zTTXcHMe94V/58pGQSoSPozYNdwk4XwApBzXi/7r+XgMIg5NsM
         oJpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=OH2SjYe0B8esWxTAcCgR+62MsPomBC+RzRSTMU1rFk8=;
        b=zdHUsQScGj/7KmJ+Rm6Mu4Su1vOo/52eN3UaBGncxyK4mh7aDhNgXXbz0pkCv948YJ
         HaIWeTxHCPM7JctJlUVTt6/t05KVj3tmgCpkSJIzfXpDi4FnuODmXFmNlaqNaS5qDd0t
         GElVNbIBhI0hslKznE0pXBUmAWCqWx3WZuPa9noEHVcJv3FL2ks2f2XeBrvdlKb+Jdid
         CVsHtCWkMrdxqFkj7zRA/M3BW8F4ic7f8PMJhjYzGQliCyACs3uCZ4R0J6PD7CQDdpwX
         DZjX1XMVsA5m1lyT6yE4j7+wTFhsSxuD5O+2v9pqEHIyNVjCKGqUZFLh5O0uykoRXvC6
         11ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q0ypX2RR;
       spf=pass (google.com: domain of 3r628xqwkapaksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3r628XQwKAPAkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id t17si493226pgk.0.2019.11.01.15.12.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3r628xqwkapaksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id 196so8029525pge.14
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:00 -0700 (PDT)
X-Received: by 2002:a63:e454:: with SMTP id i20mr15822954pgk.319.1572646319823;
 Fri, 01 Nov 2019 15:11:59 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:35 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 02/17] arm64/lib: copy_page: avoid x18 register in
 assembler code
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Q0ypX2RR;       spf=pass
 (google.com: domain of 3r628xqwkapaksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3r628XQwKAPAkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Register x18 will no longer be used as a caller save register in the
future, so stop using it in the copy_page() code.

Link: https://patchwork.kernel.org/patch/9836869/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
[Sami: changed the offset and bias to be explicit]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/lib/copy_page.S | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/lib/copy_page.S b/arch/arm64/lib/copy_page.S
index bbb8562396af..290dd3c5266c 100644
--- a/arch/arm64/lib/copy_page.S
+++ b/arch/arm64/lib/copy_page.S
@@ -34,45 +34,45 @@ alternative_else_nop_endif
 	ldp	x14, x15, [x1, #96]
 	ldp	x16, x17, [x1, #112]
 
-	mov	x18, #(PAGE_SIZE - 128)
+	add	x0, x0, #256
 	add	x1, x1, #128
 1:
-	subs	x18, x18, #128
+	tst	x0, #(PAGE_SIZE - 1)
 
 alternative_if ARM64_HAS_NO_HW_PREFETCH
 	prfm	pldl1strm, [x1, #384]
 alternative_else_nop_endif
 
-	stnp	x2, x3, [x0]
+	stnp	x2, x3, [x0, #-256]
 	ldp	x2, x3, [x1]
-	stnp	x4, x5, [x0, #16]
+	stnp	x4, x5, [x0, #16 - 256]
 	ldp	x4, x5, [x1, #16]
-	stnp	x6, x7, [x0, #32]
+	stnp	x6, x7, [x0, #32 - 256]
 	ldp	x6, x7, [x1, #32]
-	stnp	x8, x9, [x0, #48]
+	stnp	x8, x9, [x0, #48 - 256]
 	ldp	x8, x9, [x1, #48]
-	stnp	x10, x11, [x0, #64]
+	stnp	x10, x11, [x0, #64 - 256]
 	ldp	x10, x11, [x1, #64]
-	stnp	x12, x13, [x0, #80]
+	stnp	x12, x13, [x0, #80 - 256]
 	ldp	x12, x13, [x1, #80]
-	stnp	x14, x15, [x0, #96]
+	stnp	x14, x15, [x0, #96 - 256]
 	ldp	x14, x15, [x1, #96]
-	stnp	x16, x17, [x0, #112]
+	stnp	x16, x17, [x0, #112 - 256]
 	ldp	x16, x17, [x1, #112]
 
 	add	x0, x0, #128
 	add	x1, x1, #128
 
-	b.gt	1b
+	b.ne	1b
 
-	stnp	x2, x3, [x0]
-	stnp	x4, x5, [x0, #16]
-	stnp	x6, x7, [x0, #32]
-	stnp	x8, x9, [x0, #48]
-	stnp	x10, x11, [x0, #64]
-	stnp	x12, x13, [x0, #80]
-	stnp	x14, x15, [x0, #96]
-	stnp	x16, x17, [x0, #112]
+	stnp	x2, x3, [x0, #-256]
+	stnp	x4, x5, [x0, #16 - 256]
+	stnp	x6, x7, [x0, #32 - 256]
+	stnp	x8, x9, [x0, #48 - 256]
+	stnp	x10, x11, [x0, #64 - 256]
+	stnp	x12, x13, [x0, #80 - 256]
+	stnp	x14, x15, [x0, #96 - 256]
+	stnp	x16, x17, [x0, #112 - 256]
 
 	ret
 ENDPROC(copy_page)
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-3-samitolvanen%40google.com.
