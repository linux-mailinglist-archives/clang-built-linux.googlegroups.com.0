Return-Path: <clang-built-linux+bncBC2ORX645YPRBOFO7H2AKGQE62H7RHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D921B1B9D
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 04:15:21 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id k8sf3922728oih.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:15:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587435320; cv=pass;
        d=google.com; s=arc-20160816;
        b=ALUOV+rd2BfzXg0+VH3Fm9XdXGYFrWBmSFYScF9DdAN4uZ7kmYE3QzgCNHZ0wbuAxa
         mzoy6/JNN1qtDdaNvZ68sgDQdzQ1oqH8hBduTYx2cLE50CDSHk3EukVgUkjRy9yF3rFd
         rTc0JzuplPBDWx3DFohE5Vcl+F/27ksMqrqAXgHe+QAxw4OpT8KBVPjZ2RVH40J91E1i
         kqqM5dpTf8CIhVYY9t+bdABMPwWk5fy5pIHc5igTfE1JsYi9/ZqpZnlM667qQ+hXpYZL
         evwqm7RlQaENf/4HQyVnRvLMdsVUx5OwTbPVFhAp60tF7Rg/n5tkK4oLYvDxLZNvsZNl
         KYzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=dzQ/SBW0LC7Jv4mdGBbVbUBkxKBN/pz5FIBFqxXyHMU=;
        b=ZQvg/oAcYMJPmftUZESfNmCBAQRbIsYCg7cFW/8GHlTh1z5G48PxPXG2gg0DoNy6Ey
         cbys4A5NFxFgisNoUwgok6g4/s0ai16Cl8NOF5mGgQQjFiJRSAOclwhoPB7bXdmyDkDC
         anWRtJNl8IerBMm4+0yRzyeP4aABB5knZWEoXS4GrBQxdIs38glaXwIQkJ1j2cOxRpTy
         yBlWmvYF4Og1lq6MD3bFtlcVRtfZLeEwkLGt/oYhlFr6GapXkoeyWcZNhDQC0EcyNWJS
         MOPgJymbOxKramA0UP4SGXsnLOrUvHd5oSwpA2YC54g3ijBKu1YP9m4w/qJDQX3QqO4t
         6vGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e31q5D2L;
       spf=pass (google.com: domain of 3n1eexgwkafok2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3N1eeXgwKAFoK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dzQ/SBW0LC7Jv4mdGBbVbUBkxKBN/pz5FIBFqxXyHMU=;
        b=PzaaVZaQ5PnL31gwhug8D4d/wTnrWwdf5RdQwQu/Tw1aGl7VVJ8jANiCLaETBCWGOm
         p4i07U1Y9/K/uuHy4wNoNMf4KlwrwdjfZq0qW4YeOLucLqYopyXZqBY3VSjtfXGa8fex
         Apdsl8zfsqWnMEvL0qasOUr/aBTX1EalejjsePwG3mT4xPH7yHPPQKKIqOb6KeGdogyc
         j6QEYM+guci4e0PNdcgO8BEyWZ/0QvM8FXvVZ6HFhC3VaegaGs8tVZJeC5IpRvxc+rRQ
         IIC5HhNe5gIjboiRixS88wyF1poab043pXZPT3yRvQmfEuDTRVvZWZx/DF7cE2AbXCiX
         M3WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dzQ/SBW0LC7Jv4mdGBbVbUBkxKBN/pz5FIBFqxXyHMU=;
        b=j0PX+eenN9THX1v6tTC1eUpo0jGC0aoGL26wUwQSr9UdB/0XcMObpK/HlX9GtPAaEM
         eCxKKv+ef8rDYdRfu/5KFd41Q8Z5/gIZ0F4U5DGG5tnq9ZjdrOcXAtcN9q2s2B8ce2CW
         JbqqW9Em+5oCXCD/NZ6ncP3men7XEXE0vmFgDo8OX0DUUDqIQZN/diX5DdrWxg4dW3bF
         7VENqzLALbLKJImbmCkaBOTsknlEatyEbkhUQQ0HFea8exvXQ9XHRmFXYPn33tknuGxg
         u9l/pf8vwhJySoI+kMQyzidd/Nid5DQF9O6NvosD46tuzJ4IiOprBCVe3P+IK34VI7XV
         Oolw==
X-Gm-Message-State: AGi0PuYVZaSOsg66nklXbRZtxRHCUBXTyKV8VtdfJplp16TSecOPvUln
	/ZeqEiR/RUJRpsKeSnfYUm8=
X-Google-Smtp-Source: APiQypLPpMJHCjJ7OMYzc4+O5wcaqiQha0pAJ/Kmr5cUc2hccv5qcOp9eb9ewdNmDGPIwwt0k7rdcg==
X-Received: by 2002:aca:3284:: with SMTP id y126mr1557832oiy.175.1587435320275;
        Mon, 20 Apr 2020 19:15:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:49cc:: with SMTP id w195ls3119851oia.10.gmail; Mon, 20
 Apr 2020 19:15:20 -0700 (PDT)
X-Received: by 2002:aca:fdd3:: with SMTP id b202mr1715773oii.63.1587435319972;
        Mon, 20 Apr 2020 19:15:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587435319; cv=none;
        d=google.com; s=arc-20160816;
        b=hDfNL5bjggks+JCo+mQUs84cGyTFb5uZBJLqtVCmeMfNm/lgT72x5lIuxY2V5g2rZl
         7/FJtlCXWnjwywkGrzb4rDcxqcWchu1EI5EpQc2hQYScYUY6MdfTlZruhS3fQdil7DT/
         /XqA94bOINo5NgvqXxEPUxrqB0sEOpjx6j7l+hHY90c0RWxUAGGEQlh8DMV1WhDEyYWE
         y7n4IW4SME/yNHiOAFAHRHE1Q1Jc3adc7Mc2u/OtlePMOBr/iEjhJs0g5mTep/En2SFy
         lTsIgHHsCg1qBY05DuE0i/lZl8Lv/5S85ra8znth1km71Mjotmo2EZJGv96RUvIL9hJT
         PZmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=SV1DVkULqNa+FuGbiBRMBHT4OnEsBDpzGAv6cWsD5ng=;
        b=XsyUwbD3kw6d1XyzJPG44sUqFY+N0mWFEJQMqKncG9SIMvBDd9staOvbS8y2h2Jf1E
         DnTgPYXtTWEanSFzuhzcWEgNnppXREAAWxGuC7J9Pu0idWW6doQd05Sdepchud935s9F
         KPSg041aOkqJuGhcgUpcMU5IIiMGHWsF2th4QVj5jLk01iLtvYFWPLHIljws2fOwbe0k
         P+NXhIHGdgE7/FLfmzwquzT8ukJvSqJH7lzc/eRwC1i3IxcDLbBzJGXe1LvSUfSirrw6
         H1bPyOlR/c+QpHNiKkldKiunp6Wm+FCiU5IAxMohoXFQXGNM6strF+q8LAgZaPEWkHIX
         LdBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e31q5D2L;
       spf=pass (google.com: domain of 3n1eexgwkafok2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3N1eeXgwKAFoK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id s12si84174oth.1.2020.04.20.19.15.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 19:15:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3n1eexgwkafok2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id w7so10405435ply.0
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 19:15:19 -0700 (PDT)
X-Received: by 2002:a17:90a:65c5:: with SMTP id i5mr2797895pjs.18.1587435319203;
 Mon, 20 Apr 2020 19:15:19 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:50 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 09/12] arm64: disable SCS for hypervisor code
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=e31q5D2L;       spf=pass
 (google.com: domain of 3n1eexgwkafok2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3N1eeXgwKAFoK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
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

Disable SCS for code that runs at a different exception level by
adding __noscs to __hyp_text.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_hyp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index fe57f60f06a8..875b106c5d98 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -13,7 +13,7 @@
 #include <asm/kvm_mmu.h>
 #include <asm/sysreg.h>
 
-#define __hyp_text __section(.hyp.text) notrace
+#define __hyp_text __section(.hyp.text) notrace __noscs
 
 #define read_sysreg_elx(r,nvh,vh)					\
 	({								\
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421021453.198187-10-samitolvanen%40google.com.
