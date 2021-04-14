Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD6F3WBQMGQEICILCFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2AD35FD6B
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 23:45:52 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id z11-20020a4ade4b0000b02901e653e5e199sf42238oot.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 14:45:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618436751; cv=pass;
        d=google.com; s=arc-20160816;
        b=mFnQNpIulNR/66RbhHSYE38qfSB+MfT3vDKrpezdbym+vfTa1MJKsmnQUTaFMa7mCn
         2X4vpNGo9rRUWkR7lyCa5RgnI0bBpGWGJg1hYCogNY2GCWZPnalj1tQo65Muoi9q5ydD
         WfRvSrzivHvHZBDR57iujpu8cus/5+5AeE885wJrcr9Lbe9tsiPhq3X4zwfY/uDca92y
         xWv2JwJU27ACNmCo5klYe7fYOoEBLwRuEKLwJ9DpZdSm2ldwaffPKH7Oiiuu+DJUe6U+
         9zw0TdUqsQNtrhzwNQpLDy9AOce7oSEFZzzG8v1QSrDkClSKvO4TbQV2CqwPG5hGPxW5
         /qEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=aI0eENJwclY9tJTUIPlQib3fJS8iF6MIj+Z7coGOlss=;
        b=bTilLZthmThjA9LJI4+yy9AK3TzpqjSw8XosBD8pZGKtxVcxLiRKFYnIdW6vh3R6Wg
         jq624zpRmdB23l7VXXI6ST1mahJPbySskC0+LR6uPHyIjwwLwuIls0Sf2GelSiGEOr8r
         7qQwk47u+N3iPTWfA2oRLPiTcrvOww+wE4LABGSk+QQfxB5FphA8HbUD108QgOpBTNvj
         AvN8OErWOv8Ap6MKt2xDxyuMW5/gzYMb32EvatDIOvKDdi2+72N12FXMdlr5SHDiK/96
         VvIZd2smZjNRfLBaq5MS2mGC7Njd4cTw1HOrG6qV5kYXi9FKIFMmq+FnFlihXD/OJZyy
         HPmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="oDg5/eyg";
       spf=pass (google.com: domain of 3jmj3yawkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3jmJ3YAwKADskabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aI0eENJwclY9tJTUIPlQib3fJS8iF6MIj+Z7coGOlss=;
        b=fnZlV+ISZ1atfMI9kOWbj1bbSVSEOudIll3JWx1lX+X3faRH23dRYVoXdbn8tvCN/5
         19ZTn9k8iLdPkk/Ktjdqv9iMGsjIdn+xQmqVAOYLN1tNkHDwofJDXUvkHpi6oIp5Ub2b
         90mPS1FzVkgLu87PirOD27DEc4I4m0agX2X8Vyy+kOpBihiFGJp8ycVBPx5HbCpWXr21
         4+jOrxgm3c7MGjl8gl0xmfFLmb8HlWm7ruAeicr2FamnNFfG4H8EPe0+tfbTU1ZIdo7o
         q965m+VfWE0Ht96hKW/CkqZcsMqD3cnu7QqDBAbBnn0sHzfApkTIIeDab2cqqchFxtsO
         apFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aI0eENJwclY9tJTUIPlQib3fJS8iF6MIj+Z7coGOlss=;
        b=dpkpBEUt6GW6YDQ5Tp4D/mIv+bjsg4e78FY3Jph4uki2rS98NmiaQEfxgly7uxBuSI
         EhXDPWIgb9IpHO5eU5YzEGuZ5PKWN/eUJ1bkJoBugDViE50lie8sLBDSbXY7MCUd9szu
         CBmyGJ0+y1r58zaQXR+mHRp10m+4qmA8ef9iT0lQReLjJ6f3KYcGMsycJh2xWARpKvBZ
         APj2By3drnJeHcq+DHf4nOmo/A3LEPEZ7JjBv8X/heBILPpgtlvO33pgJrAJGjoaJwE1
         WV2CLloNcpSkL1qJ30bzRLU2nQWwVX8Ye2RCqWHmOE/a5FRtp0Fb8PTEIQWh+hPF4dv1
         pDxg==
X-Gm-Message-State: AOAM530igBJLxoPwvdfUt7jOCtw6mnPh9DiqoS4KWs/yaW0US3kfY5TX
	Pk5FpVFqxYt2cgmd87J8GlY=
X-Google-Smtp-Source: ABdhPJxEtReuUvZ1CHL9kj/PesYrb3VEcITOp/u1uOhW6kXuZRSFFRShOTkyPwQ6ZXm84aoFe7/eSQ==
X-Received: by 2002:aca:f449:: with SMTP id s70mr286382oih.126.1618436751640;
        Wed, 14 Apr 2021 14:45:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:23a1:: with SMTP id m1ls856313ots.8.gmail; Wed, 14
 Apr 2021 14:45:51 -0700 (PDT)
X-Received: by 2002:a9d:7f1a:: with SMTP id j26mr129696otq.244.1618436751327;
        Wed, 14 Apr 2021 14:45:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618436751; cv=none;
        d=google.com; s=arc-20160816;
        b=hUNSBnbjA9stfNaOFUCqZhkT34N0BccY8gCMrl+JUc69ejBgIWc3MgotdYZHcaxgqO
         CML6Meym/lR9urBZD6pGldXlSYBQhXt7SimDgRyWaZWjduHGScAfBlA5iDlAckF9kHpq
         YOcVBHTJ4fFPk7RviJrnYTd/MwllpYjV7TkD/60hX+nb3GEy/wDLW1bRKiAw5nHwp50F
         +xxj+VZLqEyoDFDDE1s7sfb6pcWuj1wClEmhp4rtmY9vOb/ykp4/Sgn5WGhoYFjMd6Sv
         lcR4soAc9UrBfQVygTtJYA1gIlBefnkaveCKAJ4vxhYvppVc8z7lh+kShTPk6fQSbdqJ
         3DYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=3tZuog4SLHhpY3z/paxkTsPCnEx+8O3qafW8rWHSl20=;
        b=kXCRyTgeGW6yZx8AtTVqAf87eAdPxqWW6T39Fb7zooJ6CL4oY0ULXQOt4FaC0U/P2v
         gjP5lBiCT9GIKjAN5qY5q/5w9yJtC7VNUNsLIoc0+hV4Iq+KX8AR0aRmJ5QH7/zNOGhB
         /7Fkh64B0qunPqFQNyJjYrE6cTaa+kfI+ZaPs1gSVESh1Uy4L1bjNC85YEcYLhuoLF23
         Dnn9gtv4nGJBUKkQTvTt0RpCy7tnyR1k2nJSSGWNyqP8F9a8ClPxBT/i7pMOtY3QOyL7
         5rDHXq8Xso5j433TfQRjBt6mE5mJ5dt3iMu8Rb0H+4v1ILuWgR1TN3Qq0PASQLVVnZU5
         Nyew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="oDg5/eyg";
       spf=pass (google.com: domain of 3jmj3yawkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3jmJ3YAwKADskabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id w4si52187oiv.4.2021.04.14.14.45.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 14:45:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jmj3yawkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id j137-20020a25238f0000b02904e05d066c36so125144ybj.18
        for <clang-built-linux@googlegroups.com>; Wed, 14 Apr 2021 14:45:51 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:7cc9:fe9f:6e17:380e])
 (user=ndesaulniers job=sendgmr) by 2002:a25:4f06:: with SMTP id
 d6mr94731ybb.105.1618436750824; Wed, 14 Apr 2021 14:45:50 -0700 (PDT)
