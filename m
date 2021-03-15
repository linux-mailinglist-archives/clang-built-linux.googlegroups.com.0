Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB4UPX2BAMGQEIBCMAPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCD333C161
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 17:14:44 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id i9sf8319346pjz.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 09:14:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615824883; cv=pass;
        d=google.com; s=arc-20160816;
        b=P+1Goh01jDhAhICzE5EGo2QlGJPHNoIYC7rXl3WNjwVznTnJY/38z2oh2SlniXi/dA
         TCyg+5q6m47IfyQ7qjsQQ+6Y+oB4q07gfeoJI3zYpss/j0Rz4aBruj5rR4uNg4db5Lcy
         2PcoeUu6O/KnxC7iycUaAdcI7tqPEHyAw6ZG436m6Q+sjuPOk99PM4VeKrSLT0Euwuc+
         KFGjf6q2worbcqb/xh/v6eNaI0iKlbCEr5MzvFCs53UihsZ0NKCoVV0DP9bhx2JRRjRq
         gYocCs8vNVhUtAeJP2npfvAFYqXvelaHi4E1yuVzs1JnTaXcS24TQW7Q9pj+PNmqWkvM
         jqlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=33hY8uSyKBrAgng0Cf0Up7ZXzxiF6avyWvVfgNkpT4M=;
        b=CanatPSaUUnQ2AEYyYk/1XtApMu8NPazlQS7eKWkw2RRNMbyS0JVT0t+XdGOiIHpXs
         FJLXPmlL2rKCkZ1QRX5iPFMlvHCMaiszhdPhqTARQcO5+Ypv3beEB27idRdxBevl9raD
         vnDO7/P7d3D7FuiTb9m+6RaYvWPEhXePpxPgeRhKn/tSkdnMjvCCHforoB4HHe3kLvtx
         1mJxLS94ZzIkvGvwPs9J6W61Zob4fIJRY2Gi4m26B2M36bNxgjDWi98b3FRyt9EzDgKy
         4Rmpixg1kTt50OFEwUUfCcikFiH2guF/hbJI9Bj9MP5YIC1RIGFFZ2Sp6cy7zBYOktHQ
         fqFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="h9nU/IXQ";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=33hY8uSyKBrAgng0Cf0Up7ZXzxiF6avyWvVfgNkpT4M=;
        b=YRhrDQNhwNz9wZLptB4azPcb4hN2tljUap78YA7RggymFCAfo2OtQxOH0GmR47kFnK
         aeiabdQV6vu+B3djRO33poxJEDcF5KeCrqLyDNUOBrTY+dUqaiy2bb2YnsY92JbN64IJ
         +l1pMNn6ke30GpPvfnX9hv/xmgUfYpegE87OH43Zbv3fuuPch6jfGgokmE/700mUSYgZ
         /pnhGVRqMpbS19NfP/EWegKbukJ+xJtCyCUcfZvFY5JuVKRuR/tHbS++yDcb0gHDV86E
         IkJVnpt4y6NoLhsE4w0C45V/NW61cKWZKUgrNvPz18ACCko/sC0KRpGXMXWD3PuzN4kW
         8DaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=33hY8uSyKBrAgng0Cf0Up7ZXzxiF6avyWvVfgNkpT4M=;
        b=ipaG2SyJFBdcx5BDzUgzOJNLWcUPLMGsrQIBeyjVnLxEt59pjVkiifBTWUMBVLmUJg
         tXK3taSMYmpVhgXD+B8GEJF3KLGdxpgdOSsrFfFpauZiyDVxweVzypflJCOZhdhNb4Jh
         wt+DqanqDN9zcUujoqhBK0xkNfH3cBsb/zPMso0sww2nAaKPiCKYDLO4C5I8OwDNPuTj
         fkYW3pxCg0una5GIwrxL1EGZREFsQVBocPsEO7qJhHjpnWVl6N2EnyWQWM3Cwly7mNoO
         y4dOtKw0csBO7fYT+QRcgb/xfmYPplw+n26jv97AJQ56pYL9WytlGu1kvpMZLTSr/Lim
         825w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XQT7tuRF8YDfGN6OCumik96af7Av7kyJbolMj7ACkKV8UMza+
	tvfZvm2Y6+zqzSNXwmVRk/0=
X-Google-Smtp-Source: ABdhPJxs/aszRvy/xNJhwkw4EKX+dZHHJ8VVrvEVgHavofF5FJSRfG6RGzmZqb8k2hvM3ifIvfcxXw==
X-Received: by 2002:a17:90a:c587:: with SMTP id l7mr13059922pjt.115.1615824882868;
        Mon, 15 Mar 2021 09:14:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c595:: with SMTP id p21ls225788plx.6.gmail; Mon, 15
 Mar 2021 09:14:42 -0700 (PDT)
