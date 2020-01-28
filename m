Return-Path: <clang-built-linux+bncBC2ORX645YPRBTUEYLYQKGQEB4H2AXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBE214C033
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 19:49:51 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id e13sf6120811vkd.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 10:49:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580237390; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y/siOtCvZjv11zJXktimcrevxUGgScHeQ36YI3FGmfvZGS2cPqtDcXEzDs0RWTWqut
         yqPzNq+f0V4QlLURpe0nBjPKcBUNc43kLJP92xxknCKRpEWQ2sycfhnZCBQ3b7J+sxxp
         aAtsuPoAl8xjnOlCbARigGv02eyUqt8OWDtI8HM6Ogpnf284WlSOjlFk6xo33IdzpVI6
         CJkSnHbk+XpbRn9zMCwyeepJnBVk4pi8dz8KromA55JqNK0mlpsitG6VUgIjllqAvlc+
         6z40SQu1RYaRr7fanXZxyj4gkvJS1iX7Wo3rrl7z9rD4DJgsacaVgSH6selJ+rB+XbyS
         JonQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=43GKtmzFKOdL+s16j4tK4zrdhNQWttROKzw174dOq2s=;
        b=AJXRXZTUqJ9WXworDIkPRr1SXO9PEuekdbjZd7A88ned20E5aov14RyvY0cIMXTODp
         dJrcbCf8KSrk/ovVj7rh0OkfTuMlmDVEdSg3tHPLNTAYTitaKGPXBkQtuVExS4gxlc63
         bVrSSiHK9UAK1l0u+kNNiwU8NQtkOSbqEj+vkbdKH0LlAIKrCw/QASNwlm2iOq9uNGi4
         pDJkZ7yil8lQgG8ulTETfM4JlBePjIApSamET1IvKCitefplHzm0Hn5n7uukYAn9f88T
         tlSh14n8ZrkU9O/wt2GISa8kOklu5/bxENjyjSf9w+Exx9MZkd9oTpfYu44CGJMxZwtF
         j5sQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nTzlXAOc;
       spf=pass (google.com: domain of 3tiiwxgwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3TIIwXgwKAAs3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=43GKtmzFKOdL+s16j4tK4zrdhNQWttROKzw174dOq2s=;
        b=UxhsRWESarfUeL1hds+P1HjRUhT7+++mtYCHiQ0Cmn3G+kCVrXsJJqOkGg3cY64SUc
         6yAb2hXngzvsjxDt4FNuHYo0tMcOTQXM1y4x7tppePY2cQ3ca8KxqlI1EDx5Ljchv6Td
         qsLRd0PrFNeHbHN2mSQVQnSHrsI5FcMfLoD+nCJLEu7iPy9Vv6P7DfcTS/V3fyqXvK3A
         wxVWVtT46G2HLhIeUkpYlRlT4mthdE6GHJsRQD1b4AbINgIIS/PJym4DOi/qOLReCpP/
         skjdt1JewA9br8BD3dTbyFulalL217AszTd5URnEQib2T3Z8hn0EI+SaFNLUDnsu5mY1
         z9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=43GKtmzFKOdL+s16j4tK4zrdhNQWttROKzw174dOq2s=;
        b=KHanfLlmabggOP7BUdgfoI/BI5UCGtCb0MkkSik6eh4qEDpwj6FcjDNT/wkhfsGZ1X
         qXmDCz6s7GG31ZitWKy0YHhzkFLet89teuShIaCIyR9vOovAhQDqLpGg4z+T2WMUp7RM
         3XcxhOZAJknCU0J3RFn0R3rwmgz2mXnAmK8t1PUQZptC2gm+5K4Bwjpnnt9KZ+pjCWPw
         nttPqAk+/QkIKbv08a1vmcWhIfELhiAMq7ouPFGPySFcTYxdPiiEnkkahSWGY5bb64Im
         4EJr8lH6oUQJf8eNEdz8yP/LWFviTyRWZHiCCj/zgWEyhZa9zoJM7e10EE2GlBTh4F/q
         YYGg==
X-Gm-Message-State: APjAAAUcf/E4lA+PrcgSLEdfhoCLyc7WRkL5NsDguCdF6vUq+OATBMvM
	zoZqfeMgizkGq4b4BhZ1BRA=
X-Google-Smtp-Source: APXvYqxVp6lU1o5kO+erG1tn/eUwsROb87N12zZgnxcjaIGToHc8j6+jMtUOMCZqofEAv1badnYhQQ==
X-Received: by 2002:a1f:6d82:: with SMTP id i124mr13922556vkc.4.1580237390458;
        Tue, 28 Jan 2020 10:49:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2885:: with SMTP id s5ls949618uap.10.gmail; Tue, 28 Jan
 2020 10:49:50 -0800 (PST)
X-Received: by 2002:ab0:60ba:: with SMTP id f26mr14080463uam.51.1580237390063;
        Tue, 28 Jan 2020 10:49:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580237390; cv=none;
        d=google.com; s=arc-20160816;
        b=EYGA85qN+pADXxpTSwq5KbD1WoKp4jiuYuYVXD4hEdzOQCUoUNHy4AGSVhhm2iHSCC
         vP8AbKE67Y5jRUGXI8K3qeMKsts771tZcxsBwioBtZOyQwKnwDNdxJVJe5HHsponWhNj
         X8WIYy+D3SBeQ3hKHYz1yjWEe25ioGgv75u6l31sI3v3HF9sOf2f4Oc36Pz/pIAibXGO
         YIXx34pJ1bK0v8n8M3Iq2MLYrqGQypIRETeCzHIwwkc8pu+aAda6ORKewBfUDy4C3S49
         WkNYcHt1ZNSm8egjS628jAG7cU9vwrGx8ef6bKij3V+dcPy7nh12w1uctUwhZq4Bhjq2
         i/kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=nYqHbjkvd1RNJgGQNDuWHkkD/vAdL1upqEsqEeQXJo8=;
        b=DyaEZD7Oi3IfiEih9aqzLHv/oPyHpHZXMb2ACbBikwQuwx3j2vMYTHBsjUtblWjdxI
         fNuUKlfmmmG5OSC7lcoJZKycgfpqEfGh4fNAzCF4kaTcnlatam6nsdZbl+dgBbyuqdE0
         rG7PB3HnSeYxmccBa1A5RJrdbK7OBuip41+50tYBYIT5C60RahqzNtuWWZTBTCYNvODY
         jskgSXHPLHC5JD0A4WHf82T8qUyFFkrWWIk/EiDce3mrY+znF8Tz25RdQotsZZGlt/lE
         6GmYrT/19mtvbWAB1MY99477XF7lkJoHV0e2M9NQx/VVHGuOqxwlU1DfPjrVLNe2ltNd
         icVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nTzlXAOc;
       spf=pass (google.com: domain of 3tiiwxgwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3TIIwXgwKAAs3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id o19si1014453vka.4.2020.01.28.10.49.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2020 10:49:50 -0800 (PST)
Received-SPF: pass (google.com: domain of 3tiiwxgwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id r2so6027235pls.18
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jan 2020 10:49:50 -0800 (PST)
X-Received: by 2002:a63:5924:: with SMTP id n36mr26520518pgb.43.1580237388946;
 Tue, 28 Jan 2020 10:49:48 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:27 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 04/11] scs: disable when function graph tracing is enabled
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nTzlXAOc;       spf=pass
 (google.com: domain of 3tiiwxgwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3TIIwXgwKAAs3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
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

The graph tracer hooks returns by modifying frame records on the
(regular) stack, but with SCS the return address is taken from the
shadow stack, and the value in the frame record has no effect. As we
don't currently have a mechanism to determine the corresponding slot
on the shadow stack (and to pass this through the ftrace
infrastructure), for now let's disable SCS when the graph tracer is
enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 1b16aa9a3fe5..0d746373c52e 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -530,6 +530,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 
 config SHADOW_CALL_STACK
 	bool "Clang Shadow Call Stack"
+	depends on !FUNCTION_GRAPH_TRACER
 	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
 	help
 	  This option enables Clang's Shadow Call Stack, which uses a
-- 
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128184934.77625-5-samitolvanen%40google.com.
