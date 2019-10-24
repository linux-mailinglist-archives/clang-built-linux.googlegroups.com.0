Return-Path: <clang-built-linux+bncBC2ORX645YPRBKGWZDWQKGQEFPKJX5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5D7E3FA1
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:52:25 +0200 (CEST)
Received: by mail-yw1-xc38.google.com with SMTP id o130sf384307ywo.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:52:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957545; cv=pass;
        d=google.com; s=arc-20160816;
        b=nLQqJcfIcriyXGdGds9ZH/wIBJutosItP9Y5nkqF7x4vFA4OVMQyQCuCjcJDXVS2ha
         bO40Fy7DzW4sgqjU+ngdmIuN2qKu4cSoSt3l1TAs1eOKtzZApAO2TD4JM8reBrixXtKy
         3Mi4DgdJB/spNeK+eFYhhSuGD5Jmt1s/gUSiNzIWZjprofZ7fOjZUgZrkGTUr6qMGp55
         lMVhUWp9zYOaCRy+xIqKO5axlWrLmqgk7+j6axjopuPeq4mMc4YEBeevrco88LrA6zz4
         PLUNmsy6r301NCW78yfhcv8icWa4MgmSaRsD4uB3NyOuKNKcDmjnb/7gmhDHOLsd0w+F
         ORIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=MCUxh4k2gGXUPVvQ3vsjoYEyKohMPnA/VJpWyBTnPzs=;
        b=Bu9lP3jeoXiR1XYjDGyP3SuvDXF//37Z9xxrHwL3/xiZqTy1ylDKgeT4cGjfsqEPUF
         p9372DZTILK39qTzJxurt969ZIiZC4w81i4a+/rcNKtg9qfwr0tZGFgLGLIXckOBsz6n
         qAuZLVWgwWzNiGoJ3eOPdqL07aYydoZyaLIGwOgOajhuUvO+6W2QSWLxJzRC0ZP1PHqI
         dn9SAAE0O77QPT+GZkpnanZ/l9hFeXUzfgBz5hZ9aR0XXc/Mx385Ml+iOTJ+jEtb1SGS
         9zN3oIyAppHwuOqpzCEOee+jyfGz8f00FsLBT6qxbzRMP/jaR6VfBrwalrs8DD5qaHYc
         KfSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H2b3RZCL;
       spf=pass (google.com: domain of 3jyuyxqwkadoowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3JyuyXQwKADooWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MCUxh4k2gGXUPVvQ3vsjoYEyKohMPnA/VJpWyBTnPzs=;
        b=SsXAe26kz/BlW5rRvQvi6C1eyjAoIUgP7mThUpRZg0Ag/Y4dva2RvBZaekHZjgiBqj
         WyFDtDeJogHgTUxzmvCYY7hmEc5jSLvsCOr4Rxvgyznas+eh1j+IlAFGr6MkO/cjVDpd
         Gouv7IE+OEcCiBJsOePHqpmNBUDHE3eIjqW2h0jNXu8B16rUM7xalGKHt9k77EovGs5f
         +CRD9D/idckHw3fHrkYqjiUTPlOVsYRFUu6L3hXUN9w+AMbfEann5R97ZWEPijALDff5
         dP47BaW3k93DRwe0Z+S8N6mUrICo2dkwXtCvVrzveXejuGXuDV/80Wq3FyTnpR3PBAIe
         mIHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MCUxh4k2gGXUPVvQ3vsjoYEyKohMPnA/VJpWyBTnPzs=;
        b=OxxJbzMHJdYsh87t+X9AgELGEYXJIEpOMj9Qi6DI3kGmXnXL0QtOdwJyjlbmLEonIe
         lrKfxHAie55IDOPBzui2kwiNIb76VpyBCt0oT2OYFhzi9ECJGAiWFrlxyEEGrZY8/q8z
         Xzw7H3j8aNzFyvqtXewwdBijVTx89cOyvp0CiL96DPC/3xuL2WvXaJ0T4Ynmt68yvruW
         gYiJOZ9bhqV0QNIjnrgeUwawrTYjSQeAYpvaY/lI3yFs5D0le2Pg4yq+Phz9gzd85xir
         hlESYMzAOhtfnY7lmACw/I4RWxt/s41rd3V7izNCa29fQje8rAoTUt1kFQ/2vlOIrRyd
         0+mw==
X-Gm-Message-State: APjAAAX2UP2tYTKk22Im5/C6GtcGQKPrMwB2G6H1VljrRDCGUG/KdNf2
	c7taJSQARoBinBom8RJlIKQ=
X-Google-Smtp-Source: APXvYqx7cmv/k/AC3chY8GoMqkG8oNlVh+7KB+TbI8ECknNxi69W7+Tb6sl5F+UxjFSoP67ogWN5MQ==
X-Received: by 2002:a81:2a08:: with SMTP id q8mr8970147ywq.195.1571957544984;
        Thu, 24 Oct 2019 15:52:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:ea09:: with SMTP id t9ls545146ywe.3.gmail; Thu, 24 Oct
 2019 15:52:24 -0700 (PDT)
X-Received: by 2002:a81:9952:: with SMTP id q79mr4539288ywg.89.1571957544532;
        Thu, 24 Oct 2019 15:52:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957544; cv=none;
        d=google.com; s=arc-20160816;
        b=r6V1h647JAMyycmqj8XEnmnh7WjViBdGntRIa3t1qE9dOyllPS31NZ8HNQ58hW5foq
         ajZo9edYoB1R/bhp/ni1GdQL4V8PqC0Bc0Vtza5to6eZQrdNtE/ySgZnHHD+8yFHLXtn
         MOjRn9QFP9+OOP44r3yx7uY1IYN6E/Cp7GAkp2Mxn110x0kUAAHNggCvczgFZFp7rUJ5
         qAcdFcIz48vGlOCqhSkivAWiZPTNOEIPgJPHeLKkUHEVdA3TAgcY9fM8VVbKN3nYRBEl
         BwCF+SP1vWKnisiJ5WgWzNVAeHXVvg+x0ugNVMDLjm8gUb/O5DjoRG0G/L0fxS7o3Zg3
         /bAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=3L2fKWe0mnTKbOXtDJWS5MdWfgbISjm7SM0mf8jhMMs=;
        b=lVCQtcvrGslsQHr0RjtpA1vxFazwyu5T4E8NcyUAlY1S+ozg3qpikAYPPKXbXxnQNs
         U6hQgwp+KXIr7ovN2HYgCockohMw0srpWQfzy0oG1g9KVvhN92g5i9B7684IKPiVJVqK
         iE9YnmzOT7uHyTGLTnO6LdyNr3nEWaMySl0do5LPzeZJRH3RAOVidmw1wZuq1qt/fo19
         t8SfrBtHnX4ySN5Xr0zNy1LXuxhoA1y8oYwfXxoY+MRJZLTyH70/WDV/vp4/jzX5+WOs
         ckHkMhBv4PjiXQqNqPTe0KM7AGJeTJm2pF8pRU6U5/zrik6DbiowdDoLoc9NKwx6nzxp
         ePlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H2b3RZCL;
       spf=pass (google.com: domain of 3jyuyxqwkadoowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3JyuyXQwKADooWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id l3si22877ybj.5.2019.10.24.15.52.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:52:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jyuyxqwkadoowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id p14so193566plq.2
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:52:24 -0700 (PDT)
X-Received: by 2002:a63:af13:: with SMTP id w19mr469567pge.189.1571957543335;
 Thu, 24 Oct 2019 15:52:23 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:27 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 12/17] arm64: preserve x18 when CPU is suspended
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=H2b3RZCL;       spf=pass
 (google.com: domain of 3jyuyxqwkadoowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3JyuyXQwKADooWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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

Don't lose the current task's shadow stack when the CPU is suspended.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/include/asm/suspend.h | 2 +-
 arch/arm64/mm/proc.S             | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/suspend.h b/arch/arm64/include/asm/suspend.h
index 8939c87c4dce..0cde2f473971 100644
--- a/arch/arm64/include/asm/suspend.h
+++ b/arch/arm64/include/asm/suspend.h
@@ -2,7 +2,7 @@
 #ifndef __ASM_SUSPEND_H
 #define __ASM_SUSPEND_H
 
-#define NR_CTX_REGS 12
+#define NR_CTX_REGS 13
 #define NR_CALLEE_SAVED_REGS 12
 
 /*
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index fdabf40a83c8..0e7c353c9dfd 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -49,6 +49,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 ENTRY(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -73,6 +75,9 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	str	x18, [x0, #96]
+#endif
 	ret
 ENDPROC(cpu_do_suspend)
 
@@ -89,6 +94,10 @@ ENTRY(cpu_do_resume)
 	ldp	x9, x10, [x0, #48]
 	ldp	x11, x12, [x0, #64]
 	ldp	x13, x14, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	ldr	x18, [x0, #96]
+	str	xzr, [x0, #96]
+#endif
 	msr	tpidr_el0, x2
 	msr	tpidrro_el0, x3
 	msr	contextidr_el1, x4
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-13-samitolvanen%40google.com.
