Return-Path: <clang-built-linux+bncBC2ORX645YPRB2EWXWBQMGQETXM4HZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FB1358C30
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:28:57 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id b19sf732717uav.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:28:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906537; cv=pass;
        d=google.com; s=arc-20160816;
        b=RxpxY0luCXHWfJH7N+6e5fvAdnEBsscbMtKkPaKhHuVT4lhWW5neWGaudD786jKwVO
         zAxCa7aDjhCaxsrvqt6lYbhqLRAybMcTziDoi8VTIGywO8LwS+xU1PLJjdonvReAPJMn
         OqVcxNYLJJrF7XsIr1Aa/2sNx4SqQIRJjIFMqHTC8N0KtzSl8udv9Xr8OrzHLm4x1Zro
         FqG2F6Xe52u/UDN8FimKnYIexrVkJSlrn+iCQ+ly83x/Ok3LxTk+jF0pL3s5MgNPr8CI
         Ke+YGaTGO3NEJL3PAclY5inTGS7utQEl647XZVi101gl6It5GUZhnxxMs3zBHs0eGsBd
         yE6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=LaHG3dqJsiu6kIeHTXO+cnJdBU86SOZ9S5V0hbxtVGw=;
        b=mtRvi8qSYAeAdFKYePFtVJ/Z5a5h53IVDvVwtz85HWkA+JQPy85R86HtSG5gK2iR+I
         yeN36qNJin7VNMx08KMhqFbAi2eIK2elr5GLVDjKSrXJj5aG8chRb97eTQUph7eVXV5d
         hzHDL7MvR+C79JLDr6AcbPNOXPsXL7HR17YWdkoLWGALdyILb7sdyqlNoRLtSrsig3lW
         Lf8aAXTiW7uOdtGmvlzAjplE7YM/EHh1YRf5stc/hfVwbEVOuGDFJhU8EkJ4693ZL8a6
         7NlhrW1pJq5O4zJ1OKiEJdosrLvVoPCMswtdpZk3At+t6/ACj5S3jjdPccJGol8GZHRM
         +98Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QALHFILq;
       spf=pass (google.com: domain of 3z0tvyawkamq2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Z0tvYAwKAMQ2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LaHG3dqJsiu6kIeHTXO+cnJdBU86SOZ9S5V0hbxtVGw=;
        b=jjYR1doie/zrqJKq9ZFejqBHmvn/KqCwKOy+vrtzTnCH/17v3IjDBN7tF+a8NvqabN
         bTzyrwimm3/F6z17PXP2N5/zxo0S3XBUtAWaWJonMBn3lr+VquU+toslt5pvr/RPRdwo
         nRr3hOLaas65pYNZxxru5qgPO5SgpyFlYDL2E15zPsl9DoCg7/byjBZRZjnSuviXW3g0
         hiCWv/h3JTjKkjq6yUuSaAcqWBPGOUQMm0HCueqDwdtDtcacZHCS5OIddaJdo2hdE2Bf
         fTIIt2d48ob0b0NSvdqiqip9lQz3eBedeX2QZKcibKCh2SA9J9Qhdqk1G60B3lrlFOrv
         M3mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LaHG3dqJsiu6kIeHTXO+cnJdBU86SOZ9S5V0hbxtVGw=;
        b=kNGaMWDFHQSjffVgEPeyx+zAw30mNyK3biavKmWN0K/1nM1CUaOyZKvYeqps+a1dcl
         rtKXZh+7My4S+YzA5DS62BOgEbGNKspFlakCb3HxdXHWLGlntYSn5cLkzzzwFvDnIw3E
         9+q5Fl4J8Zxo25+TKpCrdVl012pbyWVDusOMx0PmoEb+ZdvftbZZQmdowD6KTjKKSOr/
         atz7vZjYLyyt2OL7wmMfFkJXhAjrtmhVVii5ztM/BfpFnuXrUvOLYfGj0UWQ2aUfZvBI
         LDo43DqGXEgq0gE+1EGp+F4YK9W+9LpwFF5xotIidHQMDV/n2koB7Ky4xXTDaT3AzwU9
         LTCw==
X-Gm-Message-State: AOAM530p2kh1Bam+zPH2tfduTaW9VchmvjFinVoeywIUHgCgp4ABHQSH
	7Iuug74exQWqypPD572+90M=
X-Google-Smtp-Source: ABdhPJzoIvkUSvdhRl4Hzz8eqTKD0aoqBLxViImBWcaTzyYDvpP7z8gQoslRs/Inmx+0NPbDoWmvWA==
X-Received: by 2002:a05:6102:e95:: with SMTP id l21mr1546431vst.53.1617906536942;
        Thu, 08 Apr 2021 11:28:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4405:: with SMTP id m5ls610449uam.4.gmail; Thu, 08 Apr
 2021 11:28:55 -0700 (PDT)
X-Received: by 2002:ab0:2708:: with SMTP id s8mr7951201uao.21.1617906535855;
        Thu, 08 Apr 2021 11:28:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906535; cv=none;
        d=google.com; s=arc-20160816;
        b=uIibuE6dH4f+NP8xQ78UDc5URIYOaJ2MrawCuJLh4YOhugHi2CuyGnbfOBYImvBGoj
         izksYozvWWMpk2EIkcBwtytsFfjzD1qoqQR3kgLyjZntpLpIjTbLppEYvopOBkg2hP0+
         xjlis5T14x71scfhrgjIVHYznc6OJ43YX+kfH04/NWYu5/Qy6EzvmunUmR+iCREzqHEJ
         FyGm3q8v112ltonXna4V/CkO3kdLd2OyTPLjROO8cDbhYk+1MgdfphysNZyLLgVdQyCG
         zQTMghQ9ahTL/XXS2Lm6h4EabrMntowk/S4aaNFs9BAYFIlV6Oa+OMNrDTrI5WLmJU9r
         ckTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=LAbK6LGasIRIE7Lniqz15wrZXmrTUww5+Blou7CAxY4=;
        b=weLFpjsPzBsdJyYe8QBi/93gcbl7Yd+nXfg8yJ+STAJzOIpMMlX3BISq1nqAekTJJk
         pRtd73mNdZGof9D4f4f72hhPa2/BBB6POyoV+ILN8he5CCJXpt5JhpL1wlxxoXzYiFc4
         WW4h9tCA3Auhs2s4D1qcqpqgIYmDmnuPZd0eakP7Jnaa3a/l0AbaU42xaMpUMRzmNOBQ
         zMtWRzTtZ322AJ3XGAbchtnHbZXPB1Im7w263cxAEqlpOhrUgPjG7gb5KsMFZP+UZfow
         ojVVoYU2v2FgySzwKpxSgxHkxf/Aww8mzjpjbwn4vcMWmsknPT+twnu67OG4Mqq67H26
         sgGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QALHFILq;
       spf=pass (google.com: domain of 3z0tvyawkamq2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Z0tvYAwKAMQ2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id u142si6320vkb.3.2021.04.08.11.28.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:28:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3z0tvyawkamq2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id 10so2816765ybu.18
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:28:55 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a25:f608:: with SMTP id
 t8mr14077162ybd.496.1617906535437; Thu, 08 Apr 2021 11:28:55 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:30 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 05/18] workqueue: use WARN_ON_FUNCTION_MISMATCH
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
 header.i=@google.com header.s=20161025 header.b=QALHFILq;       spf=pass
 (google.com: domain of 3z0tvyawkamq2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Z0tvYAwKAMQ2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
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
Tested-by: Nathan Chancellor <nathan@kernel.org>
---
 kernel/workqueue.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/workqueue.c b/kernel/workqueue.c
index 79f2319543ce..b19d759e55a5 100644
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
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-6-samitolvanen%40google.com.
