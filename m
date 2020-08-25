Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2FWS35AKGQEG3C2PGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0212523FC
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 01:14:49 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id c15sf230368oob.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 16:14:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598397288; cv=pass;
        d=google.com; s=arc-20160816;
        b=fBv0tVwXe81oS4FfmNDv2T/iqM1NiI8mYtmrDFIYpX1lu0JyrIxIGFUqaadSuyEQoi
         CVpISl1ZIBQYrugcd5I7kGhYRTmBcjyXlwxOmoAWxFdjQyAryrhWhQxy90wpVcCgOyJK
         XKmr3ulNQM0G3hC/tSdvaGfUefm433BkoDS8pSSVDrYUjNmmNzME7CJKtCvAUwvkRA1i
         aAWCL3S40+OoNV/b5zgbTiMxoQahnqORvE+SiTy+B0L1S+oIqYjpllHwlmXamZftF3qs
         0k6t54jFfFojcoZE/FS3xeNX6Yj6GZGmxwKR9bWXdnKnZx9qjqDcVmp+uR6nhg1+osHE
         HpXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=ErKIwh7S7iXh8YS1N6lPdJpP1lFrt1u4VzZSbm2OG7U=;
        b=YXnIslukyWOu00bEgMqweUKyiOh8/WZHBhGqUKXkDq/2ljw6dz7uWL7JSW1H9GcnAk
         Jw1gRsKMMcp52GFueUUDQme+yTMuJD/B3XpGKPgSKRlqbv189wbur2DhIPGFA/eKH4kt
         kseQdEcYygVoU8ySxm2Lop9nKESEycSDlaAl6U2RuJf4hb9CGNbCrohfm93e5lMAV1eh
         mlVkQ/OSoI436aQNRzEIRbCiE1TOeDyWG+rD9xukZItejr8YxC6YjceH/CMarMzW13Ip
         HXO+WUVZT9kBIn6HBNLlZ2oqIxUKnjY4cJZaKJpWbCn8t447U87GosygdAScnMDoTLbH
         IDzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TP6gTQnJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ErKIwh7S7iXh8YS1N6lPdJpP1lFrt1u4VzZSbm2OG7U=;
        b=pOZ+o4+9irCFbgz9/KQxIGZIsAjOIZ1RheYLoqNZiMgf6SDmvpoS46DgwzoYrXumSZ
         pc4si6dFUERbV1Em4+6PY1tjjJ4MoqEFyVbCGSa2C11dvcF8PXJPaCdLKO+VZPAXuMA3
         jOkFTgAi3vEWcH8hCvQDw/isOYnstznOKlWLnkmbtkA3Z7dhE6MfFFhN7kJ4Z2ay5e3I
         4g3NZQSfuLfAKJZ+obDztakEahe2f7bLDERWUxmyGuTulPyg9/Ok0ItIg/EXOm9thZgL
         K5tg8ldL+Y7Y3EiDDIxtK723rEEqzCD0OVp/exfL/Ty7FpKqsaTuR5RnJjtZ4/f+klJ9
         dypg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ErKIwh7S7iXh8YS1N6lPdJpP1lFrt1u4VzZSbm2OG7U=;
        b=haZnnnsQ+apUG25iZ1xCz2vAM5o+29LNy6LPVNP86n3y1oYD/jVVT91XhANNt73G+n
         cNyi05Oa5kLq3ViRmOrsrOIpkDC9XdAlLwpH1XVT0QCSMoSzYG1i0ykvHF6T3DiQWSmq
         EUDCfs/gOOtbpW45YsDogkQl5LF7qoGljOaQWUTreciUM4eg0fJt/mZXkwT9uvu/qnfw
         Qurf4ZGjfIwOp1xHnV9Bg8gI1dH61/2D7KksTghkj18xs/SQNn4s1E9Yi9vRgKY73M7b
         uiarCv6T9ztMYzFnOijIIsOvcpjx200FRYWRbp+nQ96JVvLAMcZbZMtpBeuw0KeDTsT3
         tUvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ErKIwh7S7iXh8YS1N6lPdJpP1lFrt1u4VzZSbm2OG7U=;
        b=jqUv5IKKpGJU8/Fed38EHwNdjrcC1TJCjrHq0gjGxvjWQ55ETgbddZ7kpKA8Uv79+I
         YAAfvAiGub9U+SonRwG5C5sn9pt+RqiVFEpdfiz5yaeMGbgmsmnNVHRJjL8mHZC6pjaH
         Za9h+RuCfNf+xnzYloSljbzZocbE1pkBYm7jq/XQMpXR1dTyDCq16yDOIU+bTVPCCxbY
         StZNzYJHPp0YukuL5ROTtj9D33xX5gv8J9RdZOP3N4mmqMg939wP1wO3RAnXX8DuHzXy
         JyyalyL1is13WLxf3NrAUwyXzut54fLBtRTa+j00VERj6vCKP5HvauBi1sZbngj8xppA
         iP1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532u+BBQFMZBMRDTDRg94NsUBWd0sywI9Qv73Rl9XmKsBZOVnrsB
	vznG+xeF4onZZfF7vCNVoF4=
X-Google-Smtp-Source: ABdhPJxKWyVtvtBrIbaxHGjVgNizbZPQhJk0fJJ+ASeMTAmLaRy/P3EAEUqcdI+VIjVKfwgjhSF6ww==
X-Received: by 2002:aca:1117:: with SMTP id 23mr2422041oir.97.1598397288500;
        Tue, 25 Aug 2020 16:14:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d9d4:: with SMTP id q203ls89621oig.4.gmail; Tue, 25 Aug
 2020 16:14:48 -0700 (PDT)
