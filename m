Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYN4YSDAMGQEO2KGDPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF0E3AF91E
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 01:18:58 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id 44-20020aed30af0000b029024e8ccfcd07sf16969824qtf.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 16:18:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624317537; cv=pass;
        d=google.com; s=arc-20160816;
        b=VIrXemKCX/spg9KPQ2RVBGGctppCCkGONLv7rSjjXQ3wsebj6YWdGAKmb4+dH5sTxD
         vWtRGEDgY9960GC7j+2xf+8QOVxXZfsQv46dObWv3FK3lq7VlZ2PRdh9Y7WfKhZYjfqp
         X7xiNTTreYPuqxRSAHbENnRZnsxlPq0AkP4IE6cyICKXtNUbV5QqnDA7tT/tHFMinGTO
         ilHckq49f0hvEce8WW7XDADvzj6IrvSURSolvkgSt9Eto3dIwN7FoQyElkvjSfxX58R2
         ueMO7/hps5BDnRBToC1awRo78WenK4uleq9QFMNHuA6E+aOrZqZ1I6Ea3kEPFQgWTu/C
         QyBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=S1GCwSUJ1liyHjSKAMCL+r40OWA7td8NPjCFJ0oJnrA=;
        b=qqSH3ZIG2BOTzuFFT0WJvD7t6z5nLwADet9QXReaWZehXWJU8wHF6vjGFU6iPSRh6f
         8FKTFMAMHwSJE4d1ZpehBRpDciETwFPiI43eaAE/7QdHwB89w2X5i2r9WwjIaGQ+FhJ4
         0vbMpxvtI8VH/WdFJtZEydcKCR1Lx3bACJSBYpkbvFqDBT5tANYLS6c3jer5G6HYNVc+
         hsRdWgG+oWrnM8UegEsUociGqAayvSUe8s+hOp3DWWShBO+2MYqLjbLASoRTPi6v+PwF
         1WKni6hYBnzoBKlNmpimwZ01fielFEUTNaPufVj+p3/3qw2tcwJ/vunLYPDeAwEmJqgl
         9tbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Fx/5r3tL";
       spf=pass (google.com: domain of 3yb7ryawkao0csthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3YB7RYAwKAO0cSThPjacXTghVddVaT.Rdb@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S1GCwSUJ1liyHjSKAMCL+r40OWA7td8NPjCFJ0oJnrA=;
        b=T5UOeuFxteocZsSKEjAkBB5owVq9urPChjScVIx8vnrvpmdxkQaeAS52tnnR0qecNW
         pGwtui+SAREi4x7leU5PE4qGFE7WifmU/k1oh9+C0T1plHbUkNATbJ6e8BoMztVF+GUU
         EZKthKfqSmLUCVwQ6dR1PqMyTmfOmQzD6vd6oDiVLTYNajXUKxQowDDxx8EnEW3lfSxI
         3+k7/7acc0K8cLG1yjz/pzP2S/78dW4AMNfVeWOXtcdPfSFD6Sd3jyd/PQh/iIXrDTd9
         /k4l8NEOmp8W71lwO3jO81XCsyV0xK9VJ0CwCrbaWLvZ8dQBA8gEuHFX8pMSC64TY2IU
         aSPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S1GCwSUJ1liyHjSKAMCL+r40OWA7td8NPjCFJ0oJnrA=;
        b=d3SY057EG32wOnDkfybBupBxUadwz0Kt8+x4isTNKE5mVysWuXTsemXmvH8mO8vhqS
         QO6Qq0bm0Kt1msLATnSgGHyFlGO5HamWjZRTUbGw31pNh5OH1YC846hzAvu0WaxrgEHR
         O2DYSonhagkswEU+MUtSZpxJj8bt3AWUW1AefRxMl8EUYpWK53kWajy8rwDXSqWeTa0R
         4GULHj9RugH2sXYrp831XfDu8T9w8uRDUE/7ey8AFTL1lQirlKwJ8yvsH4dFIkXG8HzT
         D1zLRzD7Cgn7P+yJChTP5yTnNCwWbqoXu7SKVu8XzltEmWoqndrAqvIB7o0CWeIi2IN7
         kZgA==
X-Gm-Message-State: AOAM533wNtky3Jh3MmUdhJ0fGcDC2rZsxRo0fOwviK8H0inhGRU3IBnR
	no3XQBc7QeD/H+E28e5bPD0=
X-Google-Smtp-Source: ABdhPJz+BOJwTDDz9UPYxxas/KS1eTL7uKEK/JttSpHFVS2U14tpeHX2uwx6ruHNTbxSkTihGuAVCg==
X-Received: by 2002:a5b:8c4:: with SMTP id w4mr859182ybq.278.1624317537687;
        Mon, 21 Jun 2021 16:18:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bece:: with SMTP id k14ls10028226ybm.7.gmail; Mon, 21
 Jun 2021 16:18:57 -0700 (PDT)
X-Received: by 2002:a25:74d6:: with SMTP id p205mr763462ybc.316.1624317537256;
        Mon, 21 Jun 2021 16:18:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624317537; cv=none;
        d=google.com; s=arc-20160816;
        b=Q4AP21GvrX6hBAy4RweytUdNZvy+HI7UiUtNYThOSfoZO8IW8AS3zv/wyktTpT30Cy
         UgflUlZ3pEd2FNqNJZEkjQIC2uVnE3ynyPzdOcDfb23x/utFQMbKXS8X24EueVbwistl
         zVwye7tx16noO8e11XZINW3LMTax/F/z9wjLx/pyjjo7oSgRCMJObwWrCVI4omYd71jA
         fuHfzXO/AdwR/HnP/9/DQKI8XTmssxzmdWszlj1IJrVUqIMqbsRM3KlYe2ZGK8dAqnmm
         YzaqWY04FIfs/53HQDVKp4Rjb86ego3TO2aT7tJRCrKrwbKeJ0L1QpKxnoKOKS05Yx/w
         /hrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=rjB5gl/OyQ1mYdw8idF1qN2FUIQyyWYhNBNVDiw+uvU=;
        b=o1FPwk8lHF2v/oeRfPEtxOkrnrtJa1oryXOf5VHIVvCKwhhSc7PR7frtGGGGED2FID
         BGpwbmVcHYYmTrImcknfxI8TxAMUvKE9WjuEQF0E053RkodPk4gn/k1X16FycASzgTfQ
         iFY7msSJ8UolzdPEMluDJkqKouiakiCmXgcIfgPyVA5p9f9L6458qaQvkqMU1UKZk5Ru
         mAoltANhXyBwV2f0idXnNH3EDJ9ZbRqRQsRR3st26R/51jqz7fyoHT/uqud3da3B3rHX
         jLt3ecIPkbaX5Eokd3sz+bXnqfMNEW4l3YpVj4NIRu2pl4XNkcav0ygIfujMB81PK/KO
         G7IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Fx/5r3tL";
       spf=pass (google.com: domain of 3yb7ryawkao0csthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3YB7RYAwKAO0cSThPjacXTghVddVaT.Rdb@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id e184si51369ybf.0.2021.06.21.16.18.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 16:18:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yb7ryawkao0csthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id c29-20020ac86e9d0000b0290247b267c8e4so14087221qtv.22
        for <clang-built-linux@googlegroups.com>; Mon, 21 Jun 2021 16:18:57 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:dfd:ebf9:4ec7:1783])
 (user=ndesaulniers job=sendgmr) by 2002:a25:aea4:: with SMTP id
 b36mr794382ybj.428.1624317536807; Mon, 21 Jun 2021 16:18:56 -0700 (PDT)
