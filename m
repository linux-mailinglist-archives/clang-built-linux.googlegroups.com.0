Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHVY3P6QKGQEBWLWP3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A0A2B9C54
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 21:57:04 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id y19sf4943554pga.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 12:57:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605819423; cv=pass;
        d=google.com; s=arc-20160816;
        b=LFXxpzNmd5k2DQa7ZYSUE04/BmvGHpzP/TKB957sJOnvEUHk1ORGHOctVVvEjY2SKX
         x3SFl6cCxWmscPZUZ84ys2PpbXOPkfiTibeCcN/+x64fnOET+gaRbBaHLDXXvVRgEa9N
         2NgKJmaZosf37XDpa13aM4DCPHQQzN+zDcbHE4YjKsVFxrvm7xdTL7wVc+bWfjHL62w/
         X0Z7eZs5jbTJAZkZSkVgMJ01/ClBTRsYzDA4jucdlxsZzjD3N6i+TBuP0p+CACovoHgh
         Sc8+4yZNU4lFHgLICqcV5e7jhqIr4mlMO+6YEBLRh48oalkHfEqTbYL0bea0S8QHE/aY
         I/bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=HG2ezQpEZCVhOrK3ZnpXp+sj8aVwS8rYv6qF41iobBE=;
        b=UTU0bAJncxRGd4P05KJu8sZ7Km48pEcTyuJMfFcEuXXvdodkYTTSnMGGPncznPS0h1
         evWNqlICrzYqU/lI9BlXQ2cxvg/GY2QH5G5RMnnwJ45AP3/F1x61ghDB57uw5hWiXqNd
         29JB1SysyJWGumi1XBcBxSalHgi1ycTXyahnbMZc0gsMNlWxVxSnAdj5YT3ST2en9hhx
         sIxGT6+9/6qWHSHQichaGp7VVZ75fLkY2WCW0goFu4P8RC+8fQKDcAfb/igBXWb1exZ7
         s5EfRWddSard0Jm2+NFY+THVsNx+o047y+LROlzu9jUxVekJwK65xKO18yiJp39xJxNc
         wFKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uDFEv2oS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HG2ezQpEZCVhOrK3ZnpXp+sj8aVwS8rYv6qF41iobBE=;
        b=VrA/+fCV5c1IHdu8NSD0TLc5JqeW6kx2ZpxduB34wqLTnKOsePViyAbupdqh7lIHVu
         R8Anm08mNrd1OI2A9KDniCatmCs7ANkQgQHtMxK1lNnx8TScDduui1GkJPo9GR/6jrJt
         dFx+LzzrFe5P+5EEHX6P9GGaZGyor055Yk6gWizATApqRI8MfEzHn+pK/4EQd9M6FkXl
         eC7xQZbUOHJ+bRGeaElLTCazo1MzUk7WtcawTMsMeLjcHUM8zotF49VDKpXLYQ/rhIcv
         kFcBLiAd8J0L2Ywyc2YX/LhhrR8l8QDOyiKwxBS+CjHZRMwuAtdM5zt3xN0X0mipbOvZ
         g2Tw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HG2ezQpEZCVhOrK3ZnpXp+sj8aVwS8rYv6qF41iobBE=;
        b=V+kA0VLw66urGkYI+9KifSTdvSTl53oo8jZq90Zu3MJ2yeR4HdkAOLnDA/dmIAsoKz
         4i0iOS/vHZht8TZ9DBrlJcXwmaGd07YFCAYPibPZ9MxwLS6jxbEi1ZeNFglL5W5XpMB3
         UnK1FgMzeYuBIjFoM1f3Xbjd5ETFs70iVBi2wpsNAN+wXHzmqqwZVl+tUHDi1iS++cVt
         KNX8zDXDXjy+l6oc9n+9ZcyIFxxNu7TQn7DEBVC2Wem8/9wHXjlm0Xua6uwpZkGYUcCz
         8B5UYEhfLd5y9uq5zFkIId37uMot0nwDNd96vPCIlfks1jZa0t713Gdq3nePemiLFEAL
         S84Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HG2ezQpEZCVhOrK3ZnpXp+sj8aVwS8rYv6qF41iobBE=;
        b=duAReUSuKuHv1C9jHtxCD8RLZbFDq2bwMedsHA476+PVxNDjkH+5Bzfl33rlPLyQpk
         /qAqYoVBWN/qU19YQ7oEmsg4rKQXRAazmSI7OSPq/4YHiMLziDzY+hu8QJqO9gXurjjs
         G0WUMPzX0ubC8HRRZL5kHSW+H4nFydtpDdrJol4DJIN6HEhljKlBrM3gRZFFNYTbxsBR
         bxcYHGC5S5glLmB8fPjy6+Sug7TvAsH6y+sqao6aVqCCOgpQVsY97UaVXugHLCW2iewn
         NX8dH/+0q6VZBFzpsozdidSTAisY5lYwwCHzv027R3bVuIYmwMfv70sMcmppwxYfOasz
         5UKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wpCJeAP63oERowYma5Hzn1a5+H32lk0Yyj36zpVlGXTfc5V5z
	jJytBuftgmIS4Jf5jkdCLao=
