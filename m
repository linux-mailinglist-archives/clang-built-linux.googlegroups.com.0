Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQUS5SEAMGQEB2Q4GWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 598933EE1CE
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 02:56:36 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id g5-20020a05660203c5b02905867ea91fc6sf10291435iov.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 17:56:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629161795; cv=pass;
        d=google.com; s=arc-20160816;
        b=VKwrvLyGJycN0IYwSuiNlSkfFFnUAVYh0cD7A3mfHONgsQfS6IH4ykhMaw/Lz2msCw
         FcQ1fCTN7aJVS5ls9W6nCFQy7uKzJL1b2YXU+7P+MOTZk9rpBO5efEqXNujssdhgkvMs
         ORWRLalvK42FtLXlr2nEisIXd4A2eID3usjhvONbLGPHaD1QfgN8KY3DTf8MJjPyBHVi
         uyMdpnh8cV3fqQwtzqYcitCw4IG7F1qMA+1y9nyJ3XD7NpRfV7f01S0iZyViJDQJrhaS
         DLxpU7MrwBuUsSlVDjrpTjcMRjK5luuxgtqIUeILs5hZSizmV5WB6Rnm2ASxKgQQ9IEe
         OjKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=9rKoYSMAq0asH0kdIb/Bkda3gYIVyHqaKvZ9qbqwiRs=;
        b=fematkAcw2uB26xVqGxS+7ZT7jb3Zh99MKJiqFrzKpWI3RqRdeEF+2jrwcywnQJsYe
         vqDhLLKJWZtFaKPbLRSP854TRPgQlsChgruRGH/yh0dtA8loxtFPq62Ugdqo2/Ebrtx1
         n6YZXmQdSofiBZxJ9g8VkQ5425H6DM3tWnZ1Z+N1HAy6z9D5CNHQKMBWalk7aTBOUlzr
         9Of2rt86YycQBERE6M7Q4xnqzhs6dKVfrAOnYwdmdZ1mi5av6Nfcqyka/P3Eumb4ZTiz
         NWe9pz421gXwLnPlkGJEvh+MztcqxiIQ9m5ukQcab/9Jg45+4LaozsCy6KY6M5zRLE5r
         rawg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oE8+h4N0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9rKoYSMAq0asH0kdIb/Bkda3gYIVyHqaKvZ9qbqwiRs=;
        b=RsisjepShuMDlYcrX6ti9b5z2Wnfp418zrtxq/1ry+QosDrznmh8/bMdP3cPzmUhPl
         k0Gi2hu9SN54IOAvunaXhPlftwvUxuC9JAXYpzSGGFUkQavcB8vUx3mJ/d1h/LAKdDlg
         Pmr1DVCRtkk7UeCSjIAtdLopgs3uCV/+bg6ptYcVEYEpPQuvJBtojWRBpAJRW6V5XhUq
         Ce04jJnUNa0+lSn2GxrIqyaH0KwNn6LT4ljKqOBzNrrTfQ0YlsYdc2TBbZdVsd96u9dp
         z+PN00oWMfcUmSeyCjO2BmNf/GlKnJdO9iEi0kUcneLujNdz8eNZz4xonF1upZp5iYIp
         XvYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9rKoYSMAq0asH0kdIb/Bkda3gYIVyHqaKvZ9qbqwiRs=;
        b=jQsTa0mamm9qoapgXy+mhXCp59/iEXYWTYOILFGdLVxymk3ZcShMWxyOqXnTaU/r//
         OTY+4w+T/ljVUjuCjK8z7b8hIP7qEVpZw6bdDMIIYQk2B83IkjP6tGECRhEpowDQxn6s
         hqWpcHMWNJWz67LbyXDoy/iVJpwVTpDxyjIT0iNLMbvQDHioOEyLkwvFGoO5LU5zDnkp
         b3SjxyTMc0x0ad6z9UNZPhuN//AXiDwESa88gVSkkNL9tYMNOK2Tr3tm509yEPxINmVO
         fmYrzqwUBFqpfJgXlEXQL+n0zxcE9zOTcvMsncazI/ku9Xy06ogrSnTK7ppuWsbHB1qi
         lJmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kgn7ZfZpkxI0KuREkQRsn/d3N0IM+2vmc1adWPDs0g8eTTanr
	4OipsoDmBiinI76ebadDckg=
X-Google-Smtp-Source: ABdhPJymQxghFWrLJckipUgon2V3EjT09P1WbxrHhzcIXr+uZya9OrcvhN6+Qtl0NWCHYNSz/T3oOA==
X-Received: by 2002:a92:cf07:: with SMTP id c7mr519454ilo.291.1629161794986;
        Mon, 16 Aug 2021 17:56:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:27c6:: with SMTP id l6ls78231ios.6.gmail; Mon, 16
 Aug 2021 17:56:34 -0700 (PDT)