X-Received: by 2002:aca:5bc4:: with SMTP id p187mr2497132oib.58.1598397288240;
        Tue, 25 Aug 2020 16:14:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598397288; cv=none;
        d=google.com; s=arc-20160816;
        b=FuKBEVUzUdtNTl0VlSssrvdM06sQGUBavK3fkuT5hZoOg6e/KmQLYBuYH9vf8vSjJU
         kesSxq/eNW8ofa/wk9C/FMzTJzTgvkr3q++TuSD7O04qTevmWnhNZmK0m65O4naFah+i
         kC2SpvurrA2TyintIla3W7bqyz0wscMHwVrYV1zWIn8xHlNKkkz7t3cWppd8EDkHDZWk
         B2zch5GKCKLWIYBHaxhrmaDdhy7/xbt0DcdZu5acJ1HuwXFTrNPq8mM/AMi2AfuOLJWG
         hDizBKBO2uYpm+UkpQVWPhfZxitWouUlrKHH7gxAEy+R/BMrfCge1qCVywq4HmPQx4g8
         YuJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=t+vF/AWstA9TSWcFttjZuK5Zv8tvYzpOTR1kcqpIxJ4=;
        b=yjaxd7XXDgq8/n2zbHFtUg55/m20iXNsDUhf76BNA3zrluVEXZVvu3zB5QR49PLPKQ
         1S3u4E6lWzEjr8J2MyknqwyZX3n0JlGqgq25ktQiwnc9lIpGWjDJI9jSkcNeUCd5XRSV
         KMwlKkLRdDh2R95ZJCW2raZ5srNuGIlS2Qh+fyhzx2KbBwYWoJXhIiVSfyKbiKCUyW9p
         JqBr19qi43H8CCjyYBZ0AgnMk06An84lZ2K6LftH9YDu9jiylCxlnwYDnlkWH5NXDO8+
         jUudKfY4QavozdpDrsDokTXSRq7UMi3IMr3snj5Tl8UsXQxl3uvb9TK8bht7Aetw37bE
         LUww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TP6gTQnJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c199si19613oob.1.2020.08.25.16.14.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 16:14:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id p11so5344969pfn.11
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 16:14:48 -0700 (PDT)
X-Received: by 2002:a63:ff5f:: with SMTP id s31mr8673621pgk.333.1598397287304;
        Tue, 25 Aug 2020 16:14:47 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain (ip68-3-136-221.ph.ph.cox.net. [68.3.136.221])
        by smtp.gmail.com with ESMTPSA id b12sm141769pjz.15.2020.08.25.16.14.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 16:14:46 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>
Cc: clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] Documentation/llvm: Improve formatting of commands, variables, and arguments
Date: Tue, 25 Aug 2020 16:14:38 -0700
Message-Id: <20200825231438.15682-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TP6gTQnJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

While reviewing a separate patch, I noticed that the formatting of the
commands, variables, and arguments was not in a monospaced font like the
rest of the Kbuild documentation (see kbuild/kconfig.rst for an
example). This is due to a lack of "::" before indented command blocks
and single backticks instead of double backticks for inline formatting.

Add those so that the document looks nicer in an HTML format, while not
ruining the look in plain text.

As a result of this, we can remove the escaped backslashes in the last
code block and move them to single backslashes.

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 Documentation/kbuild/llvm.rst | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index 2aac50b97921..334df758dce3 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -23,8 +23,8 @@ supports C and the GNU C extensions required by the kernel, and is pronounced
 Clang
 -----
 
-The compiler used can be swapped out via `CC=` command line argument to `make`.
-`CC=` should be set when selecting a config and during a build.
+The compiler used can be swapped out via ``CC=`` command line argument to ``make``.
+``CC=`` should be set when selecting a config and during a build. ::
 
 	make CC=clang defconfig
 
@@ -34,33 +34,33 @@ Cross Compiling
 ---------------
 
 A single Clang compiler binary will typically contain all supported backends,
-which can help simplify cross compiling.
+which can help simplify cross compiling. ::
 
 	ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
 
-`CROSS_COMPILE` is not used to prefix the Clang compiler binary, instead
-`CROSS_COMPILE` is used to set a command line flag: `--target <triple>`. For
-example:
+``CROSS_COMPILE`` is not used to prefix the Clang compiler binary, instead
+``CROSS_COMPILE`` is used to set a command line flag: ``--target <triple>``. For
+example: ::
 
 	clang --target aarch64-linux-gnu foo.c
 
 LLVM Utilities
 --------------
 
-LLVM has substitutes for GNU binutils utilities. Kbuild supports `LLVM=1`
-to enable them.
+LLVM has substitutes for GNU binutils utilities. Kbuild supports ``LLVM=1``
+to enable them. ::
 
 	make LLVM=1
 
-They can be enabled individually. The full list of the parameters:
+They can be enabled individually. The full list of the parameters: ::
 
-	make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
-	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \\
-	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
+	make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
+	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \
+	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \
 	  HOSTLD=ld.lld
 
 Currently, the integrated assembler is disabled by default. You can pass
-`LLVM_IAS=1` to enable it.
+``LLVM_IAS=1`` to enable it.
 
 Getting Help
 ------------

base-commit: abb3438d69fb6dd5baa4ae23eafbf5b87945eff1
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825231438.15682-1-natechancellor%40gmail.com.
