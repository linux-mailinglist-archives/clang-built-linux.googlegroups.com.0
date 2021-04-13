Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2OH3CBQMGQEKLV3D3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9358F35E96B
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 01:06:19 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id e18-20020a17090ac212b029014dedae7057sf8432526pjt.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 16:06:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618355178; cv=pass;
        d=google.com; s=arc-20160816;
        b=BMNyTkA8EcTcMTr5miU+KFxXpWn54QOjCtUzuXZtXr/o8Jsl+QCCK/WzqDAvGqPeOM
         sY20bpzJfNT//tvtg7AsLJ3w1MGyq2MimDlyYdHNGOQcGEfsGRUEQfoSX91ps8+JeVWO
         NvsMpROtwE5FMz66bd7kYTtj0H1ysol1IdmzYX2OPQ7lRrciYMLDSu4/rAsTFVIWgvzb
         zFuenb4ooTwxWM2WTUV2T9gainlzhKqWB/igBpdMmXtGtxHriQygVdUcE6FCdm8ZYHfY
         UpSD1xBT91bnTHeVWLLOWl0n4rEHuh/61HVY2ow1R/YHX8AXBHXMVaeFEM4Npm0kyqz9
         fxOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=Oeq1EufFEuw/uu5ujRX+mUiwzTERTi0mMb6Sskmmq7k=;
        b=cqGx0E1UV+xTTd3SVXKNHQ/RczqbFsUT0fBAyxUM2v4AVMQYH0+qhlshaNx5KS70Y3
         6wa8dtsgrWrs1+C8d6Ew+VCtVanUDiND6Cy1RFa4rzHxE6IiUBTiuLBOmYiwoXJMm56X
         WP4xl8ThM7H+ThMzyX6Ggr6nC2Y58C/Ci4/NIp3iW9+zSHIB/UZitQKry97+M0klL/xN
         DP07Fj28JaVAV+UDbHsEy+fRa92Q1uO2kdLGOwri8XDeqmj3AtKd1jX7YZXGDSqNKYXo
         ZR/iPJGsNk8bZliadYjlilePKaqh/Z4YFGqMnFBXXCqABXwl0XpOuiD7WxHxbIw/YlzP
         28nQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DxcXYtVM;
       spf=pass (google.com: domain of 36cn2yawkabm6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=36CN2YAwKABM6wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Oeq1EufFEuw/uu5ujRX+mUiwzTERTi0mMb6Sskmmq7k=;
        b=He/OaTOQLg9tRVWzSVKrDXgfp7e/S9M96QAkZiAOPgr4UxFsUMO/viUOG1ImKnNIVr
         4feLCSYAida4YQRyGqT6AXRTi4ZNRF6nRmtiLpQjlIIjtPb8PpcZFVUJnE2N5ORPSBgN
         0uzl87lrbNexLhPbI2L1pqzenqI2FAMA28o3ea4yGD2meXMMxJPaD1xlsflghoUEs2ux
         7mNrqsd8en21EJnhcWPRP5KAU9wO9eFjqR3c+hlIHxdQ0fMKre6tG6TekAXl/sP0tEnV
         2U3wqc+0bVjEBAxPefnlz10LmZbhgobarLqdYl3txMFV6whYcvUTWIz4HgdSM5t3Vmp2
         uWUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Oeq1EufFEuw/uu5ujRX+mUiwzTERTi0mMb6Sskmmq7k=;
        b=p+yCTWXirr0s2k/Mj8va+58M9sOEsxIuacKuwcT2V6YQXvm4xnFS7Nj6tweNwcilSl
         mXdTha1/Ws3XyAanKdxPThuBU+cIT8iBNt/bLb+Li5yDh5Wf7sbzEuRKpjOreEPrEhf9
         R2fwJzEwnBDA/7L4ClX7yte6B16ZAiJtEpzuWsNRg9N89E1jHIwwkkUmVCWCBRkmQJf3
         zzTakayR6AB7lksXWL0gZOUvl4redXxOQm+SjZw3oWh3oyrc87sOY58QDSyUaDiXSkxi
         Q1pNBbSN0ELwsF2jq9YfwftSYIE3o+0QO7gQzt+CKMNunuX2mQs9Qj+Foa3x5ANlKxWF
         md1w==
X-Gm-Message-State: AOAM531uw6BrKUXgcCordItCTp/k0TSujuzIQ8a5ZfgnzM+NpaXxHpdw
	/wZs/TkGxfsJ3fupW7ezdpo=
X-Google-Smtp-Source: ABdhPJx0LqECaOxNQ57N865u1wyaSy9y1BqiersoYk7XKp6Bydq5SrnOt2M6yZKsgqNwMV7InreGHw==
X-Received: by 2002:a17:90a:b947:: with SMTP id f7mr140650pjw.28.1618355178032;
        Tue, 13 Apr 2021 16:06:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b50f:: with SMTP id y15ls164823pge.2.gmail; Tue, 13 Apr
 2021 16:06:17 -0700 (PDT)
X-Received: by 2002:a63:4442:: with SMTP id t2mr35411673pgk.232.1618355177561;
        Tue, 13 Apr 2021 16:06:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618355177; cv=none;
        d=google.com; s=arc-20160816;
        b=pxmIcOMV3a2W07C07U296LYgckIBjvhxs+KT5HHq/6F3eW9ULgDQHnoeBxIp16qzFk
         IZHnLqQ48ZMAGGjdIY+CX1oCgg3EPsTwsFBh9Xh/0AY/cJClYf6/hRfpz5G4h35LcP6t
         PobgAUlWRcfDtiHD/5e7l6scE3TpDV0qm+eY0U6c3rTNLWsUSHz+3RG46hUwTQ2+pXm6
         DWR2k8KaeXlvx9+UhTSGHMT5Q5ZdTgpV7B4+3cNPMpwXvJt7tsJJqxVc76dJDX56U8l8
         m2aS3yIDgtszVm2wywHhdsoW7xj5Dy8uORAREjEWnkDUL4XkSnCV+9KnYQ7+i9Eu/sUa
         jryg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=tsDZWsbqaxGn05JmQD2dRxuSvQncZTN9fT69Buh7z+4=;
        b=eiLVcx4ud+QhIkh1VueFFwF2XWJT0m1IPfk42ND/8S5VegoE2LyxhE1KijXzSiqZkA
         nUoTi6GctBy8ppfpJIiTznKkVetXqwxbQ7uKlDtsSICqk/RTNJgF3ggNG0u+ouWB45zX
         UdmlDMZU6kJJbsFRC2CN7mUqEy3laionnqLvwNBwBftNnUO+KJMrnCkdDm7yyIdAK6hT
         3RFTTzaDxuqoRCYE3lVV7m5eKHffb2+f7U0CLmswvYGdNR/FrML/0qzpzzAwM+94WSvr
         XtfdnK5ySBK+c2jTb1np80vOOVdWhVvE60zyBM+L+hWUj6R5j3iJZByn14FRnsuOQZgW
         xHOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DxcXYtVM;
       spf=pass (google.com: domain of 36cn2yawkabm6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=36CN2YAwKABM6wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id 7si1137836pgj.1.2021.04.13.16.06.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 16:06:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 36cn2yawkabm6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id u128so17839081ybf.12
        for <clang-built-linux@googlegroups.com>; Tue, 13 Apr 2021 16:06:17 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:bccd:9a37:f0c6:9934])
 (user=ndesaulniers job=sendgmr) by 2002:a25:7410:: with SMTP id
 p16mr23895098ybc.515.1618355176694; Tue, 13 Apr 2021 16:06:16 -0700 (PDT)
