Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDFJW35AKGQED6HVU6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E512584C6
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:23:41 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id e14sf7325109qtm.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:23:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919820; cv=pass;
        d=google.com; s=arc-20160816;
        b=YdW2FgevTIimFDIHGkBvdsTGpfW+LtK+dS5GQZZ2dtt8q0JmrVYSEXToPl6GG4O9e/
         rKbwgvjwUjHFroS/JTnVPAp+JNTLlk4nAtpRfV5WEoYyk7ZcE5tjNnbSjtlK8ZvCagG5
         pY9hkAs1ynqRlkfdODamm1a84GvWzL3AZEot2CvhdAuRzug/wZXynwl53c7MUWUi2U9v
         RYy50VNoRE6y7z7t8De938KCp5JTkXto5QuCXC4C2tfggwwmWXTtWHfPu8mb/TR1PrGQ
         W+VxidcACvXqBAodppm/+WVLp1DbZF1oE8ylqW7SOmZfwsEBT9zCuamOVrUk8KfEnxqV
         e6nQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=3efc7ta403CEqPbTdjRwW4EPgL/BMH/aOO9hTdYPThs=;
        b=FPt96zzfxAVg2HkG4q6URKcS2Fij/5uYaQ5HmtyGb0NSx8YvyQ8WEPFsDrkfePxC7h
         dw5Zy6FZyTZzRmkpLJRXV9jDkMh7zfYEPnLpgPzjC+GE/9O0DhJorUyKsE6hLu8nj9pG
         jZgjSAmeCyvUtjIzQl5ZuIdfhTeHihwvZIskOAdcD2b4m7z0NF04hO66VPJBojob4+Qh
         G3jL0Cx1a9QQjDBMvPcS+qbtyCOinW3ubC8oYqBzIa6SFkHHHnjFlasoWdh3xbxt33D2
         wGC830QhcAt22nWg+U/THaOaVGNPOqhoQ01nH14Ihn3wE85e/aOvwZXCGHXH5y+g7Sm2
         ImpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fVms6Qsc;
       spf=pass (google.com: domain of 3i5rnxwwkaoozpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3i5RNXwwKAOoZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3efc7ta403CEqPbTdjRwW4EPgL/BMH/aOO9hTdYPThs=;
        b=lLPTRCN386T6JdR9i8So0ICY6U/TX+c/zJ+dQXqNiHaKGqvrH0GHd4n4rkoWLKS+Af
         m4RRmTfA/hxcY3L65j6Bu5HkHu8UnQR/sJJtA65ilFOmbwy3IbTWlEaKBoL9O0bNP8uu
         1u/aa4n9B/wBmLeIgiJOmkHDFbvErVtdkYXrm0u5sZY3h0QUV3t7SkB5bp5zjJ0CR8xN
         GXqKtzJcX/YxQnY481RiZfSJzZexptH4YQ38BXfJfFzNYMKZXV+FE4MTSKt2FxT7pSH9
         8zJxId8zS+cBuDocd7F2TAil4aImVKg05cqglMz0YfHWdBnGJN15XLMdDCumCfqk9QgO
         TRiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3efc7ta403CEqPbTdjRwW4EPgL/BMH/aOO9hTdYPThs=;
        b=LMIc5yHlhmo9z5tw1uZqOHWm2Lz8PZ+qY/2Hck+jhHWrI4sAmqFbB5ceJEnfBKhR47
         8UzcTUt7oVMTiOLgOo/xlkrtQr+S6da5VAfH1s8Hr7q1T1U/gNL/qo5GyYuUobnh/HLq
         MZwrONWORWqSZcKc97p08Ry6SwD7hRoGAav35aG4WFhJ04ONElTu//GjM7Z8VPonSvQe
         GEq3kgpHXb5Y/OrR7hGkjI+LTYpsVZO6xKzbi5vM9IKVEdWhmqcEnH7WJSuOEKPATbnz
         oF7Sr6jO0QqVgjyYpcvFjVfOkuOtVfhJbgqfOQUwmyWNIk3SDVOhvLS2D5pmHyR+UVMW
         qo9g==
X-Gm-Message-State: AOAM533GViDM7l8PpqwyBaQ84Ukhrr2ENEIo6VY/HUArx7J7uKHtZuMw
	oeZXMFD96bOeBSafyPMkUeA=
X-Google-Smtp-Source: ABdhPJy3qKaneAQDjj/aSrGPmXhv7DEWjfAvVquieNLcu4/Ff1p6CbbmsujzmsdBrt5i6+NUoYPKiA==
X-Received: by 2002:ac8:e8b:: with SMTP id v11mr4000425qti.277.1598919820156;
        Mon, 31 Aug 2020 17:23:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7511:: with SMTP id u17ls1965512qtq.2.gmail; Mon, 31 Aug
 2020 17:23:39 -0700 (PDT)
X-Received: by 2002:ac8:3068:: with SMTP id g37mr3987999qte.6.1598919819804;
        Mon, 31 Aug 2020 17:23:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919819; cv=none;
        d=google.com; s=arc-20160816;
        b=fFM02Rld8bFQZu5ybKHgZn6mwinO829hXf3ZEteEhdcGdBySnDrnPUr46KczaIhAJI
         wgoOWt3xUdGClgROuc8sX+tmiyFzslwH9rTI8eYbFCv4+UO16eXWftjg55uuMaQGIJ0H
         yKDYDUj1KGNbDkKkr2J7jfc47U75ys7vBGBJGWSlEPsYeM6YdICuMMqXICj+IvQJ7N3S
         GIt9TaBWWio5r+j7TN13co35EHVDY3NV4GXl4ib1cqI82dMI3nU+DMCRs6EZrWmn3R+k
         jvAF8qPODspTVw5DrNuUkJ5cI2uXskCfhBSrp1K2goCu5LGlsg1yrtvTQkO46FTUVif+
         ZL+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=pi3QdKLaSBYHipbQP2OJPwq0eZQkVdLTCOuN85yE044=;
        b=mBT9io2sbJQZ0T10k+JiVNJA+d5rjHUmG6U6EdY6nQasKHZdUop2qyHHszZca9lKJX
         JIWy5QIA0/QIWkwdGOwHoS5pPC54kFh7JHaGtdJpJYwvBp0BqZJkFElaB6w6YMpWr2kG
         ig2FDSG1kfYlmgXzHqpl3rSKUlnwgd2zGuVMmJyKxVutEk6ujHugaXQZ4XAow0mgQfGE
         6z1bIWkz5gVwqQPy30iCYZPTEmNFBxcCKrt0R8ke83bo4sNdZaxtzt5TjP0d0MXq6+zX
         MHOk3TCPxTiRXpJJOU6RKk2n+6XPElyNSyliDdqTQGrhBhoW/7HKkuK4Y65CSfnWk1Uz
         GtdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fVms6Qsc;
       spf=pass (google.com: domain of 3i5rnxwwkaoozpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3i5RNXwwKAOoZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id a189si461196qke.3.2020.08.31.17.23.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:23:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3i5rnxwwkaoozpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id c78so11068843ybf.6
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:23:39 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6902:1025:: with SMTP id
 x5mr6385851ybt.58.1598919819398; Mon, 31 Aug 2020 17:23:39 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:23:23 -0700
In-Reply-To: <20200901002326.1137289-1-ndesaulniers@google.com>
Message-Id: <20200901002326.1137289-5-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901002326.1137289-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v2 4/7] Revert "arm64: vdso: Fix compilation with clang older
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
 header.i=@google.com header.s=20161025 header.b=fVms6Qsc;       spf=pass
 (google.com: domain of 3i5rnxwwkaoozpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3i5RNXwwKAOoZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901002326.1137289-5-ndesaulniers%40google.com.
