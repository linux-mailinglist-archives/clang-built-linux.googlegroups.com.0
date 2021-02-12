Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBHFZTOAQMGQE6I5VYBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA8731A5A8
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 20:53:01 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id v108sf230367otb.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 11:53:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613159580; cv=pass;
        d=google.com; s=arc-20160816;
        b=NrkU/MOl7Vq0TMHB4Czljeasarcu0dVYjWToENkNpD37Ps1UDiGSTW81JyHbDKIVcy
         c/t8QtS4jyyXsiaf7CgvcInMn9HuClf0VRrGIJNpktrLj7hLSuX2twiuIeSoyHYWOcUy
         0pd1u5OPriAQJJEtOCcB+1f/GzMRRszsXiRhEELB+yama6ZHJSDscj/vEF5w1XTgRLiJ
         hYhDjRN8R8fiG/wcUFzS7qW+w47mQ9pb5wRs4v1KwT5HrWalB5Qp0Da55ugHvVR/DhoC
         C0NtXUu2Rs+fzgigOICYIwVXntkEDk/FiW/21wMIErAXaQv0QN4m5CMqGbLlrIX9oqlQ
         b34g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:sender:dkim-signature;
        bh=sYR97Jlqdpz711ahSxlWVt8pBvsmSGrW2ieJBRdkeiA=;
        b=Vzzgg5Qj8mpepDTZnGLq/r9h9KqQNhocB/nH2qWwurnmlZf5y+G7XXGTmATfioNUDB
         PuQMHrp9pOUJ099NnVywQIySQN9AjwWyOdxdcKpQsv68C3SnT51hfXGkJY6BYbFPg/7G
         gyHFGRzGhdvz4yBTloH6bHOyF3gCZmfXtI34FiwldJkextj6dsYmRHAL0FsUqNxgEV8S
         7sIdf6bwZUN55iL6Ao639cqfNy3IeCv5L6aBDjZPujQsg6zkSjlL7mFJlLhw+hkup3B4
         qQWBd7Zg7NRpipAoG3x1ySF9kzjXkzlcVe4uw8KMr5uV/T0h3LcNiWUmgqStdsfqdMnc
         RNag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CEPFGAAZ;
       spf=pass (google.com: domain of 3m9wmyackefyhgylaygemmejc.amkajyle-zsgjr-jglsvemmejcepmsnq.amk@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3m9wmYAcKEfYhgYlaYgemmejc.amkajYle-Zsgjr-jglsvemmejcepmsnq.amk@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sYR97Jlqdpz711ahSxlWVt8pBvsmSGrW2ieJBRdkeiA=;
        b=KGGUiVJ/H1mtlFyMtmmTi4slawLH3Ij4ivo9xpUsm00kPLDjDjcpAm9tkFsP4pf9yy
         68B9TO0QUDmPFacyAwLr2OI6ezPevNiPFJcxN3242rf/x0g7xHLFhGfpbDJzJiOUEau/
         ZBp1j9iz26ig9/a0zDPhK/3hnUoRya4AAbfz2PcYf63fT3TbktS7WTqUCLnhjyPwiIot
         8i/4f4PCcYz15f/M4SR/wMAICCMtC1nBREZI1YpicJ6xaQTtXk8xLkw2ZAbmyn1LHfhF
         Ix0sARZbZxI+iAZn71VDSN9JL9KJCegkB9DbIt1+3CbL38acHByT9tTnRikIAs4zqmCl
         IsUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sYR97Jlqdpz711ahSxlWVt8pBvsmSGrW2ieJBRdkeiA=;
        b=GYexO28ZPQV0SBm5ykM7t0bdAGYe4wPrS/Y4ijqtNX5UKuHlah7DkVQLthQLUKkFMf
         QbrDHu+cMFs4NMqKAifnDhqQuo7iRtmiIXG53HML00tgCbRqslAxr0kRa9Ayp5IfuAi6
         wqVzRcZFSbB/l9eMUWY0PXoCgzMDsbu/yYmBlGZDLozChAu3goXyZ2FoKdQb/I6w81lr
         hyNMrah3qMFN8Wcig212RYvpTirvPFiKoh2Zl6k+g5VWKRSS0lbCZvz5NknpULy5qf3h
         eqRwmnyCaXK5E8y8co6u5WwhVjAoBC2sWMEzwvWJhrrImS6PRtFzQP1pJaM+losCSPyp
         JQJQ==
X-Gm-Message-State: AOAM532Xeyf0MCVqNw2+PSd0C0u1vi4XPxW+VM8OyWJSA0aiZJhhv5eg
	osG8Z4Bw5gLaOftitMA4Duw=
X-Google-Smtp-Source: ABdhPJwHAYQKOgtWLtDp1VXhZ+sLyW3/IegAcfygKIU1FQ0fLlL0zy+EZODzKwwmklhA+aRVr1S/Rw==
X-Received: by 2002:a05:6830:8d:: with SMTP id a13mr3073135oto.119.1613159580541;
        Fri, 12 Feb 2021 11:53:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1014:: with SMTP id 20ls2475667oiq.9.gmail; Fri, 12 Feb
 2021 11:53:00 -0800 (PST)
X-Received: by 2002:a05:6808:1383:: with SMTP id c3mr769060oiw.153.1613159580150;
        Fri, 12 Feb 2021 11:53:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613159580; cv=none;
        d=google.com; s=arc-20160816;
        b=wYFzZXyySioDn8iLULwGn/xbI6znuNHFxdg/8wqR27s2e/lBVVx9mrLrwP9KS5itB0
         1CZ/N2dFjg8+ILoCBq0K6E4S8KwfGmX4GQYDNzvjlQ/3WT9WsDqn5An95AhiFJrcXhcr
         ESrtgIovPceE6ZZPA7KgC4rN9CxgG043Et8ycSpUt06gxGwrbTDNLr6+PeIEAZbp2JJV
         VD1Hb6wEKREqDdOX9QcpJ4rpY3E0ITFLhIgiUoQOg2VpLJvXXRH4LObc28kUxHxyXV3E
         T7uy3b9CTDiCiKdIOVtgfkdhuO29OARbTo4JKYh2pjTGcF7f7Z36G37TxjZIzSbky0Br
         TDFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :sender:dkim-signature;
        bh=i9bXYkYkNrS/myxp10YTd6xQPzarqSevtONWXeGJPlg=;
        b=l8dJ9+SlpDP2Uya6TMG/1wgrd1YU7bFJz2FkrOST4GRB6AOPBfXluukmkYJqNzxq7a
         5cTK8AU/5TqO51OHFnr3TXZuUiKOXrx09ktYedk2MHnBIQbm5BbgQIolsBAU/G/fLx+B
         qagUmMn49RPQYXfyHGvDZhNVWa6CyD95lDWpYY95BT3wLDm8tPsvGE3cy3uNwHXb8Nvd
         K89Sh1WvaDyxZbLxhuo/6ubnqtkDvxjUqkilVJ84kBQJWIHN4x6iOYWIYeo0CCuRbrLm
         XNNPZO1DhJ4LQ8Cl95dGmCrU4QOA6WD9qPjhT4mczZb3lR6Cym/FOvK/CeVYCE2vriFZ
         HRWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CEPFGAAZ;
       spf=pass (google.com: domain of 3m9wmyackefyhgylaygemmejc.amkajyle-zsgjr-jglsvemmejcepmsnq.amk@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3m9wmYAcKEfYhgYlaYgemmejc.amkajYle-Zsgjr-jglsvemmejcepmsnq.amk@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id b11si602902otq.0.2021.02.12.11.53.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Feb 2021 11:53:00 -0800 (PST)
Received-SPF: pass (google.com: domain of 3m9wmyackefyhgylaygemmejc.amkajyle-zsgjr-jglsvemmejcepmsnq.amk@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id c19so705944pjo.2
        for <clang-built-linux@googlegroups.com>; Fri, 12 Feb 2021 11:53:00 -0800 (PST)
Sender: "jiancai via sendgmr" <jiancai@jiancai.svl.corp.google.com>
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:8cad:e5dd:2b3c:2e84])
 (user=jiancai job=sendgmr) by 2002:a62:3852:0:b029:1da:7238:1cb1 with SMTP id
 f79-20020a6238520000b02901da72381cb1mr4445517pfa.11.1613159579252; Fri, 12
 Feb 2021 11:52:59 -0800 (PST)
Date: Fri, 12 Feb 2021 11:52:53 -0800
In-Reply-To: <3f61af0eee9b495e8e8c032902d033c5@AcuMS.aculab.com>
Message-Id: <20210212195255.1321544-1-jiancai@google.com>
Mime-Version: 1.0
References: <3f61af0eee9b495e8e8c032902d033c5@AcuMS.aculab.com>
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
Subject: [PATCH v2] ARM: Implement Clang's SLS mitigation
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: ndesaulniers@google.com, manojgupta@google.com, llozano@google.com, 
	clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, David Laight <David.Laight@aculab.com>, 
	Russell King <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, James Morris <jmorris@namei.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <masahiroy@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, "=?UTF-8?q?Andreas=20F=C3=A4rber?=" <afaerber@suse.de>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CEPFGAAZ;       spf=pass
 (google.com: domain of 3m9wmyackefyhgylaygemmejc.amkajyle-zsgjr-jglsvemmejcepmsnq.amk@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3m9wmYAcKEfYhgYlaYgemmejc.amkajYle-Zsgjr-jglsvemmejcepmsnq.amk@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

This patch adds CONFIG_HARDEN_SLS_ALL that can be used to turn on
-mharden-sls=all, which mitigates the straight-line speculation
vulnerability, speculative execution of the instruction following some
unconditional jumps. Notice -mharden-sls= has other options as below,
and this config turns on the strongest option.

all: enable all mitigations against Straight Line Speculation that are implemented.
none: disable all mitigations against Straight Line Speculation.
retbr: enable the mitigation against Straight Line Speculation for RET and BR instructions.
blr: enable the mitigation against Straight Line Speculation for BLR instructions.

Link: https://reviews.llvm.org/D93221
Link: https://reviews.llvm.org/D81404
Link: https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/downloads/straight-line-speculation
https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/frequently-asked-questions#SLS2

Suggested-by: Manoj Gupta <manojgupta@google.com>
Suggested-by: Nathan Chancellor  <nathan@kernel.org>
Suggested-by: David Laight <David.Laight@aculab.com>
Signed-off-by: Jian Cai <jiancai@google.com>
---

Changes v1 -> v2:
 Update the description and patch based on Nathan and David's comments. 

 arch/arm/Makefile          | 4 ++++
 arch/arm64/Makefile        | 4 ++++
 security/Kconfig.hardening | 7 +++++++
 3 files changed, 15 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 4aaec9599e8a..11d89ef32da9 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -48,6 +48,10 @@ CHECKFLAGS	+= -D__ARMEL__
 KBUILD_LDFLAGS	+= -EL
 endif
 
+ifeq ($(CONFIG_HARDEN_SLS_ALL), y)
+KBUILD_CFLAGS  += -mharden-sls=all
+endif
+
 #
 # The Scalar Replacement of Aggregates (SRA) optimization pass in GCC 4.9 and
 # later may result in code being generated that handles signed short and signed
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 90309208bb28..ca7299b356a9 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -34,6 +34,10 @@ $(warning LSE atomics not supported by binutils)
   endif
 endif
 
+ifeq ($(CONFIG_HARDEN_SLS_ALL), y)
+KBUILD_CFLAGS  += -mharden-sls=all
+endif
+
 cc_has_k_constraint := $(call try-run,echo				\
 	'int main(void) {						\
 		asm volatile("and w0, w0, %w0" :: "K" (4294967295));	\
diff --git a/security/Kconfig.hardening b/security/Kconfig.hardening
index 269967c4fc1b..9266d8d1f78f 100644
--- a/security/Kconfig.hardening
+++ b/security/Kconfig.hardening
@@ -121,6 +121,13 @@ choice
 
 endchoice
 
+config HARDEN_SLS_ALL
+	bool "enable SLS vulnerability hardening"
+	def_bool $(cc-option,-mharden-sls=all)
+        help
+          Enables straight-line speculation vulnerability hardening
+	  at highest level.
+
 config GCC_PLUGIN_STRUCTLEAK_VERBOSE
 	bool "Report forcefully initialized variables"
 	depends on GCC_PLUGIN_STRUCTLEAK
-- 
2.30.0.478.g8a0d178c01-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210212195255.1321544-1-jiancai%40google.com.
