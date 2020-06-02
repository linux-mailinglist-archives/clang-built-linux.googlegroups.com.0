Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBAF43L3AKGQETV2TNLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8821EC20C
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 20:44:17 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id q19sf1531687uad.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 11:44:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591123457; cv=pass;
        d=google.com; s=arc-20160816;
        b=sPaXUvh0rb4McFyq6g6kL80hlmKyCxPfvzyhLvqI5jRcpETtnwOXKEKSt0ZH9CDcxT
         XqLFZGINv1kbilHIMKbFwTvBdxZn4773JmPkrj0/ago0xGazGTFYLRex/lOhaRhZG7h+
         z17zj5l6ZiH4GMqcatjLzR1SSfotjR9oYk2YPyBxFxbNimYV+kVOMpJ0m4tUUOjwjZk3
         q17r2axfk6d+U86n+1GVMCjyp1oJmHgXkykFwquy3L4ZsDKp+045quptRXSILPc1IMrm
         33pJ96nFB3QeC/mPED5xmAGY3pgcgBViaAr7shln51K+rno8p8MsZvEbeAzv+Nz70OvU
         yB1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=8cj6x08K2qMXFkUEI4/CoS5PZfk440/VG53NZGDyS+s=;
        b=LuNhGXt3BEINQMNZmnBlbH75HXIJKWuoW/6ozzur7hDHECGhqfif+5bUnaW9wTMhB2
         Gryg6ZR8pPXs3HHuGjaJN8r3EezvKk7Dm/dDPTw2/M2O4fLwjZSs9nne7x/xXpfeJk1o
         J2ybDlQQ6jOMbwGPb5KWxCiIQ3ETytWAaDXZ6+Xc9pDh1a6eShC24lITtF9L+y7dD9gw
         IaVfQR5FP3yA516d3B5JjIiNuaD4DW1296qOetcHPsG0llFkw6ESR+vut3VMg41EqQa4
         r46I3c4FUkpNpJgWCgyflGHdsSt1Ndva6hy4nJoS3rQtSzQG3KrL3hG//Evf/LMzEx6h
         FiRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ih+cI902;
       spf=pass (google.com: domain of 3_53wxgukezi07h0d2aa270.ya8y7w92-xg47f-749gj2aa2702dagbe.ya8@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3_53WXgUKEZI07H0D2AA270.yA8y7w92-xG47F-749GJ2AA2702DAGBE.yA8@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8cj6x08K2qMXFkUEI4/CoS5PZfk440/VG53NZGDyS+s=;
        b=QDptxrzJ+fFUwAJpXWubl+2omlLprNp3t85/n0CM89oBDCWhoeM3Mg0lKelFEny3WH
         SbPCU5LW55onLJRsELejXwEwJGyIUu2mEM9yE97Ee2hBFgLBREZ0KP70c50wRRc7M6S2
         ig7c+pSAyY/BdncBbqKqGlPMoo+PFoEiDQI53UJlrErTsS+A5t52XYFsPf80LyWNSEq5
         6AQxaah5jVuYD62PPvYk1w4G+6+D+HwWw00PfWh+oVuhNpG1CgaEU6EawugyJxUdXqQG
         +gdESS19x+tZIzIp3sEeVG/haSnTN9t6VqXAUpJxCkB4pC+NXF8tM0vuiKEDKk45U/ie
         /wIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8cj6x08K2qMXFkUEI4/CoS5PZfk440/VG53NZGDyS+s=;
        b=LdOVQj99kY3fJ7l/0x1waHGuEqKR7vN2upI+Wl04J2tdUmeZBumwlDtK9SVv04MNza
         t4WPJODtHBO9V+qxizpfExDj7qh+OYN/lWg7vA1eIPmOlUyxcEHe1eMUaWIKX9nRId9Q
         PcSwNbxBXdgAtVqdYppgPjxrk//kkG/NyRJG13/NUr/iBx+AWzIPJynasH6CcwTU/G3x
         pUNmJg/ym1i1o4G23JOvUThTu3q/OHqz2ZlL8bOwlj3PY/AK5IdiD/TJSntWvPQHWAl6
         U9+gudlP3ArF1WdeLNzj4zJ4IlNsjaaXj1cSllxWaWSbDKJzqkhDB9q7YZVUWbbMxMqe
         cisw==
X-Gm-Message-State: AOAM531Wik/zxOd49T7xNgNWNv/WgxC1Wr1d5F3pp0yl5ugR1dG1ldB8
	lfrpk6i2B/Jpi/Z0Ej2+ISU=
X-Google-Smtp-Source: ABdhPJwpNi0G55LlraBvFkmhs6BnYswmDRATe2ODOitXn39ngnwpkgZ1xle5ezjElt74q8W/R9/pPg==
X-Received: by 2002:a05:6122:106f:: with SMTP id k15mr10096635vko.21.1591123456792;
        Tue, 02 Jun 2020 11:44:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:138d:: with SMTP id m13ls1258749uae.9.gmail; Tue, 02 Jun
 2020 11:44:16 -0700 (PDT)
X-Received: by 2002:ab0:6855:: with SMTP id a21mr19336672uas.30.1591123456288;
        Tue, 02 Jun 2020 11:44:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591123456; cv=none;
        d=google.com; s=arc-20160816;
        b=KwDSk5/pr+wykalmme6P0SmJp2buE6h7WnXXXQESbns4ZozfCjdoWXYDhzJaZPQzsf
         Vse5fReIZOe/p+Ut0M6QL9QsuEYPCeP/igsw8a7cv+3Rh6tF0tSDLnLNfF0hLYTuIkfT
         CoMny+B2ZQXBCMupZ6zIqgVHnw2SO4GHusnSDZzvzoL7I3p88n/75vTwDPgf/7Zc5DBH
         K2GwZ6fgpPXNPuFGb9ZbiNJjrA5bCPMn1ZLDfkERJGNoU7zaDKlewU6FG9HOKtA83QeC
         pVBGyVTAjOUhBaSgIEERM/6wEVFyRZ+nJSZj3Jhwis+PkTKzSAC+JyC1h4uz7b1kLB81
         exRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=+FgmqyrmNJ7X96y+2DvYBXfBfS1ICd8c/t7BA8+xtfg=;
        b=vShQXkD1aOvC8OBRfb574GMh5bZjfMHE/tfTkreHfLP1mBYx2wWCJBjhzbb0Kldupq
         ZO4oSLe65PxE+n4W3oijOxuLYjbUCTEARtno32R696IBbCczZ3diLfR/i1X/i5VMiikF
         mS+Mi9yaa7E/3dfNfR35MGQRaoP6443UqnaAGUpLdqOlyTdRetLGKZqdkVa1e5/gWspu
         hR7BrpoyOBHeBs+4hQ2CCQV8A7j0QWap6QFYyjH1YC110+AEdQJo4VI/QAnxDYUoUDmR
         skzHbOUT/bVSiLS8A1QMk/SrZKIi9hGKfrmsinvL7Zq8WvH9wAJ53qHnaJALzuQ7twRQ
         kYQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ih+cI902;
       spf=pass (google.com: domain of 3_53wxgukezi07h0d2aa270.ya8y7w92-xg47f-749gj2aa2702dagbe.ya8@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3_53WXgUKEZI07H0D2AA270.yA8y7w92-xG47F-749GJ2AA2702DAGBE.yA8@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id e10si214693vkp.4.2020.06.02.11.44.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 11:44:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3_53wxgukezi07h0d2aa270.ya8y7w92-xg47f-749gj2aa2702dagbe.ya8@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id c3so8551050ybp.8
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 11:44:16 -0700 (PDT)
X-Received: by 2002:a25:bdc8:: with SMTP id g8mr42893731ybk.122.1591123455849;
 Tue, 02 Jun 2020 11:44:15 -0700 (PDT)
Date: Tue,  2 Jun 2020 20:44:09 +0200
In-Reply-To: <20200602184409.22142-1-elver@google.com>
Message-Id: <20200602184409.22142-2-elver@google.com>
Mime-Version: 1.0
References: <20200602184409.22142-1-elver@google.com>
X-Mailer: git-send-email 2.27.0.rc2.251.g90737beb825-goog
Subject: [PATCH -tip 2/2] compiler_types.h: Add __no_sanitize_{address,undefined}
 to noinstr
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: will@kernel.org, peterz@infradead.org, bp@alien8.de, tglx@linutronix.de, 
	mingo@kernel.org, clang-built-linux@googlegroups.com, paulmck@kernel.org, 
	dvyukov@google.com, glider@google.com, andreyknvl@google.com, 
	kasan-dev@googlegroups.com, linux-kernel@vger.kernel.org, 
	syzbot+dc1fa714cb070b184db5@syzkaller.appspotmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ih+cI902;       spf=pass
 (google.com: domain of 3_53wxgukezi07h0d2aa270.ya8y7w92-xg47f-749gj2aa2702dagbe.ya8@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3_53WXgUKEZI07H0D2AA270.yA8y7w92-xG47F-749GJ2AA2702DAGBE.yA8@flex--elver.bounces.google.com;
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

Adds the portable definitions for __no_sanitize_address, and
__no_sanitize_undefined, and subsequently changes noinstr to use the
attributes to disable instrumentation via KASAN or UBSAN.

Link: https://lore.kernel.org/lkml/000000000000d2474c05a6c938fe@google.com/
Reported-by: syzbot+dc1fa714cb070b184db5@syzkaller.appspotmail.com
Signed-off-by: Marco Elver <elver@google.com>
---

Note: __no_sanitize_coverage (for KCOV) isn't possible right now,
because neither GCC nor Clang support such an attribute. This means
going and changing the compilers again (for Clang it's fine, for GCC,
it'll take a while).

However, it looks like that KCOV_INSTRUMENT := n is currently in all the
right places. Short-term, this should be reasonable.
---
 include/linux/compiler-clang.h | 8 ++++++++
 include/linux/compiler-gcc.h   | 6 ++++++
 include/linux/compiler_types.h | 3 ++-
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 2cb42d8bdedc..c0e4b193b311 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -33,6 +33,14 @@
 #define __no_sanitize_thread
 #endif
 
+#if __has_feature(undefined_behavior_sanitizer)
+/* GCC does not have __SANITIZE_UNDEFINED__ */
+#define __no_sanitize_undefined \
+		__attribute__((no_sanitize("undefined")))
+#else
+#define __no_sanitize_undefined
+#endif
+
 /*
  * Not all versions of clang implement the the type-generic versions
  * of the builtin overflow checkers. Fortunately, clang implements
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 7dd4e0349ef3..1c74464c80c6 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -150,6 +150,12 @@
 #define __no_sanitize_thread
 #endif
 
+#if __has_attribute(__no_sanitize_undefined__)
+#define __no_sanitize_undefined __attribute__((no_sanitize_undefined))
+#else
+#define __no_sanitize_undefined
+#endif
+
 #if GCC_VERSION >= 50100
 #define COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW 1
 #endif
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 02becd21d456..89b8c1ae18a1 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -198,7 +198,8 @@ struct ftrace_likely_data {
 
 /* Section for code which can't be instrumented at all */
 #define noinstr								\
-	noinline notrace __attribute((__section__(".noinstr.text"))) __no_kcsan
+	noinline notrace __attribute((__section__(".noinstr.text")))	\
+	__no_kcsan __no_sanitize_address __no_sanitize_undefined
 
 #endif /* __KERNEL__ */
 
-- 
2.27.0.rc2.251.g90737beb825-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200602184409.22142-2-elver%40google.com.
