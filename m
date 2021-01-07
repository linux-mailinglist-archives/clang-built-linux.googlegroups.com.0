Return-Path: <clang-built-linux+bncBAABB4HM3P7QKGQE2PCTVPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 282A62ECF26
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 12:54:25 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id b11sf6094699lfj.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 03:54:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610020464; cv=pass;
        d=google.com; s=arc-20160816;
        b=p668Yl4ai9pTwGjMYMsblkRruKFjE83CVS6cCOGyQD3g9AnA7BEg12CvltHXLpWBRi
         4hDg0+kYmlWf8CDdfworyCaG/tw1GQc794c7xZvDtxik4b8HTSBdpapV7UzIHnE6neNt
         MTFjFCzwmiun9vt9XvinVle4slptnGCddPS49jz66xjqG4JMKSJPDy3pb6RMLiWUgyFL
         XBmydr2b2/YUi2x34AX6nlItg9o1y+BHnyLRWmOR3YeQ/SD0msdZBAytzSM/rGnCSMqb
         a4f3GpgsT3qbXvtl1NGfalMYqFq5o3gJMiBX0zDROB2//TWMl1WVo0Tsv4cIoKiJM8CF
         DjLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=SRBAVmbjpmI6+r9tsGNE4zVx0LSzhLz3n4rPg7qwH90=;
        b=dr7jbCY2+0zzgLYuDGY6epmEVmG5yNX1MfSAPcSXA82daWZcwMB0y7pbOCivPVAfY5
         bxB80kf1cLbNzn5nVZvfeDM0HcXuhu42PVB4WFrf7La98iBQdUxSyfoqi4zqJewn5cM2
         pEH8pp+dF58qxny8sUSW3HgRTmAmfPxqEJJix/IFTmRY+VzpLZV0CZDThsVdxiRk1Ekh
         ruvCsI7nYPdKsRUEI87xu00JppCJa3HmORVosaUTgfCptnlJvA3QVlcOJTEUoO3bRfq+
         RYfbRIKmlsRlm+OvXNa7FxnD4J7OH810pCXEF/USwVX67V3D6WH1Jc774V/vGIj2YOTv
         I0iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b="amg/7JOJ";
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SRBAVmbjpmI6+r9tsGNE4zVx0LSzhLz3n4rPg7qwH90=;
        b=Ew4k4pkmS1IAwTUXUbMvOtuOG9TYVo01ND5WFKaqg24+ghDoToSE2UodwQ2SsHUhXP
         33C5o5s/wfYkNK1m67MtuE/36Hym5iAMFQVxt5z5ha9rBgDHUCLWJkplEF3GtGTEIc+v
         2gc6NdGjPwBDMUIciAJEei+++ybCg4KlqB0U7EJljytCuOoP8hXJUir8fb5UrrEIi9DV
         piyXw3IrzwZN9+XYbp7rYhQahrvxHtZgDfeLbUOo964AKHTc2ruXurc8jlLaO108uDuc
         Yzt8TuV/sKPWL3xT4LAQnLNvSXdX73V8TE00dv7R7f/ggN2uo3y/kLSTqGtSGaBYWTq7
         P9Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SRBAVmbjpmI6+r9tsGNE4zVx0LSzhLz3n4rPg7qwH90=;
        b=nWSq+m+QJfR5X1t5QhpGk209RzVGEyyoW1mRVCQbMKtyr0vlX4pRyk2a+KempKU6NC
         TE4yikhZhR+yZHG/wHr/2qqFDe5VpTboul23KzzagyiHHu/yhMj2dkzkoyQGRHX8xhz7
         /h3B5/7RQC+IGpIRDLbH9ThO8eqEYbv8BCo2oz/VvyM9iompcnurHxvHuM2MDbdija5P
         TnC8eZkmOtTFN/igIeMTnPUjA07TXsyyJubICF5Cc6L/lbU+lsPo70fjY+uHuVWMOYjV
         kiLGhhqt1SMiGFoi6N3itWem6d9Rvonp9IHV6tukav9VPGImcwAbP6bmCBsoIuINa0cY
         GRSw==
X-Gm-Message-State: AOAM530nFYjWoPoWVMZQCEP0rzACBlI6vFWEw/onx6tQx639fbyJBZgL
	i3zPd1VIAkpg0J4hkhBRLV4=
