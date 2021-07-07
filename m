Return-Path: <clang-built-linux+bncBDYJPJO25UGBBB64TCDQMGQEQIZDPLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id A01C73BF22F
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 00:43:20 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id e14-20020a0568301f2eb0290405cba3beedsf2543307oth.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 15:43:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625697799; cv=pass;
        d=google.com; s=arc-20160816;
        b=DQoZzQkig1u9i8NbwvM6G4OTnQ64hnPjeiK9do7twgWZATpoeJ5rfMI+dQx+ucwrOt
         lMLL9lyY+MmUedrBrD8jd4FIOnmfc7bi7j6wn/B8G7rpNTRdcANegHjeW/GDM6eHSefF
         rgsBheSyhrpB2pHQZMc/i0BVc++29ADVPjsenr5ukexiOcigjplBVGQSgPkcwXQQVGQp
         BhTBoNI1jdQ40WnEsvfu+w0XCVbbnIPMSWNgegpLUwPLaVh1TJ5ndznU84aj8cx/fTG2
         hjyHDAgEkl8LCbyaz1nwEUvUh+HPRUK1RBdM6qEqNFUX8D0//wFIsrV4JMK/NwYudz2H
         xCNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=f8WD6jW5gUooFMMHJ+cW9ai5EFZQb2P6kqxu5PULrfw=;
        b=G93u+hHHF2ymr7wEqkq4E5GFHk3EjhYZER9K+9K7M7aHhbc5aXFqK3C3jA1FIQeKtq
         mdqEdNMQeSXfrKxppbCPQpaK3X+A56eIkuQO4TPDeOQKF51JCu+bQ3vRR6HM5x5aS/Us
         +8GZ4bmE+LCH8rZCtqz/cRNG6Cp7rzeXR/YjiTmFsoUZRHOO+499B2LpnOEtEK9bWsQo
         feyvprg5tC846KrICeDuzKpi+6yTnQruz3HVIlGrCnh6ndTubwQ46rv8dXVHcIRjX8xS
         LRWVnY7/1foiEEAEq7/0YBOFjWk/1TymqqLK48pnI8UEEsn5jLS2VCa+mid3LWXTtMdw
         VOZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aMgaH0f6;
       spf=pass (google.com: domain of 3bi7myawkaakwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3Bi7mYAwKAAkwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f8WD6jW5gUooFMMHJ+cW9ai5EFZQb2P6kqxu5PULrfw=;
        b=b4qCwpaE/1OoqU3qJ60uiTPcQzgkJIhWz3cbAfQy4YF8xMV/ECQtG2cpY4UszI8D/X
         8ZifsOUo13MA2ukVaM4ImD9MhL6bc1sPQZMZS2kj1sBS93K+1O94S2+fFg860FrtlLcf
         sAQ17Jfp0dcivaBu9J3/D1fGcCzTIOfR2cJxBXCFaA6cHZI20vc8Q0mlUXy2ZRF0mi43
         fJ7xOt+h/3qbBJjStzVzOlZnayiP4yDbJTZ0JurA7dBCSQF7Ak9ZOp+aguhsfuoAhEzE
         svmSh6qmhspLMeEY2vwiSGDpU87HJfP5whfu0eVAeV83hq32FsQIZildfkBS7i1gScW9
         FY1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f8WD6jW5gUooFMMHJ+cW9ai5EFZQb2P6kqxu5PULrfw=;
        b=lTJwDXweKi8H1lxItgb/MEO8bhpJ3wE+jcfkSX3JHZbKAi2t9EpN7iWIZSpNqDKptV
         Gtw5xILUZzGI4nU6RqQukF1WP6lEEGLZ+UUzNWQPCCHx7D92SEGgyLg85xyDZoeGbW/O
         bjkNbdmwZwnWsarwjXrsue3dkVknR3wGzRWEwvQ+W3is9p/JHDF2e9adtjdeD/fA3N0Y
         06dhGfCvcSLN47/dmaDySYZaHtpMyG8/ZXusE6X5HyyNjxIdomi2eVHejFv/nHzH6fCC
         cO3zkEY63bz6iPDFlReKbNR0OgnHVrvoLbc5+0S1il9SnG0bVNf+dv9z5638KlYInrbz
         Ii/g==
X-Gm-Message-State: AOAM533UzYoqFx5dJ5NkS2HGLI0xsTJyca9ksd1NjeUkdO84NG01pjb9
	424veHEYZFOFHN3JxlEpCfE=
X-Google-Smtp-Source: ABdhPJwhTpovGKChWiFNKRJj8hwvRwtDJTUv1hEHO8VRRpjNT8xaPVj/ITEpKX6K8Qt1zvWp2Q/HOw==
X-Received: by 2002:aca:b502:: with SMTP id e2mr20358844oif.61.1625697799532;
        Wed, 07 Jul 2021 15:43:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:bd6:: with SMTP id o22ls170134oik.1.gmail; Wed, 07
 Jul 2021 15:43:19 -0700 (PDT)
X-Received: by 2002:a05:6808:14c8:: with SMTP id f8mr20572544oiw.7.1625697799236;
        Wed, 07 Jul 2021 15:43:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625697799; cv=none;
        d=google.com; s=arc-20160816;
        b=llOnEG3lhstKuICHsuoO+739X2Phy0I29ILET5Ez8WObUL9tr9wmJoVS/I204TEJGO
         lGCzSC6fLjPByt493t1KVgHO86GVRuGwI5gkgIttUAxI5vNKlUBT1te+xZbTLn0XGD4V
         xdPOIRKvDUD12QgXieV73fkC17uT3KJr6OjV/YX1FTQQ29juowPNrsPPAKVTvThPVSoJ
         Tab404gTu6cEv9g2F9SGSnWAByMu8aSs+13yTEBAnEGjWAWpF6rlSBN+v+jICkvoAmWs
         /CqBkqEX9Xi4cpXnAFzkjMF6TXALr/XmIOhtM3OyXjusudAp0bnkBKQFVjyD7hB4n6PB
         2OiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=/85l2E8K+20QVvNNb2KxNFZMM43rwvEksKDAAvMmyxw=;
        b=m8PvWpieMvo1zK99yaMruXILrEp+v83YYvr88dknIMGMnSVc6O42b02h+NcAJC6fvD
         BwUZgThjxewg2wX94hApfE3JuypHf5bd+8iPs5sSr7FaZbJD0N9v44jj8iHU/+VFm2Q4
         dYp6eGjAOq1BM7f+BMc2JsvlW5gGRtNDPVn/drS6jbpmU5TwDpuTBvSvQ8MmQNPZuumd
         0k487RVUrabPkJkzD2kP56kTHg/yditQ84zdQh3eF/oOh3qnyKndTnAnOxQMeWbG8+fC
         TMx8ux1c3augsjVXXgW9db6RB/RIF6UF0XJFPCHLi9/PZR/4CmEWGYLotf1hFe1hNKDQ
         qrqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aMgaH0f6;
       spf=pass (google.com: domain of 3bi7myawkaakwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3Bi7mYAwKAAkwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id m16si46169oih.4.2021.07.07.15.43.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 15:43:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bi7myawkaakwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id e9-20020a0cf3490000b02902b985572598so2675878qvm.2
        for <clang-built-linux@googlegroups.com>; Wed, 07 Jul 2021 15:43:19 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:d417:6e24:4a54:1792])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:1a0a:: with SMTP id
 fh10mr26007149qvb.59.1625697798784; Wed, 07 Jul 2021 15:43:18 -0700 (PDT)
