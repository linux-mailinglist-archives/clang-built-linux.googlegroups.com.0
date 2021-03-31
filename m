Return-Path: <clang-built-linux+bncBC2ORX645YPRBSGSSOBQMGQERYK3BWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBB8350919
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:37 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id e11sf2490812ioh.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226056; cv=pass;
        d=google.com; s=arc-20160816;
        b=euGKO2wkfFunoQlORCz30FMvLO8K9Px0f7n1gqkZZzSTUqTKKF2ekJx81OhedWbTZL
         O79ghmOBVMVmKMFHiyDbjHgttE8tmvGEfqz4WUx6SXvrIyXotbwOi1zmzTJHkfzdW48f
         DuESy9fRFsnpep6n+UOZkGCo7OXpLpQx7hYmbuTdq+daxYx+9d5OwY+UHoEJTTT2Htco
         Ug+9l6TbkniOvtspL78qKZtPpKDoc0+G3+afDdIFHZEOmmZHHOAE3tGD8Zo4JqQ6cNyp
         hhmriPMzaXf+OAliU8H4KjlbNwuaYibrCEo5RR9tM9AAF3NkJytAvZiPGCVI3ra8SOPS
         RuGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=nTytACyXXGRCdtBfoKM2MVnL3z5kcJMHJRr+HEtupvg=;
        b=m1/Z2GWQNuBnlScmyY2rmpV+mlqCeKD1PboMZejS3s1q7LuDDaLd5QBdNNLhYvXFbf
         U0P1SAvUnzYASeaOVSr6+jSz01XPS1gnLqFplj1l/4VbuXBwydmE9tTSVbQdJdrhQW7V
         7aCVxLib92hWavOr+OoTBZvsQHOFFFllJV+CHy1oIMoeEC/aJd+L8E3UAuJFOOOmdzkQ
         VtDm4356LVfkNSGgeSNWMlQnEr407TUEVqgic2u7LuhKtjSGuC647dWv1e+g+l9wEL/G
         s/LE1u25hL0I6b9Qq1Qp7OWtu3TUzAKpcI2V2jdhyz3cbGo16ygK2hzzNynUd+D5VJMF
         F/uA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nI+ENEyW;
       spf=pass (google.com: domain of 3r-lkyawkalyowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3R-lkYAwKALYoWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nTytACyXXGRCdtBfoKM2MVnL3z5kcJMHJRr+HEtupvg=;
        b=KAp2QgXWIBmLGfQcIgzGmamdSwc367IINvGd0P1Pt944zuVEtd8M8Ez+Jrsv9nD+td
         4npX4lz2Jg19E58nLtYmbw3M1CQTsAKF9PbjC8kjZ6IxdgN24qhTSZ0EUy6tvhkKSwBN
         VeVb59YL2Y4aEcjI4iTODg7sbkyuMOsAkfJV9YyZjAj6EdetwsC1381Tp6QBMexRZn7I
         saZLqpZyU7XCNAPx9SHBHTCGxIT/tDH0ht+JzK3cpj/RpdGj8TdK4NWhEx3NfiBTHCFR
         Zz2KTJYhC+IRfsCoHu/q2KF25idnd4UhMdMCt0sfRqzT8nTA6Q7aU8G91KD3i+gWCeCo
         bLNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nTytACyXXGRCdtBfoKM2MVnL3z5kcJMHJRr+HEtupvg=;
        b=atB3cyi4RPjTS/gBe4IVeNVDqjQUj5i0OLi98wnetum9AAkASHiuCdzlg54YkhpdiA
         voKtfHa2C2CL9E8S1tw5fV+MGA2yTSMWJPezhrBg8YFdaXTD87WM0KAwZzAKBX2zOprF
         ScRkgWIz38Yht+cbD5QnGDJmjH1gYzPcJm/jiwMdiPam4ZB4hxPgV55pmyhzKC2IZgoP
         10+3bhYK+9MCkrPLj+dxrQW82HlU4HO0J5fqYpY3nUlQeDwMYWQ9j7t8g0w0RO5riAo+
         BfgxcdM0fuZLMmQKi3y5Cv0LFFnjfRBmVtDt+bdZGwoM0XNDCD+UhlaMifBn+GcISf4f
         NcxA==
X-Gm-Message-State: AOAM532tU3WgYoI6/2LB3xZ7+kBoIRRmSCzbC9xsWXAA+OeSd+olHbKA
	+WTM8zWoc4EMnODu/D4yPeY=
X-Google-Smtp-Source: ABdhPJyf6t3sHs/skRv/EJI40jN6DgfvHSO6GA5vcjV43B+sB/l+g1pMjMOvoW/V+FPHvJd/jj+few==
X-Received: by 2002:a6b:5818:: with SMTP id m24mr3756244iob.144.1617226056372;
        Wed, 31 Mar 2021 14:27:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:104d:: with SMTP id p13ls786567ilj.2.gmail; Wed, 31
 Mar 2021 14:27:36 -0700 (PDT)
X-Received: by 2002:a05:6e02:1d8e:: with SMTP id h14mr3994273ila.301.1617226056041;
        Wed, 31 Mar 2021 14:27:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226056; cv=none;
        d=google.com; s=arc-20160816;
        b=IK+U8M34ASOChSzOFtNB3phLw371a9es8qOoZqJa94T6VqWGnz7qHCbIPizIIUS1CT
         6Lyjkahggg/LWfJhxlDD7fwATLc59MXmzsDEBD7tRqaJu3/F7i5K4g1+uaYdQ17oZLn9
         a9XeZE9ZyEfQEY7nyDaZXiwCJLE25fMtgK4AK7Zip+sMzh3F4tbFQp1wha2wS5leR25A
         Q6IdZbktG7oYMXXTu8DwPPX3c2pexyzyM+H8GEYOtkv3QwM6+Whx7KPCiX+49twVTsh6
         sYCd7WZN4eCjOqqMerTCj+XYlW/tCCF4+pG5htAOids2nAeQfJBoZp6CxEYRI6BiydvN
         S14A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=w0Ob8x2IVOI0uzzuSsD4k6M727ovkcvMuqyZX5oqc8o=;
        b=jdyX0blZy+oRmVzzW2KYXaoIah9rHu+qlPwYHVKEDePORaOsxiQjYXLDiGLNRf85aU
         4TpOPXVQPa9/J4gYBl0RdKMa6g/0moFuDbZGiMjODIQsdqO8rJpdg214jCppNj641YTO
         amN4nKHUHcsbDEVXsiW6UXM04J2oY6Nzv4Gxzw6QSxO+qdL8i9IR9aKu6VowY/gZ3gQP
         XZFMzHhISsiIvHtdM5KRWtvMxe1eyR9DSSsLkmECQ55vDm76Ja+hNAmPgt77pDD7dRuz
         33xep4IbrXfGKM7mSQRFtgr1at7YRHG6RbxlNJWf4LgWfwlosHvLXL4H1o4uzybvL5PN
         /UjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nI+ENEyW;
       spf=pass (google.com: domain of 3r-lkyawkalyowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3R-lkYAwKALYoWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id l2si279067iol.0.2021.03.31.14.27.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3r-lkyawkalyowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id t24so2380677qkg.3
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:36 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a0c:cb0c:: with SMTP id
 o12mr5070670qvk.54.1617226055502; Wed, 31 Mar 2021 14:27:35 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:10 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 06/17] kthread: use WARN_ON_FUNCTION_MISMATCH
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
 header.i=@google.com header.s=20161025 header.b=nI+ENEyW;       spf=pass
 (google.com: domain of 3r-lkyawkalyowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3R-lkYAwKALYoWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
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
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-7-samitolvanen%40google.com.
