Return-Path: <clang-built-linux+bncBAABBJEO7TUQKGQEPXPBAYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EB878E58
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 16:48:04 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id a19sf13421508ljk.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 07:48:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564411684; cv=pass;
        d=google.com; s=arc-20160816;
        b=IUVKMnkZjky/CAdOLWOrlwx0xNB6qKsLNPSGSg3upQxFuSsHsdijxFEXzZ4BRuAvLf
         kuFdICr3xfi+ckM4+dTKDUi2wAVF+eMsoI/vhZAm4a3XF8pI3xtLPzNF1MuEVSng5t1S
         27usdj/n9uro3BrP6eDYwUMX1KwoqDxtPPJb3ytNFJOBRysTE+iBCjKTcOJcXvCpzs0p
         FhduyhWbD4ZELUnUggfsioojHZooPWBwQZRomkCFTHs2ZWaXxiAhKcjfni1FFnJHinuq
         TgpjW472+f4O6Ct7LnzHcEW8n/5ZU5Z6oC7Y8H3Q09wHGCIMinr4bC3QIRK7xVqwFFw+
         G/pQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=/XwJoBRS/ydbP1rotXTZKHlSMhbFc9kOgnZ7FAUZ/KU=;
        b=Om8UYaNbk9IDMHNLkMieDSOnOhwUTzvUBgFKPI+pOaYgk+yATSZ7FQut6Lq5YA3WiD
         I+3sABalhrF/uIUOaDOVXem4YQh+pclp8MyLYtpOA+lxN0U6Wi+QKi8cFfDSUHobAg/B
         HEBj4GmlhyHmltCda9BWCDyfGoUH05F9TzCwLc+4UOErzLTQd/VYAFx8MYVzyns5lQw+
         ZJZDPs12LF0DVrOdoRVs7BHahhS3Jbv58t2DxmA6W9EbqL4DjFkcNifONbgibhX4ddlH
         OCzMpa9njX+ZZY7rzXo6SYJf8LFple6t5cg6Rl0OuY7ZNnq8f5CcBwJoftMtLtmce16F
         021Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of info@metux.net) smtp.mailfrom=info@metux.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/XwJoBRS/ydbP1rotXTZKHlSMhbFc9kOgnZ7FAUZ/KU=;
        b=tEAnFEalA7GPC67/hW75bhvStm8iyDBHDXVcxZMr+5YMt2P6DoSuGUlfJ2J7KIVnU4
         Y2P3Bk6ZNcCFPnpuy0ah+wWhMTDRmA0h7nuNIkIqLK22Dxvx7MVHLKbvACf/pfxXuOa9
         BYsGYelO/twvnXxBDKa6iewBdVvPiqsEFC5oVxWSadrrhEUwPeCS3keRuC3qAVNNcdjC
         6ZAAlDZstvnLUsUHAlwg+yrfE0sR2xoIS5bvCvYgz44zsSBW8Dn1anmsO0Mliew0Q2xD
         W8mv87D9eWABykS0QQb1hkcfZV4H5fUUTWcE4qcH2RiVHNH9J4QQUQTwisagAH6CSN8l
         YxnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/XwJoBRS/ydbP1rotXTZKHlSMhbFc9kOgnZ7FAUZ/KU=;
        b=bumfTvYu2CfqFcBCqVfwdQvzmg4H/5x6AMGs+YaFM9ASN4G8vPt8HYnNWerORiqgcb
         3IMEEw9hAwKlj/H5xe/TL9M5KtaYLb/8TBPSIsL/tLf6CE0oNiW7eSaVx6DKBDxw9FxL
         IJV5Mz7Aay0oUjwJJhDC+Ko/jaWugzVy04ahJsDVniSGpl/JEtTAJ8I+gXQfXbIRhGDQ
         Bab18S6onhqlmtc9MSX4iMdLXLNHZvTmKZI2ngSg+gnNKA2IRqjDIOtDf09iqMq6ztWG
         7FKgHA0LvTxQ+7htEc4WL4nPbfuLU/4jCVHMPmlpVHHn9sRr5tgNub9Htsdf28atEJpv
         EUhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWZHCA8alxBS2rkrkohQCOfb92t2mnI5oW7NrZirDd77fHVIaCa
	3Uyqjblpcv8tneRAQhm5TSY=
X-Google-Smtp-Source: APXvYqw6cEFE6KKb1Q+JWuGM4YVwAslWOru0StE22skjj0atjtP4YzJLo5WycGL9bQGZw/Jijtqt4A==
X-Received: by 2002:ac2:4c3c:: with SMTP id u28mr33474169lfq.136.1564411684275;
        Mon, 29 Jul 2019 07:48:04 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5605:: with SMTP id v5ls5011448lfd.6.gmail; Mon, 29 Jul
 2019 07:48:03 -0700 (PDT)
