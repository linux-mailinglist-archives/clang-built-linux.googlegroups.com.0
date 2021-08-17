Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC4C5SEAMGQEKGNXBBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 988ED3EE0D9
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 02:21:32 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id f4-20020ab06344000000b002ab9c37b49asf3282755uap.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 17:21:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629159691; cv=pass;
        d=google.com; s=arc-20160816;
        b=oYFUPa9keGZQ0UVW8IBiJ7keyiCjTYywMek3FrUAsfj2ikG/MojZmNPeQCevtCRJW2
         s/FGnBvbI9kWQR+tdTlN36gWhOPlJrayc6DSnDuS2QnUzSFof316EZOeavJTTC6kxgWJ
         +hP5oBEGhMIqxq84fcq5Kk4Rs/EB7suIRAKKaqCvq2pIMD94DszmwyPrdRedli7RJ2Yc
         ruljVCC0llNL4XjZXN41ceZshEAxf1gorc5HCpBd+ikEF4BQuCKqHhpLnXvhbH73+gJp
         tbUT+KLsCK9C2Uee2wmWCopFW6SeJ+XNhnsp0ecAiBXUeaHGZ9dY7mErepeydew1USnr
         r60w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=V+RT0Kp2RQeml5m6E3ibd3hJNbllzqrUfRm/EkQoFmg=;
        b=hpkaTyuycOkAwHHC1QH9mXT4At5hgJAUm0hURwySDX/j+Zn6Y9lendfiCQGgOeZv0E
         tjuYXf0rJNrDfUxBe8A9aFrxnWR2/I6gM4FL1mD0wy+ybyLmp2Tm9uYOWb3v4dpfmAKD
         680J86l8yP+g02qGScAuRGZWi2BwiPuhB1eBCGSccvy2291rXJksutQmphGTfjh8uyLo
         RDKy90b0fpGWQ/O5WvF6VPD/0cAt2GVx5IqbXctLIykTTR8UoCB6KBbfo9M6Xgop2ERm
         Kb3GO5YvZymJ6qbs2PIL2YVs4V6KmDXGcJNQC85/vssp5Ol5Ehy7eACt/vTxJ2UeV8Ju
         Sk6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l4JcmRDb;
       spf=pass (google.com: domain of 3cgebyqwkaicyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3CgEbYQwKAIcyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V+RT0Kp2RQeml5m6E3ibd3hJNbllzqrUfRm/EkQoFmg=;
        b=gKWLp9OQuVOgxvFsrRoivF2sTBLsQFzO/BjaLnVPPlMCUDn9dQh7Ow92hjXM99MQmc
         s3uWmOXoD2j2/OgeX77KCkuPwB5ADpag4pf2z6yUBtnBEoSu2Xd6OrDFBhFFh9CxKdlr
         Jn5XF/KNPsthFjpaoRlaiaIZgZtpaTUB5yGsufGBT2e46waXAoAO37M5BgQcu2YgWfsQ
         ZRCEHRIZAv1w7A1jTWlEnF5p14aczwfF3eIyqs20Jpmlzh9Fq9+ZYChzAPHOxXuXQYh/
         u8YIk0ugjZXLNYOD3SGsEG+T+NosendarL7wZfOnpwhks1+P2mUeC89y2hVE0SWl/2n4
         4K4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V+RT0Kp2RQeml5m6E3ibd3hJNbllzqrUfRm/EkQoFmg=;
        b=UjEDkEcjqLsptgw6/1SJ0sl0Skln5W12Nkb7m91pUnoTS4hzhWJ+gUspddL6cSWKVY
         fjwYxhdJIRvLhhlSUmBEnUbEE/tBmycRYuZS58KF/ekOVcX+tdmOVjrdD7MaS8cpAo46
         YWnyvTd165JU0OY+D6fJjsHyQGftSOMTVkNk+01r8u1vdRhihTZ0qUwSst0fM5RrBhvC
         J5fgVHVntf4RyYjZ2h+jSw1TIElaWQ8wUcHxSL6EnHIOLglQjWbZY6Ze081mavB8MdA3
         On3kjcmFPHYwItQl29h9RsLmToBxi05RSBiv5AlTxfW97s2gXS0ktKJlXt/xAYquDmva
         I1Kw==
X-Gm-Message-State: AOAM531ns/wtxjfzVp2JAzRW8U7/r0MFeftw36MLrOiFC618cNHbK39f
	REXKnod3PZsmywdVk0WSiqI=
X-Google-Smtp-Source: ABdhPJwsdgX+7QRzF5u7xwHIzxZ5QPWBboflYfOz4A4YL09xk44ocqZj9SB2FcvDihaSIl7Gh2MnsQ==
X-Received: by 2002:ab0:45eb:: with SMTP id u98mr343557uau.119.1629159691556;
        Mon, 16 Aug 2021 17:21:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:c01:: with SMTP id a1ls45616uak.4.gmail; Mon, 16 Aug
 2021 17:21:31 -0700 (PDT)
X-Received: by 2002:ab0:7299:: with SMTP id w25mr371518uao.45.1629159691032;
        Mon, 16 Aug 2021 17:21:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629159691; cv=none;
        d=google.com; s=arc-20160816;
        b=V0Gb48s3j12zbjDs3sJ7IZNWxdyDq34ymSyX4vuXYLRBGhy5Kt+0meHeNw3HqRuwY6
         NzQoRXuUF4SbyIHoFP8epYLeS3i1wOlKCyjdASkfVpZgmjRxInC60jpt1iF0uOpBA3Uz
         85usBPb2KT6ZoKn0B7pzLgFvJtUYBG5B0Q6V+rE8sKX3CxN5bjVqWNZ2e8NH8Fd6eU6L
         j591Sh/W7DuMOx06f+cHSmNAK5iGhi5XJpH0BoVR1mBcuiUaQEKMEzNHm4MMSFKWLAEW
         oSZAmzyHrbkXYEafOrQ/AQua8zm1ozzSHsgf/GNHewabVvi6WiOMlsQQ4hPNE0cYwamC
         MmuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=kQY8kOYZdYKiHWDklrQnDN9z/iRRKX3LSfg/PX+3Ycs=;
        b=SapseKyM6tSO/tan4vTct1XEbi90sh6WZq5olF1/xtlSS6Wy7N8OtlPoBjsUcR2EY+
         pMlMNmdF/NrbllBAmOJoVz25XUOY3S4paKFwX71txAIyP+ymPXRGXsQXA03/Tn+k3zZp
         5DeWUq1LAB/G8sY7UMgMFlEYI8S4xy0B0af3ZqAMDJqYoZaoHgj7kHyfxmXoEbrw/0hH
         +SfNX/hSLZCLLjg5HVKn9rCaQ+uVKRln7Z4Gi5qd6ZZwF4teAMBYw/i2cR429iIdVIdW
         6YBN+9TnjaiBaG1pG1uEXBDNIbI1qV9Qj4vMXu3GcXtdF9aC4fke2SVVX/A7M7cNuXlE
         VXfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l4JcmRDb;
       spf=pass (google.com: domain of 3cgebyqwkaicyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3CgEbYQwKAIcyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id ay9si22427vkb.0.2021.08.16.17.21.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 17:21:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cgebyqwkaicyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id l24-20020ac84a98000000b00298c09593afso2318587qtq.22
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 17:21:31 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:478:6e44:5cf7:fcde])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:324:: with SMTP id
 j4mr727123qvu.34.1629159690697; Mon, 16 Aug 2021 17:21:30 -0700 (PDT)
