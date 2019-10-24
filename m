Return-Path: <clang-built-linux+bncBC2ORX645YPRBIGWZDWQKGQEENYUOVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id A22C8E3F9C
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:52:17 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id v2sf177051plp.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:52:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957536; cv=pass;
        d=google.com; s=arc-20160816;
        b=KmIQ3IEweeCB3AfZ+clblWX4wJmcONU62k3n0Ffs/YbOaUNSCEsywzAisN09ZZhaKw
         /uPZCeJ5R/AF89xZ27+r/POsLVvCW/qdjRsZsTbYQ9XjTYpD4Yt0WGNfroWqYt4EtbS9
         zo/+DYlWEBLkQ95g9/UC+ee9TcC7BHtZfu1sLt6bDAw3Wycr4IJtRrosqtWVSsw0xm86
         fJw5G+2KlQ8/WArxThG9auhTJVTJpEWrl4I1pdf5H09jH/04COYkZCm7TnJ8B2xGZRPJ
         R8Xn0ykOJBITrIkyYuWap0cVNY7ueP3LSKrEr5WRAYpYINdSjw6Dh8Mlf/9SXVPWuJMF
         X4+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=2jAEPBojwTc4xkV6Ukl5OJlJMMR8+aMlPCkoqe4pN3Y=;
        b=XRRCBb44yVRG9COsnQLk/ds0C7LQW/PUzar5cXK4OOKxCzpGWlo3rDnBrP/sCG8WJ4
         A6DVlbR5rHLBme+3uYFEcb3mkPa5KQQCWYsmIJ8BdzraHy2EXzFkRr1970e4ElVGz8k7
         JCnj9yxLi1BBI8+erdmHnHVXgQ7IKAlypBaCkAkMBMeg9tP/piaMboNAh7LnHin4WSTr
         8D6knqiHqF/WQjFcOlmy+a4rypXWSjyn4f7GY7GJwZeLB/evnxrhfJDvIkuDRMfGTUoT
         jZSKZSjaC5Z+RfX0DtLefFjm/YjLzH+mZZ9yJIq2gMsSado/cujzo/lGgrqPPhljMYuW
         hh0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I2431xJR;
       spf=pass (google.com: domain of 3hiuyxqwkadefnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3HiuyXQwKADEfNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2jAEPBojwTc4xkV6Ukl5OJlJMMR8+aMlPCkoqe4pN3Y=;
        b=F7D3AsfKATvRTC9OM10zl8oThqaNq821vuG5JsDXFCOn56MIXjuHGXN1Ze7rbcbxlm
         bHyCMkjwqgubHlTpdLXpuYCIFtshZdqFVgHTh/NWnU+3pzu0nJYgt6oHDNXJ5xUxXffl
         DvzOSBj1WBJqxb/Zjih+/eic2qwobLm//IdZDIOavozSRqqJWvvlfGB0VRI2TcVq6MT1
         GZdvbdUxovD70/3l2AO6J6g8S9XV4/eLNEaLmMmreKZwc9nQUi/31Y3okOJ95Go9IJ/N
         1pSoYD2BB/LW70BTFIz2mgdYljj0XF57UTu2QmnlMSUjBwVstaSyQhRzpmDvD29b3A9X
         4WVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2jAEPBojwTc4xkV6Ukl5OJlJMMR8+aMlPCkoqe4pN3Y=;
        b=N0wpn9YOl6N2RPjbDSMGd2NI1OjKLOrYgDqAkFQDA0E5V+IGH+PLC/OiVuJD3cvbMH
         QPggvui8dTHJ5Cz8V5Pq7h93Mgeh56mjgg3TlxaKvc4lVezZqXOCA3R/kBlhO6x1BQia
         Hw/4ZCB3hseylUr3Kz+0w8MzEuh6m/kvfNu2zACMRbjHomUiGvxOy8+rW2M0jwIh5XcF
         m1usvVQIQd07OhZzum29wYVZqf5iJ3pQnWZBorY1IC2I7Mdla2S5pH+wCCAg2Z4OiP6D
         dDmj2S0+sSGuWANBvmEz27zpmAZ8+Nz1V9mIKIiQ9Dlz+ra6NyzMqALboj1wC7wNF8tZ
         sj6Q==
X-Gm-Message-State: APjAAAXWbZBi5h8O/nwNtGLD4Z2n2ExinLlSqPKMKpZ6abei4lPo2CPh
	m3RUwoPvMQthPFbiulBW4tA=
X-Google-Smtp-Source: APXvYqwTjlq5kzBKdx8ADzD89F/FuTebNzTNl7LviMUzDOOAmm55zUeZBmky123y8Z73iDIwPXQdAw==
X-Received: by 2002:a63:1d60:: with SMTP id d32mr294550pgm.37.1571957536312;
        Thu, 24 Oct 2019 15:52:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7f93:: with SMTP id m19ls2451416pjl.2.gmail; Thu, 24
 Oct 2019 15:52:15 -0700 (PDT)
X-Received: by 2002:a17:902:b08f:: with SMTP id p15mr198325plr.229.1571957535924;
        Thu, 24 Oct 2019 15:52:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957535; cv=none;
        d=google.com; s=arc-20160816;
        b=UK3gL0V482C2sgGiujBEz6CJrnZmLPlFItdoP+9d8xW0zFjBCZ6kGeK+/oLFQPSN9a
         vAiMQDzxPO9MKk7NTle4jG5f9RjWNkaNQLW6O4gWhHk9plYjgWsycA0bhJwJC161159C
         TQL+SzqsQNDh6myLnZT5coapN5a/lNmukfbtJKx2IWV5HqmhnlbfUfB/TwUsQ28dy6cF
         jBV7/dOI6ds2gs6wdJAYkVO6FlfAxnVCnRISFk7xQ0DYLPqNpWRVG9E1nDg7U+BWiOQf
         Yt77M/eG2IMDRkjzNuSFvyx/HKdYDlhrzCQ3d3TP+tkRwQN1Zc4f/h6Xc9gX7/KFAPNW
         Ck+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=R+pagykxtiUayWbEADuJoiydRcDW6HSTgqXK05LN0/E=;
        b=MJqn1lLur7VTpHXEvioULEpe7KsTKsfitnDa90uDJkNA+3n3wEF3mnIHfxv4fs5PBo
         lsQETD6XAGnbVotrFIayAtMWtxG+vVt6O/zG41io0rU7obibpzGYRcgH+hvO38n4pb/5
         becE95c2nNp1StaR20AtqaXEmUYPSXjTJxwPaR/4YtnpObVPSfvCM+RTvFlIXqnrW13k
         v0/zi+bSnkgbsGglgcwma7MvyOw6cv6K2lTkKigbm0BfmcXmAMxcyJyVjRhdxfs/+V+Q
         8k9sdTtrEUBjq7K8I5rwVv40C2MnYWRczCnLwzV8IpaV/b2SqXMANlqW/u6sQOfz/qR5
         Vo1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I2431xJR;
       spf=pass (google.com: domain of 3hiuyxqwkadefnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3HiuyXQwKADEfNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id d5si10307pls.5.2019.10.24.15.52.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:52:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hiuyxqwkadefnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id m18so421981ybf.20
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:52:15 -0700 (PDT)
X-Received: by 2002:a25:cc87:: with SMTP id l129mr704884ybf.48.1571957534881;
 Thu, 24 Oct 2019 15:52:14 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:25 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 10/17] arm64: disable kretprobes with SCS
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
 header.i=@google.com header.s=20161025 header.b=I2431xJR;       spf=pass
 (google.com: domain of 3hiuyxqwkadefnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3HiuyXQwKADEfNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
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

With CONFIG_KRETPROBES, function return addresses are modified to
redirect control flow to kretprobe_trampoline. This is incompatible
with SCS.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 8cda176dad9a..42867174920f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -165,7 +165,7 @@ config ARM64
 	select HAVE_STACKPROTECTOR
 	select HAVE_SYSCALL_TRACEPOINTS
 	select HAVE_KPROBES
-	select HAVE_KRETPROBES
+	select HAVE_KRETPROBES if !SHADOW_CALL_STACK
 	select HAVE_GENERIC_VDSO
 	select IOMMU_DMA if IOMMU_SUPPORT
 	select IRQ_DOMAIN
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-11-samitolvanen%40google.com.
