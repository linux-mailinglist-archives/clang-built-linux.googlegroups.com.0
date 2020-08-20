Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOXJ7P4QKGQESS455VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id C57A024C792
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 00:10:03 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id c23sf917353vkc.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 15:10:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597961402; cv=pass;
        d=google.com; s=arc-20160816;
        b=i8Vr2CQc0PWf0CgKjTB4M6YXtGs7Qqur5vXpPLnUPiV3qgel439/weS7zTxeTZxl9C
         vofaSh/rCIRA0QtryRx8HsE//xAUzqwFOrBUkmqDrHuvtXjoRe2ILE+HsdH61GiZEn3X
         b1M9UP4CPMufhEAQzCZn5X9WrVewJ7j6YydBaRZQ8ym5LY2Q3nq3b9bTKoLOCLPbeHdD
         +8Ik4UNbh8tpmphX6OqBpYLdwAnCbd9PW95nzMQ2L7isvaLGAaHgMiwtSnyhXSFypXfZ
         JE2rLZRRn+7snbhUTEQAHElxh2kRAXFRbO3Fo53RF04dyaU1V1wgGCvW8CakiuON7s3q
         1LHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=tY7gvzlEJ722py6Jiei5QtSLtpgk/W/2bVCGdwLl93g=;
        b=Tk2Jmz02stNFThL+pIuv9YTe//zTB8ZJF6CHajaxabWFPtO1E0EYwNksZYRD+lFcDO
         TpN5jVPgoByhGZh6132/pKNz/irx9p8CvhEeJT2SwFOCeX8ilnlcTh0oNHgARI94GY0P
         BCLMExeVS9adJm4da0Q4HzcgUQ2ghor9Ld/sTphgvVqEFJbnL5/WB2pM+WH4qxmb7Gxz
         SoUpRrsKxCSdWWgV9NZZG0Df8isf0+2dw7vNrkRmBXEsf5K+0KomjLAcCPjjyGNU2/LH
         3Kb5H0SwiPxAJmV6llgNLrbJsacD+TqsU1poFXnug65Z9x9eNCX/mt4TIW8RrI1gNJqk
         mTOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jp0ZPR0F;
       spf=pass (google.com: domain of 3ufq-xwwkaj4lbcq8sjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ufQ-XwwKAJ4LBCQ8SJLGCPQEMMEJC.AMK@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tY7gvzlEJ722py6Jiei5QtSLtpgk/W/2bVCGdwLl93g=;
        b=Zrsso0HSGu2EJ6fRHtUA1z2NM4Wp9Yy9sDYMF5DPEM25eRwjfxxwZKUTdDttDh0yoE
         Y+CXMDOvsfYDedLL12AkIZ0fM+N3W7ierC7QQ6MWVCIPBIBqwsFA7VLxdwAsZQtJfHJ8
         OhlFb7AmvuIVK0geDi1HC4agYz5x6em4W0Xj99Rd1CZvN2vEp3YrTalt/RsKAxbnnQDQ
         2eZEOM1ljD6dtfJ56b7H9WeKXdgtk6qGgDuKUDYk8Fle06K/jNFxrqK14MX9+06swzN3
         sD4D7qVnt4AB+I5D2L6ZIRP9ZafwyKhWbvddPfPfRCXjU/NiM38gB52lfmrDw746Usfd
         eWHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tY7gvzlEJ722py6Jiei5QtSLtpgk/W/2bVCGdwLl93g=;
        b=lUVoGTE+2OmpkGyBxcEDayyzEFeejGF97rwAYqEbHfp6FY7ubmsIPz2FXPu1iTlqeT
         Bf0Ren3LBWc/5WU3fkSC91Zn0vTc6yedxBKaQkQUhaijfuNW/3+OFEBz5k6Sz9b+ClLU
         PIgHmER1+dbN63ccuvz9hcwyo17gGXSRpNTXdr+Wyh4SmINhsR38AqWSw3v8RA53A57p
         GgxxuqK23hQMiaEQhGEliEBAPPg97XJoVardjshgJpbIGqJVTWYylxeBruepNf2k6Bq0
         wk7963aVnjnibmLaFpEYIx6K9NY0OFvO2LyFuIFqJuAryCak79gt84uvfi7BPDH7cIxG
         sSdA==
X-Gm-Message-State: AOAM532tzyxVwgUTJkQEkFMe25V82ROGJ+6eJf44KV2yAf9ZmcF95Hni
	y6qwZCDu6vvOkhhJ6qQ5I2I=
X-Google-Smtp-Source: ABdhPJxpzSzr1y8Cjf5JBlSyh8FTsHgW0ko2SxcwfGIXPayLpl5ZWC1cdAi/hQthgiIy5yYSBwF6mA==
X-Received: by 2002:a67:de03:: with SMTP id q3mr131496vsk.160.1597961402526;
        Thu, 20 Aug 2020 15:10:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:6e0b:: with SMTP id j11ls3689vkc.1.gmail; Thu, 20 Aug
 2020 15:10:02 -0700 (PDT)
X-Received: by 2002:ac5:cce9:: with SMTP id k9mr57961vkn.17.1597961402193;
        Thu, 20 Aug 2020 15:10:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597961402; cv=none;
        d=google.com; s=arc-20160816;
        b=f7LuHcjd5qZ4oRIp9XtHXRL7pECK6YiSuo4uf/60bapyYb3zfB3AIxdbLVgczqCUM3
         IvGkUG+lEl/Vn54j1neZHsz35lLfar/X8KEUkPNUyoxVvJJxpAqGBRv9Tz3nBNbUEpWp
         IZ1CV7yKgaKK+RXi4HSKIgKdIU99/WZY5/nnf2LA3lUErxMf0b0aOg+8E3PEF8vuyraE
         9litloX2d/F18LqPWJ9h3V2zD8cUeBmDveL9hluRwH523iUhA3pb2U79F5wTchGbfJUQ
         X8rb+tn4Z7iwl/ilpA9iTutvS6FsNLY/WCuWS0nX/LwIsXRu0iZAXDBpmMAe3KxFgT6K
         0JZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=yJwAau26hmxXDK7LYJ3raaNV0n3CHaFw9SQbcJH8sEA=;
        b=hhhWNiySYRuXkAgQ0zedRm+UHcm9jxNkV5Ekm71g5eZBKSf4iXNt3VvfzCoRykmzHX
         qQAx2M6mApvriFkacueDzyIUtm6zQqQ6H6B4UFac4Gl2WEsUVWflFF3p0+0rSctZ/C+S
         lbsbDr5aZXGW1t9mSRYJiguBLNtat55rWd/6o8fA/aht3UAuHKRlML/7sYF7MBEsA0TM
         pNeqWwaOxbJosDa/5XuwkwjqFdGwx+/lkDWBvvzwFeIgc4uidoLbz6DCgeb8dZiCF+Uy
         J65VGYzMnQuuh8uV9nfswnh0yLZZk1QRaqmnbRQy2WWrbMF8Kx629LQteujx5Jsk1kcz
         3KCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jp0ZPR0F;
       spf=pass (google.com: domain of 3ufq-xwwkaj4lbcq8sjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ufQ-XwwKAJ4LBCQ8SJLGCPQEMMEJC.AMK@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id p8si2677vsf.1.2020.08.20.15.10.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Aug 2020 15:10:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ufq-xwwkaj4lbcq8sjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id a5so55354ybh.3
        for <clang-built-linux@googlegroups.com>; Thu, 20 Aug 2020 15:10:02 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:d812:: with SMTP id
 p18mr462820ybg.460.1597961401739; Thu, 20 Aug 2020 15:10:01 -0700 (PDT)
Date: Thu, 20 Aug 2020 15:09:55 -0700
Message-Id: <20200820220955.3325555-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
Subject: [PATCH] Makefile: add -fuse-ld=lld to KBUILD_HOSTLDFLAGS when LLVM=1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	Matthias Maennich <maennich@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jp0ZPR0F;       spf=pass
 (google.com: domain of 3ufq-xwwkaj4lbcq8sjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ufQ-XwwKAJ4LBCQ8SJLGCPQEMMEJC.AMK@flex--ndesaulniers.bounces.google.com;
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

While moving Android kernels over to use LLVM=1, we observe the failure
when building in a hermetic docker image:
  HOSTCC  scripts/basic/fixdep
clang: error: unable to execute command: Executable "ld" doesn't exist!

The is because the build of the host utility fixdep builds the fixdep
executable in one step by invoking the compiler as the driver, rather
than individual compile then link steps.

Clang when configured from source defaults to use the system's linker,
and not LLVM's own LLD, unless the CMake config
-DCLANG_DEFAULT_LINKER='lld' is set when configuring a build of clang
itself.

Don't rely on the compiler's implicit default linker; be explicit.

Cc: stable@vger.kernel.org
Fixes: commit a0d1c951ef08 ("kbuild: support LLVM=1 to switch the default tools to Clang/LLVM")
Reported-by: Matthias Maennich <maennich@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Makefile b/Makefile
index def590b743a9..b4e93b228a26 100644
--- a/Makefile
+++ b/Makefile
@@ -436,6 +436,7 @@ OBJDUMP		= llvm-objdump
 READELF		= llvm-readelf
 OBJSIZE		= llvm-size
 STRIP		= llvm-strip
+KBUILD_HOSTLDFLAGS	+= -fuse-ld=lld
 else
 CC		= $(CROSS_COMPILE)gcc
 LD		= $(CROSS_COMPILE)ld
-- 
2.28.0.297.g1956fa8f8d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200820220955.3325555-1-ndesaulniers%40google.com.
