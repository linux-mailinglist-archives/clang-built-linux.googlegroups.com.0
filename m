Return-Path: <clang-built-linux+bncBC2ORX645YPRBJMYRDXAKGQEHW7HMVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id ED03CF0A83
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 00:56:22 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id n6sf9946817vke.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 15:56:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572998181; cv=pass;
        d=google.com; s=arc-20160816;
        b=X9fZnhdfkAUp80k0tqakmU5psn9SfqXksEoSiStpeRp4OjtD/nA6l0KnDdRKbsKOJn
         hRTnLrI2jSGRszAFDDWvFkJIhawlBeZ1Uk/rn2azppR8zcT/ijp96kkvXX5+7+w0joIu
         8JIGWo6/wKIVOdOUz++horU8JGaM+oc6Upvsd1FVwEItYKovkUzGZWN2Ip5y64/IQMje
         m2Vgi0SZdh/VjeQqDeMQx6woXPJBXxTdXTo6k2X9WwzsfTubqbWMIrJ+hT1ylMzlPQGc
         S878GDQ0zEzrGd63kJmOOdFvWkWPiGhPsepW1zIa0A5immYxYVuKLGn5E9SELAG88PIv
         ox1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=M8TfDU4TSLq2KBTZbCkP+bGFatyccbmz5p4PS2FQTfE=;
        b=Kx60cR9Pho/5nMrIBrSG2TGuLz7ySHR+KqvmXvltMvyfQtTsLdWGUD3ybGZeOC/jpM
         9S2zvctpIu5ZFWdyEXw9sqB2S49BjtGZKeCbxUSmncJnOQ9h7FXQlGjpp+/FRkD/RwLj
         tJwRAbjiVfe46x/bUnBoMHDC+zbhmNtHUFOhoXVqHznPh8bVEscRhUdBcVlY958i3+yj
         CdO6sH2WCRPz0HjKyCfFUtU7yzDyM37ub76S0g/x6/TU543xa3CDRzeXvJYLXhbe0mdm
         iswoD8GyJAfXy+xinlAI9MbodhJIXrYfMZB6SlrXaIT+ZSf8W8QiHnVaioUwVIofxvit
         aPOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LANLIsSL;
       spf=pass (google.com: domain of 3jazcxqwkadknvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3JAzCXQwKADknVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M8TfDU4TSLq2KBTZbCkP+bGFatyccbmz5p4PS2FQTfE=;
        b=D1UHzJJYGBOgOdd4WI56QInpN7/ZLs0Q2pshLfsQNqCNZ62qB6rHuTyWz+DUBXw3yj
         Y5UBCw3EGOv0eQjleuBUQOuP2JRKWMxweYkHip91qmKvRIcxqJqiNNxLbjU4n3oe2U9F
         xvdLtmmpQN2YQfc1McEPN7Qmp86Jtlp/ctbEaYGzengOfmReJ0kA8K85rp3DhPMLmOB7
         kk3SDUSsRtZb1MN7Pd6HgZn7jdnY+f4j0daIEGQ6Ak9nPEpvw4O3YRJHmufDzGYJRR0W
         s+79EjxK21Z9udl71ywxEobHPT4gLG7W/olK1M4hkPKoA8WHRg/C5Kf2celE9bzW94HE
         4IMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M8TfDU4TSLq2KBTZbCkP+bGFatyccbmz5p4PS2FQTfE=;
        b=PhVVOm9A/IHVSe/2V8MlX90dFF8J5GhXGlY3/78kowO71vPs5CXVGSwpZR0zdeUeuo
         s4m3AHW/Yv61NDhorjbrZmDzx++dgU5Xfwb1bn67Cs6y06lk3uAMAKTQvvnj8IRObAuv
         8yRLh/qIEd/JHkKWoerBWn45Y819zFaLJeioO42qRTE/BhC4honxWr/DbNppQ1Q86t1Y
         1FeA9PWQp1S1XsD9URoaEowLHvb5UWKx6XvRP/HE8lL0QZnXKOkc2VCKPuWI461i7wVY
         ADIi/IzCxs6+hFvubFWCGCGQWtbedduCrDIut30mupHyBry8rFlWmVp3GE/Y0t9hU4vI
         Ygkw==
X-Gm-Message-State: APjAAAVDzuAQISYhObr9n2MlqyhPuc1G3O4q4R5GDxDOSH7Hed9jyyD8
	/Dh0ulE7jJoIKhksOD/apmk=
X-Google-Smtp-Source: APXvYqy/Hoc7EbYp0jCqVn9gDv9WwLRcuT/PFx8oVpVdBVvxayLd1alj5wLbrurhA6GkjfglAteGyw==
X-Received: by 2002:a05:6102:1d8:: with SMTP id s24mr7017695vsq.48.1572998181628;
        Tue, 05 Nov 2019 15:56:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3239:: with SMTP id x25ls26539vsf.4.gmail; Tue, 05
 Nov 2019 15:56:21 -0800 (PST)
X-Received: by 2002:a05:6102:752:: with SMTP id v18mr3821551vsg.3.1572998181174;
        Tue, 05 Nov 2019 15:56:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572998181; cv=none;
        d=google.com; s=arc-20160816;
        b=EXIjP9YEm6Y2dNg1DEc8GmE66izaHfFx/qOosZA2dyBLuhwwKd1JTpSoLXRw9nuA3j
         Zz3oANaoTakaSZZUiVDsAqhMNkAAQAmBkIQ24RJb4VQv3YQvDK++66GtdVjspK1i3Kez
         wdAgEIHkwigyUBmqmlo/OjU2TqR3bmgX7EVZkzkq67EP/Dp3IwtRGWXfZNyVKmEXDCjl
         PV6A6ysdGlzgOkFXXSIjllLQG9jJYkIh5lDOVeOAt5SOy2R2UhBKY86c6m3ga0P6DViY
         Vg2qVy5m4KKIHg4yesLyLnLf3qxGKL9rfB1a0ZaL+7roMmYst+kW5Ypfa5aEAdUzNHY7
         Kxdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=OH2SjYe0B8esWxTAcCgR+62MsPomBC+RzRSTMU1rFk8=;
        b=aG299Gy2bzfG66UR7Jp/YYoNvTR7PDclel0iujbBh6I3+RUJrv3CAGhVXmxPSabmC9
         oJty0/LBwj4959+YLXMgivU9UyJ0OxfNLQgj21tS7p1xza3+VatHTQtkWfWb5eWyPHFD
         DsjbPOPNCgZSUtAuUOs/M3IpIFrWFr3IuSxln4uKuumus536Cr3Lx30ZtJc0zX7Yk79H
         qNSyX3Dup1CUZyvnGKHdAEZsvV+zxU+YZ0uJ5pmNEoQ0JPzZI6wmUUPH6ZMPtzjhfovo
         /nHbTki/Ozucfw+NuFVRGAOIhDmMnsEjySmOaHp88hpy7C6Urpe7kVR3XMDm/SHmIk7m
         SvHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LANLIsSL;
       spf=pass (google.com: domain of 3jazcxqwkadknvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3JAzCXQwKADknVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa49.google.com (mail-vk1-xa49.google.com. [2607:f8b0:4864:20::a49])
        by gmr-mx.google.com with ESMTPS id p78si1290361vkf.0.2019.11.05.15.56.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 15:56:21 -0800 (PST)
Received-SPF: pass (google.com: domain of 3jazcxqwkadknvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) client-ip=2607:f8b0:4864:20::a49;
Received: by mail-vk1-xa49.google.com with SMTP id k127so9973884vka.10
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 15:56:21 -0800 (PST)
X-Received: by 2002:a67:ef0c:: with SMTP id j12mr9381038vsr.201.1572998180740;
 Tue, 05 Nov 2019 15:56:20 -0800 (PST)
Date: Tue,  5 Nov 2019 15:55:56 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 02/14] arm64/lib: copy_page: avoid x18 register in
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
 header.i=@google.com header.s=20161025 header.b=LANLIsSL;       spf=pass
 (google.com: domain of 3jazcxqwkadknvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3JAzCXQwKADknVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105235608.107702-3-samitolvanen%40google.com.
