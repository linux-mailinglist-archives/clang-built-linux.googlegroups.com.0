Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWHXUCEAMGQEQYXW65Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id E14BD3DDF64
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 20:39:21 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id r23-20020a17090aa097b0290176fc47a8b7sf96340pjp.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 11:39:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627929560; cv=pass;
        d=google.com; s=arc-20160816;
        b=wlbdkU2mNO4tFfDN+Z1yYBAUU7eLS7TCddGzVIMrGo2+/EenZ8rSveUlby3zhwPeku
         u64GGNpI/kddv4QlpCzhnu7r6wivuFWVpDxsGCHAyNWAbqLa/NwORfjKMQkSdP4iwV39
         5KydwR5iEhxua4PMTuS6QMP1mxcvcNPmkOi6gEufbPd2IeXK1gLpf2Jey/PkjvVneP/R
         IohpVDPMCPJOvSnIqzVpbN71ndOIZszQHx6HM/XfJ13PWQ111M/+fQAz72eMHWi4IcC5
         RbzEwqiJCoZfYuPoNO8aZDlDAbuXMiWMVlwhytrqrLnan4dDOItJk7teG+vbsfDvQeIS
         YouQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Gm9pCMOKsIREMNB5U0ib9uBF6fe9jlrk+aVEpZ3hN7I=;
        b=vQxgMt0XD/KNDFGk6KQoGz+EPIKgUJtHWasI4seX42wtWX8MTYDM2oNfB744UeedFU
         XxedJrfno49nbbvyV8avEW+59lgqJ5FTROf370YJPK9Qp9CdyeJraCuDxWkRFY1oO2SS
         hyHyUaCs7HdjfWEzUC2zRsbKDBHQkwYnx0jzatAEi130oRdBVaMMXCWUNtyb5sGUmnle
         6UsPT0vElADgnS/SEK+yi2Vk4azuX//6ML6++yHVz6SRTaBArhPENOppSt3+GEC+uADF
         NIgCC7RcaZV/k2WQbhaag71h7NQqdQjnwqkJIVi7vxcWP2M86FdfmRG1/06kiFXrk/mm
         w3Ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ibOF2huE;
       spf=pass (google.com: domain of 31zsiyqwkah4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=31zsIYQwKAH4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gm9pCMOKsIREMNB5U0ib9uBF6fe9jlrk+aVEpZ3hN7I=;
        b=P6WeDgOWa2WMcGI9Vey2yoBuYUqG2QAVensuh3WHVFsN+vXhdxXoWER4cSKxEYlbsx
         sKcnxkcEESIjiVb1CmOBONd1tnmI2P86XR2zRuqP7fWfMLqLiUs2dvpQ/ZSIlTDIBt6P
         9TBCBXoVH3k8Rg2sF2CqAJD7iRJHLCCvCxjXTIOIlQpItG4tf2zAmDbN80cKpdTRxSUc
         5JLK/zvWNWJKXStfMMk6rg/wnTvZ4IwO6JIGRUvG9diCvk5EWj9NGqBMGA8GjiZA+3b4
         PQLCrP1cuIVWILxXyMnlUxtCVsVL5CgRY918nDfPwAfuaqP3X79vds7WGLkMBj2CrrAU
         e32A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gm9pCMOKsIREMNB5U0ib9uBF6fe9jlrk+aVEpZ3hN7I=;
        b=NQtdPk5gZ5A3J2nlrHReHfqyYPP/7QB02lbDkKibHPkTjgzCFbHYKtdy7v44HC1F+n
         wA84/z76RMcfYw0OOX60vngIrlWV4pFm+re9HIvXsAu8cRgeM4bvtaWKqkWixKjsnCD8
         lXqZp8ZCSIBSMUvZjJhv2KPFH3zf5djjK58jtxwX632EeevbIqfJXj0IbOthiSktNcjL
         nEQ9VCrYsENM9PTL5aHW5Ru2xeORDVn8iHF5XHj2tcFyQo8insEVwNpXxYZwZpTVlZl3
         Hc916G6QkNHgQ+VZGlJKSRKkM6Brmk6Kbg5FPk6sI/DqfqK4bdIcN2LslAVsDKn+nPt3
         oY7Q==
X-Gm-Message-State: AOAM530dw3P4domGXK07hni4rizsH6ykc4t7lI1NwQcxkrN6R/w7pkh8
	vHwss5hiOl6Kw1lFYTBKTbc=
X-Google-Smtp-Source: ABdhPJzGi2dp7ZI2+aA/5yTaNDoXqgnzD5KVYh6xU5vET8GK85owN2tncB7qrOjDcWq+BQFcVGWYZA==
X-Received: by 2002:a17:90a:c8c:: with SMTP id v12mr246988pja.37.1627929560672;
        Mon, 02 Aug 2021 11:39:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:79c4:: with SMTP id u187ls2335383pfc.11.gmail; Mon, 02
 Aug 2021 11:39:20 -0700 (PDT)
X-Received: by 2002:a05:6a00:1790:b029:32c:f886:8216 with SMTP id s16-20020a056a001790b029032cf8868216mr18306387pfg.81.1627929560158;
        Mon, 02 Aug 2021 11:39:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627929560; cv=none;
        d=google.com; s=arc-20160816;
        b=FkAqXcFMqoyvVo5NKHQOd2aNXdaMGBd48IqQLNIgL9zvROksmeylMWRKR/GuGIDELE
         +9lnf+E7jggneJHPLbKfKgsagEAvyjUjfYhRtndzWyKeA7CWiJy/9zMnSkw1b2Bagc6y
         NFQDcDIAu5EtCgQ/+9yQ8T1UMMObtIHCT/tQ+9puELiUO5RDu/rDlJXZUMxNk9nWwCPk
         dSjjmaJjy8Uh6/MiR4TldeO6QhleCe4tSKfhQ4ePaOjaEM0AXZ/ZP2Lqw9knGwb6/gTd
         tepXGXQ2zg8tOsfzUMeKyBJvi3KzAZUuTPXFZl9nbd283gxn9Fo2gQ5QfH9PchwpoZlg
         5vPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=gB4C2V/JRguj4rIBL7q84P8CEYcrLKzVf1rrlRWL8ws=;
        b=jdiYu6OAeh/lDpZDjPx40lRztJJoxPVIJ2xZ1g3y9QRA57RpBMwCSCupe2E0cHCH9V
         bPeHLX3I6u9kQ7XxRUwWJtoTIa91qybQOFfjL7qGfubtfqrrYC30LpvqSszkRbSEQJc6
         Y0orE1Yfc6TXzOWk4yGERNA2byOKQGYFAEmpCS9yiEv9niyb7oamiLOHjl5Sa47AeUhh
         h3joCO/xGkI8Rk3P4fMU3M8aunCCawTih8NPNdCJCGN/HESCySwLYSoJTcQEWow+JuUA
         SWYslnxI9o7NaLhDxT1zfujVCG6HdLHQrRvuVfKd2eF4FbnmEQMnSKyzLKsmP5lO0TRZ
         eBKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ibOF2huE;
       spf=pass (google.com: domain of 31zsiyqwkah4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=31zsIYQwKAH4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id bj15si571510pjb.1.2021.08.02.11.39.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 11:39:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of 31zsiyqwkah4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id y125-20020a2532830000b029058328f1b02eso19708264yby.7
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 11:39:20 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:3db0:42c:8665:a4ae])
 (user=ndesaulniers job=sendgmr) by 2002:a25:be09:: with SMTP id
 h9mr24786099ybk.239.1627929559410; Mon, 02 Aug 2021 11:39:19 -0700 (PDT)