X-Received: by 2002:a17:90b:e18:: with SMTP id ge24mr13833366pjb.199.1615824882352;
        Mon, 15 Mar 2021 09:14:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615824882; cv=none;
        d=google.com; s=arc-20160816;
        b=pfO9d1f8hf9KcGK0Iv1ggHjklJ8eJ33BlRUTxAgvK5eCEHngLH8gtyfFNQZISbWoGY
         IRPh1NFW1SncjFggGJ+U+nDKeZmuWp3eBajcqZ0UZujedeo3noqR8FLYp4FjVt8gH5fv
         PHMkgQ0eFFrSVaYG9aYm/LOM4sie57WtIWG0sZuUfYgTgux7jl1fqzvtz1t0423388TB
         7niI/mR7SY9yL5wD7eX0sRR1nPUooBBqnDie5c+7wtel2SBnoZGzu7cGyC435onOk+QR
         miYZ64ml+D0QVqt6uGo7EFiz+xYQuJaFE6S46748i4g1MjApRQ9u6ZLwXFuH4DI2s2td
         rjMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=RIDE+IYVYeFvMxGbVmakCezynqhWEF9YmJQS0ypJjZ8=;
        b=LuzA0w70dbay4d2/uG+9Lw1tlrbAJxM5ax56Jps6IFglVfxmyP14I/kOWyrrkFeJOR
         hu/9xn81RITaWBJoRMX40bH0yMMMg8SbIZ5fY0/RmDXZzyZ0B1O8erMvwN/Me81aoRRD
         2Wd8FGVyZgm0ymS54ive3ppWWmTiSdpRExXYhUzbU1xrmU+liaC3bOKtXSs2z2T539zs
         dHoZ+ERfUp9e45F7fMsIGGA9PUcpC2qV2ViEIlb3S3p2j1RU4M4/GdUkHdgWzN4qnhI3
         fQNKS+50Aso07kTuPktAfVrg8roY3y/WY62dYsh5EaLvCFQj0VxiTwvTo0o5WOtfnvEG
         +YBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="h9nU/IXQ";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id d2si826062pfr.4.2021.03.15.09.14.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 09:14:42 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 12FGD7XH030890;
	Tue, 16 Mar 2021 01:13:10 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 12FGD7XH030890
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Peter Enderborg <peter.enderborg@sony.com>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Vitor Massaru Iha <vitor@massaru.org>,
        Wei Yang <richard.weiyang@gmail.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        "peterz@infradead.org" <peterz@infradead.org>
Subject: [PATCH v2 3/3] kbuild: dwarf: use AS_VERSION instead of test_dwarf5_support.sh
Date: Tue, 16 Mar 2021 01:12:57 +0900
Message-Id: <20210315161257.788477-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210315161257.788477-1-masahiroy@kernel.org>
References: <20210315161257.788477-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="h9nU/IXQ";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

The test code in scripts/test_dwarf5_support.sh is somewhat difficult
to understand, but after all, we want to check binutils >= 2.35.2

From the former discussion, the requirement for generating DWARF v5 from
C code is as follows:

 - gcc + gnu as          -> requires gcc 5.0+ (but 7.0+ for full support)
 - clang + gnu as        -> requires binutils 2.35.2+
 - clang + integrated as -> OK

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
---

Changes in v2:
  - fix typos
  - simplify the dependency expression

 lib/Kconfig.debug              | 3 +--
 scripts/test_dwarf5_support.sh | 8 --------
 2 files changed, 1 insertion(+), 10 deletions(-)
 delete mode 100755 scripts/test_dwarf5_support.sh

diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index b479ae609a31..c85d5f7a1aeb 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -284,8 +284,7 @@ config DEBUG_INFO_DWARF4
 
 config DEBUG_INFO_DWARF5
 	bool "Generate DWARF Version 5 debuginfo"
-	depends on GCC_VERSION >= 50000 || CC_IS_CLANG
-	depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
+	depends on GCC_VERSION >= 50000 || (CC_IS_CLANG && (AS_IS_LLVM || (AS_IS_GNU && AS_VERSION >= 23502)))
 	depends on !DEBUG_INFO_BTF
 	help
 	  Generate DWARF v5 debug info. Requires binutils 2.35.2, gcc 5.0+ (gcc
diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
deleted file mode 100755
index c46e2456b47a..000000000000
--- a/scripts/test_dwarf5_support.sh
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-# SPDX-License-Identifier: GPL-2.0
-
-# Test that the assembler doesn't need -Wa,-gdwarf-5 when presented with DWARF
-# v5 input, such as `.file 0` and `md5 0x00`. Should be fixed in GNU binutils
-# 2.35.2. https://sourceware.org/bugzilla/show_bug.cgi?id=25611
-echo '.file 0 "filename" md5 0x7a0b65214090b6693bd1dc24dd248245' | \
-  $* -gdwarf-5 -Wno-unused-command-line-argument -c -x assembler -o /dev/null -
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210315161257.788477-3-masahiroy%40kernel.org.
