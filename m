Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBMGZR75AKGQE4O7ES4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id A44572502DB
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 18:37:05 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id n24sf4371230oic.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 09:37:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598287024; cv=pass;
        d=google.com; s=arc-20160816;
        b=AKo6seEQ6Juh8nGSJkd4yHTOX3gp4gRGflXFh1YJ3A7FmuEv0nidj8HbNRe+ai6J8G
         473ns00SxBTvTa0ELr/W7m2MTIKA2kwdtG0bNvVTpu2DTb9V447cbJdQf+v7CjYDvTJ3
         8VwCkJSsSiIRfTpEyeSUTt2+8lWBWrJ/KfJxMsEYrjHmDaohsAfSqgZTeUWoSLGK2WMM
         sKsTSj+jHqakukD8eA7p+X0mP81uJ7+Ea3nTDFwQ2I57oR376KehdJBRmULVk8DeQ5Af
         hcodYULyjqCp85izepZj0LMZl/hkS3hRCO2x5Gl9wjgwzF/8ie/4DlSktcVkjP9e9V0f
         78dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=D8VukAooY7zJKwNwk2eIULH3Zpq0MI0JzCZcQInFxqI=;
        b=TdFLjBtHTnNmFNkflp4uQ3oBgMIR2QgZqRkzOd1BxKtUgg+ZphrbA4j0aQu9iaHMl2
         mGJRghfaDc3SwID2tOdfVfzLQU/c5hQ03qE0O9dQtpd/K4wCcK4YczstLcXwTkOmfV9i
         k7b9WXmEm3aJ1MKKyDmJWKzXI7blzh6murhCviEcPBYez/1eGrYZeDn2c2bN2N3MGea6
         SXUOlHKPdRSAUW42pYqHkMJXG0ySQczK3q2nd7xeibO5ZWn3d9L5lH2jyEParviZplwT
         HFximeQ5GtIawizR63lfNAaS4nGv+NBgyXw7tcpAgw2Szb2I+ZUtaBBzGFVa1HV5I/92
         ja6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=O5e+NDAd;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D8VukAooY7zJKwNwk2eIULH3Zpq0MI0JzCZcQInFxqI=;
        b=fgrc94QjpK8t5O5s9Md7KmKJ5XoOFt1z/V7MePHpM/I7GXPFjCMhkab2GU4MKWmWul
         9QVPmZrNDm49r1IV8PH0Mo5Ncg1HuDvpmGysXE7acl57l0kLjnF+1lF04KRI4waNfFkL
         YfSektuc37j7+bfUy0GZRZ9+DbS0ab81hg+VfLDwsql+7mTjvRbJO3sFerHTiMFpUtfc
         yDBtb3EdTTpI4rvpRZaOJcdo8kTwC6bRs5udBxXvilpk+5NcEeLmURElYdRsFMjrldl7
         CrIP+w6Y/EpMoWkhZpcDkBT7Hn7wttIDJPcysFvvTxtFOlbekS+mIEdUAaNzJ+90z2Dd
         dXsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D8VukAooY7zJKwNwk2eIULH3Zpq0MI0JzCZcQInFxqI=;
        b=SBOIN1GRqGvYrnX4mFbTK/X1ed/Rv0GJYdEYqzCwAaeClg71lg7XRzh+sH1fF0fmI0
         AFN4LXP9QgGHMWk+VuNYVjKtNFrYGeyHNOGZ0sSMRKZUejAllkVLkJB2gdbfX2zPqooU
         /JmUTcYl44B7LLVaiCTvi23upqhH2ZMABMSBDw5sjestyCLkx4bXIUBjeM6aqBEoQAoJ
         KVm8YTWV1nnBNq2j02PJOTQs8rXr7NOm6Qph1lx0HLH9xenZy2HWY29/wAofuXjSW8LT
         JI0H1aJnifnLs0U17r1FjwkPvM/dBtUpnBuUruhodX/09jNpbJX2fbgNx2vOAXG3XDES
         fWYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HBTLc9FSsvnmuETJFKcVQXElfj+2EgPVIad9X0F/kAlpzs1IN
	fieS/gaApVbCSlbYMM4x5F4=
X-Google-Smtp-Source: ABdhPJxQ0WTCKGM+o1QuHJuopz15TmLywqGrzMFFh4R1u+tP+3O1JeY7QzlroaulQDCgZDCPh+j2Hg==
X-Received: by 2002:aca:d40d:: with SMTP id l13mr125295oig.114.1598287024551;
        Mon, 24 Aug 2020 09:37:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:bd8b:: with SMTP id n133ls570757oif.1.gmail; Mon, 24 Aug
 2020 09:37:04 -0700 (PDT)
X-Received: by 2002:aca:415:: with SMTP id 21mr129885oie.98.1598287024158;
        Mon, 24 Aug 2020 09:37:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598287024; cv=none;
        d=google.com; s=arc-20160816;
        b=EK69WMnWlOdMZ8PofDVdfIGQnWj7iuwbage/eUvTYYeteWsL6U/WhGYLKlk+tyRyOM
         v3jkpofCO8sikCZ7kSPRzT8tmn67Tn7DeiARKCCABxK88sk8Ig+I9/8HBDP4QiU0nfDP
         FwAxACY/M7qEZcGEZN/W4JWDYP7/b8XHLbYGgHqwH87U3v3RUFyNeszcD3+ckxmmcDVX
         ZSkipk9+zvifEjrnybanxgTmC8tcLMQB43Qk/Ea77MW1+yWANYRxfR7zuUL9LsO04Eyg
         WF8jNmfEXxrm4PqUe7cfjr0f51Uod8n+Ct5EW2cQ5KhGIzVmt24JgGzGwYKZaUnLw/Ag
         V2tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=I29dMs1mqX3mhorw9dPmNnMzinJfYxx6sDtE7ou7T08=;
        b=zMFmNvdbnHUOplTvInIeMlmnQPF9vt8fHVVK+txIbnBX09BRFaqykYnAu0InbEA9pk
         t2MAp06s37quaCjjhqdAGEP59MD/s/6BPY1VNQPiJZs9ihMfHdxjYTNnlmo5c05mnNcj
         kDtqVjQ7QRlNjMQXktSKTSwQF37dOrr1tsuUJ/cv2/GCyCI+v03/cmoboN8UK9Vrstss
         rkX0bneG7/DJXcnrkAbjnnHyncKkcPsBRKUyNHFBeUv6tqMQZ0g/ciKmtzjGyJrO/2WD
         YEuUnU8C15id0/PAx9J46yxsCRybnk6ycvMFkvJCthOMQsMmOx7LxzUWtUrVEjoy6a68
         PfUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=O5e+NDAd;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j139si287856oib.1.2020.08.24.09.37.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 09:37:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5E08D22BED;
	Mon, 24 Aug 2020 16:37:02 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.7 21/54] libbpf: Handle GCC built-in types for Arm NEON
Date: Mon, 24 Aug 2020 12:36:00 -0400
Message-Id: <20200824163634.606093-21-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200824163634.606093-1-sashal@kernel.org>
References: <20200824163634.606093-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=O5e+NDAd;       spf=pass
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
index 653dbbe2e3663..55a729682cf94 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200824163634.606093-21-sashal%40kernel.org.
