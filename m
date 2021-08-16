Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRVA5OEAMGQEQ3JLHYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D2B3EDECF
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 22:53:27 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id p5-20020a170902a405b029012cbb4fcc03sf11509071plq.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 13:53:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629147206; cv=pass;
        d=google.com; s=arc-20160816;
        b=K6Ql4zebMh+B/JeI74MxwfjCCmiDSsq66IfJjtbDi2Ld5dbNG5WqNu8mt0cMWQTgaj
         IN1LO/fC4aAHFRmyUTGou6eoE91ntFa1yMaMGxpQtXeeWE7B+iNygk0KDcyHN5tfdG8p
         WNfm8ywQglBPjee73wbKx1XvZjtJ5Goll7xcthKiTu8/e0eWI6AZePpLNqE9D2ngINi5
         9p++PIlBgtxhw4EvcW13A3G8BbbyWR8uEqp+YL5zIh24Ti5yfuSwHjO/g0hBVOodj7AF
         RRT5o6gbbKvB+caddaN9fGT80hE5mL0WhgJJsRjtc/kI/DmAKdryXAvxztAMJkOBZB9J
         nQ/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0JI3GcRaN8uZ8HD8GhFPT1FBrniBdLRR3fkDIHstpU0=;
        b=B0w6O5gz/an6B94iUysZkZIBd39byGvnEkzJ6Ma5ThHFT8/31JScilBmdmSYPc8h36
         u/DqSPiHcNGG0Q8QEBj8Sc+itol29YQI1AhOBcPyhq30+A8IHItJ0W8sK4/U1q75NGwQ
         f7VRHZcV41HWiNfqguguXqq9Gizw/qryo4KLO0/KjB9djlzNtatmgOry3USb3/PntFzp
         ZIxEqrjvdvzrC8mfCNuLDPSh7LLETx7WnXvTyq+lZhF676eT4Kizb4umeYxhPmupnf6N
         hw17rfOdA3Vbqx/VHSAN4rVx0DACu815ZB/hzFNwHEjseWxPER84YkPzP4GuDYk24+aI
         SezA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="EHq//jHv";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0JI3GcRaN8uZ8HD8GhFPT1FBrniBdLRR3fkDIHstpU0=;
        b=DR2dD1cdaptcZbEBV/VA/RVB0I89uQXrYy9OSKeJkMSSJIUT2yKzvRyI1TNO60UyKk
         NL5BPryK3EyOogb6MyaKx18o0FdUwKTGFcoD7znarWP2fKZNHxVcxeWs0XHLermbYlJE
         7V9/eOZGQrhYHSkh3KZwN+kIqEPNqO7hozorVnEb+E5PxnGzn6ONb6HgNh2eKz4f64yy
         SfxKdno2bPiIRji2TyA+bCF1w7TcnDXVTOJyRxEB/oFewhANdhYPCZPihIx5Xx90CKS5
         Ikev/Y8+7dRhlXlWZ4kgpVJaYuDSPyu105CPhUL8sYYBwkbaIyOzgLC+ZPC76Hed5yV/
         Iu6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0JI3GcRaN8uZ8HD8GhFPT1FBrniBdLRR3fkDIHstpU0=;
        b=f6wD/Dnm8bQRpsHl+qBnJm0U3Eht1Wp7ewuslUmo539KexUVlSXVPFZngvJ9WtEFh8
         InOCfCLYTBiGgYyPsg5hWfcZpSp6bLQZ27yNnCMiDryqEHY9eHsgnbylhALNG6pgdlsD
         7kIb//e27NDNNzEjTnhQB9v/TfPo+tYBInDZ+h8NX95g5qfMOOJ0jTOqEhmve+qUF9GN
         ktrRnANKCrByKg98ubMjTB+r2oXEd4EoUzv6nbSWb7jfrpeqw+29mVEaCb0K1m8OZe1n
         GORk/UiO27b5uvsvlz4rqbrRmoAvpRmxc9+K1TluGOIhTvzocWEbJSXmJGRVTYJNTRfC
         tUQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mtXxfjetX6V0U0QMhoovSeyC83eo2uU4IYS8T7y5qnMdZc8SP
	bM9AMWujPoS9rGAWdw54QGc=
