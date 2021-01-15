Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUEHRCAAMGQEEOAEZKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 296D72F8724
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 22:06:25 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id n13sf9224592qkn.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:06:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610744784; cv=pass;
        d=google.com; s=arc-20160816;
        b=GBWWbbXdHkMa6js9tj7LxVEFJdMl/fqSO/eETG7aXyROeJhrSiS6c8UvtBLeyS46p8
         wxolZwD6jocvlrWnsEbbhIHmAAQbGv1DMi+gzpMIWgh916MWOHPfaO7/5nynOlLoNp+3
         BrvasWM4nNN/RqsFqw4s3IcCS2mJJoCxC74AOPcN/tO0x1pf0PIU5gC0Tsx0KdGguluZ
         EtCdHC2oRHpU1Nfg26EB9tfd6lqmkbE8b/QpJ3MtEAKaGM9+8NdZpRXUg07uw5ZMjVMG
         lsjwlU66c9ncbNafH/FmdJNhfmJ31J4XsOG8TH5JuUjKBPq4Hnu/j5JBX21YhKC33+T7
         CVlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=0IQ3kXsZsNwcZFD+DX15a4SnfUsRBGG21j6yQWlxY2c=;
        b=pjEJ7kFEPtP3OdcHE0ElAXUxGMzT7aTA4sN3MU1/yLBv/uqg048YJs/JK9h3EVOg1O
         QW8uA6ekX2gxx+U8SUeaD00nGvH5To96AL55Icc6QlOB57KxZD/3Q0xAwi8bLE7DhZx7
         2dp0tKv9AYB5Vdzkcv9BLnvjUGB07wvKEEkBQZZrXtrBZLN7V0znU2vuUQxp7Uz75ssp
         eLAOH/fiPw+5YGU53634nVfxqF6pK1PGYaEfThu8MiJupW7UJEhp1TwS05d3na0yUemw
         GOotUtjLBUBdA/ic7+QmpFvNhDzVBDDVwoIiCDRaQ4SwJSCnlu1rWHtS+o+bIT5k63kC
         9Fsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P98utPfE;
       spf=pass (google.com: domain of 3zwmcyawkaoqtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3zwMCYAwKAOQTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0IQ3kXsZsNwcZFD+DX15a4SnfUsRBGG21j6yQWlxY2c=;
        b=JQS64XPj9U34aeXs/ka9V1QZ7mgREQay2I9owwMzwFY8BNApoNBgTTPVOy/lzoOKYH
         sac6Oo16RlgPbhhllxCMgXc85xsG8QIv7gneoTxTlpGaEaO+rWS6/blHmVF7zk0D78lq
         KYocvSBBBjEAjpkah82au83RLHDDtjxXP5aMroHMQOoEos3KZRJDFwRh27hizenx7X+O
         UR84EfOPC9KnBuo7Bx/0Hv5o63hTREpPj571ixlMVRwqprK3GSh7W6RlCXTL2saA44CQ
         2ubTvn5kIgEyJLxYRVbf67Rhf5LP1kFERdIvNszUtVshfQ2h+O1JMw4EqyrBe/VXpzmA
         W/+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0IQ3kXsZsNwcZFD+DX15a4SnfUsRBGG21j6yQWlxY2c=;
        b=J1yyJ8kPBiEP/9auILEvcUHequZ4C4K4hJbeZIgUNGD4h3krbYOOURMrtLM5UeqKwC
         ZfQVY2S5ukraNOeQM/Qojj6oTduxwOgG39Pb0f2OsfwKgIi2sG5F3RKRxqb5n45Cc9NB
         9Gs5ZB6NMP0LJgdypCbZE41HZiaZ+ZlI515BgZW3p/HNs9W9QDcVG34eLlRCsMnmHHU5
         eTpB0/jzNsMKZmqsn88iwS2s7t/Pb5DXnm/y0shFX/Fns4EnSMLrSaf9lJw96ji/gO1z
         iyn2+z3rmNod8Q2ws6Htf5PbFlT1lnFKThw3I00E9nJIvIdug3mt9JBiwiW+oybmURdq
         9n+A==
X-Gm-Message-State: AOAM532pezRGHvfpB353oYeoTkpHJOvTZkTXvMIWep8CxGWW9tlnPFiD
	uGkVsRk0M0KTKPAApddh7oQ=
X-Google-Smtp-Source: ABdhPJzZin0eRHZ4UJ8N5vRf9VZTBQjPLjqzjDTB9n2ZHIzXJqNai6OC88SmgovqqKlJoCZOl4vgeQ==
X-Received: by 2002:a05:622a:14e:: with SMTP id v14mr13569937qtw.298.1610744784251;
        Fri, 15 Jan 2021 13:06:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:242:: with SMTP id q2ls5209366qkn.9.gmail; Fri, 15
 Jan 2021 13:06:23 -0800 (PST)
X-Received: by 2002:a37:63d1:: with SMTP id x200mr14206241qkb.164.1610744783908;
        Fri, 15 Jan 2021 13:06:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610744783; cv=none;
        d=google.com; s=arc-20160816;
        b=HRl2QkiqEwyMjWrlhR/x4D3HujWWsWAormuMLqrDFxdEPdfbot2kCVC3uR0v4dtcY3
         E8M+q/T7jV0WPo7uKJO6ljJ4AaQb8RW9Up2dkmhKp33agxjuiIqUnXnmE+lXNF35Zyjn
         08p3nnzaOjfiRac8TZ08HcuG65wEzeIG4KyY5y5O7maWdj/TJ+wT4e9XAjQw7NcSln+W
         hQBMuUIO4g++Z4sZK5Plt/Ve9P6a8ms8q9OaVM7qlK7RRgWBhuAiNVX50RQYwUxym9E0
         c5HMXu2rogO5uKmy3GbyItdKDg+LashYGDOk8JbFneH3wFeP/esTy8bmn7cUGhZ1hGAK
         4p4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=WwUdb2o6/JIc/+fz+e0NhIo1IFclKkxRZVZ3uFNIMcs=;
        b=VseNnMBUv577fKRMirnEf0PevdgHA00apRebzNcoCyyhEa4vQNbFL+yExVU6gRG9Ya
         r9RUrKzXhAi7ScYp4xUX9ASYte/x9WqNFJbYS8wLmGd/g0Qaf5isez8FlPs/Z6QwjODN
         EKE4qmQgy1rXdmoxEXd2pSdGlETWOjXndvkE0YxZjCIRyc8IcIK4gYdR+K0zpwDCyceM
         1bQ3QJ7a1n0f5rITiayO78rO7x6EHG2JAGZIEmQtk4YknLcRJZ3tcIdifmX4ilc23ctx
         2pRD2hsJIAsT/qKzpiJGZdINGuEVr26BaMjHBuaaSI3JA7qV7MUDkMUtia983wpC1GXh
         B3wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P98utPfE;
       spf=pass (google.com: domain of 3zwmcyawkaoqtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3zwMCYAwKAOQTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id p55si1020645qtc.2.2021.01.15.13.06.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 13:06:23 -0800 (PST)
Received-SPF: pass (google.com: domain of 3zwmcyawkaoqtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id 67so3935011ybh.22
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 13:06:23 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:340c:: with SMTP id
 b12mr4325908yba.474.1610744783536; Fri, 15 Jan 2021 13:06:23 -0800 (PST)
Date: Fri, 15 Jan 2021 13:06:15 -0800
In-Reply-To: <20210115210616.404156-1-ndesaulniers@google.com>
Message-Id: <20210115210616.404156-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH v5 2/3] Kbuild: make DWARF version a choice
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=P98utPfE;       spf=pass
 (google.com: domain of 3zwmcyawkaoqtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3zwMCYAwKAOQTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
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

Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
way that's forward compatible with existing configs, and makes adding
future versions more straightforward.

Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile          | 13 ++++++-------
 lib/Kconfig.debug | 21 ++++++++++++++++-----
 2 files changed, 22 insertions(+), 12 deletions(-)

diff --git a/Makefile b/Makefile
index d49c3f39ceb4..4eb3bf7ee974 100644
--- a/Makefile
+++ b/Makefile
@@ -826,13 +826,12 @@ else
 DEBUG_CFLAGS	+= -g
 endif
 
-ifneq ($(LLVM_IAS),1)
-KBUILD_AFLAGS	+= -Wa,-gdwarf-2
-endif
-
-ifdef CONFIG_DEBUG_INFO_DWARF4
-DEBUG_CFLAGS	+= -gdwarf-4
-endif
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
+DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
+# Binutils 2.35+ required for -gdwarf-4+ support.
+dwarf-aflag	:= $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
+KBUILD_AFLAGS	+= $(dwarf-aflag)
 
 ifdef CONFIG_DEBUG_INFO_REDUCED
 DEBUG_CFLAGS	+= $(call cc-option, -femit-struct-debug-baseonly) \
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index dd7d8d35b2a5..e80770fac4f0 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -256,13 +256,24 @@ config DEBUG_INFO_SPLIT
 	  to know about the .dwo files and include them.
 	  Incompatible with older versions of ccache.
 
+choice
+	prompt "DWARF version"
+	help
+	  Which version of DWARF debug info to emit.
+
+config DEBUG_INFO_DWARF2
+	bool "Generate DWARF Version 2 debuginfo"
+	help
+	  Generate DWARF v2 debug info.
+
 config DEBUG_INFO_DWARF4
-	bool "Generate dwarf4 debuginfo"
+	bool "Generate DWARF Version 4 debuginfo"
 	help
-	  Generate dwarf4 debug info. This requires recent versions
-	  of gcc and gdb. It makes the debug information larger.
-	  But it significantly improves the success of resolving
-	  variables in gdb on optimized code.
+	  Generate DWARF v4 debug info. This requires gcc 4.5+ and gdb 7.0+.
+	  It makes the debug information larger, but it significantly
+	  improves the success of resolving variables in gdb on optimized code.
+
+endchoice # "DWARF version"
 
 config DEBUG_INFO_BTF
 	bool "Generate BTF typeinfo"
-- 
2.30.0.284.gd98b1dd5eaa7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115210616.404156-3-ndesaulniers%40google.com.
