Return-Path: <clang-built-linux+bncBC2ORX645YPRBP636LWQKGQE4S4CCRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BB1ECAF9
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:16 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id l32sf11638619qtk.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646335; cv=pass;
        d=google.com; s=arc-20160816;
        b=Unyc00DYAaVHuJ6t2FnGgxVbJEcYlTeiU6Amr8PVHJzCkik/x+NOjwc7kJ89l4ULGe
         vazHLzU4PjO6MmGRCXmEFcZxr0duKwnuM6tY6coHWYmwy56Y3MdYQoWxTpwWg0n+9cp1
         eZycznZx3orud+fridTlbBGfmI+/rDpuCP0dv0LZiSw52P9cmMFDoBea7yXL76NXB/Ll
         dCr2RJq60Z1TVtzVoabeTblE5UYsuvHgVlyyUpZrcjMGt81Yx+lx4X3av6gDGq9ZUDP7
         XdDC2umSYYEk/RPs0BMyXTbmVnAe4Bhy/Ztd1D9bQBr1FmIse0g1/04VyIuanKonswyX
         Kncg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=vg10Z1iIZ32hcp6dfb86A1Mc1VfdRCszV7Wls9tXI+Y=;
        b=QFNbTiigQ2r9VAv15QehMeV96VlnDgp7pdTCub76YgptaKrt2W7RIeSGjKX8VsnymW
         /+qQ9PwsFwpJO78EAuZyD3ThxiuBb3PxErpqJtp/cbu12ccPeErlCKKdhjcdVmZ9idP6
         XU2S7GTBn44tyFZVyV84FTladd+PCo2dKEXat/upQeglrCTaCgpXuyfSZ2nX8v2nsZLo
         RUpE0u896iAoDklkgMJE4zCtrsUQz9BaNAiLTxKBTqPfmMJTBwbEcJsVpdVMIAb9AYnf
         9Q4i/JUGRl8l4TGN9KfC3YOTa8jguY+J/oSuy01D7uQqGnSuVoTWo5NCcGbxzNKHiMOM
         OvdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TUOCiu9g;
       spf=pass (google.com: domain of 3va28xqwkap4ygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3va28XQwKAP4ygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vg10Z1iIZ32hcp6dfb86A1Mc1VfdRCszV7Wls9tXI+Y=;
        b=ngQWE7uZwl4KRqDs7YyRonsXcryJAA36mBFYh5bD6Rd1dSzmtJyERGfTJvM8dzwlsO
         hUVl2KmEUC5s+CPD/x6MKXQorajbKtgS9P4sVdUNgXt+EXt2x7kLuKp/RkyN3+xs+56P
         3u01Ep4kaffrJMhTwf7ILAxSsd/HbNHQUitYSIUrCz3uSfj/Olj2vMuQCt8vWtu3nAaz
         XpnqsElOrd3Z7W/LnUm95qgclhI8B8HD7sPiXJvfKG06ShF2wqWV3AocqAPs2kXFyzLw
         a5XAODhCPsv4DGg4qTNCoy+gQTq+iB2W9NK06vCZNlOyXhEys0cacXSfuhjJxGTVckXL
         O6Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vg10Z1iIZ32hcp6dfb86A1Mc1VfdRCszV7Wls9tXI+Y=;
        b=Oa41CeYmkMKiUQKTwLVvlrFFxAkiG2zPKVl6+Qr0JC2M4Yop3xEjVsFA6pg2/RoE8U
         D9icD2MNh+CJE0wUG53KGMte1gDz3VqTPe5buvZgKeueJ4ML4ja4rVpq9uN89zcRd0DU
         6TvP251E1QPKUhHRhrz9DvsAjo2jvdMUsLtpD/NF4DY2Fk84/EKV1PvWwDunp0tsh8di
         p/R7XB54s3N8KAP8zfDXloouCK56LipTxpyx8tK+0kFIdOC1njYpte2L1q12Jf80b8k9
         tYc1D77cwkEzjTRYE0EtPkosVVS+rrd/5GY1QezShQe9MMvcKOf3ckdbSk/l1DuGP/1O
         WpDw==
X-Gm-Message-State: APjAAAXwjMmd4EsgYRAWyFoO4qKENYBtGkAx/fkxUWJh40/9MdTJTlFJ
	5Z5lpGZ+ROpxQjtzFo+nb+Y=
X-Google-Smtp-Source: APXvYqwLOO9pPxlZ3iPdzx8vU8lGQqXk/ylemFL2BlwCoDJsEYp+59JkBK6Ea5wQeXoNwTm6jQfT5w==
X-Received: by 2002:ac8:110d:: with SMTP id c13mr1751120qtj.249.1572646335254;
        Fri, 01 Nov 2019 15:12:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:29e6:: with SMTP id 35ls2238736qtt.3.gmail; Fri, 01 Nov
 2019 15:12:14 -0700 (PDT)
X-Received: by 2002:ac8:7646:: with SMTP id i6mr1760040qtr.251.1572646334934;
        Fri, 01 Nov 2019 15:12:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646334; cv=none;
        d=google.com; s=arc-20160816;
        b=qSWsoWmA+XHGeGp0YxWuVkJOdEaIHx+dojDgwdftyTK72KkyLeskdLy+Yj8ZEYu82n
         ZiWNRokWRke7/PcuZn1ypGLhZirDkxWYHcYqA2u8zQlXsg0qXtWNO/rEh6MjpzC/siF4
         vy5Vq1JmvfG/QJu5lGe1eEtB/0RAvhp0uez43cvGL63LioIO04h2jYrDeh9Wwjlq33m9
         UMNs9IT2ozhYdtRJUsFCmf5A7HXE2XAb2uIULi4kGYV3GtXE9Ss5M208HcMt2nD7Pny9
         96BX0CuBQ4OX3Nxd/6HLeN/EUnvirXtaF83EmVp4IPuGFC3CMNtdw89qmMrkjQD/56KP
         wM1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=bw/qAOzuJX7ixoBqz2PQ7jd7OYMX5ZXLMotdDh+Bihs=;
        b=0NXPJ5aRR+J8SAyESC5YI9p3H2vt/5RJu++Gut00leTSKDNeGR30Ue+WZbJvxTQRcx
         B1xo1tgu8ginL0a0K0nS91MqI2GhoiwWOM+txZq5521zfu/auAAWAGNAFDQ+FPKPW8++
         2WTcWR3HP8vD2rR2kmI5npGLQ5qjaPOxQVOJwwqYVOBc0PuWck+goeOmJzJ/xMh5/lCg
         jFVlLUwbazru4iRSzy6tiCNkeN9OgMFlSAOgXMgQD/dsr/h3kKit71L+peuKApk2Zm/Q
         N8IfoZ/ljiH2KwiqCfpQpY2B7VUpvyydlinsd4HXG7Gf6pXZ7970WYIfdQCqvJQTfXyj
         rYYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TUOCiu9g;
       spf=pass (google.com: domain of 3va28xqwkap4ygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3va28XQwKAP4ygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id w140si614025qka.6.2019.11.01.15.12.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3va28xqwkap4ygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id g186so8433578pfb.15
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:14 -0700 (PDT)
X-Received: by 2002:a63:5762:: with SMTP id h34mr16176849pgm.235.1572646333610;
 Fri, 01 Nov 2019 15:12:13 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:40 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 07/17] scs: add support for stack usage debugging
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TUOCiu9g;       spf=pass
 (google.com: domain of 3va28xqwkap4ygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3va28XQwKAP4ygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
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

Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks. When enabled,
also prints out the highest shadow stack usage per process.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index 7780fc4e29ac..67c43af627d1 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -167,6 +167,44 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static inline unsigned long scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = __scs_base(tsk);
+	unsigned long *end = scs_magic(tsk);
+	uintptr_t s = (uintptr_t)p;
+
+	while (p < end && *p)
+		p++;
+
+	return (uintptr_t)p - s;
+}
+
+static void scs_check_usage(struct task_struct *tsk)
+{
+	static DEFINE_SPINLOCK(lock);
+	static unsigned long highest;
+	unsigned long used = scs_used(tsk);
+
+	if (used <= highest)
+		return;
+
+	spin_lock(&lock);
+
+	if (used > highest) {
+		pr_info("%s: highest shadow stack usage %lu bytes\n",
+			__func__, used);
+		highest = used;
+	}
+
+	spin_unlock(&lock);
+}
+#else
+static inline void scs_check_usage(struct task_struct *tsk)
+{
+}
+#endif
+
 bool scs_corrupted(struct task_struct *tsk)
 {
 	return *scs_magic(tsk) != SCS_END_MAGIC;
@@ -181,6 +219,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	task_set_scs(tsk, NULL);
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-8-samitolvanen%40google.com.