X-Google-Smtp-Source: ABdhPJwMAF7ha+ScOFWMYbaeHbdn4kmk6M2YFqllESmXfphRD9U+9+6NTA2yD8LrFOOxp4nvjEsMzw==
X-Received: by 2002:a62:2c51:0:b029:329:932b:9484 with SMTP id s78-20020a622c510000b0290329932b9484mr47040pfs.13.1629147206232;
        Mon, 16 Aug 2021 13:53:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:aa0c:: with SMTP id e12ls8469pgf.3.gmail; Mon, 16 Aug
 2021 13:53:25 -0700 (PDT)
X-Received: by 2002:a05:6a00:2444:b029:3cd:5af9:821e with SMTP id d4-20020a056a002444b02903cd5af9821emr64235pfj.40.1629147205679;
        Mon, 16 Aug 2021 13:53:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629147205; cv=none;
        d=google.com; s=arc-20160816;
        b=VVyFyifXPLGYjHNBkzMQpuERWh2aViCYZ6lgTLFx8jfmtKrlIdYpQ1Bq6CW8Kpwppx
         t0i2KWIw7ZQFylGZyPKXIUU+hLsKh9VLf3Ey/RTpTWAWJ9eH/roSK0Rtu7h4yj63a+9k
         CiFjFQg6VPI5WFphM+sQjpxp1HfHpp1dqZFu6nSGQC1wOuiPYMf9HEM2e/d2rFQIvRai
         FezBacDq3lbHlccL3PMrt7YixGdBR570AkiPj9uzM79WTWSivdxcr5U/uE5k+Iels/nT
         JlVgS39aIHBVoZ0gotmp0oqYlc2F9loWqfYaJbO4yIuG38hKlOD/PY9tfCp62V+d8GiV
         2dbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NILXPkd8z+tuEfL0jQ4rmH6Q8fq/VqvEd+z0fGZ5PBY=;
        b=VQYYQ9GyHir2WMTUMh8UN9cRYoFqA562xq/wHsjzgCJ2UKw/knnpah/Jc+nx7gXJM7
         JYDYwA/YkMR6oACq89vAmByhtpZHj9mowNC7sEZ2x/5Y19RkN3DuVw6i82joBejXz7Nf
         Zj4U004Tu38Gv5a74aDB0lDGYeSkKvqdqdEdYecOPg6xBk3NFkJnr7bIfjKyaPTweS6a
         9RbfMQrRlRwUerAvs3lwSnZvWxD0VvboqSHuCRiNYZUYRsNFB62PdkVedHpq3lviBhNO
         tMpFgeQ0xmfjGtBzOfIaWmZ30e1UF/B0JWqzpi/CCVunbK+bPhNJ8aI5aTp8g7BI3F2k
         T+Pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="EHq//jHv";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u5si6267pji.0.2021.08.16.13.53.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 13:53:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2DB2060F11;
	Mon, 16 Aug 2021 20:53:24 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH v2] kbuild: Switch to 'f' variants of integrated assembler flag
Date: Mon, 16 Aug 2021 13:52:47 -0700
Message-Id: <20210816205246.57208-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
In-Reply-To: <20210816203635.53864-1-nathan@kernel.org>
References: <20210816203635.53864-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="EHq//jHv";       spf=pass
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

Also, fix a typo in a comment ("intergrated" -> "integrated").

Link: https://releases.llvm.org/3.5.0/tools/clang/docs/ReleaseNotes.html#new-compiler-flags
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

v1 -> v2:

* Fix typo in comment in same area as patch.

* Add Nick's reviewed-by tag.

 scripts/Makefile.clang | 4 ++--
 scripts/as-version.sh  | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

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
index 8b9410e329df..1a21495e9ff0 100755
--- a/scripts/as-version.sh
+++ b/scripts/as-version.sh
@@ -21,14 +21,14 @@ get_canonical_version()
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
-			# For the intergrated assembler, we do not check the
+		if [ "$1" = -fintegrated-as ]; then
+			# For the integrated assembler, we do not check the
 			# version here. It is the same as the clang version, and
 			# it has been already checked by scripts/cc-version.sh.
 			echo LLVM 0

base-commit: f12b034afeb3a977bbb1c6584dedc0f3dc666f14
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816205246.57208-1-nathan%40kernel.org.
