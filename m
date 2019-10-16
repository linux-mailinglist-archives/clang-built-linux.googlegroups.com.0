Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFGDT3WQKGQEREOPZIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E264DA1DD
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Oct 2019 01:02:46 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id r24sf309797pgj.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Oct 2019 16:02:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571266965; cv=pass;
        d=google.com; s=arc-20160816;
        b=u1bwrKX0guS7RJEW+Zy52q4SG2xWjKBCjiZoPhkvttckdHltrvdfW3c89fuRsF1MD/
         CL7LbNv2uz2hVuB7UhCbE/sfK78kGDJMHOw7ZQxHDJ+p/2ItcXNBkceEC4lEvF15JKVO
         9bzBEo8tK70OPy7pjAKhOMdovg1IuXY8ar1fpDuiIzAeD6DLXeWV/V/aVxf2kJll4WVj
         xm9saPgE7ygYJiq/GCBX3R/AgzzCu60mpmJDdoQFkvK94Z/KmjbE4eoJlEkJ0T1zYwJg
         yy8ixe6GGD9yQvNPGERnJ32G3OymxJQAvuAg2y9a+nCwEftcnla82QfdKZVwWvWsjGWw
         rvQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=CVQUqaASpK5+nhu7Stq4k5FMoKvh+tH8Euy5QIQLBNQ=;
        b=wDRBh0RQRoQI6NNfRG5cvKb8IKRox4Z3tILhmQ0MHyxLZ0ERC9/HgBho2pEMsqqiYw
         IQv7TAwMG3N5HmM+8Xar5A+4WdsO/bRvGNJALzNbHY9oxzvQzv33K7Wd8ngBDOFhrfOt
         RwXzSUrf4ybWlxg9nIKL/Pj57xn1vx32kFX+gdljVeralKvxVozsCSYriI2TR+NzwizN
         x3Ul/4B3g9D22/+owYhYwhoJ9d4Sj6bwx4Oinukzjm8ZHREOQ/Xs1z5yJZ2iDGoc8gxw
         M7cx3wTHwjNg6CSV73oiT3+buw4Vdq/XdsQKpNOaOlfaAZv/K0O6lPKZC/GxNgnbYYEw
         umwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A40bHLsh;
       spf=pass (google.com: domain of 3k6gnxqwkaggtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3k6GnXQwKAGgTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CVQUqaASpK5+nhu7Stq4k5FMoKvh+tH8Euy5QIQLBNQ=;
        b=Zud/7+0HXaO3s+9V4HULpHesLZLNQuMkT/zzWT/wQ5ehTWGGvrBVHfK9QHHTx+aXDU
         UKPsuyy90LIpTWJwn0LNQVhE+CDy6wSdLxGk/MjYf3rwWwf1Tmh/pIwaTNWDeQldTJNE
         e+a1M+PZMkuK1VQdduZwapmEPxSwFzehNJO4wDMnrjjLbszWRdB/YRc1qOFYyBjChSz0
         bDfA/ldJxVXk9qwCPbLYFGzoyZ7GXZNWcnLadLEDnIzth6vB7vSFo3z8Y3/IEsHC8o+a
         DGvj0eqtqhNcf3C3yoXvz+E0ILh6ltjLYfB1v00PFZEdflR2pHksAReH2xiECSh4v0Nd
         Mvag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CVQUqaASpK5+nhu7Stq4k5FMoKvh+tH8Euy5QIQLBNQ=;
        b=pxGF3OBtxslO9A+Im3u0JsIlf3xhnUyNKi8OkSCSOBx7DZSraAm6d10ADnDWv0SyDA
         MsuGrrkY/GjENm5X+sS2iEv5mEAKVZ1Djc/H0udK7Nx9ShXZ6ZIy5mbXNKOAU3fAuj8F
         /g1yQTRMSVsY9+YQ/NnKlHLEDnbHm5P10txM8fHGFuzpIALuqjN31UGbTxzosagshqkF
         y4J5UrI8Govw6OEVYvK4InhrzVBOhsP1MygbNSLWiYBLRl34fGz5hrmOlTW3kn2EIYIK
         3wn7fITfVrMDWdmvGxyzzQEVaW8DkZ/8Eo6vfbtmLGpAyV76kwbyL8UYkt2ZGcRf1b2C
         3VNQ==
X-Gm-Message-State: APjAAAUuk2jW6GlPXj3w7r3uoRrM8aMWYr2KfO6YiOg8CDuGxwuVcqSy
	PnrViMr3DWqQaoNMGql5tqg=
X-Google-Smtp-Source: APXvYqyBFnbFGV52WPLpu/8wbKUR5CjMStGDbGS1/OJ3E3NIGYPETN3OX1ZVTeclI3yR9TrTiUdBQg==
X-Received: by 2002:a63:3c5a:: with SMTP id i26mr102488pgn.207.1571266964870;
        Wed, 16 Oct 2019 16:02:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:25e2:: with SMTP id k89ls40027pje.3.gmail; Wed, 16
 Oct 2019 16:02:44 -0700 (PDT)
X-Received: by 2002:a17:90a:a783:: with SMTP id f3mr458523pjq.25.1571266964504;
        Wed, 16 Oct 2019 16:02:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571266964; cv=none;
        d=google.com; s=arc-20160816;
        b=TwUHl6q6441j5uM5Q7O/mdsYaUO+uU0hX4PP7KMHmqT+scTAph7caOgfRfJJasrbw9
         jOoTPf1NhGS7sCJvHjpiwLh8p1kOccE336UBrWlc01EQTul596m3FgqLvqb4kUevopsy
         htJ0UBYrROuVOej0RgTKeqDoem7DZ/b8tH9Gn3gSMZg49qztZ9wytONHQLzr4AIeVM2L
         4vzMxLrNnmD7TBGnRFHODb0k0QxwC7VuJvdchqWr9jqIib/WWQUQFdYItBtv39zbNoce
         Kz3m5tDaNw0vlvkdlshsM80YcJup+8+BYwqRvjFsJ/rpqbw9stCEjDGYyPvgk6Oq7T1I
         2oRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=5VeOMLWwE6g0WvRsIC8itj+v+Y0yf4dhqyzJ89LKDQw=;
        b=A3mRE1T5GpOi/V0OdNz1XYNXmDJ7w36Adww2Gu1bokWZksVOUhNsqpNvlyDXGNKnTy
         NRuaBYzKGIq/9nOTGYVFiak32WAsV76sh0yJElSXfJyy+RaCxsdkgcQhX61iaYlVsUMo
         xE9AGNDHOR9pLu3xaUrzLJS6N6otzmQWuD+22ekYn8lZkJZrZ7paXQacz9TgoUTSd9BH
         CP9qgwlY4ENZ/zb5pb6Nefx3iur+bRdhKmN9yieZgzFdLTVdTa2KO4g9LrLIte7DJhj9
         fCKIaxf8OGRP/W+qtpb5MbAB6mSfqHR6/ERIKFFoExlIPBqMoLD0wYxUs30ZydLpxR9R
         bIiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A40bHLsh;
       spf=pass (google.com: domain of 3k6gnxqwkaggtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3k6GnXQwKAGgTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id f17si26823pgk.3.2019.10.16.16.02.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 16:02:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3k6gnxqwkaggtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id z4so172078pfn.0
        for <clang-built-linux@googlegroups.com>; Wed, 16 Oct 2019 16:02:44 -0700 (PDT)
X-Received: by 2002:a65:5cc8:: with SMTP id b8mr652311pgt.38.1571266963884;
 Wed, 16 Oct 2019 16:02:43 -0700 (PDT)
Date: Wed, 16 Oct 2019 16:02:09 -0700
In-Reply-To: <20191016230209.39663-1-ndesaulniers@google.com>
Message-Id: <20191016230209.39663-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20191016230209.39663-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH 3/3] drm/amdgpu: enable -msse2 for GCC 7.1+ users
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: harry.wentland@amd.com, alexander.deucher@amd.com
Cc: yshuiv7@gmail.com, andrew.cooper3@citrix.com, arnd@arndb.de, 
	clang-built-linux@googlegroups.com, mka@google.com, shirish.s@amd.com, 
	David1.Zhou@amd.com, christian.koenig@amd.com, amd-gfx@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=A40bHLsh;       spf=pass
 (google.com: domain of 3k6gnxqwkaggtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3k6GnXQwKAGgTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
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

A final attempt at enabling sse2 for GCC users.

Orininally attempted in:
commit 10117450735c ("drm/amd/display: add -msse2 to prevent Clang from emitting libcalls to undefined SW FP routines")

Reverted due to "reported instability" in:
commit 193392ed9f69 ("Revert "drm/amd/display: add -msse2 to prevent Clang from emitting libcalls to undefined SW FP routines"")

Re-added just for Clang in:
commit 0f0727d971f6 ("drm/amd/display: readd -msse2 to prevent Clang from emitting libcalls to undefined SW FP routines")

The original report didn't have enough information to know if the GPF
was due to misalignment, but I suspect that it was. (The missing
information was the disassembly of the function at the bottom of the
trace, to see if the instruction pointer pointed to an instruction with
16B alignment memory operand requirements.  The stack trace does show
the stack was only 8B but not 16B aligned though, which makes this a
strong possibility).

Now that the stack misalignment issue has been fixed for users of GCC
7.1+, reattempt adding -msse2. This matches Clang.

It will likely never be safe to enable this for pre-GCC 7.1 AND use a
16B aligned stack in these translation units.

This is only a functional change for GCC 7.1+ users, and should be boot
tested.

Link: https://bugs.freedesktop.org/show_bug.cgi?id=109487
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/gpu/drm/amd/display/dc/calcs/Makefile | 4 +---
 drivers/gpu/drm/amd/display/dc/dcn20/Makefile | 4 +---
 drivers/gpu/drm/amd/display/dc/dcn21/Makefile | 4 +---
 drivers/gpu/drm/amd/display/dc/dml/Makefile   | 4 +---
 drivers/gpu/drm/amd/display/dc/dsc/Makefile   | 4 +---
 5 files changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/dc/calcs/Makefile b/drivers/gpu/drm/amd/display/dc/calcs/Makefile
index a1af55a86508..26c6d735cdc7 100644
--- a/drivers/gpu/drm/amd/display/dc/calcs/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/calcs/Makefile
@@ -37,9 +37,7 @@ ifdef IS_OLD_GCC
 # GCC < 7.1 cannot compile code using `double` and -mpreferred-stack-boundary=3
 # (8B stack alignment).
 calcs_ccflags += -mpreferred-stack-boundary=4
-endif
-
-ifdef CONFIG_CC_IS_CLANG
+else
 calcs_ccflags += -msse2
 endif
 
diff --git a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
index cb0ac131f74a..63f3bddba7da 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
@@ -23,9 +23,7 @@ ifdef IS_OLD_GCC
 # GCC < 7.1 cannot compile code using `double` and -mpreferred-stack-boundary=3
 # (8B stack alignment).
 CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o += -mpreferred-stack-boundary=4
-endif
-
-ifdef CONFIG_CC_IS_CLANG
+else
 CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o += -msse2
 endif
 
diff --git a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
index f92320ddd27f..ff50ae71fe27 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
@@ -16,9 +16,7 @@ ifdef IS_OLD_GCC
 # GCC < 7.1 cannot compile code using `double` and -mpreferred-stack-boundary=3
 # (8B stack alignment).
 CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o += -mpreferred-stack-boundary=4
-endif
-
-ifdef CONFIG_CC_IS_CLANG
+else
 CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o += -msse2
 endif
 
diff --git a/drivers/gpu/drm/amd/display/dc/dml/Makefile b/drivers/gpu/drm/amd/display/dc/dml/Makefile
index ef1bdd20b425..8df251626e22 100644
--- a/drivers/gpu/drm/amd/display/dc/dml/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dml/Makefile
@@ -37,9 +37,7 @@ ifdef IS_OLD_GCC
 # GCC < 7.1 cannot compile code using `double` and -mpreferred-stack-boundary=3
 # (8B stack alignment).
 dml_ccflags += -mpreferred-stack-boundary=4
-endif
-
-ifdef CONFIG_CC_IS_CLANG
+else
 dml_ccflags += -msse2
 endif
 
diff --git a/drivers/gpu/drm/amd/display/dc/dsc/Makefile b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
index 3f7840828a9f..970737217e53 100644
--- a/drivers/gpu/drm/amd/display/dc/dsc/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
@@ -14,9 +14,7 @@ ifdef IS_OLD_GCC
 # GCC < 7.1 cannot compile code using `double` and -mpreferred-stack-boundary=3
 # (8B stack alignment).
 dsc_ccflags += -mpreferred-stack-boundary=4
-endif
-
-ifdef CONFIG_CC_IS_CLANG
+else
 dsc_ccflags += -msse2
 endif
 
-- 
2.23.0.700.g56cf767bdb-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191016230209.39663-4-ndesaulniers%40google.com.
