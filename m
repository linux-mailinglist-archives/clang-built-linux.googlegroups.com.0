Return-Path: <clang-built-linux+bncBC2ORX645YPRBNVFYX5AKGQENULQ46Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9751B25CA6D
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:51 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id a5sf4013249ybh.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165110; cv=pass;
        d=google.com; s=arc-20160816;
        b=MpCiVqX/xCeSLLl9PVeweS5uEoWy3CaNRVogyCbs69Fwk4BG+L5VXM4NlK1sFXaynl
         9TFTYZUpc5KS8ICv9vV2uDOfVLriNIDCZnYxNqf4A1QqCEt8LV2OUg6WT66+fC7eaQBb
         Vd07xAhPqq6KgQOUlUleqsLbdr6UheoUmvtRsrrrWUm2EkBLP6lpo6Y9pAgD7dGi/a1b
         sh+8jJwFWOpnc6ERgU99Wn/q/mqQRttWSXxbCHtFmwI2UYqNtUuxJh1fRhnvqXYxQb0E
         wdIA3CjZ17tsN3XPz7ZNxawAlt2fb/jhzcAIkzlYAEZMezxIjCtWQqMiKfYUgAKlT4+O
         /WeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=lBCInPXSESYip77Q5oje8o8zUmL3h/saMWkzWT0p4zA=;
        b=n9W0Nzi9v6vfDxJeapD8jBEN4/zF7BjbPsmPXJpAxqgwDNuhELjwMwJPMxCH2D9tde
         1r1QbCBRP9JWlol3IPonyu/ktngc+c2SZlA5kTk4UO0D5503YNsPtbGRj6iPX/aAruq4
         OZhFdOynWDQBwQN4qKc/qgrTbVBSW/5jeBrjuvwIlwtoY7zQRcM7gVj/+pQm+fdz9F8r
         80Ny0B7d06o0UzvlLhw9VssstYsoV2lcuWB6M2PJPkGJvEbIHlX+v7U7faPGQ7AXGZa8
         kOin9kGKLR+cMktgb/0yi5vLPFGyBPt+na2sSTFjjf11UzLkMcSrpiQoJENTOq3fxgn+
         5gWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dhsXYaep;
       spf=pass (google.com: domain of 3tvjrxwwkakasamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3tVJRXwwKAKASAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lBCInPXSESYip77Q5oje8o8zUmL3h/saMWkzWT0p4zA=;
        b=jl6ezV+Q6yoeXrtNWyMhUUYoZVq5YpMrSJ/4ju3FDTtbiwFY9RvOPbgHTgnqGC8kic
         KXa2O+qVHIqtjnOCN0cfrvM+49IHa6/DofOyPiN2KGuE0ngauNWRDe5I1vNH+r6ntPaF
         oCqjtI50m2olnvLP13EsznitPAYdi1YQ8o7MiF04a1MCHxaJ48RgDAPpRtvYatFXd3/U
         o7CNFqzH3exAglP3Mocv2ps4XvOTWGh8hZEr4GNfhIcstD0nId4wY/mgeVoWnewOYfvz
         DN8zwYPOfgmGl34HnyO2UuWMJ3oltkDE1aW4hJ0n62S3wOJPWQbO2Zmw50XQehTh1vwe
         kxTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lBCInPXSESYip77Q5oje8o8zUmL3h/saMWkzWT0p4zA=;
        b=LzvABblOzefO5bU5aG4Z7VvVGfGdhlJZxhlT11txfHvtSRT6kY2WTsdoIDIn8Rz/SI
         mCDgbbQ+1H/vT3+Ju14WwnIhag+3WLe86SDlZ4jC0fUvwtICQOUPfz7wTO4K4qDJmEy+
         xoYtnSF+MDS4LpZWNtpSsr1lO+p3kv+1zhYSIiaDDxfclFGsF7qHius329JHEOT3uHOG
         D3mvUnIrJuBVRyIloxOimX+ZYRud/n20WuAEH8JEln8ljhp/8rj8iMxwiOFUFM+qTu79
         m8SVfPF5umbZp4G+T0ZRWCLztU3NS3RTNLb/+TeJCqbPu4ycet0KAO7bK4+JFu90/MdB
         5WpQ==
X-Gm-Message-State: AOAM530rHobqAJzkW3prr0Q/wmpv5qaKJfESsuylr9WoA3rJ9Gg85kaq
	aJC6+LvrVi+NL/h/zjOe0ZQ=
X-Google-Smtp-Source: ABdhPJzSUVbDRUv001B3PPkTvgR9le+4rUA2Dj60kp8DPyllu5MUYlbYuCX8fR5ja3K20tAo/+I0uw==
X-Received: by 2002:a25:7104:: with SMTP id m4mr5611852ybc.396.1599165110675;
        Thu, 03 Sep 2020 13:31:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5755:: with SMTP id l82ls3325372ybb.5.gmail; Thu, 03 Sep
 2020 13:31:50 -0700 (PDT)
X-Received: by 2002:a25:e0d5:: with SMTP id x204mr5631818ybg.57.1599165110346;
        Thu, 03 Sep 2020 13:31:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165110; cv=none;
        d=google.com; s=arc-20160816;
        b=uN97Y+fcYnIgE9xMNlXD2p3fFE6TQcqjjBh4XpjjLSodytCmKUl5cMj/N6u+0M1eqQ
         i4zw+kI7lBcR9KULdPddG0BxrHiJYCBLKkt+AfakQXGFS7G2uYXN21ff41hTo1cS5ZDH
         mqn21tSs37rfxZ0ksC6nd3NojyGn92BatOkg1QfsoxMKNC/WztFTady3QpURNatO8q+Z
         pvjBtE7Vyl5KIu+rCR9iImhMZ0Ti/qUI3+9CodXN+iKtYBgW+1FTFCILiTaH9sN8uzoe
         uNUQ0BueUqbiQmTRMt3A6V0BohqmrFrEi4QdNkaWA4X3oChJM46uj4LSLEaMeaEsrHEY
         OQBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=z1oE9Ahlo6q+kOr1oYLTleDll+XTtOFOU5n4tP72oXo=;
        b=gItER/MV5/QUoBrNCOdnDGINVWlzYLjDiMt2Vmsc3fNd8xBBxXLXWEz7Qz/CAnRRwL
         dVMPHcQPqT3XToIe2Av8NLrhYivHqW/Lhvlikd/jNOb7mhs57kPjYReBEhA0b6RYU1Km
         ngmaI5AoXqIanVoW6jBQWCYioEJjzs3WS74Xj2VQQnC1dfi+AOZ+XcZroGfYRgkyRFA1
         nH4cayahGCEF/R+Am7Bk0h6GmTrG3c7Vh9h6cizix2PjmDzbs7aZ+FRe4mJ2K0rQn1DK
         zYu/oXAjrSoCanyCYPDosGg2C68WEN7CYQFqmZzMkKyMfIKYvb1JGYDEFAf5WRWsCXeL
         knlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dhsXYaep;
       spf=pass (google.com: domain of 3tvjrxwwkakasamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3tVJRXwwKAKASAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id 7si266668ybc.0.2020.09.03.13.31.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3tvjrxwwkakasamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id w1so2958024qto.4
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:50 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:d803:: with SMTP id
 h3mr3575787qvj.0.1599165109962; Thu, 03 Sep 2020 13:31:49 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:51 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-27-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 26/28] x86, vdso: disable LTO only for vDSO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dhsXYaep;       spf=pass
 (google.com: domain of 3tvjrxwwkakasamitolvanengoogle.com@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3tVJRXwwKAKASAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
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

Remove the undefined DISABLE_LTO flag from the vDSO, and filter out
CC_FLAGS_LTO flags instead where needed. Note that while we could use
Clang's LTO for the 64-bit vDSO, it won't add noticeable benefit for
the small amount of C code.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/entry/vdso/Makefile | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
index 215376d975a2..9b742f21d2db 100644
--- a/arch/x86/entry/vdso/Makefile
+++ b/arch/x86/entry/vdso/Makefile
@@ -9,8 +9,6 @@ ARCH_REL_TYPE_ABS := R_X86_64_JUMP_SLOT|R_X86_64_GLOB_DAT|R_X86_64_RELATIVE|
 ARCH_REL_TYPE_ABS += R_386_GLOB_DAT|R_386_JMP_SLOT|R_386_RELATIVE
 include $(srctree)/lib/vdso/Makefile
 
-KBUILD_CFLAGS += $(DISABLE_LTO)
-
 # Sanitizer runtimes are unavailable and cannot be linked here.
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
@@ -92,7 +90,7 @@ ifneq ($(RETPOLINE_VDSO_CFLAGS),)
 endif
 endif
 
-$(vobjs): KBUILD_CFLAGS := $(filter-out $(GCC_PLUGINS_CFLAGS) $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS)) $(CFL)
+$(vobjs): KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_LTO) $(GCC_PLUGINS_CFLAGS) $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS)) $(CFL)
 
 #
 # vDSO code runs in userspace and -pg doesn't help with profiling anyway.
@@ -150,6 +148,7 @@ KBUILD_CFLAGS_32 := $(filter-out -fno-pic,$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out -mfentry,$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out $(GCC_PLUGINS_CFLAGS),$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS_32))
+KBUILD_CFLAGS_32 := $(filter-out $(CC_FLAGS_LTO),$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 += -m32 -msoft-float -mregparm=0 -fpic
 KBUILD_CFLAGS_32 += -fno-stack-protector
 KBUILD_CFLAGS_32 += $(call cc-option, -foptimize-sibling-calls)
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-27-samitolvanen%40google.com.
