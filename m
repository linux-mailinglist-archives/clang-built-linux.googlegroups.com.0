Return-Path: <clang-built-linux+bncBC2ORX645YPRBT6SSOBQMGQEHENEG7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1EA35091F
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:45 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id b15sf2096062qvz.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226064; cv=pass;
        d=google.com; s=arc-20160816;
        b=04FiTZs009DMC18dDxlFDbhklymLojKr03NaaEnJEjLjcTnc5s2skU65mj4tVtzpae
         WqxakJoPaDTloYWkCs/rSknP41Eldp2pe0COkSSiyWmsH9x0WPMPj3movI+tald5d8d4
         viwt2vHU7KaMJr4ELIws4DXnrIANGK149H4MA60sHwBz3hmvtFhfeKCg/T+MPgAbMVaA
         owfQQLM0O7JV4Y4wVMjXGAdSOcJpzhL0/ceDnFM+8kKsScrfW4N8P2dtMqZ0exBBGLX5
         EknyWGdH7sieTl7RrN2+6ifBM7Tk2o0Ktj+1UrbC6nlxtnvUtDbQKpI8i4Hw9pLhgoZU
         jzdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/CymsWh5ELSsirsHZrwA16502ZmJE1sR53b76IEc/mQ=;
        b=Wpz809Zb/VSL/CNOq0Mp+M0xqI5cNNHvJ3sddW84GQwli9qgJxGCf92hvEjwgjAfh8
         qOnbZygwl8mTdMCcdhizgY+Kj6oz0M3iFgqXp2KpWW90zJC7OKRn5QvmRzaW7ZRzcJN8
         0FjJO12EM4uAx95dU/ss3YYQYqsk1XjHSVqjM1OBwtVg6l9ga4VxFD4Ldh0+tF/+mKVH
         DRS+fZaBN9TUIJs3vUFWQ+B8eZqZfsXEkBhVX87sRry2jqvmZG/LoPmeStdRwpH2c1VE
         8oF95kXo/StykS1S3MWWWhOrM7rKqSrJ80GGXQ3o73yFnSOxtPSsi5hb1T96KlyV+9X9
         KyWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=km1dlNMs;
       spf=pass (google.com: domain of 3t-lkyawkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3T-lkYAwKAL4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/CymsWh5ELSsirsHZrwA16502ZmJE1sR53b76IEc/mQ=;
        b=TE7xHVChqW+SppNiXoiFRDohuk4YtLUWwZxFAkMc43BZGzQROqFpu83dtVXd0GkM0d
         LR0q5IuN8UJ5YVwi/wBRADmwZUZlPpBiQqxkSz5wFUV1Jjm62k1H+ryals6XG4b8O7NB
         Ykd9XnXJ9bARTrfTcygTKEMiHPGwNFBr11M0L/P5sR3tSk5TXK9yRaBfhZc7j2YvXCWd
         lr9COcjeMTqWFWVNfvyF0Shu18gOl9j/b6126NQsxa1EHPYn1ofSHZIqDfj2vdj6hoqM
         06t4/k5SSeP1vjVnq2iq2ckWEZjihTUWupXzor1r5j6n3+0CSzQ48TxXvDhRpF1QZile
         FALg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/CymsWh5ELSsirsHZrwA16502ZmJE1sR53b76IEc/mQ=;
        b=WXiiS0CXl3rN5XzFDgVEZdIrsG8jjAzmfK3r8t+W8dotAGxnNR49usogskPQLaHOYv
         zHuVqUKWmbCAu9wHJizLpUCmWq1jfAeZz8KQciFwQDX+j3R3VSdLfh5zQHf8Z7nWS+CZ
         crdAjGXX77sZFIyFFzVWKrMOJ4snmLOw2d6r8Gp4HcyHBWx+aDnuw9VgN2Y8I/YoG5mS
         TQJm550MjkAMyYTsOHg6envY71i+x0kt5XM8QgtbSVeHcIELOsMyFCcczD4KLfW2hq2L
         R1Zrk9nQasksN6HU7gpuw7cRIyQgbsf+HrD4HioaoqoW0wgI1XRPcAs0fULou7YeeEVL
         yxlA==
X-Gm-Message-State: AOAM530p+1HQr/0Vx/lgmMKdaAPOmSsfgdV7HdAxfy+AhMh31wxU0YfM
	7VwdG2o8G5GdGqAAIIY2xV8=
X-Google-Smtp-Source: ABdhPJw8EZWyllkOB5e+DV8Y9MytidcTW2a1s/BQnJ9W5W5VsfZJvzKKf2auARwgU8eAE19PyD7WQQ==
X-Received: by 2002:a05:622a:18a:: with SMTP id s10mr4294673qtw.237.1617226064054;
        Wed, 31 Mar 2021 14:27:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:b19:: with SMTP id t25ls2109785qkg.1.gmail; Wed, 31
 Mar 2021 14:27:43 -0700 (PDT)
X-Received: by 2002:a05:620a:4c7:: with SMTP id 7mr5300187qks.31.1617226063595;
        Wed, 31 Mar 2021 14:27:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226063; cv=none;
        d=google.com; s=arc-20160816;
        b=xxUFt26cqosUwQKPnEtEAkcHditiSK2jYNzWaaYpTfu0lAPiipxYhhzH/1WY4dluN4
         wDpLdZrieaeWb3ALHDvcile+F8EQbXLaOiGDuRkcHEyV8s9a5LDibUDfhghobZUk8dn1
         YGv2Y9MWooZKXL5NdMbNfVs7PH5SNYkEm55s8sDPi0cAF4piNQQt0S3nDl/GN7Qzu34y
         ja4UzHLA6GSZvDN8o3jUcvKJ3LX30Po2CeFdS6DTaZusgNiWDh51NvVADrG3Oub4qrIn
         MEE431E1DoktDQ1+TBI5NLOSeO5NxaAMYfBMbMlXrM+W2uWt1zFlVbcgEcqxsr6XEwZJ
         JChA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=LhQny/aeJmeAJ3bCETNM8gy3/qff2yzp1+GBUrzrBDs=;
        b=D2L0rfwa0FZIcK0oTKMmNYh852c9L9sD2cuvd025hvKouKnQW4xAcnW2bL5WJf0fk8
         WObchY22fYh8dAAxI2/V2H+mqrtgTSCyiVUDINqw11/lnRAnqO4Xm8MYgZmVSY8gUSYW
         n2RT/ju2AoPzshTOOflObXTP0KJ+Kdrd6mrWSaQQ4+J7cUQLnk00A/abJLlGt3eqOi72
         abhU0qowpFgIsMUXtIPqAhnfN4ZTOocgVW3PKUkRPifDgWxaKBsfE/21bDmDJ1BMvobq
         JvkBbUkQJTymmhAQgu3qScZTLSjC6He9i3X55HONmpUyqFHFzVLPZnbW0yPBm1eNloTm
         xd/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=km1dlNMs;
       spf=pass (google.com: domain of 3t-lkyawkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3T-lkYAwKAL4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id b2si528595qtq.5.2021.03.31.14.27.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3t-lkyawkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id b127so3627090ybc.13
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:43 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a25:38c6:: with SMTP id
 f189mr7492638yba.183.1617226063121; Wed, 31 Mar 2021 14:27:43 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:14 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 10/17] lkdtm: use function_nocfi
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
 header.i=@google.com header.s=20161025 header.b=km1dlNMs;       spf=pass
 (google.com: domain of 3t-lkyawkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3T-lkYAwKAL4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
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

To ensure we take the actual address of a function in kernel text,
use function_nocfi. Otherwise, with CONFIG_CFI_CLANG, the compiler
replaces the address with a pointer to the CFI jump table, which is
actually in the module when compiled with CONFIG_LKDTM=m.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/usercopy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/lkdtm/usercopy.c b/drivers/misc/lkdtm/usercopy.c
index 109e8d4302c1..15d220ef35a5 100644
--- a/drivers/misc/lkdtm/usercopy.c
+++ b/drivers/misc/lkdtm/usercopy.c
@@ -314,7 +314,7 @@ void lkdtm_USERCOPY_KERNEL(void)
 
 	pr_info("attempting bad copy_to_user from kernel text: %px\n",
 		vm_mmap);
-	if (copy_to_user((void __user *)user_addr, vm_mmap,
+	if (copy_to_user((void __user *)user_addr, function_nocfi(vm_mmap),
 			 unconst + PAGE_SIZE)) {
 		pr_warn("copy_to_user failed, but lacked Oops\n");
 		goto free_user;
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-11-samitolvanen%40google.com.
