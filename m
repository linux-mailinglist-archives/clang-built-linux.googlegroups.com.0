Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBHG4D3AKGQEE5YUYUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 104B31ED920
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 01:32:22 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id t4sf5211754yba.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 16:32:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591227141; cv=pass;
        d=google.com; s=arc-20160816;
        b=HyMWBD/Yi8pgKdFM4QfxtMlLJ8wC89yvE+90K6uI4AwF/AnyTalYjy7C4qFETtW5jR
         VKJ5XDeWV5HU5MyzUT+RQYR+IJ0vZfdygljLCxxxQ1XkzKMPoyq+/h+TTfeHMBKT2bfx
         hWesxCRDNbyJ7mNXIskOZr9ZqOdoGpJTET4+LRE8qlVo7iRbJDDu51NtTomdO/xT/Jed
         W771EPDkR6UwFqG+BaacjgdSMvy/pbdLks5eGUVA/yXALmE2WhTEmeGHciotbd9ztt8S
         3FfnXOUzUoaS4yF+0Sb1lJPyZ6fAUqeKKFEe1vG9+bxUrD2plV1y6+ClISgw60zufyrI
         xZ9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Z/ggzl6OAXU21fxvnm5gaCjF3R7OegAWnV8mo9KViqw=;
        b=oBXRUQu9LRK9Pd/9YGIn/eXmWWrMQWFGjoQO0FHfO49eMMJXhO7fmFz4lxEUcgCSYY
         Kq8QMeeh+q2Hyl9DTlEOMuNzVs0bVK5Fws8sbTEYYdClkFpxxhiI7gYymdj3m3dI6GT8
         wJX/W3b+2bk9gXhkgsl52q4wz3bdQjwxH2Ku6BHbTf6O/kQBxSiDt8hn9/u18FIrttHw
         fXE9ZYtYeV7IBghYGVfKS0eetyMmDhTlyOwdBNPq7uTKp4B/N6CvYwuvwHiI0IFRI9Rc
         RvxNPwf7ZLS+DO0W/g4fg/suxbngOZm9mKWo17fs7mGYNitnBdZXw4redN3hIR4ez+LG
         zjGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UstK7WLa;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z/ggzl6OAXU21fxvnm5gaCjF3R7OegAWnV8mo9KViqw=;
        b=bFwxJ5elJKhtLblrZzuGBjmk9iA5amvfaWjIQyQC/2bgp0siE4g6v0PF8G+MNne5p1
         pW8jcTAmeEF+3CWdwB4J83HhyNlG2Vrvdbdeyp5eBVw5+auycCFFbuPVuDqXuvmxgP+R
         IZf2qEsNWLYzS78HHfzX3bPgXwEwCMgsehhMsF5b8FDoFqT6SGRpN5NlWdWhjd6v+IkK
         UeUIw/zkFQeAZVCBc5gR7SBGIVopyjb94WAj0AgeO2CbKPsi9mryE54U0E45tHtlwrMe
         qcDRdg0j6gHg3fb2Xc7XXIAhGusgnjMEIrvPwB/vyzLIM+SpO9pl8ApPQFBVaQP4Lt9a
         k/4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z/ggzl6OAXU21fxvnm5gaCjF3R7OegAWnV8mo9KViqw=;
        b=ONHGk7KozsqYR5WTBWn9vg2tbcERKYQqWaO+731Nfw2YmYG+kPOiVpaij6oY6csyN4
         WO6R8UGu1yBJBeuOUAo95zKIcdA2cQZpT/Pdw/3CU27TciRTR4lfIkq+thsYNOsxRgD+
         jBh+8myFnApxIBqmd3msUQEfv+wrG2tf5mMxtdv7jyV9+uZUIHSwhIsZIl0UU3iPzLQS
         e0vYJ1Ez6N7h+0dQkGsVbMVlM9dsGHIhpNKpfw2oRM5nTgirqw5dyEsflLgEb1+WTkdz
         4DcL9s+lWzcilECsQiQDrXyY+v+lb1393oBP9lOXQ856ZomKrpw+IBETAxVcmTRv0cLm
         Oysw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314g7xGTCR+GIa9KgCijcGBl2N/E+/vI5R9h3RTpb8ebtdVuATP
	uSBW13JtbHuCUjVWQrqN4Jg=
X-Google-Smtp-Source: ABdhPJzyI3hkPuj6l367EFSwqkOifd9GklsI+9bpHOgbrO/f33sFPUiEH+FLuh3VYwS87JRz/VmVQg==
X-Received: by 2002:a25:b98c:: with SMTP id r12mr3880228ybg.309.1591227140854;
        Wed, 03 Jun 2020 16:32:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b982:: with SMTP id r2ls1749517ybg.11.gmail; Wed, 03 Jun
 2020 16:32:20 -0700 (PDT)
