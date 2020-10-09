Return-Path: <clang-built-linux+bncBC2ORX645YPRBUUYQL6AKGQEGL6STYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB86288DFE
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:11 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id d9sf824378vsl.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260050; cv=pass;
        d=google.com; s=arc-20160816;
        b=XNqnC/1SCzlMCWiOFuRwCdIKUsE5PmeZg7Uba65OvoXXmDok9WvJmIFWDQCZek/8E5
         /2TxfIEzyqpmaS2z0SFzCIkn7Uaytf0v0t/MAs13A4RGGYXL+7qyP0UsJ1CXmANm/rMn
         Yx79Wo66/WI9aP17GvYkgkVqOwr5EkFDSuNpqGOkTwsp8Tj8Ls1Dp0kbVG5ftJl+ycJm
         Oj+oT1HWrdXpIhzsSIB4vKYNFRnUgXOSCqP6XBqNJGszmxCCe6GTcpr5elsTIaQ+KnVr
         3UDGmPvGK3S+ySezmfh/HnzQgeGAfbWmcJRPXGO+ANiKjNONHJNQvcmSZS/gzl62H9Ag
         jGaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=FH5fOtjg+0XjcMVJ/+vmZFNJm1CQxtn/Q7G01pbCgNM=;
        b=ZPXoEtr00bvpa3BNR+MDehL1e8oC+D7ez/TUJEdc2+vyauUL4yj7/LTe+hvFUT6FoI
         c3yzVjZDTvHQXAaus3EIXvMU98C0Ia9heAzGBoEWtq326+VZ6HVOKi/LZGPO6pICvlvL
         AOTU+BYZLA4PnY0FgQmC9u5Hmqig1ExmBuAXFHij8eeoNDIuc2a3YXx9sx/zymfcwBMw
         uRDMNAh+ezu7O+KE7V+u4eEH+IYYpOPPGka40LU8nO5kxPKqdeqasOFM1hTm0l2y2iQC
         3gAWG+1lf1o9EmG8a+smQLw2W3qrRVpt2XGJYpDQcoOik4uBMMhIIl0uPFDxTpbB1Y10
         euWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pMlxmld3;
       spf=pass (google.com: domain of 3uyyaxwwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3UYyAXwwKAG4eMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FH5fOtjg+0XjcMVJ/+vmZFNJm1CQxtn/Q7G01pbCgNM=;
        b=eLgOC+IDRI0/9uVrMwCgBMYtwaMH+/M7SzBr/Bl01D0oG0qIe2vYPa3U7MHz9xM/Z5
         3CSgYHeNz6eNz5U9vthdAILE7QkvzuRLn7MiKTz1zofA7DpcfjPh90W47x4gmPxQ2EN7
         HkPqXYMU7Z5QnUT2wBC4rDRMQCtmpkCNLOpdJQWVRoBmeHhn7gwIpuO5VWm21VFgy6Gy
         MV8H+3DLlAO31OSZBnoKmdiVb8Js0qepC9jd9XojepMKup0ooxp4sbOrNJ9S86qoy0D+
         lkOvROibQyPGvaZHC9y2qS7c50tdK8iFluQUIW2fR+gPJgFJFekj3OdFXqKTugPgXgO8
         UbMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FH5fOtjg+0XjcMVJ/+vmZFNJm1CQxtn/Q7G01pbCgNM=;
        b=JUqZL564rixhQxE9kiSzXqJgNMg3XjSWyVqQgaWbfkijUJtyFi96AKY/atQp+IdpO0
         Q+m2xI3ZLynd0dZTtTQYdJ6xuY1Bdbh0hAyYBU4hn4hMQjetiGrdQ/JOxu1bWppghrTO
         Kqa5hOx8F1nqGjUDO1pyF5HEa6sa2Guzc/USzeVmfu+0qPBu3+5MiikiIJza7e/fGRNp
         frCNh5VghQcXT7V9RPDgJ9chOfAbZttx2vhPbn2a8DRDNZWSdviJl1HJXTqw8n98eWfG
         yqzsO4xeNfvA2Xftm62qx7opIYzf6L+amLco8VAZ+0ijRJXImaXB/bmp5+/vOoJehsZD
         OqqQ==
X-Gm-Message-State: AOAM532hWksHHnsXnwtYIzOozb3OwLUoptE8lpTOpZTpxi5o7ROlQuet
	uj45LLonxTf0Utq/DLXsu9c=
X-Google-Smtp-Source: ABdhPJzUYSDv4Ur0gv4122bTx+H1G3BLAkbrwqr+/5SdqHcz/XhBlZoj8sD3buiHUTqeTUBDHq8cvg==
X-Received: by 2002:a67:e8d0:: with SMTP id y16mr1377459vsn.53.1602260050162;
        Fri, 09 Oct 2020 09:14:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6122:554:: with SMTP id y20ls497066vko.2.gmail; Fri, 09
 Oct 2020 09:14:09 -0700 (PDT)
X-Received: by 2002:a1f:e186:: with SMTP id y128mr8399743vkg.6.1602260049556;
        Fri, 09 Oct 2020 09:14:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260049; cv=none;
        d=google.com; s=arc-20160816;
        b=D4yAfEf4JdDtrMjkAGSDdz3FeemAGUrHxnDx0hGHROvW3wCh8zwnZGcA13OJav95Yf
         obKBDaL5v0i8e9FE8n2b+PGKPy0yyAkxYTronvhZE5Ia2N36yb2Es1dAx8zLd2PikAF1
         WOscTjAhuWgXwX42uMIEI3Mx+23D2mfWB8R40rVZlxH4WnIPh+b1WG2Ka78Nar7HNUGR
         vFAObdiimRqNFYmjBUuDbqvaigQbxWVece+Y6+1ehbH7tintV+OBMPgwKQpHiK8E9+Ff
         /3zPO/ng4cp1PiSrhuLHcX041l+Z9x+vDRYu+fWV86TP0ojFYoEj7cvBaHE+f+I0KXKR
         VKqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=s6lKkOY6jDvHdKU5rddxnOybuTgb4UG6S62YgATiqsw=;
        b=kRu23+B+//dmr49q5tL/+S5yrTBS8q7INEi4rPZfzNXDehIO97gEOUy/4fGwK6GKG5
         IuYVtRzllfiDHmBhTmBtqEHSnXoeW8ncOa2YilisClAhFDkNJiZEZTcomn+ZQPOBdYBS
         LGfit1+Qkdnk8XhLCpKfIkY8Q4HtNKZ88RZjIvOCraClhzv8JP2CYTNQrEuL4lqg0hR9
         no5NlBjl9CAr+PSN+ZGYdlI+XoDdMXvs+6nK8f1KY9EDDV/qmzkzj+mFlYhPMJH8bjAq
         JaR12++TwLi7rbndBatS6m4GLBYbVKdIljics5p9UzdeEFzD7aoDcGNKK/svzMOYI+3y
         Nu1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pMlxmld3;
       spf=pass (google.com: domain of 3uyyaxwwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3UYyAXwwKAG4eMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id p129si463775vkg.3.2020.10.09.09.14.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uyyaxwwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id eh4so2086744qvb.12
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:09 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:52c6:: with SMTP id
 p6mr12101699qvs.38.1602260049095; Fri, 09 Oct 2020 09:14:09 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:23 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 14/29] kbuild: lto: remove duplicate dependencies from .mod files
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pMlxmld3;       spf=pass
 (google.com: domain of 3uyyaxwwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3UYyAXwwKAG4eMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
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
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/Makefile.build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index ab0ddf4884fd..96d6c9e18901 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -266,7 +266,7 @@ endef
 
 # List module undefined symbols (or empty line if not enabled)
 ifdef CONFIG_TRIM_UNUSED_KSYMS
-cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | xargs echo
+cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | sort -u | xargs echo
 else
 cmd_undef_syms = echo
 endif
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-15-samitolvanen%40google.com.
