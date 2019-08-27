Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSFKS3VQKGQEJ36F4LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1ED9F444
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:40:41 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id a21sf234142pgv.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:40:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566938440; cv=pass;
        d=google.com; s=arc-20160816;
        b=bCURp4Vs9OwvVIjcttNkGKj8iHB2K4645DvygljiXeieAM77CdXlASJpGoP4oK+BkQ
         uuccL8UW73L3SjOgfEQHiOB7n7ygyVwM1hgKdtHbEY+A0EX1217vpDRwnoTRGTuTPtt7
         adX8XzEYHduRk4A+5mENyR4lHiMlixErdTN17Jv/b2PQzqFtLlNEcsNXRw77tsUjLo1p
         IUEvkRdhZCXQdGofUG7F+ROfE41eavvxsRWuNZkjlmhG5e8AX/jNlBt1UcDUEsil+IP0
         Ym5ttArRLlheEwgui8JTU1KkjWbabDnsL1Q0DTmxdweU/ri8Htz2bgZl32GnYp5DBRcH
         1qcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=p/X7tQASG7sew/FVwTVQYLZwYfiWQe0b6p++8g5nUCs=;
        b=J4nWlbJ+f2kbtc28GVz1aSh3Ai4JI0t/f0wJAmY6mCAxddFHM9cW+9CyVabjfLQgqQ
         X3oLNF+IbGIPJS7tTglytlFbJK3MUbgqF6G06jDXUSjcFkt/6Tqtx8l4BCtG/LaBy2qc
         RPYLFUSBYd204ytELpI/mWOkKgxoMW371lwNlc1N1JH24KuxdiEvjhNmOe3YWfceWWsj
         ONOkDWHhfgCynQo/dbgThnNf1vjnAFMQAVVGcvKKDuSbnQRlSac8ms3/ersqMA2H0lMo
         j3LbtYGYQlVSySeaADr7BC2Iai+AH+fZ14xCsgrUQ2CciOyLOncP6033JjbZiGc+VkY0
         mT2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YMViHd8L;
       spf=pass (google.com: domain of 3r5vlxqwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3R5VlXQwKAPgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p/X7tQASG7sew/FVwTVQYLZwYfiWQe0b6p++8g5nUCs=;
        b=B2Rxg5csLbko+evZTnAsiUAV5YWFDhbNsoTWb6CaRWluJyIRuEYptWqu77UCgzOMa/
         Z7gt550UUNtK0LbJlrL5yj5RFrW1h6ORZ9yAoTH750ZZCiraJh5dMBJTo8aPuKqJWlXc
         S2Sxbt/NwnUBH0rdMU0kBgAj17wTM9RniirVJOdPxo/ItHLZxovnDAcFCTNzapA+aUHs
         xWTOIOE9Y2Wdb0wB5/vCieRtUUbW4bwYbvhZcUMNzYp2uwwS47irSxcs02HD9hS5/dM/
         jdagep45ItUZGvnyyAs/oMsDN3uZJqUffVkBv1trBFau/QYHu+tjSj2sZmW35tPQtYen
         lH9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p/X7tQASG7sew/FVwTVQYLZwYfiWQe0b6p++8g5nUCs=;
        b=qW3c96bHLBxYHDDe19DbVCPtssriWDjd8W/FKumTgEZAmElDCnszYENLdvhNZovcDm
         IPy5LXTyVmVtp+BnM39L3Zojl6bgGartpPI8ITdiid4Ow27E2rU0el8tEvO1qssQYcPT
         g64bzXVprw5eqMqSb30uHFRRMuedhaXZPgpwMsLQlfkCkECpRcHbWTbVsL7/xSZP+2vz
         38qETWZqcvYPghQKxe7mdZWU2sfNViEue0V3yZm1Zp9B2B8UbMWAyAxNikTfJFAacyFT
         Zqe+qBvheH3SqJ9TcRAT0cy7rP+gapCnF1pJJzC1Z4VqA8erI3nS0aUqFirAfuiIoM5H
         1xnQ==
X-Gm-Message-State: APjAAAUUbWnJ324d1e/PcYg0vOlugaxoM5UfGVSW0aHfQatkYR+8QSv9
	e3DHRonfMNTfQIlCCzJywMs=
X-Google-Smtp-Source: APXvYqyv8I7qX85ZnA7BmGcSB+GZHmRv138q0H8BEvaLYDV0oUnDVAQ8l8nedZgvJ2XE1MSJMw4wQg==
X-Received: by 2002:aa7:8d98:: with SMTP id i24mr385949pfr.199.1566938440311;
        Tue, 27 Aug 2019 13:40:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3fcf:: with SMTP id m198ls53336pga.10.gmail; Tue, 27 Aug
 2019 13:40:40 -0700 (PDT)
X-Received: by 2002:aa7:8490:: with SMTP id u16mr475548pfn.6.1566938440033;
        Tue, 27 Aug 2019 13:40:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566938440; cv=none;
        d=google.com; s=arc-20160816;
        b=GKGpD2DRiGsK+YwYACWQc1XrDS+10jjLwEIXkSLJc8O/zNuEXIuuCv9SEUPpfqZ86H
         flw/cDAbGELtZ3XtRNp3Da1aPvcA6e98XOw8YvbR8BYNnqejZd/4qRHKl9DhWvlm6wvL
         zsSogdCTGRMalhLmrO7L5OoiEIKved58kphjeQWbkwXaJWTyHAFFBJmCiIvWozMwO5V0
         LNSepr/358Hxlv2YaAUiz0eLWShOPr/RHIkCbVI/yLvIcFNOVv3YhY1H+Aj9vc1vev6P
         yosWfyeZq2fVqA94sIVj7xBwlpC43SUTyxGpaRvmLqrAyeFYbqOu5L7DkJ7Cr9UD6/3L
         QDZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=gDvIlxNr8TEoF4pbaoMLzWxO2r6ObQp6ll/9rTpnRHw=;
        b=bRXNyFOdGlLnZIxaYPzc3JqXegof78jNyB+n2sPXj9MRkEGkkXtgecO8zrbHDek+8H
         9eOXlTmmKT7weCPBLp67OHj25WOgFeh9/PzZTRyalsgCuGrvpBUl8chxj8CambzGzQ7q
         IkZ8RygvrrjsOYCD691bWWyKKGyeJosTBhgwySYFRgpNpGFPVy4RqkvP7a/ct8D3Z7+0
         B+pxtOSmhrcH3BlKDYny58Kcf9uHfK66Dj1FM9S9QUZzPdhIej8FLM1Irfj/M07itZ7U
         h7OE9up7hphrNFxQiZzgtW0oTrWQmYEf7geAHOwtVSfPsr2p6Iwz+dvJzHlxzRH44YDc
         drwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YMViHd8L;
       spf=pass (google.com: domain of 3r5vlxqwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3R5VlXQwKAPgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id h14si35820plr.2.2019.08.27.13.40.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:40:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3r5vlxqwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id c14so197399plo.12
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:40:40 -0700 (PDT)
X-Received: by 2002:a63:9e56:: with SMTP id r22mr265817pgo.221.1566938439399;
 Tue, 27 Aug 2019 13:40:39 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:39:57 -0700
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
Message-Id: <20190827204007.201890-5-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 04/14] um: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YMViHd8L;       spf=pass
 (google.com: domain of 3r5vlxqwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3R5VlXQwKAPgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/um/kernel/um_arch.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/um/kernel/um_arch.c b/arch/um/kernel/um_arch.c
index a818ccef30ca..18e0287dd97e 100644
--- a/arch/um/kernel/um_arch.c
+++ b/arch/um/kernel/um_arch.c
@@ -52,9 +52,9 @@ struct cpuinfo_um boot_cpu_data = {
 	.ipi_pipe		= { -1, -1 }
 };
 
-union thread_union cpu0_irqstack
-	__attribute__((__section__(".data..init_irqstack"))) =
-		{ .thread_info = INIT_THREAD_INFO(init_task) };
+union thread_union cpu0_irqstack __section(.data..init_irqstack) = {
+	.thread_info = INIT_THREAD_INFO(init_task)
+};
 
 /* Changed in setup_arch, which is called in early boot */
 static char host_info[(__NEW_UTS_LEN + 1) * 5];
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827204007.201890-5-ndesaulniers%40google.com.
