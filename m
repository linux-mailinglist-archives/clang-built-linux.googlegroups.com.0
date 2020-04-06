Return-Path: <clang-built-linux+bncBC2ORX645YPRBRVXVX2AKGQEQOWR7TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id B146E19FA61
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 18:41:43 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id h191sf40007pfe.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 09:41:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586191302; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z5SWoos27G6pgmKy3KtYzCS6n6vK2cI//wofKfEJ1kBi4t0LNUn0WE4mO4sZA05UE3
         +nEBTO9wTRLvEGMf3KhcoMJvc9O253g1QJjCjom5+1grYm2zkCNZZJLygAQPeAx+U3ko
         bA2HzAhY0q0OOSXWpMMSHI/x96Y3oX3tWPUjzb/OWZ2/mWX9ySH0SdqENcVQ4YVR0lZl
         QoCX/KaLBW90wQl8MjGyD1xzS0Z0ePyplBzbrniBHTDulhVkfJWrMeMopc9GoaDaln2E
         aWKCjw+bJXNe0Ijxc7Gm+znh9uGr8gZR9P4exHZGY+XBye4uXWDyUz4YFi/94YoUuTP+
         UguA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=X4mnLUiMU3h4awvGWclXAsB7fzC/52OjZ9FnGXSbdks=;
        b=U9Y6f/jHN8WK+iKNDVK4MSjsyUs34Hf3flQuglXXOAcO+SRu5j7fkOCnbOClOfwG+x
         xcLkD2Q8AaCx27zRUJPQ/z4RtiDxqzSZz72hqa6odYRJIYGNgS950acMjKuTvb8CLWgZ
         bAmZMIvJRM+TIodOLRGKK9sl4BxCo2LMsiJ7r6g2VGjs29CLCeBfd31KiXnQZex1QhCR
         Vf8cpynerIqqCE0TvMeMuHz0St20Mhln9HRKQcILsgo+U8PSoZPmssHiL8G6eQ/QGXqK
         8FMH5Xkp/CKMVOPkiM+H74J55J2UAGkvXpE3gnUcWQxK+opNFLBciGzgd1085iZ+KCqE
         StjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Et7gqyUD;
       spf=pass (google.com: domain of 3xvulxgwkakqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3xVuLXgwKAKQWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X4mnLUiMU3h4awvGWclXAsB7fzC/52OjZ9FnGXSbdks=;
        b=iGjNNuD9wzoTyIwJhHOq82DO9di9CE930LbzGTbh+MslpQZ/Zzjz/G8AeNTORo26Fh
         V1dKUEDLMlAUAcqG4cBXr35zomDsuzAfmYOVLJoZtCJeNpEb3JupQYOVud3DuzqmAEAt
         S43Akwa032bbc4JwKkj4UinhV/TfeUkjxnHbrFXyJJ7qmlGN1aNRCBCLNze+jS5aJsCV
         ZyXcgxt9yquGNHBKDL7gDTm0a7CfF4cAVehoPsD6AYb9BhznmbeSRw1v1vcY/EwL2zOd
         nPlXBSen4i5e04tOnbXdGdzrYrje2E/pvzRR1RvPA0B/gLJLe1a5PtYbYMvaXdKssM6Z
         O36Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X4mnLUiMU3h4awvGWclXAsB7fzC/52OjZ9FnGXSbdks=;
        b=ZZ5fLfiYUjbVeloAjJpEn24JGlnpJSriHoKVZxjXMmMwDBQuD/3NcnnoMdsQmlIOOX
         nGG3+n5U0ND+r7jviynLZHVz5s3FgmguxZOUARMHyNGPzX5oMy5lywfZEcRyXcg/pf+7
         WYc6YxOViONpmYVwZGLl4zKA287TZxz+BlRrgk8LgHPv9ryU3cTa7IOVnZs3fHzJNS/l
         yYMa1AJ78kqwfYyIzxF9jA80EPGeALcEmZ39ZSxqZ2g726aEEYIfGyfgRPh85/75PPFJ
         Y66Z+ieyjSd2X1yD+F/dTF601toVWtM78vS0uaqxXahU0K8+FbemDtjif96kuI25G1mO
         U5Tw==
X-Gm-Message-State: AGi0PuZvKSE/UQ+LbDFnvCVafmMIs1Mn3KgqZ955tub52NQuisaddxYt
	nRGitfCaSmJWEFd8Yu5P3bY=
X-Google-Smtp-Source: APiQypIS9OaJKRkXp9GG80J0/IDC2W101QELLOuYU75egHRQv4DGpadsDpV3fqISJ3HCGFNRCPEA2g==
X-Received: by 2002:a17:902:8d91:: with SMTP id v17mr20049034plo.53.1586191302389;
        Mon, 06 Apr 2020 09:41:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:16d5:: with SMTP id 204ls59103pfw.3.gmail; Mon, 06 Apr
 2020 09:41:41 -0700 (PDT)
X-Received: by 2002:a63:4c5:: with SMTP id 188mr21251869pge.19.1586191301829;
        Mon, 06 Apr 2020 09:41:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586191301; cv=none;
        d=google.com; s=arc-20160816;
        b=ncLmTfgfbsFVsJgSNSqt0575nGQuybso8cCXgE0WxwAPKWuOH9pOB8jooM3xdMmkh5
         eESHVr92PEpc0PaStFwRuuJY35iQdWdtHCvL7NDoa5GVPhGc4e/gLRjYo5DAAn5bRd5Z
         hiIfuKhnv6NVq6fGx6gf2VZzK1u6FNzcohDU7g9ByPDzYftvrjrXNlVDrMVf1jUIRVtQ
         ucnkE4KCTMqIwo3hdUWTtcCgko2RCt+P5DD8rtXyj/bJlW2V03/i9bMYF3PT5eUeS4Tj
         KE5RZ7YuaKB2EwW2NmijI+VXpIah8ev9KXWIDD5LIK/r2zw91XvY7/Nk/nLFpdhh5eKp
         AFZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=9QG25IWAvZkbAzL22nhTW74bT1ay/PnpyS4BHMHWGZk=;
        b=0MbJcZkpdmEO3bpZhQvcQA8kBlkO/IIypuz0qUR925gfYl/byoD7LrCPqpEBn2JXFm
         TvhpJx1FY+rUUxoukZNeu/v2KbyxxvLbe7iVaMJGExZN0Cl5iE0sVO0yFI6bQ937jKJs
         y6P8sZfvB2Q+pBSqYJ4M4f5yxhLbVRRInRDZ9J3FtQIfwXF+sWF7H06dD0upYICJWSVH
         kE8Dxy8t0kfJ6f9+w+MG5ZS02u8gdZ1ffRZOWuN2saq9+sfGBrzOmgglVe7wDK2HPsFo
         8ksQnxtyJSx2s5129CHq8f9BVN3U82nJGvEJAmMYRbrdTBKKXz6x29RqEp5nudd/QBXY
         g4pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Et7gqyUD;
       spf=pass (google.com: domain of 3xvulxgwkakqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3xVuLXgwKAKQWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id w18si43637pfi.4.2020.04.06.09.41.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 09:41:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xvulxgwkakqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id j16so12219pga.1
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 09:41:41 -0700 (PDT)
X-Received: by 2002:a17:90a:1b4f:: with SMTP id q73mr169352pjq.188.1586191301528;
 Mon, 06 Apr 2020 09:41:41 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:13 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 04/12] scs: disable when function graph tracing is enabled
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
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
 header.i=@google.com header.s=20161025 header.b=Et7gqyUD;       spf=pass
 (google.com: domain of 3xvulxgwkakqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3xVuLXgwKAKQWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
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

With SCS the return address is taken from the shadow stack and the
value in the frame record has no effect. The mcount based graph tracer
hooks returns by modifying frame records on the (regular) stack, and
thus is not compatible. The patchable-function-entry graph tracer
used for DYNAMIC_FTRACE_WITH_REGS modifies the LR before it is saved
to the shadow stack, and is compatible.

Modifying the mcount based graph tracer to work with SCS would require
a mechanism to determine the corresponding slot on the shadow stack
(and to pass this through the ftrace infrastructure), and we expect
that everyone will eventually move to the patchable-function-entry
based graph tracer anyway, so for now let's disable SCS when the
mcount-based graph tracer is enabled.

SCS and patchable-function-entry are both supported from LLVM 10.x.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 691a552c2cc3..c53cb9025ad2 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -542,6 +542,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 
 config SHADOW_CALL_STACK
 	bool "Clang Shadow Call Stack"
+	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
 	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
 	help
 	  This option enables Clang's Shadow Call Stack, which uses a
-- 
2.26.0.292.g33ef6b2f38-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406164121.154322-5-samitolvanen%40google.com.
