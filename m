Return-Path: <clang-built-linux+bncBC2ORX645YPRBMVFYX5AKGQEUXI7ZFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F6F25CA69
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:47 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id q4sf2504426qvr.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165106; cv=pass;
        d=google.com; s=arc-20160816;
        b=OqIMjiz8H5uS4wHbc9g3oOOh0q/EAjO5kUIyQ0DUupb/e2iVJWUByZZpZNSJ+EnQxA
         i+ydByGWmWanNsKE9g1NAyDpUN2zRKg13c9k3iZPF8lH4NpELxXD04SDkPoOcb2kQ4Er
         MeO78RCT6ipQJ96EY7jen4lvpqcQAIzYDOy3IYa0l3p/U3XyzGN3sw33zSZpNfpJAp+S
         PvsHTN4d4WoBExHz0F9SaxBPp0tgZYx+I7tX6lJEkhhCZ92xW+r32/15MD7ueQJWd74D
         CrqyxaRSmYlZv3KpgeMZR84xgsCThCY0bBV6FvW7fuq3OKcDZyJ1Zha8AFc6XlHJqc5v
         aZug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Lh+5L//KfGTh2fa/hdI+bR+aisOBt9J5Sd/MCF1qLlE=;
        b=NsIi6/GCEbWgifeagG/fiFy1thWBPzwFKV7Ty955VelQ6pbs0JocheRLZZ3MmMdtd/
         /aW7bKElgHr0UhzchS8XSQ3m1QnaVeEUwXeDFl6IoAXsIz6HBl13oRBaBEn10RYTeu0s
         uEUQp4moqCmZ/cIkDd6nMcbzFyaTN7Awyo7uj42d2o4fc6HCR+f/5XbseOB0KVqVl7Af
         7rhFyrE1tJDiRTCmUPTSRYBsfSmGiR3lruZdd3/ApceE1SffKUroLZ7yyVjFzuPvVEPL
         a/0YhJBE2dLAa9P6Aq/Z7gdwpEVat/tPDo3lQXnmuui4JptOqgCWz1iWv5FnBqYjh8Q0
         QwvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iQC3MXcn;
       spf=pass (google.com: domain of 3svjrxwwkajwo6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3sVJRXwwKAJwO6IEPKHR6JAJCKKCHA.8KI@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Lh+5L//KfGTh2fa/hdI+bR+aisOBt9J5Sd/MCF1qLlE=;
        b=f6TlA+jq3bSJWNP4eCtUdq4OziwVuoyw85MfS68qfqLxJht97BCgrmKCRh+oesFwjf
         3tOEpeaeAO/wJWIW112zASS2zXTdGB7QW+1kc+dW0foSoVNsHdZWU35s7uX7lYYUNCYR
         3hAg8EVDc/5BaQBEEquZ0TwIKsnxB+5tN/LROTDM+iQAq6cWlygo/FncPvdjY35TI2Nd
         9/RNh+P5pZEYdO9qMImDTfb68f7+BMHXhNeuQXbr/2r642PVsy6CYY5N3YRLhYRd346y
         AAxhfVMkL5xkId8ALyCDY1T7a+X9nQTGnVC1b9ypCRuYd5O/0nQFX/F1O8WpRf2Ld1fd
         qVAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lh+5L//KfGTh2fa/hdI+bR+aisOBt9J5Sd/MCF1qLlE=;
        b=qtEg0whS6iIsAFA2db4jZfgJXm0xwR/idJhtN1JeY59NxXHhLeMGkYnAijFG3VgCtc
         +hHgjWvn0XXWezXjjqiyp5A1ULEHsMwyPeJUr8ZeE2I9eo73Dd5RiF/lBBd1HCgRWLqR
         lba+XQEE5SL+/A72kYTUXE4yqLSvfFsM9WuaCi1bXTqxzD7PGFqOfbL19M4NcqSxJjf2
         dwNkFJEfjbupE8MZXagf5rVgCxoX49aggz+h15gaqTOMzgM8YTkoSt26YxXewDiUQ525
         IB011Dw8BuRbFvR+npBmXYx3g9DXMn5cyuookcv8riFgnR0q0AbxDC2iv22UCBROlDmW
         HkJw==
X-Gm-Message-State: AOAM530xbFdhjlh+5jBYQ0C+13++KBISMcDWC1BcqkpThGqevfXcpcfz
	7gqc1KzJ9qMowhqe36dJTNs=
X-Google-Smtp-Source: ABdhPJza+jBzRcUAM3lyqt/f1oNjbru3DfOA9SUMAZTxR4JClMx1lOv7GooDlkiikJYoYnWQ0paBHQ==
X-Received: by 2002:a05:6214:8a:: with SMTP id n10mr4793233qvr.13.1599165106540;
        Thu, 03 Sep 2020 13:31:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d6c7:: with SMTP id l7ls1633732qvi.8.gmail; Thu, 03 Sep
 2020 13:31:46 -0700 (PDT)
X-Received: by 2002:ad4:408a:: with SMTP id l10mr4734874qvp.89.1599165106213;
        Thu, 03 Sep 2020 13:31:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165106; cv=none;
        d=google.com; s=arc-20160816;
        b=EOUBIq3GDI74l+FjmUkBWFA6CB4H9k7TFoSsnkDTGpB9ABEBpsaHezrXGNUENsbNSt
         fnaYvnURCGbuYaX+po7BA3vKb/DqGUeibcJhbrUzYrl2KcBtSCO5/ZZKdsGvKYGmENY0
         bYneD9ZtsfDLs69YyrWcFVmC1O+/YJhuyTp1AFQVWS2NU0Rg8aY8OM18EXGV1rOpSZYW
         gj/yP1DefHiqJ2tAtj3vvPyJZOvPLPgWHmFRgNPwAsIw/14+nfNfz6khg2bOEIOyJo0v
         aByXFwoR+1UO0CXAtWiz4CWQYdnQrTr9dtvJu5oT3PNrmUWm2WAOLN7OJWzbqar43oqJ
         2gxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=2NV0P0BZEhFeVXK5NU1s/CPB7b09hharJKRKaO0KUAA=;
        b=NUEcUtg/riLTDZ4dzBoFGNMt7Cb1WnI+e0c3Pzxk2ssC2AdRS163jenxAsPjtNnqis
         OP1kjWMbnpVrtb5SvVjkBsnomWWFBw2iM5UIJxmxzsyOpT3rB7Zu8Uuj5wsFJi4HSCwH
         3BVn21j8D3o2Im10oikHS/ThNfZ+Ok6O7Bq9tZGolq0l7CJx8e5BW2TDaUrPr+Eim3QJ
         ccjiWFp0gWxPep96zYFPLbWchkzbnEWp2z2EsRaCcD6/UfbPIZ4+RnOOEho/EryPSFDi
         07fTOTV+7QOxYBurmtM1dmCSW4c13A/GjKP965OO9nc7lmCII3YNJBOD6vxzyXJc+tM/
         hukQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iQC3MXcn;
       spf=pass (google.com: domain of 3svjrxwwkajwo6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3sVJRXwwKAJwO6IEPKHR6JAJCKKCHA.8KI@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id a189si287930qke.3.2020.09.03.13.31.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3svjrxwwkajwo6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id e4so2481078pgv.7
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:46 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a62:e107:0:b029:13c:1611:658b with
 SMTP id q7-20020a62e1070000b029013c1611658bmr3713577pfh.8.1599165105298; Thu,
 03 Sep 2020 13:31:45 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:49 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-25-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 24/28] KVM: arm64: disable LTO for the nVHE directory
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
 header.i=@google.com header.s=20161025 header.b=iQC3MXcn;       spf=pass
 (google.com: domain of 3svjrxwwkajwo6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3sVJRXwwKAJwO6IEPKHR6JAJCKKCHA.8KI@flex--samitolvanen.bounces.google.com;
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

We use objcopy to manipulate ELF binaries for the nvhe code,
which fails with LTO as the compiler produces LLVM bitcode
instead. Disable LTO for this code to allow objcopy to be used.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kvm/hyp/nvhe/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index aef76487edc2..c903c8f31280 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -45,9 +45,9 @@ quiet_cmd_hypcopy = HYPCOPY $@
 		   --rename-section=.text=.hyp.text			\
 		   $< $@
 
-# Remove ftrace and Shadow Call Stack CFLAGS.
+# Remove ftrace, LTO, and Shadow Call Stack CFLAGS.
 # This is equivalent to the 'notrace' and '__noscs' annotations.
-KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_LTO) $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
 
 # KVM nVHE code is run at a different exception code with a different map, so
 # compiler instrumentation that inserts callbacks or checks into the code may
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-25-samitolvanen%40google.com.
