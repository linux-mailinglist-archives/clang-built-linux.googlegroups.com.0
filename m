Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBKXCWL3QKGQEZHF5I6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5612008C4
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 14:35:55 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id k70sf2204660vka.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 05:35:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592570154; cv=pass;
        d=google.com; s=arc-20160816;
        b=kwr4/sY2AqtSQ/WfDOU8W622IeuYetjHlsritJkLWsmG0v/fN3WFhHmAlz25tTKjCx
         yeOBjeWiASI/xc6HuQsVoAkTrdRDFxHIaxYjvz1RGQBygh2hrMCPpKQR0l6brM85H5Q5
         1zsN0gxfNLA7C7WwTsMv5DBeXxGoObqe5IfJ5laLHReR5JqSYxrf1SfXw6wzAfUGDxcL
         hJ4LIAMxgFvnMhCi5ORdthJkC/a84pnWxsrJx8Ypw9ppCJxNAlY9qL2qcuMG04U0oHdI
         /eAJqlwQrJlrgFAwZdTD9NyFjoY1NRrzQ72bDk1fJzxFi4jxkfgDTI44677sWvjTpv6k
         9G9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=pQ1mlsUIxQBlf7a9/1F60r93M1uRrH73hXnol8gTwbw=;
        b=eDvvwxCzNEqsSQY+UgmqjN28MnSI+JsWvGSz8GJBKJAOfS+lMRQ61w5y2HBOKjtePi
         8B46bPTC9eSDhfhXLWVQiHylkwNh4+DLzL7803ZOKwcRZBvVVtTvx34WyleL6vOoimgt
         ncygyEpq/vQgjTlJu/0wucaRXaNWQHG7yclvwx920L5cQLAJsm/XWLRK4lN2t3qHWLCF
         RRyE462tKlUonUVpElXqavi98EtQHwHGMRfSLXUa9BW7XePjivfSyayVYIdX1C9zySEf
         B52TNs37DF1Hcl7uMaj7UCxHhcPZ3b2wOfEeFJHUUR3m1oGG84CGoCp/CAmhkYoFzNd3
         ebmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xAcFCPPV;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pQ1mlsUIxQBlf7a9/1F60r93M1uRrH73hXnol8gTwbw=;
        b=KcTGLbMjySij8Zx28/lca5W/AG8Nj4e1BenWxg/paqCYrpHq564JZWxu2XMcVvoTNY
         q+ouApg0WsNmg+hGc7NTBwt+X3uyHDdyj39zzRnRP+WI1Slsh+5iMvN6Rwq3SKxU/rHB
         uYCV05j5XD+XUwdtdKlJsEvmulOYit1Y0UQ9CSWMa4DYo024ljHeQoyn9PUge/AT5bMe
         7gr9DUcJ1n4HmU3k0KlQ2y43iJ+kgjS+u4KRFpDrJwyqDajyN0lDK7JDhd/skm3DR11t
         +8uUM4D1FZFS0j84DxhcAWowTSJM8piwdveI4O4itDmNWMgUP2pSPKTRXvriYd5RRT8E
         IdWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pQ1mlsUIxQBlf7a9/1F60r93M1uRrH73hXnol8gTwbw=;
        b=XySv5HlQUeVLWJ3eWQMirBFF6PKdOgY8oMdPjqzKJWK9zpE7oO73mAHiGhuyzPPgqd
         rJtUn33NiS2x4kUJ8RxXZ0vl5FXJrMAzVXNmtF99tEqzrYTOLVL72NHA2wEuW2CfgBJ8
         mB8DwJhnr/kAsLrfm+RqsOTjO4+Lk3zAQJfPp1tHz3mTZNC2SF2dc7d2eTmxkfKbcZrI
         0nxBjWFO5JHobaTDdv77/uzaOXulD8GhRBQdOCBFE0qfKpUhQ645nKDyamf/IvdBXobj
         vmJ1e9cHnt9s1tRJFR4qBEeGjIQUsIwCGfWfshphp7R7KHHRyacd0CrKKW1DYnAFn/2L
         fEbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MKf1cvcbSzpQPr0H9OXnqR2hXboZYQAbh6cLukYB3G7qoT5SN
	ZOvD3aIzXGLAgDY+olwl28c=
X-Google-Smtp-Source: ABdhPJy4SPrmgJB+y/ZwgRULizh3PW4p6cVWCIQmR2M6ZResGinTtzQuE7Ja24p8wRACuBYqjk9vkQ==
X-Received: by 2002:a1f:ddc3:: with SMTP id u186mr7152034vkg.57.1592570154647;
        Fri, 19 Jun 2020 05:35:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a393:: with SMTP id m141ls443301vke.11.gmail; Fri, 19
 Jun 2020 05:35:54 -0700 (PDT)
