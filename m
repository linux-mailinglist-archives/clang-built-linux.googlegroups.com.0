Return-Path: <clang-built-linux+bncBC7JPD5NQEBBB4WE23VAKGQEJZU7PAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E778F320
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 20:20:36 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id g18sf1770889plj.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 11:20:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565893234; cv=pass;
        d=google.com; s=arc-20160816;
        b=TK9E1iyXy30Vusu+vy3nSKSpsScFiCC0ba+MBo7FCvi+XY1f31U7PP+Reks6mhvUG+
         Mf9sreeAdWaUdgVOiwPbZ/41j5SZdsvBhqpkiWQCPYJJbwMABLm2ICoMhu+1Rss0/s+I
         uVX4lNwczy+CWKTXs3C+X6YdhLPiUrjCRpZUwklfTJS7ygdBHp52AgylFwlVZMmuFpU3
         BHXeQnpEFewdGSHsx+6XH2mzUuFZJVJP3AfR6wU9fIk8D9anF4GyGB9QD0ZueH0/DzMM
         /2Z/Kadt87dv8WuTKplCUwZp1OlTM74mRrr8NtjS1oqLf7rLrMsVFOO6+qrt65k5QFcK
         ahYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=vC5Yu9+A1qF0uQiZZHLF1gYrQasIGKo4369sWPiKnWg=;
        b=XJSky9wXO2VoDoHyqytW5ytoMUxbcV1+wG+M2MGVG9b/QEnnV8o7jGXFKwM0cVeoME
         N6YEjOqww5fhd/363y5dHLZ+7B0dj9qbYon1kqRg5FN6XML5Zf0w16bA6ypu8T6hxQ3y
         TiR8YCuo9wNOrCfG8xBYfK05UYZjKEP2421EzXSHlptsKqsPoqyPj1EFvpb+9q3cxExm
         49HP6tov97ecqaXHkSpUeyTMAVZQWEyyGVFeMH2T0D0kllSMWDDhx11fyt2hsBiKi/5t
         lzV7QnBIKpAWS0qa7LmRcR/QUKISAIPsvJrqrOyWqfqABQgpvSOS6DiBf/yENpJyG9DO
         FYYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b6z6Kd9S;
       spf=pass (google.com: domain of 3ckjvxqukefsqkxfnjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3cKJVXQUKEfsqkxfnjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=vC5Yu9+A1qF0uQiZZHLF1gYrQasIGKo4369sWPiKnWg=;
        b=m+86aCTPmL8O04OmnslIJdOTGVQcdM9zTz31j53UoQSotq8TDm792jbWdFTaR+aG1g
         3S8WlhXCX1QzcVvi44WgYft3iooWMPjAfvUw+RDo/rV1G5wBBm1YcD6sjW/iYHvRLONQ
         hcc1ZFnSZb73MqNy2eSqW63qT9CTbxYF3ePttxHdkFchoOtlQ0U3jqxm6nyNkyY2z6PF
         bfqAtuB3CE8LC8Fypu4DijXziORvNoi3JKPSRL93+0dHSkaqwsy8283aBehziLPOky6S
         qEDV8xr4e5lfYW5e7fHfQSvLEFm8yGQmP/af5X/Ha9JZ5KZUkpI4HYKqCQ91P95YPrQd
         rCkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vC5Yu9+A1qF0uQiZZHLF1gYrQasIGKo4369sWPiKnWg=;
        b=YNKrAk4dv8VzUbSe4IbMuGUsFLtsuyY84XZcdI4i+h9c5hKHp55yxMTF/X51zzJv5F
         AmmYJ70wBz4D7mQ7xcjYKW7SwmVlwm1+KlgOcsWESrH/d231t7hhezrHyA/hsptO4zo3
         LkxvhNrPIN+5oK7HkCy/KqWsuPuys0nV8ftKn/EPhJroMMka7tOvqcbG/cOb6dZbaD11
         WH/DXibtVahI5uq6lPQ1keFiAJcDmqhTfoYNC5dfqGyLwRU6xWGPDGxErGDU5x9ZVYTb
         1CP9qr7K2PO7Bt4sFcK7nk/auwZgDSYU8DaI99h0BhruuaHhz9NZgJsa8EgdJ0ZpyFXS
         Oz7w==
X-Gm-Message-State: APjAAAV14pflSvwO6IuZVRLBp7jvfT9S6GgSIIHOcjN5quoMqINdeib+
	zJVzGqOkhyXugBwciidP9iM=
X-Google-Smtp-Source: APXvYqw7RvqVaodAmeUYSXz+09/MwS/4QIeF8DKw2HZWOMRlBgZ6Fyxysq5I7cYhTaFyGdUsBoTfxQ==
X-Received: by 2002:a63:125c:: with SMTP id 28mr4496733pgs.255.1565893234306;
        Thu, 15 Aug 2019 11:20:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fc15:: with SMTP id j21ls1257157pgi.9.gmail; Thu, 15 Aug
 2019 11:20:34 -0700 (PDT)
X-Received: by 2002:a63:381d:: with SMTP id f29mr4656167pga.101.1565893233915;
        Thu, 15 Aug 2019 11:20:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565893233; cv=none;
        d=google.com; s=arc-20160816;
        b=YH7C/T/FqH1XKIHT5C/FlsylRCgZIfek+S3OAQMtS4bHZ7LUz9bho7A1YcwFN8jjPO
         c+ioxuw5OhhIVZx4upOsrs2vdj7pHhZFKnJ5+bUyPfuVIhylZg5SfBBiAJr2GW8/H8yR
         kV/jP7OwdJeLOM+57khBOjKuDEUkfaSxTFpAjRP9lcGc2eC3tBsBHcx9RJKWg0Oun+zo
         EMrVQ4arT8odFCHYycmYAthuZbdOUTbN5gl7bymrfzqeZCziVUFqFfKGdc9j9X+wHjQL
         FgVNohzl60LfABTZHQ+sULnSWvXcMM0Tj+CWq98ZbjDe32jDVr/pjMKrl+jmdSkiTHei
         Wq1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=H21ITYUHPl8jPlR91yWJPzMgLH3swJ34NAnanW4jJ2Y=;
        b=fskNU12BU4/u4tlIfIsIWMCugDkeFtXymJEH6+0/NQYekzLjslUSW9AUoA8zRnpC1M
         Wa8TrBgs+xYgkFd+bZOC4obHbFpDeY2LN4sJPydZzp9s1uN7jhPdJAGwkxRJfh+ekWkE
         pmcJcnN2STSs8Lh0wyv/7FuLcBsNjegADwoeKE3WzjrcTIMpHqf4q27hGcD7LeQzdYfv
         KRRkwh6yIkG+dIXV/fFAJoYkvmQ3Y4TeVJr31sEl+oEIJ1c+0BeUkW4jyjKZmLBqnNQQ
         BGyQpbFV902C76skxVdfIlTjoFU1VBU4G8OPFDZ8z0Ir5tb3CDy7cZdNeZyerBz+OO6B
         GUYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b6z6Kd9S;
       spf=pass (google.com: domain of 3ckjvxqukefsqkxfnjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3cKJVXQUKEfsqkxfnjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id ck6si135716plb.4.2019.08.15.11.20.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 11:20:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ckjvxqukefsqkxfnjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id y67so2866783qkc.14
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 11:20:33 -0700 (PDT)
X-Received: by 2002:a0c:db88:: with SMTP id m8mr4275575qvk.143.1565893232928;
 Thu, 15 Aug 2019 11:20:32 -0700 (PDT)
Date: Thu, 15 Aug 2019 11:20:29 -0700
Message-Id: <20190815182029.197604-1-nhuck@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH] kbuild: Require W=1 for -Wimplicit-fallthrough with clang
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: yamada.masahiro@socionext.com, michal.lkml@markovi.net, joe@perches.com, 
	miguel.ojeda.sandonis@gmail.com
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=b6z6Kd9S;       spf=pass
 (google.com: domain of 3ckjvxqukefsqkxfnjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3cKJVXQUKEfsqkxfnjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

Clang is updating to support -Wimplicit-fallthrough on C
https://reviews.llvm.org/D64838. Since clang does not
support the comment version of fallthrough annotations
this update causes an additional 50k warnings. Most
of these warnings (>49k) are duplicates from header files.

This patch is intended to be reverted after the warnings
have been cleaned up.

Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 Makefile                   | 4 ++++
 scripts/Makefile.extrawarn | 3 +++
 2 files changed, 7 insertions(+)

diff --git a/Makefile b/Makefile
index 1b23f95db176..93b9744e66a2 100644
--- a/Makefile
+++ b/Makefile
@@ -846,7 +846,11 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 KBUILD_CFLAGS += -Wdeclaration-after-statement
 
 # Warn about unmarked fall-throughs in switch statement.
+# If the compiler is clang, this warning is only enabled if W=1 in
+# Makefile.extrawarn
+ifndef CONFIG_CC_IS_CLANG
 KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
+endif
 
 # Variable Length Arrays (VLAs) should not be used anywhere in the kernel
 KBUILD_CFLAGS += -Wvla
diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index a74ce2e3c33e..e12359d69bb7 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -30,6 +30,9 @@ warning-1 += $(call cc-option, -Wunused-but-set-variable)
 warning-1 += $(call cc-option, -Wunused-const-variable)
 warning-1 += $(call cc-option, -Wpacked-not-aligned)
 warning-1 += $(call cc-option, -Wstringop-truncation)
+ifdef CONFIG_CC_IS_CLANG
+KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
+endif
 # The following turn off the warnings enabled by -Wextra
 warning-1 += -Wno-missing-field-initializers
 warning-1 += -Wno-sign-compare
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190815182029.197604-1-nhuck%40google.com.