Date: Wed, 14 Apr 2021 14:45:45 -0700
In-Reply-To: <YHYlQnFRMNdn/CDp@archlinux-ax161>
Message-Id: <20210414214548.700993-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <YHYlQnFRMNdn/CDp@archlinux-ax161>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v2] arm64: vdso32: drop -no-integrated-as flag
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: vincenzo.frascino@arm.com, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="oDg5/eyg";       spf=pass
 (google.com: domain of 3jmj3yawkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3jmJ3YAwKADskabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
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
level Makefile conditionally adding this. We no longer need --prefix,
--gcc-toolchain, or -Qunused-arguments flags either with this change, so
remove those too.

To test building:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
  CROSS_COMPILE_COMPAT=arm-linux-gnueabi- make LLVM=1 LLVM_IAS=1 \
  defconfig arch/arm64/kernel/vdso32/

Suggested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* Remove --prefix, --gcc-toolchain, COMPAT_GCC_TOOLCHAIN, and
  COMPAT_GCC_TOOLCHAIN_DIR as per Nathan.
* Credit Nathan with Suggested-by tag.
* Remove -Qunused-arguments.
* Update commit message.

 arch/arm64/kernel/vdso32/Makefile | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 789ad420f16b..3dba0c4f8f42 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -10,15 +10,7 @@ include $(srctree)/lib/vdso/Makefile
 
 # Same as cc-*option, but using CC_COMPAT instead of CC
 ifeq ($(CONFIG_CC_IS_CLANG), y)
-COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
-COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
-
 CC_COMPAT_CLANG_FLAGS := --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
-CC_COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE_COMPAT))
-CC_COMPAT_CLANG_FLAGS += -no-integrated-as -Qunused-arguments
-ifneq ($(COMPAT_GCC_TOOLCHAIN),)
-CC_COMPAT_CLANG_FLAGS += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
-endif
 
 CC_COMPAT ?= $(CC)
 CC_COMPAT += $(CC_COMPAT_CLANG_FLAGS)
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210414214548.700993-1-ndesaulniers%40google.com.
