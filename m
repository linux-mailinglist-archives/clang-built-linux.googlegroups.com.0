Return-Path: <clang-built-linux+bncBC2ORX645YPRBGEI4L2AKGQEW4WNADA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id A78AC1ACCFA
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 18:13:13 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id 191sf16565885oii.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 09:13:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587053592; cv=pass;
        d=google.com; s=arc-20160816;
        b=CO3gdyaTHH74NMqzSIo45z+Uwquhc6mNB2Lbtr1+UhF8RA9Yq5cEeW7q2upQb8Lc9A
         aigiU0cBMC48ki69irN/giCnrcd2Yu/Av2k/3SmhdLFRK4eq/Y1PmfxFJ+TNANylMteG
         GychQ2vlvdN2p/UrlCgfDU1dFZxY8f9KENL679raH8MKA+tS/8ti3ykDbC2vpfCx9rF0
         oJ9XcGn3yh1v9XTQWZB9Yv1WZxvfcQQKyUpnCKzgOfIwCfuHuzQP7yV2d7f4b1smOMsS
         cSu/NCECf8CDA1lumriC1COSkgOqtTfOOO+YdvZ0sGHACOMbnERs1VQ5LEcl47JvF4li
         v/kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=2NVGtg0PPurJG/wF3qe3wYjHHvSsxHfANiP31mdqeJo=;
        b=pIttseLciyEemd0FW+3RgAzhtvHqTKeU4IoqAhOkw0eMd8pZtjsN8MKo8QB2z8Rkl4
         BI9BxK8Bb4/e5UEemWqlq3kdYO7IttEn23hilPp6vrsB/gI8rheGh3a3fGRJK4ETyR8v
         ly2aI4hQ6mozfRDXwLVCfJfF4kGSC6J6ArIxTDWKVBNPS7VwSBUw0wNeNudRUmMwQP2I
         EZ7tJFmPuntuMwMZ68yR30eANRxv4fII16tQTbZvfRhqASJK7PSBVv6cx2nIQz5dUrNp
         ADWLzGi0gCEiRZmHF0L6tBv2J6TuEIfvC/D/Zu3QGyRy9LoxwtyV/Rzl9jkWIet46Tnr
         6z5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sLxFQroY;
       spf=pass (google.com: domain of 3f4syxgwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3F4SYXgwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2NVGtg0PPurJG/wF3qe3wYjHHvSsxHfANiP31mdqeJo=;
        b=chh2wqWob+Ob1qmiM90j/uRDkePkxC3LkLJY6PXjhFmulg/vjl97Hc/gNqaL4TywDr
         nweWzQ0SDLPA4WRrlXcif+uPU5AqRQyWip6RVL+A5+F3cSS1wIbOaVSMRFBkZPVercYu
         poZxisH7jdqC87WbsXmpIyZ31fMo5fBqAQnvWUDqCKwnwo7BpIqApVcjv+umuxIPFdJT
         D41y6F0M9HWQaLy4AwWoll8Nd+LP6aXwaI7LdKJ9eAvPQgNqSlquwPstSPUUBCeTIRuk
         iBgW9lFfyska9GNEIiVgdXWkd0oF0Zy2QS7WXjuGHZf3aV51GrzZ6+3quPGxmtXB+S7Q
         w4Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2NVGtg0PPurJG/wF3qe3wYjHHvSsxHfANiP31mdqeJo=;
        b=lSO/66F3u2TQQ+at6FzcWaaoMDxsnOpYJ+4hOPmPsoSQB3hSgtM97tGpBDxrBQn8Xb
         e1ThpNJSjDqZ1YP1k2JIjHFkEuRh13S1+0GQWTXo1ZEzjuAUZYrg+7IwyN+jt+E2fn4K
         miSyxujaBZB1eCcWJ22KcV3jwCboE2cvU1cLCa9V8buOyixzygHRrKce4ipwMNsIzLQ6
         eH43oIeYFm1WxRuV74epCQOqbd1+54+AIB784Kn8SpD05hvukutZ6MMgkFZUmQxgLvwX
         xrREeqcDkN/IgG+mEfu7etOZaz/sFSE6Z2yFhIyIqmzNnMB8xLrRtByGzf3witDFzkbr
         3Opg==
X-Gm-Message-State: AGi0PuZa2Eoo78jE4dqH6hR5WSayp4mv94fTXozCickGNjlyTvQH+Yf1
	sSF4oQmUr5jZ4DSQWuRZvYQ=
X-Google-Smtp-Source: APiQypKj4uTiKN42Kl3l4GBFlC8XYhXVfUeptJYO8LPpYT9z/2xrOgmxxeVTQF8J3dT5FhN7RYCqOQ==
X-Received: by 2002:a05:6830:1bd4:: with SMTP id v20mr8783368ota.353.1587053592353;
        Thu, 16 Apr 2020 09:13:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c648:: with SMTP id w69ls2386887oif.7.gmail; Thu, 16 Apr
 2020 09:13:12 -0700 (PDT)
X-Received: by 2002:aca:fc0e:: with SMTP id a14mr3613792oii.19.1587053591984;
        Thu, 16 Apr 2020 09:13:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587053591; cv=none;
        d=google.com; s=arc-20160816;
        b=ld+wBHy/M723yDXamn9J1PzU5gPG80KjjxXJrDIKsLqxiKFWb/64cTAFPpSNw7Lhui
         DKo93FUrmcoAeSQAQdP4YoiQJGrxq0tXXIjt7EWfVclqTuYQuaMCS4okGIqcbOJvOqXP
         Ve9whIQyTYfEwoPmMYLJTCfd6uOLFKStfUj/g+zi72u7LnbUIn4CoHffuY1TLwEs/2j3
         ZhfRQBvYlBNgGt2SylebdlRShByJ7fEMUD41uhwNyvx3WNmlc2vIRLD5ySsmU9czXb5m
         Df1qQsdYtWrnMJsJF5MNQk7/JHP+la2Q3x4FQhPuub4ZKTl+R/fT0stgD+lBcLdLtWJS
         O8KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=SV1DVkULqNa+FuGbiBRMBHT4OnEsBDpzGAv6cWsD5ng=;
        b=hddOfduHopS+T0i0fE+eVmmTd05NKGMmW2jhgTeAl2Yt5SXxc7qF3VLW804wmWyLpK
         uWHGmVibhodH+NAwE1PO7Q6YuQmIBZrFTqDB274/bq5Un1YNajGI7m+y6nr8xMtExXsN
         JJ+G3WQBfhn1z4IbVc49mHoVLmn210P1863zFf0tNPql9cy0xdmdzN5lgumgHA8AbD0h
         bM+5F/qkULrVKyK3/z+nmAXCTkrmIl3oT5hoJx6g9YGV0XC9oSMDDkEE8Dp4jxIhn9xn
         m7Hqi5ZTPalillT9GGrtGDtFd4DV2SAI/q6kV/NERDRe93WCnxJ1lM+p6GMymj3NtuuW
         lQlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sLxFQroY;
       spf=pass (google.com: domain of 3f4syxgwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3F4SYXgwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id x23si1388896oif.2.2020.04.16.09.13.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 09:13:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3f4syxgwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id c13so3528817pga.12
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 09:13:11 -0700 (PDT)
X-Received: by 2002:a63:ca41:: with SMTP id o1mr33386721pgi.419.1587053591236;
 Thu, 16 Apr 2020 09:13:11 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:42 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 09/12] arm64: disable SCS for hypervisor code
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
 header.i=@google.com header.s=20161025 header.b=sLxFQroY;       spf=pass
 (google.com: domain of 3f4syxgwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3F4SYXgwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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

Disable SCS for code that runs at a different exception level by
adding __noscs to __hyp_text.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_hyp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index fe57f60f06a8..875b106c5d98 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -13,7 +13,7 @@
 #include <asm/kvm_mmu.h>
 #include <asm/sysreg.h>
 
-#define __hyp_text __section(.hyp.text) notrace
+#define __hyp_text __section(.hyp.text) notrace __noscs
 
 #define read_sysreg_elx(r,nvh,vh)					\
 	({								\
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416161245.148813-10-samitolvanen%40google.com.
