Return-Path: <clang-built-linux+bncBC2ORX645YPRBF6WZDWQKGQEAVUKEJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id B17DBE3F9A
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:52:08 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id s4sf30014vso.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:52:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957527; cv=pass;
        d=google.com; s=arc-20160816;
        b=frSQQNO194GjcdNIxta+k6PtYXbrkp6sgG4lXv7o0o4wr/We3uUyZAuV3ZMgFiJIZy
         KQdl3Z1CpGYGU8DM/5UNbjzCh6h1HsXgGpunevx/NWR6Wi0kXSxCHkc8aiR46LYLphhb
         IggLGWoVWWeEuK2A/9sWT0v9fUPw9yvypu8iHQJHgGWDl3vmkCzP5X/GZT7w5MqY50GX
         LUQjHHxyv2YDyGTqw7VhgaorXFfYyVWJXaco2l6U5UyW6MJBiGSN70lTSqm7v7AJtbVy
         Tqhh2YpgtwX56yISqp9J1j93O2jAlGwMocebsOyN3HgwyipNmEev5MATQn/oBIA1Sqwm
         woBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=D3xxI5smCyKG2uUKYMoE0KgizvL4U477cANh0QRHhyQ=;
        b=aT9Md0mODlc7PmKdNhD1DwNYfe0n57L6Z+ut0C9FNbYqm4iAc4zu2DHnwmDiU4O+S+
         PF8rGYIS+S9cPz1ep1LYCiwDkbNz3qMZgz4/W2jKAXDcWtL4zPuZnOpb/4ZAMn2gjI/c
         egmAjlkT4piyfd2DCj1lsbjoVfhP8YZT86OkRH+TxBb6tEMJiN/JhusHzFNUrk4yW/nW
         jsW9OSf7J3rnmSsN8AkoyuKh1Wg+ZO5OneJ1/krw2hDlYOUIthmo0FTlOqzMO7gXlTIu
         CUn9dROJx0LGPbeK/VlErMJ4uiOQXCRFq769zA/6nsvY0mRVPxxqmxk4/1jqZT7r5jIm
         oSiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yue9uHjm;
       spf=pass (google.com: domain of 3fiuyxqwkackxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3FiuyXQwKACkXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D3xxI5smCyKG2uUKYMoE0KgizvL4U477cANh0QRHhyQ=;
        b=pUnSwgseP/q4B+ZfazJYKFKLEqH5N7Mq553ny315YDB3yhnucpXZQMd5NAvEDo7wfh
         RFeEOQmfhun16Cbk1gzncBFnNQ7w6vRwq43hJr5ZNYXdNZgxo/G+L7esWlcmt70tFY9B
         Yq3UMnSWdtqXCwVV3ljl2ySuay9JGiCr67P3GA9LlErVvhGcuH94JQDjVB1Rjw25NSjU
         L3HnAm7Qs6s4BPk6g2gQLXLvD5aOXQw7sBrC7Rx3VTTLFJ2AB5KkMjy5BZsmLljpADRW
         hkNUDwnIDjVt04FYa2pITgreqXBU6Pdcr4LHsei2mSRS0d0WDqE+arzW12XSl6xYG52y
         PCOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D3xxI5smCyKG2uUKYMoE0KgizvL4U477cANh0QRHhyQ=;
        b=DDpouzSFPF2ihcu7WjkFBM+Ij8T8+V/l0f8IWUTghu72h5yO/VSBYi317j/yxfzXv5
         ZOQpGD6KZPCkAwKt6YwbBQWqWTrmehun2p3d1IomFgDOUf0+ILG9hX+VidZiPpnxdJwK
         k8yXEoqyFR8H1nl4c9eT1ITaR5oNLiq1dfCD2jKR3gd8qTIU1czE/zGLe2K8KjVD8Cwv
         W+U78EGNfq5HWEYIDQfuq7vd46xlpcoamMQbDeBG4rg7lUq63b783dyUN3TDk5SpsLlb
         /XasD5kElaWk5uFp0U1Vz9KTPdwsvLs6U5GvOI1uFvA3HPXh0Rex2QWZUoPIXtTwJpJo
         vHIA==
X-Gm-Message-State: APjAAAUzGi8FPsEUpq4jtrcoT9Ipt/3rF9H40GaVsgzD/zdyQG7C2Sh1
	IiwR3L0E7IsA+nvf9Mj18E4=
X-Google-Smtp-Source: APXvYqwWljpQLTNIs6kppENNg4dnjPVN5P2hD65GtyscErPRh3wMcnqQ9bSjJsBN/Z0OvZf2o3EayQ==
X-Received: by 2002:a67:ea01:: with SMTP id g1mr359709vso.77.1571957527777;
        Thu, 24 Oct 2019 15:52:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a34b:: with SMTP id m72ls290339vke.13.gmail; Thu, 24 Oct
 2019 15:52:07 -0700 (PDT)
X-Received: by 2002:a1f:3f88:: with SMTP id m130mr532306vka.7.1571957527303;
        Thu, 24 Oct 2019 15:52:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957527; cv=none;
        d=google.com; s=arc-20160816;
        b=ox+MPl5p6FnBFi1OqTsNdb0HcwouBwMWe1hbqd3nZiT4dwJKql98VIMgYgzUhPLXg6
         WV3NFz36z/kEod/cNTBA/NXCs7ayrw9S157lmku+f48SNuA+aCz15c9dCjIqFpxywKvg
         tW/PeEsHQOJz2M4y1dG3JBT5pfTHzw/TupndOU5k9e5vMsi79WCFZVam0JC1GrvEHzMa
         ByLAULEZoPTRjnu5yyT2uNQmunWoajcmTweWJlHugcOqP/KrwZn1EJ2LGg3ZuPe+dupT
         4B4FkYAZJWyB80Xkp17jb12PUN9dRfL9UqkWoWlfWY8zITkh4SkxVDCqP0z4veeY8GOK
         TUCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Ut7YUpLvWAiZLonPATqZ5OL9tOEZJcNF7+tDsNdHEWU=;
        b=iIOKH21gbAaOpNEAopGi6DLZgN0viXQroZD7cgxIus2DIFqzPgJm/by6qkjTPumC0w
         T3bbRhN2u60ihC6qZfTMguPC9OSJJ3FDiRQ00Ur3in422NNZKgDANtXIDVjB+k340iDQ
         Kk+37xzivBfXMXoYJLbVuIlht87baoDZvctSEMeSY5ffAlw49MFx02H+UWEilCiUgRsF
         gGgLblnQlos7j46iz4KZVmQE6wNv6zbzVrbNHVT0G7djdWnC+R3a90tb3O58ReJK6nDb
         tEepZqnVidG1svjvG6oJ49YR1ChxO0X49m0x2SpEoPOJT+VmG3vCcEUpeD838E0Uwbch
         Rxjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yue9uHjm;
       spf=pass (google.com: domain of 3fiuyxqwkackxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3FiuyXQwKACkXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id u206si20962vke.2.2019.10.24.15.52.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:52:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fiuyxqwkackxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id l20so337919pff.6
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:52:07 -0700 (PDT)
X-Received: by 2002:a63:495b:: with SMTP id y27mr505887pgk.438.1571957526087;
 Thu, 24 Oct 2019 15:52:06 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:23 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 08/17] kprobes: fix compilation without CONFIG_KRETPROBES
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
 header.i=@google.com header.s=20161025 header.b=Yue9uHjm;       spf=pass
 (google.com: domain of 3fiuyxqwkackxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3FiuyXQwKACkXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-9-samitolvanen%40google.com.
