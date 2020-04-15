Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBZHC3P2AKGQEQ5KLSYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6A01A9C5B
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 13:35:05 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id 30sf13367507qkp.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 04:35:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586950501; cv=pass;
        d=google.com; s=arc-20160816;
        b=VzYCPXt2y1cTLFApTOAJACcxEL9bGwVx6N38ubw4nukWJtaOkqesPY4Wa2S7tmlf/T
         YLoO4JIaKkDVQXTP3wCgsmmJGzwU9flUfTad3KcEFPcrqcYghULLuz+fKtOyozW2QekQ
         07587yCMGyszyttcDIT3j+quWT4A+5gXQ1cOd5RRBV/NBz58amIQPDE+ZjIs8Y5wfdWA
         YzXik2ah54y1EM6pD9p7A38ej6aiNa94nA2wQPCxtpJvvMe0Dx4FP6xpG+NnpcLI5u0/
         r5uRvIq55KR165gMyV6RfkAlzlOQM1UaYKff9DpbzABBs7QG2c0J9cFKNWF0wBbWCWNv
         32eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KxmoDZQw/sas3b81iQeEd9mFhCIlIQVCDBNaEfswCJs=;
        b=HKdDEIta9U10WCea+DrQJzBQdBfbsUHn0rF2oyDxB7XLGjVHyug5gjzXdjmehgp3Wo
         NQprww0FE/8/jQrrYpHLnvfdza5UTXmu1kHPfJhv0f/p+wNlzydDC8gZsLrhgZkVc823
         0AhTqLMUaWXmEnUeedXqM+Sh6MFfyUmLEj9LKR7RLSqeqWIY6N3aXhLHWLaRHDFbWMjd
         zcDW2DIKKglVN5l33GczNBHdhBn9iMWIXqryMCwXR2aFU+3Sxj8nIeROXHdFbgzw97Qt
         5SZF5pqco0tWC86b82nRnzKrv39+EGxHmZ4vOvt6D0zaj2Caut4/zK9HDZO61gALy+bG
         Mffg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bzXuahgX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KxmoDZQw/sas3b81iQeEd9mFhCIlIQVCDBNaEfswCJs=;
        b=ISS+1Z1dB+IeQeNAAHfxbfCDOz/+KwOHzGayE02DLpUlwmsDp2JPnswpzDJTmig01M
         J6UsSrRC2u97/bMZGGAdaXWWitD4cxbmfoU+Sc8DwUroAvLkGiZqzLczVuPAiJzFsXfn
         T+jwHYL4mXsXSpVj0HkiKaxshTHc9DnBeXVON8Oi72m/IFd6SB7BO23NULFlEv6wUGo6
         qslabqZS5kOiRlWkgOiVOkC4es9q6+ypFmZt736wC8xoslpkGMjT4mSzFxMZyQvtUBvg
         muq8ZfM3e4aYgPIAL57h2bWQx7MbepjkMMGlKdaTATh/TechhBWb+Zy4smEf5yQnUnBI
         IbEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KxmoDZQw/sas3b81iQeEd9mFhCIlIQVCDBNaEfswCJs=;
        b=L58ioNZ4EhvLG0DK3BCSB+GHxrMyFjUBmdsco954E/lMricf0rTHEUPP4pNhgOC3Wh
         IyZ2LvJi+ZYg15mtQM4mVR1vaC3Xo6t1VInod6ktKHwL3qNqvBVZ5esZxp+ja0eGjrh+
         W3pyQn1tncUtHb11fDrwJ5Aj+N9KO9ogQQ1jwhYPBA/xjg/ROow3zZ0XuVIqkK0AhE14
         egr1ToicDyTiCMBSKEtq3SyARQNosYrlc1fFMRfsdlcAedbxSo4bhYyjPK+y4PzPi9OX
         q52fJmcewzMHqcuRW73YSozGQv+Y5rZQcbvAHOv+Tw/G67yXLsrKwBWD6G6EhEkQuCoQ
         NUfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuapGEgqcZv56WD18KieZ2CAuusK1O/b6AtSYJhGfyzm+lPPhkQ6
	WtgtCz8Xbj+3WDWibK9U3OQ=
X-Google-Smtp-Source: APiQypIAX2qYupAmFprKFWh8Quvv7ojxyWCliNDp3WqTB1QXQRjj6M+ze2Hw7xH1IL3RZnfb/CnR1A==
X-Received: by 2002:ac8:1757:: with SMTP id u23mr20577042qtk.138.1586950500854;
        Wed, 15 Apr 2020 04:35:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:9ba6:: with SMTP id o38ls2157570qve.8.gmail; Wed, 15 Apr
 2020 04:35:00 -0700 (PDT)
X-Received: by 2002:a0c:fec1:: with SMTP id z1mr4533121qvs.156.1586950500336;
        Wed, 15 Apr 2020 04:35:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586950500; cv=none;
        d=google.com; s=arc-20160816;
        b=a8uIhyZcdojeSx6gFoF76wLx3Ne82aT59cwYV8l6dxhCkW807QKWGETBUZRYaYQIzF
         GdrUp936DBVZSJdAOc563cRMVDATvjL302pQn/JjEnivPw0qBXu0/Iz1IoY8IGoYUkS6
         CzUVe3gYh6GIa5mFM+uLs/OlRMnREDqJjFW5v+dr0AwF0fFUg7+S7mHunV8ymUQCekA1
         KkLHZKVX3W+9ZiyPd3tVMW6v6NVxnVDDrbolM8MfVxyHqEBGRJF8Cz03l8Mx38Gla/kg
         K9Wvt4nRK9KLueGgvfuTOJkOapoMMF5tYhebWCmW0HPz4BVWdkTwBmxavb9czRmBUmZu
         Vn9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eGdlkPBP4x8j+uxdvYHdOs5usi8b05icEK3uTlb+0og=;
        b=lXIfM1EX8v98KrzRvl4o8OtupO86MpSY9/aneDqthxne3hh3VUR/rsJxl1b/vnkNI+
         6/CnhGFDRO0JdBAzcbNo7HcpPu7o0lGYc/wfBkMJd9+luh2Ox4SK2yIoh3V3kJm+nTH4
         8ir4/hm9AebWURAcf7AlcSEctA2CcORBCD9q8UpHGJhaqFtoYikUXY6NKVBfQV4OGemZ
         EqupgXQoQZ0LdkcU3BLhhS1OpYDUwJeWcNGnudcdIGyY2eq6b77MLQChHG9P12GHr2v1
         89SD1mW79qg+gqbl8oIBFclYJS8bSZBGpPxv/+868GSQPU7KL84pFaSzgQzliiJ1Lr/F
         UXJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bzXuahgX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x11si1008536qka.4.2020.04.15.04.35.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Apr 2020 04:35:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 280372137B;
	Wed, 15 Apr 2020 11:34:58 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.6 011/129] bpf: Reliably preserve btf_trace_xxx types
Date: Wed, 15 Apr 2020 07:32:46 -0400
Message-Id: <20200415113445.11881-11-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415113445.11881-1-sashal@kernel.org>
References: <20200415113445.11881-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bzXuahgX;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200415113445.11881-11-sashal%40kernel.org.
