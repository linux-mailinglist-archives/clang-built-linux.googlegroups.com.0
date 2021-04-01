Return-Path: <clang-built-linux+bncBC2ORX645YPRBE5QTGBQMGQEBZYI4ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D5E3523A7
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:37 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id 20sf3656843plg.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319956; cv=pass;
        d=google.com; s=arc-20160816;
        b=rBTxyF1/emW0SA2x6uM10YjelMnAm6v84pMZuHa7vX2gV9RTNuYaNDOgzA6gvpqLck
         GW41cTDu8SAvCY3mw2R/jVrHHEoeEe5Iiew7YBMbB4b7ZADiqPV7S6jq4LPIDcWxV8vo
         HXdBRYA/zZyrHu58Mzxel41SY0M1wvT4SRQZHQD286Qt+s5LE30kdeP1BXHg2GN/I0MH
         LLHWdldlnA+0FDuWNO47mv1jdz/pfC+7l+8OND6ieDNnijrHHBEJKQ+i7QK9jcEORxdj
         UHCM1ZWlWOvlg+a5GBnOG/sjC17WSqZOm/EIvKVrykxIORMvg/zdTe51Cq4qBtLjCQ8I
         p4Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=cnxedwXzVzm7SMCnVy37bp53TNxX4yRfxx/vTCBqBBs=;
        b=UQKUlXSHkBcxEjCd3aHXM1RJ0aL3wKtqDtO2Q7o4STEchLA+6aRIjoxsFkTFtgZvZS
         xXF67mk1CTm4zGo+Ys39dhwCQ0FY4Ij9v4Xe1rrQ0vqVrDpgdlDpYscj+l1a6r/T/NWh
         +d5EtI/VqY8e8+byW37DTExCFwN+UJ6FH289YhWAY24EbEo9Jc+TUUT0r1nkKrMj7ETk
         78aSPuFpECBSXuaV97NvcQb99W5iMFbP81+XHGHbQdThyv9DJDdtjs0lxl55YWqldjzq
         E9MA4/JA0L8q3k+tKnPEYjnsEefdt1++xC1nfNzMEozpzOhANagQJhatsAAT6kM8dLYu
         u95Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cVUYELPk;
       spf=pass (google.com: domain of 3e1hmyawkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3E1hmYAwKAGYWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cnxedwXzVzm7SMCnVy37bp53TNxX4yRfxx/vTCBqBBs=;
        b=GfUOmxWszXBujczp0cNPfU98ClnRIUk/jUmvKh5jSpHmpG8O0lvmk5OJJ4L9uKwlq1
         llv/woSFRfESNCE3jq5PlU+i1PiEcACQvd7p4todNRDXyP2/2Wonrrhdl2QCWooUHG1E
         5BDSkMd02mDnempTsvjLrncTf0OJXwH9w4/VJ1mhw2mODK2lgm9MQI0imA9tzBpptOVq
         u3zL+WDi2+CwXqlZI591j+NhMlb5yQt0JlOmorxF7u152m/dCM55BqS6sxSeHXSeDpnw
         C0p34pikS9WgfCMAx16gtQAu/dvpS8F5vxsbJZCH+ttDDT77P0lLwBPGva+8fWpLmiIo
         CFpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cnxedwXzVzm7SMCnVy37bp53TNxX4yRfxx/vTCBqBBs=;
        b=nCuybNGQSnhrDjfvgVNhBu+zAKLHA2f2b/rwtZpmqSKsWRSr9FWzIG+l4o/WuQKdgV
         ESLIa0oTqDKpOnwCQ2cUH1Wv2ov56AfaID3xeRafMNuUYzgkZLFahHHvSAd0Z/d1VvCa
         GqH3KH6c9CKOofJRlgZcT6ctRg23ooUblfOmC3E/4d9abbP5E1MsoUciZPKQX3a40H39
         i8wvWo/EfrnCdclpDGB9dv8EbqCZyBwHK9kLyoGg+zR7Ri352twbtAYkLk4eXfOkdYeB
         BaUiwkkOL/gI1+9dY/6wKSqCGYqRvQu0uY4jGcQJeggcMRHLfjaXbMw2SPuIUxBdf3aW
         Lh3Q==
X-Gm-Message-State: AOAM532LeZlANQ+mBlp9a6wtwxOkdpLs4ARRdBxGbiKnZirAtnhRt851
	QVyO5DnKWhcZ57Ok2C/HtP8=
X-Google-Smtp-Source: ABdhPJxA+zhNw/wE5sPDyEgXZ/iU6HJ1qZJrX57L8eWv9LoChAvu1uS1gPybhh2qHxQ9Gu0TNK2qCw==
X-Received: by 2002:a17:90a:e2ca:: with SMTP id fr10mr11324999pjb.18.1617319955946;
        Thu, 01 Apr 2021 16:32:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:ec9:: with SMTP id gz9ls4404172pjb.2.gmail; Thu, 01
 Apr 2021 16:32:35 -0700 (PDT)
X-Received: by 2002:a17:902:d694:b029:e6:bc94:4931 with SMTP id v20-20020a170902d694b02900e6bc944931mr10195800ply.6.1617319955342;
        Thu, 01 Apr 2021 16:32:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319955; cv=none;
        d=google.com; s=arc-20160816;
        b=YLRp82W7kas9I7pGrFyP9qg8rzA5gRpK/ipVk0h9ElCWlinoskwiugjMZbWpWxB/u/
         4qm7rbEyu1sPeXvDB5wlr1GmaboJG/h4mKx5079ZmisLAXbKlvqzsMbY+0sfF6r7aGe7
         zZIkQIpwSN6qvOD4VQr6P0EhDx6I0gY0Ayx9WD9KFdYNccCwd6nH0hKIXJLuuY1JHj+P
         esa00CVpBcIBho7VjIJ8yw3aEYOPucaOil85ItToYSmGrfi9ai9aqd4Aw8scipu8s9ia
         F786ie7e/S33wk1mD65OO75ZdJrKyCaf5oRVNPTN3Jn4wqpzDRAxegyis3hdSoBHbxxl
         8p0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ygu6iZbbUsR2ZKi8zr0iQyDyVVNKo7dHAEFjMtj8SHY=;
        b=iesns9gaHspjwRgu8sf+glsN3BBKT20RHgLR9XPBAvpxiUAsvSX+aoshz5M51kgvnK
         tac1QVXhOMkH5Xy3hXn0NRUi/Ze7Phh505CFA1kOoN0t0lty2LcM8YK/GfCNg9O9nSKY
         DShVxxxGYOJaIOHgcwe9c26cuoxi/fGPfF0lsEwbuggZnXNWEnobS1LqIOm8qpaLyrw1
         qlSc115CH4Y0D/xJQx7D+WCJIavgpx2E368N4S8lO/eBexyQecXP7O30C11MDXlhDKeX
         7oeLiBPKPbN91PYddgbkyviisYOIeP2dq9Vs1B8RYP8YWl9iCZngp5Y+gPaSNJr4q4f9
         ElnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cVUYELPk;
       spf=pass (google.com: domain of 3e1hmyawkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3E1hmYAwKAGYWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id f7si488447pjs.1.2021.04.01.16.32.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3e1hmyawkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id a9so4255211pfo.10
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:35 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a17:902:9008:b029:e6:f37a:2183 with
 SMTP id a8-20020a1709029008b02900e6f37a2183mr10163478plp.49.1617319955033;
 Thu, 01 Apr 2021 16:32:35 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:06 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 08/18] bpf: disable CFI in dispatcher functions
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cVUYELPk;       spf=pass
 (google.com: domain of 3e1hmyawkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3E1hmYAwKAGYWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
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

BPF dispatcher functions are patched at runtime to perform direct
instead of indirect calls. Disable CFI for the dispatcher functions to
avoid conflicts.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 include/linux/bpf.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/bpf.h b/include/linux/bpf.h
index 3625f019767d..2f46f98479e1 100644
--- a/include/linux/bpf.h
+++ b/include/linux/bpf.h
@@ -650,7 +650,7 @@ struct bpf_dispatcher {
 	struct bpf_ksym ksym;
 };
 
-static __always_inline unsigned int bpf_dispatcher_nop_func(
+static __always_inline __nocfi unsigned int bpf_dispatcher_nop_func(
 	const void *ctx,
 	const struct bpf_insn *insnsi,
 	unsigned int (*bpf_func)(const void *,
@@ -678,7 +678,7 @@ void bpf_trampoline_put(struct bpf_trampoline *tr);
 }
 
 #define DEFINE_BPF_DISPATCHER(name)					\
-	noinline unsigned int bpf_dispatcher_##name##_func(		\
+	noinline __nocfi unsigned int bpf_dispatcher_##name##_func(	\
 		const void *ctx,					\
 		const struct bpf_insn *insnsi,				\
 		unsigned int (*bpf_func)(const void *,			\
-- 
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-9-samitolvanen%40google.com.
