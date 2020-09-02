Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU6HYD5AKGQEEFYT5AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5525B25B6DA
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 00:59:32 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id m20sf369990oih.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 15:59:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599087571; cv=pass;
        d=google.com; s=arc-20160816;
        b=oPjkuXlVX2evzmfVDSISyVXUGP49TPQ36bdLR+PiGi0dn0xZlQy4aJVemjfQ58jaEV
         L3As66qfeO56dyX+tlj2QzFuwXSuvJYfMPB0VRa6cxd2RO9cW0Q4uSu+vadmSKMfiEaJ
         qNSxJKIZB7V8SzeqiYTrkJ8FOLiHtq2bp5/PHab6qE0WkTBgrh9Ej3r74exhti5Ohkks
         Jav4kiZgLqXj+t8fMrHRgBV0GNtuAYRdn/zvEUuQtvwxdAkx4EMacUOqt/aNWWZ/Leud
         bpCnLK8nDMwrrElm00/356+tsbmjhOpI8u4d0KmyWpUbnIdgSdCJ4NMN5MYp8cj2UdOU
         7q7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=4khXIo4zGpeX3t4ym+gKrAPXWYEYf79RGYEVz1gvkdw=;
        b=JOU1MeHMKfnb+nGGwW1nvVVM+ivTRluHfsbv4CdtTc0l/nF26fSc5ghJ7br87z7GSR
         QdpcYS36i/u/OnV5x2ypVc/KTqVdlxto120RlvM05MPeekUco0OWDmHNvI1EpqErj5sG
         24Rq6my1kkwTZYGlqQ7JG+aNLlu3OxI6R3lvaqGVscUupwzGCP4c6L3aOCS3KqT039u/
         WtVGxRPwcoSTfFoPPZpJgmrYl2u4rBymIJAdF2NS0UksH3TH/Mxn6awB6S8nA08vbfl8
         prrndFkc+VucHiHOW4DnJrjuD7gRu5c92EwOLza/YgO7CN7S5HW7oVO2gmZrgRDsJDSW
         U2NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RrcyI2Cw;
       spf=pass (google.com: domain of 30inqxwwkafsg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=30iNQXwwKAFsG67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4khXIo4zGpeX3t4ym+gKrAPXWYEYf79RGYEVz1gvkdw=;
        b=lhDHRR8phphsgspUOG9IQAlHNAshgfM1mFkfPtpmUcjJS5wH1OlEqdL654bsGAWXSu
         VVxQn4iwxPXyCitmeAcQy+HihAKqqvvw0LgGfkHfWRkh7JEliv9dysuym2aCCZRVuaZv
         d6vKmn/WLHKYadU7f4LQqlkGlcKtwSH1T8MJ0rBYMdxUX44bKfW2amQroxcGSmqaF/KI
         3hlegsc0B4MyTmztgGHjLB4ktirpj5cAyWelSi/43oYV9AUxpfnaWwjz1opKL8EIE43h
         U7+QupYl8V5kPUAsvmCwHE23I/jdRsSBd1C3Xf5CyyXUkBVA5Ea5KE0LH1moz35FvztQ
         1PjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4khXIo4zGpeX3t4ym+gKrAPXWYEYf79RGYEVz1gvkdw=;
        b=Tx5e8io8FhT7GyLNGgrx1Og9TXxjcMNvJgI9MTA8ll1ID1J0KGHcYgO1BWpmgOIgJi
         Y3WF7s1WcPNfeXo4JqJ1nzHZLa59Hpuo5umNtLgS57k673nqtw1JxfxqJEwhAMxG97O9
         6ArFjOvGdBMJU2FIGO3AhE9M28IEYz4uS0poJnlMCez5iNSwyo0tRAH1WeTouPhY9tvb
         buQbgf6fwu1Mk4Qe1QE8j0ZtYogpp112IMiVL0Kl5NV1+0c/V7tYtTiZwTMueCV8U3Uw
         6A41I82JNUuaAZs2TT9UAX2eULwcUaYZXHoEj2PJNdIDfoMrvLNetqguLqQ6b5n/kBj6
         8xJw==
X-Gm-Message-State: AOAM531nEdjVF4H0NMwxwuiGeVvrr9hR+KOiF379eOF9aD2tXKVHulY/
	6Cc5dSOgHWGZYmZ7D2nOMVQ=
X-Google-Smtp-Source: ABdhPJx7zS0hoUliF7ZilSs8OvFNo0bKF+Kwh6/OdSrW3rWolRQDOYclMgKb84xaKvGRtSLujyH8Cg==
X-Received: by 2002:a4a:9591:: with SMTP id o17mr269663ooi.4.1599087571124;
        Wed, 02 Sep 2020 15:59:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b905:: with SMTP id j5ls829470oif.0.gmail; Wed, 02 Sep
 2020 15:59:30 -0700 (PDT)
X-Received: by 2002:aca:bb07:: with SMTP id l7mr286547oif.98.1599087570836;
        Wed, 02 Sep 2020 15:59:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599087570; cv=none;
        d=google.com; s=arc-20160816;
        b=iTs8NFIlPmc7o3nNR5PGjr+7OG+ct/NYYlvfok9cn60CbV4m/NUxybSQWIfQiXODFF
         oOn9OOqV7RBAcla+yOoiljW3rNz7v5KWdDlCHImjy27KrjMHZmqUxVPgH4B+V+DcpVY1
         bVKoSX+KEYXqL23NGCep/Y2iFsKJDoshAah027CZlthxbYBnHRvfCznbplIkOPZQ0VvG
         Yw2eiHR7vQi9cgPArkGwat3VqOXhuVlApVd8Q8DC0EfaPRxt3LRh7+c6/f3G4k2lg3yJ
         e7aPSCjRNJNkU2pNg9ADfQ3p0bc5FrQIOmlNdzEwNj1469PGx4C4mesvlSs18Avx4yGv
         PVog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=a4tZCER4et/ZOnqo0bwgxKeJi/AmG4wV7j4nx2O9a/E=;
        b=ZeYL8wUWObPvccRvGVFqE1DI4eXPCTS9n1BnU3UecsQQcl9xM5XJCqM5lYhK4L7OUD
         vWM2JQZ7LNDD/DR1jLMciP11iDTTOYEnTgwgEcr7n8jcKS/6qz237ykZH1290SJbv6SE
         kx5d77T1UK4H+NrdVaxB+yA8O1jXXNhYIWuU0IBDpTIn8Zwk+ZEA9bsMRa7PyDncnHSp
         oQkI7sX9YNbGgzZAm1o9LgYVKLsNPikJxOY2Ve++jSog0XbmBwXzsqZC8SgDqP0sC98Q
         tuiLYcd9Mslpf+1iP4TfDz7NbBpUGQs3ct5AJwyNoZLHNkaP40LnknXBlRLnNqypsyGN
         ikYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RrcyI2Cw;
       spf=pass (google.com: domain of 30inqxwwkafsg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=30iNQXwwKAFsG67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id m19si78399otn.1.2020.09.02.15.59.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 15:59:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 30inqxwwkafsg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id d184so442294qkf.15
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 15:59:30 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:c207:: with SMTP id
 l7mr105339qvh.239.1599087570306; Wed, 02 Sep 2020 15:59:30 -0700 (PDT)
Date: Wed,  2 Sep 2020 15:59:09 -0700
In-Reply-To: <20200902225911.209899-1-ndesaulniers@google.com>
Message-Id: <20200902225911.209899-6-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200902225911.209899-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v3 5/7] Partially revert "ARM: 8905/1: Emit __gnu_mcount_nc
 when using Clang 10.0.0 or newer"
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
 header.i=@google.com header.s=20161025 header.b=RrcyI2Cw;       spf=pass
 (google.com: domain of 30inqxwwkafsg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=30iNQXwwKAFsG67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
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

This partially reverts commit b0fe66cf095016e0b238374c10ae366e1f087d11.

The minimum supported version of clang is now clang 10.0.1. We still
want to pass -meabi=gnu.

Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 82c197a248dd..09a7669eea1d 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -83,7 +83,7 @@ config ARM
 	select HAVE_FAST_GUP if ARM_LPAE
 	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
 	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
-	select HAVE_FUNCTION_TRACER if !XIP_KERNEL && (CC_IS_GCC || CLANG_VERSION >= 100000)
+	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS && (CPU_V6 || CPU_V6K || CPU_V7)
 	select HAVE_IDE if PCI || ISA || PCMCIA
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902225911.209899-6-ndesaulniers%40google.com.