Date: Wed,  7 Jul 2021 15:43:10 -0700
In-Reply-To: <20210707224310.1403944-1-ndesaulniers@google.com>
Message-Id: <20210707224310.1403944-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210707224310.1403944-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH 2/2] Makefile: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aMgaH0f6;       spf=pass
 (google.com: domain of 3bi7myawkaakwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3Bi7mYAwKAAkwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
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

We get constant feedback that the command line invocation of make is too
long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
target triple, or is an absolute path outside of $PATH, but it's mostly
redundant for a given ARCH.

If CROSS_COMPILE is not set, simply set --target= for CLANG_FLAGS,
KBUILD_CFLAGS, and KBUILD_AFLAGS based on $ARCH.

Previously, we'd cross compile via:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linxu-gnu make LLVM=1 LLVM_IAS=1
Now:
$ ARCH=arm64 make LLVM=1 LLVM_IAS=1

Link: https://github.com/ClangBuiltLinux/linux/issues/1399
Suggested-by: Arnd Bergmann <arnd@kernel.org>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes RFC -> v1:
* Rebase onto linux-kbuild/for-next
* Keep full target triples since missing the gnueabi suffix messes up
  32b ARM. Drop Fangrui's sugguested by tag. Update commit message to
  drop references to arm64.
* Flush out TODOS.
* Add note about -EL/-EB, -m32/-m64.
* Add note to Documentation/.

 Documentation/kbuild/llvm.rst |  5 +++++
 scripts/Makefile.clang        | 38 +++++++++++++++++++++++++++++++++--
 2 files changed, 41 insertions(+), 2 deletions(-)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index b18401d2ba82..80c63dd9a6d1 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -46,6 +46,11 @@ example: ::
 
 	clang --target=aarch64-linux-gnu foo.c
 
+When both ``LLVM=1`` and ``LLVM_IAS=1`` are used, ``CROSS_COMPILE`` becomes
+unnecessary and can be inferred from ``ARCH``. Example: ::
+
+	ARCH=arm64 make LLVM=1 LLVM_IAS=1
+
 LLVM Utilities
 --------------
 
diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index 297932e973d4..a79088797a50 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -1,6 +1,40 @@
-ifneq ($(CROSS_COMPILE),)
+# Individual arch/{arch}/Makfiles should use -EL/-EB to set intended endianness
+# and -m32/-m64 to set word size based on Kconfigs instead of relying on the
+# target triple.
+ifeq ($(CROSS_COMPILE),)
+ifneq ($(LLVM),)
+ifeq ($(LLVM_IAS),1)
+ifeq ($(ARCH),arm)
+CLANG_FLAGS	+= --target=arm-linux-gnueabi
+else ifeq ($(ARCH),arm64)
+CLANG_FLAGS	+= --target=aarch64-linux-gnu
+else ifeq ($(ARCH),hexagon)
+CLANG_FLAGS	+= --target=hexagon-linux-gnu
+else ifeq ($(ARCH),i386)
+CLANG_FLAGS	+= --target=i686-linux-gnu
+else ifeq ($(ARCH),m68k)
+CLANG_FLAGS	+= --target=m68k-linux-gnu
+else ifeq ($(ARCH),mips)
+CLANG_FLAGS	+= --target=mipsel-linux-gnu
+else ifeq ($(ARCH),powerpc)
+CLANG_FLAGS	+= --target=powerpc64le-linux-gnu
+else ifeq ($(ARCH),riscv)
+CLANG_FLAGS	+= --target=riscv64-linux-gnu
+else ifeq ($(ARCH),s390)
+CLANG_FLAGS	+= --target=s390x-linux-gnu
+else ifeq ($(ARCH),x86)
+CLANG_FLAGS	+= --target=x86_64-linux-gnu
+else ifeq ($(ARCH),x86_64)
+CLANG_FLAGS	+= --target=x86_64-linux-gnu
+else
+$(error Specify CROSS_COMPILE or add '--target=' option to scripts/Makefile.clang)
+endif # ARCH
+endif # LLVM_IAS
+endif # LLVM
+else
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
-endif
+endif # CROSS_COMPILE
+
 ifeq ($(LLVM_IAS),1)
 CLANG_FLAGS	+= -integrated-as
 else
-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210707224310.1403944-3-ndesaulniers%40google.com.
