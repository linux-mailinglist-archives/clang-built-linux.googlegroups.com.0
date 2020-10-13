Return-Path: <clang-built-linux+bncBC2ORX645YPRBPXLSP6AKGQEXC2TBTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3126828C603
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:33:03 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id k6sf11771889qvg.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:33:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549182; cv=pass;
        d=google.com; s=arc-20160816;
        b=XtF5bcGJFGSyrvHdIHu9Wg+6nYM+p4IQn5NNSEEtpvnts+y9rVPX8r0/DMrPqL3Rcq
         svH0UkwULgDpMgcVFUjdsUjin0pMHyinOoQGJmoNfp9ocO07KRuVjoAYA+3c4X+gcZaU
         Cc510S3g975TKF6Za8zPipfZjstr9ZUx0Nuz6JO/7bS26vYsNnRYlA5MqNS4tdFpNlpd
         9ezzHxyF0sDPWGzSLZvvjkN3UxFNM1CxWFutSz8aLrM3Ou74s4S9MgCKw8vuGyhSXNJk
         5wODxwklnXA0zvx0oeWHH1nh2dZB5T1uEmyKap89UlWaMrAqRynY2/VsM3SfSSoSz91d
         k2Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=nK+PYAzyqbwDzW0z6t5c/wI21AXSMDu7MPaeVzKbjug=;
        b=FR4gV+L8380111YFojh9RC5UNnoFvBDG5mnuawyaREklTy5PrJzo3rlJwdroaD6/Un
         sZl3bXij/UHik8TG89RReWO2DK/W82Qeu/Q9xnfHOhEve6Bl64Zm0hM7+yjMaSguFCE/
         LPXOQVNKuGnmUoQZ/Gmjx1GzBh+EI0+bqgrq6fD1vjIPKwHIs/zVj+ooJTGjwRS7OiTx
         WLXRYAAdztWZ5fPFYEpcLPyhb0nR7QOT9/Em+O/5BZhzDP4TCh6fAHb3K8jyqm7NLlyL
         QFFCCpLTs2aQMZbXFQJqV4dtU6M8iioHT/Ll3zGbD7FL2ewt/9dPFtC3S+OV2/WOSy0u
         9dMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H1F377i8;
       spf=pass (google.com: domain of 3vfwexwwkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3vfWEXwwKAL4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nK+PYAzyqbwDzW0z6t5c/wI21AXSMDu7MPaeVzKbjug=;
        b=Z/xqTipOFIOVe53Y4yXX4O5sJVlV1HWkvpGwu62mw44cJijAws37fr7VV0ADfLXkjt
         wc5uH7hK1jnXAOVyz6gLTx+IAWlOdV3C+Ge8DDbMtBJXePk4GqIdPzaskGTMA7Ib+DYN
         QOLdPOH2FmSAXHdwWxx/Rnr2BBLpP2omQPRnr3cSGVro8lnhdsjdfEIklPnWlPUNxfho
         oRAPpkanLLqIH9oHfKgVxE3Abax77FazQ7qqaoJu+ekTDtWPdCoxvylBZoYqoWhdxgDv
         bNyCqa88olVSXbWqFfXfVLfwci5HI1lzFQ3V5yLpsEokdK86yXXYwevE7AQI8WvsFdHp
         uyPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nK+PYAzyqbwDzW0z6t5c/wI21AXSMDu7MPaeVzKbjug=;
        b=jq8XirTifiwC8zTGn3lmaSjYbllS3+MR5OxQ3h2aAVQr9F8Jo1Dg8JYHgn3ThxBKxn
         fR/+nSPAZque1VqKx9S+qwuTUWH+4nqaR3itaY5bLvXg9DsxMJKFKafP0swW6MtK359Q
         vdInx7RZWIC6rcAcd/wbbzXgWeI6+LJpH5IA1TspPi8NMRV/JHuGGYEzqwIvfjO/G4F4
         5quaVuJtZU+9sqb0iI70m7McRMumrvj1l0J3x4/7qQ7SzTHR8uybixyefwrDCeYr7Kd6
         BhXLwLFtsPoKTa/Me2+vN/Dq5DHeHZ/MRpNm3KXnq6zP4rFBXbWEiz3YbK0HdFfMRNIW
         agtA==
X-Gm-Message-State: AOAM5323FTDh2zLlZom+A2Z+cWSB99B6Cu0c72bmIlrmfEGUpqCeCSlH
	x02I6iHD8OjMBBsuR7RzP5A=
X-Google-Smtp-Source: ABdhPJwJEOt4X0SIV01i06CHwHIkudwVB/Rcql2nyhiCm9dsXHtQJXLiF5dWxoAIwfYm1vIzmiBNDQ==
X-Received: by 2002:a0c:a261:: with SMTP id f88mr23977076qva.56.1602549182267;
        Mon, 12 Oct 2020 17:33:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1132:: with SMTP id p18ls4900367qkk.9.gmail; Mon,
 12 Oct 2020 17:33:01 -0700 (PDT)
X-Received: by 2002:a37:6c04:: with SMTP id h4mr13351472qkc.100.1602549181768;
        Mon, 12 Oct 2020 17:33:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549181; cv=none;
        d=google.com; s=arc-20160816;
        b=FDUmWZ/X0vzI4o+8MdtMAs01Bdepkb3B+TrAMELlOUBWgr1gIHlJzPvab9V8p+XZ+6
         Sma1mcnF709MdcESTyHwjN6i/VI6Pp5gL3RLlCe3mPp1v08g4EQVgxmmARcfwsgra04m
         dPi/VDTQwXauBAakbQSrw2vQIFO15ciIMC28rnPaFOUhb5pWcGNza4Ab5p/eTo5N8MtG
         1QjNRGQKWdqHYM910/T6HfgvrNi/Z/XbdBu4l+y7fKT7br7KOIsZdw+vY615vCEoGk93
         yje75DRDImVd+zIejMUzUtyrRJlNirxEh2wXWF6fESJvNMm3FDwLmUXrMbzFaCW8hF8J
         oBAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=NB4DqWz6+fIfMXcokXEeMggmgfFph8OJ/Hk6TSxy9cU=;
        b=f+HHgBAYu3QXZmjCVWsFWH8StKH9k3BPEFRHLWpA2JUDDIkL8f2vpytTDn1cHhDLs1
         iLYALavS7bq61jiNKoNM5m7d66EvWqqkmRbZBzjcDy4A5PCRryKLIP3NjehnnY5S7fOl
         UQW7elQx7DynOr0vAlpSNyfXqgk5BxtG+46fs74+hiwH6Jagx/dHKLnCZhgMRGlzCfVb
         senX/zxBR27loolhGHW9pNJ0NuA6fgjqJYvOP0aRcxbke32hzjlKUymyvVFPZi1Ot8eX
         hGZbyYIVsispuI0ob3u+5jSwWqTTe6+ImW9BbKKSr9nwXvBZEjE9CsQ0C+r528yGSAp5
         EBLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H1F377i8;
       spf=pass (google.com: domain of 3vfwexwwkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3vfWEXwwKAL4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id s76si1114288qka.5.2020.10.12.17.33.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:33:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vfwexwwkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id y77so13808753qkb.8
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:33:01 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:59cf:: with SMTP id
 el15mr14045430qvb.17.1602549181397; Mon, 12 Oct 2020 17:33:01 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:32:03 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-26-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 25/25] x86, build: allow LTO_CLANG and THINLTO to be selected
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
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
 header.i=@google.com header.s=20161025 header.b=H1F377i8;       spf=pass
 (google.com: domain of 3vfwexwwkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3vfWEXwwKAL4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
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

Pass code model and stack alignment to the linker as these are
not stored in LLVM bitcode, and allow both CONFIG_LTO_CLANG and
CONFIG_THINLTO to be selected.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/Kconfig  | 2 ++
 arch/x86/Makefile | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 6d67646153bc..c579d7000b67 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -92,6 +92,8 @@ config X86
 	select ARCH_SUPPORTS_ACPI
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_NUMA_BALANCING	if X86_64
+	select ARCH_SUPPORTS_LTO_CLANG		if X86_64
+	select ARCH_SUPPORTS_THINLTO		if X86_64
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 154259f18b8b..774a7debb27c 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -173,6 +173,11 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 	KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
 endif
 
+ifdef CONFIG_LTO_CLANG
+KBUILD_LDFLAGS	+= -plugin-opt=-code-model=kernel \
+		   -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
+endif
+
 # Workaround for a gcc prelease that unfortunately was shipped in a suse release
 KBUILD_CFLAGS += -Wno-sign-compare
 #
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-26-samitolvanen%40google.com.
