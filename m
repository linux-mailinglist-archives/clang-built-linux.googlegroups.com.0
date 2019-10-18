Return-Path: <clang-built-linux+bncBC2ORX645YPRBJGIU7WQKGQE3NCDCFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCB2DCA70
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:11:17 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id h188sf4785595yba.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:11:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415077; cv=pass;
        d=google.com; s=arc-20160816;
        b=DIhbAi3MpBPZ2htZJ7sDbhApjDoDYz4yvh+UZCnlxC5Xe425ayjYwcHPy3ReWsRn/B
         AYHFjao0INwpdsQi/I3LTWYXlgsYs0U7IIr0HGZhkZ+6UO3fWtSXNMN5cFbhmYvjqoBp
         vZ/W13XiBTPf7tbU/Rv23tDlIlVbhg3R3xbg84YmAwD9J5DnFk5a1LkPXDL9ryur/RAx
         oZjutg+Ce4YCSUv2EipDrP9jHAH6y4y8dOXKNTsYeC7jV763ZD6GvAE9F3FwaZCVia8u
         5jC0NTsU9TZTSfO8o/PuQb7Xs1XaX2uRLcx0X19q5QnDHhbH3CwRKqKzERK5Y5XL+8TR
         vzdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=SVgwSO07E3hUE41k+VcKNtyRjS1o6WpH7xuAGgK8NkU=;
        b=yQ26sMv8VPUr+17dRWQUK0uEva0bCK3XdhJmUQIF4KuoTufVL6QjFe/OLqZ3YpjQTC
         fDk0KBb1axhFe6Y2QJ5ElK5xlJdYbW3a6hP9UMU8GIobImVJ9kNuOXKIh70QG5cKVups
         h9wQvW4HZYilEKUfZEd0YUfJbOfLn6t6WYNDJc2JZkWM/ybo3vPjsTlpl8ndakTY1qBl
         yQLurMo96ZkDDehyvURpnwLBH8Hs3UMCSGMuosiiExNl3RkFrKhZp2/pbYAyu3rIx/P3
         qq+KSXB/V1d5zGAeFtn7mwt8WpRgyKVD137uKvpGjfHwzCW2fBUZ5i4PM1v75rDn5mDI
         AkFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JytSfSIK;
       spf=pass (google.com: domain of 3i-spxqwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3I-SpXQwKAIY2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SVgwSO07E3hUE41k+VcKNtyRjS1o6WpH7xuAGgK8NkU=;
        b=kTinrpoAPaJ/QAFVCXY+0b6DSWY0p220+tQiFFNTwt5+66RyX+69EvSN+QfCjq3Hzq
         iVBm+K50ixmc0Am3iNQiFXze5jtWrKDhGmtGSMgpCR2tpU8qn3tTxKt2y0Ufu6ihUJyC
         oVb1UDHxgwuSn5HmaAs/tCyRSJrRZ4N43Un1Z8DbMZGxKbBCjPw+o2q6n6V9rXZ/cxgz
         bljGTLxnR8/wOc23En7Ue0VhJI1IrvsElEvC+O5NEMQUnokmOpYUjjYRXO/bDTl2BtxD
         dbF1H+JMsynviROKl+4/yS98fNp/SqHczhVxQOm2ZTfCKudvssoGuzhY1gAw0r/yQTr3
         Wd4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SVgwSO07E3hUE41k+VcKNtyRjS1o6WpH7xuAGgK8NkU=;
        b=Od27hjlbwUbiPLGNkvKuG3q+qVBEIdzezwIRipRBwh7kg+Rr/u8fjXdaf6su9Cx2xY
         lJBmE7gWkm8FOpXwDzPk637bkLp0Gd1cbuVwuToSNFwZMteu61GP3ZeM+X/ADDLKjcnn
         V/HECcEyZSCr6VHNqasSXB6aZwYEFltg6qvj7l6nqgxxL/WrJqCkslWs1n9GYWL2g60S
         NCXnj5O+TWOaYsnzLMV60lnNMCztfXVQvofuavSzEIg/D8xFbNSiDSpAoU2k4vea6rIv
         kWGlf14FZx7+onZcI6TUiJUe6uQ21G4qNBD7GRorOKgIbr5hRB8uzfSEEqEJ9Vok8VuN
         IO6w==
X-Gm-Message-State: APjAAAX7SvYPMoMlgSsuJnSOpkxZcxhDpBPA+B3J2LXxYL1qaG851Fsx
	UQw0vcdAkSNn/wzmbmM3MeM=
X-Google-Smtp-Source: APXvYqydRzPS3ceoANnH4yGi2GcmaUGfoev1U63LrcKTMPYcajMfTBsJ0LS4lsEg4QmkSO0szHTUlA==
X-Received: by 2002:a25:2d62:: with SMTP id s34mr6609878ybe.45.1571415076912;
        Fri, 18 Oct 2019 09:11:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:3dcc:: with SMTP id k195ls1047122ywa.6.gmail; Fri, 18
 Oct 2019 09:11:16 -0700 (PDT)
X-Received: by 2002:a81:4320:: with SMTP id q32mr7420660ywa.464.1571415076636;
        Fri, 18 Oct 2019 09:11:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415076; cv=none;
        d=google.com; s=arc-20160816;
        b=dhwMXQPsdA8DXDcm5dWJyn0Tks2nXMUFJu73aqJSrR8NuYZfQZYm9gTWiIpznI7Ypj
         qvLJ+TnZCVb4cBxd64SpfmHi6Ui1M4x3KucbDpk+u+Wgq59zFvsDWlSW0+9uWAjqgPlo
         EmzbSW0Dm1WMZZEUkJnKSUZ34onK4Nz9u+SM0mnA1Mk4uzH/M8m9IaYxBuCv/4bcFNF5
         MoqLDgZF2k8pPcDHqaPOWFe2PPsnpiZ0ZRuOMAueiWP/XeZ+9agOolB4Chb5NJxeqXgn
         JpraJA2VM8mm8RlgbD/iKuBFHmT8Ij3NJq/pg+I81ba1P+6Nc+/GX7d/lhz7iOgvFhlh
         nzew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=O8IkwU6sBVUF8FqvV1I5skAqoYbhLBF9oLtPiANlCGQ=;
        b=TNaNNT0uR6axiXebxiUIGS9t7zPAfczrCTZp0Tc2ySr1U9PZwDRjHadXS2zVN954Fm
         dmDAIHWtCUEAavOK28U6kCe7tPE9x1/IrIlfuHO5gHcuTUA0FFinpVcoy7jy1Kcyx71L
         fTWdw0joQK+fesZwX/w52o7pRPBFUd73zu4UjUSVuuji7B8BfWs/DZ2Kuokd3WFf4+T9
         6NdneBOK7U+llGjICLlVo30fBAtyxZm5M1rmMG4sTy6T3rueRIMc08iQQwLqmwahgB1o
         0TvLN9tyHcjoNK4e6pbjXqGWACE03Bvcx+urfshGAp4Szbvdki4yLjSHgsfEbT43SWD4
         QYyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JytSfSIK;
       spf=pass (google.com: domain of 3i-spxqwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3I-SpXQwKAIY2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id r9si366100ybc.0.2019.10.18.09.11.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:11:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3i-spxqwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id i28so4967217pfq.16
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:11:16 -0700 (PDT)
X-Received: by 2002:a65:68c1:: with SMTP id k1mr11253965pgt.286.1571415075496;
 Fri, 18 Oct 2019 09:11:15 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:25 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 10/18] kprobes: fix compilation without CONFIG_KRETPROBES
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JytSfSIK;       spf=pass
 (google.com: domain of 3i-spxqwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3I-SpXQwKAIY2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
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

kprobe_on_func_entry and arch_kprobe_on_func_entry need to be available
even if CONFIG_KRETPROBES is not selected.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
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
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-11-samitolvanen%40google.com.
