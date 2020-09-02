Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS6HYD5AKGQEEF4MYLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E6A25B6D5
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 00:59:24 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id k11sf895689ybp.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 15:59:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599087563; cv=pass;
        d=google.com; s=arc-20160816;
        b=T494gnda06jQd1tgU0OMLbveojwBu7T23XVJIuskfhCAOpsiYbbuZvqQSXPZyypGdG
         p1iu9KPLwqUT4KPgY4xJtQQrpXDJJmmzwxPOHXnXpqQPg8OqcJqGUHGz8y19t5rXHUeg
         sxyN89E9q8Iq4tED7ycLFOUn3ILOUFiQstCiTHFJWLpP8HtvFoyoytNa47faASnY3WyO
         MgwzNs3vgLkxD2E37gSqMq0uk15RjJl05mkTTXCCKMNIAWlZQvBpEtxy1khUi1Mwzcjw
         36huyhNw4XcHgy0w2US/CZliI7sQO84Th4C7xdd2g3d1B66m+2Nh6G25ZcUQcaPS4DAM
         g6PQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=grj2S9lWQmkAA3lGXX+ZdRq9eYeKtjwMiaB1kG9UtxM=;
        b=XVYLIfb1wdYnubOCchKKvsGsAe9RADJzhDAVY2W+MruL9JnmaMNbhBVyiN1TuYO5I5
         7G0YFtvbIj2C9xFz70FgWmXYOmYS7UmISBEw/xAGWcG1SyQI29oxz5XYKtWOTd5u6dmo
         oo5p4EnqKoUvA+KWtbzMsUT/FfqdsMS1+hBV6ElLbgXNXMZVOTLHW5YdKmfz1jPCLiQO
         L/3xe0xU48AYP+SbQEKMChbIhoITgjtpSDPdjIX59RB3CMpFAlBswKwDciGnczsmYFg/
         dtq9nUqkGSdVU6oAf5azsaIyGxwSLhH/n9zQF2GLWwNChGdMJ/jM43Tc0Z1GErvdXHze
         7g2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LywCHlL4;
       spf=pass (google.com: domain of 3yinqxwwkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3yiNQXwwKAFM8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=grj2S9lWQmkAA3lGXX+ZdRq9eYeKtjwMiaB1kG9UtxM=;
        b=LPIfPX4UjaQQISv24wIkdxUrP0A9HAu46TR+/RT1vswFQUZyqh3HVmwTcaIYbfMfUN
         x9yDV5PCKhucarhdR44goDejzcfaUyGeBSLbGSOyuyM7WdkjilswUDflvcLCLl9O80Ja
         ZWjDnR5JFQw/qHMx0w1B9I1hAsfFIqq4hAl9pC7OVFCRrW2Lly4VruHak0ymtTovi4ce
         Zmuu+4+Bn4l9pIzAoFxeO8T6aYfWpU7FDhPlwK1Wo6tnIBWt+7jpHVJ+hRVblJa4p4oo
         B/MgWQQHTkaK0TnSuYFsDsHVBqb35Mo3QZDY/3+ySXvnu6oP0I4LidviFF8SPrNzBrM1
         fPSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=grj2S9lWQmkAA3lGXX+ZdRq9eYeKtjwMiaB1kG9UtxM=;
        b=reybfgq1h15ISeNSpiQGc/TNuUYrelMk/t89RX16Qzd8pfS7B8eE3BgYJWeh80HZxl
         /pAdFcpz/SceuOkw3zPdDpTWJWKmyxyJ2tlyxbKWc/0V+8V2Rqc6/9o/4wKBr6uR+FAX
         rRYO2QEU6WseCcqBZj0HZTAXBcPOCrNoQ/TWCJ0IkND/cBdN8Jsl6h4AX+O+lnZEQWbb
         o0uJYJgv0/Vi3bOlcrJP0tqd1Uw4YqDpaCcqPBVaHKnE2gs8yPPa5opdhy+FbmpVvxYu
         rCHSwrK4HH5yI7cKUNLYh9NjLXxzG36lRDbX1sKuDA6k/yY/pkSZcZHlth7+6aYj3sOz
         Ri6w==
X-Gm-Message-State: AOAM533falHDIgKBQ7rspmT/V/dOtlisVujRMBIxlfK6FrgIcb0jF3BQ
	Owh8ZMP5RR5qdMWPr6J15fg=
X-Google-Smtp-Source: ABdhPJw64RlSaM+WOKpH3q4XYKyZN1ocn+QOd725dKuE46AkT5hu7nI22SBN4b49f5dnFPkvPtrdHg==
X-Received: by 2002:a25:40cb:: with SMTP id n194mr14550yba.7.1599087563395;
        Wed, 02 Sep 2020 15:59:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d4d3:: with SMTP id m202ls1946121ybf.6.gmail; Wed, 02
 Sep 2020 15:59:23 -0700 (PDT)
X-Received: by 2002:a25:d2cf:: with SMTP id j198mr27151ybg.418.1599087563035;
        Wed, 02 Sep 2020 15:59:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599087563; cv=none;
        d=google.com; s=arc-20160816;
        b=evsEsaC/lrltAJ8MCIic4t2gvQomR/etg7ggjrwRRJKQsWpZGWepMF1Bcm7xbENssm
         fIjUDS8W3JqSkYi99FQ/KyOYzu7j4fMyna3dNVGHE9YPi6IJhmh0/85tdcfYH+XHYkgK
         EFBP3Is3JPd5spPhTAhslRoK3fg6mjJTBkkuw6VYz8CXYOz42uCKlzBamzbkfKILsP77
         9awiB+4QnLTdYQwqs04uE2zr6I7V87y6q49egRm4YVIKXtdLpVDYL6r/FGvelqTF+jnf
         41N/WnZBPZdqsVQIBstyOae0IMcNsiwXyGwG4cxqLR/WGN+KBn1kJVm4wiwHhoY0AvgU
         uK9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=DEB6TvuVII/idft8ojQbZbBbLRj/1UgvcgJGiXc75DA=;
        b=x2P//SeSunbyLrOccQk3cC9sWDDaabzaTKvZRuKVZBafpcDLikA3XByH9pJjRRevqi
         3b7aUWJBs9W+0jCvzJc+e6LO6/0VyejXLCY4ebYlO8MxarbvhO2jvPdpFo+zvCMIaSe9
         yWjinAzlOxC3n3La/owJdy5+SESgn30YAcZ81cky2r6Q3KRBoUnTeHaZSQXmgqA0CEhI
         7aBQ8uD9ZXtf/frJHsVjuCOosRo8hxX39lPWulXJuDUz0J9LXIPDYP7DfB+a8BfuMJuA
         tjyhshdlgyFUDE8yTqiYWpd1LJgh9bRgqgB6cfrisgimXBV4N1lsBagmsxSdIYuG3vkt
         UKww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LywCHlL4;
       spf=pass (google.com: domain of 3yinqxwwkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3yiNQXwwKAFM8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id p14si151651ybl.4.2020.09.02.15.59.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 15:59:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yinqxwwkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id y2so745865qvs.14
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 15:59:23 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:c98d:: with SMTP id
 b13mr761758qvk.1.1599087562611; Wed, 02 Sep 2020 15:59:22 -0700 (PDT)
Date: Wed,  2 Sep 2020 15:59:05 -0700
In-Reply-To: <20200902225911.209899-1-ndesaulniers@google.com>
Message-Id: <20200902225911.209899-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200902225911.209899-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v3 1/7] compiler-clang: add build check for clang 10.0.1
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
 header.i=@google.com header.s=20161025 header.b=LywCHlL4;       spf=pass
 (google.com: domain of 3yinqxwwkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3yiNQXwwKAFM8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
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

During Plumbers 2020, we voted to just support the latest release of
Clang for now.  Add a compile time check for this.

We plan to remove workarounds for older versions now, which will break
in subtle and not so subtle ways.

Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Suggested-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
Acked-by: Marco Elver <elver@google.com>
Acked-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Sedat Dilek <sedat.dilek@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/9
Link: https://github.com/ClangBuiltLinux/linux/issues/941
---
 include/linux/compiler-clang.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index cee0c728d39a..230604e7f057 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -3,6 +3,14 @@
 #error "Please don't include <linux/compiler-clang.h> directly, include <linux/compiler.h> instead."
 #endif
 
+#define CLANG_VERSION (__clang_major__ * 10000	\
+		     + __clang_minor__ * 100	\
+		     + __clang_patchlevel__)
+
+#if CLANG_VERSION < 100001
+# error Sorry, your version of Clang is too old - please use 10.0.1 or newer.
+#endif
+
 /* Compiler specific definitions for Clang compiler */
 
 /* same as gcc, this was present in clang-2.6 so we can assume it works
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902225911.209899-2-ndesaulniers%40google.com.
