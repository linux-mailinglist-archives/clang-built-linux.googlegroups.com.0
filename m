Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBV6YR75AKGQERYVBO6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCAC2502B6
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 18:35:37 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id w15sf928751oti.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 09:35:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598286936; cv=pass;
        d=google.com; s=arc-20160816;
        b=T/c4CCwC/w+XX5YwqT7QqFk6M/azPQXWaEviuOMOGD7Wi5ULMpp9GDSmdEhjbtEnBY
         6I/GZvg7LlKXXv7KxM3Ep0sV+rpEPKppLm+4HAk4nV+7y+RaRwkdoc9T4FBBs6R8ln7b
         E2xEbIOFM+8/bb2nVJI2MelWHIb+2LavWNcApoKXjp508eJ76e3m3CUtP9/bzRQL4qrn
         ERipcpKP5aVTqVkMcdGiDcdeCE95wFdVgSmxEaFf75ujtNuKs9S/VRqRYq9aZnfpzP9v
         f0fyy9u5KhRlFYZXyL5twntLC4yDuxqzJGAGuv58kI7sdulq1ihn9iWYwKO25rdTqeA9
         mk1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=7f1s4Jkq9cu5TgZVOHanHO9ihjPevCaI2RDUmrajMqc=;
        b=OCxIMrNQwdetIEmnTXRMl5r7inafHRQzrX0VBdBNmX39q/GqcZCrjhp+AIrpwY6AgO
         3TYFIMwJ2p+mQA7YS+pQ7SWfTNIMXwPfO9Avb1d7HaaE8uNzYqawmOFnI5pfWl17BZqf
         FeSf1ba4jA+ByuP9FoLUJiKGFaJoIQXTbQqokd3zCZKzZvjrEKhhpJOxz0z6SAcewaIk
         xxUqmJXTOX5YWClUAOto5WbEhTq8BoxYJ0yn/X89sPpoqwc24OZrY+uxSyieQvyJesIy
         h+K1GqhsQ6Cz/9yCWID/lmepghqXuWZnF16yZHIcbIym9tw5XaXSX8JGc4LskHTD5P5J
         jXCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2sYpRwk3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7f1s4Jkq9cu5TgZVOHanHO9ihjPevCaI2RDUmrajMqc=;
        b=geX/XCc0YWK/HMbPn8yyftlv/a6o4RcZ5lUdi3ohPFXstyYa44d//wIXt1Jbvg0NY4
         WApkHiJ7K3Z8tE1ZcUf8JQQqT1ur/djujqXTtF7+XawoOSc2NDG09g8kt5ZRhLydm1Ii
         2SOohdd37gMp7NowELPdOzpO1Ir46ju2zHYAaw/XyT1KCJreQSdiOIGa6jqFGZMEvHNn
         Ups4tGtF0L706ci46waDqbcWUtTawbx95UBsXJKBmjTmiw6Ub/JK/MoKCLZ62WdXterr
         bovqb/y1JK0X/tE4zql0aVTNvZ5u2w5yHT+yl7V/BTA8SE6vkx1UarppEl8JbaF5I6DV
         ulXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7f1s4Jkq9cu5TgZVOHanHO9ihjPevCaI2RDUmrajMqc=;
        b=q8d1MM7s/W5tDYJ+ESprenAiv86KcWGNzoYjbUrpEfuuxpNjo7lPjAxLl3ZnPwYoDO
         eB2zuzMQkumz578kYrlUUhTAW/X0iSrnqHThItKUJrIrrRyCATH9uWygAQjyEbXjCB2I
         r7flcRss2FisBwtfgWUec5WOhKzw9eaYeNMNAI+BJyBNL/9+lbaQbeVkAf56KbG0Wb7J
         FsVfSxovxgZE3XA5nPGYMSRpFAGzTRB/S7M1Ig0Af9qCC9Il99Fx/NCtzJD4NLHFnyS3
         8smUfjpYLMd7fsgnh7tRHzYGLXufYsw7yvnhNIx/MofZMwRkykhojvgyXfXlidzQbCO7
         zEQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tkNavwpAcWGxdPpSn1QTHTrJ4zVLTeVatrBA2ctJaLh46qWbK
	BPIWrfpyQWBzYHlUXHTiAFQ=