X-Received: by 2002:ac2:4d1c:: with SMTP id r28mr50182204lfi.159.1564411683801;
        Mon, 29 Jul 2019 07:48:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564411683; cv=none;
        d=google.com; s=arc-20160816;
        b=KCy+Vzll7oF86Gk5ttsRXqCHSRfVHSGFzeb5FbgD1eUw6BzmRUe0qF3jb0o4UAFw4f
         mHiv4DhaSzt1JeGCa9NHqMybT0gFfOQUTx/FQxPY4L+IG48brtoT1C59tQBoGW+yB7OO
         AGoXlaHOgtugxqFvc8H1IZ/DYIPfXTFlgctb9zspq+8B+BntonZgOrtWmY/TK4yh3dUp
         +1/PLcEnqEJ20uN5v6WDV2K8OA8SZeNkjMcMwC5YoN0pmsfl4ETdfeDoFuy3n5js/9CU
         LwdPRpP9v0K0u/nslYQ9MiFLTq8vs3HySwjCoImYfsTp3HDZIcLcE0xgr3Hrfp85y5/y
         vRkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=eXQhnMj/9Do0yyeekoEEiFSLQnPUkOSysiTLLUCQ4Kk=;
        b=Gar41zlkF4ZfD6I2ZlMDHBf3RZMLvG/CRk9hSA7Sv36Q8YO/15Ma/qzkJJA9gCgaD0
         KjK/TxnTCxH+m532JytYJCJ18VnGuMbEHXqjmKiLYyWLoo5eTN7whDNYyURCZ2JlB9V8
         Usa6IQ99nbuC48jFrCb5+7xq3a0nrtQui+Fq6vkTvFlaBS5LLQM/fBwJoV/50G4dkTty
         nYnxzXJsSUutMmHFlYQ0Zt+GHPBev896QI+ZvGXFqeNLTzg7bjl/3KGtg+lfHvfJUETf
         MBiEs5I5oPLYmOdfTPlrGgogH2oZpyuOl6NsfqLU0tPLDh4kHQCUqX1+cTu8Kvzy4oZ6
         0YoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of info@metux.net) smtp.mailfrom=info@metux.net
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id b8si2706010lfp.3.2019.07.29.07.48.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 07:48:03 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of info@metux.net) client-ip=217.72.192.74;
Received: from orion.localdomain ([77.4.29.213]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MbRbr-1iOymx226T-00boKg; Mon, 29 Jul 2019 16:48:02 +0200
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Cc: kafai@fb.com,
	songliubraving@fb.com,
	yhs@fb.com,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] init: Kconfig: consistent indentions
Date: Mon, 29 Jul 2019 16:48:01 +0200
Message-Id: <1564411681-28013-1-git-send-email-info@metux.net>
X-Mailer: git-send-email 1.9.1
X-Provags-ID: V03:K1:dW4jkDPZBxuRMIXPJtCRf30d71VoDDYo7pJonzBRhds3XJ3NQ0/
 MdKDkaU7Cb3UKfQvVQb+GrdO8G2227MyJ/hxfLUVoBBn+oljMAf3P+z4SJvy5/tYIb81HP6
 T3IY4/soZHeeP3NuiPoeObx8S3Ua5+lCjfqCdEgR7P1hdHcjweVX/kmcv7ki8fqqgH2B7nh
 p8hqtdGj2GrFflSMRI+5A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dEwgoYK4RAk=:hU3b8BNd54os3Dqti7kG53
 gdOmeypCBkqVc2/6sVBYX8zVIXtPVyWZzaHvwn6vcb/zDxxuTxTB9sTHhWfmnTqyVR2MLacBY
 W48c8Axh99S7YVgklvkMddulPFdZ4nZ6UG03cNZLjxcjOtuulWx1X/s6rW/aEvZsCVYiuQU3W
 5sp0Io4MEFdq+rGoUXJcbvhi/o3hdokHLOfijA30syNoomUZnjZSMVrnXFaW4LQ6pjwJp9vda
 it7AQ2eRI+5wD+npitNjdD2aw0loTwPJx/6TltpcC3E4xL4m9GKfBnlU401Kq6N2nFkWa/1xt
 EdsQyvNiUMl5uDvfiUZZWpf6z8dKkvWey9DlXW6jAk/SPZroLzbJm7m4KLvvrANC0PX7lNeCO
 +QhoBz/j0dT3Y5sNrvf8s7DTsqgrbJ+Db026XJNqFuIXp7wM0RnzpBMt7GykoiN6jcQi4cHux
 gmgXBp/PaqBEZn+LpLBjQjplM9JJl/MAcsUbBV3zopNoIco1q+WVH3AuHWGsI0ZuZa0uewhGf
 nkC+WiZv91W9CNIJTHtTHrouB1Jvo0fUenDx/V98TC0W82usJalGKDH5zWK91FRDplaGIG8mg
 l0Ypy7lqnzJzT/l+6hg2Jik3EtxtiR1eQCGNF4+FxJZ3xxS+TsKuoo1pwVeIT/El+19Izow33
 Xy0YsPwK5ZHKk0NzUYSh9GIfqfgMlD9emvTR3ky9u79KA3Zx9aofaiz76XlsTidX1WSme6ovw
 +vLrF6iqOMV1EUUg9CuruA1jM9hsWQYccy27ZA==
