Return-Path: <clang-built-linux+bncBAABBT6VWT2AKGQEEZTPTHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFA61A199A
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Apr 2020 03:37:20 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id q67sf4511030oia.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 18:37:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586309839; cv=pass;
        d=google.com; s=arc-20160816;
        b=xOonILQ+KP8SdmLtBuql6kMfywkQizyXaGIE9mJHmiUJt/gE0JtfczdYTkOz9+dTF/
         Tj9RlXVwQ7jsVbEfHCuWxcm61oLsS2uqdgePBNvuXtQPSKPwApGEy7JkxLHFErasDSgy
         vB+MQTOxf+K8brM2UDpyc7vx1neEgf2SISbtmwQbRiBmNN6DVcLJ3Olh2RQi23jCXMDv
         TQBe+pjRqOAyztZ9SAPpLz3QwRwilZCD+ofzVAxTGwFSmjKPUKOOU/hFKjqNNy/w1+L2
         iLeoIppZIm9AAMrvzMjOIHgQNtGYUpyebJwBrjcaClBm9TqYV09mgiGLtncQ61EY6Hqd
         FXuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=dJcfPwsdXON70Ms/3paI1Y2QckURv/HoZOr/WCcKq8o=;
        b=sr2tZ1GJiQii1Yd6y2gMrnEw7UPGDHYZfCKCtA/j0b+oW5vxwnF7c7261lBRTOP1c/
         GrFNFtye9YbTL18x+0rBb44AK/0+yAlYW28sajkJugOonrTsG5kYyMfJ11TBffkswAzN
         27rAzSKSE7L1hoP5RK5uRBnUX2fwN0X1syZKfiP0cTYX+9FpzGXVmrWrUgmDrNa1QtZz
         GqcQY3rS3IgDunXYxk1IIjEe4Wq6zEKGJ67xkaFb7oGSyjkbBOHFusm5a1o2UZ3CaHTm
         IOV+/tqXvT07kXoFqsf4AdEIbmqutP/EO00afE7YWYL09MVdeuKkFkmhkURZ0+jUVF/2
         jvFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EYNWU9Wn;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dJcfPwsdXON70Ms/3paI1Y2QckURv/HoZOr/WCcKq8o=;
        b=jBiTZI7pJTimmlitbVD4+I9JpZsSNuuOxjRjtEgzcmJqsjXEEAwIvot0nBjA2CYH7r
         1dbQS5Wyk8cntB0AWiW16tBw2/yIS9vrp3+hHrYkrcYa+bmDVmQaCLcvhzcZBH8dTR5q
         TmwfHt1/zmQC52jU0Ib+NMxFZc/KAQqPfmYYAj1/Hzb8AWkx+R+l0O4kizhozbQEdXAm
         o9TV2DPnx6omfgS0/B/dcSZo/nHG3na5Or4vzYVL3OZcpiu2SCuMLuFAV35N2vo3vole
         L8zPzFmZU6zGnBw9O/sow5Q7XUHH/AkK/cYGrRfMPaJcSp0/dvN+w4umbNdOz0vUTdxi
         PWkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dJcfPwsdXON70Ms/3paI1Y2QckURv/HoZOr/WCcKq8o=;
        b=bbClEOy8Z2sLTEAjiBLMhvsFTiN1/u5e9Blo7XZC9yS6By372J3TKtJPerkj/0dFiF
         hu8ixN961LVibIAW3urSyEMivYPeZKhsH1HV5EIJnclmykzuN3WRFkouy9fR5ZROoIB/
         Wfl1HKTheJDs9NkiHnJkMrjT0yLd7JfiD0z+O66wvyMVa85SaJ1yGdpHUHDIyLxXJU2n
         EICKDcOyA3/z15Ri9NV3Jg64EzJktcN2YJ5wI3PQKFUZ1h9tBxH2fsho+UOSRk7stucD
         k8sEIfZsOTRRgL1XQTEx3SseU++5L8btxo5PX4vv5DrVPidMnOMgRi4yor20vF0rWYla
         guyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubiaOpzgXH1Xc7j4QrdV4GhasiV0VWqyh3OvYeMOUsC55pBewPb
	u90Egn87h5oEVe/W/9htK40=
X-Google-Smtp-Source: APiQypL0pU+bDyqGqnkVDfQDjL8Yig4sBRxS1G6IEd8VU/eQJCsdGGodGEJDNaHum87QR0GeyxvYHQ==
X-Received: by 2002:a9d:6c94:: with SMTP id c20mr4145661otr.49.1586309839655;
        Tue, 07 Apr 2020 18:37:19 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b98a:: with SMTP id j132ls2390951oif.3.gmail; Tue, 07
 Apr 2020 18:37:19 -0700 (PDT)
