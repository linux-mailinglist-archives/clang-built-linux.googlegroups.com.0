Return-Path: <clang-built-linux+bncBC2ORX645YPRBNEYRDXAKGQEGJUEJHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A970FF0A8F
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 00:56:37 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id p4sf17436905ybp.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 15:56:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572998196; cv=pass;
        d=google.com; s=arc-20160816;
        b=REesFl4QEYjS0xR+EuC+th7uRCF/TD495ZW6B+50rCx5swqybXtt7OmD1AR612zD2j
         HiNkHj2Sb6Dh3NZiZVpNVkynC9x/MmqkP2c/gt1kKjfZ9HsWFGuOri/sXWHcTrZc7WSI
         nrO1tsquen24Xv7iuWGyEKtMmZCCMd2s/fMPACcBKlqXVLVFm3E8Clk3ySqO0nJ8ykn2
         SzHMH3lEYogxTtGwu6xFokRagoKa5OCK4N9Jt6rkBQ1gt2ZZs5KjL/Tl7NZuv4zdwTZX
         KHsVcaX0vNTu+W2vZH3TpCvJ8sqOnyvzu1IDTxPNyUR6uhj9pW0mN4JtiEX8W5plhQx6
         yhuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=AaAWhlVS013fyie4+SGHUkmvzTCMbfLF1NdnpqIzTk4=;
        b=vKEmX6P52DRngH0UbQWMw4FjmjmBd8FU5ksGMIRTSAZG7hVC21X3RQ+9Oj2W/32vtZ
         jieGqmq64rImOuHuahhUOBFdI6LrwajP6rZppYE9espOnhfDdOB7G6rCFnCt6uVDbXrb
         m3xmV1DCg/WBTP0z2hvpvoQWuhLua5+uu+uLBwcfaxxvJE3gocd0AcdAzNQKukSEqp1l
         M+QLhOVxaTi5tngDyMEaBtHeHeq8LIvaqmc/6gH0n+16hCJCLdjTy/yNkTLe1WQoKUNV
         +8xqa+gyqm/AKqptJf9VoMrSvs6eKdNeoKjME9np60meHWZuvET7xBjPuTDgjdzEl5Gx
         Hu3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TKd2so4t;
       spf=pass (google.com: domain of 3mwzcxqwkaeg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3MwzCXQwKAEg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AaAWhlVS013fyie4+SGHUkmvzTCMbfLF1NdnpqIzTk4=;
        b=qI0sTv2Rg66ul5MtDuv3IUVGT9TvA7TRQQpZiLii3y39fvs0ifqTp63Hox+8VK/HpK
         hMhczsTsBrMEyXltaLXDngbBaNQt12qeql5HPh8Dd9ezcM1JLRkQIeSZYVMv8vJntJLy
         dlRT32qiKIdvWVl/DaCf9CahdYehwSev1ZZkrufz6vNSkep0K6xug7RgY1SX3k0E7jUn
         h/mMPTMp1N2eLk25p6RO4desMqFAo8IZfIoi9dNVrEw20n1fVokdti6Q8idlwxmZ9DgK
         SdDzzBtcD+9WFs1M1w9Z+B8TTIO4n4AAreglz4kMockS08yiWFHCK/ApxhgyASiMoLAq
         vxfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AaAWhlVS013fyie4+SGHUkmvzTCMbfLF1NdnpqIzTk4=;
        b=FZlYSiSDu3+S/NJh8w5n5HXA2pzxoxVikItWsGhhuTMXwmu7MDX+b8/nF5DMXznf0g
         nUpDbYXQR/n82pF2g/2DBkbrMhhr1L6dYR+4Gsd71Xc1YLw5strfHyEsK4lI3b6hyYuq
         Naum3RYbA39eDEg+jGjo4T7ZewhvquKEYdy+TLQ5MqRFkr/9T1MflyrRUJSWr3IXAWEk
         fE/taZu8qPKMTN6gqusrBXQbjaEurRzIZhqvcLH7sFVvrUv0gjWbtlDQV5iucjHAXrhB
         LK7/Z9eRRKZepzHPl6dcbAd2anmyGAuq8jt0P/j97JhC7bez/AgZThSeMfpi0wUHigKU
         p67g==
X-Gm-Message-State: APjAAAUCSal9cX7gSy6vkdSiZdXDXC7QV2z01jmjhk9CIL7xHai2PlxB
	BFTKTESFHa1WnUvIJh+Ep3g=
X-Google-Smtp-Source: APXvYqwwx2OlPiwImxLoA6ZzZMj4sLutE+vDYaSu8J0vZ3+v/i5HpHL+MKSW0jbEEdwMC+/zbez/ug==
X-Received: by 2002:a25:808b:: with SMTP id n11mr30905998ybk.191.1572998196653;
        Tue, 05 Nov 2019 15:56:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:af0a:: with SMTP id n10ls83375ywh.4.gmail; Tue, 05 Nov
 2019 15:56:36 -0800 (PST)
X-Received: by 2002:a0d:cb91:: with SMTP id n139mr27405017ywd.194.1572998196230;
        Tue, 05 Nov 2019 15:56:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572998196; cv=none;
        d=google.com; s=arc-20160816;
        b=ndq0Eirk3/my+LEYXhwjS55wVuXHB/rYsIXs6rxU5mnmkufMJGm3TL2k6QppBoZGV7
         GBayvT8iUYy7k6d9dn4ZXu5Ew5Q9O4Pz5S+EzIXeeqAs4bN9BAZMkHNFYaZXk8ICLPod
         mwSElzhhsS3HZ/RsgxxuAaQWtzipX4BsYLorwyP2VqZ3EQMcv7bYTpCU1tWg7qQkZdhE
         FXmdJtTs9pmyU1xwssxdHl92MOqw3i/OSEqg1gu1gGZabSMA//HQ0GyMmtITg62LKJaE
         lgkVa09zcKpEA0jge4UtA/RNicuuwymyYLFUvTdElnzGDUfEZgD8d2NAM2z2/J5mwfZC
         xJAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=rtGYhrlT+v4glRCgBr5KwA8OmlbDFJXwY4ztX1r8N4Y=;
        b=fHNf6VskS51swU07j5+FmNlRQS7OFfEpnxfPglxa+9mdqXL3f4AZZ+azloGrQX3TX1
         i3i8QcaqSI0WVNcLLGiEm9CeZZJMcaISGcetKoW70FP9cB5zC0dBXXPeUKLugplgMa7C
         GSDq6K7224NUdXM2g981Bf9Y4exYgXtNuohAGDOOGSQJYQ2zRAK3KRx/SH8E/aY/RpwR
         Hm/i7uASs18cH2K4YfRns6+as87wozdJA0HE0JWc5GFomJmnKsOjHUFanLZzRTNjiZLv
         Dn5Gb/dxdPUfkaiQ7mB/yTPML1S5RgqeTfBWYxWO9U9IvY7p9Xss1gH/OBlUGu7bPPiG
         xmNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TKd2so4t;
       spf=pass (google.com: domain of 3mwzcxqwkaeg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3MwzCXQwKAEg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id u3si1283673ywf.4.2019.11.05.15.56.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 15:56:36 -0800 (PST)
Received-SPF: pass (google.com: domain of 3mwzcxqwkaeg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id m185so17470197pfb.11
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 15:56:36 -0800 (PST)
X-Received: by 2002:a65:6149:: with SMTP id o9mr5335991pgv.228.1572998195111;
 Tue, 05 Nov 2019 15:56:35 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:01 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 07/14] scs: add support for stack usage debugging
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
 header.i=@google.com header.s=20161025 header.b=TKd2so4t;       spf=pass
 (google.com: domain of 3mwzcxqwkaeg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3MwzCXQwKAEg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
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

Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks. When enabled,
also prints out the highest shadow stack usage per process.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index 4f5774b6f27d..a47fae33efdc 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -184,6 +184,44 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static inline unsigned long scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = __scs_base(tsk);
+	unsigned long *end = scs_magic(p);
+	unsigned long s = (unsigned long)p;
+
+	while (p < end && READ_ONCE_NOCHECK(*p))
+		p++;
+
+	return (unsigned long)p - s;
+}
+
+static void scs_check_usage(struct task_struct *tsk)
+{
+	static DEFINE_SPINLOCK(lock);
+	static unsigned long highest;
+	unsigned long used = scs_used(tsk);
+
+	if (used <= highest)
+		return;
+
+	spin_lock(&lock);
+
+	if (used > highest) {
+		pr_info("%s (%d): highest shadow stack usage: %lu bytes\n",
+			tsk->comm, task_pid_nr(tsk), used);
+		highest = used;
+	}
+
+	spin_unlock(&lock);
+}
+#else
+static inline void scs_check_usage(struct task_struct *tsk)
+{
+}
+#endif
+
 bool scs_corrupted(struct task_struct *tsk)
 {
 	unsigned long *magic = scs_magic(__scs_base(tsk));
@@ -200,6 +238,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	task_set_scs(tsk, NULL);
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105235608.107702-8-samitolvanen%40google.com.
