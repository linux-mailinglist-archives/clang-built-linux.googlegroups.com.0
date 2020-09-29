Return-Path: <clang-built-linux+bncBC2ORX645YPRB3GWZ35QKGQEPOV5GMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 565AB27DA94
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:26 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id m13sf4863890pfk.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416045; cv=pass;
        d=google.com; s=arc-20160816;
        b=zs8s4e0A94HLzjZyIepVEsvCD7e33aD3ZpY1SBj2ydLDDTf740mQ/So1cNOtBV577n
         CTdAatrBePVerak5hJBrT/le90IeV4PEOsdc19SQ2nXWK/Em/WtT/5reMlnUbprYGuqm
         xUGNI07mz1o370LxEd6klIAq7VAnAGDW0RSmcDaHsBjnAamsWMTp+mPhM7EJslet7CCQ
         aJnqkF84Tf9vVVpCubinYUG1ExNaBjlE7icjFkr8rUuJCUXh1XqajcCqcOnGGjNbD+P8
         UPn0cFryOVUpBkomzjL6fiA5rHIDn2dzqm1qK6fwVyXQXe+b+ASqffGvmiohBlIHmDJz
         FW4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=juQgcLU6CoC1SDWrtWcbA9ZANTnk8jTRdYXA41UCS9c=;
        b=nzazYv7tmWe1h4f37EFgWImWPmgqSCqSalZsddr4KbkBR52wRAM8OWUG3p8yTeH/1O
         SvZcIflpY8z+LPchdzYHRtUxY+zjx9OB9NDnSSKr1re/D2Jz6aN/kU4O1mWfjatb0lYJ
         /oNnybS6hnrPWybjr4LzyoINCBBPIoLUjcp9cLIMS5qmZpJesN0alxK2nFmfYfG0CvS5
         DnQmFq8B5OudwNMn485xwf7yKRo8VPKz9aj8Zzmo2REs2feLEo2MqJKREDgnr1t6QRtn
         kc/RPjscWysrACR1r8muGKnyc51UIL4TyzTZnCd/PU5DrQP9/I4/mW+xjX/CxWRUXZvV
         FX/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BzhS1T0x;
       spf=pass (google.com: domain of 3a6tzxwwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3a6tzXwwKAJIEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=juQgcLU6CoC1SDWrtWcbA9ZANTnk8jTRdYXA41UCS9c=;
        b=Mk96B/20i1/mg+R9pd2o2F+HZZ17jDYUaAxZ/mpacI60ee1FWCnaZFD8YKh18s9zHk
         dERMvqx7H4N/NuYak6MJCFujEsdtPyebeVK+JxiEnsUPhnlUU9oXULfaHhPGIVWC0iF2
         XlHoEYVSgdH+1GlcwiBkHZtj3tlz0ZazL8ZzOsA7HYp1nu4tMbqxl3qLeGd0StKoAK8j
         Ep8CWMrbgw4G87M9sfK2k5f8jna2ifSaMnjVkzZsyakwl5TSOhhZMtBr6MNN4LqFVA/0
         FmZRawsC+NjReptqy+t8EtQkEn+6L+7sTd5QXPlaaN9hRcKzGdZL9nkH17dvtXsMK+U5
         uRjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=juQgcLU6CoC1SDWrtWcbA9ZANTnk8jTRdYXA41UCS9c=;
        b=uf5y4W/Lb9nS3oT7/wvqFE7NhKzF4sFBARicRpIktXxbw+4EyVNYNyM+ciMiAvTKVy
         26igDPwJfPxViPPUyP3yZD6WciZqaWlB0vAcmGJSWpKM7XRb5ivc0v7nVnG1FB59B/x6
         UuPf3qiA7uODV9ZDo80xzMPlGMsaxigzO4O3wWh5DGBmPYsoMcVOKk3Bw2zkU3r1xXPX
         3XgBe0g5zD+/VcmjKBytVrs2Bu3vZE0eXRtVM7UsXn97hzYSl0MY9QJo4uKrjOHQaA4p
         uOBQ64H53xLgHgsaxTikJJXqAwv1+WLlZ9mtpzfMjtyn2MtK8l6En1odrmNrhBouzOwV
         a61Q==
X-Gm-Message-State: AOAM530vlqnGs6ILXbeNR2mhL+C8KxLZqdKGagOxup7MrcA03F7hNu5b
	WktUChNLFEQW0ZVoTPazrQs=
X-Google-Smtp-Source: ABdhPJzJ1QvlMGAoW/x2qz/UCP7a/pDMNVo5Jv8cDWywnaOb7WprTlGH9RLtjWvGP3JDW9Wkx2OksQ==
X-Received: by 2002:a63:4854:: with SMTP id x20mr4977549pgk.220.1601416045064;
        Tue, 29 Sep 2020 14:47:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96cd:: with SMTP id h13ls79010pfq.0.gmail; Tue, 29 Sep
 2020 14:47:24 -0700 (PDT)
X-Received: by 2002:a65:580c:: with SMTP id g12mr4883010pgr.257.1601416044564;
        Tue, 29 Sep 2020 14:47:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416044; cv=none;
        d=google.com; s=arc-20160816;
        b=zFadwAaKFASbp+e5Lhs40j3u0nu/4XDqeOmRZzxE/MvcRVY3TUkUTrQwuqdWWrZxCG
         XNRBHaTYa+BJXoKQ/aytFFYlflUbw9tSlzuRA1eGwuuZaPeMAuuj5gzelUVxpG2zRkRC
         ZRcwJG7GPE9Bo4Vg4tRWHJCbm/mThtfGyb41jNT89lmofTn3HytheIVMrY6qmGICyvIh
         dDOqzMr6V/eCfjKKuKtjfTgov6uaZzbcjVjKl94qx5C+28b8oGhZddpv8wsUg/kNYnSU
         Oisjvfe7+kF2QRTJykdFXkvmGU1iHy/vlmv7kXKhFfYR5jl2iLOYXj+rUWAfamIyYzZa
         w/jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=SMR2/Zr7m9btCDRB/0Z/w2MTVhq/37ih+00xVpNqJoE=;
        b=C56MiLpP+PFSYWKRCuI+INu5v5GerYe110HDzC1ATMXslxlIlvHordpsVfhH4ZY7rX
         M9opDVivpxzqiP4WwyC6U3JD8yuXIzDasbsAJsAWgocz9uuVaHKl+kzQ7MTw+dKJ5mwr
         32wmOtDBkWHjoyhh1UyRlrsn4AgjL1whf9xUhQo709wDeB/V2DuOs4Cg3kutzoedLh4/
         f0Zr6m1QCKSpN6kiyu76PrqbCJiNEBhRWFeZ6JvB6bjYaDwr+N+vkp2uHy4ZAeK6I6w5
         5R8+NwH9Bv9O3xGOE1ywXgpy3LpO2uFzIGHJCyQ9MG/JlZZdLBe/vzFvjmsXd0m7aUYm
         gleQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BzhS1T0x;
       spf=pass (google.com: domain of 3a6tzxwwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3a6tzXwwKAJIEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id k65si527865pfd.1.2020.09.29.14.47.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3a6tzxwwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id f4so3362398qvw.15
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:24 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:9a4b:: with SMTP id
 q11mr6580741qvd.29.1601416043698; Tue, 29 Sep 2020 14:47:23 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:24 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-23-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 22/29] efi/libstub: disable LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BzhS1T0x;       spf=pass
 (google.com: domain of 3a6tzxwwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3a6tzXwwKAJIEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
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

With CONFIG_LTO_CLANG, we produce LLVM bitcode instead of ELF object
files. Since LTO is not really needed here and the Makefile assumes we
produce an object file, disable LTO for libstub.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 drivers/firmware/efi/libstub/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 296b18fbd7a2..0ea5aa52c7fa 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -35,6 +35,8 @@ KBUILD_CFLAGS			:= $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
 
 # remove SCS flags from all objects in this directory
 KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+# disable LTO
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_LTO), $(KBUILD_CFLAGS))
 
 GCOV_PROFILE			:= n
 # Sanitizer runtimes are unavailable and cannot be linked here.
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-23-samitolvanen%40google.com.
