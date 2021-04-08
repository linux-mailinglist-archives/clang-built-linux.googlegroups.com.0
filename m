Return-Path: <clang-built-linux+bncBC2ORX645YPRB2UWXWBQMGQEKBZ4AAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 007F6358C31
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:29:00 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id c5sf1762704pjs.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:28:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906538; cv=pass;
        d=google.com; s=arc-20160816;
        b=D9gucX9QNmiAv0cB8PMlqCwsXkg2LWQvOApuOjclw4rj0B+xfxTXcP/IXIc5IenKHN
         5XbiaFNsgVD0EyPHsj4lw0Z4tTB8/LOCPDFamLBVi3UHLeKL1UxGwXgps6BaFN1T1gya
         EyW4QEC4yFhkNJ434rqc/4SdhP0U8kiO7oh3pszjIZyAQMhoyzH5mEYqj4VS0vKdJMD8
         ks7HZoQm844baogvoknp+xdqueQ2z63u3RXmhZFtMyztiUXpldAcSb1HLjjIwFc4cCSB
         Ek/iSVX0lfZ3ns9zwf6auWiFeC5SWjllPxwdMXdI2+9jy9rkvGksB5kK64s199mO/sXe
         3gBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=suNR7T0pBOUkFhApP+obWqt19b475C/g0jl3MTUBoRA=;
        b=g3Nmzqzv8rH4kYvmBmBJYgo+RyY3KA4ifxW8guuRF4E0BZ4NnjYX+6tDs8GjVYq2xg
         mj47Qr5CE+DjaRM8iG1CUoKGUOLs1t7pQmfGNRk46guo9lcYrNBhKAt0tsoTcGfdqwEU
         akMFSyFtEEC0x4mln/+vbdZESSUTKSZKOwJnzLJuAs7WPPhAL98ccVgU4NBMNRy6Jecd
         DtEiLaqMtNoaThczS3eFZw7JCV5Vu4WS9wHfJf3pd6voJxMuxIT1yjq5gKI7eV5IxYX/
         o25BP5k5XzX2RzSazM9SKV67TbOzxonbAinsDG2JYHzZafVhoTbklRVFSRLyDAofYseT
         p6dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W7hV9mrb;
       spf=pass (google.com: domain of 3autvyawkamy4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3aUtvYAwKAMY4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=suNR7T0pBOUkFhApP+obWqt19b475C/g0jl3MTUBoRA=;
        b=IjAeCEwn0DmQUlE9wqsH1yvebczXczsPtPnLBovumUfsNQSg2/5W0VZtEFQMr83kt0
         /sDTWyCBTyg51nlOWSYU8O01v1If13pf7kYudLPV/BsGeo2GLAR+8RhNachLSnxghxmI
         wP3/V8tMZHbhEiyYj7sB3ewdaDF7WtPw2HY1jvW01BG0iRy4GJuNJSewnLUC+2mTbO3C
         eePBOf+MiXjqOPUyQmctbVsPfDX32QwvKMCKgAobkr2CkxftzSROo8+CYbMooI1R04bf
         +1lsptUdxMEdJvBl3cQ2Zqi6jT7am0L86O365la86wjf8DvhMiO/cqgJpiFczpHGPOOA
         qOTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=suNR7T0pBOUkFhApP+obWqt19b475C/g0jl3MTUBoRA=;
        b=bXI6TtmyFBlLlL3/ORmse8A8en0s8HrxRZJ2g+rPOy0aYer5vL0f3DgVm3vQ+pR6KU
         F2F6fpMAjSDbSkfRFfMsCW8qyF9KPpBwnI3H1NN7QqyjZ6r994q/oyLJ7SMCdMqcLm8Z
         Rbwr5Ixued2YF2h59rhE/yE2rpsnOYljiJo/dXDy6aU2MUVKgQP2OKRVgh/xoLLYQpIb
         0TxQeiaGEl/Uy4HnaiXfjQhVqBq9huXFPswcsue01amJ3xJQ9b05LpMI17BwBg24HXx1
         N1BpQYsXC7hjPmwaqR1ZRcF8/waTd/H4SSFBhA7pyMMBmWZoJscXorHJx9rsMgNpwt6t
         7Xfg==
X-Gm-Message-State: AOAM533LADd3xHP7rQrPkuFWoCexsWfenGasjhz01pUVv7gWS8bUOd2l
	WVT6eon+azYAto2BxwehFLk=
X-Google-Smtp-Source: ABdhPJzZ1SnWi9qaR2B9F74otoDroovxXacKPBXW1NfGlllGwshRPs3eFERkVDLpyxR/JeA6MorJ1A==
X-Received: by 2002:a17:90a:bb0c:: with SMTP id u12mr9937173pjr.234.1617906538703;
        Thu, 08 Apr 2021 11:28:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:da91:: with SMTP id j17ls2899047plx.1.gmail; Thu, 08
 Apr 2021 11:28:58 -0700 (PDT)
X-Received: by 2002:a17:90a:7047:: with SMTP id f65mr9594595pjk.44.1617906538137;
        Thu, 08 Apr 2021 11:28:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906538; cv=none;
        d=google.com; s=arc-20160816;
        b=qFNAUrZFdAMY5DYIrSKR2fdm3+tpbXIze+i4V3VfMT8Jt7Lqscys2yVLdCrjbbOk8k
         Nkb3rZSZEIBPbx+3QoMZqdZlsNxWOWruwsFPCNtQBUdcbT7rP8NuHhnwNczcqcyIP6zv
         RuznNDeInnweC6QfaXC1l2e62CkiCSAFxSgnyhAOTi1TJWPbX4ha94lQm+b5V2NES0Mo
         BpTXXbr3KlN9fkdHeBwE8qYbCqRVQum1Q2+1WmOqoCx2thdZSgphO6cqy54Mm0PzDhCM
         LDakjfY9CSxY6zwTeQ9LGWTzF90HUtOm2Dvu5m7x3lsw0tEfTy5w2KmQKcI7iKS1h10c
         gnLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=XFW9qholLJYCDGcPvjKxLTh4yh23AN7VnxadLfVAIAk=;
        b=WkD5NSdWaYOl7VTcj7Vh9nGa/xQKg8ylfqbaxle4nH9B0t+8ovLKIU2VAyjc1aLWbe
         lFWF8Xeo/EtEJuM8PBrNUXzUvIGtXpU96ynPRAf6Mv1/O5idxNh2eWNBWVT2MJOWUujN
         lIentO42adHm1gISjnOT5+qK+FAzeSl4jgy3kSUAO6eiS7HqzewKHPGIQQ7p70DBF4LF
         tjUMULQAVw7NPyDDNVY6dydDqy83b0/9eq+nmdnSEhenl6F7QnYpXK7Be6U05hfpIsCM
         XNBRcmGnzgsrClvq1LoQEuxjS4qjARemb3q19lyPq3svDVVaC9Xu79BLF2/2csAeGlzz
         Q79g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W7hV9mrb;
       spf=pass (google.com: domain of 3autvyawkamy4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3aUtvYAwKAMY4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id g23si43463pfu.3.2021.04.08.11.28.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:28:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3autvyawkamy4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id v2so586869ybc.17
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:28:58 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a25:c750:: with SMTP id
 w77mr12752632ybe.340.1617906537243; Thu, 08 Apr 2021 11:28:57 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:31 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 06/18] kthread: use WARN_ON_FUNCTION_MISMATCH
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
 header.i=@google.com header.s=20161025 header.b=W7hV9mrb;       spf=pass
 (google.com: domain of 3autvyawkamy4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3aUtvYAwKAMY4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
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
__kthread_queue_delayed_work from a module points to a jump table
entry defined in the module instead of the one used in the core
kernel, which breaks function address equality in this check:

  WARN_ON_ONCE(timer->function != ktead_delayed_work_timer_fn);

Use WARN_ON_FUNCTION_MISMATCH() instead to disable the warning
when CFI and modules are both enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---
 kernel/kthread.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/kernel/kthread.c b/kernel/kthread.c
index 1578973c5740..a1972eba2917 100644
--- a/kernel/kthread.c
+++ b/kernel/kthread.c
@@ -963,7 +963,8 @@ static void __kthread_queue_delayed_work(struct kthread_worker *worker,
 	struct timer_list *timer = &dwork->timer;
 	struct kthread_work *work = &dwork->work;
 
-	WARN_ON_ONCE(timer->function != kthread_delayed_work_timer_fn);
+	WARN_ON_FUNCTION_MISMATCH(timer->function,
+				  kthread_delayed_work_timer_fn);
 
 	/*
 	 * If @delay is 0, queue @dwork->work immediately.  This is for
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-7-samitolvanen%40google.com.
