Return-Path: <clang-built-linux+bncBC2ORX645YPRBHFFYX5AKGQEXJJCI6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B6725CA56
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:26 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id n19sf2170060pjt.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165085; cv=pass;
        d=google.com; s=arc-20160816;
        b=jj764BCRL4pEn5Xg3+o1E+cvTiG4uVaBAGI5JIgT2Yl2AMU5467OHtxpQ/DM49RgNj
         Ggic9983r78IGG1BgOo6bzKEV7Z9cUmiXbogfebGqwbl22UVERil/uRXPMOj8EBReoSu
         xe6SR5S2F6+vVPkIXANyTVudcis5UUJT7zuhdhBQOW8rwj53aOnnVitsVYyQx3ZPEB0I
         QtEBAbIGy4xlqpGInlWt+Kzwe/dQkuM3DA4eiRvVbvpOLpJjgUBQmD+yQton/N4USBtf
         C4AtUCnWbtYb26WMnN/gJeKpgBCu+dO93UAXy/YEokM9PjGudv4Du/RZVIYqMY6F4r8w
         2DFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=aNOuSrqsIuFJo1mwP7XPOXLyTUYM7SU1YASA4TUqhv4=;
        b=tJOAKup+bAb30yN9wLF35XfFcnyp+qESPlnjY4WQ3NcOW3uN9XePLLXmuMIKkoPSOL
         /FG7PRwKhEO7u/eOjAwUzN4Nibc8zdLdDUHUHnCm0mbgL5olKW6+6XPgFEV1pM260xb/
         YKCNukjUYZMr2yvgMGXu12rmeqz166B1wPOWrHFXCvK1Rh6SLP3xO9obqKfCh6epKCLK
         GmAMk+u/tDN9TcbCn2maxKLTDOUit65SgqcOEoYL966CVt+hg5gAsFTUHCSE2Pyinw7z
         0JWrB3PScQFvJm5yj/8rrs+0mcC6Q7ziQe0Ql3DS9SnsdtOPua42EKU+dsqSkiRU0Q8z
         pqlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f2KZmcgY;
       spf=pass (google.com: domain of 3m1jrxwwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3m1JRXwwKAIY2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aNOuSrqsIuFJo1mwP7XPOXLyTUYM7SU1YASA4TUqhv4=;
        b=qm3O8dfJpP0YcLxKwEPcbvaJT+7Ogj5zBRlGwIL8N9PtiQWSXNbW7jUYk3NUsOq8Fj
         Yt12km0EiJFCn3L6jQ9QuehmihNTM9ACPBtqBuXpCnBizZBrjZGqhFLyfjHDbwzG9Em7
         reQa6inro91PF7f0ik19rhemyzkPpiwW4Tc2qd7pPEoQH9Rb6emLWWR5ybYIjRllpsO2
         gT7Z2QW4kjC54IayGuatSv/IdF2fAfVVYLXTd7X2N2HuI6dfXCLIggslXX7yTfsLvbVK
         2c3801r1S+qrcA/0ru74Yj67FM2hiEAXt8tfCtmPpKsSlN/iJI2DUAs4Z048CB6eYzrf
         vFFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aNOuSrqsIuFJo1mwP7XPOXLyTUYM7SU1YASA4TUqhv4=;
        b=RKpgJmwUpzYi9C6NLxBVVWRnoW24Yzs793Qzq/p7hdFa8KFEEV8N1WvEHP+eRU6eCY
         kXl0MMp4TSAwbs5sTz5aoej8JITPLh/0ZX4Ain7EyaXkFp3KT5hBYI588+0+v7aUmV1o
         5Z0WBTzINLyEEeCC285xDX1+OfJH+CFlKlJeoYb096n1829KMkoiEfXLE+hogFZ0I4QW
         HulNTtyBQHRGOT+qjmF76PbMGl/6z4icsknuR9ClD/66zooLttEekysgeBFqVtR0yPvx
         cQ2OYEYlqwGFwVfI19mQGbDveWthwgOp1dRmeqvN1BxhglRWsRxoErzQjB+BGKRibEl+
         vBhw==
X-Gm-Message-State: AOAM533NGnG9zfM3/uneyfoFkp0VnS8n0DMsGshZz2J4PyUG73JpULvJ
	+hdhHZ4pwoEb0lH2cA164vs=
X-Google-Smtp-Source: ABdhPJz3gaLdup5TgbEy+V24/Cux4hOmUwWeHXY+JNBxxW1Z9ZfC+NF1eC4TOHO0yA/p+jnWr18z/g==
X-Received: by 2002:a17:902:988f:: with SMTP id s15mr5608067plp.26.1599165084812;
        Thu, 03 Sep 2020 13:31:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b4c:: with SMTP id g12ls3505959plt.7.gmail; Thu, 03
 Sep 2020 13:31:24 -0700 (PDT)
X-Received: by 2002:a17:90a:6b07:: with SMTP id v7mr5062987pjj.138.1599165084319;
        Thu, 03 Sep 2020 13:31:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165084; cv=none;
        d=google.com; s=arc-20160816;
        b=pUGqkx1jWZNBhGOPGDgis7NR3uKGuI08Lcjdq5C8qzesLCkm0n+FzphCQItH255Z7j
         0G4qBv5DzDCeAscIvmn8+HBr8B4ZKFjMNeUX3q/JT17jlpKlLARdfli4sgnBSq5R9AuR
         OrlPmKEQc4pEX7E3x56uAzPX12rWYbdRIM/+3ASqfPspqf0sDvxKbNBfRerqqjIOqyDb
         /KbaMBDC0+isDHBhxP+DSlawRcx7xeFSp40iP9lAR5RPXolT1Q0q3GSUrq/hZH72agLy
         6b3Fs83WT0I6o5L3De95sBsg+b+Ep+y7w3zVrSQyG/WBOWZbvO3Gcq7u26j9Jcrf0W70
         EtRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=cFYZU8yCmBPQlyxKhbN3fBJPGbsM547TbMqCUcHgNNs=;
        b=lH+mAL17DPlTvh4EliuMXU8WauNpCfOG6/bLzbuAiKkmhggyS+AGSOQO9LIWg1Zo7d
         UUAyDPeI52mEK2Q54XyJ2384dlBwbB6Zyn/VhRQoSs60Wg0ehN3PIDPS7pHqvpGxfWxa
         kchFgomODpKYmOQLV631UdiBE25TetqDzf87jbRubrxkfagIJHS/flkiwgbqyNqYMMab
         bFF+7KZblxsykfAH3XNPAthY9Zu5RGsesbZ/YzXQ3WcWHbO3h+jDnxZoSsdSeJfp6X3w
         aMFiE7Nwnz3tSI54ODcvlKIpZlVNhrpfDNhiZ10Llg/VyOUhVEFoYx+/1KHBB/jIOpKN
         k8Ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f2KZmcgY;
       spf=pass (google.com: domain of 3m1jrxwwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3m1JRXwwKAIY2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id t6si235003pjq.2.2020.09.03.13.31.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3m1jrxwwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id b54so1352036qtk.17
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:24 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:ba8e:: with SMTP id
 x14mr4773039qvf.23.1599165083400; Thu, 03 Sep 2020 13:31:23 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:39 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 14/28] kbuild: lto: remove duplicate dependencies from .mod files
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
 header.i=@google.com header.s=20161025 header.b=f2KZmcgY;       spf=pass
 (google.com: domain of 3m1jrxwwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3m1JRXwwKAIY2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
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

With LTO, llvm-nm prints out symbols for each archive member
separately, which results in a lot of duplicate dependencies in the
.mod file when CONFIG_TRIM_UNUSED_SYMS is enabled. When a module
consists of several compilation units, the output can exceed the
default xargs command size limit and split the dependency list to
multiple lines, which results in used symbols getting trimmed.

This change removes duplicate dependencies, which will reduce the
probability of this happening and makes .mod files smaller and
easier to read.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 scripts/Makefile.build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index b8f1f0d65a73..3bb36b4b853c 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -286,7 +286,7 @@ endef
 
 # List module undefined symbols (or empty line if not enabled)
 ifdef CONFIG_TRIM_UNUSED_KSYMS
-cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | xargs echo
+cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | sort -u | xargs echo
 else
 cmd_undef_syms = echo
 endif
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-15-samitolvanen%40google.com.
