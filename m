Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3VN52AAMGQEPSONZTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1FA30EC90
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 07:40:47 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id q193sf751440vkb.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 22:40:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612420846; cv=pass;
        d=google.com; s=arc-20160816;
        b=WVQpOcuryn1VcgAiBJaMS4h4T38MHzx9tnkSaJSkS11kP67LvrV1Ebsd1JtyX0HTs1
         Rm3XRgpHw6WifCBcBuXQJLbtsd/XgVC4F45IStedjof+q+qYBRekxETWYLwYjz748+Gt
         AMZDDey2j+p1QvxGveHERjndkDFIyghxv1jXFA3YtUgdw0GpACcMUA8Y31fRmyepZFHX
         30b+a6NuipAmUovVGJZLomA4DKFHOtaScNPcRyhmndIRFn2+AgdzrUPZHwVQ3HzZeWCs
         zJArH4wQlpToPyC65Dp2KsQ8huNUCX6UgcOQTTF8gtjVJx2zU8wJe69WXyo5EGLVH/dd
         Clew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=pmTiTIeUIvaHhDCRLllaZLe4qtTUw5hC04by8lAvp4o=;
        b=oOVwz67E7ZAe/4QrWFrQ1OTrwdaTdJoUAnPjPti3Hr0d6gldyeBeLbwMVlXg4zj5Ew
         AK2uG0OzUDtfihelVm0SVX7OIPVPCl35wWQKMcfbLXXUFdeljAduS9LZbphU+3OYhe7V
         0f3T7DmrIv50X914j+rBn4kONmfcXb63qGVC7cIwoKPzj2HxDZZQCtY4B02Fi5RLzDMR
         tN0yTlFX8487pllgP5n7y9PkBSvMFK1fVVGyYqKaJSnqTwRT/aKzmaiZWN8IHJ4jejsG
         0IKohKFFigmPoHdj0OqzKnDJ24WReSTiCU887Qi/4xv7zqr/svPpouTzMpLNfySjpPTn
         JOWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jXOhuAtQ;
       spf=pass (google.com: domain of 37pybyawkaje8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=37pYbYAwKAJE8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pmTiTIeUIvaHhDCRLllaZLe4qtTUw5hC04by8lAvp4o=;
        b=sruWOUZS3N1WzOU4sgdkRCzMC61C1wJ40edfpKlAF5CoGz+y5S1jU7kEjTXXVY2+sU
         se7KV485JaYGVnzhCPKx+LUwKWu6qC+QjynENR/pqgzIcCAnsEQCNLhXuSOegxEaSwZY
         wRqWaWLVQUy3chAP6neUKA9aKl3U7+dsP5lnMqkB1wUCBnoppuAbH0qHO2VZDhcSbNyy
         aMtsAKTR7I2eoxohuEpPzaXBpQLM8gQ3CgO8wAgJ9JoXqAL0cBRp9A0XsUqq74XRJcWS
         zRA3SP3oZ+OvOCOQl2PdxkYSSMgENYFwES3et4gy9Jb0Uc6Bm/M45AQ6GViyb2G6X5et
         qOaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pmTiTIeUIvaHhDCRLllaZLe4qtTUw5hC04by8lAvp4o=;
        b=Ye38lOldk9wzht2JMk225+cQOq4D20Xp5YHgrOc4OByoJWWDk4MflR9zhNJYRDHMZY
         Usc+sxgtUZzd8tfFi1MIpr+fX2WW7UbMzapHcpfw7mWkQVCsR/mN5tqdrQ8v5h9DEQk+
         2wcpXPa+m0+23zFKGtewUM+CTBPiw/Y7933DPk5flR8jl72gkT9jNOkMquj6ZwGqRXjR
         +sjGzijLHStO1bpy8fQVaGUHLI0eV4EEcevo0X8rsqWY/Pahc4DS6HAboe0c/09dSlet
         7c7OpLbYlPKqyWSfDqJDRb7WjNN0wZJ3ZgKi1amEQBaa3AUnd53AxCk3qf0trvEWuZme
         VCOg==
X-Gm-Message-State: AOAM530Un+O8GMbZy0JOR43Q1Q1ETnWWHxjFLbNCwlUkYsd5rYPp6j+6
	Oc0/CFld5WyLaDIIXkbPk3s=
X-Google-Smtp-Source: ABdhPJyYKQMUbwkcO12+CWm03YDE1/XG1F6ksSNhSO7zgNLfeJpilgKZiUhtVttSYwRgW0l8A6YeHw==
X-Received: by 2002:a67:ea05:: with SMTP id g5mr4031503vso.47.1612420846735;
        Wed, 03 Feb 2021 22:40:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c8b3:: with SMTP id o19ls253606vkl.10.gmail; Wed, 03 Feb
 2021 22:40:46 -0800 (PST)
X-Received: by 2002:a1f:4196:: with SMTP id o144mr4129659vka.13.1612420846371;
        Wed, 03 Feb 2021 22:40:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612420846; cv=none;
        d=google.com; s=arc-20160816;
        b=cjm6e3YXV8R/7RRQG1keTGogX1Ip8Un+HiITKVpV/iva8tjHrWR5HrA904yqqbSX+q
         WIAJrLJjbEU1Sqwy7Jj5zralAiZyCmuaQcj1H96b228e6cvEDMftpp9yf5WeQiKNDelw
         PtdybdhkXhryxfcO/P3d21Fks3Hj9fPG+0Qf2G6kxMqHh1Moi+vIhyb7m04RTZ2LV36Z
         FzzNIDCeAb449MqyHboJeiZfhmLeBSFn8fC6fMoiD27+/q6U0ElJb33hHTZ4R9TBoe8O
         iInj9TVwtii9iHGWeW5uzZDiIJs/+mzGr1AY5cXyIPtAfbNIIFB5hnklF6jW4dqHGDBx
         lO/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=iFigka3JXPbuBeHUARia6t3bp5DpIh0Lh5S9mG4lTkc=;
        b=WC/4kGkVRohB4IuWb9mpd2962FMqlPiLbGUPWPSZePwz7dX7lcLJZvo3tkhcsxUvVP
         Pi38Dd+/cFbXTeHS1Fb/p6MWpCOdr9E3E67mnJW6L/oujyk1zhVpgMzka6gDHuNmCV5y
         UH9Pl/EjbnxyipIXKtI8hTe/oIQULPxrlys09n3NTO+L+OcF2TMD34GAIGFk0uFVkskG
         KS8erGsE9pnlIYiuvMzNftkeE4AxgqXfyuk9r2xF55Nu48QKvk3BpXrEqqcd3U1n+lbr
         CAVDOxrhu7u4y/MyKTOD5y4EcgLY2EZa3In17yhMS5X3mYyDuNoqi1gCQ5XBocerGXNP
         ZtGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jXOhuAtQ;
       spf=pass (google.com: domain of 37pybyawkaje8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=37pYbYAwKAJE8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id p73si240593vkp.3.2021.02.03.22.40.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 22:40:46 -0800 (PST)
Received-SPF: pass (google.com: domain of 37pybyawkaje8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id d1so1827353qtp.11
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 22:40:46 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:e070:bc84:c4fd:eb02])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:18cb:: with SMTP id
 cy11mr6069393qvb.61.1612420846028; Wed, 03 Feb 2021 22:40:46 -0800 (PST)
Date: Wed,  3 Feb 2021 22:40:36 -0800
In-Reply-To: <20210204064037.1281726-1-ndesaulniers@google.com>
Message-Id: <20210204064037.1281726-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210204064037.1281726-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v8 1/2] Kbuild: make DWARF version a choice
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Chris Murphy <bugzilla@colorremedies.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jXOhuAtQ;       spf=pass
 (google.com: domain of 37pybyawkaje8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=37pYbYAwKAJE8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
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

Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice which is
the default. Does so in a way that's forward compatible with existing
configs, and makes adding future versions more straightforward.

GCC since ~4.8 has defaulted to this DWARF version implicitly.

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile          |  5 ++---
 lib/Kconfig.debug | 16 +++++++++++-----
 2 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/Makefile b/Makefile
index 407816375983..bed5cc150009 100644
--- a/Makefile
+++ b/Makefile
@@ -830,9 +830,8 @@ ifneq ($(LLVM_IAS),1)
 KBUILD_AFLAGS	+= -Wa,-gdwarf-2
 endif
 
-ifdef CONFIG_DEBUG_INFO_DWARF4
-DEBUG_CFLAGS	+= -gdwarf-4
-endif
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
+DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
 
 ifdef CONFIG_DEBUG_INFO_REDUCED
 DEBUG_CFLAGS	+= $(call cc-option, -femit-struct-debug-baseonly) \
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index e906ea906cb7..94c1a7ed6306 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -256,13 +256,19 @@ config DEBUG_INFO_SPLIT
 	  to know about the .dwo files and include them.
 	  Incompatible with older versions of ccache.
 
+choice
+	prompt "DWARF version"
+	help
+	  Which version of DWARF debug info to emit.
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
2.30.0.365.g02bc693789-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204064037.1281726-2-ndesaulniers%40google.com.
