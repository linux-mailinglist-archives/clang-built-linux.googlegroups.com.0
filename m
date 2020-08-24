Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB56ZR75AKGQE6XL4AMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 943582502F9
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 18:38:16 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id n24sf4372789oic.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 09:38:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598287095; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gg49sInucAY5YV4VBLs1tprPCVoCe30edzm51nS2bctP42jWcRk1HqfJiD72+XjNwR
         aAUcUeenaiOdbS/56qbRT2Q0+IZQN6iPLEBm4AqnF+VnXSirZjxCybF0YnnbkVxmsMZP
         cn+vKhmd+s4boP/ppK1UL0yhhFFQQ12THbSiRtAHa9t4WFQxyTUmgW+Ad3hsSh+bBPnY
         lk85zuSiZ/4NHC0knUy9spXgcsfLraGCS8BKuNNDyvzHnSeXS95bb249pGfuJoIgFBvW
         BZa3dsub+Kf3+LvFFtQZgIocVHUOfYqkWQA8/izKBBjrNI9M+j1Tx9sqezIgVGr5xxLR
         c4ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ct1pbJzinmFf0Qc19+Zjhj9Wc0YWk+7dXenxTAKJce0=;
        b=e4wY11W0FlxlhwEzTsLvAYf2SMy1gMHAFiHfiGAiT7KWrl4Ae/C6biDTr5W3Uatvp+
         Jtv+imumVy1ET79RjeSNfaKKw6kuIdee6B6j4TZip76FbLoeJmaGUPwRHdF0Mq3qd7XS
         SIXO3ggPhGIXbS5KMNnaC197G8DebYYpjczeUYMXK/LKgthNfYDbWq7rNX8jrfY2BanY
         kCRrTxgd9mirVmAYWXlcwRCtHHZrD7xwqUK/y/FnQUQA2hp8RXL0/rOxYyutiIvJAcTF
         1AHUVbkqUJ+Ljz4vIa9m4Ixn7heZkxI8olKvbnTpeFYGWpzMgS9Qo24Vj7NBQ6fdP8aE
         eEHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UW7+JAY7;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ct1pbJzinmFf0Qc19+Zjhj9Wc0YWk+7dXenxTAKJce0=;
        b=M7SlWMD5cMh1bPXczovmWONZQfqOBwlT0xJxQ0N8MTUF3UKuKGUewsvCed+ogEW6sY
         mTxEBInNz4phOMMcGItnZ7aTwcUgMSTZc3IVm6RVzQyDDn1AE+e8dVdOHenWSbNAy97U
         z3+13uyAl+CUuddR6O1h3IDYbs0WseaQNp9MsvdsGZRho24IUcU75dzjPZOmZ8pDCNUX
         Uv8Pio4K0sa0KNsPyp89qGyTaHTgxtqrDgE8m7oadAWf6YK9X1W3RfCVxOwxNynhEh8F
         X356RrSM7EsgqkmNSQp2LImLMfS9HbuWYSKDeoA8QPbZuCZrCL+HUqvIS9wHoe9M3OTR
         GT1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ct1pbJzinmFf0Qc19+Zjhj9Wc0YWk+7dXenxTAKJce0=;
        b=h2aDiZZJZpjo/wzUSDtdN2QCjrb2JZUaicvE/jfwpRTwZzYA4o/QhbBlHUe93Iq6fy
         OuqIoMbkucNHUwdkUtdzT3I9ppZ33oPu1CwiJE3RwSOrNyZumq/ILw8/Qcrb28dE7hPe
         oFu4Advr+n86Wtbws3yB5qY26VO60xcOMhoZQcvTx9pFgPM8/IapM17zeoY4k7ztYtJ9
         vufsuNZBYNb1GMlbeVQZ98xgmCsgneVOfwG7hMsFyvA7RlIvVKKKjK6jsOieiKrOi9LJ
         42+A66dy4PmwZekysI2u5IVssD3jpctOZNdH5ETsjB5bFbaTtpMfhnylDaH4hRuVREsV
         dRoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530y+s11y/iDfw8/AEdl6Hzud0f/gIx3f1LpI5op0Rm/6fMl2iQm
	oOhPwU0zJYS0Pzovldg0M7k=
