Return-Path: <clang-built-linux+bncBC2ORX645YPRBYPL46BQMGQEETGAMXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E00C36296E
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:38:59 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id az20-20020a17090b0294b029014daeb09222sf13010580pjb.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:38:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605538; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZHnkr+UJ2RRwhd11JDh5jw0VyHFrHp7u3+d1ooX/7xQzvccns4uAC1wOg5XsqNYui/
         J9YyvIFO3pYJevwejvJAvo077+wH9Vd0EMYe12mvxICCUdX0pc7r7c7cAMr++dVsYDL/
         1ayPITCsb+YWXcpwDCQLqcYk/nZku8vRwEgz/Iev7r2T5h2jlQYlIthwGbZSZgqSpSsG
         0mGoD8cLAaB8byJPL4pfWuFaEysvL0g0EFeG5BFOxwR0Nyxs/zNZqAU8s3vRUVKEYzt5
         uFXyka++3Q4aJvDhaGKAWYGhxyRoYOGLBrUGpvHg2xJ629kBTwPMS5XSJeShh2J1n3T4
         Q5Fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=XVXecjK//tlgzdTEaM+HDM3tyeqAdpV7WUUqmoxsVrM=;
        b=QydAjRWDHrgAdXRmY8EvboKA2oM8KvRAsXfTZfTBWKEi3bP0opO4pS15BuYQ6dxqvV
         qmqUSHJL0lnWyrgW4aUi+deKe1pAPjkZ+WHNsHemgeIHH7SiZ/BdtbjXtCyg1N5tN5aW
         2IK541f1lvsYDKvvJUrOor7X9U9Th3XfJ1ihvgUWCnhbB4Ndpl9InVLUF/84Qbvx2TVn
         fCc0eAl3IAyjvfKw+sNiOhCp2f6Bx9+s4/DFnA5nqRfvPYbYlNboHea+4wBg0M0chzqE
         h8y8HETi/rn8u/Sydmwb7eLtPmSJ1Nh+/p1epQ8RTX0MVgwN/eW4nFjLB/jpM/q2p36v
         6ejQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Im3IocGw;
       spf=pass (google.com: domain of 34pv5yawkal0vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=34PV5YAwKAL0vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XVXecjK//tlgzdTEaM+HDM3tyeqAdpV7WUUqmoxsVrM=;
        b=gUjheX+8SsbI0eZ4KQBwhoMRVlHWkromxzZFSWdmtzJWjgGKa27O2/QXC0BnxWtbEB
         tNXj5dKhY6rtw/k75/53XLaVFfBDu35cx0UdQWqcE7MiTgG5EQMcVQIRuHZWylRv4GsB
         rBmgPJGxPNdi0XeH3wQsyFjBH/rCgDP1Wn4hs7oat9f1Q9aoBlvz4J52aC8AvMlYKmFo
         y5BMSK6NuTK+U5DMWT1ofXAKd1Ogmr+Li156n1f8KVEo3rH9GP8Qy+yoxhuHVoOqWHpX
         rtwUwCNh0MKOwCHQIklh3Csu9tEN3srMpr/izAJHxPOef7OWtRLq8RWoEFOt1EH9vUIr
         LWHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XVXecjK//tlgzdTEaM+HDM3tyeqAdpV7WUUqmoxsVrM=;
        b=pLDYvTQ367pYa2Sh/gzhqgUapjzi3T+B36fAmWciweDaeTMAAcvGwS+Kg2sifbIhcu
         p/YJpofT24mpw95qlOBFgN0iCIKynKob6LL+ncbvt6tO7orXVH81bzS5zLnto45ri8MU
         fi9EqyYu7vMqso4ThoEMqcZnoDgOsKALsKc5wrzdtEb6Oc6hETEYwpTUcgWXfv7V7XP3
         FJAASKMpbq6xKtzRbXrP3IoRTJ8JZAlL1fre9OzrO7gyWyZ8r6NzhdaXnCT5OV3a4TQi
         LMcmcDXVGy2eNvqrRSGOt3I0EgGjp91KBvjjPBS/afaN3yEIh/zGDNTwd6kYJyINP9EH
         jlPw==
X-Gm-Message-State: AOAM533zz4FLjiQf9rzR41xWXfMLUpY506e5nUztwvIwn6LQ58j1o28M
	r1RjL7sTJ5CHhzIuYP4GLiM=
X-Google-Smtp-Source: ABdhPJxtlefpYLCiFcfpKIDq/XhUrKmasqqGW/cklTh0nxYHexiANUkxbD4NBtk/yinKxoqJrst62Q==
X-Received: by 2002:a17:902:9a84:b029:ec:7fd5:193e with SMTP id w4-20020a1709029a84b02900ec7fd5193emr3377787plp.62.1618605537850;
        Fri, 16 Apr 2021 13:38:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:144:: with SMTP id 62ls5606794plb.11.gmail; Fri, 16
 Apr 2021 13:38:57 -0700 (PDT)
X-Received: by 2002:a17:90a:f2c7:: with SMTP id gt7mr12071438pjb.157.1618605537309;
        Fri, 16 Apr 2021 13:38:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605537; cv=none;
        d=google.com; s=arc-20160816;
        b=TR3vbS7zdvU2dnl7iwGR/gzfZHUAS/rmFKeoi4XPrKG7PubnJzDUotkQgWG/qUCZMx
         JJxTyo2Xro4F9ScykDvusZGx6KuKK+hx5eH8/o7MYkHggnwjU0OiVC0+ZvkkDxBoEW7L
         AWdRxFGLAq/QRlvm2aviOqYca3P8VroYjVKLYbwCZjhoHlSyNeHUPtk/sAkX3Z6MOMvf
         rVeeA70kXAeZ5qadtfSxi/ACh1kEeFk0UbJz/gLvy9RPHygIkIvvvxuGovPBU07/CDPw
         egeGRA8MjMf+LWphzpNRHMvq4n7Gnd/sgQfQUYeFemaKl1ln1vRArM7eSJTD+ilYVFfY
         ZKKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=aY+by2sfCpbHCEdjbOQBS7MTkTUc3k2rkTxgoQckLqo=;
        b=Jz5sKF8/LIn7fglsLNLsrD7k7CVrqq88+F2y9zOIrsQqPMQvh4346TBhNnqcbdu3p2
         ApU8J3V+PySrDunpbpPnOIkqU/1Z1LDY4p8+foNpMyMcBbW+SQ7g4EByK1k+gpTjFUyK
         Boap8HVLwCu64cgSDpTiV7yl4iO1UXeO9+p+I1wFf3BG5EN14owzJev/65uNR/+qSRIu
         Rsk0u/JpPWPk3oHi07INvZYmxXX+6fXUmwHLz4qyRsZ0P0H32D3JwiMvwhjwSyPO8yaP
         aUTJjzfHYCTVzD63nyh0IVb6NRZXHRMr4Zqef8hjHFe0if45F/p//9y4KDgrFfKMUvOe
         GDsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Im3IocGw;
       spf=pass (google.com: domain of 34pv5yawkal0vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=34PV5YAwKAL0vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id g23si736122pfu.3.2021.04.16.13.38.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:38:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 34pv5yawkal0vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id y14-20020a0cf14e0000b029019ff951fd16so3957546qvl.12
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:38:57 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:ad4:420a:: with SMTP id
 k10mr10548306qvp.50.1618605536511; Fri, 16 Apr 2021 13:38:56 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:34 -0700
In-Reply-To: <20210416203844.3803177-1-samitolvanen@google.com>
Message-Id: <20210416203844.3803177-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 05/15] x86: Implement function_nocfi
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Im3IocGw;       spf=pass
 (google.com: domain of 34pv5yawkal0vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=34PV5YAwKAL0vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, the compiler replaces function addresses in
instrumented C code with jump table addresses. This change implements
the function_nocfi() macro, which returns the actual function address
instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/include/asm/page.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/x86/include/asm/page.h b/arch/x86/include/asm/page.h
index 7555b48803a8..5499a05c44fc 100644
--- a/arch/x86/include/asm/page.h
+++ b/arch/x86/include/asm/page.h
@@ -71,6 +71,20 @@ static inline void copy_user_page(void *to, void *from, unsigned long vaddr,
 extern bool __virt_addr_valid(unsigned long kaddr);
 #define virt_addr_valid(kaddr)	__virt_addr_valid((unsigned long) (kaddr))
 
+#ifdef CONFIG_CFI_CLANG
+/*
+ * With CONFIG_CFI_CLANG, the compiler replaces function address
+ * references with the address of the function's CFI jump table
+ * entry. The function_nocfi macro always returns the address of the
+ * actual function instead.
+ */
+#define function_nocfi(x) ({						\
+	void *addr;							\
+	asm("leaq " __stringify(x) "(%%rip), %0\n\t" : "=r" (addr));	\
+	addr;								\
+})
+#endif
+
 #endif	/* __ASSEMBLY__ */
 
 #include <asm-generic/memory_model.h>
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-6-samitolvanen%40google.com.