X-Received: by 2002:aca:4d86:: with SMTP id a128mr799051oib.96.1586309839374;
        Tue, 07 Apr 2020 18:37:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586309839; cv=none;
        d=google.com; s=arc-20160816;
        b=xeAvNYniwZflifn/z+WBhHbYCrgGWocYw7HhpRueypdmLxtxQkc0zBT1NmBW/euZld
         3BUUK2RgAvcWGTdQx+EkVxYcExZN9/GZuh3kKVsSDi4KfFWROeifLPCslnsGLdNKNSMi
         FQ/03gqDhfssY4Mg/cX5VZkxYh/he23B1grZ10rodhvoanKsVkXEq0nBtFJf74xNCX9G
         h2wuon/vXY7Kz1uG+vCZcwht0MFOdDbTnpXPd28OAPEofPryx6/u0s6+ANGidD2o32mh
         wKbZfk/TNXuZm4QduJ1r/rW2A27Bpj/sEQhP31f1PBHoHg+8OWScpxge+D/eAqahV3Fg
         hNBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=L+PxVczbvSKDZy0QWnkH2JdHG6AtVEb4Ujw81uwS82s=;
        b=gDbzYk+mKXjiw+JOIYuOkTdZRnWZ7nmUG1YDKBkH4Y3K++AZuykqXr21Dz8tPvHe2/
         MTzxBTJLrr0rqA43GqwuqBz0gj1t1qaENg4mMKLBNIKxLh9cpxuOJRJ0XmO3ucsYyqVl
         q0QQ1c/ygyJr9xIaKmpaeeCIoxi40NOuWNdQFD5N600XmSqH0vRUptCR/PKfAxq2e0Jw
         as69fGFQ76bxkXj36BxIzQF35CpFhBDdZVC3cnqCqn3oVqOtKGdeaKOD6m1f9jd+rjV8
         gRkpbzU/Px0YOMOzMx/BoK0pEzDf7QHOVBIXvVHIZhdc4xczE+N7cnKbJiVb6SrIzqdJ
         5ZIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EYNWU9Wn;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id p9si510093ota.4.2020.04.07.18.37.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 18:37:19 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.flets-west.jp (softbank126125134031.bbtec.net [126.125.134.31]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 0381aPHj015816;
	Wed, 8 Apr 2020 10:36:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 0381aPHj015816
X-Nifty-SrcIP: [126.125.134.31]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, Fangrui Song <maskray@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Michal Marek <michal.lkml@markovi.net>, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] kbuild: replace AS=clang with LLVM_IAS=1
Date: Wed,  8 Apr 2020 10:36:22 +0900
Message-Id: <20200408013623.31974-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=EYNWU9Wn;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

The 'AS' variable is unused for building the kernel. Only the remaining
usage is to turn on the integrated assembler. A boolean flag is a better
fit for this purpose.

AS=clang was added for experts. So, I replaced it with LLVM_IAS=1,
breaking the backward compatibility.

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

Changes in v3:
  - rename LLVM_IA to LLVM_IAS (per Fangrui Song)

Changes in v2:
  - new patch

 Documentation/kbuild/llvm.rst | 5 ++++-
 Makefile                      | 2 +-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index eefbdfa3e4d9..0fefdf1737e9 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -50,11 +50,14 @@ LLVM Utilities
 LLVM has substitutes for GNU binutils utilities. These can be invoked as
 additional parameters to `make`.
 
-	make CC=clang AS=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
+	make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
 	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \\
 	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
 	  HOSTLD=ld.lld
 
+Currently, the integrated assembler is disabled by default. You can pass
+LLVM_IAS=1 to enable it.
+
 Getting Help
 ------------
 
diff --git a/Makefile b/Makefile
index 1b2691057cb5..a2aadcf8a36c 100644
--- a/Makefile
+++ b/Makefile
@@ -538,7 +538,7 @@ endif
 ifneq ($(GCC_TOOLCHAIN),)
 CLANG_FLAGS	+= --gcc-toolchain=$(GCC_TOOLCHAIN)
 endif
-ifeq ($(if $(AS),$(shell $(AS) --version 2>&1 | head -n 1 | grep clang)),)
+ifneq ($(LLVM_IAS),1)
 CLANG_FLAGS	+= -no-integrated-as
 endif
 CLANG_FLAGS	+= -Werror=unknown-warning-option
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200408013623.31974-1-masahiroy%40kernel.org.
