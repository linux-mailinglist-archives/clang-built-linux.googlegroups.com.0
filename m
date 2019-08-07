Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJU3VXVAKGQEAACA3AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id AF96685593
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Aug 2019 00:16:07 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id h5sf56436514pgq.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 15:16:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565216166; cv=pass;
        d=google.com; s=arc-20160816;
        b=ngj5GGP99LRqUcnKhDcUO1upbCmcFnf3XETTQdYus+oGIlNyxK2VZRIwpiV3tCBDqJ
         CjRkk6rn0eWixW4OcreleibL9WtNAvbkmN5wPWKRBiG58hhIbmFpdHlbF+P0abUtwR+p
         stAWynRK/NXtUXLpCWKax/NpTo0D0j9rQZJgfSjAOLP6ObdvjM4GbXCPyJU2B6cfGR8f
         9KRJCZRpLkVtVEG3Ot4l4a5Pq+ZI5G6JGMp5CyXJPxMItODHJOz3PbWofaSD2jphczld
         ixqLk8TFVRQRKO3iqm+uYhnBc3CdxLBUrEgrdJEEyi1hGrK3m4TRar1BHv9EdKNSpptC
         +08Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=K+cTGu6bV/Cd9L4U44PQuLNucLsTZMUDAWCL1m35MV4=;
        b=t+D5bMFBLOUtJYx74rFoW1hkmpahHRAZv8TQQmXdndW1nCZOJEFji8kECa7TLERj6Y
         FDNzENpRbc/4ys8wizFWfqfCKuUeKNmZ+OWtQ8iD9QS3oglTuSHrEJ4vK6EOU1nRKaiw
         Y9zzGxRhLmMQGZ20jkF7384IMbE5FNMPc+vqE6v2jCG1wAZGY1yfvylS335UOrkXwJos
         atk5fdS1RLyCdgca6n3sWeP2UaQoes61cl1j6WSBdMNmLWlH7uc8KjK7XpCZZ6irpaor
         qvNA7rKxC0Lt7hmJ1/nykuJdIB0C6UsuxW6ZPhFmGUuE53QgzmunJCJKJyzNqo0DY8cH
         Y8XQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vy0xZl3m;
       spf=pass (google.com: domain of 3pe1lxqwkaf0i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3pE1LXQwKAF0I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K+cTGu6bV/Cd9L4U44PQuLNucLsTZMUDAWCL1m35MV4=;
        b=hyn5oiz4whUBF243upYOtkdtmzsHmz1znBN3pHFOrGSip/Z9gNFgPQLPIIJbcGo0UZ
         XW6T3nQlIqrclrM6IXS41anGLC1oDWoLxgGfn5/sBAbWudYi8VDllEi7SsEvuXNsLWT0
         Xs9RLiN9TpqV0+UUSNjBcdt7VDAi39WjmVfI4yfAVCFiDdhOwTiOMukV7S/DA2RAubyR
         NqG+o7V1Tnr8+agU91rQPmuF0V+uXZWqnjSZ8eZugeApAKdlM8cR0iiOv/ow+1oIdErO
         1I/Xmtbf+Eeo/w4zVzwoGCzurHJjkgBJ0p61orT1g2VJ2VY0cLKBJdO0uZa9Y1lUvkJz
         wDaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K+cTGu6bV/Cd9L4U44PQuLNucLsTZMUDAWCL1m35MV4=;
        b=PnXAuacbz9P8oaadz5yyHLnqODegVfnaFfGKsBKtEJET4JLqLQlvK+P2nB87hN6vdN
         laTkJ527A0r6d5+9QYjk1s9EdAcneHgC3p19A4Afc+muZAXfW7ixL6K4l8fvTScUyBhi
         M9opAC+Fpm6qCHQYjwBHZ8aDzwa6cv1+oeR+XmdLBXOW38IDmRn1fAwug4IWG5SW0CCA
         6ouNVMyavNVujQVqnY3h5tVEtirp7JmRxE+OFzl5rogac4Yuts9IjO37RQk3pFox5O/j
         n7IPd1AN/KP+ieD6kA1RAhKxIjZKQPz6CdCP6SBifou4yVONkuk3ad8Nqc0EfZ0N1ZtX
         JW1A==
X-Gm-Message-State: APjAAAUQPpssiAqwGJngrvduA2Sttc3xCLtOxItldHw2kvJLD9MGar/U
	bAuO72mipef+J7tsc8UIdso=
X-Google-Smtp-Source: APXvYqzM2ap4fwXwtzUPRIQto6vZEYPTreMKTrndNSF2Vum4hPDZplgP+1Clggq1j/rNyTqX8AWTcQ==
X-Received: by 2002:aa7:9ab5:: with SMTP id x21mr11557962pfi.139.1565216166473;
        Wed, 07 Aug 2019 15:16:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3227:: with SMTP id k36ls94251pjb.0.gmail; Wed, 07
 Aug 2019 15:16:06 -0700 (PDT)
X-Received: by 2002:a17:902:830c:: with SMTP id bd12mr10487260plb.237.1565216165998;
        Wed, 07 Aug 2019 15:16:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565216165; cv=none;
        d=google.com; s=arc-20160816;
        b=scOghT1zPj7i5jMzqlCtsTV1ZMW2IkvRZM3OsBOy7hackaWId/q/r8qLIvHj7Tt4FU
         //XAO0pu1FXm34vM59SCTC8WrnKLAHkgQ/IumHgNokNZQSoHFh87Srho1b1aKk0u6hPn
         iPZ4j1Iq8nfOfDYioiD3cf8k15p4Tp4WeXStG7pVKFgFPDZPhp0FJ9melZEtcP2nlt+0
         /y8A5e/HHHVJ0KHEb7f2jS9y5MD8LrDQJeUM5FYGFh94ebo3Pmm/FAOz8aaWKpM2Ulza
         LMNY8zrwKckfItBET+lxixquV80e9qnPlbfAlVBDWf9ov7VIC1EvoOFpJnvEFGuDI7/D
         hQwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=BTH9OU52XeEKf7Mqa2TrpR96t0HPiKB7u1PceO9qGi4=;
        b=NYQtUr5hiNgDMmmpiBNzAWxXyAI/ILVKmBxuSg1LiuWnx8FjtGO8e6YOTEtUOeBQEH
         xYcB/TpnT/41WnDUZp17pSy0qCeyF2bbvhKLRzloHxSsgrLNL03kkLlqSQ/3xF47mHiu
         aaawwtsAMTb+GMBr8VmDzIlel55TfLZ+w+JM/BKcPMVthfQ4WawiZsY/2W/o6Tmvpus/
         q6fecl58e2pZev4ARMBgW+vFgTp2VXJTbDL/XDxm2PkZzHFgu2CagW511qvi6U0nWi/N
         2llpDqrPBuBbZe3wuOkPFRVnzd9adEdbd8cNy7SN7A7atwt1NlPnbqGQE13jnONNNbnv
         Nh2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vy0xZl3m;
       spf=pass (google.com: domain of 3pe1lxqwkaf0i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3pE1LXQwKAF0I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa49.google.com (mail-vk1-xa49.google.com. [2607:f8b0:4864:20::a49])
        by gmr-mx.google.com with ESMTPS id m23si3437819pls.5.2019.08.07.15.16.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Aug 2019 15:16:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pe1lxqwkaf0i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) client-ip=2607:f8b0:4864:20::a49;
Received: by mail-vk1-xa49.google.com with SMTP id o75so37564906vke.3
        for <clang-built-linux@googlegroups.com>; Wed, 07 Aug 2019 15:16:05 -0700 (PDT)
X-Received: by 2002:ac5:c2d2:: with SMTP id i18mr4433043vkk.36.1565216164900;
 Wed, 07 Aug 2019 15:16:04 -0700 (PDT)
Date: Wed,  7 Aug 2019 15:15:33 -0700
In-Reply-To: <20190807221539.94583-1-ndesaulniers@google.com>
Message-Id: <20190807221539.94583-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190807221539.94583-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH v5 2/2] x86/purgatory: use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: peterz@infradead.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	Vaibhav Rustagi <vaibhavrustagi@google.com>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vy0xZl3m;       spf=pass
 (google.com: domain of 3pe1lxqwkaf0i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3pE1LXQwKAF0I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
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

KBUILD_CFLAGS is very carefully built up in the top level Makefile,
particularly when cross compiling or using different build tools.
Resetting KBUILD_CFLAGS via := assignment is an antipattern.

The comment above the reset mentions that -pg is problematic.  Other
Makefiles use `CFLAGS_REMOVE_file.o = $(CC_FLAGS_FTRACE)` when
CONFIG_FUNCTION_TRACER is set. Prefer that pattern to wiping out all of
the important KBUILD_CFLAGS then manually having to re-add them. Seems
also that __stack_chk_fail references are generated when using
CONFIG_STACKPROTECTOR or CONFIG_STACKPROTECTOR_STRONG.

Cc: stable@vger.kernel.org
Fixes: 8fc5b4d4121c ("purgatory: core purgatory functionality")
Reported-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Suggested-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
---
Changes v4 -> v5:
* Add RETPOLINE_CFLAGS when CONFIG_RETPOLINE=y as per tglx.
* Add tglx's Suggested-by tag.
Changes v3 -> v4:
* Use tabs to align flags (stylistic change only).
* Drop stable tag, patch 01/02 doesn't apply earlier than 5.1.
* Add tglx's suggested by tag for the tabs.
* Carry Vaibhav's tested by tag from v3 since v4 is simply stylistic.
Changes v2 -> v3:
* Prefer $(CC_FLAGS_FTRACE) which is exported to -pg.
* Also check CONFIG_STACKPROTECTOR and CONFIG_STACKPROTECTOR_STRONG.
* Cc stable.
Changes v1 -> v2:
Rather than manually add -mno-sse, -mno-mmx, -mno-sse2, prefer to filter
-pg flags.

 arch/x86/purgatory/Makefile | 26 +++++++++++++++++++++-----
 1 file changed, 21 insertions(+), 5 deletions(-)
 arch/x86/purgatory/Makefile | 33 ++++++++++++++++++++++++++++-----
 1 file changed, 28 insertions(+), 5 deletions(-)

diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
index 91ef244026d2..8901a1f89cf5 100644
--- a/arch/x86/purgatory/Makefile
+++ b/arch/x86/purgatory/Makefile
@@ -20,11 +20,34 @@ KCOV_INSTRUMENT := n
 
 # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
 # in turn leaves some undefined symbols like __fentry__ in purgatory and not
-# sure how to relocate those. Like kexec-tools, use custom flags.
-
-KBUILD_CFLAGS := -fno-strict-aliasing -Wall -Wstrict-prototypes -fno-zero-initialized-in-bss -fno-builtin -ffreestanding -c -Os -mcmodel=large
-KBUILD_CFLAGS += -m$(BITS)
-KBUILD_CFLAGS += $(call cc-option,-fno-PIE)
+# sure how to relocate those.
+ifdef CONFIG_FUNCTION_TRACER
+CFLAGS_REMOVE_sha256.o		+= $(CC_FLAGS_FTRACE)
+CFLAGS_REMOVE_purgatory.o	+= $(CC_FLAGS_FTRACE)
+CFLAGS_REMOVE_string.o		+= $(CC_FLAGS_FTRACE)
+CFLAGS_REMOVE_kexec-purgatory.o	+= $(CC_FLAGS_FTRACE)
+endif
+
+ifdef CONFIG_STACKPROTECTOR
+CFLAGS_REMOVE_sha256.o		+= -fstack-protector
+CFLAGS_REMOVE_purgatory.o	+= -fstack-protector
+CFLAGS_REMOVE_string.o		+= -fstack-protector
+CFLAGS_REMOVE_kexec-purgatory.o	+= -fstack-protector
+endif
+
+ifdef CONFIG_STACKPROTECTOR_STRONG
+CFLAGS_REMOVE_sha256.o		+= -fstack-protector-strong
+CFLAGS_REMOVE_purgatory.o	+= -fstack-protector-strong
+CFLAGS_REMOVE_string.o		+= -fstack-protector-strong
+CFLAGS_REMOVE_kexec-purgatory.o	+= -fstack-protector-strong
+endif
+
+ifdef CONFIG_RETPOLINE
+CFLAGS_REMOVE_sha256.o		+= $(RETPOLINE_CFLAGS)
+CFLAGS_REMOVE_purgatory.o	+= $(RETPOLINE_CFLAGS)
+CFLAGS_REMOVE_string.o		+= $(RETPOLINE_CFLAGS)
+CFLAGS_REMOVE_kexec-purgatory.o	+= $(RETPOLINE_CFLAGS)
+endif
 
 $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
 		$(call if_changed,ld)
-- 
2.22.0.770.g0f2c4a37fd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807221539.94583-2-ndesaulniers%40google.com.
