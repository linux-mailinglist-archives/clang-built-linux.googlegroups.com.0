Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBPUE5D3AKGQEWH22F2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0231EF312
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 10:28:48 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id ge4sf4115367pjb.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 01:28:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591345727; cv=pass;
        d=google.com; s=arc-20160816;
        b=F0jRBZ5ajYVAqXGDrau815hYjVtSNYS0rnF24KZTnNcLGfJB6xrCWY5LlJa8bNKbjz
         3u0zkhJq8R9IFYxAOQLooZ92mlheSmccIVzuW6DhZw7msCK5zkhRXPHRl0RT5msBClxo
         sAQqFphW7jXGoE/Lggt2YgZFmmCsZtnfp2A/VfscRorWZ6MshnvQVfFRnaIiqMvsZwef
         63olHwhqS4SW4lWjTydGRrE728ZPwyevN+l1ZniYFq5+yffEKT/ccmxC9B4uYQ64IC/7
         xgnvM3EysDOa9Q+ZMZjq9Hbarm6GDnyo4Xr4TuEHV6+QcG66O6vX3uaqi6y0Ntm3Ax21
         DRZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=F1wXJioHhBPlXUvoukfFv7BTMJwMFnQkjYafLuaOh6w=;
        b=G/jeUQNR0nDOjGOgFRg9pPHoV81LTQm0jUk7NxqCu3YStMaR0GGOwZmxCgg8xPbhER
         kaSK0MY6OK4ncKmM5b0F+6ab2xp12gbJ2XhfDS446sqfKNMnj+ZXF4BNs4VRvIgeq5QE
         WfO7Us7Ci0Ym0KhAEapxPpnqyQ8TnAoGiocfZE9tjqAtItRbhBM0u+eCCee7YTAtauIM
         PiEwO91iraCwwDh536KcoGjGaQBECwvKiWRBwjv5VHoynTu6GS5IILtd29vVQ5Cow6ML
         gZrybVckqlK6MoJ2tPSA1nG3bQSXa9HURhLIQgluUw8hsohx/z6THHP4TJyzkM5BSn+/
         wpcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j5MQecjE;
       spf=pass (google.com: domain of 3pqlaxgukeaykrbkxmuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PQLaXgUKEaYKRbKXMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F1wXJioHhBPlXUvoukfFv7BTMJwMFnQkjYafLuaOh6w=;
        b=IUfJHqhDv5cPyeLQL/66vVsSy9QPzkTCqNeo9XyeJ8xCWDc400bao9/iN8loNTQXGh
         gYM4wM2kQEo1kmoyB4F+AJRB1UjmDkNK101EyLjHRPakOXAgCnMIE+zgfXhLXcKnr9Pw
         AFyD6OiZqevdvi/Zf3fehiB6Cx2lnAXbT08ASMdzdch2PoJsAKg2Xhy0ilKxQYK13HFK
         cCJBCUrSPidbr8xuRpWaJV+tBU+F0dkvGSvEb3SvFfgqUhHLOf/j3uBz5bQw585MgwXr
         HxMrWRueoCLwDlQxfQEMEoYTjFP0JzJL+gha01kMuyX2zsKy/5FbDGCjXkxKlEsAfDge
         VXpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F1wXJioHhBPlXUvoukfFv7BTMJwMFnQkjYafLuaOh6w=;
        b=ZTecxzHDKJc56+eQcwG2C6kKMi6z6D/sAix85yXU2whvYXS+nESpUwy1pXPmsHEMbx
         w6p+jPiYsuri3XcIRO3HLCwsuUGwtUnkG9O7+O1/ABlPelYC9VV8WoA6sZV02X5PwhdH
         FBe+iXJObppcK0lXVpnNI4LFYyl6ga4OauThnRZ3lC1Gd6E48jpHykxrlTbNZFRfdyEX
         CUudXVd6cFV9MMMwa8ofTzPUHXin3BApZI+CGbVA0HusfI8nGdty3rK1qVYwVra5gFDE
         s4VLhs68cHXxEyjWGmskZUWeh29CENp2fvQYPZU9MZ14qoCVRAXcR6mPyAnmhBTRL1ix
         CO6Q==
X-Gm-Message-State: AOAM530mnNHmQo20qq5EyExKHPj1G0GuInO9RqQxT0NThiKEAwgvvv8X
	8flsKFsB6lPLCaromH4gZmo=
X-Google-Smtp-Source: ABdhPJwHXYWgo1F0WXSTE5ikZQxgJSkuZE2itF8Yntr00oFGlci/txf1JKtSDM5Ke3Os5Jciq4WNmQ==
X-Received: by 2002:a17:90a:2461:: with SMTP id h88mr1774521pje.180.1591345726750;
        Fri, 05 Jun 2020 01:28:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:70c3:: with SMTP id l3ls3261638plt.0.gmail; Fri, 05
 Jun 2020 01:28:46 -0700 (PDT)
X-Received: by 2002:a17:902:c402:: with SMTP id k2mr8640913plk.184.1591345726135;
        Fri, 05 Jun 2020 01:28:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591345726; cv=none;
        d=google.com; s=arc-20160816;
        b=ynVct4cOYOdYtChZoW0Ve/L1Brlt5r/WZB/OAgCK4oVK83rgcB4T0Jtw5OyusoE925
         DY2FHhuROsbqfiUFi8ad/F+y8u2u9CTzAK+l5K8YgvRGN5FOww1fd1wTrSZb+5rd/M83
         F9Tw1udaaJZR0TDYX4g3DmdLpGbcPGui/XlFuFpJoZOMSWqFVku9bDwYpufctjZaFEDG
         3V1WYlzG7ywn8EWFWiWu576gjthx5DzjrEAF1U9uIR/ASLaDsLg4qtxPhZ0KDJpjfE+h
         syGDLm4q4dnMJSKr9uJIOhnHBuFJQhCmFYVGtumzub4ZOwCXniHxrDy/5izPOyl2UUPt
         MK/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=3PKodQpvSJ7s5tO6EtbZDnjyyWXngJpHghjobV/Lh34=;
        b=undmbY5mcu2+jsAY2SB1X3uYFljQp4Jxrizz3ZA3v9YuPoEYmftsumtczC6mTc456f
         2fs7RuN+WEFp3zBxQFqAbIxIcnSu20gtVw3h5nIn7PkoT0NjV4m2x3AH23B2Xj3psTdc
         KKIfErufsrJTpjv6K94vZK+3FYf6BHSTugOiOg8fIlZ+J2fzYW0fFt8n5O+CzpOvwN2t
         ilWFNq0niW19NgfAIoY8R0j5jld5aeUMpQCM+3xFfn+GBvRpFz+yJlqhTVdoWhrkbklF
         8DyOl+ovFrOVHnC/YHbcWsc0hAWTL1RqSZkv/w2jAKhpbpmbN6crjZjiYHKGquBGEJpX
         sPgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j5MQecjE;
       spf=pass (google.com: domain of 3pqlaxgukeaykrbkxmuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PQLaXgUKEaYKRbKXMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id v185si39444pfv.2.2020.06.05.01.28.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 01:28:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pqlaxgukeaykrbkxmuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id e192so11046223ybf.17
        for <clang-built-linux@googlegroups.com>; Fri, 05 Jun 2020 01:28:46 -0700 (PDT)
X-Received: by 2002:a25:9345:: with SMTP id g5mr13780734ybo.485.1591345725292;
 Fri, 05 Jun 2020 01:28:45 -0700 (PDT)
Date: Fri,  5 Jun 2020 10:28:39 +0200
In-Reply-To: <20200605082839.226418-1-elver@google.com>
Message-Id: <20200605082839.226418-2-elver@google.com>
Mime-Version: 1.0
References: <20200605082839.226418-1-elver@google.com>
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
Subject: [PATCH -tip v3 2/2] kcov: Unconditionally add -fno-stack-protector to
 compiler options
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: peterz@infradead.org, bp@alien8.de, tglx@linutronix.de, mingo@kernel.org, 
	clang-built-linux@googlegroups.com, paulmck@kernel.org, dvyukov@google.com, 
	glider@google.com, andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, x86@kernel.org, akpm@linux-foundation.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=j5MQecjE;       spf=pass
 (google.com: domain of 3pqlaxgukeaykrbkxmuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PQLaXgUKEaYKRbKXMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

Unconditionally add -fno-stack-protector to KCOV's compiler options, as
all supported compilers support the option. This saves a compiler
invocation to determine if the option is supported.

Because Clang does not support -fno-conserve-stack, and
-fno-stack-protector was wrapped in the same cc-option, we were missing
-fno-stack-protector with Clang. Unconditionally adding this option
fixes this for Clang.

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Marco Elver <elver@google.com>
---
v3:
* Do not wrap -fno-stack-protector in cc-option, since all KCOV-supported
  compilers support the option as pointed out by Nick.
---
 kernel/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/Makefile b/kernel/Makefile
index ce8716a04d0e..71971eb39ee7 100644
--- a/kernel/Makefile
+++ b/kernel/Makefile
@@ -35,7 +35,7 @@ KCOV_INSTRUMENT_stacktrace.o := n
 KCOV_INSTRUMENT_kcov.o := n
 KASAN_SANITIZE_kcov.o := n
 KCSAN_SANITIZE_kcov.o := n
-CFLAGS_kcov.o := $(call cc-option, -fno-conserve-stack -fno-stack-protector)
+CFLAGS_kcov.o := $(call cc-option, -fno-conserve-stack) -fno-stack-protector
 
 # cond_syscall is currently not LTO compatible
 CFLAGS_sys_ni.o = $(DISABLE_LTO)
-- 
2.27.0.278.ge193c7cf3a9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200605082839.226418-2-elver%40google.com.
