Return-Path: <clang-built-linux+bncBC2ORX645YPRBQ5W236QKGQE3OKW3EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 7697C2B8732
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:08:04 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id x23sf1421115vkx.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:08:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737283; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xjl+ovHkX74ptgL8whJa4E8x+kuMbQJcxMD+ftjRlTy4lXy86YKNersG41cp07nqyc
         DrpL930t8f8s6uAnztOj/yM8gswsqoL//uMDWi2CfuVu6sf/HO4zA5yzptHND0y5Jjob
         15WEEnj12vp2q469YJs29NFe/HnE9h1Lf2JeOp25f0SrYyuSYs2ce0/PRBJV8YD1o6pX
         VMcNjwjTErMr0lUNDWGbHm/OvjooKMHD5puFdZsNHKNESN7nQMjoA0O5bK+sAwhDaf/V
         ME8Yl/rDxbuT1N0lQxc++BPXN7J9JhZoGFpicHaOjVIta4NhtPXkHUiK1VKHC/OFDgsH
         Gnfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=r5iiVXDVOuy11UaNsfJziSXhgqGWDxGl+/fnbb9loIo=;
        b=0w+GMcaRQy+ab25iCNN6QSxJd3guSZIN1Pp3DpBhUjPo81VkF0EOd0jiQk8IejTtLd
         nE8CoAqFZPf674pWSQXMfTICb4xnng5hotuCjbCwf1bHI7IRWKGv8pIzDfKwoPC1OQba
         oNengBrboneUzS9LDWIR1oM1fL/gh6kjWQRgLq8fA3vIjXrQefaOLo/Br/eD1flPkRYq
         kaTYqdC0r+AZvsKk3lX/0Dwo9X22vdri88oOdqKdjd53rA/oGvn5NYaojo36H3gUZod9
         FlgQoWInr7Axo7LMCkLrciHPUT6YIYzjZnOd2KU1Up3Ej1bivCf3w4N5LgU3KN2Ukqw/
         bX/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wXL6d0K4;
       spf=pass (google.com: domain of 3qpu1xwwkafmdv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3Qpu1XwwKAFMDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=r5iiVXDVOuy11UaNsfJziSXhgqGWDxGl+/fnbb9loIo=;
        b=kTbOGmqwssKC6f7Vx1Sjti7mfPpqcJJLsSvrfGOtIl99W/DU+aFTtA+jSuhYbHdbeg
         1gaM7GU2ZXLYyo4IV+rWPjfxmxqATxdv4zL7P9rU72h6qR8cuWNfnx94YxwLjFFt8RAq
         8ZAMUItTKM+y06Dj8R89Kyj6poCC8vppJSWwnV5bRKOKPRNLQdmCxvXRNU3+Xkw1Qkqt
         2Gn3cqwj8f4J6naOAxQ3gfgPo2B5USb9AEMVtQDpRO81mIunzcHaE1B287rHhAILToY0
         MeGMRKZ0Xd317NE4DMlDwDiUeGzC3QNXhueBnhFx42AkCR3SL1Dar1PZmyu6jKw0h57v
         SK+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r5iiVXDVOuy11UaNsfJziSXhgqGWDxGl+/fnbb9loIo=;
        b=TwYfIP2KqA8/pZn4SBA+UyK+5RMZCs0RKN5xonRqUEUgi/0ZCMBAF2ymjDf4F57V+D
         9E6LxC6j1tcEwtEz43V4BhO4XDTEp2mjezto/EUyFbkJq8Yd/Aum8wD5Miosa8iGs1A4
         O7wr20dyTu/AmcDypyyUasCJdbxi8yeOSPh6EFIMIhLR5/ZsskMtvD2p4CvWcGoQmbKR
         tX8C35Gsnm1QJ7lCzDBUbPC5wgXGxYQiufOVTw14y3tmCJdtIkKDAKjEo+kbCIPbwyAK
         yQU2g//dT0VbNJiQWvWW7mGSa6gyAepPvivHaOwO/fHQERUCA3U4xIaRKMlqkmlcGV5O
         GIhA==
X-Gm-Message-State: AOAM532FiDAIqpEdCJjQc245siZOO9BIDo203nZ75yjiF6Es9HRLf44Y
	olhIIE9Q4BZAbzsW3LgVDx8=
X-Google-Smtp-Source: ABdhPJzvP0sHyMr+V8uW0pE0ryR81oCWT7udRQvRFpHjTz1Y6hbhcfjjlFcmKyiIduxB6q/LrIbQbA==
X-Received: by 2002:a67:d84:: with SMTP id 126mr5954104vsn.43.1605737283575;
        Wed, 18 Nov 2020 14:08:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3137:: with SMTP id f23ls191396vsh.10.gmail; Wed,
 18 Nov 2020 14:08:03 -0800 (PST)
X-Received: by 2002:a67:fc45:: with SMTP id p5mr5926054vsq.33.1605737283135;
        Wed, 18 Nov 2020 14:08:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737283; cv=none;
        d=google.com; s=arc-20160816;
        b=d82oYi1QIpcqVVsT62BaxekaeOrPQPqLupEalsp6k+X+Cqv3j7+mAw3Eujkrm/b+rD
         gNMrRIB2NjHYhWSN92EuR0jQigRx4+wNU02rRSqqXkPVmQSzKpweK/eYtKQLHEj3i2bh
         QWNv5APt/hRxphS2zrlOTrQ3haryKATqzg1O7Lfzvgggkbk9oAaFzd/V0Ddzmuro1lss
         2MT6dYBl9PdezFl7xqtRTgdJGlqiwSx078bCe2pUMb2txx94qD1/nErWixPM8hPLjwsw
         RNxgR9Cx0hbDoYq6aFO4Pw1zpERL4Q1aIjwEAT6qZDWBtKh7/oFbbJNR+pJ9ADDINzDw
         VU+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=mxI/yASg0f6Fr52O8HbJJtAQuezjHMCx8HIdyf0ndaw=;
        b=L2SAz3qdO5foTjkW/Ud6rBhzGbygS6Puf34+MHg/lpWOgarolH76gmb6lvtN32RCYY
         KcGH+AOzzZyaySyZJQ31BtdNtQr5qz7p/GhXCAqJNWOnbgKwOpACCbx5K54jlTBA31/a
         wO0VoKUFeJERM37wzf1YgvMNLLVzLo9Gl+IUQX8yaEdsifUK2Tu4oje3KL6M1RA/8f27
         bzb7U4QvNcnzH7CleiymFYQZrME36/VSzhh2+cvGRn5H1Q/kOwxqoJU058kEGmOQ9SJ1
         HBaj9XvW9S11Vy/ceDzOdgti+arInM5iNjXu16DARos5t03wFvwFUV1ARRUrOhtIXh92
         qyJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wXL6d0K4;
       spf=pass (google.com: domain of 3qpu1xwwkafmdv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3Qpu1XwwKAFMDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id y17si1696959vko.2.2020.11.18.14.08.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:08:03 -0800 (PST)
Received-SPF: pass (google.com: domain of 3qpu1xwwkafmdv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id o1so2652535qtp.7
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:08:03 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:b34a:: with SMTP id
 a10mr7403176qvf.15.1605737282753; Wed, 18 Nov 2020 14:08:02 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:27 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 13/17] drivers/misc/lkdtm: disable LTO for rodata.o
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
 header.i=@google.com header.s=20161025 header.b=wXL6d0K4;       spf=pass
 (google.com: domain of 3qpu1xwwkafmdv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3Qpu1XwwKAFMDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
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
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-14-samitolvanen%40google.com.
