Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBWIV3WAKGQEBZF3UPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F64BE35E
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 19:29:42 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id q3sf891664lfc.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 10:29:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569432582; cv=pass;
        d=google.com; s=arc-20160816;
        b=PlgB0w5CRMhjUwFyQlObVK3G6reD6Uu7u5uJqN3/7KtqWHukfZ1AoWtzlSFinZFuXL
         C2NJYG26l86734pcDJTCaGDHdH29SOrFEDP9Vrh65WBJ8bcf2vrEgElWaOy1gekFRmpY
         Yq/UBVJvewjUbyvAu0QcImKY3xI5B40FZTiexZkIKi3GPBqA4fKJSHxOgWSn7/jJTeJf
         NZpbYnrE16sJ32p/L13Psy/4A09Nr/hFlD0Pi2cc5P4frg6X7ITFRGYbJ9kj5vJ0QxSO
         MejTgfApyjt/M1m39w2Jp72BDy5xs90XQnibDSMQminyMbiv7VQHoYnCKycM29p2rY3e
         HlbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=d9YIgMfhGzxAy6ggUOfK+78UZIeOOqVuzbIyagx6diQ=;
        b=iZAmBTzRQhP4ihePq2iyR+Xi/S6oVfMXhY9FdnsdC1AmkeQ6/28gusjDkRSxzY6/aI
         TMXQIKTSJ4j8MeEccLfJbO1l3AhQHTWws+AKZhT6sm/dZALAgi05Ig0R6ilrTynS8eRY
         HSGRT9Ea7ZNGk5Prwmezc8dx5v1hifdNk9zhjKoF5eaqQH09Z5Lh8eLJKy/oN7jIV5ql
         f6Dfs4ZuSQ+0lpLQVWBEVZW2mvY9QyEtlVzzWtJXspRRFiq6dBuR86vc7HC206qCzf2Z
         TlOyTXt0PISfPd68UuRizzOx80hZQQSs/0VCpWk4pexmGhHFaZyNYlICbsDW187Mg24o
         RlrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u1KuHXdU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d9YIgMfhGzxAy6ggUOfK+78UZIeOOqVuzbIyagx6diQ=;
        b=kNiDevJvwgHQmvO0tJ5V0AhwBY1EZkA4Dq7P4+aX2sskLVFyXBKknqgdJGxkTqMCh3
         +nHVUc1YL0iop4jnFM63X54dJC9kKonG1nvVUXydeSyjRPkj2uGD/eQzOb8QPh0j0Z8s
         buN/16K0nbeYlb/D5SgTY+mfw5Xe6qFkFRPYwLMxkBWyJ307DQgmbhwo+KqMKj8xsihm
         Q5UXyX9/iPO3qNebVYvsDynzPnhwwnxqCrByM+TXI+Ig+AQXSfTzR8CQBtBlgfidLHkA
         zyneuDCgAhs/kVb5To4L4PrqUgDQ7XKBTg5Hk6w7aWhlZKNwlGobfvfH3epVj81uaDh1
         9HWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d9YIgMfhGzxAy6ggUOfK+78UZIeOOqVuzbIyagx6diQ=;
        b=h5rl4p8kZrInZQJj8qaaSa0cGclqxvt8h76SJviWhY9c/tubw0qX2MG2/AghrUC3fL
         ZlTEtsqliY2Vb1IfncXQhPdrWq6cqvRTAqkdLnPCh4GhgDsXSYw6fnFxBhbER643T6Rl
         ZK1LLLc3s7okoE78tEVPL43gA9uFnTGgDmDv4hjNhK1OXlRyCGreUXoJ5EKsw0RcAAKx
         uXtk/69Xp5hyc7ONGLuU85XYMbUkdJZbLVxgj4opznwDqssw6ZqPqNbLvSkXJLNjnixq
         JObi8XNOvc7Fk3BB+G+FTmV68fCk9dGhdyaS+oZ6qqgB+d7jLjHwjJnfgEO/dgtwA1QP
         tzaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d9YIgMfhGzxAy6ggUOfK+78UZIeOOqVuzbIyagx6diQ=;
        b=V0pjud3bLNkCWRxvZmg3c0G7UEKnaXQl1EaN7AoorfRsAJdHIp+nb1QGDsWA8ON68n
         u2tRPQV4oxTf6NguUlRsLFeTMqTfHCFYrbz7UfoX8oi71LGPbnsq2X08ysG6mrRFjRyH
         lLLRTPek4Uk0C9WbXKrTGxbcnXrZjaqVcInefIgryul/LfwNDG9DB9WBP8k3RE51cL+J
         +ST7/+J5VzBI5OcIfhmYIMvO1NE6jtyMNuzk/Ko/puIiuu8IeS3uNuz47++vNxPoC9xO
         b4nkuxRMUajgyNepR6PqkT34l9She4mkZu7OSh/ewG/K1HyfpRVJYPdq+XBWNyPhQBBe
         f6fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXg9cPn0ewj+fiU3zeeSBJ0m99UjdMotEbnzVcnMQ7gZltiMixM
	ae+UoYM/UmqhSr2syxhkuww=
