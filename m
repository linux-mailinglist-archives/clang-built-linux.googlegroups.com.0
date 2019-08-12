Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBF7Y7VAKGQEK3XEUPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id DD71E8A9D3
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:52:05 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id 66sf23006529vsp.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:52:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646725; cv=pass;
        d=google.com; s=arc-20160816;
        b=flkQ8qV9PM+xge/Mf3ofld2KqM9+blM/bfeiOrnXZjgg0TTJHqX8bVPXuEOTin4+69
         pBpQwFI0VrFw8Dx/xFb63p/XrbL2GBCDYUQWIl1ls0PiPlbDZkW9pBmlfRZzSg3oti1n
         mKuhgp1X1QGX7QnECkJRmZjo53SLgzVVEuY62W9palbWGcBe9SThq1lwBnJvh2uyqJQA
         DdyM3uh4u2gBRCsJz4ldB405u2unJBaeuauws6IRfWWDSAL0gAGqCvr/3D9Aw/Idd3Ik
         9haYyAfTC5DitC0oXXZdiQTFBVe4RybK3UtShFusYwdY5Qqiru9HfGLzYm3KX0hxmLbG
         zlwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=bLQ75P2vkCJfexedFOMsZt9n5jLXim83GhZ7Ospt1g0=;
        b=hnsD5xGvpEEmhpyqXAm2D0JesP6H7GIh1oELMQLP6GPdHcn5zKQJQQkcoqquP/Sscq
         LDDl8bR0q32mI5xzYjymFkMyrrLxWIbB1B2hum9IydegK8lD+JXBFhNLJdFVO0HCbA8A
         3QdwWy/E347ERTXWizFYP8gJB0u6AbM2lBms2JMn3komwtoXy/RZSSpdjgO7xRV30BzF
         4hohQV1u+d+x4aSeMRB7zGVpWlTRdkkwHGcbXqE7KPSvyMjIOKA6sBLjpdOj/8a2d53a
         Uah2EXPtatrndXi31Uk/hSEK/6XJ2S/FKQurA+SrkOSTBZvdNW24YjVrbFDAZmOY3vWB
         55OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GOYts8y6;
       spf=pass (google.com: domain of 3hn9rxqwkahsmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3hN9RXQwKAHsmcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bLQ75P2vkCJfexedFOMsZt9n5jLXim83GhZ7Ospt1g0=;
        b=Q8MAJl0jwwjbtz+6N5A1YqmO5OwFbvujiOZrzufN/WAp6j/NBksotvSNw4FN/VziXE
         b+eeTaMsqyZQ+sVYag76YKOXupp7OtXtx22FH/ajRd4gJl/CooZjRofnepbUqE7yWjSu
         Jf2YdnfHXaUe+6KjD4vQ42K+X5yxU+JVjf9fSzi5D4hIzZ/gYiMHOKAf74uWSqlGrtPm
         0C5cOtB0aXpA6LJFhabFEJYuyxeEkV0MBZUuib9if4KGhBJwm78WcsNxIzKfzM6IJQwA
         GqxRNIsjTm82MGu0DX0/7GdzR/bSje9rx0ORNtymcm+neWHAkRIkIFCBcCsmdMO8P8T5
         fX4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bLQ75P2vkCJfexedFOMsZt9n5jLXim83GhZ7Ospt1g0=;
        b=BpRywol+b8Z2CBwDLsMsdq+pj2CgoI7VobkNEyvVNlBsrA+AAUe33n/p0Pmlc7Okda
         lvr82qvemfK7/Y9Pm6PkPxCSwy4AuU98I0zi7BoYvV/Jbj62PSQO+ND1J+xX6Ap0j3RU
         WIjFKJ2cZIsa8voyx92qmCdWUvfez83TappYvIFRuBNd/LdIafPudZ98hdylpSL3o3sh
         Dddx6i1JY5xBuwKeuisTu9RlR1YTHO5MoeEc7i5T1oUn1E8P2XMTjaC/j/T/ts3Mq4KC
         zDLbvP0UStsZtRfZifOVA/3kiCNqKSjfLj9syw/NB9X4IQl+Y+RreM58kImt9dadvxqr
         LfRg==
X-Gm-Message-State: APjAAAV/bpOeUsAfI0AwAw9NmX+f7LHCft61b7nI5tIT7GibwbHiHqyo
	FNpz38Ov8R7Zf0+iuvpPqCA=
X-Google-Smtp-Source: APXvYqyc1bxsmMARyR42pMJQsyT4O3kP0moF3ZIfv/arErEcNNUU5T7lQvoL/ZVuHF4cFsURu3V4LQ==
X-Received: by 2002:ab0:59cb:: with SMTP id k11mr3211432uad.36.1565646724982;
        Mon, 12 Aug 2019 14:52:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7a41:: with SMTP id v62ls13244373vsc.6.gmail; Mon, 12
 Aug 2019 14:52:04 -0700 (PDT)
X-Received: by 2002:a67:ec8f:: with SMTP id h15mr10888018vsp.28.1565646724689;
        Mon, 12 Aug 2019 14:52:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646724; cv=none;
        d=google.com; s=arc-20160816;
        b=W7vuEfn5gjYIi+kWVdl1Wfhxq1PuUQgBYLg8nxp6SUKroMwomgKtic2CTgBwPOho3/
         A99PB7HZWWtV00nHe8o752aVQkjxxGu4D3Dnffn38S38zWiuXag0lmUtIne4z0qNoCH5
         z35eTJK+EBksCCC9LK4SKD/A9nBscH9CGUOd+ExI42TElEwtMU3V9n9cv649FlUeXEe9
         1P0riPQWlXh0SZPhmetijmGoygh7mN8YP4c9cAGo+xGwW/0RqtFoEE55UT3aPjWpi0yi
         Q6KgMn0FQaStGnrU/ZKWHpWOvxcNjwLakRgKluxTW+9wYfG8OTH0ddzH6S+2XpjDSz2g
         d3Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=4H9PWcGFWTnQRRpR6qzftNQ0lP7jmcpJc1z5bvKXC0c=;
        b=o/exLUBADq4uYOsKPyMMnmbwJzmvkuXqI3uEMJhLbsC9bM608Imq7919+fzU94bQY7
         NVSeLcI9kIa4ZBsApk0EAPHEq31yJ18raOWsCK06FyAXamAFLPPJA2xzXR255j8R7HZN
         CGsVJLHSPoOcn/Z3Ws0+J3+FB+Tv89xwAiw1joMY0EO38BncFb3JXRsHpzIXgCJgo3s+
         p7WpRENcnhDQUXJCQoTHtSJMBJQtZQs3JjHOdLflirzepRpZGVWJd4fKRRkF7m/Yn4SU
         dTNA5rqcKY+vHDAnawD5E3zqdPA9a1eie7tN+aeQZRkagrI9dh40Ck5bWJxXqbTo0qOG
         3yfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GOYts8y6;
       spf=pass (google.com: domain of 3hn9rxqwkahsmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3hN9RXQwKAHsmcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id c10si475381uao.0.2019.08.12.14.52.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:52:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hn9rxqwkahsmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id n190so94606244qkd.5
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:52:04 -0700 (PDT)
X-Received: by 2002:ac8:45d2:: with SMTP id e18mr6288417qto.241.1565646724122;
 Mon, 12 Aug 2019 14:52:04 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:40 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-7-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 07/16] arm: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Russell King <linux@armlinux.org.uk>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Allison Randal <allison@lohutok.net>, Kate Stewart <kstewart@linuxfoundation.org>, 
	Enrico Weigelt <info@metux.net>, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GOYts8y6;       spf=pass
 (google.com: domain of 3hn9rxqwkahsmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3hN9RXQwKAHsmcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
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

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/include/asm/cache.h     | 2 +-
 arch/arm/include/asm/mach/arch.h | 4 ++--
 arch/arm/include/asm/setup.h     | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index 1d65ed3a2755..cc06079600e0 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -24,6 +24,6 @@
 #define ARCH_SLAB_MINALIGN 8
 #endif
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #endif
diff --git a/arch/arm/include/asm/mach/arch.h b/arch/arm/include/asm/mach/arch.h
index e7df5a822cab..2986f6b4862d 100644
--- a/arch/arm/include/asm/mach/arch.h
+++ b/arch/arm/include/asm/mach/arch.h
@@ -81,7 +81,7 @@ extern const struct machine_desc __arch_info_begin[], __arch_info_end[];
 #define MACHINE_START(_type,_name)			\
 static const struct machine_desc __mach_desc_##_type	\
  __used							\
- __attribute__((__section__(".arch.info.init"))) = {	\
+ __section(.arch.info.init) = {	\
 	.nr		= MACH_TYPE_##_type,		\
 	.name		= _name,
 
@@ -91,7 +91,7 @@ static const struct machine_desc __mach_desc_##_type	\
 #define DT_MACHINE_START(_name, _namestr)		\
 static const struct machine_desc __mach_desc_##_name	\
  __used							\
- __attribute__((__section__(".arch.info.init"))) = {	\
+ __section(.arch.info.init) = {	\
 	.nr		= ~0,				\
 	.name		= _namestr,
 
diff --git a/arch/arm/include/asm/setup.h b/arch/arm/include/asm/setup.h
index 67d20712cb48..00190f1f0574 100644
--- a/arch/arm/include/asm/setup.h
+++ b/arch/arm/include/asm/setup.h
@@ -14,7 +14,7 @@
 #include <uapi/asm/setup.h>
 
 
-#define __tag __used __attribute__((__section__(".taglist.init")))
+#define __tag __used __section(.taglist.init)
 #define __tagtable(tag, fn) \
 static const struct tagtable __tagtable_##fn __tag = { tag, fn }
 
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-7-ndesaulniers%40google.com.
