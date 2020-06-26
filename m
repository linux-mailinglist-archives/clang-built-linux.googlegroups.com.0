Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBLUL3H3QKGQEYIQNPRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B4720B8E1
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 20:59:59 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id m22sf6765728oih.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 11:59:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593197998; cv=pass;
        d=google.com; s=arc-20160816;
        b=Stf4z5tdb3vhKJgb+n12ldB0euqN1u1cQrhiTym7LqnzxzMJJqsNMgl5bEj60LQXwx
         U0DJEYKDc3mLMkL9rmdZkOclKZxHlx0+cDrn6QtoRC0rjr54aj55lMLK8+TG5pniZFIU
         x3OpQiu+OZ3tbc6K2oGBmSD8hPOimt0hqiX6GyAUux4gJJaUWyBWIkPnvxTjmvmqEdaA
         6PE3chy5348w8MyWzxUtPzIFT2CW14fKKjrSSPZjeEDV9dn9OK6WR/aTE8S3c9xPP00Q
         REsxDP1HZqSCX0tuV1fe/7+LJKi12FNHiN5oMy3TBbO1vx1Vm4dF/xo2GvBePl0Ov1t/
         IwWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=FHxjYRyngBZI0jf4kwEtb37YwZW1ZbGBl5ghxdKHZsY=;
        b=a9OdUj9FAmzAIkvy/L5sIjB1ATWDRoQ6Qqbvy+FCygSPslqnpFrMXo0glgUxNUFLa+
         gjTfWSCvvd5e6ANAD3Z+W24NV2g7RYk3VgjtW8swDlr4fCqNcv68APAjJrCVKx2ec9xa
         g9ZNtT2dRc68Y/kdjaVRzHFu/QifTf8UH9EiRRYHLSyOIhP8agDizzIYymwN3qrh+MRo
         s3lHhJb8vwe2mPJeQ1oCvmUImSLPMEi6huugikbt+ezHg2NVZpFUnH5HCtMwIW/Bs1B/
         uIk/NQc9oUfeBrZEqSucUGNY5xnBqCULdKGyAemQQL8rTZXUK7fP/Yd+io/Z36B+LZMc
         l01Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=bVJmDujf;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FHxjYRyngBZI0jf4kwEtb37YwZW1ZbGBl5ghxdKHZsY=;
        b=Dn52ln+K9lvzRbGEoQudD6t11AOOLMT+LruLzykwdsTB0Xvqudv8+v72Ov1PsqHVje
         ODA/z6hKPs4e7hVdlrxSEuWXxNEfSff7V92S7rkC39kni2mPQ/VKf4R9U/PIixxi2gdS
         1ODLwCqfNwKQ55bp6Q4+XvW9sA2DEgtYdu6IC1nhf8h0ZhVWOJG5lcb/D55bwje2aAK+
         otjk1eRecXPo8iqyVK498YR4vl0SPn62RR/1dlIdSwu3Mqze5FHQvFUPriDNx0piZlJ6
         v36sHjrOn1G6rilPV3YkK4BLG//KUZ7Kb3HnExJ03AQ5fDANuU3Tf6/7B8dfqO450c6v
         V3WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FHxjYRyngBZI0jf4kwEtb37YwZW1ZbGBl5ghxdKHZsY=;
        b=prYokIBGf/2xzqdsnFaqDTONfhCNUUuWPIrItMPBaT3A99ipRG4uZqziZFuPdpipa/
         ZsCzVet8AmpHlTYLn78YKvjKmIdSRmd51zfkW49Q0M/db8ch0tjBXZKrfceSdvOYal20
         4MxZylC1VzydPr3F8hBEWMyr2o9Q1VLvcC6NAnQJkXr4kzaVLlEz3bTIGzCruI8Y7jaU
         jd26FVC0vvT09fI6P85oxCl2l6HxEaBos1i8vkhfveK2cXwrxI+nplYW0PrgYQa6yJiM
         QebF8pQVnm8kYqYHtqXtKIFn8JlcViPijijBUYKuh60fy5KXrAZkuzSt3iUMk9kw6Bsq
         LQCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AfP6PiBh7dHNJp/k8C/c6U9/cUeKLbCfk8S7Uymw5tkmNVNft
	cmLAqKC+yyu3+xDkVJQ1MzA=
X-Google-Smtp-Source: ABdhPJx92qNuqy+YFNA3YGWoELfEi5yaalCjZ79OPzOEKH/CSs1cQIZ/0BCmFAMUjfg5DqQPwcU3Sw==
X-Received: by 2002:aca:d612:: with SMTP id n18mr3438147oig.46.1593197998780;
        Fri, 26 Jun 2020 11:59:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:544a:: with SMTP id i71ls2009681oib.9.gmail; Fri, 26 Jun
 2020 11:59:58 -0700 (PDT)
