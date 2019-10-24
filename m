Return-Path: <clang-built-linux+bncBC2ORX645YPRBMOWZDWQKGQE3EU67EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D72E3FA7
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:52:34 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id v51sf90735otb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:52:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957553; cv=pass;
        d=google.com; s=arc-20160816;
        b=blNYeDGdCZBDaAlKQli3XkfLqH5OBV8pyZFJp0hJ8VmFm3iAjeIsRN7Xag/MHH7HIh
         Ax8y319vKhIcnj8sGMj5lXrOvJTmO/OerLX4oU7/4SpCcgxj5X+3AvHGBNPGpAMY3bqx
         4DZtwXH/HaKyh2Ba48P0MKFWRWwtM9v4uICqM931Uv7K7QF8D7hav2+PwKvJtfJ9jQ+n
         do+SovCjcH7kU7G/26gTeKCkaqrmXRndQ7zd5F78tUG6ZRcotM+uinZQub1Odzxy2Mo1
         i2CQ4LNYMoozMi9O4z3LL4SowcD82k+NZ011Fdv2dUnS4Lr68IXSHmU+Q+Gy3KfmNays
         uTnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=8idEc3ULTdpsDgUJddWuW3Fx2JmFlxchE3mtNWgzKpg=;
        b=KMwwKTrIJWbx5lRvvyCbK94RUOgK5/iBR0q3eXwduz5hKFGK3lDptbXJWEDV3ChAQ3
         q9LmP+9bXMTIWzGy5JVniBCY2C7Q+D5iI5nNU7LBOyhyQ4LfSpSINH0f/mtKbVzXKDHu
         x2uImvh6gs31JVD2zuv8OJ/21gwefoGQM+Rcs7Pn4iSG++oo6/rncZ97AbWC2Nd7O3or
         GEnLzS7BFw4KFSREX1SNf6utrBmfIVSwe5AtrJPWsthRZDCCqsoWJRhyBE9LePMMbZad
         +l/gfap06qwFPiGqrJsSQhYINQ4xoz65uR4NJm11p8XcRRl5s9eqFtxjTl1dV/5Q2tgx
         PpWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sf2++rx6;
       spf=pass (google.com: domain of 3lyuyxqwkaeiweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3LyuyXQwKAEIweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8idEc3ULTdpsDgUJddWuW3Fx2JmFlxchE3mtNWgzKpg=;
        b=fX44Fifnp1NeNiuYVCvqJ3kHyEe+aDzfu4JUkJwxcgzLdz1PRYlNJ+eXkLYo2Gk5A1
         9JQ+OqylbvOaYQ5W4rUFl+Q1VGLe1BNC/vd1P1Y8KND/aHAMB3wqpMBOKuwTj21zYDNH
         yiijArE/VeP42xE7rbnjy7YFW9AcoNwO99yinSP2yXmabXXorOwv3/4wG8SfNNgXQ8LT
         VaVWZxTBKL+eQQ+xayKuB9Kh4WPMtEZN6J8Gmy2TzPP3/6VkP1nHuVcgIKLLz8Jfid3s
         wSioqNf+G7gXiPmo5tRrc3TSSeprax6qkMsgcjkQX1WEuPlX0qPRDHnDomDjYSjkOOyh
         VCZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8idEc3ULTdpsDgUJddWuW3Fx2JmFlxchE3mtNWgzKpg=;
        b=LRnT5z73bjrBmgLfz/Nbq6S09MAnTivZ1kzbq3UIsGNhXUcQBRmYjl8zvnNWrpWPg3
         QdmfBnncwIoFGxTmIKe6Tdah0CEH9NVR01OaDw6L96YgtE0gHacM70Xa/cwVrkWb+dCh
         +flWVI5ppWBYuy9js5LO2xQgqRZwq0bv/kSmj8iF+8ncaH4TVjd9j8DP9iFjGR0pfNha
         svJNMIqBHj52hwcFXkdAUI0vWG8Gn63NaNZriOgJ4hycAaBXScsWT1rrQ90XaRzuDMyJ
         DeLzTkKopiKL38TiZS1wK1B6vmQYRheZr361vaQPRoxK5T0imPcvnebd7Nf1Jp2ZKBYo
         h2wA==
X-Gm-Message-State: APjAAAUiWrFrcIGa3T3i+1SiNRypSOEjRmy6Ndn1iO7uMGGvJ395flYE
	1vpjJj7wpn3JUUwiexzfLz8=
X-Google-Smtp-Source: APXvYqzXZ7+oATHurpFg2rDuZmzCEoy1zJLdY2Eo6o1QLx+NNuMkmpVIFCaBvgBchTboFNv88bblOw==
X-Received: by 2002:a9d:6184:: with SMTP id g4mr250944otk.164.1571957553804;
        Thu, 24 Oct 2019 15:52:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2101:: with SMTP id 1ls2473385oiz.9.gmail; Thu, 24 Oct
 2019 15:52:33 -0700 (PDT)
X-Received: by 2002:aca:180e:: with SMTP id h14mr426876oih.142.1571957552915;
        Thu, 24 Oct 2019 15:52:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957552; cv=none;
        d=google.com; s=arc-20160816;
        b=xTbN+I/HyCLPcs76G6DzHxqsQ3w+tEWILleU1eCARhMfEKPZ/RuCB8+eOu4hqqfpnA
         Tc3Rhe93fMdpp6vh0xKsiXa6PsBxwmMSV/zpvxnWsBz1OjdiTmNN6TMQQKCnznymoosX
         SdP/mWM9r6SYjsEwzwnECmg8F7CR2wr53YMY4Fa7XZUtvCraPbJ5k6TYttfDoRyfX9J+
         mFXVjIGN2HmFd39VAh3S0Gm0V0GmgORJQR7je1PWqfeAaFwvgEJphy81y1N/DijU29Qg
         ELbNzo1K13tSsmkiUlyZqsMY0FkVS+1BZv/adb8N7RY+93AsbeTJwKxKNIYvtPWI1LyM
         87kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=K9E/B478ig/3FT/HPhGFdlo0v28kyi4gF0t5BJVte+4=;
        b=SC8itfI0eLRfAy+R/uejsB9LeolXnkjFa8OLXNMC1zRffibyRTiefqnXUbbrf4fGvW
         X0fodxP1B5gMiupSUc0H+SzQWyh3d9MYiUk6ah74Bu+vd44u7aVMu4u6un9xwxC1q8gv
         R4ebPuO5JPDZCU1kX2DKLYkFPFLDh/39IhkSfnUKIREqwJYrgFg9qNxmyKr4RWmT1m2S
         oiKIJe93l76lunmrCR2Zsm370Iwp+hLejXHhxs+Cby8DthrNm2ZtFUAOjXrLnuws4FsU
         U1S/SK0xe1K4M75EI4B78B2aEOCkT/0tbVbYPxmG3wZ4co4TL+NdVYjiZomv6Bdx8y4w
         X9LQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sf2++rx6;
       spf=pass (google.com: domain of 3lyuyxqwkaeiweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3LyuyXQwKAEIweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id m23si7073oic.1.2019.10.24.15.52.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:52:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lyuyxqwkaeiweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id o9so179988plk.13
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:52:32 -0700 (PDT)
X-Received: by 2002:a63:1f4e:: with SMTP id q14mr536510pgm.144.1571957551921;
 Thu, 24 Oct 2019 15:52:31 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:30 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 15/17] arm64: kprobes: fix kprobes without CONFIG_KRETPROBES
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Sf2++rx6;       spf=pass
 (google.com: domain of 3lyuyxqwkaeiweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3LyuyXQwKAEIweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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

This allows CONFIG_KRETPROBES to be disabled without disabling
kprobes entirely.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/probes/kprobes.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index c4452827419b..98230ae979ca 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -551,6 +551,7 @@ void __kprobes __used *trampoline_probe_handler(struct pt_regs *regs)
 	return (void *)orig_ret_address;
 }
 
+#ifdef CONFIG_KRETPROBES
 void __kprobes arch_prepare_kretprobe(struct kretprobe_instance *ri,
 				      struct pt_regs *regs)
 {
@@ -564,6 +565,7 @@ int __kprobes arch_trampoline_kprobe(struct kprobe *p)
 {
 	return 0;
 }
+#endif
 
 int __init arch_init_kprobes(void)
 {
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-16-samitolvanen%40google.com.
