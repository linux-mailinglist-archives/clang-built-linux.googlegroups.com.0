Return-Path: <clang-built-linux+bncBC2ORX645YPRBCVA5TWQKGQE5PKLZKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD21EB527
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:47:07 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id c16sf4249515plo.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:47:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540426; cv=pass;
        d=google.com; s=arc-20160816;
        b=fMv1K80ppPqhQmH70X3NmhGfuQys/92ijlB4OUIkoWxoXTlXOkUAZdIEsySQopJE/n
         r7VcrmVSGp1WSfgiQI4OHH78I/mrQNQttVOmeIMWqrLKcTM4fMPnd+NVxB9oP6dORV8b
         e0SzIZ7yqnL2b1mwubvJeAAJql5x8+XSVf95GPkt/IeekNtkN7vf95PySrNAdDC5pEnV
         vng/xjhQbEPpDfGoDMSvK9NYFtt7gxdSgeGnIPdLONbJQS4DMBQRGi9+nkmjcaO+pEE8
         Kevp8dOg84M7czcFjFpjntCkd9dKrnKnlzb1sKi3gpqF+oM4ox5GAHqQT/p1zh9v5MkC
         QrSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=32Buv9S7FJAEAQ1Scv1s5zcjBevR0KQWsZ0syJL+bi4=;
        b=hJQJ7RH5DuvBJEYjHLkgcFgOMVZ/MzOx2t4O5Uq53lfzxTV71Z7dtb3ob9swGDg3dM
         lGklSXfXql/7PPv4bUprxu8+1ISEqFEAuGbR58h/qDMcqwK4rF07Yb5Pq92hqbAb2isA
         RY489E5bznt3oMiiBsmbwcxoo4Mq+bOLWvKOt5n9pZBIMvlmJM20kAylDXvyzy0Al3mD
         AWdrNO0dieUcUXnj0JTiNPG6Xt/pLmQikhey34SHKNZigwPzgOC1KRDOZ+TWZLZn0diR
         LJIdkLk/0Qhwo7+7+PRoJ9Yw8/wpzuDiLt7fIX8A5F8Zf3etSpW96oFYcVNCUVmfYO9a
         5g7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ghjlrkb1;
       spf=pass (google.com: domain of 3crc7xqwkaao2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3CRC7XQwKAAo2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=32Buv9S7FJAEAQ1Scv1s5zcjBevR0KQWsZ0syJL+bi4=;
        b=lLzK0LHogAePe245ceM58ZAXp3YcYs2S0n6K/3m+qyZ1HauhBLzlJTixmO1Ae+ve4T
         1n3IZ2rQm7ZJXmU2wbVHFcE0o8S2UFEbYlxY9bVZx2YTOod4Jbj8W7+4Rc1z1XCb0J7s
         ZnKqZ2FwbjuPtDUKurwCSm6SGb084VoNmIaYda23rxuMyBmzGT6xs6tU3jUcFbTAF71n
         d+EzJXa6mpYVLUIXfTSgyFP84CtR8l2N0pbGdG50yrn+l/LFCc2DHO8XXQS8bteBd5LQ
         km4Mzmd6wBWYtpGsQMWoKfevktipgIgzmiZP99i3uDg707UVDH45bzBYTJo0GhafhGnb
         h/vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=32Buv9S7FJAEAQ1Scv1s5zcjBevR0KQWsZ0syJL+bi4=;
        b=uESzU22LBlZ/UkoOen6ELAaSOYpffLg8y98EEmWuvvf+UVFOXUc5UcZsocybh3Q1Gi
         /WDRW8bkHQoGDbspWGXxlm003AyVHkhr7zA+kDZU1RcYPlSgD3NgC/6m2sy4vR4w3D12
         K89dnGGUcRiGxaYplmARWNCJ1AqMZrgWmZDqWkrIP968zH0eVUcy6i3T3miJgj/TTEin
         nlnrTcrrmeygTZLF052+rRGG2oT7Jjgmy0l0MrKoxvMxI6JthI6kR7BE1rjqqHevWwOY
         RSiXBkMYAqX7nAOFIeT9bhOPWv7TGRQnSj6ir4L1Yczx2rpcqqBR9rS2NqCzwNEtcIby
         Vwww==
X-Gm-Message-State: APjAAAVnwE4nX66FK28aDgtKOq2ofXYpYRHeP6Oazo31FEVNuDkJr2KN
	Z2WmRRZeIqTK/hiUIDx5aKE=
X-Google-Smtp-Source: APXvYqz6r5m92bHL/lFkSnkL67ikARVYoQX85pV+PQOems3FF2kO/KCg1MbYthOHjZwj9w7L19AbrQ==
X-Received: by 2002:a65:404b:: with SMTP id h11mr7793245pgp.28.1572540426042;
        Thu, 31 Oct 2019 09:47:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a40c:: with SMTP id p12ls863340plq.3.gmail; Thu, 31
 Oct 2019 09:47:05 -0700 (PDT)
X-Received: by 2002:a17:90a:8048:: with SMTP id e8mr9071369pjw.0.1572540425728;
        Thu, 31 Oct 2019 09:47:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540425; cv=none;
        d=google.com; s=arc-20160816;
        b=VnMISLRKlIv5tQ+dZVo8OYsx9AX1AyGw7FlohzsqOwev1waNs9UF2CJLBW6C53W8fn
         cK5NJ8UQbQUchFFzvuzK8l9QQC0Z3Ov4S//HaygjRx7CKH5PcQpWaW14FOQ1Kn0Dp4rd
         Wnm/4RLei3LEU8kEvKjn7BuDOMtsE/1ZeL9DY/SR7H8fQz299NQ/NQbuppsfumZ51tc2
         6hWYdfRP+UIDA7Wvkbv1D5vLEUQ+NZOyhqWTieHLtZMOepjvnUE7+IN1LG3lhHrM8l8d
         v8ztbDVIKGth09GPg3ZGS4sX4dBu/7U7+KsPX5wh7/FoaJv4vyhjp6S6Tn9pFAqEf+D8
         ZNbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Ut7YUpLvWAiZLonPATqZ5OL9tOEZJcNF7+tDsNdHEWU=;
        b=xUdqamQD9wLVPlX2H4bT0UCkzKDr50YkzmL0WnYzE2/mI6ZX1NjllPU6agM+Dj2Twt
         QguSXNkXNW6hmPA+LCxqTSFx5wWJvnNgfdixS23reRFQf+rwgE/2erg5eMtWpc5D/fnX
         g8vYFZbCherMzZQgmjnKA6Wrm4ygjBKnaxibNNPcoOKV7rBYOzNnq9ZlDQAIkrIEwUQu
         9N0CriGkCCQV/JLJLNu2c70VBhIkdGCjBaCGDDEMRit3FXFUiUQvG/GTLRAWiu/T21jX
         ZOtVLOueGrSx1YChsYDuyx4E36A6UN6whSJxFrykGzU3exXGkRNJaKvJnj2vbLr4Oq8x
         QpKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ghjlrkb1;
       spf=pass (google.com: domain of 3crc7xqwkaao2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3CRC7XQwKAAo2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id t17si288098pgk.0.2019.10.31.09.47.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:47:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3crc7xqwkaao2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id b14so4773921pgm.22
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:47:05 -0700 (PDT)
X-Received: by 2002:a63:151:: with SMTP id 78mr7160557pgb.95.1572540425150;
 Thu, 31 Oct 2019 09:47:05 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:28 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 08/17] kprobes: fix compilation without CONFIG_KRETPROBES
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
 header.i=@google.com header.s=20161025 header.b=Ghjlrkb1;       spf=pass
 (google.com: domain of 3crc7xqwkaao2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3CRC7XQwKAAo2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
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

kprobe_on_func_entry and arch_kprobe_on_func_entry need to be available
even if CONFIG_KRETPROBES is not selected.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
---
 kernel/kprobes.c | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/kernel/kprobes.c b/kernel/kprobes.c
index 53534aa258a6..b5e20a4669b8 100644
--- a/kernel/kprobes.c
+++ b/kernel/kprobes.c
@@ -1829,6 +1829,25 @@ unsigned long __weak arch_deref_entry_point(void *entry)
 	return (unsigned long)entry;
 }
 
+bool __weak arch_kprobe_on_func_entry(unsigned long offset)
+{
+	return !offset;
+}
+
+bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
+{
+	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
+
+	if (IS_ERR(kp_addr))
+		return false;
+
+	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
+						!arch_kprobe_on_func_entry(offset))
+		return false;
+
+	return true;
+}
+
 #ifdef CONFIG_KRETPROBES
 /*
  * This kprobe pre_handler is registered with every kretprobe. When probe
@@ -1885,25 +1904,6 @@ static int pre_handler_kretprobe(struct kprobe *p, struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(pre_handler_kretprobe);
 
-bool __weak arch_kprobe_on_func_entry(unsigned long offset)
-{
-	return !offset;
-}
-
-bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
-{
-	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
-
-	if (IS_ERR(kp_addr))
-		return false;
-
-	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
-						!arch_kprobe_on_func_entry(offset))
-		return false;
-
-	return true;
-}
-
 int register_kretprobe(struct kretprobe *rp)
 {
 	int ret = 0;
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-9-samitolvanen%40google.com.
