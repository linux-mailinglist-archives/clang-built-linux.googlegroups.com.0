Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZEG3D4AKGQEAK7KSDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 519BA226FF6
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 22:49:42 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id i9sf13478878pfu.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 13:49:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595278181; cv=pass;
        d=google.com; s=arc-20160816;
        b=hOanMav3XEofcenAeWs9X4BjMhr4GdpkbKUq5rK5GaOTFk13/tepv7H4rlHZJQgamf
         uO+H2SG3G9x7EElwhiFklUS81VK4quuNgMWqlzNJJtJmdcgdSbo8oPn049T3JhkatZyJ
         1aOkOo70venKkhtRF2VK9ESUAiSDZsDmzvUEctUwpfSF//JWHiGGvrGkSauMRf9IFyls
         3T2hAqTLh7x6v6Lpx9aggHN1RjkKYZNHOZYq4YnJkdp+UYreIonSLBCCDaauDeMxS+cy
         Jm2qsQg3QnFsBLGdlTlLsULSBJFPqQIE+bUCRiSrwQyYayAmjncQGMXlyuvbDpMwfeCk
         Q/OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=MR4ZKTF10ZsNkTTWZcv9ke+5tx6ufQFIMEv9+Ign3lQ=;
        b=I0dQP7jQwEdEJFFDXjPHXqFSaLjFj5d8NLs5cUThq5u7oamPXtdY7IzXzYm5tsCmHj
         S2YNb2yKM3OGkx1mxOCn4Kf1J84PgR5EJiY/elb5WwlPOAP6yCyFxVgc/Ljt+y/aK+3t
         HZjebVyd+czZ+a15HaCYNbHP56/gUKX+eM2YP0+sLes0RaSRLbXzDzku+iNQf1x+uYMH
         boUYb+sD5t/BlSPpkN4K6C21MvNAMyd0F2u+xLvb0BKGz/sC4ZNY8oJRsujtzhrBBhIe
         cmgKyIV2nbIK7Gsr4f5uyq71ETfl2BtXwP1RUnZegFbYY4l+DU+8Ob0Xzn7PsvpH3CM7
         d49w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HvRlhxIJ;
       spf=pass (google.com: domain of 3ywmwxwwkamatjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3YwMWXwwKAMAtjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=MR4ZKTF10ZsNkTTWZcv9ke+5tx6ufQFIMEv9+Ign3lQ=;
        b=l+/r9qf9/ki6kjsJbQMjwIHOTO6a84/V9t25XqvQjsfMqM0IBHYl9y5MacRBC1I2VZ
         kCbbLVAErtBh8BFar0qPxCRZP+ccYoVmBWgkydCH3zF6PetywuQbd6+/oEAl0FbZs7c5
         yPOFT8x8VlFne8wNzuYC/pJb5AJ5FB6+OF0k5F1lA8HIiPIx1QVGF77uayrdT4HX5Bzh
         Ed7r0l9hL8nXUedwwfvyinOHnoNfKHFZ7rR3avCby+KRK3sKU1nVFq00uZrg1kS4zGOm
         pKbmMoCpvBEszTsc2tbmmhkKb4Kli2r5KB51n7iOtKeBWpKBctvUNBroiacuG11bVe2J
         HxMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MR4ZKTF10ZsNkTTWZcv9ke+5tx6ufQFIMEv9+Ign3lQ=;
        b=VWGoEpnvFKJEx060AyhNZzxoUh7nrJ9bO4X3vWLXrrtYZ/CxpqtQAvaEBxUVy8l6nM
         wcFb8qQBWQ15jBTyBkOA9icjk9SVuxPWr/gVZ6UCHhDv1T/FSs6LYdjzQzdqgt5fA8K6
         ZZHSTRwSaePiAUyZh2JfTYFdiCF5qRdQn2hasOPkq4UMtD4gBIbzGA3ak9pwl/q5PMj4
         5hI4xAseR+Iu+C/vS80oFupOXOj3Oq4CmwQ6y3gRvoYI0RxVZ4FXd5vXoSsBOWd8SzVA
         jGecz6fwM6/aHfpf21qltLjCSkcLVxSSb1JMwB5m5w599mvr9Dg/69fV9GR5SAlcFoqS
         T/kg==
X-Gm-Message-State: AOAM531RBVbneYCk/CuY0Vr5oUaEORSrOzYorQ8zQyVobyNqsLJUjKOK
	c+ZH6qBVGayI898+vFfTEko=
X-Google-Smtp-Source: ABdhPJysBqN1dycI9jcfjC/7CzWDehzRP2PkBDKLTP1n5Nmc3NAqQ2mSigiEEdBnpzgVsLiXiEiIdA==
X-Received: by 2002:a17:902:d391:: with SMTP id e17mr18763619pld.219.1595278180725;
        Mon, 20 Jul 2020 13:49:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c1cb:: with SMTP id c11ls3112231plc.7.gmail; Mon, 20
 Jul 2020 13:49:40 -0700 (PDT)
X-Received: by 2002:a17:902:b58f:: with SMTP id a15mr19779650pls.87.1595278180337;
        Mon, 20 Jul 2020 13:49:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595278180; cv=none;
        d=google.com; s=arc-20160816;
        b=v7FHIL4G9lxskgbCpaS7o64eE1L5brCGY1IZ9mVr/DFJ0Rim8NYQL4RR7O3ZNalkwF
         QHwrb1bGNofqgSVDY8YrJZhM9bvsIPfMmQzTLqeHWldS4dgnim7fq4A7fCgPDXeoMK6l
         x/4VF2P39gP2BdvAl2XJPqIwVU4SeZUxSN/vgSCBhNkBNsQ4KXrPTrGDb5s+Lm6KKnUv
         G9z+Q5EhZKtrHt0SiJW3oFmqblETATgpvMlftkGWnlaA/z5u3zwFLgvWHdEwjcCYVio0
         /zi2aHzsJE/Rrzq4Flq0zLm95XocJW9XY9q7Ne5oXHvGtfA88PzfGw7N8JH42MKCzxwT
         nIeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=+pPzES3PiEk8bblwLpPCONxYimek8jAllUnsW6FPf6o=;
        b=o0mBGBP6I//2B3OPQv8vh2VpABrwGwuBVnEYRScV/hMlbwtjMnEF3OnoePIKsPaBNe
         OkuCqCssC9pxxYmldt6SNW9Vhdy3VrYa+AdBn6lfmh2E26M03ZHTbG16l+6M5n0C/rzk
         SFUwRVQS7ezLHnlx2BzpGTmQkjFxuSkrvTTAwbEW2UMF4BGYqPqztaKV4/G/q4ooLHcn
         spWRbFgphzGGrcAgyfggaH/rFFm37YREILUX2qk3r5M2tqWLtHryuG64r9gwh3xhyw//
         jVAaCscOYgvubIvQAFzL1PCbihtUd+IBUcXQAEQbNSwBGzyOhEAWs/Unl4RIkgx6xU10
         K1jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HvRlhxIJ;
       spf=pass (google.com: domain of 3ywmwxwwkamatjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3YwMWXwwKAMAtjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id q13si994073pfc.6.2020.07.20.13.49.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 13:49:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ywmwxwwkamatjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id r17so22941351ybj.22
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 13:49:40 -0700 (PDT)
X-Received: by 2002:a25:3b93:: with SMTP id i141mr35680756yba.28.1595278179480;
 Mon, 20 Jul 2020 13:49:39 -0700 (PDT)
Date: Mon, 20 Jul 2020 13:49:14 -0700
Message-Id: <20200720204925.3654302-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v3 00/11] i386 Clang support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Andrew Morton <akpm@linux-foundation.org>, Peter Zijlstra <peterz@infradead.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HvRlhxIJ;       spf=pass
 (google.com: domain of 3ywmwxwwkamatjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3YwMWXwwKAMAtjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Resend of Brian's v2 with Acks from Peter and Linus collected, as well
as the final patch (mine) added. The commit of the final patch discusses
some of the architectural differences between GCC and Clang, and the
kernels tickling of this difference for i386, which necessitated these
patches.

Brian Gerst (10):
  x86/percpu: Introduce size abstraction macros
  x86/percpu: Clean up percpu_to_op()
  x86/percpu: Clean up percpu_from_op()
  x86/percpu: Clean up percpu_add_op()
  x86/percpu: Remove "e" constraint from XADD
  x86/percpu: Clean up percpu_add_return_op()
  x86/percpu: Clean up percpu_xchg_op()
  x86/percpu: Clean up percpu_cmpxchg_op()
  x86/percpu: Clean up percpu_stable_op()
  x86/percpu: Remove unused PER_CPU() macro

Nick Desaulniers (1):
  x86: support i386 with Clang

 arch/x86/include/asm/percpu.h  | 510 +++++++++++----------------------
 arch/x86/include/asm/uaccess.h |   4 +-
 2 files changed, 175 insertions(+), 339 deletions(-)

-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720204925.3654302-1-ndesaulniers%40google.com.
