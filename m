Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2MX5DUQKGQEX2BVIVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 59468758A0
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 22:07:06 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id c207sf43270483qkb.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 13:07:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564085225; cv=pass;
        d=google.com; s=arc-20160816;
        b=oAseKl4swPbMlODvJvaeK+u/osT2leZJdYLjoCsBU8jR7kopMChF69X00BPlGU49RI
         f4yxiNMJCcfKMS00p0AR7Qlp/wzmIiTI2IToqxakbcFm39A1qjBluT9IBk7KLQS3BYi7
         ljv2DbdlXMSOaOfESVtCUE4S0BlEGYC+6vT9HM8rtFXDeBEL0KcZp3Y7bO2Ip2Uvf3hY
         P9QIIKnGmchKsVP9HgC/MRMLVjTch55EWR3vI6y7SM9uaAv86BZR2Wv4jqWhrV2HFbQI
         Qhwszk2/G6OOqHLpabpkF4X9cGo1wURDyqLWv8rDFWNwoRkwZ7/LHSSJ6xDuKKvXQMA5
         84Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=cBORyiKLi1xHA8qt8So3wgANh52qQhVR3M1n+RBrc50=;
        b=YHWqO6vU+6Arhn26AR+Gk6DxarBVxrf4n9WSO710gMP/mqZqXHF//NbdbyDEJqzYxk
         DnFNTdn2Q62+EMddU80ZF57fyDfssfNsGNBbPvSMyN2PQEFCEcpTqCUMczQwK4qBg+2H
         hQgZynd6wzI1ev20a0PIjvXWC1wNMd0QhDhU07CwXMBw/UMhXpluYYDR7Kx6ekolwoyf
         ganWrfuB9776DDn/wf+pY44nAELyCLPoKkMecK78OHuwFBB8WeSAjZLNkSh4vV/LKbyY
         z8EntPAebtVNit+IR82BTxiektn/KxBOjXmYFRvLgaQDa2NEqCdWEMlb5hKhTHYMqIox
         dXxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sAHxJvpR;
       spf=pass (google.com: domain of 36as6xqwkancg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=36As6XQwKANcG67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cBORyiKLi1xHA8qt8So3wgANh52qQhVR3M1n+RBrc50=;
        b=eE9Z5b1ggeLK91tpEmN3aX/rogK5ZQ7jlo5ezMdP/1XGqUpvGCpDEkJHfuridwHKgr
         oYmk7B0dyxzjPNB314HK+ExK1vvHwASzA985+VkQVPcOUA3gbCe5CX/hNnG4wh/mZprS
         akn8f8u/CtCtD+aVcXAjdpEODCr83Ib3ZpcUo7G2aieJgDCUmVUF7GisD44IrssiY28U
         LyyXsqHpO+lLnMKGeDwOktPx3ow0fmW72m/qKCBbcPWZrdzHjTDmiPELKEP6LT9Py4m2
         6tsA3bWklAkKfg3GOKmKkZEWa8OK3/q0xlsGGIxxbodfASoKVEm/x5Wna5gg5Oxp0fuq
         PiTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cBORyiKLi1xHA8qt8So3wgANh52qQhVR3M1n+RBrc50=;
        b=VH0oa0cqcXjzZoyse38jOfI/bNHVak4L7Mm16ZwZt/vhCTuOZi0LW/M0w4xElsj0Pn
         yvSXPuK+Su1uKZX0doierbcHikzmK4PCfjiXvGBkm/1KV8zrbbzEEFtGZql4TfoTclf4
         5wclgHJnSCscsn9gxgUGUW1ysYshkwg1mYBeOYuuwf3+VZmv5/Y9MkHEgCWCuwVoAyxK
         zqnnMehUVkf4pOYMB03n8shcgEjtAOTdfJ4XD00QqJ31oF7d7X7GiZ1B9H1gwjqUIMUw
         hl4ftf3il7J3Ks0CUqp8zFAxy/3rhCqzcJMjrCIKy6huoRFPqzCMH+Fx+ELYjr24lf9r
         uaDw==
X-Gm-Message-State: APjAAAU7DhrnTRFf2wff8OXksq+e8s6mHz9xohfry2r+/kcu6Y7ySAFu
	nmICOxzZ85ok+hkTLwLVDYc=
X-Google-Smtp-Source: APXvYqxVS19y/KW0Hk3gYXf/UOe1G6DIqwV8RlTOz0wkWcoC95kX7IPmwuGoTIlwcETRDRhdYcRfBw==
X-Received: by 2002:a37:5d07:: with SMTP id r7mr58493770qkb.4.1564085225470;
        Thu, 25 Jul 2019 13:07:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a297:: with SMTP id l145ls664220qke.12.gmail; Thu, 25
 Jul 2019 13:07:05 -0700 (PDT)
X-Received: by 2002:a05:620a:247:: with SMTP id q7mr63586450qkn.265.1564085225245;
        Thu, 25 Jul 2019 13:07:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564085225; cv=none;
        d=google.com; s=arc-20160816;
        b=aHcG74/7mF+WcLyu2U3kAnTTZIbIcV/cpBjp26UBBh9ncf5GjvBMX7L1M2DUgfpFZK
         EE7rNXCFfHLjWC4fA2JFHnwQuedXXbWBtA12+xgQ6OE74LojcnV0jQDHdYKfn1oFtOIv
         1jljilIpJWH7qBILtn51V2+sMz9pLUYNcTBwzuMu0uFv+1zq/Xfg9QhfyhROEwHTCD89
         lbNpZHo8Na9wXWRu/efxj7ITXJVNBnHHkXzOZlRfQNmml2SpTvVLnHeGmhRyCFyRIP7A
         T/3OWSedsnnivmr9unEwpz4gru/Ht6GThEAg4fxREXtzvrdY3CPzs2Xal2HD6aaBHmrd
         EkYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=tN5OGADsh/gbQB0AixreGdFmpm9j6/fownra3N7HOyA=;
        b=YOa9IBOq9jPqDq3gSc7YLpcp+atPiXVTMCn+IJR+NbD8eZMHHcSZrpmP+gvR+34Vbk
         ZJXjFEtVyi9EQZyarwEh2FoubUjUrOc3J1oZ0Ia3kW4KYadKV9f5jbl8TM/DIyVYASye
         Ao0WmC5Vau+4zlOb9KlXo718N+urg6h0M2v3v18vlmM7mQdhwWQVWVj/FhZtI0D6oTgb
         g+89lt5lOVX/TRIh1CiBUSqry1GyzUfcHhKutfkojaNH//Aqv4IfEx1JT7Bfu8mEnLv3
         6VKoWaYY8xOnX4prkwxtb7u7e6dtoyO6ELuxW7n0LGVVpuS+odOFCQTczotayLWCEnI7
         SBEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sAHxJvpR;
       spf=pass (google.com: domain of 36as6xqwkancg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=36As6XQwKANcG67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa49.google.com (mail-vk1-xa49.google.com. [2607:f8b0:4864:20::a49])
        by gmr-mx.google.com with ESMTPS id v19si622952qth.1.2019.07.25.13.07.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 13:07:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 36as6xqwkancg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) client-ip=2607:f8b0:4864:20::a49;
Received: by mail-vk1-xa49.google.com with SMTP id o202so22040186vko.16
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jul 2019 13:07:05 -0700 (PDT)
X-Received: by 2002:a67:7dd8:: with SMTP id y207mr59917081vsc.67.1564085224802;
 Thu, 25 Jul 2019 13:07:04 -0700 (PDT)
Date: Thu, 25 Jul 2019 13:06:18 -0700
In-Reply-To: <20190725200625.174838-1-ndesaulniers@google.com>
Message-Id: <20190725200625.174838-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190725200625.174838-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v4 2/2] x86/purgatory: use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: peterz@infradead.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Vaibhav Rustagi <vaibhavrustagi@google.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sAHxJvpR;       spf=pass
 (google.com: domain of 36as6xqwkancg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=36As6XQwKANcG67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
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

KBUILD_CFLAGS is very carefully built up in the top level Makefile,
particularly when cross compiling or using different build tools.
Resetting KBUILD_CFLAGS via := assignment is an antipattern.

The comment above the reset mentions that -pg is problematic.  Other
Makefiles use `CFLAGS_REMOVE_file.o = $(CC_FLAGS_FTRACE)` when
CONFIG_FUNCTION_TRACER is set. Prefer that pattern to wiping out all of
the important KBUILD_CFLAGS then manually having to re-add them. Seems
also that __stack_chk_fail references are generated when using
CONFIG_STACKPROTECTOR or CONFIG_STACKPROTECTOR_STRONG.

Fixes: 8fc5b4d4121c ("purgatory: core purgatory functionality")
Reported-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Suggested-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
---
Changes v3 -> v4:
* Use tabs to align flags (stylistic change only).
* Drop stable tag, patch 01/02 doesn't apply earlier than 5.1.
* Add tglx's suggested by tag for the tabs.
* Carry Vaibhav's tested by tag from v3 since v4 is simply stylistic.
Changes v2 -> v3:
* Prefer $(CC_FLAGS_FTRACE) which is exported to -pg.
* Also check CONFIG_STACKPROTECTOR and CONFIG_STACKPROTECTOR_STRONG.
* Cc stable.
Changes v1 -> v2:
Rather than manually add -mno-sse, -mno-mmx, -mno-sse2, prefer to filter
-pg flags.
 arch/x86/purgatory/Makefile | 26 +++++++++++++++++++++-----
 1 file changed, 21 insertions(+), 5 deletions(-)

diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
index 91ef244026d2..940f043a4d97 100644
--- a/arch/x86/purgatory/Makefile
+++ b/arch/x86/purgatory/Makefile
@@ -20,11 +20,27 @@ KCOV_INSTRUMENT := n
 
 # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
 # in turn leaves some undefined symbols like __fentry__ in purgatory and not
-# sure how to relocate those. Like kexec-tools, use custom flags.
-
-KBUILD_CFLAGS := -fno-strict-aliasing -Wall -Wstrict-prototypes -fno-zero-initialized-in-bss -fno-builtin -ffreestanding -c -Os -mcmodel=large
-KBUILD_CFLAGS += -m$(BITS)
-KBUILD_CFLAGS += $(call cc-option,-fno-PIE)
+# sure how to relocate those.
+ifdef CONFIG_FUNCTION_TRACER
+CFLAGS_REMOVE_sha256.o		+= $(CC_FLAGS_FTRACE)
+CFLAGS_REMOVE_purgatory.o	+= $(CC_FLAGS_FTRACE)
+CFLAGS_REMOVE_string.o		+= $(CC_FLAGS_FTRACE)
+CFLAGS_REMOVE_kexec-purgatory.o	+= $(CC_FLAGS_FTRACE)
+endif
+
+ifdef CONFIG_STACKPROTECTOR
+CFLAGS_REMOVE_sha256.o		+= -fstack-protector
+CFLAGS_REMOVE_purgatory.o	+= -fstack-protector
+CFLAGS_REMOVE_string.o		+= -fstack-protector
+CFLAGS_REMOVE_kexec-purgatory.o	+= -fstack-protector
+endif
+
+ifdef CONFIG_STACKPROTECTOR_STRONG
+CFLAGS_REMOVE_sha256.o		+= -fstack-protector-strong
+CFLAGS_REMOVE_purgatory.o	+= -fstack-protector-strong
+CFLAGS_REMOVE_string.o		+= -fstack-protector-strong
+CFLAGS_REMOVE_kexec-purgatory.o	+= -fstack-protector-strong
+endif
 
 $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
 		$(call if_changed,ld)
-- 
2.22.0.709.g102302147b-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190725200625.174838-2-ndesaulniers%40google.com.
