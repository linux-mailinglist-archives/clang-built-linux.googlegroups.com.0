Return-Path: <clang-built-linux+bncBC2ORX645YPRBKPPTL7AKGQEGD6BMDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id D558B2CAE97
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:37:46 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id q184sf1691068oih.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:37:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858666; cv=pass;
        d=google.com; s=arc-20160816;
        b=Py37q6tCzpRK/JPWNMgErSjrf3Sk6efye9YsiI8me6yDphaLSYRaK6npD4P0YCg6e5
         D8wg0eZy815lYXm8sFaMLp2GMmwx76Fk3MSEsiCfEBdsW3SAA32SjswOdflSnsguDrfu
         DFOQ4tcsVclYA6DDfe1ENUUlGk8dbv4oCZ3JzfZ0GFEmjjAMKCpdeIN8uphk8BD0PVMB
         V8K0LdFoX9pg8L0k1WL7u5pXzlUMquNLoerKeLqWb58jlARluw7TvOF3MPJNGWCX9mxY
         BcBbBpkQk57YDh60BJm6P/Uz8HOF/wk0v8Yt/KlZIySIAtpTQhaKiEBPlW3JrGjdM1mi
         0l7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=YN5e1ctAMVl5N1JSCbwqDiwdZvDNVWPotxfbClXp5Tc=;
        b=H0O1Jc8Jw7OYlyNv8HOSabO+J3hAEa15vyGCm7LWEgdALoeELoZ1RrGiNQ8j2C+rOt
         k3VO/SMvtPlSXx0mzYTW+8ffHUuG9u0rTe1uYjL0JRa9qYIuAzN5Qn9V785BqNa5l2f7
         3ZQRNkAalfMzQawimJKXpfKYi1poDnKpJ5FArtfmdxo7aUTJARFSQDdmHgCE5wkk0p+K
         GZAoThZnbuKUOnXvGB8Y1wr5PZlGT3FC4UhdQzPXhs7STPWuagxdK2UNNVPEl/khHNKm
         fm5ly9y/0HeLyBuEmcOm6t1ufckOYQPB9Dzi0kWHq98DgD4i0ce67k/WUa2tKGLsXHCk
         bDBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ty5f8H7k;
       spf=pass (google.com: domain of 3qlfgxwwkadcltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3qLfGXwwKADclTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YN5e1ctAMVl5N1JSCbwqDiwdZvDNVWPotxfbClXp5Tc=;
        b=CUTURxCyzN68PoH5V0O1uhk5ZyIy6K4ntBnsbYgCfJTFJYlzrsCm4hTQ9f58V23aYz
         syevNV0MrIn5gPW7OG+/x6DZ6WDo5jDZIZmPbbUAza+jO0hpwuy5aD5YCS3ycCDgrm8J
         W/disYL4Wcv/B90UDwiP4Fk1RoeY6brDWXy7TlZRIF3bcyCvjvtSl3+0+G5zFCb4stl2
         j1qdle6OryeXckEnIJ27ANG+TDR/KNkcEJHZVWHSxTjOIpzSz0Fw0PmIiC2IIOI+dzug
         SClMCCHPQNFOEyXRzrXh6YCjn7GRg3Qi9KpsbCGZOfmDP5tZjHSI9ZTz/8PQGbRr3m0u
         UF0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YN5e1ctAMVl5N1JSCbwqDiwdZvDNVWPotxfbClXp5Tc=;
        b=lh+B7gRBJrasjaYr80QXO/AKoGCu6CTt2PsNBiMtsEnpCcO1etCyYEBrvEaqqzJgwS
         ud4apfQ8Y5jy+pzr+IRMmX7pm+DptRiMyeFVkGtiRqAyVF4V8VnsoyN5TXf4uVRLJgo6
         aSnKSfBwdl/qJ+z/mlwxM6IfUmrQI/005mQFXaRTAq4LAbn4mYunz43aOPNoQH7YLoBj
         dP67XqSGuqS/ZPkGxZ9ZkRs4S0lMNn/L56FVRTujv7UqIEurQgTOIRxzO51GMYc4NOWm
         r2h5kRX9XUPnGOMBSSdkmVUcovLbPNrGCVnZGq089jGsZM5TN8o+AhUb+pMrusaDtNmz
         lbOw==
X-Gm-Message-State: AOAM531GPRRJLQ3YxiWixXCShwiKDnixpFEELvSgCtHnToRiJaYSEEnT
	KoF15kRxmz3JPB4zqazL++4=
X-Google-Smtp-Source: ABdhPJwt0RBj4riJeV6/e/36dyxphkIuU9r8q9kLJKBw7yozhfDoXX7a8f7h9yYpyfFwsFjxrPJ72Q==
X-Received: by 2002:aca:5e57:: with SMTP id s84mr3137452oib.102.1606858665717;
        Tue, 01 Dec 2020 13:37:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1118:: with SMTP id 24ls842152oir.10.gmail; Tue, 01 Dec
 2020 13:37:45 -0800 (PST)
X-Received: by 2002:aca:7506:: with SMTP id q6mr3193712oic.128.1606858665305;
        Tue, 01 Dec 2020 13:37:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858665; cv=none;
        d=google.com; s=arc-20160816;
        b=WJCRBXjTKedYwOgVvKFojsLqXodrQY714yJTq3/LBbAcNa1ghpqcaHkP4jCVQf/e+y
         FpDF1EL+lFrzLuoIV7ks1WaWWDVpQwTseSZt5jyRS1tzqhQYlbQgubM+MsVF63SHqc/E
         8f33ImjoIPjF+t/+HEZmVd2Ne1L03it0BZsEORE/5LQV0EHmArimS03INSLRnWXwV3Kb
         gPfnB0SJsrzsjeKbEMQ3m4CP3CZnK75hn4ygRAGylqmA5Q+MXwJrNTeInUxSdvSaSSvd
         mrD3JUMq50hIn3TIOatsfYIX9Pd7F8467p6dFYr6GWWgOO7cokSdPRqNw7fH5vN+x59s
         q9gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=D9wH7plBpsyKB7z0MJo6lESfcO9at50jK7OVp+0NdAo=;
        b=0iOXXbaLtgIbvPaJpw3wlNY16iR4dfq8TmNLM2Su1VlZc8IDktCd5VuEHE/dfjsEm1
         BFOqqooX3SDqR8XStCQNFDk3ZCJUw42h41LIYrDC463pMDFumNIhrOla7Upnd7IkWVAy
         8wO59ElH9sRPvNxiPjTChC6ielod52qXhwfvE2ZzgCZhcVb7JtW+5SZ+I2t7cGbgmUSx
         5CFRoKMK3hxtIZgUWQfqTWp6/WK3KYvwMqkcwNS4Qz0bw7rpGH7H/InO2anfQqOU86l4
         5/YHy4GYjplSoQHHAm0/ReGJ4QhPcIwAL9Z9okC2d+Ud09Fl/xQGq+hFvDSDSuhl3WWm
         cO5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ty5f8H7k;
       spf=pass (google.com: domain of 3qlfgxwwkadcltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3qLfGXwwKADclTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id w25si146996otl.3.2020.12.01.13.37.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:37:45 -0800 (PST)
Received-SPF: pass (google.com: domain of 3qlfgxwwkadcltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id n95so2269616qte.16
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:37:45 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:4d84:: with SMTP id
 cv4mr5421264qvb.14.1606858664762; Tue, 01 Dec 2020 13:37:44 -0800 (PST)
Date: Tue,  1 Dec 2020 13:37:05 -0800
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
Message-Id: <20201201213707.541432-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v8 14/16] arm64: vdso: disable LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ty5f8H7k;       spf=pass
 (google.com: domain of 3qlfgxwwkadcltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3qLfGXwwKADclTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
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

Disable LTO for the vDSO by filtering out CC_FLAGS_LTO, as there's no
point in using link-time optimization for the small amount of C code.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vdso/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index d65f52264aba..50fe49fb4d95 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -30,7 +30,8 @@ ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv	\
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
 ccflags-y += -DDISABLE_BRANCH_PROFILING
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) $(GCC_PLUGINS_CFLAGS)
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) $(GCC_PLUGINS_CFLAGS) \
+				$(CC_FLAGS_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
 OBJECT_FILES_NON_STANDARD	:= y
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201213707.541432-15-samitolvanen%40google.com.
