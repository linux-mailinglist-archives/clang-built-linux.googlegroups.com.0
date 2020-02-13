Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBIHNSXZAKGQEOFKCBOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AED515C7B3
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:17:36 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id v11sf5222967edw.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:17:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610656; cv=pass;
        d=google.com; s=arc-20160816;
        b=WjkiIHyAtRLv1OIAspp/l6jzb2ESJTBOxPlO9BGcrWvPOwSjTuV9xG536p+It/KDGd
         2+1VGjN1E8/Nl8frk14nTO1xrk1+aBEPte45xe3fUUVvBQoMeVuG+tlRW+QJAb/5Goxm
         vENAxmjF13/A1PQZsU4PtHsOravvaF5WWwli4J2zdJIRrtFSwA67QUXYqHQlU+hQm+fj
         E9/tyfYcT9O3zO9bvDBCCCyBpBqENzJFGvk/v5l4NmsoVDFiF/w1zvSYHBLNoCMtL00u
         zPSWV1FfcTnPIj1t1Uh85vtPZRbTFL1Ghtv8TRl4Y9cIZgJo1uQpm4QvZwUqqCRaVIJG
         zA+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eSQ1LoyOCCekk/Nb2+HsRwihigPyCiasO4byArZGtMg=;
        b=MAmmjJFmsKgQLVQfsZLrkTshsXexaHIIXi4+w31s24K+0ymqBnnVpfoM5lvwnjBfCR
         UrJ+9CqcEsgdiA8dLkE7g99PrmWftsH/juZ5e4OhY3IaGCYqghxSNLR10+KcjLzdC7Tr
         deS2Uk4i7amoqP9cY5lGIp+zdsYBCpyOzqedkLppE+jWGyiwfOm1pmIk13W+EtVtYATf
         C019QmUqejtUfYgOud3zp14QSB9b8ZM1z4DtUHOZD2Y7u1o4yIJyqYd5G/dVvmMBKRoS
         i1E6BOaY1WSna3yfXmmBvllKRmooPNoIkGM6bmXZV29CR0gWObJoOujFOSorBVX5UNKR
         LmAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eSQ1LoyOCCekk/Nb2+HsRwihigPyCiasO4byArZGtMg=;
        b=M7sYo6XRd1Ta/S05jhiwbMP8QkluRPsoeOHAf8iuuIZc04gFFaS2Lv5gAwohAZUsN+
         WSW01UGc9kuQYIdY2WAsP1ud2ovB717dYAWkV6vA6Bf4RphHfhU2oD1Ox1GakBf5SMRc
         S6cAG0bTBl7gArVqzwPU75LZjHTWr4dRxCDMkUm3gX4tzKhflo/Rom8RseQa1bjyqyvJ
         8/ZiV/y6z7t26vg4pFw891fhWPcKcE2tV18kQ1KO/FiR2TIZ6IA/qGdEpTddU0w/WVnJ
         Dwg1V/do+j1jmOqq64F9CIq78Vvr331zX1RsGsvGmvarHPpuasMSBCSG6RGr+/O1hTfJ
         zRLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eSQ1LoyOCCekk/Nb2+HsRwihigPyCiasO4byArZGtMg=;
        b=P0+i5ctCjvRRPj2slvqk7zdKswJ64Yr+FPhhWlSOLVE1zqKA9PZjVHqDkqBbKh7Cb0
         o5gZYlmILJq43q0Cy5S3d1BPOmpfetjtS/BbevwWfTZamRKtWx+ZsfDeWKpX5y9KXJeG
         7+zkNFDVgfjmLVFQYTL9Fv0NunSq/e3TWedEYmBPEWDluVRmq0iJN+9jGjRwot14ybcW
         NfJkHHEWYtrNwENUh91g2NOXh+Qvcy9S+IhJB4cqpzUpdJPaL1jhdEHA06XiGYIrrgXC
         e6vT4/NCHRxCxF1JduPoz0m0Iix1RUlvicJPub22q+uwALnFhJDmGlk4hYJu6IDTMm5r
         6rGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXeior8wYjqTTWQ6DrhXqOIeVyQSLH0f6ZKuNkvJ9k0Leib+QHb
	Ty36NFpV1mvqXm1kJqgx4+8=