X-Received: by 2002:aca:ba03:: with SMTP id k3mr3583938oif.33.1593197998491;
        Fri, 26 Jun 2020 11:59:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593197998; cv=none;
        d=google.com; s=arc-20160816;
        b=0NiXNNDqR7TzkaD7hxsq1q/ShWdSH+D8Bri2OkOIC0sCUjwKn2x2esKgZ+vYk4tVIN
         nkKgWxzTWlarAq1CRFm80MTM3j1Nax7w2BNb7iOo1R8dWpEGe3geButGwmVnSQ7lWG/G
         sSWjRsJLwWfOpw3WDWonZzIGHy297YD+HLVMTlCt9iU7EXHKycg8hNaUVJ5GTB5g1dDW
         gjYw83g8cjiiXboH5dDQwe7ZLDS63IONrXCX2/TKMBVrbLEQYHHes701i2kEm3W9BTDV
         +CuhW0zts5cIZDS0hWiVM5sz27Ck2VID4baW4h4b1yN47C8i0jDI8Edpe46qitAt+1TS
         jGaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=YLQjhUwHPBRq2DAWtdSXfOATkkHnCY2Fw5j0ijLSoIc=;
        b=FrOXKfGYje3MWCw5CdBtYzAuI3XFpuDuSAR8dxJBeRjPp9vzOw2P+vc9wPZ6eci27E
         NbbSipq9H8wDrRioEY4yy2rDDDXAHZCpD/TKDi/Blkj9jMKAh2fT2p3RKevao6WYfFmA
         /+14jbAVTXrqFpq4koQSMy2pMcr8li117x+tBVJYFYEPqknywjQh/AzbgeVm846FBTkh
         o9X4jevtaZV21xm3LwhSqxkXqIpsi6dc6jRXb08PPEJDCPLrGlDSnuteALBYg290Jtx1
         n1mAYShqwmxugUjC4MckqXrIoxGVEjrd2n8+YGZY9WsjAbX2R0+XIrmPJ6tHwC5zrWQp
         phhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=bVJmDujf;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id c26si1690711otn.4.2020.06.26.11.59.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jun 2020 11:59:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from oscar.flets-west.jp (softbank126090202047.bbtec.net [126.90.202.47]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 05QIxVdb016565;
	Sat, 27 Jun 2020 03:59:32 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 05QIxVdb016565
X-Nifty-SrcIP: [126.90.202.47]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, x86@kernel.org,
        linux-efi@vger.kernel.org, Kees Cook <keescook@chromium.org>,
        linux-kernel@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH 2/2] kbuild: remove cc-option test of -ffreestanding
Date: Sat, 27 Jun 2020 03:59:13 +0900
Message-Id: <20200626185913.92890-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200626185913.92890-1-masahiroy@kernel.org>
References: <20200626185913.92890-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=bVJmDujf;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Some Makefiles already pass -ffreestanding unconditionally.
For example, arch/arm64/lib/Makefile, arch/x86/purgatory/Makefile.
No problem report so far about hard-coding this option. So, we can
assume all supported compilers know -ffreestanding.

I confirmed GCC 4.8 and Clang manuals document this option.

Get rid of cc-option from -ffreestanding.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/s390/Makefile                    | 2 +-
 arch/x86/Makefile                     | 2 +-
 arch/x86/boot/compressed/Makefile     | 2 +-
 drivers/firmware/efi/libstub/Makefile | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/s390/Makefile b/arch/s390/Makefile
index 8dfa2cf1f05c..ba94b03c8b2f 100644
--- a/arch/s390/Makefile
+++ b/arch/s390/Makefile
@@ -27,7 +27,7 @@ KBUILD_CFLAGS_DECOMPRESSOR := $(CLANG_FLAGS) -m64 -O2
 KBUILD_CFLAGS_DECOMPRESSOR += -DDISABLE_BRANCH_PROFILING -D__NO_FORTIFY
 KBUILD_CFLAGS_DECOMPRESSOR += -fno-delete-null-pointer-checks -msoft-float
 KBUILD_CFLAGS_DECOMPRESSOR += -fno-asynchronous-unwind-tables
-KBUILD_CFLAGS_DECOMPRESSOR += $(call cc-option,-ffreestanding)
+KBUILD_CFLAGS_DECOMPRESSOR += -ffreestanding
 KBUILD_CFLAGS_DECOMPRESSOR += $(call cc-disable-warning, address-of-packed-member)
 KBUILD_CFLAGS_DECOMPRESSOR += $(if $(CONFIG_DEBUG_INFO),-g)
 KBUILD_CFLAGS_DECOMPRESSOR += $(if $(CONFIG_DEBUG_INFO_DWARF4), $(call cc-option, -gdwarf-4,))
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 89c3cdfba753..edc68538a04e 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -36,7 +36,7 @@ REALMODE_CFLAGS	:= $(M16_CFLAGS) -g -Os -DDISABLE_BRANCH_PROFILING \
 		   -fno-strict-aliasing -fomit-frame-pointer -fno-pic \
 		   -mno-mmx -mno-sse
 
-REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -ffreestanding)
+REALMODE_CFLAGS += -ffreestanding
 REALMODE_CFLAGS += -fno-stack-protector
 REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -Wno-address-of-packed-member)
 REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), $(cc_stack_align4))
diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index c88a31569a5e..b7beabecef8a 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -35,7 +35,7 @@ cflags-$(CONFIG_X86_32) := -march=i386
 cflags-$(CONFIG_X86_64) := -mcmodel=small
 KBUILD_CFLAGS += $(cflags-y)
 KBUILD_CFLAGS += -mno-mmx -mno-sse
-KBUILD_CFLAGS += $(call cc-option,-ffreestanding)
+KBUILD_CFLAGS += -ffreestanding
 KBUILD_CFLAGS += -fno-stack-protector
 KBUILD_CFLAGS += $(call cc-disable-warning, address-of-packed-member)
 KBUILD_CFLAGS += $(call cc-disable-warning, gnu)
diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index f8418763cd79..296b18fbd7a2 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -28,7 +28,7 @@ cflags-$(CONFIG_EFI_GENERIC_STUB) += -I$(srctree)/scripts/dtc/libfdt
 KBUILD_CFLAGS			:= $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
 				   -include $(srctree)/drivers/firmware/efi/libstub/hidden.h \
 				   -D__NO_FORTIFY \
-				   $(call cc-option,-ffreestanding) \
+				   -ffreestanding \
 				   -fno-stack-protector \
 				   $(call cc-option,-fno-addrsig) \
 				   -D__DISABLE_EXPORTS
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200626185913.92890-2-masahiroy%40kernel.org.
