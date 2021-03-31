Return-Path: <clang-built-linux+bncBC2ORX645YPRBVGSSOBQMGQECKRAECI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0D4350922
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:49 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id o1sf2508598iou.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226068; cv=pass;
        d=google.com; s=arc-20160816;
        b=FyFeMEl/VQzEz6YHBPKLiH5Mpja5xn4vVZHe4aIUrlN94tkSHCJx4+NcD9DA7X/a+a
         LlbiInRxD5WbKeksEIIJT6JoU4iml2Nf3KAODGIBEbYReaeyowVWMoiRoy5IvJFb1juN
         jBlBQ1HRQ9wCBWzE0Y9hdZSFP1JbLuptLxD2VzrTc3rKNFKb1jYgpN9oqmr/zz0Iqg1H
         AwWW6Tpl/ri3uCxfgnDgb17vxS7GvibNJ6dVGnPdHtvHvLCXdgU628YSEkP2O8nHsHE2
         382zgGEP3VV+LU5tECyaAq5X+22AapCXUSSYlDR6Dj5XN+/phXImNSueRHxFXrq/GSD/
         Okrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=4fZk7v/FIJ5EWVVAu3n5ILUCwip6TEyssiCHsBOnN/I=;
        b=mNKM+ghiKG/6QfHBaNDTk1kn7hjYVh88PlRBt9SueGxTuGtaNlhtx3a+e9JRp1OyvE
         t2zJrCPGey/FCwOAuoLiFwwZMSP1eW+nYbTRPE78uVJvEZ76qg/39Ikk3sXmu/sG2xZU
         y48hJNCTRJDHC1jvy7ctE9pFVjASFG8QmvBEOemIS9OiSw+iiUhhRWfkdrEbRgGqmrNk
         GAd5mTZm3VlPnJNl9mmGjSmtrjEy6kP86gC9iPMZEjudhvnSt62ZypJQfaQc8uNM7MIO
         TJ9I/7LprZ49VGnIXmCwAbBQ7xb8ZSvuNFwkTrGCm5Mz07sYUi6G8esAbi+mHCqv2YUt
         bu5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OI2BXN7K;
       spf=pass (google.com: domain of 3u-lkyawkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3U-lkYAwKAMI0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4fZk7v/FIJ5EWVVAu3n5ILUCwip6TEyssiCHsBOnN/I=;
        b=HJBbwbwurGtgE9gdj2W2Me0xJhyccm2gHWdNLkogVZ27JbAiiRVpKEZxB24cBCOo5I
         43PSGxdqa3Muo6n/MlAM/4tk+WfWQBjVj4WcLpWz0BXOsLUG1FX+VWLqYCOjM9nO8e2f
         no1IUOt4aPzQ0ZWqfnt3cb9fVNnJdh6990fbRBO6PXbpmxYMsMlixF+QHkq2lIhUHH95
         +R/XVoZ/6JiBBy2pcHzl7pJipbwV/BFf4jSR9Af4N1zGq3OagdC644uTNcie3KB5QeyR
         fjbF7HHi+OThSt7HPb7JxU82G0AaNb++JU2JkE+FKjbOkOnqnPygVauRaANB5Trvnggp
         vmjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4fZk7v/FIJ5EWVVAu3n5ILUCwip6TEyssiCHsBOnN/I=;
        b=njLu1Zae9WJRjM/N/biz9Cy9lWhYwvy1cWmZiWkhNru4rfQtk0Xu39783hyx2gGkjO
         wMig/lblNsm3arW1vCMBCkhVEqE9DED9uiUI+tuU88TwvY6mltu0HpJhq/N3jJF2oxBE
         5JwcQW5EltpCRfz4/0WyffqBexH9Ux87arQlaSkXMRtdkuUZFnd8MwXTJF3WuAoYyK0b
         h7MrbLg0d1sBAOXlpZ5ce09z9T37umK4r31brd2bj7nMTVd3HTorZt7Lf140CgXvIznS
         +GVV7kGLo8hInWSY7cgMWzIIWm8QP81QWBZDqxtKns1AhIVisg2vfe23UFCrzpcQBe4W
         K8+Q==
X-Gm-Message-State: AOAM531gAvL1rHO9DttaR8s5NpMjKJwxCoIKF7vaaLIe4m8UiFsy7SMw
	JM5KB1zpaPDMpQvTwnef2eM=
X-Google-Smtp-Source: ABdhPJzrhwX71mSNs8PSDA8s8JmA08K8O7nDmBXtFUUZ14CqE6kEgdfuIIrjwcMvYFFzQTCVGnwZ+Q==
X-Received: by 2002:a02:93e9:: with SMTP id z96mr4977873jah.73.1617226068139;
        Wed, 31 Mar 2021 14:27:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1d82:: with SMTP id h2ls779020ila.9.gmail; Wed, 31
 Mar 2021 14:27:47 -0700 (PDT)
X-Received: by 2002:a92:6a0b:: with SMTP id f11mr3980706ilc.211.1617226067787;
        Wed, 31 Mar 2021 14:27:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226067; cv=none;
        d=google.com; s=arc-20160816;
        b=yJhci5RyodGesjqmNeKvIYd2Y3xGAzJangTgwlnxAVqPTX54uBu2XDaAgfD3Z8qpz7
         eUk44E88D/AQWt2sy4GEO8zPMtk53q2sEl02W0b2FNeHcG1YP8gaYta4164x1/YU8eMo
         BoBXbc0CE/IGHOQwxdVx1Ayv6QaB8mSg2TMa7X3lL7QHoeuTERGcFUoVbUUrrsqED6Hw
         rUfNG5+rkuFQywFOtUZBhFqopTGNrPeFb0non1jn7nDPxaB7Z/pnvbjdpJLT01jvsT/T
         P5OXdq1p9toNcrkVBRLFZ9m1cFoj1cusk4hHO/U9XTcLj1Wc+ur6R3NJwlpJIIYKpsl9
         7seg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=RWJ9aQhTl20nw/R5RXPJl7NDj1C/UnL5LrldsenTslw=;
        b=w5Vy0QYOgAklsXWIV++1pXPoD6Bk7r/Ta/txOLHZ0Jq/5X6ojrOURPyh1CQFqvhxx8
         l0ZE+eRRRALGqu/fM1fycInzYMrFVyMSvPJjd+/uzRU8EyAVTLOCK8H+3FbhUhAfSffm
         IILKgJjc2NWPAF524vKTdLqpuy/VDKE6Qo6D9/egf+ZWudvxFqbuTJPoQQsmQ52v4dSS
         /QLhDEdqb32A4oeDlVrEJECnOlADV2ZWjgi5lGY0LlFjpTmWsbVR73KROkcSN/KAVp9y
         SiGnZhoubv9+p45UQrafQMp2ilq2SeSkOwAYA1mZ6F3SdvGnLTatNCcgAsGBpSpuWe9f
         HISA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OI2BXN7K;
       spf=pass (google.com: domain of 3u-lkyawkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3U-lkYAwKAMI0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id l2si279067iol.0.2021.03.31.14.27.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3u-lkyawkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id t24so2380677qkg.3
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:47 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a0c:b410:: with SMTP id
 u16mr5255799qve.8.1617226067444; Wed, 31 Mar 2021 14:27:47 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:16 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 12/17] arm64: implement function_nocfi
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OI2BXN7K;       spf=pass
 (google.com: domain of 3u-lkyawkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3U-lkYAwKAMI0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
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
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/include/asm/memory.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 0aabc3be9a75..b55410afd3d1 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -321,6 +321,21 @@ static inline void *phys_to_virt(phys_addr_t x)
 #define virt_to_pfn(x)		__phys_to_pfn(__virt_to_phys((unsigned long)(x)))
 #define sym_to_pfn(x)		__phys_to_pfn(__pa_symbol(x))
 
+#ifdef CONFIG_CFI_CLANG
+/*
+ * With CONFIG_CFI_CLANG, the compiler replaces function address
+ * references with the address of the function's CFI jump table
+ * entry. The function_nocfi macro always returns the address of the
+ * actual function instead.
+ */
+#define function_nocfi(x) ({						\
+	void *addr;							\
+	asm("adrp %0, " __stringify(x) "\n\t"				\
+	    "add  %0, %0, :lo12:" __stringify(x) : "=r" (addr));	\
+	addr;								\
+})
+#endif
+
 /*
  *  virt_to_page(x)	convert a _valid_ virtual address to struct page *
  *  virt_addr_valid(x)	indicates whether a virtual address is valid
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-13-samitolvanen%40google.com.
