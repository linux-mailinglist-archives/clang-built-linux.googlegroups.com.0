Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUOHYD5AKGQEHAJOYKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F5A25B6D9
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 00:59:30 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id p16sf930620ilp.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 15:59:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599087569; cv=pass;
        d=google.com; s=arc-20160816;
        b=TSdGr3BW31+gcY+YoF47wro2TKBYmyj8B9c0bh6HVIe7wwup1/0xrgjOoNEkdMMz5d
         NS9eMDjiPNwbG/M/7QY0WEW8PtUQtRHA0kVJyRHWCywb2ppziLkj9QYFAgEvVXzTtPOp
         0Ctox9Y2WqGoIZusE74vNzdFbCn4kA6cYjAsDBJpVnKF1vwiQJeFQ7C675u1q9hjOErz
         pPFLrucqjkSwrX7vI34JSNu/acnbUR2qrMN6LI33ueJPcp6hwXjefpXwNNFEOgqr/NiX
         OVmMWGcRFdk9H1j8r8tIsqV1hVMhZocFjn4XQrJ/5WoLCpaH5m1n03XkUeNIVoXZn/S9
         UaqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=rQ3a1yRqZjDrMrkI9A8Z+vU36vUk22yU11Q/ljRiCbA=;
        b=hXyd6gCRd5l6snQWfiIbKEznHf2QORoqoLv7+qBqeB3gJ6ZDL3AUwtfR9SnbAAnEud
         ng3LUJ9q/5I2EzyNxPnFomI1lTdQcvTsL9RTLRiXFE60HmAPNKtoQXaaz5tfFrL7ULmu
         e+gNOIX6yNnGiojZcpCuMNB1WR82ntOdUCj+AozNb8abf83GKjIwZ82c2UWq20P9tphD
         auFIbNdch1NRCMZY4zsTEKgy/SASQcNHbwmrElV1i1MNhiiUij3Mum7ZpzlHV/9ug58x
         dEpiHlUsj0aT1PTk7Lbcb0M0ppvevYBbW6CFG4L6UDIgdiBKLDoz+RW7TMuhsWXGqPoj
         9zUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oRJCPHR4;
       spf=pass (google.com: domain of 30cnqxwwkafke45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=30CNQXwwKAFkE45J1LCE95IJ7FF7C5.3FD@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rQ3a1yRqZjDrMrkI9A8Z+vU36vUk22yU11Q/ljRiCbA=;
        b=dELyeoMwGLgUtJOFzMll/KDpr2YPcSBh50/Aeb6by0dMVDqJzQmZCWyshQ3Pmwwkwx
         vcEMhmTq8xPNrBKqQAxu+Nc2wz2sF+oy1crPX7grSsJgDqqAuOZu7wmPJKEE5BjusvJZ
         /xEBnRWkK1z8fZIqEHJ5VEpMOhltu3fWyp74mqIbvzS5KrPdQ3Dbl25DZsng03Y+BFO5
         jQqVPbiPG5tqLZFeGMCWyxOH7kcx6Ega07t+z+MEs1u31vpVC+t8OKZczZ6TNlxEwUQl
         x7nCcQqjb+igEiOvKScU1aBRqE0BNmgeHpPl7vmsmPgv0zFXoqiVU8hBTz57EmUzkv4Q
         HZHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rQ3a1yRqZjDrMrkI9A8Z+vU36vUk22yU11Q/ljRiCbA=;
        b=Dqa5OEWSzfh37V6GqAykhBuy+gWDQ57J84sbOFyDEuZ+fzVkYlChjvut2FYo5Nslr0
         gc2UY/gB7gBsb5pWNnYqR7Tr1Foc+a99n/cibk9VH83u45nqhFXbiXTCQoe+Jf0uT9U1
         q6bHDaRYdmqyUx3dEz0u/C1Jz5fDM2iQdQeb4yZcH9y85n5rnwEicsLqWa9b7o+5UGSo
         bNVVflP37SR+ck7M1YFnRBXmzWA8euiWPrCAcgngJoEZcYV7iSx/tmlJHqMHHtfwh5i5
         0BSWsXzORYH5ovMl28X9nS+hCK8TEqbJt+dqBfA8VV6gS1LvsVNlyhbacR0Nhh/vjhKm
         qaTQ==
X-Gm-Message-State: AOAM531Im5LLmQdbyawJiRjSHRTufwKSrGpdHuX0ZaMunqPLkHeAGr76
	YmNuosVsj8qIKIADgvw3Ctc=
X-Google-Smtp-Source: ABdhPJzSEuI54uYAc+upLcRIvA+fjUvImYfKwIM+yLZfXuUTrceJW0I6od8cjh/2jmFW6fOnERD4rQ==
X-Received: by 2002:a02:8286:: with SMTP id t6mr297265jag.87.1599087569362;
        Wed, 02 Sep 2020 15:59:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1941:: with SMTP id e1ls955946ilm.3.gmail; Wed, 02 Sep
 2020 15:59:29 -0700 (PDT)
X-Received: by 2002:a92:4184:: with SMTP id o126mr531494ila.6.1599087569095;
        Wed, 02 Sep 2020 15:59:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599087569; cv=none;
        d=google.com; s=arc-20160816;
        b=Yw2l71fJwC90Oat+dbDG2tctI6QqhckG+Gv8Yb8N1ETBQj09pJII16bDqLXZNnNCBc
         7mBMBtnYKhxSsa8rDCbLLFHUMyK35F6HV0uOaDk8vqfIf8jAMqukie3NMQ1IdPdcW0DT
         UlC90mHPbQZi2JH8qlf2KRfZ5HWDNmitRDspLwJeWk0KBOuFXapkG2F4t0oIxYPvHFB0
         dASaBYt1s0isNsKwbBpvCDv+bHGzDd2S3ZTAQeoQ7Q4hEJnBtXNUDhXbmSulLigrbfof
         RKkXij+MHRZIlrwA8jDvoRLs5QpSPWl9TcTzXvk8jNQHYYPBtbwURrT3NNT9GrKE93wx
         hyyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=PPIXCdBjPq849SuXr2dSY3KoCU2uhT3WxtZeuCs0Kz8=;
        b=zkCaxobiezuEQOkbotX3XD3aTTJx5U6j/FlL5fowqOYLJVSP/tcB4orcklGn89SjCY
         B0Fzyu9s0y0txgVD6JUdu1R19s6N1vegzZcwpZ5/XG2hun7MWmrhaIpI7q/2llVEOCNP
         7Hp22KPAcDxEtHBpWpuDYMn+vOO88nLCx8ZRTkZofeUx0PikOhZJkeOQiA6JDR4GrIqy
         weod+UXuA/tscnzKh6cLX7KxHB/FCYr08niL9QzV5NFWI18eYgds6bPYuSRdOianObYV
         Ivo0UGVq2JaMq99v4ZabsFs1J+uMv8Jxzxq85Ox69BgQMBBQf0MdzWjKFWG4MhqX6N15
         ZEkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oRJCPHR4;
       spf=pass (google.com: domain of 30cnqxwwkafke45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=30CNQXwwKAFkE45J1LCE95IJ7FF7C5.3FD@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id h11si81843ilh.1.2020.09.02.15.59.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 15:59:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 30cnqxwwkafke45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id s3so821513ybi.18
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 15:59:29 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:80d1:: with SMTP id
 c17mr4398880ybm.377.1599087568559; Wed, 02 Sep 2020 15:59:28 -0700 (PDT)
Date: Wed,  2 Sep 2020 15:59:08 -0700
In-Reply-To: <20200902225911.209899-1-ndesaulniers@google.com>
Message-Id: <20200902225911.209899-5-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200902225911.209899-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v3 4/7] Revert "arm64: vdso: Fix compilation with clang older
 than 8"
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
 header.i=@google.com header.s=20161025 header.b=oRJCPHR4;       spf=pass
 (google.com: domain of 30cnqxwwkafke45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=30CNQXwwKAFkE45J1LCE95IJ7FF7C5.3FD@flex--ndesaulniers.bounces.google.com;
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

This reverts commit 3acf4be235280f14d838581a750532219d67facc.

The minimum supported version of clang is clang 10.0.1.

Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm64/kernel/vdso/Makefile | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index 45d5cfe46429..04021a93171c 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -43,13 +43,6 @@ ifneq ($(c-gettimeofday-y),)
   CFLAGS_vgettimeofday.o += -include $(c-gettimeofday-y)
 endif
 
-# Clang versions less than 8 do not support -mcmodel=tiny
-ifeq ($(CONFIG_CC_IS_CLANG), y)
-  ifeq ($(shell test $(CONFIG_CLANG_VERSION) -lt 80000; echo $$?),0)
-    CFLAGS_REMOVE_vgettimeofday.o += -mcmodel=tiny
-  endif
-endif
-
 # Disable gcov profiling for VDSO code
 GCOV_PROFILE := n
 
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902225911.209899-5-ndesaulniers%40google.com.
