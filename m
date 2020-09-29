Return-Path: <clang-built-linux+bncBC2ORX645YPRBW6WZ35QKGQEIQYDJMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 638AC27DA89
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:08 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id i17sf3337956qvj.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416027; cv=pass;
        d=google.com; s=arc-20160816;
        b=naGcc6GyfMUfAz2KJgadbOFUy/0pGQlwIon3aYXOCqX3vWlJiDyBwevTSTxcbqgEZs
         TPnnhePnw8MDz5GDhj9JpqveyXTQcf2/W+f17/aAavu9oytRfgXf1JvAdtraC3/+ssTE
         IQytgdJQqN9FejvbcbyLmcJ5h/Gys+0l6JJDwSyDNKj0VHbf/eLd3OdrFskA/nNmm4L9
         7hy1M3rBbRMUKiu6ioYuOiBcliYAuN/Rro9KXMRkkhPgcZcuE7xFGvH+DYgW/xgVvgdK
         7+tiwJufgxh0lxmgvafEZ+o0Kfy7PrPbDgRw2eA4m3WhR864bQrK1h/F0tIo16XVMKa3
         eM5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=5pAbWkqAIbiuHLLLxImf1sbQAy1JQZjWCkmqoFUaVVc=;
        b=o+tXJBk4Z9WX8H43jRhKfsZxJ/OUzjYrE5RtyNzagQSre3uWxY2mzZUVZwaju/rK8H
         Gsi4bI0G1qVmhqNfx/B0jGK6Pvw4qidBfjU0/zhiAKkyIPof1Qdd5QJgPH0mJoCEwmlB
         G/nsE4GC7NYBi0pR9CiA0qiHO/57hPt1LhIaBLNeYWjRVcPkknXWhdwhpZdsBt8C0Dj4
         ali7prIPbE1KhyxsO0V/Y/K3VgOeyKxYgzeSfhYYZ+NogMlrMTWywQH6Gake25jExXpB
         G6krGhoUHQSL9CTZt9r6xdzDyiO8/v74eVHZWpp+G4x29cGDaAlg2j8UBilyIBu+reAA
         Acgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F5fLd2Sv;
       spf=pass (google.com: domain of 3wqtzxwwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3WqtzXwwKAIExfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5pAbWkqAIbiuHLLLxImf1sbQAy1JQZjWCkmqoFUaVVc=;
        b=abTg5t4PaCh3eJRK48NCULSAKajrQpj6K/Eg/74nTgqw79UHytjBsY7nharpEpVvUr
         rA0ZBJG/90/5TE5eFAH9AWNwH6OjSoPGAqj/l+479l6dClSUUHDhOsTVpQXQjsoX05B6
         OWB306drU/2qZK7cHvPsQ/BdxvcIAgotmRqmZ11XMpq7xkdZGyzHKYi13V/nyQfu3qj+
         xNPx0afx+UdKu6VdXNKpytuUaYjPmpQjOnZUMdNVucbtneUjdM6MWeMs+UDOeEscpd2a
         smJ6d+SFfcKkzfK9k0YFGqhWu0w4o/qnk2nD9gMS9w7MtEvs7KvmfPdpOJl+qSXl9uWA
         f2eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5pAbWkqAIbiuHLLLxImf1sbQAy1JQZjWCkmqoFUaVVc=;
        b=onka9dzO3krHnwsNjLkHz/swZdOCnosUb4b1Y6o78cl8ON5OWRnzqSeAgkWuC1sDya
         /g/mRpPVkj/fgTIbyzFPb0zCY4aDrnRI7QvnO0v/QF/DM+TR4571bGpBDFuEw0G337qX
         baUxAf7KVYYkZMQU5TT/wNGZyjJhDB0lFiQJa9JJEcFNQJAs33sG0nYJmFkocnjFyaB6
         d26NX1ktJxiBLizyL47wk5aSITE9VupkQ4Sj7SJiXKUoW4CcB8OYBuvXpuCAjGqnvJsW
         0/16oJwHmO3WkvXif0lOwVL9TG1oPhs0m6ORppaa/bPRwgmYlgaGM2NNXxBmyHd6XuBq
         2ogQ==
X-Gm-Message-State: AOAM531Bwff1cZKXvMtAVlupN8KCuGH9t1yuVa1brcYX1EmSHAQDhOJd
	Wg6RUVUmbQnPxb10XEa6VEQ=
X-Google-Smtp-Source: ABdhPJzrWk+KU749PPazsl7rheb4+vQMGMJh4Y60aQbhgrM5HiY4POIPGjp+LYKK8HePhhqTvgl6eA==
X-Received: by 2002:ac8:64a:: with SMTP id e10mr5400586qth.142.1601416027463;
        Tue, 29 Sep 2020 14:47:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e90:: with SMTP id 16ls107674qtp.11.gmail; Tue, 29 Sep
 2020 14:47:07 -0700 (PDT)
X-Received: by 2002:aed:37a3:: with SMTP id j32mr5781229qtb.133.1601416027000;
        Tue, 29 Sep 2020 14:47:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416026; cv=none;
        d=google.com; s=arc-20160816;
        b=kKImtgkdfaL5eCBG8mB8KgYHwsvHgDX7qm1S2B+aFOhXhfR+eM7w/kicm8/WnP0kkc
         SXr+JeTLm9uBcPdKVL3EgosFKTWmnRFQXF6Gh1QNE2NpolCwGx3Kqh4n2tBz2MiTweoE
         L3ocm40rpcxNuxPyB8gWSaoUN0ZUgh2MtXi+jT25T4rG1njWzvkfIIl2FL+pJKNth91v
         sz3482x4GrhBnj4zOZXk3Cw0rV4g1ezZqf+EMsWYD0N+fQP/ynKDc2sIC50hopMwFwhp
         M2Gsx+xN7AOoR7zhzEYYW8uFKU+u41lLcd8n9h648THGWMKd4zhnGSXRvtNgPEIVazod
         +CiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=IM6BeG4IsHqc2HlM1gNMjcO8xaf7Yq/XvaXPBJbuDVo=;
        b=x3JKmqe86wy2w1j4z0+yYq5plphHd0lZHwXu+eWMiDkbxPjZwW6nZrEr79Kt+JEIb7
         pn7/HWBChTICvxk1TaoWqIkQwxcktEkEIOvL3TXsMJ1ZTNKlPRlm705Dtsf5W4Sl567j
         gBcGORTJrjYljBNFVKmBHWoIoA2CD5vuz0YjcB/kZoZGc6OZjbT0xUnvJGshzr+Arwxv
         nGCaUY3LJu2T0+O4ewklDv34XQwwlN3CTwWG6lpENXBmev6FwaW8Q1lcw/beEPhRtiq7
         cwR5aJCoF0PgJAtIcbj4PODSiITRfCrv+leg5RptqA+MzfLo/oNixMZMWo7UQCLOMJUI
         3sOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F5fLd2Sv;
       spf=pass (google.com: domain of 3wqtzxwwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3WqtzXwwKAIExfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id k6si354839qkg.1.2020.09.29.14.47.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wqtzxwwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id h31so4089367qtd.14
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:06 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:5565:: with SMTP id
 w5mr6385766qvy.24.1601416026659; Tue, 29 Sep 2020 14:47:06 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:17 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 15/29] kbuild: lto: merge module sections
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=F5fLd2Sv;       spf=pass
 (google.com: domain of 3wqtzxwwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3WqtzXwwKAIExfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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

LLD always splits sections with LTO, which increases module sizes. This
change adds linker script rules to merge the split sections in the final
module.

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/module.lds.S | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/scripts/module.lds.S b/scripts/module.lds.S
index 69b9b71a6a47..037120173a22 100644
--- a/scripts/module.lds.S
+++ b/scripts/module.lds.S
@@ -25,5 +25,33 @@ SECTIONS {
 	__jump_table		0 : ALIGN(8) { KEEP(*(__jump_table)) }
 }
 
+#ifdef CONFIG_LTO_CLANG
+/*
+ * With CONFIG_LTO_CLANG, LLD always enables -fdata-sections and
+ * -ffunction-sections, which increases the size of the final module.
+ * Merge the split sections in the final binary.
+ */
+SECTIONS {
+	__patchable_function_entries : { *(__patchable_function_entries) }
+
+	.bss : {
+		*(.bss .bss.[0-9a-zA-Z_]*)
+		*(.bss..L*)
+	}
+
+	.data : {
+		*(.data .data.[0-9a-zA-Z_]*)
+		*(.data..L*)
+	}
+
+	.rodata : {
+		*(.rodata .rodata.[0-9a-zA-Z_]*)
+		*(.rodata..L*)
+	}
+
+	.text : { *(.text .text.[0-9a-zA-Z_]*) }
+}
+#endif
+
 /* bring in arch-specific sections */
 #include <asm/module.lds.h>
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-16-samitolvanen%40google.com.
