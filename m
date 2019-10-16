Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEODT3WQKGQE53RKQLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id AACB2DA1DB
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Oct 2019 01:02:42 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id s125sf323607pgc.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Oct 2019 16:02:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571266961; cv=pass;
        d=google.com; s=arc-20160816;
        b=fk2VFF4YBsnReVG7T4AAskgYb8BfpZfPutF61jGCGyPmnDacQQz9AawIW4adIx7F3E
         PSQJcOXAZsZVSl9Y/vOStqor7nMzcSTq88hTXPUFb8mRnqcRqL2DyHZwuNKt8zjPAOGL
         eN8rjk+NW9RJOG3YzbcdtzJ7YYsca5rrl5H/nAMFa8p3havc4HxauR7pfMyOaYuxxTb4
         FgY9OX/Z7VMboGMLE1qylngbx9ybJB8W0BNYynCczv9Z31laZCqfyZU5BaoTqGSoC46R
         FrFGXcr6DRQn7SL3XdDR7R/I8ToQdeubvECU+6ui6aXj3qF7q18A0ak+j68GHEKffaTS
         +KYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=MrmZzILxmh4nFIs1486pgVoOFklvrCHkgzCvHpCEbUE=;
        b=aTtVlNns6Gu2kawYt3sbTzqaelrM8aTlMmgJcJkB0h4/pUNGsBIuK2CjgbS/ByGaM/
         6de99UZBzb0aWVuoK/tngUVck/8CVjqjjlytsH2kvyV0QQGPWS0xwuN9f+GHLgWhOOm2
         XOta4PRY+WDR7BSetOnonKnJGzQnHRJhw4VANzm2MMYPnDdr1nq3SLE3mLdNwk3jUJSD
         JCIIxdhCx7PknMK0xzp0KjuVOBJYNDsWar5bI8qFcInEWSQsh6eHj4D+6wrzhr8vrvLx
         pjX+e5LWrOKhUi09IaHRV3GWIG1P/yAGNPGda4rNTFy440Vnx4V8Hmdiw7uuhKOfK1Jq
         185g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RLuFVPUM;
       spf=pass (google.com: domain of 3kkgnxqwkaguqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3kKGnXQwKAGUQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MrmZzILxmh4nFIs1486pgVoOFklvrCHkgzCvHpCEbUE=;
        b=FMsIKQiTv43GqWSOsX2sGNybeSIkqTT9BuW2ZlqylP9jol5roKHP5ImXVNTqQpkijL
         1sTjjtksAdWNFdc231SLbLamPRMyfiv86Mow8GyO+91Wz0YxgYKQgDoUMF62sd8I8GO4
         6JQZPXy6MIQJEYmbaYZChT2kSRu0XhYOymBWZH+GN9zNuCHCck3ur4s8DQ+fqa7ySafA
         hZO/CwY5McYxpt45wvA2qzYmE9uXuaRiEBVhq2dAQLdK1+jijKAFqsYk2YhK5Rd1AE+n
         gOYJWSOGrZv+279ujCyS1FvtKHrXbWxkc7R3CvfgQasi15mEeP67LUxZ1o7JHvzrUc5U
         h3yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MrmZzILxmh4nFIs1486pgVoOFklvrCHkgzCvHpCEbUE=;
        b=SIsNfMqKwmQcwCpJzNAwwl9pT6iWHHEE2jmw5WV04mlBiVZxUc7SqQ+8KUT3oipe2k
         bVQ/u7IEaVs4vUimlhuUcWNA9fwIR2xWiJhsYRz6m0HqWCYySYXCpmt5TEA+PM9RLaX2
         HFdK/Fn0JgOdmY01SZtaomb0mBMuZhYRlOQTGZlRW+nZMryLVLqt2T/adDPx03LWQtMC
         j1UvnXygNI4DJ9FF/etIN6vE4YgI8WxF2yIBwfojG5xuGTiSVA48XjID5CpGzDCbljfx
         2pk8Z7oFydP1kIfwyGTU2tp62p8Vo55CLhOtDMi0iOWnf2r6aAY6J2cpp8rl4B2JZYYK
         XmKw==
X-Gm-Message-State: APjAAAVZxtRyjrKXgb0ZxZzBgBaI8V7AtCfnKdr2bzgwDtXPqE0pi2W2
	fanjsSmf4VRhyw+HFdN7cec=
X-Google-Smtp-Source: APXvYqweWZR46CxQhcD+t/0Jbdykc3oyvC0G27XO5iCptqm9WPi/Rkh1OetUrGZ50PzHvoCwM0POsQ==
X-Received: by 2002:a17:902:b789:: with SMTP id e9mr733332pls.7.1571266961149;
        Wed, 16 Oct 2019 16:02:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bc48:: with SMTP id t8ls47106plz.16.gmail; Wed, 16
 Oct 2019 16:02:40 -0700 (PDT)
X-Received: by 2002:a17:90a:be15:: with SMTP id a21mr513555pjs.52.1571266960782;
        Wed, 16 Oct 2019 16:02:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571266960; cv=none;
        d=google.com; s=arc-20160816;
        b=NqgFVdK6m5vIRENXCAv8wZXMg4Kd0NYs7eeAM4SoTlG3ucYT22HSAOhotW5RPWTXPG
         lGO53sYLc/xJJeAARF37TmMj7zKTYsJ433+8/l4byRGFHHGbNUv5Ghpba7KtltpjXHMR
         gm54tzmFLHG4CGC5ZTP+4DN4hg1RCYbHgVHRpfmT9Pw4Nfz0qKCBKoOkFr0UAoSPbVgD
         5CPS4VNtl8UdX2fn62vcHVXfl9JSlZrxk++7BTuqyyQeceK0NlY8LyDD3Zg73pYmKypZ
         U0GFJfFOu1hgSku1n568rd8JHdl2SvCUxpy9j4CzXoKgz4N7XoTm88WYDxNquDcL25ND
         HV1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=+HTLwtBsb8GklYcE8zHDNoq/yMsTyW1DbJyJzcZRL08=;
        b=Xkej8TZ52L5R+2NpFZgmuLTJFNCb/4Ojsy3P/bfdhhrfSFWCcztLaUCx6x244Di/+n
         +VbPX+h2AfDmge3NsZ1rlnHFTDCIXRZJ1TQzGDMudUFe/uGFrSj7VcQnLF18LQ07XkdA
         UuCFw4ojLl9WPmXV+Q5oxJsXEF5CSEhHCEBLHU5Cbyam01paaaiR+DWpY6uf/jy6kVG1
         3W5GQ9XP/PWi7/RiqXR+5L7HWLWy4/c/gfHUn/NwxeCBVbBks+M0V0t5/1sebOXZJP0s
         X2djqm5uSlZ8vHJgXLNeLKmJ20HN4TEIwAnA9e16Q6i52+b/P9YxrrWbIwQ+/g1wvlp4
         GyUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RLuFVPUM;
       spf=pass (google.com: domain of 3kkgnxqwkaguqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3kKGnXQwKAGUQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id o23si27988pjt.2.2019.10.16.16.02.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 16:02:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kkgnxqwkaguqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id f10so161323plr.7
        for <clang-built-linux@googlegroups.com>; Wed, 16 Oct 2019 16:02:40 -0700 (PDT)
X-Received: by 2002:a63:c446:: with SMTP id m6mr648240pgg.136.1571266960259;
 Wed, 16 Oct 2019 16:02:40 -0700 (PDT)
Date: Wed, 16 Oct 2019 16:02:08 -0700
In-Reply-To: <20191016230209.39663-1-ndesaulniers@google.com>
Message-Id: <20191016230209.39663-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20191016230209.39663-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH 2/3] drm/amdgpu: fix stack alignment ABI mismatch for GCC 7.1+
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: harry.wentland@amd.com, alexander.deucher@amd.com
Cc: yshuiv7@gmail.com, andrew.cooper3@citrix.com, arnd@arndb.de, 
	clang-built-linux@googlegroups.com, mka@google.com, shirish.s@amd.com, 
	David1.Zhou@amd.com, christian.koenig@amd.com, amd-gfx@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RLuFVPUM;       spf=pass
 (google.com: domain of 3kkgnxqwkaguqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3kKGnXQwKAGUQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
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

GCC earlier than 7.1 errors when compiling code that makes use of
`double`s and sets a stack alignment outside of the range of [2^4-2^12]:

$ cat foo.c
double foo(double x, double y) {
  return x + y;
}
$ gcc-4.9 -mpreferred-stack-boundary=3 foo.c
error: -mpreferred-stack-boundary=3 is not between 4 and 12

This is likely why the AMDGPU driver was ever compiled with a different
stack alignment (and thus different ABI) than the rest of the x86
kernel. The kernel uses 8B stack alignment, while the driver was using
16B stack alignment in a few places.

Since GCC 7.1+ doesn't error, fix the ABI mismatch for users of newer
versions of GCC.

There was discussion about whether to mark the driver broken or not for
users of GCC earlier than 7.1, but since the driver currently is
working, don't explicitly break the driver for them here.

Relying on differing stack alignment is unspecified behavior, and
brittle, and may break in the future.

This patch is no functional change for GCC users earlier than 7.1. It's
been compile tested on GCC 4.9 and 8.3 to check the correct flags. It
should be boot tested when built with GCC 7.1+.

-mincoming-stack-boundary= or -mstackrealign may help keep this code
building for pre-GCC 7.1 users.

The version check for GCC is broken into two conditionals, both because
cc-ifversion is currently GCC specific, and it simplifies a subsequent
patch.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/gpu/drm/amd/display/dc/calcs/Makefile | 9 +++++++++
 drivers/gpu/drm/amd/display/dc/dcn20/Makefile | 9 +++++++++
 drivers/gpu/drm/amd/display/dc/dcn21/Makefile | 9 +++++++++
 drivers/gpu/drm/amd/display/dc/dml/Makefile   | 9 +++++++++
 drivers/gpu/drm/amd/display/dc/dsc/Makefile   | 9 +++++++++
 5 files changed, 45 insertions(+)

diff --git a/drivers/gpu/drm/amd/display/dc/calcs/Makefile b/drivers/gpu/drm/amd/display/dc/calcs/Makefile
index 4b1a8a08a5de..a1af55a86508 100644
--- a/drivers/gpu/drm/amd/display/dc/calcs/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/calcs/Makefile
@@ -27,6 +27,15 @@
 calcs_ccflags := -mhard-float -msse
 
 ifdef CONFIG_CC_IS_GCC
+ifeq ($(call cc-ifversion, -lt, 0701, y), y)
+IS_OLD_GCC = 1
+endif
+endif
+
+ifdef IS_OLD_GCC
+# Stack alignment mismatch, proceed with caution.
+# GCC < 7.1 cannot compile code using `double` and -mpreferred-stack-boundary=3
+# (8B stack alignment).
 calcs_ccflags += -mpreferred-stack-boundary=4
 endif
 
diff --git a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
index 5fe3eb80075d..cb0ac131f74a 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
@@ -13,6 +13,15 @@ endif
 CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o := -mhard-float -msse
 
 ifdef CONFIG_CC_IS_GCC
+ifeq ($(call cc-ifversion, -lt, 0701, y), y)
+IS_OLD_GCC = 1
+endif
+endif
+
+ifdef IS_OLD_GCC
+# Stack alignment mismatch, proceed with caution.
+# GCC < 7.1 cannot compile code using `double` and -mpreferred-stack-boundary=3
+# (8B stack alignment).
 CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o += -mpreferred-stack-boundary=4
 endif
 
diff --git a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
index 7057e20748b9..f92320ddd27f 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
@@ -6,6 +6,15 @@ DCN21 = dcn21_hubp.o dcn21_hubbub.o dcn21_resource.o
 CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -mhard-float -msse
 
 ifdef CONFIG_CC_IS_GCC
+ifeq ($(call cc-ifversion, -lt, 0701, y), y)
+IS_OLD_GCC = 1
+endif
+endif
+
+ifdef IS_OLD_GCC
+# Stack alignment mismatch, proceed with caution.
+# GCC < 7.1 cannot compile code using `double` and -mpreferred-stack-boundary=3
+# (8B stack alignment).
 CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o += -mpreferred-stack-boundary=4
 endif
 
diff --git a/drivers/gpu/drm/amd/display/dc/dml/Makefile b/drivers/gpu/drm/amd/display/dc/dml/Makefile
index 1bd6e307b7f8..ef1bdd20b425 100644
--- a/drivers/gpu/drm/amd/display/dc/dml/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dml/Makefile
@@ -27,6 +27,15 @@
 dml_ccflags := -mhard-float -msse
 
 ifdef CONFIG_CC_IS_GCC
+ifeq ($(call cc-ifversion, -lt, 0701, y), y)
+IS_OLD_GCC = 1
+endif
+endif
+
+ifdef IS_OLD_GCC
+# Stack alignment mismatch, proceed with caution.
+# GCC < 7.1 cannot compile code using `double` and -mpreferred-stack-boundary=3
+# (8B stack alignment).
 dml_ccflags += -mpreferred-stack-boundary=4
 endif
 
diff --git a/drivers/gpu/drm/amd/display/dc/dsc/Makefile b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
index 932c3055230e..3f7840828a9f 100644
--- a/drivers/gpu/drm/amd/display/dc/dsc/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
@@ -4,6 +4,15 @@
 dsc_ccflags := -mhard-float -msse
 
 ifdef CONFIG_CC_IS_GCC
+ifeq ($(call cc-ifversion, -lt, 0701, y), y)
+IS_OLD_GCC = 1
+endif
+endif
+
+ifdef IS_OLD_GCC
+# Stack alignment mismatch, proceed with caution.
+# GCC < 7.1 cannot compile code using `double` and -mpreferred-stack-boundary=3
+# (8B stack alignment).
 dsc_ccflags += -mpreferred-stack-boundary=4
 endif
 
-- 
2.23.0.700.g56cf767bdb-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191016230209.39663-3-ndesaulniers%40google.com.
