Return-Path: <clang-built-linux+bncBC2ORX645YPRBEFFYX5AKGQEME57X3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F4E25CA4B
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:13 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id f20sf3248343ilg.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165072; cv=pass;
        d=google.com; s=arc-20160816;
        b=oHH6Sn++rLvRVi9IT91M3NTUtDtNkO2AAi9WGdP6zLPT+nBH/1bBygdraFzn6v49tl
         ooLrqOP1vISAExCGnoHGnqEVjem0F4jzoQD6D5rN2vQkgSw8D0axsHHqnZfUZIamW0th
         c9ZEzYmzEQ7fFDPUkAVLkNVESgLZ2BAwkSy93Q1eJbn2J8Co3yDNLwPqxYFYAiAjFOHx
         sr8ogxBdaV+xt/E/i0RqIu4y4HrsV3r5J9ixulrKslcpJcQqrc2TLBZKgum0mw2vYaQ1
         NnqedEl/ICuEUCxZDNyt2ZtcD+b4+HsautR3xprXUS80UJXmscG6GbldXmON3tHCtx9a
         nupw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Pri+lA2kOTGyb/HFk6tg8NFu2M1qlNahv+RCCxH305w=;
        b=egCd33k0GLGmI3ieqgPA8P+BzuUk7Ff2gCNnMnpe5hM7v4liR8/3i9ll9+Uq2JhHTD
         S8HZ1QFv791JOw0qOm6sWqf15+ERK9Fm79E3peU+3th8KB1z5Otz69/prxlFOjzZgeJW
         dtyPZ9pdoeN+O9Ucz/Csp/Be2kSc7ad660z1Rp/3y8yU8p2hbqxrTPTVpladat/aHcN/
         sBan1lLmBr+JOSBa5vToIOs5Cz4iZ4ZSdKt2Iwd+6o+492hUAc4LyyaBZLBshOqVrfZU
         9iJcv2iVlnWZNvFhXGrXdnl6LaVWadS4YAGH+rOHsnNMTIHJ9kEk9fTqlrVQKNmz9nwc
         L6UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ILcqyCFU;
       spf=pass (google.com: domain of 3j1jrxwwkahoqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3j1JRXwwKAHoqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Pri+lA2kOTGyb/HFk6tg8NFu2M1qlNahv+RCCxH305w=;
        b=b0MVu9PV+5WOHKpZOPnBQJM1tYC3ryhbW8Qt8mAKorqSbV8sAexovD+63rGzzMgjAJ
         vbi4GMEn9EnEEnjfZitg45g6qeAzxaXcpHJ3N4fqpsa6Ymi677IIOa82ryyxhQbSXVEo
         GhWYg/X+eZ0Q4frcDTPCRZbvnSU0Ux2rUqD0zL6fsAOBQvi2PW0pt77do6Wedg6XVQGL
         uDyEQJTbZz4tiXh7JoTPFVLJEcEES0W6uicR84uJvIbi154bSi3FKflJLHhC8tpsUFat
         RRy3f4GgQdcywrUwu3fhUGhjGkx4ji0yhWbj34ATIzOlykfuMMTxWJPjXVtPw41PocIw
         +mqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pri+lA2kOTGyb/HFk6tg8NFu2M1qlNahv+RCCxH305w=;
        b=hQWqUb9gi3fyqQaix7uJgweMQEpb4CGczEj7CSIiuSdlVdwlc5tJ13j64a9Qqcf6mM
         vECq1SMyqD7X02V8EuksyJSUz/aIkxv56XKlqkkK4wcGKa4PRzM62z/snU5oV3SohlZs
         6KR942m3cv/i1n3cT08dgMCjmrmBLUfldwpbZHsptmt+jcmAW7nF/sewWBPxUR89OOQ+
         D5aU3o03aaRvbuaUdwvNOLuofiV7+S0DzHU8ftNQCTw/AzKtTiADbt26lEuzNDA+JDV/
         GVNtV/DEEX38kkDFz2JgR7/P72hJwTRZLGUvEF71NA+Ok872TD8UITtc/a3PJTFXEtK/
         FaRw==
X-Gm-Message-State: AOAM533tvUcUma3nTeW1PG7wdA4HNCsiGqVRwsAtNonsjC6MLx0TPaWt
	NibpMFK5a+mdLRVxp/TeJQs=
X-Google-Smtp-Source: ABdhPJyfawzBd7jxZbwYFzUVmpcnJOl47kXtxn21hyoSzt3UD91Da4f9fvlzsxercfzG9WTZcxzJ2Q==
X-Received: by 2002:a92:4ca:: with SMTP id 193mr4869664ile.75.1599165072339;
        Thu, 03 Sep 2020 13:31:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2ac2:: with SMTP id m2ls1231853iov.7.gmail; Thu, 03
 Sep 2020 13:31:12 -0700 (PDT)
X-Received: by 2002:a6b:8f10:: with SMTP id r16mr4770716iod.165.1599165071993;
        Thu, 03 Sep 2020 13:31:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165071; cv=none;
        d=google.com; s=arc-20160816;
        b=zQ29rlIo/dLwNGOBdosfP/WmtLrLUOcvug6nrXGk9jvIMusNN0BTZinixxrJmeMxRR
         HJ0554nP4+R79QeV5Gq6k2R001k/LrFpzZ9naEtmOJVXF3iga70UWVM0Fwx6RuID4xQ9
         QO3WYuMV28JT7KlW8+L1UOM5mDJ95K69752PaCIf8rJGj/qcz5NBqoL3BzwthdLRTY7T
         LbqIC4JE2WkXbA9SSvazN1cB/opnFLAf0y/W/dhAf/BbwdXLYw2eDtOXQDu0CnnpEwZG
         hXWmD2shEo4oHqcr62khm85hD44bMUbcR8YWIQ67xkcfVlkTMwmy/0rVmsufNYLLFDpP
         p6Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=WN8mpXa+HsW9fsZYTOAsBdC0BrDsnoqsIhb4CRQsjoA=;
        b=uGJWveG5YCBShqyLn2HC8kG0OSPJ5KkE2lPo0a+DdPLfCbmGHnkDzQKYme7uiHQsIE
         c0Qgloo8Ms4FQXawJVuJDlZAgt4VSxPrGFwoLbTMe8CoEcruuAPePjm8sizMdRu+8Tam
         +U6hdl6HspUJ4BQZ2q4r4Z5DAFxrWvYv8ImrnkUzey/uQJNKzAz5Iv5xckRfDlwkQrqe
         +Pe6Zxk1aRhg5NXiLm7hBrinW9d+fKNlp+jLWT3UjeHjrWF/WvNEFyU3jab7SfJ/M6tO
         lkngTBlv1HEx5mfTZ80oOIj+WSX7HQBJ8X0h7w2rjZFdsAYl1CU8dBKXIBBw3TozVn59
         BxGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ILcqyCFU;
       spf=pass (google.com: domain of 3j1jrxwwkahoqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3j1JRXwwKAHoqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id a26si295914ill.4.2020.09.03.13.31.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3j1jrxwwkahoqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id c18so2684738pfi.21
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:11 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:90a:d512:: with SMTP id
 t18mr1126739pju.106.1599165071359; Thu, 03 Sep 2020 13:31:11 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:33 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 08/28] x86, build: use objtool mcount
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
 header.i=@google.com header.s=20161025 header.b=ILcqyCFU;       spf=pass
 (google.com: domain of 3j1jrxwwkahoqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3j1JRXwwKAHoqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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

Select HAVE_OBJTOOL_MCOUNT if STACK_VALIDATION is selected to use
objtool to generate __mcount_loc sections for dynamic ftrace with
Clang and gcc <5.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 7101ac64bb20..6de2e5c0bdba 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -163,6 +163,7 @@ config X86
 	select HAVE_CMPXCHG_LOCAL
 	select HAVE_CONTEXT_TRACKING		if X86_64
 	select HAVE_C_RECORDMCOUNT
+	select HAVE_OBJTOOL_MCOUNT		if STACK_VALIDATION
 	select HAVE_DEBUG_KMEMLEAK
 	select HAVE_DMA_CONTIGUOUS
 	select HAVE_DYNAMIC_FTRACE
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-9-samitolvanen%40google.com.
