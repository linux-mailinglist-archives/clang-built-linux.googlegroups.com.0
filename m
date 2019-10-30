Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV4Z47WQKGQE5QUCJSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DF9EA2BF
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 18:48:09 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id h12sf2163523pgd.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 10:48:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572457688; cv=pass;
        d=google.com; s=arc-20160816;
        b=P5JE4b1QEw2+Iin0nb3ivUkn4JlijmIt5rR+pRFzbeyqZOm4EpSG9mkr3W4+OIcD7S
         lRsTCApc1KA/2FbGoYagKYY5QHYIXaQyzfZF39IPaGiUKuv0GgH4tMago8ED4GcR1B5/
         X7y5Gr7TvIJOG5vwjyGqGMgQ6B9RC87NNVb+eXQMUDwNEi4xdqXj/DyjxlE+t+UwQUn8
         L1jEBccMlIE641A2s7BIAuJV5/scFiMa7W9NTbOkZ6vNVJvvG6ZwniZJgw9YwtcESfI9
         3ZR9Y+fny/omHQ5k8Qk4ewr2D5IXAyFt7q6poGRUUntzpclQhoSL890LsOdy31TnTvP9
         6mGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=fYNyKxGhttQp8TwilRbt/5lwTJdp7MHUxZScEkw908A=;
        b=obOiaICT7TftWHiaMRFgU9v1P5y0BAA+X1RtOsQTltb/eZ+23JY2/CjhdQofEJepzD
         MsYE0JXhtHlTaST9Y5chnuR2IjuNwTTbpLEB5Qt8CDbZSpbkxk5NWbaX74NNg9CbuQEp
         GcHCD56Wj0ghMXoGqb5qmjhREyTke/AOONYZXMLg/3b9BvgVKFFJ1m6+fBdsX/vn2Hgj
         psF9qGLXpEX8d8g6rVEjYpmECl+FI9JsM7gjq+0Wy1rig9sZYNF5tYjP9ikfpPVENSnM
         nzkyQTWW/rf//XVcrCszvI0yMToGlbWnaeXBdTLIiKPYZhMu5WKCsCHjwc8obGLreumX
         Hdqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VbJv9ObK;
       spf=pass (google.com: domain of 31sy5xqwkaes0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=31sy5XQwKAEs0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=fYNyKxGhttQp8TwilRbt/5lwTJdp7MHUxZScEkw908A=;
        b=B1b7qwsesAH3rMXKetj/iUiy9DBNqMLt5VPsVmmV4JH4mDN0f3MTzA5q5p2aXoa5U2
         EqOqYcAH4OFrwKPka5bAoyKtcupBf+atFF7ARWguaDkS0E8tWyXehumH0kG/AfwuIx+V
         nNylT7IaWkKoYNe8YplKpgiYl2OUxE3jk93z68nf0I/I7sq6VzLIlZ64tqUgwEL54qLT
         TkLAsWPbtvOPQ8EptQY4qm+mzOMQlijX7qOwJVOvfgatTd7veLUuQOgavwF6pH6RXipY
         qF9iUxh4EqYqih8JcRPkCh+C+63yzmkudQyx6S9/zcjH54xZlbsCjC8rbiYz9bhSfw0N
         CW5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fYNyKxGhttQp8TwilRbt/5lwTJdp7MHUxZScEkw908A=;
        b=OZvOzuZ7zbnM5P+X8QpY/5Kh+cS9ZhjMEf35PgbMYd6P+bjC+WInEEpizIoEeUOR1A
         9s0oNhWo8E6rQgvQyyZIMFkoXLH4b2tR4rQW0Go9azufJy9b0wO7KtOoKqRI0b4kXX6V
         80/dF3YecRLZJ3Zg/7GyezEjmJA0LVH6jXAK/G7ae7iEmCMAzJKNe/HY9CC9iXKBZI5u
         bQ4G5XJHuphRRPUL6yhxnq80bEionzYZKlzdKVlsX0mYygY4GJOO9pnPX1y+7Q/padm9
         Xd+4qV9GjukOUWK2u3IT9VdCn2BH3ph+wqeCpCMRhEjGqzEyPzX9gEFF7QjdPBMbOQU6
         FxWQ==
X-Gm-Message-State: APjAAAV+te320frJI+UW0jP7X8aQNxItVIysFtughChINSqrmh6IP0FK
	tMhPXxzorbg4rxDR8Sd9HYU=
X-Google-Smtp-Source: APXvYqzly9UGp8k+desYwe1axjBYaFH3PBipQNNl89BKWMlS/qpCh6cCBUocG5RSZCFh7XW03rOX/Q==
X-Received: by 2002:a5d:9849:: with SMTP id p9mr871066ios.215.1572457687986;
        Wed, 30 Oct 2019 10:48:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:b5cd:: with SMTP id e196ls4362iof.8.gmail; Wed, 30 Oct
 2019 10:48:07 -0700 (PDT)
X-Received: by 2002:a6b:4405:: with SMTP id r5mr977379ioa.177.1572457687380;
        Wed, 30 Oct 2019 10:48:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572457687; cv=none;
        d=google.com; s=arc-20160816;
        b=g6iE3/3LAvwV05PPvEAeOa1sjo/no17R3gcLLyvdz0dFlRd4Ut4Y7MduM87KXcQgBc
         kM7o0B1Z3p4i056++z4Koob8GWaGXLNwTUJqWHP4vabRKZfC2Y9Zt4Z9FGYu5+bALsng
         wTIjRshFUTj6ZBX/pelIHdNolqBY9R64B+xMr0FouxJyu1yZoKRjPjKPOpfr+iZq7HFY
         kNC67qtpnrJ9SNw1ZMSgMHKYZd5mCpo/5MPpYj+GrAK3ViNxp3EJa6l75N1UVtFCdt8D
         7CCNKUI6YahJ+566TF/als9xuy3UflmnC9SjicLo6vsGJlXs2/gB2PE2K+AJeHqMMFeB
         +t3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=zXlXjc4+npIPAH6DvVDlchwdRCEZOxio1xYz7SEVDs8=;
        b=bWXiuvo4YFjP0wS2fceisyeyqEIz3Jqor/8Nb5FCR/8sqHBSnvwOc1CFwyIij9hg3S
         shPiStNHxNqQ7aIgKQVYlb6ZD6/oWr3f0NifrYWM/qLyQmPl61zzwuyPLf4KOB3jCRRx
         YYp/wnMc4IpAVM5bOAzPdj/HilfrfwaNRtyWqTsUkXMXf7OCHz/djjPF1rQueF6mdswI
         dzI9UMdQTbJ/hpZ0JNCEqOhXksDmniOVIpsjUV42YIJWC/3Af1NjG/Ahglm47CW6oCDO
         EJTxuFpr2i+1/m3XRRxOhv9C2Uh1rOxqTOMXZqqXnYffPOzKX24lHjJBPaltbkMQsDS4
         CXlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VbJv9ObK;
       spf=pass (google.com: domain of 31sy5xqwkaes0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=31sy5XQwKAEs0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id x18si152092ill.2.2019.10.30.10.48.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 10:48:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 31sy5xqwkaes0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id g20so2278909pfo.0
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 10:48:07 -0700 (PDT)
X-Received: by 2002:a63:ff1e:: with SMTP id k30mr640724pgi.273.1572457686301;
 Wed, 30 Oct 2019 10:48:06 -0700 (PDT)
Date: Wed, 30 Oct 2019 10:44:13 -0700
Message-Id: <20191030174429.248697-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH] arm: replace Sun/Solaris style flag on section directive
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux@armlinux.org.uk
Cc: Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Jian Cai <jiancai@google.com>, Peter Smith <peter.smith@linaro.org>, 
	Hans Ulli Kroll <ulli.kroll@googlemail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Nicolas Pitre <nico@fluxnic.net>, Stefan Agner <stefan@agner.ch>, Enrico Weigelt <info@metux.net>, 
	Thomas Gleixner <tglx@linutronix.de>, Roy Franz <rfranz@marvell.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Allison Randal <allison@lohutok.net>, Richard Fontana <rfontana@redhat.com>, 
	Kate Stewart <kstewart@linuxfoundation.org>, Dave Martin <Dave.Martin@arm.com>, 
	Sonny Rao <sonnyrao@chromium.org>, Doug Anderson <armlinux@m.disordat.com>, 
	Vladimir Murzin <vladimir.murzin@arm.com>, afzal mohammed <afzal.mohd.ma@gmail.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VbJv9ObK;       spf=pass
 (google.com: domain of 31sy5xqwkaes0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=31sy5XQwKAEs0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com;
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

It looks like a section directive was using "Solaris style" to declare
the section flags. Replace this with the GNU style so that Clang's
integrated assembler can assemble this directive.

The modified instances were identified via:
$ ag \\.section | grep \#

Link: https://ftp.gnu.org/old-gnu/Manuals/gas-2.9.1/html_chapter/as_7.html#SEC119
Link: https://github.com/ClangBuiltLinux/linux/issues/744
Link: https://bugs.llvm.org/show_bug.cgi?id=43759
Link: https://reviews.llvm.org/D69296
Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Jian Cai <jiancai@google.com>
Suggested-by: Peter Smith <peter.smith@linaro.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/boot/bootp/init.S            | 2 +-
 arch/arm/boot/compressed/big-endian.S | 2 +-
 arch/arm/boot/compressed/head.S       | 2 +-
 arch/arm/boot/compressed/piggy.S      | 2 +-
 arch/arm/mm/proc-arm1020.S            | 2 +-
 arch/arm/mm/proc-arm1020e.S           | 2 +-
 arch/arm/mm/proc-arm1022.S            | 2 +-
 arch/arm/mm/proc-arm1026.S            | 2 +-
 arch/arm/mm/proc-arm720.S             | 2 +-
 arch/arm/mm/proc-arm740.S             | 2 +-
 arch/arm/mm/proc-arm7tdmi.S           | 2 +-
 arch/arm/mm/proc-arm920.S             | 2 +-
 arch/arm/mm/proc-arm922.S             | 2 +-
 arch/arm/mm/proc-arm925.S             | 2 +-
 arch/arm/mm/proc-arm926.S             | 2 +-
 arch/arm/mm/proc-arm940.S             | 2 +-
 arch/arm/mm/proc-arm946.S             | 2 +-
 arch/arm/mm/proc-arm9tdmi.S           | 2 +-
 arch/arm/mm/proc-fa526.S              | 2 +-
 arch/arm/mm/proc-feroceon.S           | 2 +-
 arch/arm/mm/proc-mohawk.S             | 2 +-
 arch/arm/mm/proc-sa110.S              | 2 +-
 arch/arm/mm/proc-sa1100.S             | 2 +-
 arch/arm/mm/proc-v6.S                 | 2 +-
 arch/arm/mm/proc-v7.S                 | 2 +-
 arch/arm/mm/proc-v7m.S                | 4 ++--
 arch/arm/mm/proc-xsc3.S               | 2 +-
 arch/arm/mm/proc-xscale.S             | 2 +-
 28 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/arch/arm/boot/bootp/init.S b/arch/arm/boot/bootp/init.S
index 5c476bd2b4ce..b562da2f7040 100644
--- a/arch/arm/boot/bootp/init.S
+++ b/arch/arm/boot/bootp/init.S
@@ -13,7 +13,7 @@
  *  size immediately following the kernel, we could build this into
  *  a binary blob, and concatenate the zImage using the cat command.
  */
-		.section .start,#alloc,#execinstr
+		.section .start, "ax"
 		.type	_start, #function
 		.globl	_start
 
diff --git a/arch/arm/boot/compressed/big-endian.S b/arch/arm/boot/compressed/big-endian.S
index 88e2a88d324b..0e092c36da2f 100644
--- a/arch/arm/boot/compressed/big-endian.S
+++ b/arch/arm/boot/compressed/big-endian.S
@@ -6,7 +6,7 @@
  *  Author: Nicolas Pitre
  */
 
-	.section ".start", #alloc, #execinstr
+	.section ".start", "ax"
 
 	mrc	p15, 0, r0, c1, c0, 0	@ read control reg
 	orr	r0, r0, #(1 << 7)	@ enable big endian mode
diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 93dffed0ac6e..15ecad944847 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -140,7 +140,7 @@
 #endif
 		.endm
 
-		.section ".start", #alloc, #execinstr
+		.section ".start", "ax"
 /*
  * sort out different calling conventions
  */
diff --git a/arch/arm/boot/compressed/piggy.S b/arch/arm/boot/compressed/piggy.S
index 0284f84dcf38..27577644ee72 100644
--- a/arch/arm/boot/compressed/piggy.S
+++ b/arch/arm/boot/compressed/piggy.S
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-	.section .piggydata,#alloc
+	.section .piggydata, "a"
 	.globl	input_data
 input_data:
 	.incbin	"arch/arm/boot/compressed/piggy_data"
diff --git a/arch/arm/mm/proc-arm1020.S b/arch/arm/mm/proc-arm1020.S
index 4fa5371bc662..2785da387c91 100644
--- a/arch/arm/mm/proc-arm1020.S
+++ b/arch/arm/mm/proc-arm1020.S
@@ -491,7 +491,7 @@ cpu_arm1020_name:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm1020_proc_info,#object
 __arm1020_proc_info:
diff --git a/arch/arm/mm/proc-arm1020e.S b/arch/arm/mm/proc-arm1020e.S
index 5d8a8339e09a..e9ea237ed785 100644
--- a/arch/arm/mm/proc-arm1020e.S
+++ b/arch/arm/mm/proc-arm1020e.S
@@ -449,7 +449,7 @@ arm1020e_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm1020e_proc_info,#object
 __arm1020e_proc_info:
diff --git a/arch/arm/mm/proc-arm1022.S b/arch/arm/mm/proc-arm1022.S
index b3dd95c345e4..920c279e7879 100644
--- a/arch/arm/mm/proc-arm1022.S
+++ b/arch/arm/mm/proc-arm1022.S
@@ -443,7 +443,7 @@ arm1022_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm1022_proc_info,#object
 __arm1022_proc_info:
diff --git a/arch/arm/mm/proc-arm1026.S b/arch/arm/mm/proc-arm1026.S
index ac5afde12f35..10e21012380b 100644
--- a/arch/arm/mm/proc-arm1026.S
+++ b/arch/arm/mm/proc-arm1026.S
@@ -437,7 +437,7 @@ arm1026_crval:
 	string	cpu_arm1026_name, "ARM1026EJ-S"
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm1026_proc_info,#object
 __arm1026_proc_info:
diff --git a/arch/arm/mm/proc-arm720.S b/arch/arm/mm/proc-arm720.S
index c99d24363f32..39361e196d61 100644
--- a/arch/arm/mm/proc-arm720.S
+++ b/arch/arm/mm/proc-arm720.S
@@ -172,7 +172,7 @@ arm720_crval:
  * See <asm/procinfo.h> for a definition of this structure.
  */
 	
-		.section ".proc.info.init", #alloc
+		.section ".proc.info.init", "a"
 
 .macro arm720_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cpu_flush:req
 		.type	__\name\()_proc_info,#object
diff --git a/arch/arm/mm/proc-arm740.S b/arch/arm/mm/proc-arm740.S
index 1b4a3838393f..1a94bbf6e53f 100644
--- a/arch/arm/mm/proc-arm740.S
+++ b/arch/arm/mm/proc-arm740.S
@@ -128,7 +128,7 @@ __arm740_setup:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 	.type	__arm740_proc_info,#object
 __arm740_proc_info:
 	.long	0x41807400
diff --git a/arch/arm/mm/proc-arm7tdmi.S b/arch/arm/mm/proc-arm7tdmi.S
index 17a4687065c7..52b66cf0259e 100644
--- a/arch/arm/mm/proc-arm7tdmi.S
+++ b/arch/arm/mm/proc-arm7tdmi.S
@@ -72,7 +72,7 @@ __arm7tdmi_setup:
 
 		.align
 
-		.section ".proc.info.init", #alloc
+		.section ".proc.info.init", "a"
 
 .macro arm7tdmi_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, \
 	extra_hwcaps=0
diff --git a/arch/arm/mm/proc-arm920.S b/arch/arm/mm/proc-arm920.S
index 298c76b47749..31ac8acc34dc 100644
--- a/arch/arm/mm/proc-arm920.S
+++ b/arch/arm/mm/proc-arm920.S
@@ -434,7 +434,7 @@ arm920_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm920_proc_info,#object
 __arm920_proc_info:
diff --git a/arch/arm/mm/proc-arm922.S b/arch/arm/mm/proc-arm922.S
index 824be3a0bc23..ca2c7ca8af21 100644
--- a/arch/arm/mm/proc-arm922.S
+++ b/arch/arm/mm/proc-arm922.S
@@ -412,7 +412,7 @@ arm922_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm922_proc_info,#object
 __arm922_proc_info:
diff --git a/arch/arm/mm/proc-arm925.S b/arch/arm/mm/proc-arm925.S
index d40cff8f102c..a381a0c9f109 100644
--- a/arch/arm/mm/proc-arm925.S
+++ b/arch/arm/mm/proc-arm925.S
@@ -477,7 +477,7 @@ arm925_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 .macro arm925_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cache
 	.type	__\name\()_proc_info,#object
diff --git a/arch/arm/mm/proc-arm926.S b/arch/arm/mm/proc-arm926.S
index f3cd08f353f0..3188ab2bac61 100644
--- a/arch/arm/mm/proc-arm926.S
+++ b/arch/arm/mm/proc-arm926.S
@@ -460,7 +460,7 @@ arm926_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm926_proc_info,#object
 __arm926_proc_info:
diff --git a/arch/arm/mm/proc-arm940.S b/arch/arm/mm/proc-arm940.S
index 1c26d991386d..4b8a00220cc9 100644
--- a/arch/arm/mm/proc-arm940.S
+++ b/arch/arm/mm/proc-arm940.S
@@ -340,7 +340,7 @@ __arm940_setup:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm940_proc_info,#object
 __arm940_proc_info:
diff --git a/arch/arm/mm/proc-arm946.S b/arch/arm/mm/proc-arm946.S
index 2dc1c75a4fd4..555becf9c758 100644
--- a/arch/arm/mm/proc-arm946.S
+++ b/arch/arm/mm/proc-arm946.S
@@ -395,7 +395,7 @@ __arm946_setup:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 	.type	__arm946_proc_info,#object
 __arm946_proc_info:
 	.long	0x41009460
diff --git a/arch/arm/mm/proc-arm9tdmi.S b/arch/arm/mm/proc-arm9tdmi.S
index 913c06e590af..ef517530130b 100644
--- a/arch/arm/mm/proc-arm9tdmi.S
+++ b/arch/arm/mm/proc-arm9tdmi.S
@@ -66,7 +66,7 @@ __arm9tdmi_setup:
 
 		.align
 
-		.section ".proc.info.init", #alloc
+		.section ".proc.info.init", "a"
 
 .macro arm9tdmi_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req
 		.type	__\name\()_proc_info, #object
diff --git a/arch/arm/mm/proc-fa526.S b/arch/arm/mm/proc-fa526.S
index 8120b6f4dbb8..dddf833fe000 100644
--- a/arch/arm/mm/proc-fa526.S
+++ b/arch/arm/mm/proc-fa526.S
@@ -185,7 +185,7 @@ fa526_cr1_set:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__fa526_proc_info,#object
 __fa526_proc_info:
diff --git a/arch/arm/mm/proc-feroceon.S b/arch/arm/mm/proc-feroceon.S
index bb6dc34d42a3..b12b76bc8d30 100644
--- a/arch/arm/mm/proc-feroceon.S
+++ b/arch/arm/mm/proc-feroceon.S
@@ -571,7 +571,7 @@ feroceon_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 .macro feroceon_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cache:req
 	.type	__\name\()_proc_info,#object
diff --git a/arch/arm/mm/proc-mohawk.S b/arch/arm/mm/proc-mohawk.S
index f08308578885..d47d6c5cee63 100644
--- a/arch/arm/mm/proc-mohawk.S
+++ b/arch/arm/mm/proc-mohawk.S
@@ -416,7 +416,7 @@ mohawk_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__88sv331x_proc_info,#object
 __88sv331x_proc_info:
diff --git a/arch/arm/mm/proc-sa110.S b/arch/arm/mm/proc-sa110.S
index d5bc5d702563..baba503ba816 100644
--- a/arch/arm/mm/proc-sa110.S
+++ b/arch/arm/mm/proc-sa110.S
@@ -196,7 +196,7 @@ sa110_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__sa110_proc_info,#object
 __sa110_proc_info:
diff --git a/arch/arm/mm/proc-sa1100.S b/arch/arm/mm/proc-sa1100.S
index be7b611c76c7..75ebacc8e4e5 100644
--- a/arch/arm/mm/proc-sa1100.S
+++ b/arch/arm/mm/proc-sa1100.S
@@ -239,7 +239,7 @@ sa1100_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 .macro sa1100_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req
 	.type	__\name\()_proc_info,#object
diff --git a/arch/arm/mm/proc-v6.S b/arch/arm/mm/proc-v6.S
index c1c85eb3484f..1dd0d5ca27da 100644
--- a/arch/arm/mm/proc-v6.S
+++ b/arch/arm/mm/proc-v6.S
@@ -261,7 +261,7 @@ v6_crval:
 	string	cpu_elf_name, "v6"
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	/*
 	 * Match any ARMv6 processor core.
diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
index c4e8006a1a8c..48e0ef6f0dcc 100644
--- a/arch/arm/mm/proc-v7.S
+++ b/arch/arm/mm/proc-v7.S
@@ -644,7 +644,7 @@ __v7_setup_stack:
 	string	cpu_elf_name, "v7"
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	/*
 	 * Standard v7 proc info content
diff --git a/arch/arm/mm/proc-v7m.S b/arch/arm/mm/proc-v7m.S
index 1a49d503eafc..84459c1d31b8 100644
--- a/arch/arm/mm/proc-v7m.S
+++ b/arch/arm/mm/proc-v7m.S
@@ -93,7 +93,7 @@ ENTRY(cpu_cm7_proc_fin)
 	ret	lr
 ENDPROC(cpu_cm7_proc_fin)
 
-	.section ".init.text", #alloc, #execinstr
+	.section ".init.text", "ax"
 
 __v7m_cm7_setup:
 	mov	r8, #(V7M_SCB_CCR_DC | V7M_SCB_CCR_IC| V7M_SCB_CCR_BP)
@@ -177,7 +177,7 @@ ENDPROC(__v7m_setup)
 	string cpu_elf_name "v7m"
 	string cpu_v7m_name "ARMv7-M"
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 .macro __v7m_proc name, initfunc, cache_fns = nop_cache_fns, hwcaps = 0,  proc_fns = v7m_processor_functions
 	.long	0			/* proc_info_list.__cpu_mm_mmu_flags */
diff --git a/arch/arm/mm/proc-xsc3.S b/arch/arm/mm/proc-xsc3.S
index 1ac0fbbe9f12..42eaecc43cfe 100644
--- a/arch/arm/mm/proc-xsc3.S
+++ b/arch/arm/mm/proc-xsc3.S
@@ -496,7 +496,7 @@ xsc3_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 .macro xsc3_proc_info name:req, cpu_val:req, cpu_mask:req
 	.type	__\name\()_proc_info,#object
diff --git a/arch/arm/mm/proc-xscale.S b/arch/arm/mm/proc-xscale.S
index bdb2b7749b03..18ac5a1f8922 100644
--- a/arch/arm/mm/proc-xscale.S
+++ b/arch/arm/mm/proc-xscale.S
@@ -610,7 +610,7 @@ xscale_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 .macro xscale_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cache
 	.type	__\name\()_proc_info,#object
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030174429.248697-1-ndesaulniers%40google.com.
