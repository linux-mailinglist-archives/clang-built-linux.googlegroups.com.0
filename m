Return-Path: <clang-built-linux+bncBD6K324WS4FBBZPPSL5QKGQEZSNAXFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F43D26FE97
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 15:36:38 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id o13sf2069218ljp.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 06:36:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600436198; cv=pass;
        d=google.com; s=arc-20160816;
        b=WJNPYFCcnn9rwUhC3OM4juJU2KGvp0356gwQhAoe02dxRP7u6iAzaIDC42FFvsEQb2
         BOC/VZZwDCsW+F4j1BACKJzNXWoQyyfhn4l44FnzDSuUX2U2+BPkLut/NUSjgvjIB0hI
         LhlCWGyWMmWNSWEtLNO6YhPlhEqtfg9OhC5pkXQda6EO2KsWgidl3OrKnVP3EwoWKU03
         YZr3+JgiPIYcu09U4aPWWo93hMQGC7YcpfL3f7mDcjidF6RiWtOnqSumQ8H0GjWadYn1
         hYBqKpD0O77ZHqlO8K7oxXMyG7muD4sjZaaSZRj78d0vncbN1qzX38+GieesDvq6hWfU
         NibQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=TZdM6prxZs34zzOBD1ffrg8U2iAWClBiYok8t42xf0c=;
        b=DurVFPfoi6Qd3dsF1B7bUerxslKsn3KS39+q7lxMNKHSpV5tq7MQLx7DxIro2nkUHj
         m4AqEZlJ5586+bp//GResYWvpBUc2+3v1Y2KyUAQwzfNMSe4t3Ij4rhg1oPoNQLNtHnv
         LQgiexzG01OajIAi4IC6SswUSm9lUHi0AFMxYwGzdA7WurFl2nYof0BeVkhhHSPKkbmm
         rRUxT2K6iWrZFm62XpCT2WPEkVT6I4yJqJqF1EhFi5A/qYAGz1Ky5IYziK1L62roFtJz
         E+OmkNvzSavpGkboUUEfFEhuz68mjTnedC/bxELq6uq+8vUsK8+za9imgTtPtWXufmaM
         0tVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UVNfdPdI;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=TZdM6prxZs34zzOBD1ffrg8U2iAWClBiYok8t42xf0c=;
        b=Kd0fGvhDXLvQY+e4FQFxSVv+SKPr04Arbo8Ge9jLSlPDBy8/QIIQFzMFopSNTGktLG
         WYQSs0Vf1KKLDbVpfQYeOFSAubtEuPS+IO/zEmOMCIAcK88wuoOB6rewomkhOHTdC/Y7
         yDgUwlSV4g/yCWIA3GWAPev1rM7t4llEixJlzfadKz8H5YoCucyOlk193NmbQKsA5DH1
         S9xWJ14fBz3fBJJy2YZSGTKXkNXZOHONLZARHS89rJSuB5QWchC060cMXPmGuWESEpQP
         3ZzqdApa54pqVg6iJ2yOSBuscxUDVa5VMkYPDsnXLWMecbKpZjNHBBqNfbPaTJE7/7O7
         1Ojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TZdM6prxZs34zzOBD1ffrg8U2iAWClBiYok8t42xf0c=;
        b=UZW4FJOIKY1onjcsuDFoAeF9g/aXRkGzX1zU0E+h8z2AimTbX9ZGzoKZbr4btqMKba
         B6bMjcMJgzIg/KN7vNN7UWb4UttnJzHdPEAQRzNJfaEpjcO8KHyD4ZaNFQUDcVtA7IEh
         7keNZeaPJmWYP57D7MxRSUoh+IfSIDPCxL7lt3Ol/FPCHXzC4q0w2d++LU+x3NVwPMdH
         9qjdCCgJOK9iLwlzAS0AhuKPE55J4ViOwFWaU3uVpuplLTQd6YRbuAjQXiZ5EE88t3/q
         2uGsgpkmZMUjrU36H+qcq07dwJ2a5zwmimfz59b5/8dJ4Z2VBU5EU/IqUP1ciUq6kDSp
         11eg==
X-Gm-Message-State: AOAM533tsTpTK2OaJepFRA5DQzdDm+nIXgbq6RGes0zxbm2DceWZNgd6
	YhF7Lhr7JugOmZxVKpqXcCU=
X-Google-Smtp-Source: ABdhPJweMIZpvIDx3KYc+MguDZYrcbUNOi5InIZPHM3txqVd6GjkbbxMB04sP/Lg3v1sbRp7UvWQkQ==
X-Received: by 2002:a05:651c:386:: with SMTP id e6mr12881556ljp.424.1600436198068;
        Fri, 18 Sep 2020 06:36:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b0e9:: with SMTP id h9ls844224ljl.5.gmail; Fri, 18 Sep
 2020 06:36:36 -0700 (PDT)