X-Received: by 2002:a5d:96d2:: with SMTP id r18mr810168iol.0.1629161794692;
        Mon, 16 Aug 2021 17:56:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629161794; cv=none;
        d=google.com; s=arc-20160816;
        b=ep64bWLpz0qblpGwWn6nQ9xmz3CJBRETKARhAVvNiVgjptqQtyWp+005lB1ALnns4f
         2ljVtCjBMYDvJFyZWenrZS+kgSSVOEj7i7QLrU5vAVxY90LI9iU2AKQGAG7wwHTzgx/m
         3OYdAfFl0rvHW449yplVD4/SZQ1MFMN/Unk+gHcJxh5q1zGrNQqESUaV5UotLQDITNsD
         Pyl1G2k2pI9IVpBFLMGRMBwwHx9v2uHXi9gxy7vTyCJbwJo1urGopRW4/IBNQ9lzJy0A
         Bc0Y3TP4RJ+eWM9pW3ll6j3WNNJae8/PqHWwsuSRVOBP0IrVbXY9OXNk3JPozOKSo0ow
         TSrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8ha9HDAYR0w2ZAWn3+/ote5Ugs/Liuo3G452VYDiiRo=;
        b=FN9Dy5085qBxL1EVl1WDmkpWWxRPV/6z8o2Ugx1tiPUcOitdf/XmQfXC49laYpOSyr
         HVv+fp9kKQO4vsAbZNaiTGrdMaW5qJvAteBt1TcPjQWNSPYEh2PgINxqwat9FU+iMDDc
         NxPoHIsr+C4RBRv9aKR7lpYPgh2lpF6QaZBrTWb+zFJiNAw+IngPkJuVuCMaRvbFM49J
         g6obEwNDv0Z80Z3ZpJ1DEsuoE2OrdN0T2ykrL4f2AkrWTeX+Q/W3zyUFsymiPhtZpDYR
         ZhTFPYwxwgLTgPTcHwNdS+qzuGSxam0S/sWCFut91aH9GCTC35Jf05aSkrI2NOAK86Wf
         B1ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oE8+h4N0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e16si22234ilm.3.2021.08.16.17.56.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 17:56:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 49CAE60295;
	Tue, 17 Aug 2021 00:56:32 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
Date: Mon, 16 Aug 2021 17:56:24 -0700
Message-Id: <20210817005624.1455428-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=oE8+h4N0;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Clang prior to 14.0.0 warns when a fallthrough annotation is in an
unreachable spot, which can occur when IS_ENABLED(CONFIG_...) in a
conditional statement prior to the fallthrough annotation such as

  if (IS_ENABLED(CONFIG_...))
      break;
  fallthrough;

which to clang looks like

  break;
  fallthrough;

if CONFIG_... is enabled due to the control flow graph. Example of the
warning in practice:

sound/core/pcm_native.c:3812:3: warning: fallthrough annotation in
unreachable code [-Wimplicit-fallthrough]
                fallthrough;
                ^

Warning on unreachable annotations makes the warning too noisy and
pointless for the kernel due to the nature of guarding some code on
configuration options so it was disabled in commit d936eb238744 ("Revert
"Makefile: Enable -Wimplicit-fallthrough for Clang"").

This has been resolved in clang 14.0.0 by moving the unreachable warning
to its own flag under -Wunreachable-code, which the kernel will most
likely never enable due to situations like this.

Enable -Wimplicit-fallthrough for clang 14+ so that issues such as the
one in commit 652b44453ea9 ("habanalabs/gaudi: fix missing code in ECC
handling") can be caught before they enter the tree.

Link: https://github.com/ClangBuiltLinux/linux/issues/236
Link: https://github.com/llvm/llvm-project/commit/9ed4a94d6451046a51ef393cd62f00710820a7e8
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 Makefile | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index c19d1638da25..91a4a80409e1 100644
--- a/Makefile
+++ b/Makefile
@@ -797,11 +797,17 @@ KBUILD_CFLAGS += -Wno-gnu
 # source of a reference will be _MergedGlobals and not on of the whitelisted names.
 # See modpost pattern 2
 KBUILD_CFLAGS += -mno-global-merge
+
+# Warn about unmarked fall-throughs in switch statement.
+# Clang prior to 14.0.0 warned on unreachable fallthroughs with
+# -Wimplicit-fallthrough, which is unacceptable due to IS_ENABLED().
+# https://bugs.llvm.org/show_bug.cgi?id=51094
+ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 140000; echo $$?),0)
+KBUILD_CFLAGS += -Wimplicit-fallthrough
+endif
 else
 
 # Warn about unmarked fall-throughs in switch statement.
-# Disabled for clang while comment to attribute conversion happens and
-# https://github.com/ClangBuiltLinux/linux/issues/636 is discussed.
 KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough=5,)
 endif
 

base-commit: a2824f19e6065a0d3735acd9fe7155b104e7edf5
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210817005624.1455428-1-nathan%40kernel.org.