X-Google-Smtp-Source: APXvYqxmBzknLMF/i7VLeaj0emgirNrsL5LTckhvR4qWKRc0EXBSlCqZ8NAcQqe55j4SGG7xaV1TaQ==
X-Received: by 2002:a17:906:4708:: with SMTP id y8mr16922210ejq.162.1581610656232;
        Thu, 13 Feb 2020 08:17:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d9ce:: with SMTP id v14ls11289972eds.5.gmail; Thu, 13
 Feb 2020 08:17:35 -0800 (PST)
X-Received: by 2002:a05:6402:134d:: with SMTP id y13mr16242930edw.39.1581610655783;
        Thu, 13 Feb 2020 08:17:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610655; cv=none;
        d=google.com; s=arc-20160816;
        b=k6oTF8RBdknXGjSOa8tEHdaiwPNqrp4nTkMqkOTcMA8p2V2Gg3ykWEtKVkH2YI8sIH
         1pP9RI0ktMNgh3JjR+9PAMyulqFeYBsUeNJCc8daZxLjMADdwDOH0pY1ZObXYv2hmj4Y
         6xOIRaUS995Ip1ZwQU/JOrriVpdpMxS+erWclT/Ro9XQrlO29v9j0Yrbh4i6zYAt/JkA
         yc9Rky3e/lA04xCJrx7/jDV0ynbCduOnn0oMtvr3qDSJzFZ+kDWd4c+hJvBP/jLDgLDz
         dp7OvtWJpGYuH9rE5X4DlpP7ucTI3hppZduuE4aRzIQPUqcg3XAy9m3Z3Sfz6tEGLLHS
         jIWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=lMpPo5Qnigj3pi13VUFXodDv6rd9LaLHBEnbxybVRwU=;
        b=WerVWFUcHMsMimqMKsFec/z+J+58TTjoQ2nqKVg/6064B8EnvxqQjbmtEPuaFmNOY5
         ylz/Ob8tZFFDsfHYTWQesaNRvKuaY5THvCo7+AS73UucqDFOFgHordpSLqtN28drzDKq
         qbFByHWqdcc4jK+SbsB39dBzLa//WLwo/0rwXrkuZjvMw+P7RyBR+8toerteDEtrTNPs
         rkmpLviO/3hhit08jtuJiEy1SwMh9Uw0o95HskoyskJcGxpIBf+4D+W/kdsMemzzAtko
         EOzSJiAmkdXjTRi/PjL75iN7SQ6aCzeHhhHfpfsE2yQh/E6lCNefIaswTxDFFUrzvaWE
         VoAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id z20si139347ejx.1.2020.02.13.08.17.35
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:17:35 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 26D1C328;
	Thu, 13 Feb 2020 08:17:35 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B5A03F6CF;
	Thu, 13 Feb 2020 08:17:32 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: catalin.marinas@arm.com,
	will.deacon@arm.com,
	arnd@arndb.de,
	linux@armlinux.org.uk,
	paul.burton@mips.com,
	tglx@linutronix.de,
	luto@kernel.org,
	mingo@redhat.com,
	bp@alien8.de,
	sboyd@kernel.org,
	salyzyn@android.com,
	pcc@google.com,
	0x7f454c46@gmail.com,
	ndesaulniers@google.com,
	avagin@openvz.org
Subject: [PATCH 19/19] arm64: vdso32: Enable Clang Compilation
Date: Thu, 13 Feb 2020 16:16:14 +0000
Message-Id: <20200213161614.23246-20-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213161614.23246-1-vincenzo.frascino@arm.com>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

Enable Clang Compilation for the vdso32 library.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/kernel/vdso32/Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 04df57b43cb1..209639101044 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -11,8 +11,10 @@ include $(srctree)/lib/vdso/Makefile
 # Same as cc-*option, but using CC_COMPAT instead of CC
 ifeq ($(CONFIG_CC_IS_CLANG), y)
 CC_COMPAT ?= $(CC)
+LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
 else
 CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
+LD_COMPAT ?= $(CC_COMPAT)
 endif
 
 cc32-option = $(call try-run,\
@@ -171,7 +173,7 @@ quiet_cmd_vdsold_and_vdso_check = LD32    $@
       cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check)
 
 quiet_cmd_vdsold = LD32    $@
-      cmd_vdsold = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_LDFLAGS) \
+      cmd_vdsold = $(LD_COMPAT) -Wp,-MD,$(depfile) $(VDSO_LDFLAGS) \
                    -Wl,-T $(filter %.lds,$^) $(filter %.o,$^) -o $@
 quiet_cmd_vdsocc = CC32    $@
       cmd_vdsocc = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_CFLAGS) -c -o $@ $<
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-20-vincenzo.frascino%40arm.com.
