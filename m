Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3EG3D4AKGQEREL2VYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id CF305226FF8
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 22:49:49 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id x23sf11084158plr.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 13:49:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595278188; cv=pass;
        d=google.com; s=arc-20160816;
        b=PMP03mqnl+B+Yz4DEDPIeZrBA18QaefLpAUHiITYK8CfSLMbqy0N7aN/ZDW8MpxJ+y
         Q1GRMUkh4B3aYqYGXm9rDC3XudTrc2AOZDrDuAQ6Kz7Z8G8fBiRcDTSyfEfw48RW3RV2
         VimAT4xmA6WurYppzDUPDm6Mfoog4JDgxiY772LlTg7MKQrXlYfHU1ZY4xAierm5Smuh
         2/GNF9w4r35LghQ6VazWTlzpxhoUbW36dqMbKe+t68bwX300IOQ1TScnsvIOtp+W5smZ
         l3i2PINt0oAOTDLs47fYj2ll5g8Xl61yZ2JHQxWeGQYYHnxFMhnbs+KDqoSd2wZZw/IH
         z4PA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=IspqzR5V/7AvboWAvR64SBwsur7BvdctkOEWeNw5oWs=;
        b=FPRFqYnd4tS9ASB/uznyDssdSHMZHp1AdqtvUNbD0n9Sye68HQ7N3yc8refsaHkCM7
         2d73yWZ+XarW0M6pAlZHgGCDczwy0UI+LQKAD/ZlEcyACwufN3dp1eeWsUciWGIZLf0h
         kiwICMK11twoXdDVgM8X+TVrvC7t5zvl48yGWbPEeCo06ScunGa6361G+NC9dnsK+mEK
         Sg/JwL7N5xs56IoXW2L2I+3UYExxw76LDKmELNY5JmIJ8haZH+n1ZmqI6wx1apauQ/OE
         pVNROWGJxsHOZrwrXxyfWKRMAs3IblsgREHC/gTXGfyPutN2XZ/mNM2vaS9xT4lGFTBt
         De2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JYYPB8p5;
       spf=pass (google.com: domain of 3awmwxwwkamg1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3awMWXwwKAMg1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IspqzR5V/7AvboWAvR64SBwsur7BvdctkOEWeNw5oWs=;
        b=TxiVcSiYx9YW10Edxox2XrwmFzRzeGUgTvA9cST2pmt+fuWfoE6DfDZacoLgi7aVIG
         13hA42GQGMrIWIZ9j+HY3gMvXq89IeKDnOaTfU7g/VIC7vZ4Z2zqo5B/UX0eJVqHFrIG
         amZm22xX2dwUUFF7RwEghdoyWAUXwi6PGrdDB8hCSgvuI24ONjiiiLrAD5VfjgAzIqAp
         Ax9oaz5FEoOpkhLmwuNDJOedZJTPyUqZP6Uo1LiOrMlqWexbA7ufbiuzGH0ffC/bKRPb
         /LstviWx+EZFDYt9BEqOHZXFTLU1KVqb+PNJ/bFqlDZ0v5N1bgtergY3/Ik6gjpiU/i4
         cd4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IspqzR5V/7AvboWAvR64SBwsur7BvdctkOEWeNw5oWs=;
        b=LQ/lL010um3nFxaOjW0cz2oHk7h+QMZMrONVZXFuXwaUcqfnl8GV/Cno2S3oSUR/zZ
         F8FwERuexlt7TcCH7pBP6hKAwns5twFtc9qvgznOoIM2tGrx45WLiilNuDclVd2nupM1
         wU2RqfqUs/bW8IUcfWryfjhl+GBrwXeFlZDD1J3Yq4O0uFrwtvoR7cPcUlng7EVlEg9j
         LOAIg1zLR2NNsyDl+r0bctbJa6LZI8LwN5L8JfXIVpM+pAoiqfufOOHvW7gaXKNI6ft4
         wd/ArLU0MCm8fZzFrzHkKwbuOEQXv01YLCpi4hZHmVyUbLriju2g36y/coCdjLNNT4Qm
         +IUA==
X-Gm-Message-State: AOAM530jWEz+X6XEaoNO2ETMrm3SnDVo2IW4FOiqvhZsKJsjdHwF6M2+
	/aGyJ+8jOmQXbzXy+R0/Ddk=
X-Google-Smtp-Source: ABdhPJwdk9xKz+WwRhrhFjLPegkFFpeBRWnh6itaiKSOotn6+sWGHgtF5VlTMtwdkZ1l/sGdMtk2yQ==
X-Received: by 2002:a63:140a:: with SMTP id u10mr20987326pgl.238.1595278188123;
        Mon, 20 Jul 2020 13:49:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ff08:: with SMTP id f8ls3116738plj.1.gmail; Mon, 20
 Jul 2020 13:49:47 -0700 (PDT)
X-Received: by 2002:a17:902:9042:: with SMTP id w2mr20167705plz.9.1595278187738;
        Mon, 20 Jul 2020 13:49:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595278187; cv=none;
        d=google.com; s=arc-20160816;
        b=p6Ez1hMHfDtHKE5YZdUmjk59SlIdQwH0uOzRCYa3lYOEm2YBgyTEBdsL89BpIEUip8
         Nr4U5MAdhvpgMUix7GWRRBGsxlGed+9R164inR9eJ+s2b5NQGNwqhgi4Wixis4i6WyEx
         PeF2eEWM4X2IgdH0IahcZa8It470cNILNJg3ytjuYtp7qanOrBkKGNVPsPaeaF2tVyL9
         6U7Isy/2EgooGzyRyUtyGsGtrwsEy9hCZ+9P2YLeaPt7yc69cHtzsSjUnwlUZq0jBbLS
         tt9712w6vGMciQNaccWYmr3i9iAb558SrByP5kWChUPF5fxvPOKjH+QXoZ8D+K+M7MMB
         i6PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ac83xydEfYdvLnMrJP/6mCcgSl/ZzWMIDDapcG1OTQM=;
        b=ZQVSFQAYuCUKUnVojhMfcT85/r/exUAZRINnFOiigJI6Y17l4xsd0PAYtpl4ULUhey
         EFy0S2XME9cYqR0xUP9siu+y9lOHggndV4o71X6WozTijfD3d9IM0Dy/ggQWRWZkHEK9
         UiJLcCmMZvolKnab0w7D0rkZ1fvB4w7EkMD3vcqOIsaF8Ey5u2GkqFruooL48M8XLwPf
         ALDa28zTvotHcE0vAbva/GjLu9PfWws++SHi/rxdXHWfX8E35UNc3hFIu9BkeRJp1gyK
         NYCsTRo6ftLgMgqTedjcm2hEZOZgnnq2aDQp7VNsRIKR1uZpLuXr1N0wmoFalQgH3Q+p
         NTyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JYYPB8p5;
       spf=pass (google.com: domain of 3awmwxwwkamg1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3awMWXwwKAMg1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id a6si1003627pgw.3.2020.07.20.13.49.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 13:49:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3awmwxwwkamg1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id y9so11142149plr.9
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 13:49:47 -0700 (PDT)
X-Received: by 2002:a17:90a:d48a:: with SMTP id s10mr1102818pju.116.1595278187193;
 Mon, 20 Jul 2020 13:49:47 -0700 (PDT)
Date: Mon, 20 Jul 2020 13:49:15 -0700
In-Reply-To: <20200720204925.3654302-1-ndesaulniers@google.com>
Message-Id: <20200720204925.3654302-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v3 01/11] x86/percpu: Introduce size abstraction macros
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Andrew Morton <akpm@linux-foundation.org>, Peter Zijlstra <peterz@infradead.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Brian Gerst <brgerst@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JYYPB8p5;       spf=pass
 (google.com: domain of 3awmwxwwkamg1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3awMWXwwKAMg1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

From: Brian Gerst <brgerst@gmail.com>

In preparation for cleaning up the percpu operations, define macros for
abstraction based on the width of the operation.

Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Linus Torvalds <torvalds@linux-foundation.org>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Signed-off-by: Brian Gerst <brgerst@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/include/asm/percpu.h | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
index 2278797c769d..19838e4f7a8f 100644
--- a/arch/x86/include/asm/percpu.h
+++ b/arch/x86/include/asm/percpu.h
@@ -87,6 +87,36 @@
  * don't give an lvalue though). */
 extern void __bad_percpu_size(void);
 
+#define __pcpu_type_1 u8
+#define __pcpu_type_2 u16
+#define __pcpu_type_4 u32
+#define __pcpu_type_8 u64
+
+#define __pcpu_cast_1(val) ((u8)(((unsigned long) val) & 0xff))
+#define __pcpu_cast_2(val) ((u16)(((unsigned long) val) & 0xffff))
+#define __pcpu_cast_4(val) ((u32)(((unsigned long) val) & 0xffffffff))
+#define __pcpu_cast_8(val) ((u64)(val))
+
+#define __pcpu_op1_1(op, dst) op "b " dst
+#define __pcpu_op1_2(op, dst) op "w " dst
+#define __pcpu_op1_4(op, dst) op "l " dst
+#define __pcpu_op1_8(op, dst) op "q " dst
+
+#define __pcpu_op2_1(op, src, dst) op "b " src ", " dst
+#define __pcpu_op2_2(op, src, dst) op "w " src ", " dst
+#define __pcpu_op2_4(op, src, dst) op "l " src ", " dst
+#define __pcpu_op2_8(op, src, dst) op "q " src ", " dst
+
+#define __pcpu_reg_1(mod, x) mod "q" (x)
+#define __pcpu_reg_2(mod, x) mod "r" (x)
+#define __pcpu_reg_4(mod, x) mod "r" (x)
+#define __pcpu_reg_8(mod, x) mod "r" (x)
+
+#define __pcpu_reg_imm_1(x) "qi" (x)
+#define __pcpu_reg_imm_2(x) "ri" (x)
+#define __pcpu_reg_imm_4(x) "ri" (x)
+#define __pcpu_reg_imm_8(x) "re" (x)
+
 #define percpu_to_op(qual, op, var, val)		\
 do {							\
 	typedef typeof(var) pto_T__;			\
-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720204925.3654302-2-ndesaulniers%40google.com.