Date: Mon,  2 Aug 2021 11:39:08 -0700
In-Reply-To: <20210802183910.1802120-1-ndesaulniers@google.com>
Message-Id: <20210802183910.1802120-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210802183910.1802120-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v6 1/3] Makefile: move initial clang flag handling into scripts/Makefile.clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ibOF2huE;       spf=pass
 (google.com: domain of 31zsiyqwkah4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=31zsIYQwKAH4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
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

With some of the changes we'd like to make to CROSS_COMPILE, the initial
block of clang flag handling which controls things like the target triple,
whether or not to use the integrated assembler and how to find GAS,
and erroring on unknown warnings is becoming unwieldy. Move it into its
own file under scripts/.

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 MAINTAINERS            |  1 +
 Makefile               | 15 +--------------
 scripts/Makefile.clang | 14 ++++++++++++++
 3 files changed, 16 insertions(+), 14 deletions(-)
 create mode 100644 scripts/Makefile.clang

diff --git a/MAINTAINERS b/MAINTAINERS
index 19135a9d778e..3af8d39f43ef 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4501,6 +4501,7 @@ B:	https://github.com/ClangBuiltLinux/linux/issues
 C:	irc://chat.freenode.net/clangbuiltlinux
 F:	Documentation/kbuild/llvm.rst
 F:	include/linux/compiler-clang.h
+F:	scripts/Makefile.clang
 F:	scripts/clang-tools/
 K:	\b(?i:clang|llvm)\b
 
diff --git a/Makefile b/Makefile
index 6b555f64df06..444558e62cbc 100644
--- a/Makefile
+++ b/Makefile
@@ -586,20 +586,7 @@ endif
 CC_VERSION_TEXT = $(subst $(pound),,$(shell $(CC) --version 2>/dev/null | head -n 1))
 
 ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
-ifneq ($(CROSS_COMPILE),)
-CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
-endif
-ifeq ($(LLVM_IAS),1)
-CLANG_FLAGS	+= -integrated-as
-else
-CLANG_FLAGS	+= -no-integrated-as
-GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
-CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
-endif
-CLANG_FLAGS	+= -Werror=unknown-warning-option
-KBUILD_CFLAGS	+= $(CLANG_FLAGS)
-KBUILD_AFLAGS	+= $(CLANG_FLAGS)
-export CLANG_FLAGS
+include $(srctree)/scripts/Makefile.clang
 endif
 
 # Include this also for config targets because some architectures need
diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
new file mode 100644
index 000000000000..297932e973d4
--- /dev/null
+++ b/scripts/Makefile.clang
@@ -0,0 +1,14 @@
+ifneq ($(CROSS_COMPILE),)
+CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
+endif
+ifeq ($(LLVM_IAS),1)
+CLANG_FLAGS	+= -integrated-as
+else
+CLANG_FLAGS	+= -no-integrated-as
+GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
+CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
+endif
+CLANG_FLAGS	+= -Werror=unknown-warning-option
+KBUILD_CFLAGS	+= $(CLANG_FLAGS)
+KBUILD_AFLAGS	+= $(CLANG_FLAGS)
+export CLANG_FLAGS
-- 
2.32.0.554.ge1b32706d8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210802183910.1802120-2-ndesaulniers%40google.com.
