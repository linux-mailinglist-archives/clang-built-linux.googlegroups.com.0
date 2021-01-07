Return-Path: <clang-built-linux+bncBAABBQMV3T7QKGQET3ORQMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BF52ED08A
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 14:21:06 +0100 (CET)
Received: by mail-ej1-x63c.google.com with SMTP id u15sf2392792ejg.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 05:21:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610025665; cv=pass;
        d=google.com; s=arc-20160816;
        b=trPrtYZCdKfRNalCj1trkE6Xl0gZzeD6TaUr5ZMEbKA0MyuLag6E//OWnazZTaiYy2
         JEqFSwpFky3AKsRtGlNoShAZc4hFykOgZAxLu63qN5fgTOaXM7TtN8KeYHtNW19FsETA
         w4906PMQDloOJHU3myAypmSt56gYnVVa9R4G+3e51ggm6tq0LdgLHberIYuftgu2FEsB
         yanBrvucERi4Zy0AWtiksoZMpwkSUPkgFh7QMkSqtJcmtCVOREV/IyVr70QRK0naKdoY
         9Dx+ehBiQd7Shg3h6iPkX/MaXJjqvOdwpSPjN7jBxPsAZox0jIQi7y8e/kQteGdVqECj
         vwIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=SC2YyAoQGikmo+DZ2nv75WcrrLlEdC293P8GzHGJzys=;
        b=FU2/BqMYmtzDyuTB/cW7jxPo1QTGaFtP5unuuMvdsF941nNv3Rpl+971fAfllybaqw
         uQVdofPMSYnE/MoNZRyEmfDUn16sCHt9uggohrdnK6I0c4j5yLD37PZKPfuxNDXQAx2A
         bZclWcukJRuvhtKPZfIz+1vRyddEqtidE7NdUsly6gnjKDORsPCaHR2sd2S7GZFNEWyh
         IURIQrNK6hpW9Tc68L6Ao98vZGXGAcjhwhfQp/IpL0nfEba1gNifTeVDBybTc6bGE23U
         vq+Gl5R96U15espNLRwy7NCpE9H7zyKCBRweJ6lLPZT8/BZHlJpnDLo67qN8O98b92os
         khMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=fMAChsxh;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SC2YyAoQGikmo+DZ2nv75WcrrLlEdC293P8GzHGJzys=;
        b=AmMYXjV9vdoWhmeI0KTiPIlwaC8nlezQCmJcu7baEp0BSLCN8teaLItEIiBn/lJ0iH
         s9IYD9bKnHNx411oCjtPaGpLoptIYgBNHV9Ooqg1PFY9Kfs3g87Dh+1JL0l09Exe/3J/
         LQKONs+EGqj+zAcUae4zDz6sGQ9YoeKrS+opjxjGxBNJ8JxhDbtOPsGZ5wyqu7n9GTje
         5j2MPJHaAXg47PhDgsDS6XlsyUoZmnv67a+bWLzyGdoRXUEDe7hPjcK8WG/foKGH2L/R
         OMLQr2eKhr8pvSnBla78YHbEFj3VcW4Si5dUiyy+TqkYhavFVzVzyHAp0TlIzHrdfMpD
         HSKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SC2YyAoQGikmo+DZ2nv75WcrrLlEdC293P8GzHGJzys=;
        b=OlIBd/wvQKCqA7vg75VNrEeVhDtb2EdwksUYD1kz+pHen6yhomn/uHrtOzXRTj0Oyi
         RGMYD9/QaCqI0T2wPOWfI4TPnRCc4PJ+BkeIWmDQHGCXsWyzYGOjxikzqgJ5D01Xsbx1
         mEDCQJt+P+RIqL8TEeUdW95hjh4GQp0f12zWX81SbQd2sJ3wr2crI25+XOA8IqkFrOxo
         L4+SsTbDfqRciIKyEMlbOloWVcZbe1eet8S+Tjc9XanHe5tA1eGZahFsINugSu9GG66B
         XNnUIgi4E25xw6ferO6aOT4I8ty7KqAQLtd1uX/bnQpuHAQAmO69fmCJoASQ2cc4g/vQ
         EkRw==