X-Google-Smtp-Source: ABdhPJzbLVt69Y5oXV2oOsWCibM+r6nPDHTdgZ4jJgAPvIcnEKP4UZIyxxke27Z/7bO4cZx3vrYZnQ==
X-Received: by 2002:a9d:2905:: with SMTP id d5mr1211481otb.274.1598286935825;
        Mon, 24 Aug 2020 09:35:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2015:: with SMTP id n21ls570743ota.5.gmail; Mon, 24 Aug
 2020 09:35:35 -0700 (PDT)
X-Received: by 2002:a05:6830:1d8c:: with SMTP id y12mr4325324oti.77.1598286935219;
        Mon, 24 Aug 2020 09:35:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598286935; cv=none;
        d=google.com; s=arc-20160816;
        b=lmSQKQ/mLrXFVL/FWTKfHyY/H1ARm0X/UrJ7Qvg4etbhgsSoxEDTD9wbl4k1FEr841
         hlqT647XMaqAP24zekmCrvBS9um7+DXQUDkIBwtKCCfBdjFbS+NALj1Wc9ceXPs6PmMe
         uMJRxQzxjmNQ0ngwyV2szdkzToGUppFY1+gwA1Tr28Tvugpu3VHFQgPerQO501UL/z2/
         l3hrUQy8m+gD4hoXfOt9e2kblqDbLCgozNso/AcAl+fIwxPd5JaTzLfy1zNCUUkG4PWM
         jjayDiAgIKgvWc794jJkrLQO0JQ0bqI0DDfwgkvy0+cVaWniJXAezY/CQO2D3WTWAg/s
         l7Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HhxrtUSln7W6VoqrsTz6loMdkh9rpPIZqqg07ilYZ60=;
        b=taN/T+I6d/cffmJnuL3cskPutmKGQWzLUh16gtJedsWbvVPRQZjdi2/wctzueqc2/F
         2qkq9jQ+PNnkcvDo3cCwK2Y5kaRR8kkthOykwZRKn7tBxEjEJt3r+DI+/U1D5ixgGAP8
         6A3NTs4uTEz4wlso1SUv60gR7fz87JjRLwpupgtLETuggEy9rHJaM8TZYG0hqvQ/Lv4y
         nTDGd8N/mtyWts3QdzZqbeArhHpoKyvoJHtru7dMo7yGNtb8rIeocKTwcuSkemwsS1Ia
         1tk0kXQ8BtF7Sd6O7ob95lVMpgkSjlj7v913FkL/jXSznlwWm/fe0gDqwKS9s2alYvxA
         EJvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2sYpRwk3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d11si717845oti.2.2020.08.24.09.35.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 09:35:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 30C4522B49;
	Mon, 24 Aug 2020 16:35:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
	Jakov Petrina <jakov.petrina@sartura.hr>,
	Alexei Starovoitov <ast@kernel.org>,
	Andrii Nakryiko <andriin@fb.com>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.8 22/63] libbpf: Handle GCC built-in types for Arm NEON
Date: Mon, 24 Aug 2020 12:34:22 -0400
Message-Id: <20200824163504.605538-22-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200824163504.605538-1-sashal@kernel.org>
References: <20200824163504.605538-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2sYpRwk3;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Jean-Philippe Brucker <jean-philippe@linaro.org>

[ Upstream commit 702eddc77a905782083b14ccd05b23840675fd18 ]

When building Arm NEON (SIMD) code from lib/raid6/neon.uc, GCC emits
DWARF information using a base type "__Poly8_t", which is internal to
GCC and not recognized by Clang. This causes build failures when
building with Clang a vmlinux.h generated from an arm64 kernel that was
built with GCC.

	vmlinux.h:47284:9: error: unknown type name '__Poly8_t'
	typedef __Poly8_t poly8x16_t[16];
	        ^~~~~~~~~