X-Received: by 2002:a1f:ec05:: with SMTP id k5mr7490116vkh.28.1592570154223;
        Fri, 19 Jun 2020 05:35:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592570154; cv=none;
        d=google.com; s=arc-20160816;
        b=HWN+YK7Wma5seETnj+7J5h3MfEB+okG5GBW+MsGk/kDKdBZDrhv3ZmTxAPJzEISydw
         obypmOMxhKO+OodtULxswiM6gbtMU7/JrM7pgFCmn5/vOfbcoWkLi0A5ln5e4ymtHbqP
         5+eRIzfbDmNKTAD/gvcfPm5FapcbjGxcSkKskvWC7pNwQlNPPGjn6Z2bdQlcdAX74o1D
         zf1V5xj+iZ29/Zad16MBa6QaBZIkxt+zGF396zkQVfd5muvBM0Qu7zAoJ6MKxTJq5G6F
         o9gguB1HUYVjzDT1tZeTM4L4vEn7yQweWaL/mATpvLBDXy/KElsdd2VrYHcpmmpN1sEY
         QLyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=iO/odx0HhrFtm5HIwtyQGxBEf3ujb5BFaFYx4Tusp8E=;
        b=YYmaH9CS7fKEl88OozmjPvhsoaVLngpWDMMioeO0Aq7fpbDxlYLN9ASzB0WFG7g5jh
         5FFt354g+y+JlBrtjVX/C7OMDQKka6wugZMaEt0yGwbOazDj/OmXjnGzu2HKg2nKc3mW
         ioAuUx1JYmWpeiVsVS9yfKKeZuRcRau91+yNRSsMIjXTQdi7+JBRmdzDkv3PR/HLbzMW
         z+Wmg2SURKS8SsL+vmiVdXl1Xg2FuT45L/hJQmgO4mhwBP3THHvD3vh1m87uwOS9c5oE
         NS87CLQEnv30glYHlxtUhjzNaUeiOShlDb3nnVIpcIUk+atLVL10RmqganwoBg1o14fs
         pvcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xAcFCPPV;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t139si414584vkd.3.2020.06.19.05.35.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jun 2020 05:35:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A6F17207E8;
	Fri, 19 Jun 2020 12:35:52 +0000 (UTC)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Daniel Kiss <Daniel.Kiss@arm.com>,
	Anshuman Khandual <anshuman.khandual@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	KernelCI <bot@kernelci.org>
Subject: [PATCH v2] arm64: Depend on newer binutils when building PAC
Date: Fri, 19 Jun 2020 13:35:50 +0100
Message-Id: <20200619123550.48098-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xAcFCPPV;       spf=pass
 (google.com: domain of broonie@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=broonie@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Versions of binutils prior to 2.33.1 don't understand the ELF notes that
are added by modern compilers to indicate the PAC and BTI options used
to build the code. This causes them to emit large numbers of warnings in
the form:

aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

during the kernel build which is currently causing quite a bit of
disruption for automated build testing using clang.

In commit 15cd0e675f3f76b (arm64: Kconfig: ptrauth: Add binutils version
check to fix mismatch) we added a dependency on binutils to avoid this
issue when building with versions of GCC that emit the notes but did not
do so for clang as it was believed that the existing check for
.cfi_negate_ra_state was already requiring a new enough binutils. This
does not appear to be the case for some versions of binutils (eg, the
binutils in Debian 10) so instead refactor so we require a new enough
GNU binutils in all cases other than when we are using an old GCC
version that does not emit notes.

Other, more exotic, combinations of tools are possible such as using
clang, lld and gas together are possible and may have further problems
but rather than adding further version checks it looks like the most
robust thing will be to just test that we can build cleanly with the
configured tools but that will require more review and discussion so do
this for now to address the immediate problem disrupting build testing.

Link: https://github.com/ClangBuiltLinux/linux/issues/1054
Reported-by: KernelCI <bot@kernelci.org>
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
v2: Update comment and change to check binutils version except when
    we specifically know that the compiler doesn't emit notes.

 arch/arm64/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index a4a094bedcb2..66dc41fd49f2 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1518,9 +1518,9 @@ config ARM64_PTR_AUTH
 	default y
 	depends on !KVM || ARM64_VHE
 	depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
-	# GCC 9.1 and later inserts a .note.gnu.property section note for PAC
+	# Modern compilers insert a .note.gnu.property section note for PAC
 	# which is only understood by binutils starting with version 2.33.1.
-	depends on !CC_IS_GCC || GCC_VERSION < 90100 || LD_VERSION >= 233010000
+	depends on LD_IS_LLD || LD_VERSION >= 233010000 || (CC_IS_GCC && GCC_VERSION < 90100)
 	depends on !CC_IS_CLANG || AS_HAS_CFI_NEGATE_RA_STATE
 	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200619123550.48098-1-broonie%40kernel.org.