X-Google-Smtp-Source: ABdhPJzYAcfRIQW66mX9hhtejGBIoslLCeaYobDx8LU9jC315pP4nX8s5dCybBB/yD7dm3mnhbCb1w==
X-Received: by 2002:a05:6a00:1744:b029:18b:a1cc:536a with SMTP id j4-20020a056a001744b029018ba1cc536amr11069857pfc.74.1605819423068;
        Thu, 19 Nov 2020 12:57:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a503:: with SMTP id a3ls2052271pjq.2.gmail; Thu, 19
 Nov 2020 12:57:02 -0800 (PST)
X-Received: by 2002:a17:90b:3797:: with SMTP id mz23mr6632840pjb.147.1605819422458;
        Thu, 19 Nov 2020 12:57:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605819422; cv=none;
        d=google.com; s=arc-20160816;
        b=uJXY5r4FGH6OADbpyyPPSMsEhrmWALcr2z2XUnTuu4jVkBvVM0BXZ+gIkIj0Wf2ami
         up7AyybhAdQWT2lcb2dRwKO5K/J7Ksh1SFYbAUpDPjJXk/K979C6N133bhlMio4X0yIM
         4RVUOEAVreIIml/tG3u+BbzZpGxZPFv3XTw/s/HVywhZ5vSv8hUwqPW855vlvt+C33Wn
         XvuwCw0ohD4pojfmyhmgEW9lf9NcPRpmBypk/guvlV/0j2MbbmJmFfPin5ls3umrHQhB
         U9QhkHhkyfvFcJkFklnflpCNZzHZpHs52LQVNwemJBFTT4cwkhFFvCpHOBpWmgjDmpe9
         JVYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=moOxL8imdBPuCB1TVd3+9oe+UH2t4tfUVnJemRAZuA4=;
        b=jCFUO+wEvw2eEsR5ZZMKSEJ+U9IwcdtYiku8rsEQgRmi4LH06nBLF+JbGV1n7WnEHD
         XRfZflztW2nV44bEecioUbhud9Z+CUQnLbMJl5ufuUR0tlgHNhWxCAMmqNnwe/8kVPOI
         qvEkvVIBvEd9HQhBKKG2t5OOQr4cw5k3mRwBwQ5YpXl0I0Ha+JV9cUmJzG8Hu5j25lOG
         uzIi+7Azvk1TUh9PweQxwcDuSrFTmtnrGhXASIw9O/jdsJekblqQZGZSkDjjSqkjkWPy
         KIK25it+vu/EXZiaZJf9iv2OkQZw71dKy/SC7YGFJm9rLXKABO9kRMwxWnJEyygk8cVk
         //3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uDFEv2oS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id s9si113468pfm.1.2020.11.19.12.57.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Nov 2020 12:57:02 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id q5so6820197qkc.12
        for <clang-built-linux@googlegroups.com>; Thu, 19 Nov 2020 12:57:02 -0800 (PST)