X-Received: by 2002:a25:2e43:: with SMTP id b3mr1381725ybn.190.1591227140421;
        Wed, 03 Jun 2020 16:32:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591227140; cv=none;
        d=google.com; s=arc-20160816;
        b=eUBAdwRVUXppLj0r02QtWLKS9eSoWhSdkygwvbJrHpE5SD5r3KKlniiYbpFLTroNo8
         RGQ5WIH1Xx1+3u59jJOjzRFOPOjSE52PaYUguphsUYtlPP8EP5D2+Kyp9Z8jr1qRKjK9
         lzMJTAw5YdYvFr3r+rsdg1yF6xXmCNAk5Ib5Vr/AmusfXC/k9VdMYqeadd7PZNK42kf6
         1SZUJDpOyvMLLY+t2wnmRPVVJzD2v6UGp1kBH/RvgtkL0JB9AZfkUJfnno1r72TwNqeD
         sfO7fBNQb+dLlr7nUcLH72ZNV4rWBOZ9pV1n67TKx6PNV2TYRcRcXXKXUdUXQ4OHAgAe
         yr9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/wgSseUcyTd9Drk76fcV4j2VbriV8jy/HYEGQ0NYaFk=;
        b=HsOb82OfXK+uFOR/alXiP9fQGOA9ov5syBmvbUtIZbnyDdYzzgn7CGshUeXyLrgxEa
         tgeCvLXM2hSpISr87E3GlBOp4p3qINJdAS6lgErR2bc2vJITOenh3Qbh1fDD3BKHLYEP
         peT85lHgaNSkWBdt8FtI32wRVQYRlbzDUPLFWv6yLMOYGEmKuCSKew2tItQLNmXiQ0X5
         1D2Te4q/wTDEqqwcJXRbIzfFQdlTGExj3V2JZ7HB8vVuaOcbuGjPNKuVSu6pnSMFmCQc
         NxAs89Ld8KJrUcTdioPOj2BFg6wC8WUe0l2k5YKZb7rUSKnqxBrlIIjUFOPjpCFSvOM7
         keWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UstK7WLa;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id m9si171686ybc.3.2020.06.03.16.32.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 16:32:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id ga6so258139pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 16:32:20 -0700 (PDT)
X-Received: by 2002:a17:902:b706:: with SMTP id d6mr2149275pls.304.1591227139667;
        Wed, 03 Jun 2020 16:32:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k19sm2867022pfg.153.2020.06.03.16.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 10/10] compiler: Remove uninitialized_var() macro
Date: Wed,  3 Jun 2020 16:32:03 -0700
Message-Id: <20200603233203.1695403-11-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200603233203.1695403-1-keescook@chromium.org>
References: <20200603233203.1695403-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UstK7WLa;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Type: text/plain; charset="UTF-8"
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

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings
(e.g. "unused variable"). If the compiler thinks it is uninitialized,
either simply initialize the variable or make compiler changes.

As recommended[2] by[3] Linus[4], remove the macro.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/compiler-clang.h | 2 --
 include/linux/compiler-gcc.h   | 6 ------
 tools/include/linux/compiler.h | 2 --
 tools/virtio/linux/kernel.h    | 2 --
 4 files changed, 12 deletions(-)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 790c0c6b8552..019f444b500b 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -5,8 +5,6 @@
 
 /* Compiler specific definitions for Clang compiler */
 
-#define uninitialized_var(x) x = *(&(x))
-
 /* same as gcc, this was present in clang-2.6 so we can assume it works
  * with any version that can compile the kernel
  */
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index d7ee4c6bad48..ac3e29ae32de 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -58,12 +58,6 @@
 	(typeof(ptr)) (__ptr + (off));					\
 })
 
-/*
- * A trick to suppress uninitialized variable warning without generating any
- * code
- */
-#define uninitialized_var(x) x = x
-
 #ifdef CONFIG_RETPOLINE
 #define __noretpoline __attribute__((__indirect_branch__("keep")))
 #endif
diff --git a/tools/include/linux/compiler.h b/tools/include/linux/compiler.h
index 180f7714a5f1..29cbb73f2ae0 100644
--- a/tools/include/linux/compiler.h
+++ b/tools/include/linux/compiler.h
@@ -108,8 +108,6 @@
 # define noinline
 #endif
 
-#define uninitialized_var(x) x = *(&(x))
-
 #include <linux/types.h>
 
 /*
diff --git a/tools/virtio/linux/kernel.h b/tools/virtio/linux/kernel.h
index 6683b4a70b05..1e14ab967c11 100644
--- a/tools/virtio/linux/kernel.h
+++ b/tools/virtio/linux/kernel.h
@@ -109,8 +109,6 @@ static inline void free_page(unsigned long addr)
 	const typeof( ((type *)0)->member ) *__mptr = (ptr);	\
 	(type *)( (char *)__mptr - offsetof(type,member) );})
 
-#define uninitialized_var(x) x = x
-
 # ifndef likely
 #  define likely(x)	(__builtin_expect(!!(x), 1))
 # endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603233203.1695403-11-keescook%40chromium.org.
