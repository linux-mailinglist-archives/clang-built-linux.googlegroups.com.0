Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBBW3433QKGQEVBTZPEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C7920CD68
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 10:59:51 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id m67sf10638795qkb.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 01:59:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593421190; cv=pass;
        d=google.com; s=arc-20160816;
        b=y5+262CqOo1qs1Z8Lfqvj3CpSH41kmFwVvriEbZ8sLo/uV0pVlnzPpSE4OYEzplIPr
         L60rz/3exW5bFHZ+llOx8L7xc9cEGIkPeFh6vZVxzD3exAWl5WvP7Boa30fag2HWp3Lq
         heC9a7kndfhKoJH9EXExIrp2mWEznKjOjBtq7UYV9G33oGBPDMVoRoVwvLUdTpiLDbzA
         JjU6Y3ImvzypTzak/hADXwD2xDAmIubyaoxN4Iwl5DwAoCOOyguFo8mUxCY2cHTvJCiC
         oOir7GvnQx3CAhtTsnT3F2Xss40apMn+cz2y9b7UKKuH4Oa03AXE0OtGLKBPCmhoGvAi
         QZNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=AqxNKN+CvkHTvD9AQr3QUbZ9ww+7uRrUaB02gGkGQqY=;
        b=DOS+fa0xNIczcVYPcbhcPu2QnFCO0x0UQUIYjfPLCWcnXy+8SkqSMyyZ0rREPLsogM
         UgBRVhnBKQfBxif02FV3LEsjHuQBixJhTYt5srDgVCxAWDOfDGiSd79JPVZB+Dzis1N9
         1TAsD1CO6JwhMLNwJjRn0KcKUecpTA2YzoCi1nuG7ikdDBtyg8jXRaWyboDMiLg58EiN
         EUCPGaTFMMABYxzlycevHugY/J0I8I+gY559TVydZFkI+ifVLF8btV2qX3cQDhYM7Olw
         sk+oxXl2gZfZ1Lh+6JVtLuT5EG1K0X80hUjAp3hN9yRc/yQXy3pdBCgOPSJVy+ErfzjT
         zkqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=jlSAjWeg;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AqxNKN+CvkHTvD9AQr3QUbZ9ww+7uRrUaB02gGkGQqY=;
        b=ALZOhsaLuxBIHyz9SUgeT5TcZemOqg9k1ElHqvvmZxUDBGiRWWuFdakmuJSpez5qfJ
         v++Ie4l/3Wtpmzt0bTByYZxCukt44TI3FElvr28ynDqVNNUz070+uyC0YbzOIxBfXcNy
         ihuJ//PZWSkv2msy1Afj9OTlUJ/JJSZtWl0Idne/lWrBS1dROIIN/RXgF4feu/poXzxX
         abKWEKJXDXc3vcFXC2U1+0L0kwkYPScTBGFrSsO0pV2VoOvSx4EiRbZsnyNGqoS5smcR
         G5H6BF9XocblkcGzK0fNviTu9NwTuP5GsbKqwmYySpYgE097ywWRgnV2TQa39IT34a30
         UvIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AqxNKN+CvkHTvD9AQr3QUbZ9ww+7uRrUaB02gGkGQqY=;
        b=GptKl8r8GijrmbxRj6YaG8OJCJkun7rq95ZABqXFk6FxuDafCYoChCImov/fRuRCl6
         y14VliTb4/qiQY/QzSRk8to35ymXG/PRXyvAjfEmLLFbAo+JpjPoY3fEYQyZtX9IruGB
         v927citOY0fH8wQ7whW4NR4K5bIv+6KZmVen3RD2drnk5n799xiEXf4iL6vFaaVH3G4m
         fPAJo7Q9FQJdfNol0h7I/bbpjJTy0pjQUR+DPSpq2hODHBaYcFLH8unrxv0R024ONp2f
         1Ln1vYmVVCR0Ms//bNWtVF3kYz9YjHVuJqZ9H+lX7JzyPlyFsCYbQ8kJd/hb7+ASrj0b
         VG1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YaUVc+1DVDoSnTatl3/k7NLj6ypUH6EIPIcMdbiTLdUDlToeY
	+afrIZ/zO0VEBcNyuP4qjjs=
X-Google-Smtp-Source: ABdhPJyGx/q+2E8VG6YR4F5D2p7byGHwOnB+slbqEy9aKUOH6JHhkYoLSbEqzri0eYKsngS2x8nO6g==
X-Received: by 2002:a05:6214:846:: with SMTP id dg6mr13400349qvb.210.1593421190374;
        Mon, 29 Jun 2020 01:59:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f78b:: with SMTP id s11ls3686462qvn.5.gmail; Mon, 29 Jun
 2020 01:59:50 -0700 (PDT)