X-Received: by 2002:a37:6688:: with SMTP id a130mr12248572qkc.163.1605819421641;
        Thu, 19 Nov 2020 12:57:01 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 82sm714348qke.76.2020.11.19.12.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 12:57:00 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Kees Cook <keescook@chromium.org>
Cc: Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	"kernelci . org bot" <bot@kernelci.org>,
	Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 2/2] kbuild: Disable CONFIG_LD_ORPHAN_WARN for ld.lld 10.0.1
Date: Thu, 19 Nov 2020 13:46:58 -0700
Message-Id: <20201119204656.3261686-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201113195553.1487659-1-natechancellor@gmail.com>
References: <20201113195553.1487659-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uDFEv2oS;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

ld.lld 10.0.1 spews a bunch of various warnings about .rela sections,
along with a few others. Newer versions of ld.lld do not have these
warnings. As a result, do not add '--orphan-handling=warn' to
LDFLAGS_vmlinux if ld.lld's version is not new enough.

Link: https://github.com/ClangBuiltLinux/linux/issues/1187
Link: https://github.com/ClangBuiltLinux/linux/issues/1193
Reported-by: Arvind Sankar <nivedita@alum.mit.edu>
Reported-by: kernelci.org bot <bot@kernelci.org>
Reported-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Add condition as a depends on line (Kees Cook)

* Capture output of "$* --version" to avoid invoking linker twice (Nick
  Desaulniers)

* Improve documentation of script in comments (Nick Desaulniers)

* Pick up review tag from Kees

 MAINTAINERS            |  1 +
 init/Kconfig           |  5 +++++
 scripts/lld-version.sh | 20 ++++++++++++++++++++
 3 files changed, 26 insertions(+)
 create mode 100755 scripts/lld-version.sh

diff --git a/MAINTAINERS b/MAINTAINERS
index e451dcce054f..e6f74f130ae1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4284,6 +4284,7 @@ B:	https://github.com/ClangBuiltLinux/linux/issues
 C:	irc://chat.freenode.net/clangbuiltlinux
 F:	Documentation/kbuild/llvm.rst
 F:	scripts/clang-tools/
+F:	scripts/lld-version.sh
 K:	\b(?i:clang|llvm)\b
 
 CLEANCACHE API
diff --git a/init/Kconfig b/init/Kconfig
index 92c58b45abb8..b9037d6c5ab3 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -47,6 +47,10 @@ config CLANG_VERSION
 	int
 	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
 
+config LLD_VERSION
+	int
+	default $(shell,$(srctree)/scripts/lld-version.sh $(LD))
+
 config CC_CAN_LINK
 	bool
 	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag)) if 64BIT
@@ -1351,6 +1355,7 @@ config LD_DEAD_CODE_DATA_ELIMINATION
 config LD_ORPHAN_WARN
 	def_bool y
 	depends on ARCH_WANT_LD_ORPHAN_WARN
+	depends on !LD_IS_LLD || LLD_VERSION >= 110000
 	depends on $(ld-option,--orphan-handling=warn)
 
 config SYSCTL
diff --git a/scripts/lld-version.sh b/scripts/lld-version.sh
new file mode 100755
index 000000000000..d70edb4d8a4f
--- /dev/null
+++ b/scripts/lld-version.sh
@@ -0,0 +1,20 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+#
+# Usage: $ ./scripts/lld-version.sh ld.lld
+#
+# Print the linker version of `ld.lld' in a 5 or 6-digit form
+# such as `100001' for ld.lld 10.0.1 etc.
+
+linker_string="$($* --version)"
+
+if ! ( echo $linker_string | grep -q LLD ); then
+	echo 0
+	exit 1
+fi
+
+VERSION=$(echo $linker_string | cut -d ' ' -f 2)
+MAJOR=$(echo $VERSION | cut -d . -f 1)
+MINOR=$(echo $VERSION | cut -d . -f 2)
+PATCHLEVEL=$(echo $VERSION | cut -d . -f 3)
+printf "%d%02d%02d\\n" $MAJOR $MINOR $PATCHLEVEL
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201119204656.3261686-2-natechancellor%40gmail.com.
