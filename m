Return-Path: <clang-built-linux+bncBC2ORX645YPRBPHLSP6AKGQEBN6PEPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D671128C602
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:33:01 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id 139sf19227231ybe.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:33:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549180; cv=pass;
        d=google.com; s=arc-20160816;
        b=y6IwmqsNA8CCnJu32MahTU4+tnhkEfqEwor2JgDIhWHxgWcp/krZhL0Ba+d1C69DkK
         KB7H/OeMPCwHjXRl9hE/MzhJI4WQvIXfR5HpB4w/L3bgz+mLjlFNZ7PKkZWRQ+zQIeZj
         MNT84H0zRbnm+xTljMnuv1HCxFqFhU7QPOj3UeEJfp3i0mE/XM27ATFU1v6c4Nksk128
         G0Zhph2vADLeHdg05lbY2QVlVUw9TBBu6M5jLB5eVUXTNM3+lerUC8k+ShHEw/X4vO1+
         ZFGXf2azsZree2wiJ9MsuZkmqKDpyS8EMSO1ErkCrdss7sb2phIOGcWH6lppvk/KjEDo
         HIDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=nOFkSWxD/tCeB3Uwo+gwUsyrU7LXndL9ArwEGLVE1f8=;
        b=S0BRZLjoteFVbSJ/xMy2nmY6NdE9hogKWVfRRbiFuRrfwcNFMF5UV+hvTCB3/cDyNc
         fw9M/j8bMgXTO32PGutlpXb6luTykf9fn4RkeXHMp0CsZNH6dTbNaB8JTl8CSc5QezIu
         dSNBIJTCgLYdWEAXutgp8sb9n8f+y9O+mO5U72TSOsTkPJnNfvcLVJyRNMufhL5ExYab
         8/EIfQdd2qBmLKjtWaK66JbK8ZJv2Toxi51qyk8t4yWw/3fneUVxNagIhRvegGA86BCw
         ZEeBUBPMMjfeUKE5zFjlT48NcEKGOrYsyzk1j+Iybjb236h6K7ZNgrW9ol7MRBNiuZy1
         DeQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UStis3hb;
       spf=pass (google.com: domain of 3u_wexwwkalwucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3u_WEXwwKALwucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nOFkSWxD/tCeB3Uwo+gwUsyrU7LXndL9ArwEGLVE1f8=;
        b=Ee5jUOpcqSxW/UQ9xnofzDSJP5eI9OMa6Io9PxkJwVx6AH0t96jTGrQqdjNZZjYK+Z
         XnZkNJzAVtbWMq0YOX1sudrILfDHYSzPOMyKte6LlQ89bEszSmB64rQa4E0oRht2YKaW
         p4dJPahjAsjU4fro5PkMZCPwVZXUDIbSna7adBiyeYD4G2hNKEiQ/2oci3HnIKH4i2ch
         2CtJiA7U36BPijzN1PP9YIt++Gzauk8CG2OUgZsKpZY/0PeREFeDdmc+MCB8qJntv4KA
         XVwLnscm51f5/7ygPGZ1TcW9ZMVtiF67bPhHl+HjroBgtB562xUlWHavMCtG4VCuhV8M
         sD7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nOFkSWxD/tCeB3Uwo+gwUsyrU7LXndL9ArwEGLVE1f8=;
        b=ArfwRPCQwdmOtyeqbUKt3ir6yyBDY8O6iH9DjWeA9fM+JMcqlXHmK8GPQEYsotL7Ky
         3tzaQE5Jdwh+R51BvM8MneM7oXZJuh2iupWaf8FtHXWMeni8Ilfx6G9yQxhwKrN3rGD2
         sEGN9Xo1eM1XSCPM8iEN+/UzKwYFiLG2c/2p2oJubKYu5WF3FhleKCoiVkXQZMTImQDF
         637Y5rqnr+NQXTCRqy0NjTQbHUerq5SXBgQTu2V5XA3CqFyGIyOe5qDzylYuVdRl/kH0
         IBA/nIP2VJwp4yQxMjKafkYNLTbS+ypn9t+S2AzhG8IBbs4dn/j6nuOcV3BGc4J94ZlK
         09RA==
X-Gm-Message-State: AOAM532a4e07ghYzNido8aiEoY98zDOr4Qd15X+whcd9OysozsxDQtDc
	GUNrGnZ7Cp+B9mwY+sGeFVU=
X-Google-Smtp-Source: ABdhPJzK1KcAnXWb3ndqYS01+XZhEeqPo9WwUtudRvMqcPmeDPfA91+uirWA1j9DmnkGZ72UQ+lEHA==
X-Received: by 2002:a25:3415:: with SMTP id b21mr11082883yba.440.1602549180807;
        Mon, 12 Oct 2020 17:33:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6fd7:: with SMTP id k206ls2388006ybc.7.gmail; Mon, 12
 Oct 2020 17:33:00 -0700 (PDT)
X-Received: by 2002:a25:dd03:: with SMTP id u3mr36358302ybg.497.1602549180283;
        Mon, 12 Oct 2020 17:33:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549180; cv=none;
        d=google.com; s=arc-20160816;
        b=nh+I3FsxlcNLxvd9/dxaObgb6cUl1P+Mm+06JZmlN78vSXaQo2oW/73VmgmFuf3C4Y
         CnT6v+G8DM/FcxW+d3YWZwPuOk2rFLK+hZccTUAjHu9VYOTAP4Q3b3Rhjvv6X2pT/utG
         n8eWD4FScE2Gb3OLtr7NNhpGuWoKn7TlT33njA95fzjag0ETrg9XPTSiOCtU7qWVzGpk
         ONFMhisdE66vntQF2cwNVfLX4u9vdnSR/MPfg4JkfCC/LqZl1UwyqZNnNXWvnaqUYVzs
         RH4qKYXJDbVXMiYN6ZMQP3KMueHnRMLwlCpthmWO1MQoHulUEeRl3UboM1/BYzIgm9CL
         ppLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=s78GraQfKANUm9dTCmVzo29Dpzl6ui3oK0KuklmHT+M=;
        b=0kn64wSOe8CVDJNDxcdKsvJdFoVnrRJ5E+K1Q38DsWGVZv0Nl2WfTw/1k15vU9exBN
         0bh3jF39ZAWraG6agIDbBhqStXgGT1bWNj84FhvxYwLf/g2oKFJJzYLkyuwbB4dgRU9o
         kAVb22cgoubXw9uaHP36ocgLhkLukUg6FoVcWACuusV5zJid0dRldayAQFHNhtxENybs
         h9fpvrUDco+LsgxYE1T89MGcT8a+M5QaCSS2WroC/9qhM5kKUXpsZa4LKSPAPdxwAM/G
         glJvAg3q+19P9iaOWnkd8sez88U02XKkKl+TdT07Nxi9xEcbcCCakehKacWOekxhQmLg
         pc2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UStis3hb;
       spf=pass (google.com: domain of 3u_wexwwkalwucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3u_WEXwwKALwucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id s7si1508669ybk.3.2020.10.12.17.33.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:33:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3u_wexwwkalwucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id e7so13807978pfh.14
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:33:00 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:902:b40a:b029:d4:e1c7:db59 with
 SMTP id x10-20020a170902b40ab02900d4e1c7db59mr157311plr.85.1602549179447;
 Mon, 12 Oct 2020 17:32:59 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:32:02 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-25-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 24/25] x86, cpu: disable LTO for cpu.c
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UStis3hb;       spf=pass
 (google.com: domain of 3u_wexwwkalwucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3u_WEXwwKALwucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Clang incorrectly inlines functions with differing stack protector
attributes, which breaks __restore_processor_state() that relies on
stack protector being disabled. This change disables LTO for cpu.c
to work aroung the bug.

Link: https://bugs.llvm.org/show_bug.cgi?id=47479
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/power/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/x86/power/Makefile b/arch/x86/power/Makefile
index 6907b523e856..5f711a441623 100644
--- a/arch/x86/power/Makefile
+++ b/arch/x86/power/Makefile
@@ -5,5 +5,9 @@ OBJECT_FILES_NON_STANDARD_hibernate_asm_$(BITS).o := y
 # itself be stack-protected
 CFLAGS_cpu.o	:= -fno-stack-protector
 
+# Clang may incorrectly inline functions with stack protector enabled into
+# __restore_processor_state(): https://bugs.llvm.org/show_bug.cgi?id=47479
+CFLAGS_REMOVE_cpu.o := $(CC_FLAGS_LTO)
+
 obj-$(CONFIG_PM_SLEEP)		+= cpu.o
 obj-$(CONFIG_HIBERNATION)	+= hibernate_$(BITS).o hibernate_asm_$(BITS).o hibernate.o
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-25-samitolvanen%40google.com.