X-Original-Sender: info@metux.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
 record for domain of info@metux.net) smtp.mailfrom=info@metux.net
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

From: Enrico Weigelt <info@metux.net>

Just make the indentions consistent with the rest of the file,
as well as most other Kconfig files.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
---
 init/Kconfig | 54 +++++++++++++++++++++++++++---------------------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/init/Kconfig b/init/Kconfig
index bd7d650..1a589c6 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -161,13 +161,13 @@ config LOCALVERSION_AUTO
 	  which is done within the script "scripts/setlocalversion".)
 
 config BUILD_SALT
-       string "Build ID Salt"
-       default ""
-       help
-          The build ID is used to link binaries and their debug info. Setting
-          this option will use the value in the calculation of the build id.
-          This is mostly useful for distributions which want to ensure the
-          build is unique between builds. It's safe to leave the default.
+	string "Build ID Salt"
+	default ""
+	help
+	  The build ID is used to link binaries and their debug info. Setting
+	  this option will use the value in the calculation of the build id.
+	  This is mostly useful for distributions which want to ensure the
+	  build is unique between builds. It's safe to leave the default.
 
 config HAVE_KERNEL_GZIP
 	bool
@@ -1294,9 +1294,9 @@ menuconfig EXPERT
 	select DEBUG_KERNEL
 	help
 	  This option allows certain base kernel options and settings
-          to be disabled or tweaked. This is for specialized
-          environments which can tolerate a "non-standard" kernel.
-          Only use this if you really know what you are doing.
+	  to be disabled or tweaked. This is for specialized
+	  environments which can tolerate a "non-standard" kernel.
+	  Only use this if you really know what you are doing.
 
 config UID16
 	bool "Enable 16-bit UID system calls" if EXPERT
@@ -1406,11 +1406,11 @@ config BUG
 	bool "BUG() support" if EXPERT
 	default y
 	help
-          Disabling this option eliminates support for BUG and WARN, reducing
-          the size of your kernel image and potentially quietly ignoring
-          numerous fatal conditions. You should only consider disabling this
-          option for embedded systems with no facilities for reporting errors.
-          Just say Y.
+	  Disabling this option eliminates support for BUG and WARN, reducing
+	  the size of your kernel image and potentially quietly ignoring
+	  numerous fatal conditions. You should only consider disabling this
+	  option for embedded systems with no facilities for reporting errors.
+	  Just say Y.
 
 config ELF_CORE
 	depends on COREDUMP
@@ -1426,8 +1426,8 @@ config PCSPKR_PLATFORM
 	select I8253_LOCK
 	default y
 	help
-          This option allows to disable the internal PC-Speaker
-          support, saving some memory.
+	  This option allows to disable the internal PC-Speaker
+	  support, saving some memory.
 
 config BASE_FULL
 	default y
@@ -1555,18 +1555,18 @@ config KALLSYMS_ALL
 	bool "Include all symbols in kallsyms"
 	depends on DEBUG_KERNEL && KALLSYMS
 	help
-	   Normally kallsyms only contains the symbols of functions for nicer
-	   OOPS messages and backtraces (i.e., symbols from the text and inittext
-	   sections). This is sufficient for most cases. And only in very rare
-	   cases (e.g., when a debugger is used) all symbols are required (e.g.,
-	   names of variables from the data sections, etc).
+	  Normally kallsyms only contains the symbols of functions for nicer
+	  OOPS messages and backtraces (i.e., symbols from the text and inittext
+	  sections). This is sufficient for most cases. And only in very rare
+	  cases (e.g., when a debugger is used) all symbols are required (e.g.,
+	  names of variables from the data sections, etc).
 
-	   This option makes sure that all symbols are loaded into the kernel
-	   image (i.e., symbols from all sections) in cost of increased kernel
-	   size (depending on the kernel configuration, it may be 300KiB or
-	   something like this).
+	  This option makes sure that all symbols are loaded into the kernel
+	  image (i.e., symbols from all sections) in cost of increased kernel
+	  size (depending on the kernel configuration, it may be 300KiB or
+	  something like this).
 
-	   Say N unless you really need all symbols.
+	  Say N unless you really need all symbols.
 
 config KALLSYMS_ABSOLUTE_PERCPU
 	bool
-- 
1.9.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1564411681-28013-1-git-send-email-info%40metux.net.