X-Google-Smtp-Source: ABdhPJzMpOie2vxtaobWhDYChzltxYRALPwSfDqK06Wu2EWF60xPqXYagHaQaeZMT40lN0BlOf0Cmg==
X-Received: by 2002:a05:651c:30d:: with SMTP id a13mr3934605ljp.238.1610020464760;
        Thu, 07 Jan 2021 03:54:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc2a:: with SMTP id b42ls1134019ljf.2.gmail; Thu, 07 Jan
 2021 03:54:24 -0800 (PST)
X-Received: by 2002:a05:651c:3c5:: with SMTP id f5mr4182946ljp.496.1610020464002;
        Thu, 07 Jan 2021 03:54:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610020463; cv=none;
        d=google.com; s=arc-20160816;
        b=l5887WZfFWd6UrAFbozipVe1kyTvR2NdBXEjQ9k1yYU7A8sevII4KU+V90P6TOcr43
         Xx978RLCKqavNFaWTnLA4WBJKED4A8d+qgZn6w9vpgYwIjtyw8s3SJIRi9wzRbFhCYbN
         1DAzls1rwCTLo2LEvBNvwWQyF27jpokmN6EdvXs//hkcLTeB6v0HZfoN/fPGMhE2HkwS
         IBFz2Eynb0plbxfGHNmI8RyIEbpnVaRhskeOwahS3BQLeHOa2K3ITAYjKD3leKwwezlx
         Zp/T2Uev3JabfYO5fQr0wWkdXp8ZXplWSsRpBCQIdYlQOQVXoEXYB7PhaGmhSQ9itT6R
         fdAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=tAhGyp2geX19Adc0pmsweHYMg6GqMIq+Zk7djwr/y7M=;
        b=J4qGs9htnl9o08AYxbgkJMZxLE5XoXtbk4JrYqfG5NbkeghhN0K725hf/iBR0vCOMI
         y2M9MqjTYhlO2wtqN8xWBXGwBaWPKYZQZ54TVnliFnuCl6qTy0+pTKU6CgUULB5ayNkx
         bDh2Om6hA6w7l63dOQ4HzbsjV/vfdy3g4rwwTIykNVbEWhvNpedCTv0KVJRPR+5gAJRw
         r9xNxr2psYzCVvmpoMzjRl/Mq7ipXhshVJ+u2XpWwAaZFv4NSmEUDMjpj6dfFPJ6mpWU
         gYQQJfN1M+RS+2GCE2owIhG2iya0PNBwz23ggGgez9S1OYfzu1cHL5/LkjWFi8hT7Vlm
         rx0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b="amg/7JOJ";
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch. [185.70.40.136])
        by gmr-mx.google.com with ESMTPS id u25si234646lfd.11.2021.01.07.03.54.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 03:54:23 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) client-ip=185.70.40.136;
Date: Thu, 07 Jan 2021 11:54:18 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v3 mips-next 6/7] vmlinux.lds.h: catch compound literals into data and BSS
Message-ID: <20210107115329.281266-6-alobakin@pm.me>
In-Reply-To: <20210107115329.281266-1-alobakin@pm.me>
References: <20210107115120.281008-1-alobakin@pm.me> <20210107115329.281266-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b="amg/7JOJ";       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

When building kernel with LD_DEAD_CODE_DATA_ELIMINATION, LLVM stack
generates separate sections for compound literals, just like in case
with enabled LTO [0]:

ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
(.data..compoundliteral.14) is being placed in
'.data..compoundliteral.14'
ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
(.data..compoundliteral.15) is being placed in
'.data..compoundliteral.15'
ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
(.data..compoundliteral.16) is being placed in
'.data..compoundliteral.16'
ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
(.data..compoundliteral.17) is being placed in
'.data..compoundliteral.17'

[...]

Handle this by adding the related sections to generic definitions
as suggested by Sami [0].

[0] https://lore.kernel.org/lkml/20201211184633.3213045-3-samitolvanen@google.com

Suggested-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 include/asm-generic/vmlinux.lds.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index b2b3d81b1535..5f2f5b1db84f 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -95,10 +95,10 @@
  */
 #ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
 #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
-#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..LPBX*
+#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral*
 #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
-#define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]*
-#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]*
+#define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]* .rodata..L*
+#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*
 #define SBSS_MAIN .sbss .sbss.[0-9a-zA-Z_]*
 #else
 #define TEXT_MAIN .text
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107115329.281266-6-alobakin%40pm.me.
