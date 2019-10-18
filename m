Return-Path: <clang-built-linux+bncBC2ORX645YPRBNWIU7WQKGQETIXBYMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C51DCA79
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:11:35 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id k53sf6399683qtk.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:11:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415094; cv=pass;
        d=google.com; s=arc-20160816;
        b=a2mQCpLGZkxERLW5ES7eiKFuluAvkNfgYBJAbLL90vFj2IxKPJypp5IU/DHPSOurf7
         rtnven1XtEsaodUNauOdkqq1aCDszsd09JDKkxMXrRhRgyUrEjaCd+/oPH24RC51J9rf
         2U5qJ1zr63tH3YhjIaf/lojMlL3CtyqUk442jWFdkSg9Of7RXTD9KFP0NpiQJjUZ9K7i
         qijyLyBbcP/pPopyYWXYfzttgplUwtb/kiNzvsxcmvl+7AnbtFCH2Fnyv5u41LfS9udI
         KMvXUXxm9wBjITbuOhDP9vxJPtZz1I9sHKP/Ag5ZPKKSOi1fBPBYTYKBUzFPDIln1xbc
         kuKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=e+E7OMbpOiZC2OuQLdNNl0PCvZO8FOwr0M0SuuQg3mA=;
        b=B5GmcDw6NErl81EYiye+bQRe0CbK8pPzQHAnBAi0MUiUkHaqLPE97G/tGz8hUJCKYG
         IM/+LkZrdLxEw/FfXBy+XjseyhooC3YSZ96jKl1p5584kqyi1LwCiGUxRG2w47dZv2x2
         4CCzyWgaw87Fy1qQEesi2fBeOLaZEiAzr1FyNyoy5st2+rJA0FPqwzzVWxdPQzdc0APr
         Ml8/MCMps80kNIo68fo8jsNky2Oa5koSfkIjfRc228iXkpJm7cHQ3LNO6pkN57V/p0MS
         18LJ4HuZZXT3H8AX8S0BKNGEMgmXO2/4/WRU/F6Yv9p6P7GUqrAkOkEKeDaAuJD0bHJi
         lR+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B7xenBDH;
       spf=pass (google.com: domain of 3nospxqwkajcj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3NOSpXQwKAJcJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e+E7OMbpOiZC2OuQLdNNl0PCvZO8FOwr0M0SuuQg3mA=;
        b=UUhYsfObTeHnY+uk2xmos4Y+FFKGPxskHyn7ycmlGALyAJYJpzBta01MmX9mVML2pT
         xok3sB9JJSBNKVjLFsk9pZRtAsYpJh5/6BU/UHG3c/KJPh5irNfJzrzbMSSJt9Qx0XHH
         Efc14CtKmuAWWV/rg194lA5xEeWO0UgU48u3fbxtA0I7a86U8feNswtG0qqrLId44AQX
         kbYLJrJsC/whyqly6BZkekMypCwvtCh/VI234tUkvxKUgQqMZGLevlXDseVc4Y2qlqAl
         noIq5Tw7f/TTbcDqFdmKKVmTW8DHihQyqF1m5c5f815nIsqRYvEX7nrdrFFF2PBizm43
         fsMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e+E7OMbpOiZC2OuQLdNNl0PCvZO8FOwr0M0SuuQg3mA=;
        b=fXeq13eYB8WA1pz/6wkdxmHuFFzIqGdTUayn5a8xp04lf5AnvXrIBayOr2VQDJ+col
         H5ABU/rfE3wsr6XnLNOhD7vLOLufx85IFRU2ev9cw6dtg+wHTXKcwHiZvUUcyugIDgZc
         m5AlGFO/A98i2Ln/GLdCLQNP2hztQNtsPh3UZL4quq2PpqGib7rSb1v17yDuU+Kvlvkz
         +X8mz545dqXiDhWgaIJn+n6hXqNnWQF9QDFMHnPrDKBWv9bBt6Cxw5nw+jyD+3dTXhJL
         Yakbqk5PsL2/M4IKp62IV6AkVcalRgJ3VndCTN5XAHv5aoUjdyksNxt3MmmvgukxrT3z
         za2w==
X-Gm-Message-State: APjAAAXxzcGHTqZicqC06TiZyXwzRnv9wnympbe6fApYyH3C385JqzFp
	gvvc2ryPFZG26Am+268c77Y=
X-Google-Smtp-Source: APXvYqw1921nOxtCOCHNfzj85uoxrIdka/O71vMDoakSoISXWMyh0FZjCG0CnBmZf3eJ1qVE+N2bEw==
X-Received: by 2002:a0c:9311:: with SMTP id d17mr10841536qvd.11.1571415094420;
        Fri, 18 Oct 2019 09:11:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:15f9:: with SMTP id p25ls2169310qkm.4.gmail; Fri,
 18 Oct 2019 09:11:34 -0700 (PDT)
X-Received: by 2002:a37:bc86:: with SMTP id m128mr9662838qkf.110.1571415094100;
        Fri, 18 Oct 2019 09:11:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415094; cv=none;
        d=google.com; s=arc-20160816;
        b=YlJwQvLBSpLP+7ETxLk4lupGe6wNF9DJKGlPjB0+1jb5klJ4LzwYa+p/rOSiNSsyy8
         29Qv/96mhwq2tyzj4s0pVBAMw2aZMwFdLVEb7Zl//WDfTB1Jq3r+Vs+WEnQc61GxW0O0
         +mG5oDPWcOt8Rkn3HkaSTaM6kwzkZwNkJitcL4DjRuX3zxQu/Ly5xbySAVo7O6dIHgrq
         vRWuaUOfkVU+bacbgmdU67hoYQce8GXaJaKlRFnU6CFv9GERLy4pH1BRACa8cp+epLd6
         /E53cGF4w2jZYK79Pp87kfJHiz0LCoGlRXuTml1a0djWH88Cnh23jc4bnypkmNGjEPwg
         xd5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=5u5MugUg2eXeQck5Unb3LYQo29vaVROeFk+dSkSebHA=;
        b=g2QzR/Br17KNqf8Vh3T0jj80y2lk+0uS5RvxLUBhOGLyy6r8OX8NngvWzXYngEZJhE
         dISw34WJdagW63vlPJ/tfqHUd4TcSq/CflbbNJSThmsTtxbAuJRksVCNHHt5FQJ0jf6u
         sgRfx4EclQF0u0ng1arTXdW9DPyuuiczRaNNJOK4UWByRTjD6iqI/uHCDHtmuBFRvr1e
         /0XnhPgXGckP61IlkhNFMZjf1PZRfv8pCQTNo6S7k6naMg24zp7G1Elthih+vl0S1BRc
         ULpp1/28O0fPY6JJFLIH85m6rb1UJFnsVpVJfiSOQXe1yGq4gT1wSEzqAqOPS8FKqoSK
         FXPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B7xenBDH;
       spf=pass (google.com: domain of 3nospxqwkajcj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3NOSpXQwKAJcJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id c78si289544qkb.7.2019.10.18.09.11.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:11:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nospxqwkajcj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id h11so4026211plt.11
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:11:34 -0700 (PDT)
X-Received: by 2002:a63:541e:: with SMTP id i30mr10990238pgb.130.1571415092950;
 Fri, 18 Oct 2019 09:11:32 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:32 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-18-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 17/18] arm64: disable SCS for hypervisor code
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B7xenBDH;       spf=pass
 (google.com: domain of 3nospxqwkajcj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3NOSpXQwKAJcJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
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

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kvm/hyp/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index ea710f674cb6..96073d81cb3b 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -4,7 +4,8 @@
 #
 
 ccflags-y += -fno-stack-protector -DDISABLE_BRANCH_PROFILING \
-		$(DISABLE_STACKLEAK_PLUGIN)
+		$(DISABLE_STACKLEAK_PLUGIN) \
+		$(DISABLE_SCS)
 
 KVM=../../../../virt/kvm
 
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-18-samitolvanen%40google.com.
