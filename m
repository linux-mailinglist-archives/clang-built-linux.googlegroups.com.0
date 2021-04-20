Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAFG7SBQMGQEJ5EJJSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8DD365EC1
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 19:44:34 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id oa1-20020a17090b1bc1b02901507fafb74fsf6948602pjb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 10:44:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618940673; cv=pass;
        d=google.com; s=arc-20160816;
        b=yhbHc/q4zxBHSe9i61XsqiU3iIpyxU4k/nB7Ft1/9Unp2N7wov4bSJKPwuP2gn6SBT
         MqepNSMuH0VNs2PErBDiX0MvVR2PSAWq4Vi75SHr1Vp5gBTePfLLL8xWBmPT9Eg4rWtI
         lAqn/r1+moxpPmK/6dc8zo33aG9WSOYmyZ2/Ci0m7qd+yyHAz2OHBoqQPBehcr4lwHFr
         EOuAS9kXO+SlSaz05rMhgGdFZylqfKKNWLV+zFhadm3M9y/LYlG/gVdCjbm9WAWu/Z41
         SpyDQ4ACGaUaM76pOGmylpQLVVWy8eOSKdy9fs/YYqX1D8nMDjZpWtF/VRAnXHw2bh6E
         7xfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=p9cGPXWzeHLRJXtdBxKYtRl+4lonM3E3Ims2XBRb3xc=;
        b=Rjje+LB3aVwdStaSUe2d6cNt/3/8KW336hCaqQ+ty9/S3tiAug5+uwPkmBxaMmCtEY
         iBP2Go58XyIRJG9DZsM0qGVa+s6hZyReNwjPqzVcesMHRiRfYnR8xyqj3RCrVGGVWOSS
         D4JF53ElunQP72CUMR2O5FZxXH60i6v8AVujUJoriJgzBCrRNwDuo/MKSMgYr50Q68v3
         JWuVhdzIxikmkInjs3HYoAwDhIgXAV1eNnoNWpRq9T15C2tJv1RxLAdVFAOhgC0Id4Ls
         wvKP6tALA53uj2NcbjX5xOVjG2Bp756uFbac8WmnBAyMT3QnCU0wW7IFWP+Hg/q23uMR
         d+VA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B4z6VFCC;
       spf=pass (google.com: domain of 3_xj_yawkacwvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3_xJ_YAwKACwVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=p9cGPXWzeHLRJXtdBxKYtRl+4lonM3E3Ims2XBRb3xc=;
        b=AVdnGrc4iikQH2iVLOqWvsNYKnJ0F98q5qJqWP9ks8rsBdBsa3L25swyQNjAXMgnJa
         fIUWWFt4Is+dsCM2yl6i+vj85Dc1GP8Ah8bY/NzR/SwKJJh55R87qOnmjQzTGv9jX68G
         c4E1UxBRMOFK6ay7DzXpuxEAQNesAYm5QrJJXTANZSpNH5oVofjhNhAhkvv775uRXoc2
         1Q+cYMAOrv1YOXsYEF/1h6f+0MKM2R0L2heBbDMqdXV8RlV7tpwNdn+NGzRxGAilMwp6
         zd7LyyHpB6LCapv5Gv3eJTOrpAZ13du4kc/2BvfoABIfR8eHMjCQNo2q+QjYqFHguFsl
         fPoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p9cGPXWzeHLRJXtdBxKYtRl+4lonM3E3Ims2XBRb3xc=;
        b=Qzn5JDLQRfIkuhkXi/7NYgFfDn0q8wjKLLpNjIFxVNXdLGd573BntJpS6wY1IzWtPw
         UszUZc68wZ8dYOeEolSVfTt7rqcthmK8b2d2ZPMgwcDqsmjqx4DMGJyNrPu6A89kIkHX
         wWnffH3JXd+0jv1oSDtUgrjkAZT6dZU03BqlRlAQ6+zaJ5OezDlWQLvsdEguoR+pr+PX
         XCj48HwTTwOab2zcAuv2iKvA/m5S7YfQkYnnF+AIJHttDBXS0KwIcLWAbViBx33x+h4v
         gvAR1JfE5vdbtn4CN7xflUUUZ1w8uXEdOp4zOkXmEnZgtxXNUzDhksCJi+SKRQ4u/3jv
         WJMA==
X-Gm-Message-State: AOAM531qDECB4yK+usfuujOoR9CJOKO3ewlVvWSIpcZdqXahoNw5iL06
	MEirnHAPI8s2GJ/AyHZdzEQ=
X-Google-Smtp-Source: ABdhPJy1ilhwceW+fQZG9KHfY00TIzT2p33czkBgoEebpa5vmjcF7b+2qWIGcAJuN2lx72hB45PTvw==
X-Received: by 2002:a65:4202:: with SMTP id c2mr18024979pgq.282.1618940673021;
        Tue, 20 Apr 2021 10:44:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bc47:: with SMTP id t7ls11219539plz.3.gmail; Tue, 20
 Apr 2021 10:44:32 -0700 (PDT)
X-Received: by 2002:a17:902:fe8d:b029:ea:fdd4:e667 with SMTP id x13-20020a170902fe8db02900eafdd4e667mr29884824plm.36.1618940672285;
        Tue, 20 Apr 2021 10:44:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618940672; cv=none;
        d=google.com; s=arc-20160816;
        b=c3ushybhnfCi0WmHiLm/X8CmLC8fBIdNkLs+hHCGiyxRq1tYsvSLTMaz1iTjE8xEx4
         EalQWlVrqc8Y5M4veEXOJvgDPXaZ7QjreKmKrOa6vtcuHtwjl6jZsPuo7nc+C0H+WU3q
         a2VYIXZTK/yWbgCQnTcKsSaAGQy8TbNK5d1BXc4rbsc6MTl2V786rTgO2qSE5eCn1kMl
         nS75jJ8Kg54MyL2Vqmus/yJRvBNDscsUDGL8GeS9tv4bp61iW8I3/pmJTswJ2jg8Gg7G
         Z1hZfmQHVxpwGJLBqp5HV6ht7Oiha1QXAPb8ZTVv5KtBuhHCTNV9zxpOYcPlOmT4DHh4
         OwYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=ukVJrdVkOwq7s65WfCu+IbNVo5nWb4FRanDkk1R0eWU=;
        b=d4o/8DdhkEsNHws3edJr3ZqOOaxJWfVlx4YnO9KYFxlQx5YVRzjnbaNMddE8r9JZuN
         LpDlCZMr3hhA8JroOkh7A9Fn3NfPlFsm6LMpX6Dic75STNTreO1Npx1ZNPL8JGfPx7md
         74YaAJwiLNTYzMJf5nUOxan9AjT4pDwZgyCYv7t9ND+PR3hGR+sS9QY+D+LGJ0Sja4JD
         gyWNBeJtRlDK8PGZkTD1Zh6HgJV20kG5nrBVZqMCtW9IubGe96En/zM+ZCAMRpbqU5iM
         WsW4LBNT7zwQUXUgwJjr/IoFrkm93+xAVFVEQWXXOqA/aKpKwXcu0NiOoo2UlW5ZG4nb
         O/1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B4z6VFCC;
       spf=pass (google.com: domain of 3_xj_yawkacwvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3_xJ_YAwKACwVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id ng4si387997pjb.1.2021.04.20.10.44.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 10:44:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3_xj_yawkacwvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id w3-20020a05621412e3b029019a7b97dd69so11930790qvv.14
        for <clang-built-linux@googlegroups.com>; Tue, 20 Apr 2021 10:44:32 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:38ea:3e39:6c20:3a35])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:58e9:: with SMTP id
 di9mr4388482qvb.23.1618940671450; Tue, 20 Apr 2021 10:44:31 -0700 (PDT)
Date: Tue, 20 Apr 2021 10:44:25 -0700
Message-Id: <20210420174427.230228-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH v3] arm64: vdso32: drop -no-integrated-as flag
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: vincenzo.frascino@arm.com, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B4z6VFCC;       spf=pass
 (google.com: domain of 3_xj_yawkacwvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3_xJ_YAwKACwVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
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
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
Changes V2 -> V3:
* Pick up reviewed by tags.

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
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210420174427.230228-1-ndesaulniers%40google.com.
