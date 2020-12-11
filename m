Return-Path: <clang-built-linux+bncBC2ORX645YPRBFX5Z37AKGQEZHBMRLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 911382D7E54
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:46:47 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id 4sf4855922ooc.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:46:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712406; cv=pass;
        d=google.com; s=arc-20160816;
        b=rSwDjHUEMHnNLNyPgPIey5GAZvMgy+AwqS8d8v9a673fPcjJIeUw9IydEvLSrdNEQV
         V8mi3nIX3wvJBTsMgSBEBdbwI5wFGcij/hflp2Njs4g/+rK91uYaoeV6i3HDE3IF8b5p
         a0rEpiAPhjY++NOJ2SkDoZ3eBs4Gi05I4+uJOjs4nz4+uI1hbm8IzVeeCL0t4zZiK2Ry
         q/Nw13DfyFU5OHpUqFB9wkUTwhIzaOQpfkCEj/k2dKeTAyWBNSoPC469U9iws9m59szo
         h0VzQsoUsqwrVstSdDNNHMzb8jF85P/rruW1wIyfiqUPhyYkQZz9BqTk8z3lVPQ7XnAf
         cjrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=ToQGxJvU0Z6YkiH6UuSSljc/PS/GYY1Xdj4HCmIUvhU=;
        b=T1ZoQtqlIW34Rjj4NHDSeYkVfuipDTjEAuEMcIjquIGoCFJCIaTThxGE/lmDRwdrLV
         HCcbuMVv3K0vIepLKG75vH4JcUZaypgruTqV67+iSfIYRx7cILT7ROvFcFOD+6Bth0Ox
         mZqt46WPirTcVzOx06jL2fJgH0mlld6g/4UMExkdlSOeXmz+jV2QGrYuM7NfRzwChlPz
         TvsBQkZNyln9+S7EZaF5fScRlhJRY/xu/uS5J97/8SgiZD8vJtoOzmhG88AQkRrcL4Ja
         ixi2t6mJGX8sSkKzjM7EjjG1FUEcVWvmhBLwEYa3yCdVSwq+wydcH14ceUd6FOhIZXV0
         yCMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NmW10Ys2;
       spf=pass (google.com: domain of 3lb7txwwkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3lb7TXwwKAGYWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ToQGxJvU0Z6YkiH6UuSSljc/PS/GYY1Xdj4HCmIUvhU=;
        b=lnMrXJOmAmreftHXubl+Bhogm6GqBBHr8qheuMte01fZXHR7jVjaTXvmpAXR6RxDIT
         MpJRR6ZgYBAA4seUX0Ru1O6tavSf0cFO0Hg+Q8CuJHJvjRShcKRE4zUzqKzvq2AvysWD
         vmQQC4TWgBW9PWtZ0AzE8KNaIfTBHWiTDzAlnm8ZWI/uBlE3Ils6GUmpmbl97GUDSjfV
         VdBul2vWBwtpOsojo8M8XeIeAm52XxWJvKMp4j7X502bg2UKh519H1MoktfezZgmYaIC
         eDyybdO33v3aORSuoiDYStTtWjRRkPhv766V6FKcm4XUbERI10HkY35lYD9koSZBJABf
         Be3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ToQGxJvU0Z6YkiH6UuSSljc/PS/GYY1Xdj4HCmIUvhU=;
        b=iZYRp/bbdrU8nlAvsapJlzehlD6ryjCLU8oa42RsFbfBxbaTA0OsooaPg08wi/GMZC
         /bLAkJdMgX07wJBvm91DzOA2uYNBFFbl8LqZO4L3a8fMjxdsv2xwDvpZDKz+63vOu5qk
         dUR1iLN/hf0GQDDm1XAWgMWPKbyT2ZWr+VCraf5LgRpD83fkCB5hRAkVpSH+UbpLc0Um
         nJ5SvTlrzX9fA2tB7+s0caSDia89qURwx1asX0p8djyf2h5w4QkgxePCxJeXqwGaHgx+
         hL3bFt7imtU1yLrACUHLXgg8p5/Kgw1kk2PoqULLlD9vX1ynaVurhXam32YJJswPW2c9
         dlcw==
X-Gm-Message-State: AOAM533ozOqjMJCbArDDAzVEhsFuqskjCZnTwyilX0lXPgdpy+KMXByB
	GVGflHrNDT1dhRDHUXvD/hU=
X-Google-Smtp-Source: ABdhPJxmhbwH78lFAn264q90WGP3KBRWtFwcse6x4MsBmjZJ4OhsXX3LYpT5xplkJSfmw0xBm9xK6A==
X-Received: by 2002:aca:ed96:: with SMTP id l144mr10069830oih.45.1607712406604;
        Fri, 11 Dec 2020 10:46:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:344b:: with SMTP id v69ls2661911otb.3.gmail; Fri, 11 Dec
 2020 10:46:46 -0800 (PST)
X-Received: by 2002:a9d:3b82:: with SMTP id k2mr11010168otc.294.1607712406192;
        Fri, 11 Dec 2020 10:46:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712406; cv=none;
        d=google.com; s=arc-20160816;
        b=Z3yjTwZIZYD4pC+mhbOXhyu3oeggm8GgmfHeFSbrJ22HhYy/7E6fwaZXO2yF50rOti
         LqeM9iy4KEketQ1FNVqm1LW2pPz70LSd+X4dBhhA6h79odCZQFx+3Lu36PXoCBhyjACo
         rvOD0mUATSup4qN1la+DLt8p0z/M2avxyiDTGIZ3PSKZ3ztvaKRYB3+Q4qXRM/np5HgQ
         lnpKu/ojmX3TBIQNzxjQMOxpAaIsS4Y+2JIJl5N7H82EAbH1ZvUpC4GM3X6QuCrQQasE
         pXeLm9v8YV/pqpNGURjggDRffaX6GOKxBxtaPciz+n+mpboGJ7rXXH4nl4VUnLosYX1n
         gdjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=IWPxRCPjFejanLxpgRG3fapg45p9YOPZWT66lZNPqfI=;
        b=OZgXUyBstXGqq8G8RASmf5Ajv+KLvpMNvWcTQKocuxDQGFoUgJk8lzTz9JMARFW4Nl
         URDa90+e3tkQ7NOVTsUsvMEgys/va1WOrmDj2sWZ0F14TzeDtxbdeaf+ALG78CRKwETg
         UYTatLR280aWe32fWdmCZGns3zrXGXIoTUxwrkCdPVTYKucw6QOYv9X+hkP65rDKkSFu
         ajG0pkQ78X141JCITECMKxnBpc+oJ4jg9/XGjP7Xywf7h20YNfv7YZ3RCE+Jd3rpx7pv
         dSMmvf3WYovDimupdoHErs6p09v+FBUXjTiXwVgH7aDI440g7wG9lT19CVyrtLFjNxHa
         Qmeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NmW10Ys2;
       spf=pass (google.com: domain of 3lb7txwwkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3lb7TXwwKAGYWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id w26si679972oih.1.2020.12.11.10.46.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:46:46 -0800 (PST)
Received-SPF: pass (google.com: domain of 3lb7txwwkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id a27so7133909pga.6
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:46:46 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:90a:8b94:: with SMTP id
 z20mr136813pjn.1.1607712405109; Fri, 11 Dec 2020 10:46:45 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:22 -0800
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Message-Id: <20201211184633.3213045-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 05/16] kbuild: lto: merge module sections
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NmW10Ys2;       spf=pass
 (google.com: domain of 3lb7txwwkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3lb7TXwwKAGYWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
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

LLD always splits sections with LTO, which increases module sizes. This
change adds linker script rules to merge the split sections in the final
module.

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/module.lds.S | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/scripts/module.lds.S b/scripts/module.lds.S
index 69b9b71a6a47..18d5b8423635 100644
--- a/scripts/module.lds.S
+++ b/scripts/module.lds.S
@@ -23,6 +23,30 @@ SECTIONS {
 	.init_array		0 : ALIGN(8) { *(SORT(.init_array.*)) *(.init_array) }
 
 	__jump_table		0 : ALIGN(8) { KEEP(*(__jump_table)) }
+
+	__patchable_function_entries : { *(__patchable_function_entries) }
+
+	/*
+	 * With CONFIG_LTO_CLANG, LLD always enables -fdata-sections and
+	 * -ffunction-sections, which increases the size of the final module.
+	 * Merge the split sections in the final binary.
+	 */
+	.bss : {
+		*(.bss .bss.[0-9a-zA-Z_]*)
+		*(.bss..L*)
+	}
+
+	.data : {
+		*(.data .data.[0-9a-zA-Z_]*)
+		*(.data..L*)
+	}
+
+	.rodata : {
+		*(.rodata .rodata.[0-9a-zA-Z_]*)
+		*(.rodata..L*)
+	}
+
+	.text : { *(.text .text.[0-9a-zA-Z_]*) }
 }
 
 /* bring in arch-specific sections */
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-6-samitolvanen%40google.com.
