Return-Path: <clang-built-linux+bncBC2ORX645YPRBU5KST5QKGQEW4XP2LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2FD27063E
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:16 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id g18sf4153046pgl.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460115; cv=pass;
        d=google.com; s=arc-20160816;
        b=XQaMwwXJ3cJ0mHrPYOJmx/0DsWTFmIwUPr2DSC2XNBT8nKFr5pb0SKkxqIjo42k0Q0
         57yT+haZWvKwNAXMCkm+YlBwc0p5EZ4htOCQDggwSn+SGJU6EDmdVaLazlK+gKSrNBx0
         udcAdT/qNvt3lMc1ePuBsOsesyIfyqB52BgL6KXznSSmIxl7QhmIpG0iZgTHoi7xrIR8
         Lj4QtpuaN7uySgwSuLHBw2dKSJg2S9GOZFlCZLgy1uJGHrHpzVgPWcsCcdiAH687pIrU
         GcTzN6iQOgDq0U9sZGCDjpv6wMMOmSqxU95TX6v6tt3/TfgR1fK0z26+UL6GqpRoHIMA
         IDvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=IwrfMh8SFIb00OdsDiSEnAEVJK7pWRR2soPS7D6llEo=;
        b=Q92Zw66sZTCZO++ucE8ZvXciN8ev6UxyzzLq0b7c6gBRP0C+tqjEV8XzuEvj13XkVJ
         Z3tWthQYblRUMLhA3aoce9wy/VtA3MljKdnhdnhseVTRQOEtiQZ11iVa2sxRIkq4oVYy
         fbuf5wGPXWtj0yC+N3qe0ZaGXgQUAhvrIhME8JS2q74uRl7E0Y8AQciejSEw6+6evbna
         QbNIgK/ZxSK3Qq4IuFcC2z4snnqMU7fp1P4tujtiMPC+4me8LsHrSIsDcBrRU9nEKKGi
         6rnrY6gDh+0k+ULiXuJRTAtCjMuiJfUq6R6rRlNFF/2KDANptt2tD3KF6i6G4HeaxNVR
         fcRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sk1n8gFB;
       spf=pass (google.com: domain of 3urvlxwwkabias40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3URVlXwwKABIAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IwrfMh8SFIb00OdsDiSEnAEVJK7pWRR2soPS7D6llEo=;
        b=cUB/t2hkwBJiqAJdUTr9J29myE+L3efMx4P05KJ4c7WJ2YIgvRJCZ1ZJDm41IA8tkK
         MvQf2dXu2f1tUTkEwPFm03KL+vGIYWv2Z5WjM4Cvbdoxv3yaHzphCBOvB1T/3L+1dJSt
         bUkWh2JvDN5v+u9QxV0rP9tz5AzMrPIoT5kBpdJTT/Amzt3fbgZCmMMZ62KPk4Be+oRI
         lv/3ohydxQ9IZQqGTdXIoQByiIPdoMyyhb7hJ3KrBuiWB2XbgBcU42ebE26k0zGi4XiE
         y1TYmpJzEwvDvt2dKPLhrfuwjejkDJ06/hMnnhqKGHrn1V2j9M5JF4/aDQkt9lIB71Dm
         gUmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IwrfMh8SFIb00OdsDiSEnAEVJK7pWRR2soPS7D6llEo=;
        b=gd/70d7g4/beBEczjSZBrQOmt0EqXjeE6j+55jTt7sHW3s66Lymha99NnLiRKU7HxZ
         wk2OiHIP0DQofCIDaZWservL7Hqp/jtH9eSgYPAV4wBqZMF1YZNIaE0R7wUaOcfzfUjM
         XL1e0od/zu5Sxt3kacIE+/nkK7hy4Gqomas/2eo1VXuG3RdHCehi5U/9j6TMszVYimNF
         Ybi8LObZPRO+K6pXJVCcqbwilhzTfpmY2nuLIMT1fWYTxuTAKDLaMrktg8dDSdSquCCj
         EbYwIJ9CkmX0wFXFocxYiO0lK6N/ipdFptDkiuKPpImio0CwS+gROUsCUC4kHjtAqexd
         r7iw==
X-Gm-Message-State: AOAM531q1/tGfuTbwI0hlD5u7yXRDRjmJlOgd1HKdEFFhIpll01cotVY
	FpnmwsptF8kepgQcmTpXnuw=
X-Google-Smtp-Source: ABdhPJzHzKC0LWkWNf9XxjtIyXmYL76nDg1J8DX59nSif3sCk9lfzCVJJcGdeaPyxQTbR5bXgMmAog==
X-Received: by 2002:a17:90a:c288:: with SMTP id f8mr14448125pjt.123.1600460115205;
        Fri, 18 Sep 2020 13:15:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7612:: with SMTP id k18ls3164077pll.8.gmail; Fri, 18
 Sep 2020 13:15:14 -0700 (PDT)
X-Received: by 2002:a17:90b:4018:: with SMTP id ie24mr15044349pjb.9.1600460114645;
        Fri, 18 Sep 2020 13:15:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460114; cv=none;
        d=google.com; s=arc-20160816;
        b=rh/v2CDbMvrzrz9MZVyOoUBa32VwLaduGuHFqjnuQSe5efkJcq69DVTtRXtLgMiKDU
         voE7S/KnvlMCr1JZbsY1NHfGom86N5DhLuwXPLM/TdLnhiDgUfE/8RPSAYb2oWQEnS5o
         1mrpTv5VZAtwZx8hidn9NdQ0KeK6iVPFJkikmkn9R2WHXsSP5sZoyDrAuaONaV/7q71O
         di+sDHia1NKQapmsXgeOco0mgrMmv53c6DQPtUk/Rb7Qj7x9x8M2ixRXYUQFKoRLb0D8
         /3Jo9ajhumxyHF5NmLbRUBtrKycXgnDlCaFF4sSBKq/oINGYamF5aKlIartlpzPpwTRZ
         hRlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=sDhFGpvlf4HylY15zQIKyDPQxuNLHaPJE4lahmB/U3o=;
        b=C4wxmaBsk07/Bi7TlLjZUOO064Mg43TilMEpJchl+dysTZVdvlogpUO+NWfvNy5ddv
         RXRpnvkEBsej3F6yhh6mhJ2BHZ9huUYrGOUbZN3rAx61ywgCVp+dfzRBaehk68mv9bXv
         r9/W67ufzfySMAZ8uCPW+YPyZfGmyrnDhC2PKZ10Wh1kYsQCsM/KFBHzzp97K5x0Ophz
         pUdxprm9e/GOMJvo23um/qWHoy1uxSp3nnwtJwAGW57+XT8kgGR5AcZSiApiLXvF98KD
         +BT6+oa7o5bxFlI7wPR7JpCgMJXDa+bkhM2W3fnjPXHPDqAGHy7zmsj2BUl7nTRS38kt
         p3RQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sk1n8gFB;
       spf=pass (google.com: domain of 3urvlxwwkabias40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3URVlXwwKABIAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id g11si263517plp.3.2020.09.18.13.15.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3urvlxwwkabias40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id m186so4835530qkf.12
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:14 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:9d04:: with SMTP id
 m4mr18731516qvf.50.1600460113739; Fri, 18 Sep 2020 13:15:13 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:21 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 15/30] kbuild: lto: merge module sections
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
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
 header.i=@google.com header.s=20161025 header.b=sk1n8gFB;       spf=pass
 (google.com: domain of 3urvlxwwkabias40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3URVlXwwKABIAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
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
 scripts/module.lds.S | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/scripts/module.lds.S b/scripts/module.lds.S
index 69b9b71a6a47..037120173a22 100644
--- a/scripts/module.lds.S
+++ b/scripts/module.lds.S
@@ -25,5 +25,33 @@ SECTIONS {
 	__jump_table		0 : ALIGN(8) { KEEP(*(__jump_table)) }
 }
 
+#ifdef CONFIG_LTO_CLANG
+/*
+ * With CONFIG_LTO_CLANG, LLD always enables -fdata-sections and
+ * -ffunction-sections, which increases the size of the final module.
+ * Merge the split sections in the final binary.
+ */
+SECTIONS {
+	__patchable_function_entries : { *(__patchable_function_entries) }
+
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
+}
+#endif
+
 /* bring in arch-specific sections */
 #include <asm/module.lds.h>
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-16-samitolvanen%40google.com.
