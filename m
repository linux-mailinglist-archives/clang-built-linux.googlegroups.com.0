Return-Path: <clang-built-linux+bncBC2ORX645YPRBHFQTGBQMGQENZ7ZX3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF683523AB
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:45 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id g12sf5037310ion.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319964; cv=pass;
        d=google.com; s=arc-20160816;
        b=gbpEubYp2U3GL5yExjtgnjAPdB9KmjDqmlwa4dFh7UtNlXJUvs1HmmJ2U6iiLGoftZ
         lVN4WXwPEwKYJG2JcalNl1EmY8HAHrJLfy1pgjTft0uFlrwrxzQm1KUpD8Uw1mLNyrJA
         qbFwM/EzUFeRN4B6vA5gxGxSz2U+bZuh3+YNR1YeNsrDldsWV3V5OQAM9eimBxXlFLO6
         L3Puk1C+9hX1lai0MZ1XmUGTSIHjy1kHORy5OdWHu0TgggewZsMsH/LKRG/ZN7dvo2b8
         gIvHfg+EaI1+ENRtMzm39QtuabTpqXRNJ0oX6PghhVsqPJ3blmxSnK206Ft6s2E5hwRj
         z+ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=bxWcmXEV/CcJ9dCr17cHHtAZhr5kl2gk1NmxUHourTA=;
        b=DU7mnuA8wrBa9a5sL0HIIKyJVDpbpHmzRDUVEurVZ7NCRNzRZPvCAkeUdSDyiY46vP
         AT2k5jfY0/VDR/QUgQ35fUkIwCkHubhpvDo4MrCHBiEhviaWgXbxYdtIJSiwJnSudAe0
         +vRcny3nK+WIy0FqXNI7j3vFL6BbxMbyMLrFPHHcduQL8Khe4veeCF/O5QOGBlPNiACd
         DD10IiG0bL7aIn/WDh/DlxqRDMIcSu0DYcnbE1NHa+AA2RFwS3v5FZUvRJkUaB1Rq+LA
         jYIxjfz1MElsPlNYd08/AqpKVqVKV1foWkuLSlEJdzg5Z05bn+7rw4kssFaDvtXtF0jL
         NEPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PRz3MFDu;
       spf=pass (google.com: domain of 3g1hmyawkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3G1hmYAwKAG4eMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bxWcmXEV/CcJ9dCr17cHHtAZhr5kl2gk1NmxUHourTA=;
        b=ZQF3zhU8zdqCx5Bj1Ue3WEVhniMLAYq1HB/MSzk6e/XnXpW+GqHHpzyO6jy4OKIb4+
         4M3RRrbZRzZ65yWmZxuUY1Ptpqm0xCYAEtmAVJdKfFEfRJRZRgtooGuwSDmBBrvgCwu4
         esB6qATFa3cPqnG/TZ5Ly6vGbs90SdanYqK86vZUkl9eJv1/YiQemyoXxOg8N+FynFqD
         FOQ+7ho7EKXTUPI5jxiNIMx4SMxyoc2e8BxQnsaNf9TJx/7fjh8VphI0vbFGxRXoBSMF
         cjIkiC2oC2I4EIb0e8KmfBAjnxwVSfzFT4feuPo3zM9Jhma1GJvsH13Nj+faol+PRpkM
         ewkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bxWcmXEV/CcJ9dCr17cHHtAZhr5kl2gk1NmxUHourTA=;
        b=KrWTS/mAlGWyoRaZVlOsHEsqSx6I4l+5GArFLyFT8d3lEXCwKDAqUTuyMQKQF+79yv
         AjEALGhjZGv+fgQu9nfdOCO7W1MvjC5cl9qDpEAHHMYvqgZcxTUPm7Yc2mN9QycJwExt
         NI+wkIDd1l47XCs/vpOPYScOLVsT6iBjvaNTPWZbY00CyKi4pXuoxkAQfSyybYKBQwvV
         NbSyBnRXHRnWuFVlOtaI7cpKaO/fWknSt26aYFH8T4qzneKaB0AAz3IWFz+Q4K6rygG2
         NkHuSQYMjOz5mAIBlXb1PLaexUxRm5FG7uxIQznAbv2YlvVHX8IcTK2o9AJeoLVt/FOO
         gCvA==
X-Gm-Message-State: AOAM532AcdXjYFTFXWtIqJM6iWScXhIF59ipY4nwT6yVXDUnUslhrLps
	7hCybaFoaOeer8UK8hW+Ork=
X-Google-Smtp-Source: ABdhPJxL5GvnE3wtZAQWBTv69HUERhAoDmkrwYbgd8tT036XfLNgUAoLcgIrfiQ5xaEnQMwf/iwHKg==
X-Received: by 2002:a02:7f0e:: with SMTP id r14mr10083601jac.112.1617319964768;
        Thu, 01 Apr 2021 16:32:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9691:: with SMTP id m17ls1194125ion.2.gmail; Thu, 01 Apr
 2021 16:32:44 -0700 (PDT)
X-Received: by 2002:a6b:bf07:: with SMTP id p7mr8619208iof.15.1617319964410;
        Thu, 01 Apr 2021 16:32:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319964; cv=none;
        d=google.com; s=arc-20160816;
        b=QRa6jo9nMtfttLkylhsQ5DCF9lK+Fi1BQHytQ3V3f1kcUWhG0A3Jb7v9EWC8vifs4B
         05/ZfPp6oFsiOvB2ZhxTogfimi83+MwPZug2bixl/H0LjxYfcGK8bX//qe9yV/RYMqzO
         MO6mHpKU7Jv9WGK/ZQwxszlPDqiRQN7UP2s5UjOijUjuqTllb4ZSWf6LLEEP1RtS3JB6
         kyhoFgQwDPd77cv4olLhGVt1wsRh4OL72AArubmSM4ijHUEF/upkMYhUdXJQsQMyt3Ug
         rL2fwaUWqhQhWgNgke20MNe6EBwVKdA7yOIzXNgaEc3dqbtua83B1XgbXi5WzvVwCh3p
         tvdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=US4jGgKY8G5DfLFeUodkpP35btrx7ts0CLHDF+n9ZqI=;
        b=F2cXNsz8CtsX4BpP491fDUjoQF/xlYeTXhE1V6rIwufcfsUMrBTvjfpvYOqZx3P2/m
         DdVusfsDiRG9USODpm0rpcjo0ULHaqi5ChDq7ZtfDs8VaNAJDU6a4ImqKuaJQrjczqtw
         uIR/fn9OL4BfZp0s3TXsWsp3z+m8QoXIWmj+2km8cF5yY89I5JrW1STmswUxHYbJtEdi
         y+UT1BoNMTUxXc+E6zIiSo7p7Jjqv/YyYdAXvblB5OW6z5mDDBru3uXcrfF2j1lOuuXP
         OjP7K3Mavdp8TQD5AD8mXV26RFinr6Vj0SVp7b5LWHeYOwmMwlx1T1k0ArMT4nKglVh0
         hbJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PRz3MFDu;
       spf=pass (google.com: domain of 3g1hmyawkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3G1hmYAwKAG4eMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id y4si589720iln.3.2021.04.01.16.32.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3g1hmyawkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id a19so7528151ybg.10
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:44 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a25:ba85:: with SMTP id
 s5mr15701230ybg.336.1617319963848; Thu, 01 Apr 2021 16:32:43 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:10 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 12/18] arm64: implement function_nocfi
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
 header.i=@google.com header.s=20161025 header.b=PRz3MFDu;       spf=pass
 (google.com: domain of 3g1hmyawkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3G1hmYAwKAG4eMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
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
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-13-samitolvanen%40google.com.
