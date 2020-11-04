Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIPXQ76QKGQEVSTUZJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id E55152A5B42
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 01:53:54 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id p78sf7276591oic.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 16:53:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604451233; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cc7e5c/4xeylJT1ihxQ0KrLPZiKWHulkkokbDnM/jbcgEjP+8dDmRDDDk4JQ/8NwhE
         tcfLO5rNTQjePeAxSlqm41ECM1ilwJO9XImZE+RnxJzuvPp1OCa6EwPbpUz+DR0beyTa
         +s2pzWTYE2sfQxKbdYUCEDDfv2cHI+T3kcBPEzEsxycF7HoCq65S7PNwufgE6uplG73x
         y7Y7T9DxhnApCgNqJ476mnpCMQpA/Fypg17auqMAJ6SDHdCoMG+gwlBu8Z6/b09UOyIn
         3s6C1m46DPMHWqDzl9/TBd3kI86aKENNSruLM8lw8J6QINjwocu5HDSxcMLhQ5ccvMwc
         eX8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=7+mfS5LSOzwzNpLccbIH56NMvao+afR5kQS1B9cIs8k=;
        b=RN2vhLU0PHLR6BjEcscNqHX3CzAueXmwOcSq97CBPQAYqppmJBfAZ68kBeUVbUptPK
         xVL95cBS8/q12KKlU2LPsGuMQf6o5mbbUQW1sQuAtVdOntSgl0jYu4ubmsgLgGryeEuD
         6huaxL/qrofVtzJAx82PwmAKT1rxPoMMkQ+WeFPADNs0CMLi5rbuiNBGaxS4oXQ4mB6H
         Bal3QfDNgATSyOZ5Law8uVq+xnj9dsy1WPYeYBx6vB43gd0/k2VJ2cAn14GlRsyry+Uh
         iz1M4HMFQS0UzyqWwWSQYjXzxcruzaHPvu0L6+SQmGnISMsrxkuk84YJWJtiu4Veuabz
         eTFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PhJTUPR2;
       spf=pass (google.com: domain of 3opuhxwwkacmmcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3oPuhXwwKACMMCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7+mfS5LSOzwzNpLccbIH56NMvao+afR5kQS1B9cIs8k=;
        b=DwdkhYL8NxlPccZpL+lFuJHqlbkWwv6T8fgLak3tjJNoSJU98T6GEd7Q+FiK/quNyR
         2b2Gt9nFx+AfJBzCFj/XgUMHDCa8JoSANxAe1doYl1iAyMLjYx/XJkCIAvM7+EOScFSj
         eGwu7HR7RpcrgZrzdFPRV7JwZrkjYsxcHipTQqQyI0nuJWxUh+0SQows0zmhZsNUmVQS
         RDNYSB0124WiG7xwxIpeSfjMtwIS1RGTohnU38IjYDG54pR63AAxbQbS3KWnT05Q47O0
         MBqAru4wTptVreUfOu5nQ2PRrXnT8gAi5k8lyqtqeL5leK8okbp3Ug46iOwcoNbMBYIx
         4zUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7+mfS5LSOzwzNpLccbIH56NMvao+afR5kQS1B9cIs8k=;
        b=GXsqL/hlH/KNygAqhxbTO2m7c9+cWVQIzv1HVoYLAXdeW2VhnbyWklzqWe8BTRUOez
         tOknRNzNCBKObb0TmyJei/82aCNOFUch3smXsyWYfUjBBzm5pcQcz6gt8WcAmGP5scBe
         +0XZrfSFqkR6t4s1Ztlc4tguszwWSj4naSbpzE4aRzYQwufKaJ9T31Y4ob4UDMceB1sH
         u0xjKp2SmQPLwkg74BfXr55DQu1ycOfcHaTBHHP3W5VjssRU8bmD3wXqegZiiKYcGfbL
         ABEIHFPQ9jEDWtyffYsgzOV6CxJc4IfCu3mmOVwynUUe7rmBvyqdy0vf0NCYKVxUQTeY
         zOuA==
X-Gm-Message-State: AOAM532sHnSOIlvntnQ8JpKL9ZwhXKXyge1nIN5vREAPBYiz4Swmizd6
	tAWAZ2UgbFifuACoR8gVlbk=
X-Google-Smtp-Source: ABdhPJwa+K/yb4idIqLEEL3mgAjFg9xJkyt2nAj6uu5gkGJsA7ea5V5Lv+HkHANUa4uTqigMkz//pg==
X-Received: by 2002:a9d:4704:: with SMTP id a4mr5971289otf.236.1604451233511;
        Tue, 03 Nov 2020 16:53:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:53cc:: with SMTP id i12ls64748oth.7.gmail; Tue, 03 Nov
 2020 16:53:53 -0800 (PST)
X-Received: by 2002:a9d:2483:: with SMTP id z3mr17110356ota.140.1604451233185;
        Tue, 03 Nov 2020 16:53:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604451233; cv=none;
        d=google.com; s=arc-20160816;
        b=nlh57ttuMAoohB/2+J549jwwWsSnaPfCiuZUSp5Uglq+F29KFW2aPhAXa5kCA/qHM9
         BoccwDURLS3x9mwPKk+1d+QN1Z3mQ60FduOSn0sxEkLMQlkXEzLFfRfXjk04CUTtF890
         qSTgzuPN34W84fBpKQziJg0knQtUXsqj2KEAvqLk+pCcV1vKkpC+dizfA1M/ez66rEoK
         XULkX3nmIE0smlQ9NYpLK5v6bHp/UzPqGeFwJYuDat8FfogWDL5U8JQC7AGGNnAEYgx3
         1QPVmVuTsgvBoODmjilF3pRd7MbPwHyUiLK2U1M8v0zy2lMa4BsxGPS7vmlc9sa4I2hm
         kLVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=sEoLa2K7mY/J71l6bRl2EaWMrBUYyyUbe4HY5uHEuDw=;
        b=ltIMG0d4yBrAAq6Ix7MKCRDFYeq/uQ+37ncICXVp5Lgx7n8QvoszrLngH9R7OgFxLk
         O20eIyNE1/c/JiokGy9Q3qCAfVqaGPQeRHEZYgmggD2R17exIsgLSd+4E8Sa6VJyx8gT
         mlGyePW3oJtdx6P3uAp6fCPAUMMugMMC7hiYlh/D3B1XDW3pJbEJgIEXPU13DpXoBFoN
         ZIHnIOpgoS+sa3IG5BIHZREanY9HJEFE+OXF2UIDvQ2UW4QJ+8MXja8KOZBpdMRJgv57
         3j/ku5eFvXJuo+XMBFWtetLuULsA2q/FMXlLNrjRbw0qdQq6yeVaCPJNK1a2tjyZWQ+M
         rruQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PhJTUPR2;
       spf=pass (google.com: domain of 3opuhxwwkacmmcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3oPuhXwwKACMMCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id i23si46025otk.5.2020.11.03.16.53.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 16:53:53 -0800 (PST)
Received-SPF: pass (google.com: domain of 3opuhxwwkacmmcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id 33so12506742pgt.9
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 16:53:53 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a65:50c5:: with SMTP id
 s5mr18813679pgp.399.1604451232483; Tue, 03 Nov 2020 16:53:52 -0800 (PST)
Date: Tue,  3 Nov 2020 16:53:42 -0800
In-Reply-To: <20201104005343.4192504-1-ndesaulniers@google.com>
Message-Id: <20201104005343.4192504-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH v2 3/4] Kbuild: make DWARF version a choice
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Jakub Jelinek <jakub@redhat.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PhJTUPR2;       spf=pass
 (google.com: domain of 3opuhxwwkacmmcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3oPuhXwwKACMMCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
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

Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile          | 14 ++++++++------
 lib/Kconfig.debug | 19 +++++++++++++++----
 2 files changed, 23 insertions(+), 10 deletions(-)

diff --git a/Makefile b/Makefile
index 75b1a3dcbf30..e23786a4c1c7 100644
--- a/Makefile
+++ b/Makefile
@@ -826,12 +826,14 @@ else
 DEBUG_CFLAGS	+= -g
 endif
 
-ifndef LLVM_IAS
-KBUILD_AFLAGS	+= -Wa,-gdwarf-2
-endif
-
-ifdef CONFIG_DEBUG_INFO_DWARF4
-DEBUG_CFLAGS	+= -gdwarf-4
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
+DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
+ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
+# Binutils 2.35+ required for -gdwarf-4+ support.
+dwarf-aflag	:= $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
+DEBUG_CFLAGS	+= $(dwarf-aflag)
+KBUILD_AFLAGS	+= $(dwarf-aflag)
 endif
 
 ifdef CONFIG_DEBUG_INFO_REDUCED
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 83a860126897..03c494eefabd 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -256,14 +256,25 @@ config DEBUG_INFO_SPLIT
 	  to know about the .dwo files and include them.
 	  Incompatible with older versions of ccache.
 
+choice
+	prompt "DWARF version"
+	help
+	  Which version of DWARF debug info to emit.
+
+config DEBUG_INFO_DWARF2
+	bool "Generate DWARF v2 debuginfo"
+	help
+	  Generate DWARF v2 debug info.
+
 config DEBUG_INFO_DWARF4
 	bool "Generate dwarf4 debuginfo"
 	depends on $(cc-option,-gdwarf-4)
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
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104005343.4192504-4-ndesaulniers%40google.com.