X-Received: by 2002:a2e:a288:: with SMTP id k8mr12396306lja.234.1600436196855;
        Fri, 18 Sep 2020 06:36:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600436196; cv=none;
        d=google.com; s=arc-20160816;
        b=H3gYdtsXEVQ7fUl2LBVlyjZmw7bJs1Kd4MEJ8t+PNIt3TJbU25z7SBz/wsjZBPxH6v
         T/KHhfvMRnI9kwYSTUm4BUHjWY/vVhkkJAKWksCK8ym6hF+6RqIGxeEoUSFaDB9qZjtV
         KVb+iYOv7+K2L4p/oUc7ZK9jGrnGjV/7/WicM/oX0EMxqVZhzzsG880SKpBda6Z9R1fV
         gXAtC3BLUpyjPZ533949FBDA43UiOBiAzcmA21GNWrU4dcI544sETg+x6HUv7GWN0pSM
         UpIxjTnbFT9xkAbUxIHTXB1vmY1YBmvpbdbmFPbh5Ux8WMpj2WD15zscv2668GD/hleb
         6syA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=S/H30pVHHooIlFcXrllAM3Wgt1Tegx1zr+aVqYzGTR8=;
        b=KlrT74T3YGKNEm54xUwjVnoYL1KC9hgrx63NZ827g4jA/CLWFXQG1aMNE6q91vYdVZ
         VW3SXsiImblGfMhwjpJGu8nudP7MfiD2KYNEcTPVCfp4GIUH9u0nuvypc1bRAROrsPtY
         bhRNijACSTtCnFVgr9sbK6lKAr5tuRDg5RrHg8F10iqzvWofbLZhAUTaxTfJvklFS24d
         MduYJE7HCAXBCMSDoPItH1ZSw6NL5M1nAQdlqrKDQT1vF04KPSnQ/+fohrdA6ho5KOpV
         QwjnLRKTlZ7OqW2zBp160FYAPTSuLe0tGbBqQpA0j6ds19LlR7EIwm4ZhBweISNBFsaT
         iXow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UVNfdPdI;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id f12si112042lfs.1.2020.09.18.06.36.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 06:36:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::432 as permitted sender) client-ip=2a00:1450:4864:20::432;
Received: by mail-wr1-x432.google.com with SMTP id a17so5647580wrn.6
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 06:36:36 -0700 (PDT)
X-Received: by 2002:adf:ec82:: with SMTP id z2mr37541782wrn.214.1600436196448;
        Fri, 18 Sep 2020 06:36:36 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id t4sm5455830wrr.26.2020.09.18.06.36.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 06:36:35 -0700 (PDT)
From: "'George-Aurelian Popescu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: masahiroy@kernel.org,
	michal.lkml@markovi.net,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	keescook@chromium.org,
	akpm@linux-foundation.org,
	elver@google.com,
	dvyukov@google.com
Cc: peterz@infradead.or,
	arnd@arndb.de,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	dbrazdil@google.com,
	George Popescu <georgepope@google.com>,
	George Popescu <georgepope@android.com>
Subject: [PATCH] ubsan: introducing CONFIG_UBSAN_BOUNDS_LOCAL for Clang
Date: Fri, 18 Sep 2020 13:36:32 +0000
Message-Id: <20200918133632.4038538-1-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UVNfdPdI;       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::432
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

From: George Popescu <georgepope@google.com>

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

Add the UBSAN_BOUNDS_LOCAL config to Kconfig.ubsan to enable the
'local-bounds' option by default when UBSAN_TRAP is enabled.

[1] http://lists.llvm.org/pipermail/llvm-dev/2012-May/049972.html
[2] http://lists.llvm.org/pipermail/cfe-commits/Week-of-Mon-20131021/091536.html

Suggested-by: Marco Elver <elver@google.com>
Reviewed-by: David Brazdil <dbrazdil@google.com>
Signed-off-by: George Popescu <georgepope@android.com>
---
 lib/Kconfig.ubsan      | 14 ++++++++++++++
 scripts/Makefile.ubsan | 10 +++++++++-
 2 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 774315de555a..553bd22e83ee 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -47,6 +47,20 @@ config UBSAN_BOUNDS
 	  to the {str,mem}*cpy() family of functions (that is addressed
 	  by CONFIG_FORTIFY_SOURCE).
 
+config UBSAN_BOUNDS_LOCAL
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918133632.4038538-1-georgepope%40google.com.
