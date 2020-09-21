Return-Path: <clang-built-linux+bncBD6K324WS4FBBE5XUH5QKGQEFRPNHKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id AB04A271C4C
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 09:51:47 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id a10sf5480338wrw.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 00:51:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600674707; cv=pass;
        d=google.com; s=arc-20160816;
        b=JTQ94kAlTSZ7fMMUfQb7Xuh7InBZrILx2ZeadgSzFGk1IQ2REB5FeloRyrQpGJ/wBS
         0bysbC18lN8+dElCsO1tvyNg/ICDEzW1zKZd03EIFKn2PmPvpQcPP3EEPCyw3sO2omdF
         XG52hiqm6Mxlixnah52nTg+BX7TkobSfGPiTNx02C2Be6cgxOQcIMIAOk95kmWSqSSAN
         /xlaTAUOGsFZhfHGxfeJhbe46+jRbzPaw5Q5KjuznjHabtt2Ucz9433GwnvLjSqrizhl
         UpiXibCQKiYhFbyCa1wPBuZk4mtgN3Wcrvq6646KMTw5SCI1RFBS17GwHoI/dGbVC8yM
         qwGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=fF1CLWK3ldTqJJe3OwRkS6IhU82Z4yhHYGyCFqvrTBg=;
        b=J6CM2kDLsv69eLambBbhXh7jrKQ3rHqYIekPj4abin54mqTA1N8pVA8e+Xwv21YnCi
         9r9GkszJWL3xlzzk6lVwDVdb+aobtW8GkGkhIPTKgLDgmT5k86ZxsHWVjdvHwalRvAn+
         gfnmTj2aNPfvd3jrgquKy1SXcxHG1ox/eDtucNoE3qUl3dekSUlNBdSI09ekVbJvSece
         4aE46Awumvf8M2GYmqrOu0D0F7ZdTH8oK8l0esiNUWg5p3yF70EPtcMQ8cIzy4rwu274
         wd1PRpVcUQGvIas1uaMxvebcRlUXr6Phf+wDutJK7GXPeyMyw8wQgK1kiUkUCfxYTHdX
         TxlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HJNOKKsv;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=fF1CLWK3ldTqJJe3OwRkS6IhU82Z4yhHYGyCFqvrTBg=;
        b=bOOcPL0o0h6MsjbguPAmVjyVBlY4MvSiM2pWW1/vvn5yBo7Cx1jKeLb4gS/S/tPr7A
         5LVM8n2iMoBJ1KJQPkSr+DBjIYbWBPrCPoemN1Bs0Z3SPmtr6o8KcfrFoLg5ZSOoisr7
         3iO8tHyM391KOdvYEEpwyakBGtvpKf+W752QvpLhzjtZ6ubZJFbLfqfuNXkvPCU5IqgE
         nFTJiZ60Pq2NwWpJmLSrlS/o4riusPGM7mStLEgTIkoYN/bIGDlF23Lsal/k6SLHLcKr
         5pno9h9vTOiApE4CaMSMCHEBauy+UCWV3MF39FkvOeedCsRhnNvpeDlayLQS4nXTZ143
         e9Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fF1CLWK3ldTqJJe3OwRkS6IhU82Z4yhHYGyCFqvrTBg=;
        b=adsFMEeySNScA/V9z+tVvmBKnAWkbUODuoHW+urdNrJ0htUYaNk6a1oT7UZzX0IsDu
         uaL1QnxfcqLkt0qS5HPM398qPq4xFW9Dk0uslY8cEQ4iIUx9qbLR6wf8FDgnxcsMZKBI
         NKOZKzHBP6DPLjWlz8bcLESi9kX0Aie87T61x78TwVw1rxZtWRVZyrrxOUguOlG+rYDq
         nr4h69vrJiKFN9RAVLmq8yNQ1u5ST6yrdm77oR/o26Z8pQPXOyZ8FYxmybQaQoT8yCB6
         mZ+zubEPB1Axxm73LqUAmdVcBVM9CvCbZ6tOYE8ZwBOqFqNC6mlAgFXuhuGLIPqqJmbs
         c9oQ==
X-Gm-Message-State: AOAM530E+5/TYX+auc2wljHrUeZXgvKpXIdpVdiqsv0Tccj0nsocm7Sy
	/e7wfSyFNC5yO664GnT6rNg=
X-Google-Smtp-Source: ABdhPJxj5FZWaKyYmoN8vkqFiySLOu0n249t3UhYdizEyqSwecI9RXGTXwqfSobt7/BDlfwGTo9NSA==
X-Received: by 2002:adf:ab46:: with SMTP id r6mr50062061wrc.360.1600674707358;
        Mon, 21 Sep 2020 00:51:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:c2c1:: with SMTP id s184ls6087804wmf.2.canary-gmail;
 Mon, 21 Sep 2020 00:51:46 -0700 (PDT)
