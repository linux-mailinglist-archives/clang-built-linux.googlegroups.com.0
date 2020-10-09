Return-Path: <clang-built-linux+bncBC2ORX645YPRBZ4YQL6AKGQELNOVXUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0E4288E1D
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:32 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id z190sf1387467vsz.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260071; cv=pass;
        d=google.com; s=arc-20160816;
        b=KOdJZRpir95Wu6RJgIUCrYSnB19kqSOdedYTDpD/bsvefcFNnQL6TPoLn5f3EVQ1jI
         aAepPVB5PjiWiwR9GT1C/7g7ZW4+e3Tf/5fdeIL0XmGDxl0eOLejs4GUYP5wDLkIkIRS
         +R9soyodu45KetPCYaTrK+QKBjGDHC7wZrsnMikteaotUuePe/ac3VZfcubIoFNJa2Hs
         tZlpxusht8CrrZpezzZjCZPVC0kKhN/Lks5XSJQmPt1yOeYLwtH6wBE8MjIJ/5jaDWCo
         Vbxa5fsUrnP3wkRvdw4ChQTfqjfH3wxr+LETMXc2ofCrjG1FpFOOxQa3YavPXWFMIFUc
         66Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=peSjYp2YZ81ngES0ikBLtP5NdTCN1EU4Abzdg8tOnAc=;
        b=XS4Bn+A7stw5ejRAah4l6xyvkIeav5pT+ajWNBnNvfbCfV6L0nM3cFAvppKJ2AyGEW
         e4u9Tu6ozSUdwNxKOctlymrjGZqvLA3wqzzXmc7dsDwam5BZG8LdQPdluxb1P6pPN1z1
         RvHo1qSzB70dx5cN7TIZiMf+LB++JBZ2lx1Slzt6la19+uhHKr4n7reud6dxpsAeXhq7
         Z5A+gUrO3XJuxVNh0YwiBhIqNq+4x67qc9oBvWUmm4hv2mEn4LksV7t7vQQotoz/QHR/
         MWsA7Wxi8QY0NIt/W+Kvn9uECvQ0AqkqxtHtx0gyTlN0zQ2GvfeQk8V7/yLMW4lX9vrn
         9IHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tcYmIPBm;
       spf=pass (google.com: domain of 3zoyaxwwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZoyAXwwKAIMzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=peSjYp2YZ81ngES0ikBLtP5NdTCN1EU4Abzdg8tOnAc=;
        b=mPQZT700hWXDknoBT8GxeYxWtLI6ZveIP8GsJBK8cPGp+BCCPHUZSuRUcuwkt2Hprn
         AIqVF/L5oLfQMD8qvj4FMEk6QehB0olM8XLUijk44kLracR0amlEkyrnMxLARkMEi3T2
         zrL7gquEhDpCM/44XnurAm7CXQ+cNk4ettI72rxCs6ziSrXkkUaQBUVOddD6wrGEEC+m
         9uhhyU6a2IQzfhty6acWO7ODpXUEYepw72oRCngYLYuAkdAoNKn0g8X8BTccVy1y3BU/
         CSuAM+FLK+GztCI8fZ3FYqiN9jKQtZKMT3aMwX0u2GS2nl1SWYOyKO5FcOvDD6Frh628
         rJYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=peSjYp2YZ81ngES0ikBLtP5NdTCN1EU4Abzdg8tOnAc=;
        b=Ocr9g10Abcvqsl3QfZeila/BZNQuvxok147btHe7aynMVpT3AhsyR8/oBkZThoHua9
         tt3Xcs3LF19Zip/YX+JSr+PpaTxKtbLitJyuYvAjGHuuyeI2c3HnvTgyM0gpq7TP0+ox
         KEbPjl05Zy41JdKmb+qhrj9GOjMIszu2F47RQ9h75tkxJ5oS+PvE8SKuwVC8FvnRd4hD
         D3456yg7WI8Ap4a/pZbvTxkZi4aFjt2H1yJ8OakpczPoaW0ek+5FYpR7QwEAroI7BxpT
         NKIybeEa8RUXnx6w4I8NUjrCqx8Nm26AzOLRiSXMPa1gTDi9oEqvNfR6kAu+TvFRSZno
         WorQ==
X-Gm-Message-State: AOAM533C8PfczKwMTQ3U9i3EIT3yGZN4HAjcq4HeIKuLwi6/+Uu3NfYS
	ubm8tYcFSapkD4KDP1UQr8g=
X-Google-Smtp-Source: ABdhPJwWgFpsahibU6WzDDT2SCVmKe3YCZL5n6CenbXAjPFfHwn2wTqnMY4RiVKZj9ZmTvQhfjuatA==
X-Received: by 2002:a67:782:: with SMTP id 124mr8421549vsh.12.1602260071381;
        Fri, 09 Oct 2020 09:14:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7005:: with SMTP id k5ls696748ual.2.gmail; Fri, 09 Oct
 2020 09:14:30 -0700 (PDT)
X-Received: by 2002:ab0:754a:: with SMTP id k10mr8094086uaq.25.1602260070830;
        Fri, 09 Oct 2020 09:14:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260070; cv=none;
        d=google.com; s=arc-20160816;
        b=dxTSja3C9g4JcXzKLBCjlc84K+Vb+moX0T47GMueKJZDwLBi23dAoWj1NuMW2GVqEt
         SrVAC+sZp4D9jshH+SktLlDNl1PJFIHK9sgpCnjMoVZAAiuc/J3Kp3fLSyntRWRna5Xv
         dvUqAHevKntgqFL3F72rKMDiOO9zg+RDA5tfWse43OHYygHQnGGoQq3VUdRfFxwToYmW
         i3B/DGn3sA+CT9dB2F/iQURqOIraOuf2H/57n/DP6KKehqgvUQCVuPDDEyBrKlhwQ5sZ
         7eT3wXR52aAosSwO6CgK1S6b9oxpPxJFev9ZCdGZd3A0Q4kM/TbktdgER59wUjkyi0JP
         qFLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=ikrbNi1n+JHv/v6pgNeNHRRr1Bi+YQ52wR6bQ2Iekes=;
        b=cq2BONfrF36dTXV5MsnyKchtNYXx//TZejyxWE64D70OSMLW/8RkAL2yE66brvAWEe
         EJhQ7Y77GMnoIne8c1XDJA0RSv9qOFFoK1Xhtj0TtiC6KpwSl7vpIpMJa5UIS3a09e2W
         GglqN31qOTIxvaW3evY7aUJPPq5K+/s1ZG3yP2t0sIWw9xRWC2yKiEZk0ovwEn4ENVMu
         kKpKYWcMfueRljF4DxeWjw1aPBrbv0x736tTlVhdWaGLAokR3CgacEOdWuZVtu8PKiuM
         92RMm5XHIdteoCYRlMG6muGynLTjweN0PlWUFKvAqwbCtMfc6n5VWT6zbxslBqdPW8Ie
         x6Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tcYmIPBm;
       spf=pass (google.com: domain of 3zoyaxwwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZoyAXwwKAIMzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id r131si432590vkd.0.2020.10.09.09.14.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zoyaxwwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id u35so9315798ybd.13
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:30 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:388d:: with SMTP id
 f135mr18426175yba.54.1602260070433; Fri, 09 Oct 2020 09:14:30 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:34 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-26-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 25/29] arm64: allow LTO_CLANG and THINLTO to be selected
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
 header.i=@google.com header.s=20161025 header.b=tcYmIPBm;       spf=pass
 (google.com: domain of 3zoyaxwwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZoyAXwwKAIMzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
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

Allow CONFIG_LTO_CLANG and CONFIG_THINLTO to be enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index ad522b021f35..7016d193864f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -72,6 +72,8 @@ config ARM64
 	select ARCH_USE_SYM_ANNOTATIONS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
 	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
+	select ARCH_SUPPORTS_LTO_CLANG
+	select ARCH_SUPPORTS_THINLTO
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-26-samitolvanen%40google.com.