Date: Mon, 16 Aug 2021 17:21:08 -0700
In-Reply-To: <20210817002109.2736222-1-ndesaulniers@google.com>
Message-Id: <20210817002109.2736222-7-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH 6/7] Makefile: replace cc-option-yn uses with cc-option
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=l4JcmRDb;       spf=pass
 (google.com: domain of 3cgebyqwkaicyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3CgEbYQwKAIcyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
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

cc-option-yn can be replaced with cc-option. ie.
Checking for support:
ifeq ($(call cc-option-yn,$(FLAG)),y)
becomes:
ifneq ($(call cc-option,$(FLAG)),)

Checking for lack of support:
ifeq ($(call cc-option-yn,$(FLAG)),n)
becomes:
ifeq ($(call cc-option,$(FLAG)),)

This allows us to pursue removing cc-option-yn.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 72f9e2b0202c..f76be5f62d79 100644
--- a/Makefile
+++ b/Makefile
@@ -967,7 +967,7 @@ ifdef CONFIG_FUNCTION_TRACER
 ifdef CONFIG_FTRACE_MCOUNT_USE_CC
   CC_FLAGS_FTRACE	+= -mrecord-mcount
   ifdef CONFIG_HAVE_NOP_MCOUNT
-    ifeq ($(call cc-option-yn, -mnop-mcount),y)
+    ifneq ($(call cc-option, -mnop-mcount),)
       CC_FLAGS_FTRACE	+= -mnop-mcount
       CC_FLAGS_USING	+= -DCC_USING_NOP_MCOUNT
     endif
-- 
2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210817002109.2736222-7-ndesaulniers%40google.com.
