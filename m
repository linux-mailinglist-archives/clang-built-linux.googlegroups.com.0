Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBLXG3P2AKGQEIIMTZ2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA761A9CEF
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 13:42:40 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id b1sf5306782iow.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 04:42:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586950959; cv=pass;
        d=google.com; s=arc-20160816;
        b=qV1zwraMjf+BWUBIzLTishFQOyz1k2/AnEH1rXm/kyym6+07Xkzx1Pz64sUekdqU5X
         eamafyJ/LjCWgt8ZS5iOXJiYFzC6cjMiiupfjJKT7pFwzndJW0I0cBOtrf4858fpZvte
         Q7NsOoJOLBN8DrdnB/EsiS6eDIk2DqkxSg8RbjDphl1QvSzDanyjcStQOrfJjtATDsdk
         V9i3ASA/gWmwVWusLExHzuCeTDFGaBQskiUbA+TYEl+E2+9HQqfKxc4Rdnw8mMN76V4g
         cbcAmP5Ne/k+72uFa7n9turDhYf3+iWfecCA8v3a9cIwMhRKxigYIdVVvjtTPzL4V+Ls
         PMlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9564CdY/2gHaac9shkVonTf8CaH7z8L0/ZReZNW3ISw=;
        b=dOXph6FATbkbzD4d4D4DcEBkZU+H6/ePIbvPVrFjupNlXqSO+TtcWQa7XTzR7fTY6N
         upc+KIpP/6GIoECOHNif2LcW+C4qqMzbFyv0vDom0CoLVe/ppYMOjFMTFh5bpEwON7Qd
         ahieaBBnIW2WRhGAMSYFYCxfkm8xfBUISDazmrSLvAzkfzwS3jrFMOAsVJc+vj+4WLK6
         FM8ZN8WXcaxCa0/ldMRTJr/vhStKQvMKXuLZAYe75KNV4s6+Eni/OaZdFC8EJ5PfK7mG
         zbXVbqPZWOqsotCWJMgBi25Vl4O4bPmAoJCd+4V3x27LOOTMEaZq5rFwc27De7iQgr4r
         UYwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nrhVDEh1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9564CdY/2gHaac9shkVonTf8CaH7z8L0/ZReZNW3ISw=;
        b=TNFG2GKgO0pv+vW1l/kc5WZwnZt3B5myuY7PkcRWAUItxuaKzdiRaG7VDVgmvDlfeN
         clDkkU/u+4E6ijvyqDHllUV7UuXjyv4czGyPxMvHEJBatEvkbmrZB2ALDelaKXWzfTmY
         GX0NszmteLbmKqiOIskEh5CKswk8TPfSGiFtz/yeRtkiB06bAnHqXbKvmDpOqJzNFBgh
         /WqBICYO/yArEkFUPzU9YGyeDfV+k5sMNhv7QtMrz0sIuI6slILeSTZbuMvP70/0uQRc
         MoKNF0iSfcL1zT0Yz4vbi5IQoVUK4Ib3W7k3WhShcBCcEnxFeUbnlOsVSzV8KUyV7s8a
         gkYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9564CdY/2gHaac9shkVonTf8CaH7z8L0/ZReZNW3ISw=;
        b=ZAehZON235n9h1aiXyMXK98t73qrRD94gO2GYzSfcjX/OkRLAWJ/W1aQKKhbW+PiqT
         JkmLBBM7rpsuQlXjIHuRGpPVXRXDgd9KvHj6qNuvjNMX2ZZ6bESMasVUerRPndHREdF1
         sU5t5I02EYppeYz80WKB5jggqMcDLS5TtN80y3HFE+i66ZPLgJJxIsc3LwzDW8XVBe/d
         5wMYIGYeze8xgB5rKSq2MRFbVBwPKymJpLz1MN6nIHFJF63UxWNh4CURvUkfkqWMrTyI
         Ctq5WyBbM9uxpSHeVGszHEcicVn78GTPvvysohRwK7D76CWVKqoyuBZUfSb319ZfuK1D
         2W2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYJelLSM6/dOuuOtbo683eMWE3wTYY784YZi9K22IcF3kLqhiqY
	HRBv0dwzPigi46o1t/584Oc=
X-Google-Smtp-Source: APiQypJE69knpeHcbMuJF6fo18RWKbfNb3cRjScXGE1hVUX4EGgSv7ORQ5GbNiOWpqWE9tO0ZHKc1w==
X-Received: by 2002:a02:6f17:: with SMTP id x23mr24126583jab.1.1586950958976;
        Wed, 15 Apr 2020 04:42:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:47:: with SMTP id 68ls1385823jaa.9.gmail; Wed, 15 Apr
 2020 04:42:38 -0700 (PDT)
