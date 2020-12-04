Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRMZU37AKGQE747L2DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 059822CE4B7
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 02:11:35 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id 5sf1941762oth.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 17:11:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607044294; cv=pass;
        d=google.com; s=arc-20160816;
        b=p9mun+G9+vmZjc7jGDTF5KENhB9Svksyy+X9V9dyyASdqkK0jN3M3r9nLXcIN28h7h
         UTtmu9Y2/+i1XQvLPBi5yyzpiw0yx+oVYP47UaS23KMA+m4sS6at9yE4KFEbibJnQq4Q
         z4ayWZ4ou4d6SFt2wmOsMlwPaf8Dw3BQLX6sNsPUJupQwAfgSdXV9Pvh86jotcbXXW7k
         V2i26TiR+jE7S+zQVHuwIiI7yHYmHjHy2sLrMqkk1xJkDFQElTg0diFr6sf/tU9ZhIDp
         QzNhIO7QDOSlMeJXGzsHHjdP9h+U0TN1tRGn8H5zvwBgo6bjtSWly7YbdCdIkRHxfj/G
         7dyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=BWZDBTTf1vvZ33P8YWedyKRxnwzI7GdoOdmknfXDrVc=;
        b=BvuCy6BRxRmeEpUdWtYz+oE2uT9CHqxhzPcbaS8M8ekdtQgs1dO2OyaFV28iwSNxYI
         VAQLML2VgS7CpcdG9SNFTThilhmS/UUSJYNFYHS1hZZrj/bwQIpR7u2vzCUF1EtKFW3L
         vtkTjBRdVz4w5hSa0Xq8T2gimzYPhfzsku3wYL+OrqiXKKqW3K/igZ/77dE1FKw3NyKm
         RN5Nr36CMfeJlcEj1sGov5spRQC6mWB2c8VUJgBFitglO1uu5rI/fV8v7v66iRRkdY38
         5e41VeDvRXOyfzNX72KSb15WApfaMgjPIXdtbJ/E9gDE52qTADTXfaGZUkhrmvGgBHZg
         jHPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rEB7RJTS;
       spf=pass (google.com: domain of 3xyzjxwwkaaoxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3xYzJXwwKAAoxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BWZDBTTf1vvZ33P8YWedyKRxnwzI7GdoOdmknfXDrVc=;
        b=iZxTkenLqMWPC2dVnoBRTaIQppyjxZH2SOrYiDtf3mth6kzp0DW/dN+awLazSs+T7B
         yBsJFCYWLHdsgfBBqkpGsq53sU53wYNFQ4zquw3b5mV9X76nSKn93IszhIJudizD/Ok9
         q/UO1XUzttfYyuGyCL2WkVsRVGmgAJi3dV1FDJPRYS/rFEoeGri5b4Pi45U4nEaMwYog
         UJr5ABU8liJ4zO4P+fGSmpf85GlF5aIANDWoOqRrK/tvM0f2TOVQSRCLnlmaGj4SiJh9
         752qG4G44M5t33Fz/IAsuIP5VclGxh5wDOITmwpxkFqdFeDRKWnCN86ZWsAvvn3gpIfP
         U4AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BWZDBTTf1vvZ33P8YWedyKRxnwzI7GdoOdmknfXDrVc=;
        b=L3rOqN5XUfdWAPiQc9+IK56pp92djGNkltMOvLqydrYJ/elcbCGgWxWiwB+2ueJ+AM
         jUY6uEuAwQBmZuU9qj6HyDVa/MGe90FGRK7RLdJfqbn8rPqZK/EsPA1KCjvM2bEffC7y
         4yc98ZgTQYMM5vwr74WO2dOYsAJnJotNFUnLHyP3isd6ZOpJ6k8pKpAs94PxGRZ6i4xu
         PO5YVyQgM6dumSxe1U9J8TyIm1W5rU7wgnikPt/sTLWpxXbWTQ37mir7ckhfvM5tVQfi
         l+AYlGOwR4/yelEA3AysY//M4wcMcrd00LsdaDzlN/fU+/1YFCySIhhmv/jrn8AoS9GZ
         Kusg==
X-Gm-Message-State: AOAM533sPQPga+8A3UUWEpmUD0aPNB4w6yE2Luhe1QREvsqw4MVjQE14
	9q1EyteJHl9NDdjLuvPOJss=
X-Google-Smtp-Source: ABdhPJyzR800Ca/qiKcxqMdTfitsRw2upv7G21czae9xqyKvkXBvltDV7mEP5/X/R2xe1BbUR7+uBg==
X-Received: by 2002:a9d:6854:: with SMTP id c20mr1699214oto.319.1607044293983;
        Thu, 03 Dec 2020 17:11:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9753:: with SMTP id v19ls500604ooi.0.gmail; Thu, 03 Dec
 2020 17:11:33 -0800 (PST)
X-Received: by 2002:a4a:4190:: with SMTP id x138mr1610900ooa.14.1607044293567;
        Thu, 03 Dec 2020 17:11:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607044293; cv=none;
        d=google.com; s=arc-20160816;
        b=yivogiSRcnCj1ul/DTslu+5QWspa2vr2TKLY5kAhKyCfte4YBqsZFt9DXMfbNRDxom
         cBumNqWShiBCm99GnEl1gjYjY1KPHmn7A2opo219OWUg/ZWCJdL0COZZioTWp3+x6MlJ
         ZVOpLLG+e1lO+5AhCS2Lm1qg8v4PAsWHxFEAFDu1Rh0b727Y0u8IT1U8YSzAPz3FRrFP
         Nh9Hi8cduGdQAE/54C5HWete6YkDbgQt1VgxuXvF33od0XeLM71V+tNNODdEFibkDK/P
         C85DuaRIG2R8Xz5BW+i/ep/klSwdMXDB7d9GowwbnsmuVlZ1Su/Pch2/st15jhA/bzSz
         Kztw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=mVi6jSBmFVAKiMXM22iiShJp9PIGsqVPfbrrwSDhpYM=;
        b=mYobOXZaeEBz+DySwPjkKjko2nEDK2aeY8/89BDxMPt4j3Xs8P21yD7Yx6FdoQb9pt
         zXMU7Uw7khWRctT9LRFQZs2ouHzsgOL8F17EOLfeqE5iIAAyejUhsOVhu+KOnZ8Y3i5O
         o7S5LijNDS4ICz1e2x2HFICH5AzT1BsMmaeUw4lriTGbTV0dowYJue9vyv76JDFhav5k
         rOaplK+uMvg2hXMW8p8hhHThXhu5oyawAddMxWuqmjCCSIcazgWXse6OZYUS6V8aungH
         Lf6/gJt5zk4NhslvhPSSBBI7pcI+arjoCmwavESOk5HeK4leGOXCXHeMWZXF9vwYpTet
         +bFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rEB7RJTS;
       spf=pass (google.com: domain of 3xyzjxwwkaaoxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3xYzJXwwKAAoxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id i23si89338oto.5.2020.12.03.17.11.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 17:11:33 -0800 (PST)
Received-SPF: pass (google.com: domain of 3xyzjxwwkaaoxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id r4so4965562ybs.1
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 17:11:33 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:4c4:: with SMTP id
 187mr2850833ybe.181.1607044293117; Thu, 03 Dec 2020 17:11:33 -0800 (PST)
Date: Thu,  3 Dec 2020 17:11:26 -0800
Message-Id: <20201204011129.2493105-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v3 1/2] Kbuild: make DWARF version a choice
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	clang-built-linux@googlegroups.com, Nick Clifton <nickc@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Changbin Du <changbin.du@intel.com>, "peterz@infradead.org" <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Krzysztof Kozlowski <krzk@kernel.org>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rEB7RJTS;       spf=pass
 (google.com: domain of 3xyzjxwwkaaoxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3xYzJXwwKAAoxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
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
 lib/Kconfig.debug | 21 ++++++++++++++++-----
 2 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/Makefile b/Makefile
index a2ded5029084..2430e1ee7c44 100644
--- a/Makefile
+++ b/Makefile
@@ -826,12 +826,14 @@ else
 DEBUG_CFLAGS	+= -g
 endif
 
-ifneq ($(LLVM_IAS),1)
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
index 0c7380e36370..04719294a7a3 100644
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
+	bool "Generate DWARF Version 2 debuginfo"
+	help
+	  Generate DWARF v2 debug info.
+
 config DEBUG_INFO_DWARF4
-	bool "Generate dwarf4 debuginfo"
+	bool "Generate DWARF Version 4 debuginfo"
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
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201204011129.2493105-1-ndesaulniers%40google.com.
