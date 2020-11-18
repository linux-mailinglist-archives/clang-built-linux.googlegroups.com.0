Return-Path: <clang-built-linux+bncBC2ORX645YPRBL5W236QKGQEG5HYHYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id E14322B8728
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:07:44 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id x134sf1407109vkd.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:07:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737264; cv=pass;
        d=google.com; s=arc-20160816;
        b=iww3Tgxnu7IPXx+EYBblu2QmgXRExIwCkDWhIojHnV4FfFzq9fNzUbysvH6u7meFM4
         VufdtaxjxmZuhxR5CjcwL5hK0PP+/KEutRivFhLm1nMDFbSsG8gj88J6gWtvWn5l2wnw
         e0zsr+D0vAdbLFVWMlf4yLBIJb+GjUlosdLa+ixje9y1XLsgQ/3SnyxG0Y0Kg7GUZAe8
         4xjh9ckjnWEIf4IbCHMMbR3MpIKxoNPouXzX0q4qLiiKzfs5zG9S/WPs8l0oSBCkTWrG
         iQd77Ujs/vwuYIsZfaRpWvbQvBG/vM2T6XNtQ1a84kfsqbUCSfMiTvOG+9ztibp4bglx
         XtWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=kgQT1Y+ntgcPJH5MYwIaH+vB2SwFiRaZPOe5b5QiDRU=;
        b=d6d/yxKkq+KP6PdpveejzdR6U3y1t4UO7r8g1SFSWZkzpmbsGv6p29X84P0lrJ76pq
         uMtqIlXkhK/2DZIhUl6/67nn5YkawZhAcGyGtsg7qcVQU9IBJtRTv1Nnmrv38Db4tCFD
         YgwHnpzn+0pRb1CbyFeRk2rF/G7qyCvPewnYW1BC3WBuL2BxZmb+4UMLB6DzKnI5lZ7g
         RoqCzCIvIL0T10DqcatU4Bp0JNsadY0SthtOrQ/1PECLClqdXioq6/1gbjz1QwNCqGIe
         fL1r3ZUCOzXpE6F3MIVUOe8Rxw7PXMTlT9R0qcPXTNWOFeM4jwv3hjIM1MKOeCG9xqbE
         K+Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="JUEhAG5/";
       spf=pass (google.com: domain of 3l5u1xwwkaeaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3L5u1XwwKAEAucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kgQT1Y+ntgcPJH5MYwIaH+vB2SwFiRaZPOe5b5QiDRU=;
        b=Pi8Rv0HH+i9BgG7WW0U6VZwYDqsM4BEcFdne3m/LiQ1nkhONhXIAUbkUthCkJ6zzP1
         iS5c5sDi62YeZzJwiFEKISjay9FYxVfo0Pe3pStGS18boFaumx0HtXxqEF0RwgbCqp73
         fUgbEV/Ne+XXMCjRbCE84/yRfRT6TN/TPz9lKYxFH80xrO0wGHdDsYHnQAuER5P9RCzF
         d+yR2Yto10dP4sQ65IJ5lJZX+DmlZJYDNcDF1Mch4DZa87MBRUZgT47sgdi92HUTiMrK
         LkzhMt7ov7JWHYB+QE6cWKlrG+Z3pmfLOA7S3PVIL87lrEV8oidERO6Zf3mhe8EQ4O4F
         237A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kgQT1Y+ntgcPJH5MYwIaH+vB2SwFiRaZPOe5b5QiDRU=;
        b=oFCCF1SguO/3V+YpyqUKFG64muve7rLcFWIYh5E81PMBYsMaiD90SDO0dx6NVekWBJ
         J/+e06RZsYnsndFMGAqIxyJAzw1WYvf3w+ie8EBOQIbhbgcfpjz6r3t+kGte8xI5jmBM
         aOmboRqBwMOz02c+JUxKyDQ4/rDGJRkOFQhsDYLyXyLIgNxqlW1eYmuYbES+j6q3fx5m
         NsIdn5OmSj92eTSQPK2DpbxyCPQWwhyt1/3Chm9yGhNZ318Bwp/znJvb9fGnaIT5jXWn
         wph8QLmRZd0QOuWan+Tw+KwC7kfksMuyTsPOUDea8MEBZkRTrx9d/O0XdFaDI5RQd5u2
         3yyQ==
X-Gm-Message-State: AOAM530QHQLvu1U0sSW3ZZa42/SmThmzVmH6rWLxiD3dSLUHy7Ceqv4g
	m3NcdH3bEofp/J51ZY4v5CI=
X-Google-Smtp-Source: ABdhPJxJqxRKCYeXys3je8qAD9t4QqBtJ/thZF8XywokDjt1jVkPwcQaWG+DVFtq5sxuuoCuDNNZog==
X-Received: by 2002:a67:f8c5:: with SMTP id c5mr6047361vsp.18.1605737263944;
        Wed, 18 Nov 2020 14:07:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2046:: with SMTP id q6ls200811vsr.3.gmail; Wed, 18
 Nov 2020 14:07:43 -0800 (PST)
X-Received: by 2002:a67:310d:: with SMTP id x13mr6061823vsx.19.1605737263549;
        Wed, 18 Nov 2020 14:07:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737263; cv=none;
        d=google.com; s=arc-20160816;
        b=FyNN4EeaCux3G7s8YjzbF43BWdtqhNaPjHlzLrWz0IujQBM0VsF7GIMOO8V7YJZdxv
         rVGIOxuoAzlJIsMWALKKED+K5eGXsEEP9ay0quM42Er8E8iMAlPa5qX15WxVCI49AUMF
         tt/xSpj0AM3yQDiyDvK0x6tfOAx0stteJIS+/G9TzqQdOoCiatA06WCX95iSl3M1Y5Mz
         EVr8EbYUxIQvVyK2F9BaXQcsvqIo9lIC3O7efyZWL8cL9GSxKrauayGoJOJYebOcCMY8
         XAf5qOYa26JWaYHZYknPpPlQoyMLFnougYw6rdK19c+ezcvO3I1X6udjL7B/rzQzQ/co
         roIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=7xcmRRx6qvqOlAhBXvPUxdlcJiFGDszFPn6Uy8LsYGg=;
        b=VN8t/gVxap2kz32fVufar+sB1BR8lgPFuwRoqbteX6dhTfn+s2NPHBHZesopuZBxBH
         oXAXhXIoY/HbL1PXDRPUs28jN4Qft9HuSboz8rK7qQLUpzcZaHhylZ7X1Qt8tGKxL22j
         OS3A8wY5ZQDnKRJrwnVPh/Gdf3ZaQTfvuLPet2IUfTbV/Ov0rP1FWQq/l2XxUjQ4uOFn
         8TZaLFDjnRLA+oyoieqfd/LYeaYuaVENDwA2cCBlK4QHCQ0Jzbd3oRaSO+52wV96j8i6
         aZfqEjo6Jg4lWRXR6eHwwhzHbJNLVEMll3OtnVx9c6Qzpw9RML4CdkLMiwvjT7IZYT8h
         +KLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="JUEhAG5/";
       spf=pass (google.com: domain of 3l5u1xwwkaeaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3L5u1XwwKAEAucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id y17si1696885vko.2.2020.11.18.14.07.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:07:43 -0800 (PST)
Received-SPF: pass (google.com: domain of 3l5u1xwwkaeaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id bl3so2508085qvb.8
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:07:43 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:8004:: with SMTP id
 4mr7501644qva.5.1605737263123; Wed, 18 Nov 2020 14:07:43 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:19 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 05/17] kbuild: lto: merge module sections
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
 header.i=@google.com header.s=20161025 header.b="JUEhAG5/";       spf=pass
 (google.com: domain of 3l5u1xwwkaeaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3L5u1XwwKAEAucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
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
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-6-samitolvanen%40google.com.
