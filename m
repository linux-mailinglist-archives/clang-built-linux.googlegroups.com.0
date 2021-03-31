Return-Path: <clang-built-linux+bncBC2ORX645YPRBRWSSOBQMGQE3XGCJYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D39F350918
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:35 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id m8sf1929150qtp.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226054; cv=pass;
        d=google.com; s=arc-20160816;
        b=jjVgwQmXRyoiCYq0oYlPSzmgD7XedyHfizAmsdkVk0egDpYeDfOOozaQhL0VsC/C6X
         mno9hn/ukG6tFi1tSS9ho2bhMB3buSjIGSoAnH5e0bGs8dRc0StQEpuXE8TONcwi4QaC
         CEUbPJbEThsUFyPEDC+k+DLwD+vP9q4B3kzDF8Z+nJl9Wy74hjeDi2rJfF92nvlLamaV
         B5bLlulNNDYeQrRLCeQcacX3dF9/GC5bLecEmRkXpWvC+xJqZUQDFssJhjcqQh3kGJDd
         gi/FRA0iZBWNLaf4UlXgtQwj5ohtp/o8W9fXwPlMO/Dce7uUKBYdu/62J4XZEaOYogU4
         Cjrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=0/iEvHGZ8ATFY4Kn6WLteFpGeK1ID7hlV0v8ZsjWEHE=;
        b=1DmOxDVlVtrUbqEfzThZ+hxMPHvB5PJ3+2N/r1njNuaNqcElsu7g6wgm4ZtUf5C3gg
         lhZNzjbvZ+w3Nk/Iu7ix8YRqUW8Kpx/kTaDYTcri4TWHX/JvpLR9XS2NOvtdDd/Pffhn
         Nss61+fjecOstN1aSII6p8PgX9sriORI1UwHB5bSJCp0ax3ORn87NhJqgtPgseCEIDPd
         xFjOEZNGdA+mvd7zSLcvwvQ61q77HhWiBk6ASi4siBjJ9Df+lWk2b3/WWBRkQTvOk/I6
         xNezdPz6oMpdfmRt74QqZmgGU6W9WIYfqAPE9gwYj//+on5DepEHeK4ZJe1TMs0869iG
         sOQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qW9htz+1;
       spf=pass (google.com: domain of 3relkyawkalqmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3RelkYAwKALQmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0/iEvHGZ8ATFY4Kn6WLteFpGeK1ID7hlV0v8ZsjWEHE=;
        b=SI/7X6/P1nJuqRbCcpD3psdTtKiK7nbO0sN1ENlG6WwAF7iGGxQwYfeFULtvVBIEH9
         pRjCGbSibb7OtNW1g4cxInZCIINZPrus9ApfOAQbaDVqJKUAVTqItpXOQbFsQMJRgpni
         WrH+Bix1y8AwHFoxR6EhqiRhqlydm+xHCl63PcHWhOZg/y4RrDTj9J3rIR9ULicAN6gz
         0Eg02qRcTtFeJ7xCkHnu/VzRgggPAjg+2Co6qNMRbWlOEbyqEPvx2RSarQX8srG+jlFC
         pYXeUJnttribUSGQgCI2Mgz2GXLMNKqMiPwmJ2cREt0Cprfx6HPA3UHVgmisrg4JN0pD
         BnUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0/iEvHGZ8ATFY4Kn6WLteFpGeK1ID7hlV0v8ZsjWEHE=;
        b=ZWqw327UcmkY1mhXYka22sDcvtl02MYvcFzY7pD6w1SUtI62KrP8NHSW8ez55WSy8h
         nRM+En7Pps19THFEwGrQqplOrDsXIfIysiJLJFiCIEhCeBKRrT/C8YX6PCMKvv0NZw2I
         sXLO8KdU+XfGdoW2FaAuWULSxEDb4rOJ9NEA7/oxXplXjXN1R6aDhtPqwjkh5BMgVEhY
         1jKItnkYkeaZkdVZoOliKHfxNLfAXYeHBgVfzUYwuN1ImeXkZdRZUvGi4v0aZG1s5evw
         Sj6FcRqmQqKfcVa1xnXD8mSiHvg/GH4YBFmi6DC0iIQ7rq1k6SuEO/lbyyv+HrmHqIQm
         JKOA==
X-Gm-Message-State: AOAM530mbuwgDbVf89bSv7gtzmGAizFPR8kMQu+s2chwJ11qty8Q1xDp
	y5LUMwC0deJYp9oivv3fqX4=
X-Google-Smtp-Source: ABdhPJx7VYzIQF0LO5Sftp/6l4//dcFGCpwQap62PJfO3kNRowAQrpjwuwQrnwAd8Otj6FYZjfm6JA==
X-Received: by 2002:a05:6214:f27:: with SMTP id iw7mr5268480qvb.50.1617226054316;
        Wed, 31 Mar 2021 14:27:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:c83:: with SMTP id r3ls987021qvr.5.gmail; Wed, 31
 Mar 2021 14:27:33 -0700 (PDT)
X-Received: by 2002:a05:6214:10ca:: with SMTP id r10mr4862382qvs.53.1617226053894;
        Wed, 31 Mar 2021 14:27:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226053; cv=none;
        d=google.com; s=arc-20160816;
        b=bZoq6o9H/1o0ibd6sYsS6nymh6lguVpDRTeuMIJqFNDNwyHssbxRhMAoimdLGmDq87
         oj4h0x6DxsvSgGm4Yb0MYAsnfPyhek9wahYbIdGqOpbQ0fezoFZdP1pgIQqxL6nwsrKU
         HwW3wYJHIDFiAJEq57Drw9DkIMQLoGVbrcZ8a4XXGDpIgA0oT/BhMbdF0idZZeCkoPMR
         y2Hdp6Dg76M9THTdWIUEsZI/Bxyp4x1wjNP2DwChyqF6SIaqzbMPQYXeTKbVuOaYMEbd
         vU8itQAeTu6IwcYu1gJg4DBpAOXr0aKjS7JW+vMDg794FKl30wBEbwXSnDzsHWonVmee
         BSgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=83qC35j0sT8ux3EecZ4JSXTBbnC5lT5vvU8jPpy+oIo=;
        b=nXQ6I+1Spi5/RikoHkpHPi8t3nIBp4+DzN4spz9kOuGhcPk+vhvmkQAy2Tdp776EZx
         u10ZTehcXVxCGKyAiLYGVrYgq8g5lZYgcRYliY980qmvsi3jQ/I88q645++IFMe6IQoa
         8AjcrHI1hx54JP5Xs1euuJAFJIAK+5mQEUOIlN5YGoq399WeONA1ebmqL8dZ02dHqLfW
         7ccmdWH5xvCw090otj7dYAQ1hc18QIfBTC/3CQJS4XWUHOn/C1iFx67C2XHeKwYnBv7+
         DkP8fkQwtBc7JX6qe99Bw+BEAL0F50qo1gZI/WoA7klfMPE+yAHuQoj6M/rZA7AsU07O
         p7YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qW9htz+1;
       spf=pass (google.com: domain of 3relkyawkalqmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3RelkYAwKALQmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id b2si528595qtq.5.2021.03.31.14.27.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3relkyawkalqmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id b127so3627090ybc.13
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:33 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a25:3801:: with SMTP id
 f1mr7850920yba.353.1617226053546; Wed, 31 Mar 2021 14:27:33 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:09 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 05/17] workqueue: use WARN_ON_FUNCTION_MISMATCH
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qW9htz+1;       spf=pass
 (google.com: domain of 3relkyawkalqmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3RelkYAwKALQmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, a callback function passed to
__queue_delayed_work from a module points to a jump table entry
defined in the module instead of the one used in the core kernel,
which breaks function address equality in this check:

  WARN_ON_ONCE(timer->function != delayed_work_timer_fn);

Use WARN_ON_FUNCTION_MISMATCH() instead to disable the warning
when CFI and modules are both enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 kernel/workqueue.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/workqueue.c b/kernel/workqueue.c
index 0d150da252e8..03fe07d2f39f 100644
--- a/kernel/workqueue.c
+++ b/kernel/workqueue.c
@@ -1630,7 +1630,7 @@ static void __queue_delayed_work(int cpu, struct workqueue_struct *wq,
 	struct work_struct *work = &dwork->work;
 
 	WARN_ON_ONCE(!wq);
-	WARN_ON_ONCE(timer->function != delayed_work_timer_fn);
+	WARN_ON_FUNCTION_MISMATCH(timer->function, delayed_work_timer_fn);
 	WARN_ON_ONCE(timer_pending(timer));
 	WARN_ON_ONCE(!list_empty(&work->entry));
 
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-6-samitolvanen%40google.com.