X-Received: by 2002:a0c:f88e:: with SMTP id u14mr14439885qvn.81.1593421190060;
        Mon, 29 Jun 2020 01:59:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593421190; cv=none;
        d=google.com; s=arc-20160816;
        b=UVq2ZRDEyMfh4FysfSvmcXnErigopCcPGC6wsvWP81PdDon7J3Vn6mmTG9a4CZE7mH
         B+vuKMLB85up63KJKCpEAvnoZFv5BIMveO8h7BUWfTepk66JEwFjKSDCdtrMjPa1/H4Y
         kTs/u/RV3RH9hEAUsIh1zJDa7TRaZjFQhQPRw8kFVyqKHsmjmeesfB9tnqxVLrHAoN3F
         86+OLUaeX7DPV9S4EgTyQtmnsaikE34LgUILwymxPDaZytPUAjvMN4dhdE0a5tMPO2us
         KeShmjAFzVnodXHjin8lSgYuwv0KDMbBeTs6yL8V/uVJq/E3fPHgyxGVXD/T1QNdeDQA
         MFXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=NsoI4eUWa9rbUruhM1nTxkmNquCZM22p5ZB+WQfFzbo=;
        b=oCQTXj4uJayoFvCclz45BClaDRtgcJppaYzMRyhbbLbIOFnFgS0/IewQx09L2U/7O2
         7aqbXt/SgpEfZ5rbnRK2juraAJE2CWo9L686wVoBCjatDMnSKE8h0DhSK5uDSpt5rYrg
         YwlGpsrdlimGZMFVfIlqLdq5108sy6bFADQ9FpjqO8VYKmHiMEWwVyjQmi+vPKAehQtv
         iVi5iiM6Vrck581g9p2khhVxBDAb7EqYA5k1ygkXUmeRMW5++k+lHKUmNwuJUHbpCbVe
         /YpI8uGnPv0a3VsWo9AbyY9ztdS3b2ARe2wlwYXjRgic5HuCiRdI2o1f++Fd05qcCfKH
         sg1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=jlSAjWeg;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-07.nifty.com (conuserg-07.nifty.com. [210.131.2.74])
        by gmr-mx.google.com with ESMTPS id w123si2104103qka.1.2020.06.29.01.59.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jun 2020 01:59:49 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) client-ip=210.131.2.74;
Received: from oscar.flets-west.jp (softbank126090202047.bbtec.net [126.90.202.47]) (authenticated)
	by conuserg-07.nifty.com with ESMTP id 05T8xLJe008001;
	Mon, 29 Jun 2020 17:59:22 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 05T8xLJe008001
X-Nifty-SrcIP: [126.90.202.47]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Sam Ravnborg <sam@ravnborg.org>, clang-built-linux@googlegroups.com
Subject: [PATCH] kbuild: make Clang build userprogs for target architecture
Date: Mon, 29 Jun 2020 17:59:11 +0900
Message-Id: <20200629085911.1676554-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=jlSAjWeg;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Programs added 'userprogs' should be compiled for the target
architecture i.e. the same architecture as the kernel.

GCC does this correctly since the target architecture is implied
by the toolchain prefix.

Clang builds standalone programs always for the host architecture
because the target triple is currently missing.

Fix this.

Fixes: 7f3a59db274c ("kbuild: add infrastructure to build userspace programs")
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 73948798ce3f..cac29cc2ec25 100644
--- a/Makefile
+++ b/Makefile
@@ -970,8 +970,8 @@ LDFLAGS_vmlinux	+= --pack-dyn-relocs=relr
 endif
 
 # Align the bit size of userspace programs with the kernel
-KBUILD_USERCFLAGS  += $(filter -m32 -m64, $(KBUILD_CFLAGS))
-KBUILD_USERLDFLAGS += $(filter -m32 -m64, $(KBUILD_CFLAGS))
+KBUILD_USERCFLAGS  += $(filter -m32 -m64 --target=%, $(KBUILD_CFLAGS))
+KBUILD_USERLDFLAGS += $(filter -m32 -m64 --target=%, $(KBUILD_CFLAGS))
 
 # make the checker run with the right architecture
 CHECKFLAGS += --arch=$(ARCH)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629085911.1676554-1-masahiroy%40kernel.org.
