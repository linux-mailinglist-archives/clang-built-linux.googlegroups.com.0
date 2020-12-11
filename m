Return-Path: <clang-built-linux+bncBC2ORX645YPRBJX5Z37AKGQEXJSRNTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDA52D7E5D
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:47:03 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id r20sf7873290ilh.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:47:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712422; cv=pass;
        d=google.com; s=arc-20160816;
        b=DRp20PTDgcZRhRJZB6tPB+ar4H/LUilNuNsP+G3sruoxp+rx3U7IIHZm4MBqBsxgr5
         +btwo33BIC2NLHNbKOr0Vu0OF3wWcrHAWVuY3VubXRpdb6hXXJHIfZbzI4DmM7qYFLrR
         KkmASZaZli4KuuyWrHDhgnqCaxg4841jRfH8kFJJp5oD9+YbYIiMjDT6Z8olZiMBmB2p
         VmIwhmSkFcR5HpzUxuGjd/FGqNAkwEgTMJj41bK10sEcYjABdMrNzjMqimt4CqKCbCtu
         XQBeh+5oZI/iH6B16g1Up+7ai1OhHMY21b9b0forM+TGSJhcOC9anD7jFQk43gTOcwnJ
         2zhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=alz8IrovMRJC+GK1h6D3P7imDPf2PZeT12SvvW3M1Kw=;
        b=CMRxmghfk8ByDKpgm+x65XMzTk4DT6+sTfJ3Jcm2HMoJUB8Z210t+J+iy1gBNb5A2M
         0Ikv8FtUIg0JlHVz6NHxsIcs55B6Y65mm1qzAFMChhRZOLRd6fJy0K1EakIMzbHAHp1K
         MHY+hm/K7JA+PTNp/vVVEe1ggXFRka1S/a+WuY5QoL8b25U5rr/hzW7AZl/+TzEcN5rA
         5K9cZH12ajix+joYVfKOl/aTU4PTOE7k/57Ch491HsKN9yCnixAK1RIpejTZuhQxyi5s
         GjT7bQlJG4RlUTkRzWBXMerrtjHuYSfFQG7d69i1wRZEUWTut5qd2pzThiCxAsz022ix
         IJAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E+U0sSuZ;
       spf=pass (google.com: domain of 3pb7txwwkahymugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3pb7TXwwKAHYmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=alz8IrovMRJC+GK1h6D3P7imDPf2PZeT12SvvW3M1Kw=;
        b=KB8pIlVipJAQGFo6HHo54KzZG5WxbRNG5PAhyX/ZJM15zRDZfyMO6zNWy8PhV6XgyV
         K3CDbdIIoLN/Jzkhb7QK5gPjxOWzawgLilKYz8vJgajDFqC7pL6F6azUyARpTYSFLHaO
         EAJOpIQnjnxArkHDMT0/PE7l55t69Fw473B9P2QuuWY1JN2X2GF69AGkVCV05W6JrlvO
         /ewcEeppD0vaxz7YCeUKy+f97hgdNUyuW7/bbzr4EF6TeZzOtXCfK0x3KXz2bMPnM571
         j5czaAvwpw9ziRXuMMnwhOBetT9ROqW1ssgUju00zAukro6b2+1dTVlvFXp3yNwtS1gx
         lDAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=alz8IrovMRJC+GK1h6D3P7imDPf2PZeT12SvvW3M1Kw=;
        b=E9/vadH+cI2vQmuoEjEDRGY0+GJus1QR1icanIDFTX+3/l3s8MJKgCud9m1s/Fobwg
         AqRcC+Wv3UD/v3FkRj/tAY8sgdSlbz/2nquxcfLFos2CjSjefXKo40Lw052SaSBKYkjx
         gB0YONn8qXPSw8hK4+cdiZkCTTZQmzf99N103akiNsl5XeK85g/0FPVZw/xVr2znDwZx
         BMrO8cMQVkn/5FrIsTuZMtguoQmy1bOLMPnnrKzVp3NVYsy6LytdEQeUD9MDi/Pep5va
         RNxFkGE/i4BU7O1XiPj7HbNd8f4+np5dNCjrxkhNmhMRKRMJ22AGlxC9pa0wO5YxE0gk
         J6pg==
X-Gm-Message-State: AOAM5337Xp30jHwkr+X5fiqW1MzSdQj4U2e+zFK9dvVQ/+ZV28F7MgCz
	GOS440Z7HPpy78h6MHqj4vQ=
X-Google-Smtp-Source: ABdhPJyJeh3nvGN5wVKKmNQL5xy1phtm345C8s1ltu5cZA1gi37e4BJTXg3U1Mztx9JGIMDs1pH9hA==
X-Received: by 2002:a92:cb0d:: with SMTP id s13mr17816596ilo.73.1607712422661;
        Fri, 11 Dec 2020 10:47:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9f06:: with SMTP id q6ls1613507iot.1.gmail; Fri, 11 Dec
 2020 10:47:02 -0800 (PST)
X-Received: by 2002:a05:6602:93:: with SMTP id h19mr16363543iob.59.1607712422133;
        Fri, 11 Dec 2020 10:47:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712422; cv=none;
        d=google.com; s=arc-20160816;
        b=DMzTb6HMCgSeJE3PqvLhd2atujd6f7rFSZ4EIu+5nJS4FRzJVN10+NqH3rpaMnvdWH
         1GSco1e3WZpXKp2HzjAhf0BCXuhnba29np9XGAZG7lQvwd3GodJMIjJA0t4yCge5XPQX
         3klp/iMqdx9W2yfqZvbXmBZDfl62SSOtWG6rwtYEDK/AEUOSX5jrylQTyX4kQ+lxeTg+
         TnZHkokSLLXgcOcYjFxjg/U1u1OACAVjWlci9ezp6EeQcnjJ9I4FG17Di5NzbU/03Waw
         VB1PB66j+SIERC/RrIFs2bU49sMOWfFg40xJ74f65+3BCIL+SzggW4seXgXF5sZSC7WK
         6e7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=aPTc8wYkBIIZS9XLhaJqPHrVGew/rHRzWtLqs6SwnEk=;
        b=uGTCOdO7AmsSIaxA8u427BnxgMwDCmUETw779doAnyWIaA1ufEnkbVblHzMI1avGuL
         SCHOaEVDTGalcLKsUee9BIVP+jobBbOoT8SmQVtz3ev8rsHMqvuWntFXy7rxyxeSoJK5
         RqUYMd/hkqIvg41LL8j6ot3fuYHA/V/cDQxMRWtJ1owElJ9d6wRLq2DSedvSB/Ct1+ON
         6xAT3u82cHjss+EjzG6Ct5pqtRgcbVh13tBxTSSL1P8ptIH1mFF9fTVUMJCaH/cfoZUv
         US6NEKdyASvPHPUAjvjstu+EBxKM3dxQFchvteszDrXRWafcBtBk16cbbzD2oozi/0HZ
         3W6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E+U0sSuZ;
       spf=pass (google.com: domain of 3pb7txwwkahymugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3pb7TXwwKAHYmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id p8si712586iln.0.2020.12.11.10.47.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:47:02 -0800 (PST)
Received-SPF: pass (google.com: domain of 3pb7txwwkahymugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id 32so833870plf.3
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:47:02 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:90a:a24:: with SMTP id
 o33mr10805536pjo.191.1607712421542; Fri, 11 Dec 2020 10:47:01 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:30 -0800
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Message-Id: <20201211184633.3213045-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 13/16] drivers/misc/lkdtm: disable LTO for rodata.o
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
 header.i=@google.com header.s=20161025 header.b=E+U0sSuZ;       spf=pass
 (google.com: domain of 3pb7txwwkahymugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3pb7TXwwKAHYmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
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

Disable LTO for rodata.o to allow objcopy to be used to
manipulate sections.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/misc/lkdtm/Makefile b/drivers/misc/lkdtm/Makefile
index c70b3822013f..dd4c936d4d73 100644
--- a/drivers/misc/lkdtm/Makefile
+++ b/drivers/misc/lkdtm/Makefile
@@ -13,6 +13,7 @@ lkdtm-$(CONFIG_LKDTM)		+= cfi.o
 
 KASAN_SANITIZE_stackleak.o	:= n
 KCOV_INSTRUMENT_rodata.o	:= n
+CFLAGS_REMOVE_rodata.o		+= $(CC_FLAGS_LTO)
 
 OBJCOPYFLAGS :=
 OBJCOPYFLAGS_rodata_objcopy.o	:= \
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-14-samitolvanen%40google.com.
