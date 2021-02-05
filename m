Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC6S62AAMGQECXDZO6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6C3311242
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 21:22:36 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id q14sf1905692oij.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 12:22:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612556555; cv=pass;
        d=google.com; s=arc-20160816;
        b=WKYsFUgNK64W0Bo2pehDGlC+vMKCwoB/JIU6QXgxSO6rRR1yE7YcbjuOjpv6/PdV/D
         mjKD81JVon4yv3l22MV98PM0MWy6NY3AP1X/k4fKQP4PAzZPT04v4HSXLXH+G5k4SB36
         vqFrJ59UdzVkkG/k00e4Sc7s91nc4tCf8ZP0lOZw14SFa2FfzKjFe/dOIEoRfHt/2E1+
         CiltZPJrWjoRX6TQhNkzDqnleTcUslLSSWMATJ8z0DaYgge+m/k1oeR2GTdATYqMBVp/
         sd0tDjEa9cN/XJ6UQmawau6JYHxVZqGQJFn8XolrRRM7gbS8kLMgSNJ9Gyqns5L2tneg
         KgBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=m6HhI2UDTKOppEhHgW0AXf0gSkQTgPIH5ZbKT8ttS/o=;
        b=otB0tqRB9uzRHexTj2UBRvSYlulvFQW/zBIJCIeXhOv901ZpVKiOHfQrLc2KhftaxO
         CE210f+7J1uer7QEWTsaHFCKuEtz+u2YF898Xp+DmUTagaSkDV/nJN+WQUqqpb7/l26E
         Af41lwIW7AHWLo9y9Qn5U/AkIWFNzADIHnOUViZQQ557brfn0mE28Do3vEO5OYMhwGVO
         oGMhCtmSzqZOmKUIdCqa7k0w6cd75KBClvxq5T4HRjgh89H6e6scREtN8CCcDnEvbReq
         Us8yo5K5SLi6gC5EQVBUBoLXHK0mFh/ZpkNKie5YusYLACmi/xQ0nER3JvntBypIGvVb
         96Jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SgIivOzc;
       spf=pass (google.com: domain of 3cakdyawkangh78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3CakdYAwKANgH78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m6HhI2UDTKOppEhHgW0AXf0gSkQTgPIH5ZbKT8ttS/o=;
        b=Tf35yOSf89duCGgimKiPEDUn2GMZ2Hz5Kj76S5k50c53nIvF7wWZx6FMa7AL0XWpMh
         q4Gax0QAVznpnEHvAphrxNLxwgpcOrNsE7ZJvuJwvHenW3NrI7jE1gKvWmJo3bfznmvL
         +0li5yPA3Wmx/5D3Z8o0WHD00iQ2P/V6H7q0hXjnsljLDSjB9Z9uxzHIaejGkm4kdM5+
         z961FQixN+2wH0/YWznchcT57iTLuCnklICxWo4bJcOVil5l8NCoUI2RQZcINUSZaM7+
         9Hg/tJB4J3O8zmJHTTeKmR440kGayNx2o8DQLInQfzfCQS5Z0sx9qSZqu2s0CAJHYyJR
         B+Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m6HhI2UDTKOppEhHgW0AXf0gSkQTgPIH5ZbKT8ttS/o=;
        b=oPzH7YPkY0wtIU7gvGDJVYPsw+XlT3leKDvVczVhZD4+aRx8FrwynsSAATrfQB35dr
         arRl8rSMEArt46wNc3euvZbzOHQJdpcMR80S8NTNCB0gn4iSt1pzFJI1qfTUSjEWFvs1
         siSHnfoA/URV+WJ5HL+oeHm1xFu61pumjcJrBppSAYj7CHkgR4B7b4MYows4fCq+NHQN
         R3LJssC1A0W/W4tD4qAqWxIQKBHNeq+J1Xi4ZD6SqlEa/l2ENwSwTIw8i8meAlqqKShI
         D5bfUWasQh+o7BsNBv38i0ri3C6ZEn/s5BSICrMkO16ncNKpepTlVZd9IV6ogHSet2cK
         FnxQ==
X-Gm-Message-State: AOAM532dNIe/QHK+5QTDEt7/fR2LahSYFLx5kAx/e15Kc0jE7FsFlP5t
	GW/m/rOGU3Kx+kouDDsIejI=
X-Google-Smtp-Source: ABdhPJw3KUs7b11QkdNJ8ME1j+GlN+aBc/RTAQ7Bed8J9hqJMZOjMJpBYGT3jrYAbMHL/UOohQwe+w==
X-Received: by 2002:aca:dc07:: with SMTP id t7mr4212989oig.15.1612556555437;
        Fri, 05 Feb 2021 12:22:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1391:: with SMTP id d17ls2561461otq.2.gmail; Fri,
 05 Feb 2021 12:22:35 -0800 (PST)
X-Received: by 2002:a05:6830:1d42:: with SMTP id p2mr4638960oth.232.1612556555045;
        Fri, 05 Feb 2021 12:22:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612556555; cv=none;
        d=google.com; s=arc-20160816;
        b=jzqaRa6fRsVu4++oD9wE7YiXFmbWsuWMa9emFnBLOfPXB/JCNuKATFT9W8ScOookJS
         2Xt+LrqHQlMYnE73DeaHG5DpVyyKRZP535Xbij+u2evb5Ghwi3pIqMSH/Y221iVLaapk
         o6VgFbDAqTdcbcTz7tlogXZax5rfPxyxk33wZkIQoy34bPbvraTifKoEQzrajHPOEKq7
         SEhMnMRJ627ISCxcjM2LcG0AkwZvObP3ato4OpTIaUJYeqmL7GrgRsz6N3qCcjVA8u5T
         toHA/1Xk8JPjnSsq7AdZIMG8tE5ekQyv3U8oZoD4HaZFAT+MkuMrg8ikza6Ma4lrij+1
         R3TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=PZ+RSQ3La9FqfpAq26CoOCWqjs/GvwGs77snpu64N1Q=;
        b=q2gjlUSu/XHGsh2U5UTWGWuown3X3qehPF3U4hG4zdVaSyb+K3YXOyDaw84vjrB+Zu
         3B35EdsRE5awqcPPPetgk9u+8EQpceCEfD5gmwmSn59BKFDP0jfDjMAZzQwObYnLCJv1
         Om1H5WzDZeEYTHzFVAPyYY08fsZVsh2EqLo3tJFFSxFg5Q5jmgcevQUUmpPjKvFgz30o
         MGM24d16CayG8llfBO7/al+4uVXhH0XtOvssWgupadkmoSDqehklAf2YFKF3Yw9iNmMd
         +r8fRVguo2kn0ykLWU5+5qgBQROsMJdOlzC2oK2vQdrm/tE0OEDWphNEHT/NaKbvG3i3
         iqLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SgIivOzc;
       spf=pass (google.com: domain of 3cakdyawkangh78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3CakdYAwKANgH78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id e206si490252oib.3.2021.02.05.12.22.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 12:22:35 -0800 (PST)
Received-SPF: pass (google.com: domain of 3cakdyawkangh78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id q10so7987075pjd.0
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 12:22:35 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:fce9:1439:f67f:bf26])
 (user=ndesaulniers job=sendgmr) by 2002:a17:90a:8d83:: with SMTP id
 d3mr547381pjo.0.1612556553907; Fri, 05 Feb 2021 12:22:33 -0800 (PST)
Date: Fri,  5 Feb 2021 12:22:19 -0800
In-Reply-To: <20210205202220.2748551-1-ndesaulniers@google.com>
Message-Id: <20210205202220.2748551-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210205202220.2748551-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v9 2/3] Kbuild: make DWARF version a choice
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Chris Murphy <bugzilla@colorremedies.com>, Mark Wielaard <mark@klomp.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SgIivOzc;       spf=pass
 (google.com: domain of 3cakdyawkangh78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3CakdYAwKANgH78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
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

Adds a default CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT which allows
the implicit default version of DWARF emitted by the toolchain to
progress over time.

Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice, making it
mutually exclusive with CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT. Users
may want to select this if they are using a newer toolchain, but have
consumers of the DWARF debug info that aren't yet ready for newer DWARF
versions' debug info.

Does so in a way that's forward compatible with existing
configs, and makes adding future versions more straightforward. This
patch does not change the current behavior or selection of DWARF
version for users upgrading to kernels with this patch.

GCC since ~4.8 has defaulted to DWARF v4 implicitly, and GCC 11 has
bumped this to v5.

Remove the Kconfig help text  about DWARF v4 being larger.  It's
empirically false for the latest toolchains for x86_64 defconfig, has no
point of reference (I suspect it was DWARF v2 but that's stil
empirically false), and debug info size is not a qualatative measure.

Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Jakub Jelinek <jakub@redhat.com>
Suggested-by: Mark Wielaard <mark@klomp.org>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile          |  5 +++--
 lib/Kconfig.debug | 30 +++++++++++++++++++++++++-----
 2 files changed, 28 insertions(+), 7 deletions(-)

diff --git a/Makefile b/Makefile
index 28019532e55a..a7eee28dd091 100644
--- a/Makefile
+++ b/Makefile
@@ -829,8 +829,9 @@ ifneq ($(LLVM_IAS),1)
 KBUILD_AFLAGS	+= -Wa,-gdwarf-2
 endif
 
-ifdef CONFIG_DEBUG_INFO_DWARF4
-DEBUG_CFLAGS	+= -gdwarf-4
+ifndef CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
+DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
 endif
 
 ifdef CONFIG_DEBUG_INFO_REDUCED
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index e906ea906cb7..3ac450346dbe 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -256,13 +256,33 @@ config DEBUG_INFO_SPLIT
 	  to know about the .dwo files and include them.
 	  Incompatible with older versions of ccache.
 
+choice
+	prompt "DWARF version"
+	help
+	  Which version of DWARF debug info to emit.
+
+config DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT
+	bool "Rely on the toolchain's implicit default DWARF version"
+	help
+	  The implicit default version of DWARF debug info produced by a
+	  toolchain changes over time.
+
+	  This can break consumers of the debug info that haven't upgraded to
+	  support newer revisions, and prevent testing newer versions, but
+	  those should be less common scenarios.
+
+	  If unsure, say Y.
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
+
+	  If you have consumers of DWARF debug info that are not ready for
+	  newer revisions of DWARF, you may wish to choose this or have your
+	  config select this.
+
+endchoice # "DWARF version"
 
 config DEBUG_INFO_BTF
 	bool "Generate BTF typeinfo"
-- 
2.30.0.365.g02bc693789-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205202220.2748551-3-ndesaulniers%40google.com.