X-Received: by 2002:a02:c98b:: with SMTP id b11mr17433465jap.117.1586950958699;
        Wed, 15 Apr 2020 04:42:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586950958; cv=none;
        d=google.com; s=arc-20160816;
        b=ReFKbk3E+a1iwhAYKPBaVr4ytXuq+JPl6fe8jBHBJOAteqneqk/1itW2jEBUW7wYXS
         pNm7K+tcTGzt/oBl2V8poDPJUqmKDKpIKfkcJGgTeJP9ZXivIr3vc0OqZ44DRDfuvQ1G
         i47Q/NuPKQ7sLmBzctDx69f42kclwj4dVqLrCWf+y8BeME3SFPapzIeU7lWnULZF9R4u
         yaPwXsIJ9v5vnlZmk9D9/dvNq7+qpHZ72Cl79pCoEzH0FegVhcGApMZGJPtyktzOdGJC
         2VNSNtkDMXFFWLuPKIOqI5DPORuDxRPGFD77rAcP2N6ef+uJfIf6Zh+TGYlMsPOINCZu
         +1xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eGdlkPBP4x8j+uxdvYHdOs5usi8b05icEK3uTlb+0og=;
        b=cruzKyBfAMddwV9CLEEB56qqKs+dsDSa2/jQo0Vf5ljHBzn8SfpLkjcVqZv1wUYEIg
         2ln8vOpcuJtY8G+mrDRt4xFRIGb4nRj9I0ptX6AvoigAYjHt6YdyJba+zBLruX8Aboxj
         owBDeelBscDd14gfFQz/cKi4TL23uBG6DuHX5OsGFUzEQ2/ZxgNEf9P+lkGtDctcI0ic
         su2Vgfxh/d9KOPiKo9GPicxvMfh6sHVaPMSyc3xhRqPPHVqeSLxHUxKkdpnoxl5dwNXo
         DOZUMsl5x1b8KD9kzusb6fpK/g3/+4pIxasYlXB/Xgojdf8dulF5QR4lX/nRP/obxDp4
         kVIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nrhVDEh1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r8si394889ilj.3.2020.04.15.04.42.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Apr 2020 04:42:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0EACB206A2;
	Wed, 15 Apr 2020 11:42:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Andrii Nakryiko <andriin@fb.com>,
	Wenbo Zhang <ethercflow@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Yonghong Song <yhs@fb.com>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.5 009/106] bpf: Reliably preserve btf_trace_xxx types
Date: Wed, 15 Apr 2020 07:40:49 -0400
Message-Id: <20200415114226.13103-9-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415114226.13103-1-sashal@kernel.org>
References: <20200415114226.13103-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nrhVDEh1;       spf=pass
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

From: Andrii Nakryiko <andriin@fb.com>

[ Upstream commit 441420a1f0b3031f228453697406c86f110e59d4 ]

btf_trace_xxx types, crucial for tp_btf BPF programs (raw tracepoint with
verifier-checked direct memory access), have to be preserved in kernel BTF to
allow verifier do its job and enforce type/memory safety. It was reported
([0]) that for kernels built with Clang current type-casting approach doesn't
preserve these types.

This patch fixes it by declaring an anonymous union for each registered
tracepoint, capturing both struct bpf_raw_event_map information, as well as
recording btf_trace_##call type reliably. Structurally, it's still the same
content as for a plain struct bpf_raw_event_map, so no other changes are
necessary.

  [0] https://github.com/iovisor/bcc/issues/2770#issuecomment-591007692

Fixes: e8c423fb31fa ("bpf: Add typecast to raw_tracepoints to help BTF generation")
Reported-by: Wenbo Zhang <ethercflow@gmail.com>
Signed-off-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Acked-by: Yonghong Song <yhs@fb.com>
Link: https://lore.kernel.org/bpf/20200301081045.3491005-2-andriin@fb.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/trace/bpf_probe.h | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/include/trace/bpf_probe.h b/include/trace/bpf_probe.h
index b04c292709730..1ce3be63add1f 100644
--- a/include/trace/bpf_probe.h
+++ b/include/trace/bpf_probe.h
@@ -75,13 +75,17 @@ static inline void bpf_test_probe_##call(void)				\
 	check_trace_callback_type_##call(__bpf_trace_##template);	\
 }									\
 typedef void (*btf_trace_##call)(void *__data, proto);			\
-static struct bpf_raw_event_map	__used					\
-	__attribute__((section("__bpf_raw_tp_map")))			\
-__bpf_trace_tp_map_##call = {						\
-	.tp		= &__tracepoint_##call,				\
-	.bpf_func	= (void *)(btf_trace_##call)__bpf_trace_##template,	\
-	.num_args	= COUNT_ARGS(args),				\
-	.writable_size	= size,						\
+static union {								\
+	struct bpf_raw_event_map event;					\
+	btf_trace_##call handler;					\
+} __bpf_trace_tp_map_##call __used					\
+__attribute__((section("__bpf_raw_tp_map"))) = {			\
+	.event = {							\
+		.tp		= &__tracepoint_##call,			\
+		.bpf_func	= __bpf_trace_##template,		\
+		.num_args	= COUNT_ARGS(args),			\
+		.writable_size	= size,					\
+	},								\
 };
 
 #define FIRST(x, ...) x
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200415114226.13103-9-sashal%40kernel.org.
