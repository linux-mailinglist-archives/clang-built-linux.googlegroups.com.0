Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT6HYD5AKGQE2PC7QAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE1725B6D8
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 00:59:28 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id t187sf758983iof.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 15:59:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599087567; cv=pass;
        d=google.com; s=arc-20160816;
        b=n8+eNsC94SFz7ICuiqyj7zeesXGdkcgPyctKPD9xR2prbd1z9IYLo84720aUIJ5O3d
         tICHZGvANC4zoiI9Y8CjjKDJvljZnLJONwJrIMDgS0y1ma4hNvKOLQ83EE/yY22JocQ3
         iXDDmyRiuHw/CqYzIgrwPYh3vZq+AUDUyXRJv7OUGTszLryFMbKWkESwfiHlsveCRQcC
         nB8cknBgHuYrgzpGJdHyVpv19DMw1KXI7VOyG3ncidcSg2q2cesgrHFgZeIRJDGYaybB
         +Qu08qMYgEl1slUANNLiV7iS4qMvv6PglJWPfUomEm2e2KWIHs3feMCwWVHYIbSO6Zn/
         8VVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=wAkZGbt6aolZQ25V0twvVRj++lOjLYNVqXi98c7w/dA=;
        b=s8yZESPd0cQ5q1IKa0KGRkHOCkwD6w0tWd9gHR6cws52QjUIsSjKz3DCN0cBuIKAlr
         ehw9cM7JvMve97uX4UEgT+s597ilO9FjkBaGCrzCjVLE/qZjf/vea+lQSLc2JCXx33J/
         J5I0VT7DhNC8K5CCsPD+5XmfH87UzI+tw38EBM8XE7TnkusCBAbgeKmKNrj6RiMw7dt4
         NnReHJa4HUxArC4I8Yj+ZzbTX/x9PKivjI9HHAM3sn4ReKfJODeSuhRY9Inyy1b8QcPP
         nyy0g6eR4DPWdZhnwqcfcMhdb7S8NDd/TUBNEgT5ugjiYFXdI+IZHb+YsVCI/NW4ZnhB
         8gDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kHS9kTsj;
       spf=pass (google.com: domain of 3zinqxwwkafcc23hzjac73gh5dd5a3.1db@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ziNQXwwKAFcC23HzJAC73GH5DD5A3.1DB@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wAkZGbt6aolZQ25V0twvVRj++lOjLYNVqXi98c7w/dA=;
        b=lapuAlNWNg7iYAoFMxNDG39tuod49skqMwAFL8Jz3Sw4uE6OrCOBh4TWtvf76C7HEu
         nnBcMvWOqT9vghCwwmdkQ6PokktDWq9RRfcsWRom7sK8dueQKuSuClH66SsX2ukrHg2X
         5ws/6fGA7aXmDPdHlokhQXiMipLrr/Yxktd+WBouJo/FEyBiXnUN46kyOePDaMVR423o
         Rpq2SIJMUMRYz6Xu6re8+Iom6Y2cNnhLcP29af1daIAhu/16Y7z8YWhH80oRul911kAO
         jFvFM3fuvH5sRrj3S7PS/qCBgBv4EgkuJWnUq1ehRiFNbUQgFiLsCvZbg0FmcVfy/4w1
         wDgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wAkZGbt6aolZQ25V0twvVRj++lOjLYNVqXi98c7w/dA=;
        b=NI+VOo1n7bZMXU/pnk4HcAQVeR/rIiwN/3Zbnvl2ujC9oxjDfHzBtgzA/G6bwBOqLk
         STYr0ZTUxwWSYMk6ES/CYVIqWGkRbY1SbKmoM7J7+/lxjtVqtKtuShaTobd6Flk1Dfky
         KJk4Hd158N4gJJqZDFebNFavyKwxPquSQxjfIAhSw3z9MM5akUMf7ga1JxoOUIS/f/zJ
         AtTRmIGjxTLCQsR2iTa/k1k8+WoqGIJj7WqdLRLnfdpcurQYFxfmQs9VpFYUKDzbph5b
         hZvLFP09Jm8f/wKbvTOST4Xu0Yxud4Iq5rGWXvCYqSGc/5H/upH2acbnX74BAkol2kJ2
         GhpA==
X-Gm-Message-State: AOAM533D3AqmayopLopq5yhKMK90T7LrFSwnKmJ9CHiUus5uvTe/507n
	Mlzd1yJYYWOZEApHri07M/0=
X-Google-Smtp-Source: ABdhPJzbgV5Au+ScsCat1lXFv72DmHlidHRgtvBS1uSrRrWxpWSf7/pJ6rzusQXW4YpsYjzN8kgZog==
X-Received: by 2002:a6b:da16:: with SMTP id x22mr524335iob.33.1599087567350;
        Wed, 02 Sep 2020 15:59:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:9b0b:: with SMTP id j11ls701515iok.2.gmail; Wed, 02 Sep
 2020 15:59:27 -0700 (PDT)
X-Received: by 2002:a5d:888b:: with SMTP id d11mr522144ioo.188.1599087567074;
        Wed, 02 Sep 2020 15:59:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599087567; cv=none;
        d=google.com; s=arc-20160816;
        b=nGxkTIctcI/DSGD5YMIEKZPpYkA+sQRxC/KbpKwHVmiM+S5twxe5J8MJKHF4cQILEo
         WNDOO7yc7TxjCycA0YZiPhXwi7sQ0330alowti4/yswdynW686yZy+w6FSI+pXnh9kK3
         IjRqbmO3W5+1kdkgFFPYSrUEO35hLii2cd2hr9crv25Na4IyRjqkbN+nrhAgo/KEiCQ5
         jUqvawd6I8tV1A01DDHQmLFsP29XNCK3TypfLWqOlVRlmQqhjXBZPh+kOLu2CTQnQ19s
         vlPH2qol11HZNUVdGQKL2V+Q/WeNZqC7z6X5MOIxEhTqw2ZI3I8djcNZwV6Gjv2i2HSV
         mlsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=kC9uVdCEcRAgEe8ChNSdUEhwx4IluKYz275BuoXca/s=;
        b=FjXFryZIIxFxb4VTxhOFNkiYIOgIpNeoHhIe/z62q2UFpPzm9o9teg9qOHeSw+Otob
         Ey8N8Nlxiwtblc6N65zC3GLYWE3amN8m6UWSl4h0apFDu8LX03IJox4rNTs/a++7jtyV
         /n54WOHbk0wrLEWJf3Ex5yz70Jz31mxfkb7z+iToW8Gd0ZFhP/HRH6kgOPLdopJy2/tk
         KuwyKhDyYURUiTULMoLz8p7M1e7VzjbCwF1dFUgYg48l49Vy+PxoSBNhkrs1CG/I8uC5
         dXuAgh0/5vWDikfWxJX+X8u2ekB7oJfW2PsBLXr/obkFVD7kk0S7XuYerh7K6AraEDhS
         SMHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kHS9kTsj;
       spf=pass (google.com: domain of 3zinqxwwkafcc23hzjac73gh5dd5a3.1db@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ziNQXwwKAFcC23HzJAC73GH5DD5A3.1DB@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id e82si85203ill.2.2020.09.02.15.59.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 15:59:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zinqxwwkafcc23hzjac73gh5dd5a3.1db@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id o8so827842ybg.16
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 15:59:27 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:8b09:: with SMTP id
 i9mr1026ybl.149.1599087566495; Wed, 02 Sep 2020 15:59:26 -0700 (PDT)
Date: Wed,  2 Sep 2020 15:59:07 -0700
In-Reply-To: <20200902225911.209899-1-ndesaulniers@google.com>
Message-Id: <20200902225911.209899-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200902225911.209899-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v3 3/7] Revert "arm64: bti: Require clang >= 10.0.1 for
 in-kernel BTI support"
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com, 
	Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kHS9kTsj;       spf=pass
 (google.com: domain of 3zinqxwwkafcc23hzjac73gh5dd5a3.1db@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ziNQXwwKAFcC23HzJAC73GH5DD5A3.1DB@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

This reverts commit b9249cba25a5dce5de87e5404503a5e11832c2dd.

The minimum supported version of clang is now 10.0.1.

Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm64/Kconfig | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 6d232837cbee..2a70b85b1a61 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1630,8 +1630,6 @@ config ARM64_BTI_KERNEL
 	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
 	# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
 	depends on !CC_IS_GCC || GCC_VERSION >= 100100
-	# https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
-	depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
 	depends on !(CC_IS_CLANG && GCOV_KERNEL)
 	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902225911.209899-4-ndesaulniers%40google.com.
