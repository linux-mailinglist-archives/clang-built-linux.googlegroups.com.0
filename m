Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCUZ5OEAMGQES7DFEUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id A29F33EDEB4
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 22:37:31 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id b127-20020a25e485000000b005943f1efa05sf8399916ybh.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 13:37:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629146250; cv=pass;
        d=google.com; s=arc-20160816;
        b=a/nVJkDpzP0Ija9CX24U7352XfMdKUHNgA6s3zsTD8BjDLWG5rzhxnqg+fefvLRiOY
         vvrHDYGi/rkUT9hCj500ou/UCr7yRw/wl3KMnxmJdtG3eRe2AYT78+T9EiOUzSEg7sd9
         I7oojw3y/zPT1DXNNyKjLnDOayLD7rvpWNkyepkCipWtL6R7osPf0+m65rJOQ5QLC/2E
         FlTBxIL5pahuueXbhG2fSeZkpBp5Xhnje3Xxyn/5vAXaoAotdB3y+CROv8JaLjNN5RZa
         oejcgABQkkspDH5/5UoGRkBzKoGxTpPXuAn6SYdQtozwQYM+NndywW3cvMGWMQ//sil/
         K41w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=X1INDS9XxnGdcktmOw7S7C4qf3Zbpt8+1qoiMDEjQWc=;
        b=gohV3Ia/2eeGwJwgNOh8roMy61DwlxLud4oI/RQscGQsn8Ln+Y8vrDuXsl88PD2pss
         M6/CN9P1P9iuLsDnFSeuBqt4CfT+UTLF+++9rz8M/rr161A7/sAfQJ2eW5Jb/ZnpAUX5
         sxRh27d7uk7Wb1f+qI3cmtzYW/HWbjzyhumwcGQuqCdoRR+uLMssqueZZUHXWG4b373P
         w65Fta/QjY57dCrkI5XsN0beQpiZZALd+8IZ9Xfg5OP2FW3MYuXe/H6Q3HSJeIdXbqAW
         xB9MMf2IaByTV6IpkXhPRvpu6F4kqoX24OZ0/mGCCDEhoI7YQkJHWu4Re4m2I1+EAgsS
         tXkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sUwYxK9i;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X1INDS9XxnGdcktmOw7S7C4qf3Zbpt8+1qoiMDEjQWc=;
        b=VsmWea25cePeOcoJ1B76eAlbvw28KnvuggIJhZbX0oaeDP6g8GUoW5tt6mk3Gdym61
         6D6ikc0Kyu5HxDUjr6HFbT0DyHz2QgwllbEoxpTSJxbSS6MYdZX0aIYfs0xIBeSwbIO/
         6YASgV2gcrb7kH2rgaFG9KktKRWvM3Hk4L1/FTpvrRea7QjxlqX4xNb3Nj3wHLy2IOCj
         rrAbBYsrFxKjlX6+P0bz47MnABeQu0jQ9+TS6qsREkuosoHmyv4Rk3fRZI3b29vyDKT3
         8RC2tX63D+69NWy36LuaBPn1n1dj7QdvG+a7XDBkUelB9Ic6Jo8QtQsLtQIkdayntg3W
         +dVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X1INDS9XxnGdcktmOw7S7C4qf3Zbpt8+1qoiMDEjQWc=;
        b=Qiyi/Oi2ON6xVP2t2bifhuQx/fxwi2QUbgy+K8bVmMSCyR7VrL6oJylUywG2RIUOtX
         dQdfDuFaUa9HmsvLg7OaJVyfrK9VQ+1vCH8a1e6RvG4z1PtYFRBM2BkNIhjqKDz+SeVq
         Z4eFbi2H3SesQsseCVRiWW9VNZfszi9o1f9qyO9qNvzs+lo3GybfXvkSIihsNLG2s9H5
         OdJYxt84A4ergSJ99FPEkDmWdmIg6aI7dPTH7hcGnFa5ZFKNZahzt13xgo+ARpY3cogs
         rfyn/yoOW6Rnk+BFO+aY2H9G2iuwTCk/Bx20Vj8Z9GSYlvOqFTpMK0VcSf9R487oWMsg
         hakQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530d77WWfyqVMWVK/vTmncSONSMv2wFVUVH+RJUp8V/2mmu8tnr+
	GNnuw7vGDn2G2mkR33eqKRY=
X-Google-Smtp-Source: ABdhPJxvYqEU0aIX9gaLux4Nd6yy27a3D7W2hJWnmIaVTTX4pZZ5WhoS1oKEToGbSGjlWR8gfGJwKQ==
X-Received: by 2002:a25:8746:: with SMTP id e6mr403336ybn.76.1629146250728;
        Mon, 16 Aug 2021 13:37:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls218351ybc.2.gmail; Mon, 16 Aug
 2021 13:37:30 -0700 (PDT)