The polyX_t types are defined as unsigned integers in the "Arm C
Language Extension" document (101028_Q220_00_en). Emit typedefs based on
standard integer types for the GCC internal types, similar to those
emitted by Clang.

Including linux/kernel.h to use ARRAY_SIZE() incidentally redefined
max(), causing a build bug due to different types, hence the seemingly
unrelated change.

Reported-by: Jakov Petrina <jakov.petrina@sartura.hr>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Acked-by: Andrii Nakryiko <andriin@fb.com>
Link: https://lore.kernel.org/bpf/20200812143909.3293280-1-jean-philippe@linaro.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/lib/bpf/btf_dump.c | 35 ++++++++++++++++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/tools/lib/bpf/btf_dump.c b/tools/lib/bpf/btf_dump.c
index bbb4303172606..4edf76c5a7101 100644
--- a/tools/lib/bpf/btf_dump.c
+++ b/tools/lib/bpf/btf_dump.c
@@ -13,6 +13,7 @@
 #include <errno.h>
 #include <linux/err.h>
 #include <linux/btf.h>
+#include <linux/kernel.h>
 #include "btf.h"
 #include "hashmap.h"
 #include "libbpf.h"
@@ -548,6 +549,9 @@ static int btf_dump_order_type(struct btf_dump *d, __u32 id, bool through_ptr)
 	}
 }
 
+static void btf_dump_emit_missing_aliases(struct btf_dump *d, __u32 id,
+					  const struct btf_type *t);
+
 static void btf_dump_emit_struct_fwd(struct btf_dump *d, __u32 id,
 				     const struct btf_type *t);
 static void btf_dump_emit_struct_def(struct btf_dump *d, __u32 id,
@@ -670,6 +674,9 @@ static void btf_dump_emit_type(struct btf_dump *d, __u32 id, __u32 cont_id)
 
 	switch (kind) {
 	case BTF_KIND_INT:
+		/* Emit type alias definitions if necessary */
+		btf_dump_emit_missing_aliases(d, id, t);
+
 		tstate->emit_state = EMITTED;
 		break;
 	case BTF_KIND_ENUM:
@@ -869,7 +876,7 @@ static void btf_dump_emit_struct_def(struct btf_dump *d,
 			btf_dump_printf(d, ": %d", m_sz);
 			off = m_off + m_sz;
 		} else {
-			m_sz = max(0, btf__resolve_size(d->btf, m->type));
+			m_sz = max(0LL, btf__resolve_size(d->btf, m->type));
 			off = m_off + m_sz * 8;
 		}
 		btf_dump_printf(d, ";");
@@ -889,6 +896,32 @@ static void btf_dump_emit_struct_def(struct btf_dump *d,
 		btf_dump_printf(d, " __attribute__((packed))");
 }
 
+static const char *missing_base_types[][2] = {
+	/*
+	 * GCC emits typedefs to its internal __PolyX_t types when compiling Arm
+	 * SIMD intrinsics. Alias them to standard base types.
+	 */
+	{ "__Poly8_t",		"unsigned char" },
+	{ "__Poly16_t",		"unsigned short" },
+	{ "__Poly64_t",		"unsigned long long" },
+	{ "__Poly128_t",	"unsigned __int128" },
+};
+
+static void btf_dump_emit_missing_aliases(struct btf_dump *d, __u32 id,
+					  const struct btf_type *t)
+{
+	const char *name = btf_dump_type_name(d, id);
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(missing_base_types); i++) {
+		if (strcmp(name, missing_base_types[i][0]) == 0) {
+			btf_dump_printf(d, "typedef %s %s;\n\n",
+					missing_base_types[i][1], name);
+			break;
+		}
+	}
+}
+
 static void btf_dump_emit_enum_fwd(struct btf_dump *d, __u32 id,
 				   const struct btf_type *t)
 {
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200824163504.605538-22-sashal%40kernel.org.