Date: Tue, 13 Apr 2021 16:06:06 -0700
Message-Id: <20210413230609.3114365-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH] arm64: vdso32: drop -no-integrated-as flag
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: vincenzo.frascino@arm.com, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Bill Wendling <morbo@google.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DxcXYtVM;       spf=pass
 (google.com: domain of 36cn2yawkabm6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=36CN2YAwKABM6wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
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

Clang can assemble these files just fine; this is a relic from the top
level Makefile conditionally adding this.

To test building:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
  CROSS_COMPILE_COMPAT=arm-linux-gnueabi- make LLVM=1 LLVM_IAS=1 \
  defconfig arch/arm64/kernel/vdso32/

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm64/kernel/vdso32/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 789ad420f16b..7812717f8b79 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -15,7 +15,7 @@ COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
 
 CC_COMPAT_CLANG_FLAGS := --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
 CC_COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE_COMPAT))
-CC_COMPAT_CLANG_FLAGS += -no-integrated-as -Qunused-arguments
+CC_COMPAT_CLANG_FLAGS += -Qunused-arguments
 ifneq ($(COMPAT_GCC_TOOLCHAIN),)
 CC_COMPAT_CLANG_FLAGS += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
 endif
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210413230609.3114365-1-ndesaulniers%40google.com.
