Return-Path: <clang-built-linux+bncBC2ORX645YPRBDUI4L2AKGQEX2ZGALA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDF11ACCF5
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 18:13:04 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id z9sf3687415oth.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 09:13:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587053583; cv=pass;
        d=google.com; s=arc-20160816;
        b=yPGg1f8AsDUQEuHFc2jITsNpqhGedK8ak/1L7mjbtcVIOtYBKCSl8xg2I14KKbMnRh
         OVPwTV4MjEI/T046q+33F38Xj/0q82rTg+QEHcstmvxfPQQWnbtJuSIbwmDZVGvahuUr
         shnLmuRT1ORs1zP09dcV+oNXF5WpNEFtFPAvldyprON2JF7yS78l+OadAKnkt7R80jrv
         tDv+eOBT/AAw45kEHPrQJFUCx/ncM9tPtSCKHx+59dCmdrEqAPfKaSYbrKKqDlGgm33L
         ZGKclR0I9QdoFYT6Ox9Ww2IEXMpSWwZiQjRcH91eLGbVS9bVHDTA5WGEEx6Xp9i0UapX
         K3IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=qAb+chh6q3rELJU7pkCgyfA8d08UyLnKgJCCelCtvYc=;
        b=cIbCuOGBbCp9PvNS/V0AcmR7HWkwsK3qvLLNRGsgls8pa2foe2F1jhXFt4JV24ul4K
         KwuP3hIC0udJxuWJW/IFyY7PxhadKzIB3fNrkM/9/7ca/bNjVMs+bBKfpTt7a8VP24Ey
         zIFS/b/T1n4JJMB8s3sb8mC07mVVgzBsQJdl+HZBBC9Az08W0MTte+wPY1lSsYtH6LLr
         vldw5XVBcGbS96k5V3xdqhNayDprwzNKZp0JwWcKEspZTwWtTZo9ZG8MvEiqqw8MFSJ5
         pMGTUQSl8pjPdLFM9F/T8GM4rWicOqDM5fNf7tQUv3UWQRol0/odEKYUgHvUqGRz7Cml
         7h7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aGvQz7rp;
       spf=pass (google.com: domain of 3dosyxgwkahmjrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3DoSYXgwKAHMjRdZkfcmReVeXffXcV.Tfd@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qAb+chh6q3rELJU7pkCgyfA8d08UyLnKgJCCelCtvYc=;
        b=rH70BV6lpY1AXSHL5++3bjIykucag/zGqHquiFjqRiV9+j/b7+GAcOL72CtEoKD0OC
         gGN+Vq5EFmzZuins54hEdDAgOVMN/i615C44lLxRgLsUI2eTx5QtDwbXA9TqT6kq8boT
         TfORs6cGBedQr1Xki6XDE49BNYoCdtEbZ5XPu4+fqlos7bcNQYU1vNkExQAhZ+fch0oS
         +K1imkkaeVTiVLNuOzDf1OZxw/xRmJogr4jyvCqWFR/PcTxaY00UvtFrLclSH88kfRf9
         s7TqarR7/WK0W+SQVIHGMFvcPdvIQPDKf/7i2BUadQputSjvYhN5cN3Kl3rMeFZ78a01
         /rdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qAb+chh6q3rELJU7pkCgyfA8d08UyLnKgJCCelCtvYc=;
        b=BEn8iJZc8x7rc7OFZ6asN5YnjEOjOEJ4ALJN37JUhqkLZwI+ZDdf+4x+UwkLYKBPbk
         Gfpo6kYQwq0xSfJOWTOoxEHHejgnrTQ62WlhIb2nnluT1w0L5/jOuTnwt6aQifOe0iAh
         RUbOQWvTfpSRrgyRjd8KZsb/8EKQIDEvHIlMid7Mn6cD3jJ9QjoLCcrkL5lm0i5Zjlkx
         vQOQQfcZAlpiIfGWL+1oBmBOaXJD62YHdX/CjCf76ssJ2VMEEC+OgGAG7IPF1TIff3Mr
         SGMYskVD5l0h7bK7vK5mNdhHkxg0VVE+ljvCXUX+wxGk8OSeySYVc76NAHDCd1bxnC5k
         0CMw==
X-Gm-Message-State: AGi0PuZBPqHjPoE2bcebc3PFXzeUo4trjDSC8M1CpVoHpZyYxSZnrM/F
	qYug5zZssCviydL+rrRsmPM=
X-Google-Smtp-Source: APiQypLYnPhKEQ6XuVry4q5354yXH+1jhURGERByKyuiyg+VrmaF8hVPtCLSxCKM655YTd1VmhHUow==
X-Received: by 2002:a9d:d52:: with SMTP id 76mr27249623oti.307.1587053582999;
        Thu, 16 Apr 2020 09:13:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f456:: with SMTP id s83ls2397060oih.11.gmail; Thu, 16
 Apr 2020 09:13:02 -0700 (PDT)
X-Received: by 2002:aca:c5cb:: with SMTP id v194mr3466021oif.26.1587053582617;
        Thu, 16 Apr 2020 09:13:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587053582; cv=none;
        d=google.com; s=arc-20160816;
        b=LAOMs2r7N+0rv3bbWhjOu8+nGtUKuUV7u3Ob5Zaw2O2TweeN/2PMHdxHpNdS87Y41w
         P9MUPHl0fZKblvzEaIaxM6bJfTfKlS3ra9NXmD+F28Tey0mOv20mZGO1nHXohC79bDHI
         NaOE2+KlsKqzHZXX1ocXiJ9A8S43tS0FlZl6T3CmJhoG8FL62/GWE/QnJedj3mjDGrcA
         v3PdWlBU4CZpA9EgEV06oGHbw33Fhoa5B3ieqtLkGnI9i5JZfLIgHLNMYr14iV/6tU+a
         ghWo0JlrruZtMFdF6c9U0vMJQfVsjBx2EjkJfcrHONIPMcPKIxT0oQkiBbcMu0Xutr0e
         9T0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=jhbZSy8N7pmIKGLCoqfuWjSb1n91/ddT1S0YkqMO/sE=;
        b=kbSHnRmuVOYahW30BAylT801DudTEudX4MSluclzVYYy+FGWPmZL1gac6/3ZUhCBc6
         ILKHpjO+/ls32e0JFDwkGfW2RWbDp/HhdCth7dvWXBoFn4zyBuQhM8nWdwcMX6wN7A6J
         5167tcEH6Yv844nx+dCPBZQb3k0xyOmsiwstUZ2QEhVuDPRftvSNIM0PuFLGM4kSBJ0a
         9ibpOOetNnK951fnn9lMR5WTwGbFWwO4rGG+t9/87h7VYfAl5eMX8kZPG5rSLb2JB1cd
         wI8EXFD0zbGZimh4IBw2erwyq6CIKHB2DdGWiLORShKd5E1JSztYbXq5oE/3r6HZbLL2
         6QkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aGvQz7rp;
       spf=pass (google.com: domain of 3dosyxgwkahmjrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3DoSYXgwKAHMjRdZkfcmReVeXffXcV.Tfd@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id w196si29560oif.4.2020.04.16.09.13.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 09:13:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dosyxgwkahmjrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id f11so3464242pfq.2
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 09:13:02 -0700 (PDT)
X-Received: by 2002:a65:68c7:: with SMTP id k7mr33098346pgt.248.1587053582058;
 Thu, 16 Apr 2020 09:13:02 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:38 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 05/12] arm64: reserve x18 from general allocation with SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aGvQz7rp;       spf=pass
 (google.com: domain of 3dosyxgwkahmjrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3DoSYXgwKAHMjRdZkfcmReVeXffXcV.Tfd@flex--samitolvanen.bounces.google.com;
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

Reserve the x18 register from general allocation when SCS is enabled,
because the compiler uses the register to store the current task's
shadow stack pointer. Note that all external kernel modules must also be
compiled with -ffixed-x18 if the kernel has SCS enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 85e4149cc5d5..409a6c1be8cc 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -81,6 +81,10 @@ endif
 
 KBUILD_CFLAGS += $(branch-prot-flags-y)
 
+ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
+KBUILD_CFLAGS	+= -ffixed-x18
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416161245.148813-6-samitolvanen%40google.com.
