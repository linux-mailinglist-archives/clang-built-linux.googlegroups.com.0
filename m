Return-Path: <clang-built-linux+bncBC2ORX645YPRBD5QTGBQMGQEXZJVFWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AAC35239E
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:32 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id o70sf4779875qke.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319951; cv=pass;
        d=google.com; s=arc-20160816;
        b=SWmFvqUOObOaHgq/hwXAeSDhEYQ7h6dmRiP8tnaLRNDYiEMWl1OuJgJr9Gk0UK40ew
         8X7YgVi7wXvLiGGkOIJUOzJomXCDWn66QI42CqefrZVHLnB7pBcwRtxfof9bbkHxdyeP
         SXfwvoPEpsTK+mFFdtxDCZUhL1xwJCAAZ1xSA3aGhf4e9xAnFfMVbpqZismejKaDsIRe
         nZDyA33ckBL1OfYf4Y8I6gqz0/5ny/tSICPVptnYEJm+/bgv7M8GatwFhUkJsoHiMOGE
         vprC8CZjLLmvlLUsCpYNCOsxwc6z98W1lt6O4SjwBw3NTbNZL4At3jw+8T/2l+CtnDkT
         KofQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=6EiZXGplGbJf/QZcDJiMU0G0GNwSDsaw83wiMpqm0pw=;
        b=dwh/qT7vQ6HaqXGtD50uK4QUmqs7Wa8KRAmupmcWC6bJk4R2B7pI5X53J5+4eSS2LL
         R7CIKr/9Sq0U906+b0t8ATexr4XvBrSMIqc3YgEx3k2qmYsRmaqk2ktZrnvnbZ3kM4LZ
         Nf4Zf251GLBkUPHSVmbUAq/ZadCbAU5Z93/KLyNojiebHtzEOYiBVl7gdSanZ6PUqzT0
         q7cLR44YT98zHSsrmnLGxdUkSHsdEB8t17jkhaswv755hnKfqE0GuTMCR2tXpCGvNvQz
         TQQO6adZGzVo6WCv+P/cR/zoUjdQ+qrhWzt5Fn8wDzlyz4kN1v51+L1bzUDvipBtC/l/
         3Tbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I9PJaQcs;
       spf=pass (google.com: domain of 3dlhmyawkager9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3DlhmYAwKAGER9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6EiZXGplGbJf/QZcDJiMU0G0GNwSDsaw83wiMpqm0pw=;
        b=pFU8hAstZUPakgqt8NStzESgVQGvxl6Q41z1stWbHihyaidj4vc4AG7Lh030kSLCgI
         VoxNPzQ1ZW+hX5j66h6iE+BtX4UXBJqoUKpD+gELlB8vLAQwdvB/oRtXdyGdKw3s1EyA
         SwRU+aT14f2J5PnWIuXfRowXRhASV1Cp8Z8xg3Kk/n51Ly+P0ARMfQRMDv6Z/eMPZFHu
         8PqQ3jN1gWdLdqz41RRhHQm53pT0CZHcYwYkI7uMOIrx5R98b1FqCb0KjF9BWp30EXsm
         nbfP2kG+MWZR3j/N+kVOt4KEcp1IliFmITT+AQ+ztLvqZl7w7xL2rDHIuDT7DH0wR0MD
         U+Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6EiZXGplGbJf/QZcDJiMU0G0GNwSDsaw83wiMpqm0pw=;
        b=ZRU+tJn8Yc9GDK01Uz8/AVH35Qr+b2mKkefX23NJI4bcoFy393uAcoZJCJ2IyLnY5T
         lFK7SYdaXZYSTVzJefwQdS+qp+afvYwfiRxKAyRrUVVu6bPHy4R6xeU24/d+GcJ6CwWI
         HzcovS9YPJZqMoPwbekWv8EgRwPqK4bZrIgum1F12tXKYaEEXBN7GtoJUXHMqDWGHgbE
         atCUnjaphcuFcT3n9Xk6KoKTqVONOPtgK5t9r+RKfQP4IaILI0RA1OBzFDtBGSlwF1Et
         Go9wENwi17P9ThjlDJSBZlH0TK4vlfLAIs36ruNzNDUj6a86iHC8l6CPL99cGKu8IOXY
         Fqfg==
X-Gm-Message-State: AOAM532m0pnvQDvUaqFlvNkunG4XYqgSP58Mg2xck77x/ORFiC8Q/J9T
	UjXrf5W9N2XTYYUHBPssaLg=
X-Google-Smtp-Source: ABdhPJzKC8LKvClTUuVKGlEbdmF5irdmlFSdbKGhnxNhY9KSZe0Lro6cDTHdSxeLq9lfBNGVxBEKiw==
X-Received: by 2002:a37:660e:: with SMTP id a14mr10464013qkc.35.1617319951294;
        Thu, 01 Apr 2021 16:32:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:4c6:: with SMTP id q6ls2891768qtx.6.gmail; Thu, 01
 Apr 2021 16:32:30 -0700 (PDT)
X-Received: by 2002:ac8:4b58:: with SMTP id e24mr9295775qts.120.1617319950852;
        Thu, 01 Apr 2021 16:32:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319950; cv=none;
        d=google.com; s=arc-20160816;
        b=FW4RiuUyUMAm9WtsQf6xyLUIFSUwrOzfawaEyxTprkQSybPKtyzfnzoQmme0o5Ew8v
         so9spmBdTqrN++mOf7aMd7gQw2VB2EFur/iwsxHh0bCYGyAGvGBMv1GohNm7FgVP/lAj
         n0mBE9xlYEuIXj+c28C8SLF6Gd1pUbVw8PgFLRfNdfjvZC01c8QWEtt+yApTwC4itk4R
         uPkOAdkFyUfylJ4fQlCXpk0mZeplTqgzUzG6KQOc9IEt7dEJ0fpsMxUrUTlTxLaXbb73
         wZQPwZvlF4eidlUsX3pfUdz4qvNhQ91HpUOO8ORJNMLwXqZs4M2btIvvwZU+Uxw/B0ns
         uYlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=tlln/25B+ozo47mKEKLuW/3k00WnDy4P1m684YdZ/Ow=;
        b=h5JYonLlcLIFBogenaZ9SeKy2/u3cot1oaB5C942sBkg0IvBftDlmcw8N+sWa4vwtz
         OYSC4Du8yQIgoJ+g2PSYtFhl8xe3taJFRUr0304nupFqEMX3yRAWG9Q82HaqCX+9G0i/
         oGeJYhSMUJAJZFSrXx7febH3m4dI/bz56sxKn7mcn3EbzK4HL/dVCEsoxuUkHntzg0Rg
         mUhu9pbAoGcCqrQwT2n8VEGUIJpeQ4ZMCszn2PE/U4i1OzZl4sObmJB6FHla6x+h482w
         Sjj5dGP4gHG/DFkekURDRds6I0qK2EjoYHn2knJw9vlXnNZdY8GrYd5QDiXq+BYG/uZx
         y4IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I9PJaQcs;
       spf=pass (google.com: domain of 3dlhmyawkager9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3DlhmYAwKAGER9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id k1si1110784qtg.2.2021.04.01.16.32.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dlhmyawkager9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id u5so4778165qkj.10
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:30 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a0c:c243:: with SMTP id
 w3mr82666qvh.34.1617319950529; Thu, 01 Apr 2021 16:32:30 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:04 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 06/18] kthread: use WARN_ON_FUNCTION_MISMATCH
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
 header.i=@google.com header.s=20161025 header.b=I9PJaQcs;       spf=pass
 (google.com: domain of 3dlhmyawkager9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3DlhmYAwKAGER9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
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
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-7-samitolvanen%40google.com.
