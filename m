Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM777D7QKGQEDYFRHPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D4A2F3CBD
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 01:32:53 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id n108sf102271ota.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 16:32:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610497972; cv=pass;
        d=google.com; s=arc-20160816;
        b=AoEy0uBydXLKbBXGd7qer4bM2pkC1AWCXoGw+e6vuUex687ehcw+eYXb33ZPyvP+Yy
         8h+YDk0+5nbRguJXxAvlaIGbvqpHsfKgzXcOgqWM/xQDF+aCUuf5UxLKVqhw3AaqrpMs
         r/Xscbh1chiRLhaifgBBpN0FY4xTWjzqd6aBxdLyXab8koQ7QKjTujDzuH728IcCP1T8
         n32lVqV9Yq2n/fCIblcSgm+mANo7CrApenNbYGIoJQkPdzNEcmFJlwHKGtNCwJaU5AW3
         gQHvlee0rXPIxmMHib2KGQJmttP8R3uHe5pY3B3A9bnmoULorkpWtBXxKeiavG28JZwV
         +bHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=LJ3O69pUE4EHHATYcSv66uFEVO2Bpeq0CiH2ccZafdY=;
        b=poclsQ0z1tmZxtFAkaLGaiCwxRt2fJYezynpwKpMroRh153x1rkSwzCdo+2/y7F1LS
         h/WCSq+OP+eWlLtpCPvhE9Vv2pIELj9ix3inir29rukpp41/Zd+h2EJfqq317pxBjWiZ
         KyDxJhqByIWLBT81cLITUajt8RBrqopO1pu5tvnHGbIfkcBPUmu/kTJbvin8wnmBzJBW
         jFrIvlzhujY4aoMA555VhfganBMkYPiHh4jmaE4gZEzfX9i57YIsjuTD3BqiDQA1enkN
         4VNoatuUmlOfZR1TSjBwN6zYRraoOdfq5iQPl2akBU4SHu/l8tfSmRXbLLsxObainqb4
         s+rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pvdFGS6O;
       spf=pass (google.com: domain of 3sz_-xwwkadibrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3sz_-XwwKADIbRSgOiZbWSfgUccUZS.Qca@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LJ3O69pUE4EHHATYcSv66uFEVO2Bpeq0CiH2ccZafdY=;
        b=EDnBgVCb2wufq+g+NAXM6tZhZcUP/Z4BHDsH7qR3+1pBRz0Y3lIzhFZBkyg4Hnvk/8
         OmcQBvlzZ0sfcXoRbdS4L1bbpeCed0X8e6mnnl0qa1ZZcgllViIVAVyoU7EsBJeF/Bbu
         wDe2rj3rHnPt1V/XcUAhj1umvWDvIEPUz1krH0Iug5HZw0nM33AFzpo+wdv4a5iYBmi5
         zybGqYL7MWK3SRfDxHO0Ph4WpvVcswPTQ53DX5zbfe8YIxA/n0xsrrYU971Q2ryO9r5l
         lMklqkeMqqJBCPLktl8yWexPfYU9o01Oq4JbepM0CWZxaFUe7XgKCf72jOHwWekswukN
         Ch6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LJ3O69pUE4EHHATYcSv66uFEVO2Bpeq0CiH2ccZafdY=;
        b=N/n5WWz3oAJ4NDYRbI1FaSTDvK++vg3EZ1rtc3Q7DgBRvI/yADsAftuJgJrmxRY/+u
         +nkRISPF0esZNPR8L6rpOq29haHhmrQEG1S+BcwkNdobtUEwYM1/ZjtvK2qZyZQnfhGw
         ALPPuwDG0V3i/vi9Gn+wJYGDyYQgO3JhFVg0IXjXedkUHFX6qznUpZdDLI7ksSj4nQ1/
         OQWEWvjKyt1RknRfJzr+NIgTkeHCvqUwqo9FcX8+hTnAiifC3nqMo1Adp2hEYjToYir0
         awEOggCVNer9HgvEBYAP3GAUa7LTLTMoOYKVr1/Qarz+sRbpcldw76Dm+FlxGyvkbWDN
         YYjA==
X-Gm-Message-State: AOAM530h565J2b6Nk3b4MEyDd3Gu06sDIdrk4gojVGMb7ApRhaamNWqK
	gZ0KVErWfe5qZk00nU9YU+k=
X-Google-Smtp-Source: ABdhPJzJgynTJbUSHnq/cNfxipVCHoFt4pzGJchd6Dl7eKTwzUKUgsnwAWpsGgKEGT1IZ/qiOxwIXw==
X-Received: by 2002:aca:1904:: with SMTP id l4mr139730oii.168.1610497972107;
        Tue, 12 Jan 2021 16:32:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:758a:: with SMTP id q132ls102696oic.4.gmail; Tue, 12 Jan
 2021 16:32:51 -0800 (PST)
X-Received: by 2002:aca:4ed3:: with SMTP id c202mr119452oib.95.1610497971669;
        Tue, 12 Jan 2021 16:32:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610497971; cv=none;
        d=google.com; s=arc-20160816;
        b=nzCVE+HsrVosifHJEY3k2rAcPijdoAQpgp3LQU05Rb2VZP4Cs2jBO2HMUioLNNYpUv
         F8bL9oSOgcOyPTyc2y2+EDfEJiZeEIdjKFPis4h+hJNwqnr5MF6POnmNqgjp2aObwsQs
         quZVZHj03SBNgWFEADR5uWxm/e+vTrV54H16mpZ/yRCZ1eT5xDdA7Gcv4T8JF7YoVAML
         qvvX/QJlyUyRwRvk8j52J6LgjAgRxr4LUHvnYReWrQeQu3TiBYUfZ91ACVTIVOmS62YS
         NR8xgTPUkMufHJsI1GNgGN4KZ8/4WZHqbmMUHuj7ieqB1eALxud0TydFMPv/AjB4l9nA
         PKkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=uqIln+HstZctFggtrRu2n6nxYwh4ZFHKHHQOBI++guI=;
        b=0x7Z/k0EcrVZ9rFFZPUv48DyEsepQvQuOK7cfKLlQzv0WHuSTQ9rVDctQKOFXPz84a
         dbR5IKIuF3eZPcxE9S5qNoV4jWcDlwexfOBFMvbmp2DmlUuJ2/sPHwWrA3Em3Jxkq3F9
         HlWvi9CcEh7AAwGZcE3WNnA8tTHPIkQf5EqjYVa+B2FGqIMkTg1ZAjFPo+sDR0o1dDp1
         JHdBOCAqjybxza5iwMFYYpB2KCcutPxMGcNZtOba2iLwlZbnnqq9impJoEJyWpAre1K9
         39ftw266D8IvnQZDf1hZYaUOy77LUiknX8AYMHuxsHnSvkowDXSYRCCZOLvrmjOxYdx2
         XzPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pvdFGS6O;
       spf=pass (google.com: domain of 3sz_-xwwkadibrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3sz_-XwwKADIbRSgOiZbWSfgUccUZS.Qca@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id s126si25397ooa.0.2021.01.12.16.32.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 16:32:51 -0800 (PST)
Received-SPF: pass (google.com: domain of 3sz_-xwwkadibrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id g17so593093ybh.5
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 16:32:51 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a5b:2cf:: with SMTP id
 h15mr2951368ybp.475.1610497971198; Tue, 12 Jan 2021 16:32:51 -0800 (PST)
Date: Tue, 12 Jan 2021 16:32:34 -0800
In-Reply-To: <20210113003235.716547-1-ndesaulniers@google.com>
Message-Id: <20210113003235.716547-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210113003235.716547-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH v4 2/3] Kbuild: make DWARF version a choice
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pvdFGS6O;       spf=pass
 (google.com: domain of 3sz_-xwwkadibrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3sz_-XwwKADIbRSgOiZbWSfgUccUZS.Qca@flex--ndesaulniers.bounces.google.com;
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
 Makefile          | 14 +++++++++-----
 lib/Kconfig.debug | 21 ++++++++++++++++-----
 2 files changed, 25 insertions(+), 10 deletions(-)

diff --git a/Makefile b/Makefile
index d49c3f39ceb4..656fff17b331 100644
--- a/Makefile
+++ b/Makefile
@@ -826,12 +826,16 @@ else
 DEBUG_CFLAGS	+= -g
 endif
 
-ifneq ($(LLVM_IAS),1)
-KBUILD_AFLAGS	+= -Wa,-gdwarf-2
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
+DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
+ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
+# Binutils 2.35+ required for -gdwarf-4+ support.
+dwarf-aflag	:= $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
+ifdef CONFIG_CC_IS_CLANG
+DEBUG_CFLAGS	+= $(dwarf-aflag)
 endif
-
-ifdef CONFIG_DEBUG_INFO_DWARF4
-DEBUG_CFLAGS	+= -gdwarf-4
+KBUILD_AFLAGS	+= $(dwarf-aflag)
 endif
 
 ifdef CONFIG_DEBUG_INFO_REDUCED
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113003235.716547-3-ndesaulniers%40google.com.