X-Google-Smtp-Source: ABdhPJyEm7o6FycR9cyTcUgNaD5h9R/gjlIBmt5mVf+StIBwwl86K3sq2e6pMJMOpriRfE9ovUzSRg==
X-Received: by 2002:a9d:3bb5:: with SMTP id k50mr3881433otc.361.1598287095526;
        Mon, 24 Aug 2020 09:38:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:181:: with SMTP id w1ls2135195oic.9.gmail; Mon, 24
 Aug 2020 09:38:15 -0700 (PDT)
X-Received: by 2002:aca:d40d:: with SMTP id l13mr128231oig.114.1598287095231;
        Mon, 24 Aug 2020 09:38:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598287095; cv=none;
        d=google.com; s=arc-20160816;
        b=lLbdA/rhQtHNrKk3HkBOEw6otWLFaFKeU06qGRZEeardGYa/Lcv2UgGTmhu7DzEiAB
         L1bcNBnXwAGiw40a6HLXRYIuH+I2kJH3lJ44N1frhtrQIB1thXFTCHhsP2rAo8gYo8bA
         VoNRW7M+JEpplFRjJ2d8i1RGf0/hK7pHNLr1i+xiYlnj+usg/wRjO1E7AhyV8iJ3jTSA
         z0xj4jIgpSjNTjI53ajserLw/vxKpoiRsTTqPlA8aRIs67gyfJbposmksO2yCAFVhDlf
         DUl3fntYXg849c9MH0nTzFs82ptk1zc1YM1mndR8/kYi6GECupVG5e+25PcyMb2zMECp
         kHMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HO5ysV2aM21AOPH+dhT9hJ41Kq2jdP7FOhfpLXINkg4=;
        b=KdUVwalrAJnQXZqs3V/LAARx+185vKNZJ9EW0OZ1vvqBaDPkiY4CZBKgR52TKC1O8d
         esYhrrh+oB8XXnKqGxEpF0Xkzpv07x5GcJ7i2hGE7Ph69DxUVVgT6lsGsJb1doS1wdPD
         D9uOz4cPT+TsYG4FKqr+dstf55ozF+SKURB/fDvy3I764Ppnxo9i1skR6Fz+7h9Qyll7
         r00+engFSF56qKUaa9Y7UnPzKXhrvJ+D14ohmx8pzK5LLwr3yAZpQSwsIbDrKxRcRAeB
         kJYR0dB5FEXb+mHiri0im6J9bmLhjR3qwN4XTUsPbXze3bd+Ldvv6v3MmNGPbbW8w6Cx
         wxZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UW7+JAY7;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m19si696022otn.1.2020.08.24.09.38.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 09:38:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7539022BED;
	Mon, 24 Aug 2020 16:38:13 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 17/38] libbpf: Handle GCC built-in types for Arm NEON
Date: Mon, 24 Aug 2020 12:37:29 -0400
Message-Id: <20200824163751.606577-17-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200824163751.606577-1-sashal@kernel.org>
References: <20200824163751.606577-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=UW7+JAY7;       spf=pass
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
index d9e386b8f47ed..07fcc8e79662d 100644
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
@@ -543,6 +544,9 @@ static int btf_dump_order_type(struct btf_dump *d, __u32 id, bool through_ptr)
 	}
 }
 
+static void btf_dump_emit_missing_aliases(struct btf_dump *d, __u32 id,
+					  const struct btf_type *t);
+
 static void btf_dump_emit_struct_fwd(struct btf_dump *d, __u32 id,
 				     const struct btf_type *t);
 static void btf_dump_emit_struct_def(struct btf_dump *d, __u32 id,
@@ -665,6 +669,9 @@ static void btf_dump_emit_type(struct btf_dump *d, __u32 id, __u32 cont_id)
 
 	switch (kind) {
 	case BTF_KIND_INT:
+		/* Emit type alias definitions if necessary */
+		btf_dump_emit_missing_aliases(d, id, t);
+
 		tstate->emit_state = EMITTED;
 		break;
 	case BTF_KIND_ENUM:
@@ -899,7 +906,7 @@ static void btf_dump_emit_struct_def(struct btf_dump *d,
 			btf_dump_printf(d, ": %d", m_sz);
 			off = m_off + m_sz;
 		} else {
-			m_sz = max(0, btf__resolve_size(d->btf, m->type));
+			m_sz = max(0LL, btf__resolve_size(d->btf, m->type));
 			off = m_off + m_sz * 8;
 		}
 		btf_dump_printf(d, ";");
@@ -919,6 +926,32 @@ static void btf_dump_emit_struct_def(struct btf_dump *d,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200824163751.606577-17-sashal%40kernel.org.