X-Gm-Message-State: AOAM533gQNe2XyH6u/EVIUlJTUa+anjJRAEdqR0i+rDEMcgsT5p+YnyF
	E2zMwkzslquIMBNOxiXMMrI=
X-Google-Smtp-Source: ABdhPJykZ4j3X+ytDQmq3wxkD5oAOsUZUj41pfhKr0rQjHJ3wCslqpoqlp8/pYM4gd9jjaa4DOX+Ug==
X-Received: by 2002:a17:906:d8a3:: with SMTP id qc3mr6360929ejb.443.1610025665841;
        Thu, 07 Jan 2021 05:21:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:22d3:: with SMTP id dm19ls3432867edb.2.gmail; Thu,
 07 Jan 2021 05:21:05 -0800 (PST)
X-Received: by 2002:aa7:df0d:: with SMTP id c13mr1694165edy.387.1610025665208;
        Thu, 07 Jan 2021 05:21:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610025665; cv=none;
        d=google.com; s=arc-20160816;
        b=VDubc1CzrAOZLYbZzNWEvbfEqpem7NIMJLzxY+zF05BQyGXQQM8jhyAX3MkbtKR3R5
         CHTVaLLA+DkcYcIRIJbYaLxC9+Y4ki8Smaf7XZqINF8PSDnp7gowzqg44b1zKNq0SKRq
         xP+LQ2oX3rp3tvLJ+C+C+IXpzDUtjnKRQxHICo8R7KvH8ELGZ79sG6FmJg2keCZCeU9P
         3Ie3meRcmrbXABedMij6TQ4qcYB/xfO0pCuAPWiF48hduI3h6+AnvTQBrHcVFlJjRFcj
         tGtwZkuVBv34CAeZPYDWTpns+0nkj4lIInMLign7OPbxKVfxhAbZL7bVmIbBXjIh6eXw
         zE0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=tAhGyp2geX19Adc0pmsweHYMg6GqMIq+Zk7djwr/y7M=;
        b=dw/PXw3q6PkHNlJcU8CRhZbRpRK3OSQn0d6gw28ZeXVQkpzIPpfu7iTm0bkI5Bq4Ad
         vPypyZ1/8g/vK81v9OaOtcc6c7fLkNcB33g2f6VQ2e9rcLOXoQ2XVTcKGuhIM0FsefjX
         WQPy83EkCNDYVoQykGjSgWr/1H3uoBR8s3xf7FDQu8Pqe3JzxRZOc7XICanVcAG5fGEc
         9pK5jAwds0RKGSnEtNBi4nXpC/qQTsWMjYcwsFDBVjsMrUxuQVlP9GNsQ0pa14ibvdOq
         j21TOZcNVZkKvmHYzkp5RBLimiUyLOdiiLP2dpmpKV2LgFJcyZJBztLCrb2kV8pcVAIp
         d+dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=fMAChsxh;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail2.protonmail.ch (mail2.protonmail.ch. [185.70.40.22])
        by gmr-mx.google.com with ESMTPS id d9si388563edr.1.2021.01.07.05.21.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 05:21:05 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) client-ip=185.70.40.22;
Date: Thu, 07 Jan 2021 13:20:55 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v4 mips-next 6/7] vmlinux.lds.h: catch compound literals into data and BSS
Message-ID: <20210107132010.463129-3-alobakin@pm.me>
In-Reply-To: <20210107132010.463129-1-alobakin@pm.me>
References: <20210107123331.354075-1-alobakin@pm.me> <20210107132010.463129-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=fMAChsxh;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107132010.463129-3-alobakin%40pm.me.