X-Received: by 2002:a25:c013:: with SMTP id c19mr334375ybf.103.1629146250271;
        Mon, 16 Aug 2021 13:37:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629146250; cv=none;
        d=google.com; s=arc-20160816;
        b=nvQXy/9DIMflWlo4LTz9fNmOgMYZnFmGl72iAAAlYdgASiH9BziP3uqpCyrjWlmmzn
         y6sIBOjXaMlIA2nG9dW7IQq+UJNVtjwR3sqanbhKIx8ZY486/SX6245szG/p99iNIyhO
         fPHHSXPeEos+6LIwDU4eg5I5Cz/U8ErG7dO1gyTDtN/SZpuqfS4nBn5RcsEDZWtmXWL7
         VFqvL+C9cn1FF8DfCYin/7DeJ4PxpuP9BmwTUVAMeEtY5saDgjAeuzgmLAyJ1q2tl6LA
         sfwVotpofOVsRML9Ch0ptPmJDdW+Tl0Tn4IxTt/L+EXIwVw/ZAgPRX34AKN1LaBkfmYl
         ABlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=UdQ+uXyI4PpK6l32jvalmrwbiZyoNJ98gjW/m4JlHYE=;
        b=RWwr61bU08H1k7Jm8ayKRW/AfSSjmYNs7uQSii5naGrqd29Inb6uCY3cEzLisVWdwY
         9I1F6p48DnfYRPIHk6arrlu71Oy9iqZirVO5yUL/IxREGFQSTIvFJsk7pKM1OpU4m44y
         SZWDm6Ru5aqMaLht7B4T0UyuUdb0HGIsePsbK33QSFsVzb70fDWvSy6ETQV+uDhZuYMh
         wpglxHs5fkYCXBtKsJgIiPplgViRPyG/hzQc51FZeN6xG7Qzma6G9c5C5Mm02syMBpnq
         X2NLUereAlss62k+rY2J8RyPL457eAqlgSrdBLYsH6I3NzeBTnY1nXv8OAwC7uys/fln
         vraQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sUwYxK9i;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u17si5065ybc.5.2021.08.16.13.37.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 13:37:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 15DB860EFE;
	Mon, 16 Aug 2021 20:37:27 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] kbuild: Switch to 'f' variants of integrated assembler flag
Date: Mon, 16 Aug 2021 13:36:35 -0700
Message-Id: <20210816203635.53864-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sUwYxK9i;       spf=pass
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

It has been brought up a few times in various code reviews that clang
3.5 introduced -f{,no-}integrated-as as the preferred way to enable and
disable the integrated assembler, mentioning that -{no-,}integrated-as
are now considered legacy flags.

Switch the kernel over to using those variants in case there is ever a
time where clang decides to remove the non-'f' variants of the flag.

Link: https://releases.llvm.org/3.5.0/tools/clang/docs/ReleaseNotes.html#new-compiler-flags
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 scripts/Makefile.clang | 4 ++--
 scripts/as-version.sh  | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index 3ae63bd35582..4cce8fd0779c 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -23,11 +23,11 @@ CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
 endif # CROSS_COMPILE
 
 ifeq ($(LLVM_IAS),0)
-CLANG_FLAGS	+= -no-integrated-as
+CLANG_FLAGS	+= -fno-integrated-as
 GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
 CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
 else
-CLANG_FLAGS	+= -integrated-as
+CLANG_FLAGS	+= -fintegrated-as
 endif
 CLANG_FLAGS	+= -Werror=unknown-warning-option
 KBUILD_CFLAGS	+= $(CLANG_FLAGS)
diff --git a/scripts/as-version.sh b/scripts/as-version.sh
index 8b9410e329df..a0fc366728f1 100755
--- a/scripts/as-version.sh
+++ b/scripts/as-version.sh
@@ -21,13 +21,13 @@ get_canonical_version()
 	echo $((10000 * $1 + 100 * ${2:-0} + ${3:-0}))
 }
 
-# Clang fails to handle -Wa,--version unless -no-integrated-as is given.
-# We check -(f)integrated-as, expecting it is explicitly passed in for the
+# Clang fails to handle -Wa,--version unless -fno-integrated-as is given.
+# We check -fintegrated-as, expecting it is explicitly passed in for the
 # integrated assembler case.
 check_integrated_as()
 {
 	while [ $# -gt 0 ]; do
-		if [ "$1" = -integrated-as -o "$1" = -fintegrated-as ]; then
+		if [ "$1" = -fintegrated-as ]; then
 			# For the intergrated assembler, we do not check the
 			# version here. It is the same as the clang version, and
 			# it has been already checked by scripts/cc-version.sh.

base-commit: f12b034afeb3a977bbb1c6584dedc0f3dc666f14
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816203635.53864-1-nathan%40kernel.org.