X-Google-Smtp-Source: APXvYqxcfRWmxrWEEUEZ0i0WzSHYpfneO3HhM4afRMcDGrhExpQQkEOixLDI1xUAfDqUSdtAm9t2mw==
X-Received: by 2002:a2e:7c17:: with SMTP id x23mr7183308ljc.210.1569432582252;
        Wed, 25 Sep 2019 10:29:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2286:: with SMTP id i128ls1003522lji.7.gmail; Wed, 25
 Sep 2019 10:29:41 -0700 (PDT)
X-Received: by 2002:a2e:5d98:: with SMTP id v24mr7593620lje.56.1569432581730;
        Wed, 25 Sep 2019 10:29:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569432581; cv=none;
        d=google.com; s=arc-20160816;
        b=lCVG2BS6WYIifNWhg+Uw5myKvbreO0Yj8Dew8z3+uYe0QLLf9dKjVV0VtK5hZjOTCj
         Q5v3J77xlgXzM8/pQgXzhttZ56bkMGra47aziRjXPdd1Dhxb9wcJZnMxLeBLOvmhtpb1
         x0eJAVxqoWDcWnAPwY4UHyPJSNxEJ97UIty6AsspuBDLhN4Ao+OWjoTf/uKg1C3+NKgt
         E/INGjvevdHMykm5x+bmNJx0CWkNUeC/voYklgzB++8ZIiLwyIHyYhCpXbtfe1W83ANM
         OaBHLjahnVNPljFGsaYLnQEJ+1dtxTbygOqTw+6oJvZMraxT8+WzemRQO/S2+ipqMsNN
         3O2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=HbzmetsD6Lz/aWGAxlmMTspSEJY0ESydP11xnAcJuGM=;
        b=EV436clYPnhbFgQZec+0t1cLFmXnygQ951zo/1EMsS0pYPAFeUpkXC0Ps1QwHoVoI4
         NcwrmJ2zggJrU2+sa8P83GzdHYdH6mjPeJtG9h1FNjGpmUSXj+nD2uTOXeTCF2hvNFMe
         n3LAZpLz9/tpJsbuGT5/rfNBkM5pWCjS+SrbFtQ3hOot+M/2AEhFJVFCGI5rw7z7tqXC
         HOACCePsn3GowqrtVpTyGUTftVu8vBfyDpVGhW/OpC4xOeXXB4ta3s5KBu0thdjg4rXB
         Oz+IaLqbTFkEJ+BLbnvjgkv8A6PxAhhHjA9j77wLvVy3/5Y3VYjvp2PbNCZv1JFaY8xT
         +OMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u1KuHXdU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y6si346048lji.0.2019.09.25.10.29.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2019 10:29:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id h7so7900408wrw.8
        for <clang-built-linux@googlegroups.com>; Wed, 25 Sep 2019 10:29:41 -0700 (PDT)
X-Received: by 2002:adf:e7cc:: with SMTP id e12mr9610105wrn.299.1569432580970;
        Wed, 25 Sep 2019 10:29:40 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id a7sm6142778wra.43.2019.09.25.10.29.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2019 10:29:40 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	David Bolvansky <david.bolvansky@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] tracing: Fix clang -Wint-in-bool-context warnings in IF_ASSIGN macro
Date: Wed, 25 Sep 2019 10:29:15 -0700
Message-Id: <20190925172915.576755-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=u1KuHXdU;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

After r372664 in clang, the IF_ASSIGN macro causes a couple hundred
warnings along the lines of:

kernel/trace/trace_output.c:1331:2: warning: converting the enum
constant to a boolean [-Wint-in-bool-context]
kernel/trace/trace.h:409:3: note: expanded from macro
'trace_assign_type'
                IF_ASSIGN(var, ent, struct ftrace_graph_ret_entry,
                ^
kernel/trace/trace.h:371:14: note: expanded from macro 'IF_ASSIGN'
                WARN_ON(id && (entry)->type != id);     \
                           ^
264 warnings generated.

Add the implicit '!= 0' to the WARN_ON statement to fix the warnings.

Link: https://github.com/llvm/llvm-project/commit/28b38c277a2941e9e891b2db30652cfd962f070b
Link: https://github.com/ClangBuiltLinux/linux/issues/686
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 kernel/trace/trace.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/kernel/trace/trace.h b/kernel/trace/trace.h
index 26b0a08f3c7d..f801d154ff6a 100644
--- a/kernel/trace/trace.h
+++ b/kernel/trace/trace.h
@@ -365,11 +365,11 @@ static inline struct trace_array *top_trace_array(void)
 	__builtin_types_compatible_p(typeof(var), type *)
 
 #undef IF_ASSIGN
-#define IF_ASSIGN(var, entry, etype, id)		\
-	if (FTRACE_CMP_TYPE(var, etype)) {		\
-		var = (typeof(var))(entry);		\
-		WARN_ON(id && (entry)->type != id);	\
-		break;					\
+#define IF_ASSIGN(var, entry, etype, id)			\
+	if (FTRACE_CMP_TYPE(var, etype)) {			\
+		var = (typeof(var))(entry);			\
+		WARN_ON(id != 0 && (entry)->type != id);	\
+		break;						\
 	}
 
 /* Will cause compile errors if type is not found. */
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190925172915.576755-1-natechancellor%40gmail.com.
