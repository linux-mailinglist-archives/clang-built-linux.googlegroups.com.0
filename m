Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHEDZD6QKGQECO6XIQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B1A2B3C28
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 05:35:41 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id v12sf19278959ybi.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 20:35:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605501340; cv=pass;
        d=google.com; s=arc-20160816;
        b=VOQvN4IAEFxsEOmHsVWmFIMfGXPjRZR0jcrAa0g8ueZm/YNzivj7ZL0AeNT8ow6ag9
         o/6/+O7qtQdCJ4Ahoj7h7FK4vNWBaycJQPkQCpiX3s0nsgUjznA+HTZZinBjnPH8pLi/
         bhKghZPymI5boyyvz4Y83/26LXO9nFUqmfITBodCkXxz/1Bie9QbO5HKVmy9ds/mfEV7
         FrwHPI/GK5LO5YMh7wRjh0ax9MtFMIImm2r2ZV4FO11NtJUHmDAhW9COKfgwfC+H1z+K
         9fyXnlggjpdgAAybOYLQIH12pp3tVZp1MQPzbicXpRr3XSfN1uUxZIu/b1S7eVNyzFs+
         ImIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=WC6Akmfl9r3dZZoeLY9sipds4hWHIMtONh9l+4QjPOo=;
        b=Y2p6BXNhz5YlF64pNbcRPOLzTszT+b1Bu/VuZOTTN2OQevhIr1m7LJt6KVzxPES3GV
         Bj2hTWbHgyloBrqwNuNdQ/YroKH1D651qCeWFyfchJHM4dgAzH25aoxVaudg7JAtwJdF
         S1pKMyRXhONKoTJYS0wwYE6lOa+26EKbudFGUrto879+3Y+loFBbLLus7AJ5yWfVazu3
         Gg9V/NjtSiMdSQUK0qgyzDdOZqIbE0aMj3KmNwiOdDfP9qZ+pY6pIQyilAsDRBSvg/l+
         yCBMbORatdko54YZ4aUeicQzWSWd268XZzA/vBmbSuhLhACpu/KanvVqsfiRSLYm1mnF
         Jb0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IvTiaILv;
       spf=pass (google.com: domain of 3mwgyxwwkagovlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3mwGyXwwKAGoVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WC6Akmfl9r3dZZoeLY9sipds4hWHIMtONh9l+4QjPOo=;
        b=Uy3Sat++8sP1PJI4jQDgPsNTgOiy1f22+lK8bx9Zl4w9ORSYKJTq/XmYewESgfynt5
         414Z1xiuMR5KsY+vb9K06eDbZFB8nXlNNLnOV7ymCGLy0Fi4BIGsmjXDVz8PRD8DlA/q
         rYbtP1Ah3ladC6Dgq8OouJFFfO0JaklmV9rUF9odw2In0IhDlD+tvHQ0oJQjNE51UTLu
         T+P7b5XWMxNohFl9ao/6XqtHLhnnz9rewnainb6Rwij9jJ0Puh3Q0cmvwk5n32Bnx/R7
         EyNHzmENJ+ecoI7+ngZSppiKkX6ECS/cRQ5Td8l4bj7yg6h3Fzud/CF0QcfzXBcdnEuW
         z4CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WC6Akmfl9r3dZZoeLY9sipds4hWHIMtONh9l+4QjPOo=;
        b=sFBrsEAUhdPmDnSIt6zstlVQk2uw8u3oEG1nsCA/0lPA36tWlzzMh1QoumHlzsH/1X
         mVigGD0oVxle0bXCuv1QRCx99DQPX1FLncULc2AGU3ogEqt5B0hckZyHHvzCkbklfyZa
         oa8p5D/Qq3mI9s7hnBh69VfwDGAmm0mupWsORfMIoDMcXOuhE6fcGAksgq9jGeIxcm+g
         ugAD1kg5AD3/xeb8ayrHv5k21IiAE/fmpnZP0Us5yxgGmX25/DSHP7ngugaUIksOctcR
         MoYkQBEUNCmqgl4EA7yazDI+Wyh6ZfZM9NQWTTVV572++LlC9S2Y63+watK3ndIMDKBT
         dceQ==
X-Gm-Message-State: AOAM532ozdwE/zFVBBKEtYywqQF7cr5I9xLITNkxrgX6GgH9soFZUZL1
	bcg8apUzLft9L9f43sK6URg=
X-Google-Smtp-Source: ABdhPJzNPEldjhqOp3EBzw1tpeEPLRQor6J6YuEBYh+KXbmNir9Zt5LwuXzD3PzaJ1wqrmkIBV/GlA==
X-Received: by 2002:a25:6903:: with SMTP id e3mr17989075ybc.295.1605501340308;
        Sun, 15 Nov 2020 20:35:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:4cd:: with SMTP id u13ls6271196ybp.9.gmail; Sun, 15 Nov
 2020 20:35:39 -0800 (PST)
X-Received: by 2002:a25:a247:: with SMTP id b65mr14648590ybi.146.1605501339833;
        Sun, 15 Nov 2020 20:35:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605501339; cv=none;
        d=google.com; s=arc-20160816;
        b=wj4kny0hWrxE2PIfbYhD2wnD+aBlc33RZoGgr8NpFzLZhd9Kv7fq2Kj9n9U+5IT+qs
         GdtVbHqrJckpai3a8OV3zmgF96XhvhoBgLA0Z3B2mZh/l6AvCfPhSUgVmOe+Maz1P7/o
         TTM0/9l6VTQairxRg+TraySRVT0IPLc/dwY8Id4VXlHo2RBgddRAmof7XuJSHv3ober/
         XV4lxR0bNeXgZaqTzuRX3O7N5EioT2Z9PWjjgzjJDZ2rjqjqdZlgFnvjAvmwXDLH1wu+
         r0MI/HLlQiYjJ2RjyMsICPPpfc+IrK7aizu7E7hEVNvw2paObkvc8VWG16wYz6LbijHM
         Q1sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=PcaGZc6YEOa/upx9Lq4nvAAaktl5oI7rmAzxmSmunYg=;
        b=xtJ1SlpQt41DntZXk6SPOXCZddIgDD3ZeV49c8uCO7S1lTd4kkwI2MgUQRbxZsSsdI
         +nYKZM763q2AsN0s2972WyFgBXDKCowvIhFqq2MvzSsPP8v34G6x5T2kUfV9AVE9A8NM
         NEGBnsd/g+3cNbjFi8vg/RIgMLz0ZGTqLL+KlcOyCpFeizS2uHMbW6fN1ac1vOrbzo6S
         Oqvu0TUtWxRaBMv5o6AyJq7IfY9EpAwylcexHi0VYKlufLgDQBpG+Rw3/KlRjy1W2G9U
         8fL4UCV+U6Phpiz4C4KPR+d1V6HXMAud7uoaezCEGFJS+UmMKpUR5MF39YQlTBwJC7ME
         YDjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IvTiaILv;
       spf=pass (google.com: domain of 3mwgyxwwkagovlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3mwGyXwwKAGoVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id e184si913374ybe.0.2020.11.15.20.35.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 20:35:39 -0800 (PST)
Received-SPF: pass (google.com: domain of 3mwgyxwwkagovlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id d206so1479921qkc.23
        for <clang-built-linux@googlegroups.com>; Sun, 15 Nov 2020 20:35:39 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:fb4a:: with SMTP id
 b10mr13942185qvq.1.1605501339502; Sun, 15 Nov 2020 20:35:39 -0800 (PST)
Date: Sun, 15 Nov 2020 20:35:30 -0800
In-Reply-To: <20201116043532.4032932-1-ndesaulniers@google.com>
Message-Id: <20201116043532.4032932-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20201116043532.4032932-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [PATCH 1/3] powerpc: boot: include compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: "Gustavo A . R . Silva" <gustavoars@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IvTiaILv;       spf=pass
 (google.com: domain of 3mwgyxwwkagovlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3mwGyXwwKAGoVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
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

The kernel uses `-include` to include include/linux/compiler_types.h
into all translation units (see scripts/Makefile.lib), which #includes
compiler_attributes.h.

arch/powerpc/boot/ uses different compiler flags from the rest of the
kernel. As such, it doesn't contain the definitions from these headers,
and redefines a few that it needs.

For the purpose of enabling -Wimplicit-fallthrough for ppc, include
compiler_types.h via `-include`.

Link: https://github.com/ClangBuiltLinux/linux/issues/236
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
We could just `#include "include/linux/compiler_types.h"` in the few .c
sources used from lib/ (there are proper header guards in
compiler_types.h).

It was also noted in 6a9dc5fd6170 that we could -D__KERNEL__ and
-include compiler_types.h like the main kernel does, though testing that
produces a whole sea of warnings to cleanup. This approach is minimally
invasive.

 arch/powerpc/boot/Makefile     | 1 +
 arch/powerpc/boot/decompress.c | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/boot/Makefile b/arch/powerpc/boot/Makefile
index f8ce6d2dde7b..1659963a8f1d 100644
--- a/arch/powerpc/boot/Makefile
+++ b/arch/powerpc/boot/Makefile
@@ -31,6 +31,7 @@ endif
 BOOTCFLAGS    := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
 		 -fno-strict-aliasing -O2 -msoft-float -mno-altivec -mno-vsx \
 		 -pipe -fomit-frame-pointer -fno-builtin -fPIC -nostdinc \
+		 -include $(srctree)/include/linux/compiler_attributes.h \
 		 $(LINUXINCLUDE)
 
 ifdef CONFIG_PPC64_BOOT_WRAPPER
diff --git a/arch/powerpc/boot/decompress.c b/arch/powerpc/boot/decompress.c
index 8bf39ef7d2df..6098b879ac97 100644
--- a/arch/powerpc/boot/decompress.c
+++ b/arch/powerpc/boot/decompress.c
@@ -21,7 +21,6 @@
 
 #define STATIC static
 #define INIT
-#define __always_inline inline
 
 /*
  * The build process will copy the required zlib source files and headers
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201116043532.4032932-2-ndesaulniers%40google.com.
