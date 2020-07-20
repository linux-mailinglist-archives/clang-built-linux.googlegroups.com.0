Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHEH3D4AKGQEHCUVEOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0848722700E
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 22:50:38 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id 3sf2120915qkv.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 13:50:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595278237; cv=pass;
        d=google.com; s=arc-20160816;
        b=R1WqpYRdNsQK/y0DI9zXe2JPAdaHAqZquO1Tj27yy1JN3xT2IauamW0fWXNsffdURp
         8xP1OvI3fqkGmj51iM3bnHVcl6rKYgnDkk+pJIesQLLHgUtCTtjX2jF1uiDpbR8Y6Jsg
         k+rMaS5tLPlFSRvp+otkiMw65bWTZBtVA1FnRIc/p1gnL9R4zustSpbpBZK9j/SYRxhN
         npxPI35yaEAjF0nnSQ/nZK+qKB8pXG0/yks7zLN5f2DV7eF2Xny2mNsoswxzOsFcdjxY
         wyVhqraJXfvwPVnoU4qIfLDtwK08cWYODGYrXpompeAvSWu4pbU24ieJ8WXbhnajwBqW
         0xYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=O6/sHjTqG4+0lpgGLskQ7vsKsipjBrKED3wBW7LJN7I=;
        b=HVun2ovu96f4UpFtUCnxhdgINzbpbvsg9Y6hY3PWT8OCq3sIQIlRKesh3CZNYevraS
         ZuwKc6UeZw2qYutAKE+CyHafPDcLEBPnK0ljfLM00jn6Yfbcdlira3cH6FRsJ0Xa5XhP
         JNmdmBXQleJGGMD/TeMf4TmPjbAdz41vtqZGZkpQDcOu3Yqe6Y3e3bXCJ2otaSP6uhXq
         YvlN49uKmioFoKaJ09i6cLCDLALcXlXyPWLqdro47kG1IFIfZplPMJdtlPTCQ+ckKNG1
         7GSqRdB6GRbzTWUOcOyGItIlJkzybRRFZ/uA3drY/MdBBZxYeLvjWS4gB6Wc7WBha/K8
         RiYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ut+dWC7S;
       spf=pass (google.com: domain of 3mwmwxwwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3mwMWXwwKAPgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O6/sHjTqG4+0lpgGLskQ7vsKsipjBrKED3wBW7LJN7I=;
        b=M7/CrYQPO6Juk2zGRzyblToF0tvXQYykeiUvWMVj9ieC0zdxz5K6fQ8NV1E4y6MBlt
         +4rh7r8ydChiruT24V8W7y9Uz4TPJEI/RW+XdRRsjViMYO8mJ3CVmAMCzo4qpk5QKFsA
         4Hqbn7idrAQeQgDC1jylBrEcoloS1G8HOwdqSI3zLf8GQYBpD8nvvTnD6NBsM8sf1W26
         xm2tnRUUyVavPwBVpmP12Ubg33No4HSIhuFhK1pIcDLyQDWsyZ7Zq3DwF0+uqBUJ1UcX
         ChhPDx8CEdVCwA5FvrwmSeKe73Qdh8jLUBPLvbkuBU5JSjqmpUUDDShblRB1xm5Ps9V9
         75Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O6/sHjTqG4+0lpgGLskQ7vsKsipjBrKED3wBW7LJN7I=;
        b=WnR/Gi+2w+CCaB7wGjikhF52nH5b7rYSf6vHtG00DHL1kG652IcTeXR8dNuXQ96eXV
         2038bL1df7SCupet8HVJfHhsFNuAYyVCLXPKSY3/8NisSSkUvRwi4adcRSNbHgYonaUr
         gnUR+G1bL6w8KNRA8yLjUIxAoYqeCy1vFsTxLloAamjcuu8aYKt8qZZjoPn+Vjd5Gfh5
         PqIgaDsvQYL4xkOLI8FIwbUV75yTvJzI0VZ9aSgnjLsAuJRVbwmejc24y1jKr0JI3L0i
         qI0bIPIRXaRUdS3pToH+e3WhyV9/WdagPpMbo69/3Aa3vXyBBT+Z3EfOuMxDagJEl7NM
         VoUw==
X-Gm-Message-State: AOAM531U7QP6nA5l+/kh5X964bOZuBHJxl3filLmxrgQrMZxSFN7IFCp
	eA20VzHxbzQhIyguxreHzoY=
X-Google-Smtp-Source: ABdhPJwp3p1aKc7QGca2GO1Mf8/AKPohNuxk0zT8i95VpVZXn+Z0DVRVC2QiI1svcte2AyMkY8Nz3Q==
X-Received: by 2002:ac8:6743:: with SMTP id n3mr2559055qtp.7.1595278236982;
        Mon, 20 Jul 2020 13:50:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1ac1:: with SMTP id h1ls3494072qtk.4.gmail; Mon, 20 Jul
 2020 13:50:36 -0700 (PDT)
X-Received: by 2002:aed:37a6:: with SMTP id j35mr25421439qtb.322.1595278236722;
        Mon, 20 Jul 2020 13:50:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595278236; cv=none;
        d=google.com; s=arc-20160816;
        b=EODbJVaI4TFXSCaJJZwH3ki+uzys/3jdDKeg+Ss6dZgLjrJ0b6PIY8d164iVuhiEIC
         WaJOGUAtCdG3lNoQOrYu2zqB5g7monYAyitCoNOEi9asD8GZQnqxs1Xe3NKDla0YrXtO
         vSNNTGH6qqIVV6gHnGHxuHn6PtEh3goqZ8gucMnEwWmnRzk7AI2mDOaXEKmTo+myFO5P
         jnd5qfminOB1yZsatrfVycr4g7Q5zNgcreyZUuwKFST2NB0wyaKhZ5dI36grYDZsU7bm
         lyiJabH9JOFpipcMQEwfQxI4SG/3TiqD6Y3Pj2cv3UwEiUsqFj5HkOr2I9L9skJ7Kb8P
         G1tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=+s/g7aIJprAPntFnrImPLRWCyu/2UEeG13Ydv/LyQTw=;
        b=HxqaUHw5AOg+fz1783KIdgrLq+XPvwV6LtB9VYX2MZquhcyL7HDJcCZfP15geH/nvY
         Aa4kqE3J4BT+oVdGlyYbqY1DCqCrsmFaoGh4HAQPmxAZm9tIdnqG4JOAW1gAwhy3fXYe
         XMRTtpBVplwRyhmeb4I4y1DV6frVv83PiwEX8mkEPssS8yeGv2DpP28wlwTKxXLJSx9K
         uOUtDHTXfHDRbSk1VHvpbLrh+UNS/RHonxxkwZ1pEg9DEFsIZGhiyKpEuxzdLpgGmnXF
         OR2sxMWCtDVxgnQ7B8ipTbsGpxjioAtkwxdcnYYo3gLBAlJFVD7CuXVabXnp9n9vflMR
         5yNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ut+dWC7S;
       spf=pass (google.com: domain of 3mwmwxwwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3mwMWXwwKAPgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id t55si942396qtb.5.2020.07.20.13.50.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 13:50:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mwmwxwwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id q70so487115pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 13:50:36 -0700 (PDT)
X-Received: by 2002:a17:90a:bf09:: with SMTP id c9mr1119491pjs.221.1595278235781;
 Mon, 20 Jul 2020 13:50:35 -0700 (PDT)
Date: Mon, 20 Jul 2020 13:49:24 -0700
In-Reply-To: <20200720204925.3654302-1-ndesaulniers@google.com>
Message-Id: <20200720204925.3654302-11-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v3 10/11] x86/percpu: Remove unused PER_CPU() macro
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
 header.i=@google.com header.s=20161025 header.b=Ut+dWC7S;       spf=pass
 (google.com: domain of 3mwmwxwwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3mwMWXwwKAPgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
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

Also remove now unused __percpu_mov_op.

Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Acked-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Brian Gerst <brgerst@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/include/asm/percpu.h | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
index cf2b9c2a241e..a3c33b79fb86 100644
--- a/arch/x86/include/asm/percpu.h
+++ b/arch/x86/include/asm/percpu.h
@@ -4,33 +4,15 @@
 
 #ifdef CONFIG_X86_64
 #define __percpu_seg		gs
-#define __percpu_mov_op		movq
 #else
 #define __percpu_seg		fs
-#define __percpu_mov_op		movl
 #endif
 
 #ifdef __ASSEMBLY__
 
-/*
- * PER_CPU finds an address of a per-cpu variable.
- *
- * Args:
- *    var - variable name
- *    reg - 32bit register
- *
- * The resulting address is stored in the "reg" argument.
- *
- * Example:
- *    PER_CPU(cpu_gdt_descr, %ebx)
- */
 #ifdef CONFIG_SMP
-#define PER_CPU(var, reg)						\
-	__percpu_mov_op %__percpu_seg:this_cpu_off, reg;		\
-	lea var(reg), reg
 #define PER_CPU_VAR(var)	%__percpu_seg:var
 #else /* ! SMP */
-#define PER_CPU(var, reg)	__percpu_mov_op $var, reg
 #define PER_CPU_VAR(var)	var
 #endif	/* SMP */
 
-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720204925.3654302-11-ndesaulniers%40google.com.