Date: Mon, 21 Jun 2021 16:18:21 -0700
In-Reply-To: <20210621231822.2848305-1-ndesaulniers@google.com>
Message-Id: <20210621231822.2848305-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210621231822.2848305-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
Subject: [PATCH v2 2/3] compiler_attributes.h: cleanups for GCC 4.9+
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Bill Wendling <wcw@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Peter Oberparleiter <oberpar@linux.ibm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	x86@kernel.org, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Marco Elver <elver@google.com>, Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>, 
	linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com, 
	linux-toolchains@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>, 
	Vasily Gorbik <gor@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miguel Ojeda <ojeda@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Fx/5r3tL";       spf=pass
 (google.com: domain of 3yb7ryawkao0csthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3YB7RYAwKAO0cSThPjacXTghVddVaT.Rdb@flex--ndesaulniers.bounces.google.com;
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

Since
commit 6ec4476ac825 ("Raise gcc version requirement to 4.9")
we no longer support building the kernel with GCC 4.8; drop the
preprocess checks for __GNUC_MINOR__ version. It's implied that if
__GNUC_MAJOR__ is 4, then the only supported version of __GNUC_MINOR__
left is 9.

Cc: Miguel Ojeda <ojeda@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/compiler_attributes.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index 225511b17223..84b1c970acb3 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -27,7 +27,7 @@
  */
 #ifndef __has_attribute
 # define __has_attribute(x) __GCC4_has_attribute_##x
-# define __GCC4_has_attribute___assume_aligned__      (__GNUC_MINOR__ >= 9)
+# define __GCC4_has_attribute___assume_aligned__      1
 # define __GCC4_has_attribute___copy__                0
 # define __GCC4_has_attribute___designated_init__     0
 # define __GCC4_has_attribute___externally_visible__  1
@@ -35,8 +35,8 @@
 # define __GCC4_has_attribute___noclone__             1
 # define __GCC4_has_attribute___no_profile_instrument_function__ 0
 # define __GCC4_has_attribute___nonstring__           0
-# define __GCC4_has_attribute___no_sanitize_address__ (__GNUC_MINOR__ >= 8)
-# define __GCC4_has_attribute___no_sanitize_undefined__ (__GNUC_MINOR__ >= 9)
+# define __GCC4_has_attribute___no_sanitize_address__ 1
+# define __GCC4_has_attribute___no_sanitize_undefined__ 1
 # define __GCC4_has_attribute___fallthrough__         0
 #endif
 
-- 
2.32.0.288.g62a8d224e6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210621231822.2848305-3-ndesaulniers%40google.com.