X-Received: by 2002:a1c:1d08:: with SMTP id d8mr29975580wmd.78.1600674706507;
        Mon, 21 Sep 2020 00:51:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600674706; cv=none;
        d=google.com; s=arc-20160816;
        b=hu8SismVLovIFatE1ghdv/DPSnQHZFHXYXE/TZ2WYKdN8Hf3COmN9IVir58NkenB9/
         1oFLy2qM5JZ4I0RBxJOALNxjlHB+9vwddkA1diWRnoBskMyqx471fLboBj0JhxufGRrU
         z2vmRS73IrbRnxUMHauU2TSTyBY+GeW5gOVmYEA2DD+GJurEuFFU+6Y3K8+L7mduvUPX
         a4Tx4GLlHbQTdYF70ypCN8DcNQHfhbFvaJrza/m6fjzrZQ9k+7O9ybUDbb5Oma+R2yh8
         CvMvQ7AfiBVWQ749DWpDMBvwCqk9dTk9BLWTvq6+hNP3DZMf60DnRdK/poQUlA5tcCT9
         86Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KPoabYCUEQg/yQj6RZY1u+k2fu9pgKUch5EmIbmMnBM=;
        b=geeYlb9Psc/8JbS8hZH5GaNkyWZxSNF1p3JYDEyQSIYaPXOft6HWRiep68ntx9/DY0
         5Wx0DmqE2+5fms9+cPWl/v4MZnggox2XaLlOb9jV6JmlU4kaMCy0qOcLi0+uD7AQPVtd
         uTnye9J4I/zPOnapvkILA8zKjm8Uy5aHVQ8GNw/MvZ0ez4Vb/vcArRhbGNbdKB+bwtHz
         i8IEHLJOcdcpqcBgUpse+jIq/uVc86GaCAKuMU9fDEW4SC6WTXkzTa0uCy0zzq9eh9Sx
         AgX0AjQOuepw2a9i9EsFMl64gBmFGrdcKhyGP8gDx0ja1N0LWp2ZKpUw+swfKPooZiG8
         f2Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HJNOKKsv;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id k14si230788wrx.1.2020.09.21.00.51.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 00:51:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Received: by mail-wm1-x336.google.com with SMTP id q9so11128722wmj.2
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 00:51:46 -0700 (PDT)
X-Received: by 2002:a1c:18e:: with SMTP id 136mr11437107wmb.22.1600674706169;
        Mon, 21 Sep 2020 00:51:46 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id t124sm18949723wmg.31.2020.09.21.00.51.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 00:51:45 -0700 (PDT)
From: "'George-Aurelian Popescu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: masahiroy@kernel.org,
	michal.lkml@markovi.net,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	keescook@chromium.org,
	akpm@linux-foundation.org,
	elver@google.com,
	dvyukov@google.com
Cc: peterz@infradead.org,
	arnd@arndb.de,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	dbrazdil@google.com,
	George Popescu <georgepope@android.com>
Subject: [PATCH] ubsan: introducing CONFIG_UBSAN_LOCAL_BOUNDS for Clang
Date: Mon, 21 Sep 2020 07:51:31 +0000
Message-Id: <20200921075131.1334333-1-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HJNOKKsv;       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::336
 as permitted sender) smtp.mailfrom=georgepope@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: George-Aurelian Popescu <georgepope@google.com>
Reply-To: George-Aurelian Popescu <georgepope@google.com>
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

From: George Popescu <georgepope@android.com>

When the kernel is compiled with Clang, -fsanitize=bounds expands to
-fsanitize=array-bounds and -fsanitize=local-bounds.

Enabling -fsanitize=local-bounds with Clang has the unfortunate
side-effect of inserting traps; this goes back to its original intent,
which was as a hardening and not a debugging feature [1]. The same feature
made its way into -fsanitize=bounds, but the traps remained. For that
reason, -fsanitize=bounds was split into 'array-bounds' and
'local-bounds' [2].

Since 'local-bounds' doesn't behave like a normal sanitizer, enable
it with Clang only if trapping behaviour was requested by
CONFIG_UBSAN_TRAP=y.

Add the UBSAN_LOCAL_BOUNDS config to Kconfig.ubsan to enable the
'local-bounds' option by default when UBSAN_TRAP is enabled.

[1] http://lists.llvm.org/pipermail/llvm-dev/2012-May/049972.html
[2] http://lists.llvm.org/pipermail/cfe-commits/Week-of-Mon-20131021/091536.html

Suggested-by: Marco Elver <elver@google.com>
Reviewed-by: David Brazdil <dbrazdil@google.com>
Signed-off-by: George Popescu <georgepope@android.com>

---
v1: changed the name of the config to UBSAN_LOCAL_BOUNDS in Kconfig
---
---
 lib/Kconfig.ubsan      | 14 ++++++++++++++
 scripts/Makefile.ubsan | 10 +++++++++-
 2 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 774315de555a..58f8d03d037b 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -47,6 +47,20 @@ config UBSAN_BOUNDS
 	  to the {str,mem}*cpy() family of functions (that is addressed
 	  by CONFIG_FORTIFY_SOURCE).
 
+config UBSAN_LOCAL_BOUNDS
+	bool "Perform array local bounds checking"
+	depends on UBSAN_TRAP
+	depends on CC_IS_CLANG
+	depends on !UBSAN_KCOV_BROKEN
+	help
+	  This option enables -fsanitize=local-bounds which traps when an
+	  exception/error is detected. Therefore, it should be enabled only
+	  if trapping is expected.
+	  Enabling this option detects errors due to accesses through a
+	  pointer that is derived from an object of a statically-known size,
+	  where an added offset (which may not be known statically) is
+	  out-of-bounds.
+
 config UBSAN_MISC
 	bool "Enable all other Undefined Behavior sanity checks"
 	default UBSAN
diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
index 27348029b2b8..4e3fff0745e8 100644
--- a/scripts/Makefile.ubsan
+++ b/scripts/Makefile.ubsan
@@ -4,7 +4,15 @@ ifdef CONFIG_UBSAN_ALIGNMENT
 endif
 
 ifdef CONFIG_UBSAN_BOUNDS
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
+      ifdef CONFIG_CC_IS_CLANG
+            CFLAGS_UBSAN += -fsanitize=array-bounds
+      else
+            CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
+      endif
+endif
+
+ifdef CONFIG_UBSAN_LOCAL_BOUNDS
+      CFLAGS_UBSAN += -fsanitize=local-bounds
 endif
 
 ifdef CONFIG_UBSAN_MISC
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200921075131.1334333-1-georgepope%40google.com.
