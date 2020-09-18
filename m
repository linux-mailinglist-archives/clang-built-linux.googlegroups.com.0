Return-Path: <clang-built-linux+bncBC2ORX645YPRB45KST5QKGQESRJOQQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id E25DE270663
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:48 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id i3sf3478658pjs.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460147; cv=pass;
        d=google.com; s=arc-20160816;
        b=nwa33KLI/xA86y3M+jmDKKS7aJEOjlDObpBvFYAaK/MJd8c35zl0r0LMl5f/tIHPhj
         3dgHYzLkhDGie/+7E5xsoZHxzUH6Df+D8f1DebpAEpacY2rTeJ9erSrfwqPMvyMeWMj/
         4nVNS2fqlPi6+zLCzLWWoLMkcysjdOF4/qcaOUNy3UWN8TYZFaaeffzX7Sm0dPI3YCFo
         pSDx2tfY9QbRwWEV/Zb5nZVwfCxv7pjapmhB4STjsdnvooxKuxb02EPq7qdu3fCUjBcW
         6vcH7zVVHQx2YA54B0X90vSIP8r4FfCI7Z4EkoI/NiKmcnY/LWA5cdeJnx4NkIHcjlOh
         mepA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=eEnoUL1oZuVWh8EL/H/r5pXRE5lfHfP4yUhUjgwONO4=;
        b=QUu7GyCxi50fzrgbbp1mmQGrUek/gJYPG8U7y6ffNXwH+14hyuE2oeW34wmJ9X2ckj
         YIDEEpUBPUeri8KUoMdNJkYClDlA7g4pvq2hTBZh+k6jVwyKokdjP9eULeUEw5wZOYjn
         iTXR7UHBk6M+hiWd5OEhgOl5BmtOFyQaAGZ0WrkX33sGDERmg99rONcHVYTVNUQQixx6
         E77nk27luSmAYIdZHDgZg3SAM+np1nwLwm5XVU4uwT/ObNC/5AOizGpeE1iRdI9A43zz
         yBMg2ttzK2L0/U1jFy1v2uo7DPOym0BSedmuNK/LK2e5eMj221R8iDYHaZcKbqz05A4L
         6IaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OCV4Zse7;
       spf=pass (google.com: domain of 3chvlxwwkadmhpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3chVlXwwKADMhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eEnoUL1oZuVWh8EL/H/r5pXRE5lfHfP4yUhUjgwONO4=;
        b=GbzkA3iDL1dSe8FAPcf72rHFyJ/Xgco86xpMCVMBkDfahFyRTZASFJS0yf3lj/8yg6
         OauwAS71DdIE0Gl7NlVsw5ZZqgMnxzog39xYP03Z/sea8xn2S/oqKclZ1reZdBWRpETR
         Cjz1WHe5YCKoG8q+ve6G+YeUwr2e0MZgGDTGhI2PSM9e59soiBa5HoFzYNUo28RmSOre
         qQHhR3j+D1kL+nD8vXlI80Zc07ZS0DYElv1ILA6H7ri4bBBuJLScOZVPY2yzFX/yT9Hq
         n2Uh7x0DWGK2at9+l04GiT+0jLtUXeiu7mLUxcQXugIfOCpzkbzsrj8MmuyID2RRWMU2
         II+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eEnoUL1oZuVWh8EL/H/r5pXRE5lfHfP4yUhUjgwONO4=;
        b=nv/UiF/ZIEcAZaAu6lPb+vkM4kFDykjTQAFEsTW6HiiGSEsxNcIZ9UK/WicxqzBDB+
         SiQLApGn5heOqkUgNIm/0PZm1XxRjQqZEyQJWnJtbEDSdkGHC4sR/3h8XUdmxyMCILN2
         LX5ZrkiaitgEytCUuTYnOoSXR5u6jyMVfp6itheCGCznxlBE9Blj8N+aMa32BzovUopq
         OAaQb/pva47XYZ69yTXwfrl2Umn0mF2rsgpH/J6XN+/XLWi9O/T6AyLFCTcSV+a3y2++
         GPZItY6qS3CxwIqWYO6R8XA2SHnQx7Q45bXak+HLIBzxiEjmo3evHAP0E8jaB1W/8GUW
         oJhg==
X-Gm-Message-State: AOAM532/L39cNJqxGnLjeGkHM+PPbXK9ldyPaM4+ka6+ZGYxJNfGhzz2
	utFQntEEiJ7LIN1LNZ1QlM0=
X-Google-Smtp-Source: ABdhPJyfCco9BgCGgtb9tdRJLRzdXT7/w1KEShR1a1N6TNYG/gLU1vCE6RZZCiOlJ44Vq9mDm357ZA==
X-Received: by 2002:a17:90b:891:: with SMTP id bj17mr11106486pjb.11.1600460147697;
        Fri, 18 Sep 2020 13:15:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9706:: with SMTP id a6ls2539596pfg.9.gmail; Fri, 18 Sep
 2020 13:15:47 -0700 (PDT)
X-Received: by 2002:a63:5e01:: with SMTP id s1mr24338026pgb.421.1600460147039;
        Fri, 18 Sep 2020 13:15:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460147; cv=none;
        d=google.com; s=arc-20160816;
        b=Di5IBr5cCeG+ilfahX3TKATaSNMr7EInbSiTNtkJJvrE87I3yydTX2HuKiDjFzAzUI
         ZWD999OCaPJQN9QhIAgLpVJ+qso+MUhViND3WuH2b/UW2bPR42RCdbESKdrE22Tt6oi8
         qSxfJQ0NrtfQUo23sPQtHyiuQeo1rchAVSghWNe5nKwizwbxAa4S4poxo5LKcS0eZKnq
         ktICrZH5Dq6BjwrrjhQs5ia9WeCpmnjmfCn+Yw1pog7PfpG2PnDUAy88U46UB7FlPIEp
         faLSeA5CFHhsktplAsg6ZeC3wd3InYsVKh74h1BDfMCdcaRcWGfg9YeTnBnQppaAOxg+
         b9gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=EemRcLRZpf4yhUCeConvvCXzQf4ZIu8nUiUP+DipgvE=;
        b=PzQBnKH7Bu2lYA4gr0XlWv4ozux2fytzTCHMXlhslw7qlDL29+Emg3wkBr3Xal5d4d
         tcOuRkwdl8JXWexdA2EVHsJfoGA+inTLs5jJHSn6PyPnnOxwuei2THH+etjOsZ5pHpc3
         34LfNYp7GMwwTn1SglmzWzY0vpzlc63JrXOjGPur4LiACAHUTGo3abB7oGVQz98sdXSE
         MziqoBabxv6ONS5ogqmustcgx9cF/fRBgwIRmIJ9V8oOSl6x4Q8Ngc96QKonatCjI1Bi
         3TSchO8uWvdJ+a+pHKPsb9lCPpweZ0gBQN02heLRmuAquEPAKo/JECYRdXDFQsvhmKbk
         quQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OCV4Zse7;
       spf=pass (google.com: domain of 3chvlxwwkadmhpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3chVlXwwKADMhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id i4si411510pjj.2.2020.09.18.13.15.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3chvlxwwkadmhpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id 125so5614723qkh.4
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:46 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:4891:: with SMTP id
 bv17mr34873677qvb.20.1600460146163; Fri, 18 Sep 2020 13:15:46 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:34 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-29-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 28/30] x86, vdso: disable LTO only for vDSO
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
 header.i=@google.com header.s=20161025 header.b=OCV4Zse7;       spf=pass
 (google.com: domain of 3chvlxwwkadmhpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3chVlXwwKADMhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
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

Disable LTO for the vDSO. Note that while we could use Clang's LTO
for the 64-bit vDSO, it won't add noticeable benefit for the small
amount of C code.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/entry/vdso/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
index ecc27018ae13..9b742f21d2db 100644
--- a/arch/x86/entry/vdso/Makefile
+++ b/arch/x86/entry/vdso/Makefile
@@ -90,7 +90,7 @@ ifneq ($(RETPOLINE_VDSO_CFLAGS),)
 endif
 endif
 
-$(vobjs): KBUILD_CFLAGS := $(filter-out $(GCC_PLUGINS_CFLAGS) $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS)) $(CFL)
+$(vobjs): KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_LTO) $(GCC_PLUGINS_CFLAGS) $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS)) $(CFL)
 
 #
 # vDSO code runs in userspace and -pg doesn't help with profiling anyway.
@@ -148,6 +148,7 @@ KBUILD_CFLAGS_32 := $(filter-out -fno-pic,$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out -mfentry,$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out $(GCC_PLUGINS_CFLAGS),$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS_32))
+KBUILD_CFLAGS_32 := $(filter-out $(CC_FLAGS_LTO),$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 += -m32 -msoft-float -mregparm=0 -fpic
 KBUILD_CFLAGS_32 += -fno-stack-protector
 KBUILD_CFLAGS_32 += $(call cc-option, -foptimize-sibling-calls)
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-29-samitolvanen%40google.com.
