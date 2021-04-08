Return-Path: <clang-built-linux+bncBC2ORX645YPRB3MWXWBQMGQEFVH5TQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id E82D7358C33
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:29:02 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id k198sf576561vke.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:29:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906542; cv=pass;
        d=google.com; s=arc-20160816;
        b=rOSrvkbbYX58eFU3p9S+/zLQfeW1hcOmTQp4vA5ndtu5TRsZsG8vhFbOFxnaP+awqf
         nn3T05m4D4ImBNnxQuDhuMM1WS8rOb4QqmlVMiskSaYYZflqozU0Vo5mSQr96ibftdne
         KOx4oBuSdOx2JeHsR4V1dLl47PCRhacwvqj4soFX15qncvvUf0pwmDTSrUbLl1a7HzV+
         aIXXeoclonI/2P3zZnbHk/binf2S6afjTBM/wW7mpFr17jYwu/+lt0k1A8SiZhboEG3l
         VFQNl+B5HGmhzWlXH7aZnOyFBxQaHFJaXz8oTpfj2Xg3PkkbM9BSSRLb/g7+V3xddO80
         Ibhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=aPjp66K2QUbhFaSm+Ax15I1UcobgsW1IH06RW7qn9jo=;
        b=tNtUw7jYo/X4fmoninUcd+M5RZiGmABwuBj/uXN8iL7BGqvDPAs2WGZrvBSOBc5Fc4
         Upfvu1jnW8pjh2FPhgl5ofHFSgK8jEMH0rGgpgesfIFgsb4ROggMTYZcaSAPcqLiCTl8
         38+lx9tKRZTEVf5fhmLF4WxSnGmSoI5w5+tcex3aoDIvnhg0LUL3rBx7dvOltXfXg4ED
         VdV/RjWePjgSNEdBjC1F7tZCPNs+ry77T19uizlGJFgbbeTgsGQpVWCE0PcMBN6FhYvT
         Cvbz/Ztyn16mnHd+oCkfheGsn7PIZTS/FKK6f6kcT2qz1V76M3cSLECYl9aMyu9CeFnh
         wB0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="b/XnAFSz";
       spf=pass (google.com: domain of 3betvyawkamk7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3bEtvYAwKAMk7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aPjp66K2QUbhFaSm+Ax15I1UcobgsW1IH06RW7qn9jo=;
        b=me2Ma+L63ocj/52Lch7opGMmACrOKBm5sUJZIZo+HWBaAYJaFnAepLHIsNO12PeVwb
         874e+0DB/sOOZ1gQdhu8OZR5LYuZEeYoBZgowjEDWendPOYyzJG6MttlZQ1DQhGnvAG5
         PlCSpjfcvUEpuPP/JqyjJkjPbjBc5WEg0pSLGl0+y3SlDzswnHFAVl6PpBxoHLoSefHe
         n5X7Ilo+0WqdAa24vDmuYSweV8jV3bk9/+WafJdiN7TkAPnVCFC6Zybs+jYdSf8HXy0M
         MerGs4DiFQ/KpNDmDj+IN/yPVEQZ717fl1tskRTwi2GOGxnzxhe+jLfAZxMvYxgCTjSc
         swjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aPjp66K2QUbhFaSm+Ax15I1UcobgsW1IH06RW7qn9jo=;
        b=BVfgLgStyuiOB69hujuJBV136UbaclLSjd5/pXS2JugMfd9bKcENzuuYfKY6uUdt3L
         hRXWoTCYi3tgf8i07r0Rmn3hX839cTaJIXS6sO41Ygkqj9i/h3WSMqqc0uWpE77043kL
         zlw9T7kASS1N/0W2M0RN3J2EiH9RZfVgZ64JGzrSw6sFrlOAe6JhZSjMi5ZUgpTzMb39
         B6WK9yKuM3yHpxImb6P/7oxswmz2Fl7L0zeiUUf9b78PHUp7y1LzIrkfvxV9oJjbOLDm
         4K0B846/gvT3Zdwk4+6//wGXRyjdvsY5asqlkL029kmnXZW02beElCI/8NnyoYiABnUL
         Jl5w==
X-Gm-Message-State: AOAM5313adjIg0IedxqBN/qE3Xy9WitjmW58ZMXKQr5w7d2rdQEV5Mvo
	UzmEhprLyGqSFmxp2XRnd98=
X-Google-Smtp-Source: ABdhPJxtP1C3sxEZa5wfmcCnxzC1zCUSdkkVrhB6nkaXqdc2mDWewsMF4gB/jF0oUd83zqA9+NBWyw==
X-Received: by 2002:a67:4c6:: with SMTP id 189mr7939516vse.0.1617906541965;
        Thu, 08 Apr 2021 11:29:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:31c4:: with SMTP id x187ls438562vkx.9.gmail; Thu, 08 Apr
 2021 11:29:01 -0700 (PDT)
X-Received: by 2002:a1f:9695:: with SMTP id y143mr7711401vkd.7.1617906541367;
        Thu, 08 Apr 2021 11:29:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906541; cv=none;
        d=google.com; s=arc-20160816;
        b=neYPum8q/BnVHGimGCYRc3YV2ArKr5p3EtfuGCKTOAwFuY2RGLnjjugOc/NUEt/7kj
         +p5EbUDItQ0G8edUcXFedJPzxfxwOA8ZjzGMtt/rlinSZsAw0q3PK1qsRM58VlT4D4aJ
         8D7WBSi+0beMpk4Ae6QnaCjlwa5VvClF+ds7OSM0FuIlRSfJc1ObcJYbvNbprza8fFjA
         KYQ3yCPFXRsEXNxgOuXumGaY64FHY8AfsGen3sOnxVk3AuhP2Z7bY+Ufr6al9MwdFYJQ
         V1GlgT8pz5DIrX98NQV04+5mvIerOps6J85mpyCAWPdGJH2XdjAzghvCj+XtNHpLJEoF
         ElGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=T2ovzaB0NMgTSr/OQHoRsOuIMdugM8hNdn5wpYAlfF8=;
        b=SAkiTzlJGWFaPdU6upD0WohhAARtMfEzTYIDoXwlvReFyl6PVfU+umKYO7rUY6/EJB
         9Q23LYXe29O3ophIv0bzuaXTAMWrTm6q0gqWKbJ2UEBf4KvGpox5WIqbmdGp5mbiVHIs
         q/xup7XqRy6DSQ+zCFQL8h1haqfrZ0rRAzDW+cEAVZU/BDxLOkj1hLoUv0ueeTb0H2jn
         rLq54Td6KYAqCWXiAa0QxrQJBxER/1+CSFXCmS/b8Vsn4/4+Kl6u0O9OzfXLvJ39p+aZ
         enmp0xJKt14v0qZBruPnbSMt8AJwMaE/AMQ+s3feWVgIlU5MgYT7aJSiv13/3MxI1Xk7
         cVLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="b/XnAFSz";
       spf=pass (google.com: domain of 3betvyawkamk7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3bEtvYAwKAMk7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id u142si6320vkb.3.2021.04.08.11.29.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:29:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3betvyawkamk7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id 10so2816765ybu.18
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:29:01 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a25:fc05:: with SMTP id
 v5mr2410558ybd.192.1617906540963; Thu, 08 Apr 2021 11:29:00 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:33 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 08/18] bpf: disable CFI in dispatcher functions
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="b/XnAFSz";       spf=pass
 (google.com: domain of 3betvyawkamk7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3bEtvYAwKAMk7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
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

BPF dispatcher functions are patched at runtime to perform direct
instead of indirect calls. Disable CFI for the dispatcher functions to
avoid conflicts.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---
 include/linux/bpf.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/bpf.h b/include/linux/bpf.h
index 3625f019767d..2f46f98479e1 100644
--- a/include/linux/bpf.h
+++ b/include/linux/bpf.h
@@ -650,7 +650,7 @@ struct bpf_dispatcher {
 	struct bpf_ksym ksym;
 };
 
-static __always_inline unsigned int bpf_dispatcher_nop_func(
+static __always_inline __nocfi unsigned int bpf_dispatcher_nop_func(
 	const void *ctx,
 	const struct bpf_insn *insnsi,
 	unsigned int (*bpf_func)(const void *,
@@ -678,7 +678,7 @@ void bpf_trampoline_put(struct bpf_trampoline *tr);
 }
 
 #define DEFINE_BPF_DISPATCHER(name)					\
-	noinline unsigned int bpf_dispatcher_##name##_func(		\
+	noinline __nocfi unsigned int bpf_dispatcher_##name##_func(	\
 		const void *ctx,					\
 		const struct bpf_insn *insnsi,				\
 		unsigned int (*bpf_func)(const void *,			\
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-9-samitolvanen%40google.com.
