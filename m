Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVXSWKDQMGQEJY4APQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF763C65AF
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 23:51:19 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id g17-20020a6252110000b029030423e1ef64sf13776077pfb.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 14:51:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626126678; cv=pass;
        d=google.com; s=arc-20160816;
        b=PGB5nV33Ft3xQqMeXU+343cBbdK0VoOaUD7JAduN+O/zrUICRxtkcCYCJyDAbQ4+w0
         zA/VkDluPYj2B8kOcArhF6NbAAljDucH+QB/ih/mHP4zvqJjUOVa5XXQOgH4sdxvDsNk
         P2ZToTkKGFFcAgvMpEmITPNxPVXH5/n33OoyDeHuTZdXEZgIUAvbalCuOk9atq0m1AW/
         jJDAX1ZPitNYE7scVkG/3XhacRwCyv7QMC45c8IPox9OabR61/cauBJE0Zmmcxk+W1AS
         tQcQYahpwIFdX2CSBOD4V6LW+AeJjyHc5kTOVVmRDQhACz6a9Jojd5fvO83RcfyiYwVI
         suVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hUkU17ur3Gn2KNpYTLcZTvEreQ8GzCGMlgihKW6GxD8=;
        b=GXib6AS7hDmLAsiRi8GVOcrJYGspdUoeQdKTnj/sZuG95vSmNzU0SHkkW1Jnqf1Sei
         c/Exn00RU6NHG0j7z2w5/JUu6Hg2e29AbFUCIR3Azfj7A6E+6ZL/1ydE2vcj97+wz365
         bcoberieo14KfrLbwckYXmRK4Mnt+1cFE0PdziYjngW8++//m8otxqeU1UzQFBpywqh0
         QV5/eMnu6qRHEk7DSAASlwQNw6Q6O5JEbx0vkFUcJ/Kgh754ga43QXxCYky2OMXjiqyK
         igJAbtancbzYZaquc0rJdgqXDxSj2KRgXJrRlZ1NccalbwG8MNWPQlcWv6Xieg8D2i55
         opkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nabIYQH1;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hUkU17ur3Gn2KNpYTLcZTvEreQ8GzCGMlgihKW6GxD8=;
        b=EUJr0MvSoIz0+d6KNhszi+0pm8WMJncsE7V1zakRzTzT8Tk2iMzYVkntNU1IPMc8Sb
         IEV3GL9IQGKlYwausW/ZqW3SR5o0UbdVeiQj4R4gp26+o8Aqk8u/aBMlr9LBbSFbTGUZ
         AvqBgiPopH2spF4U9vKcUWz7alZcVu5sC5zdO7y9kRt4mkysC/BoKXCOBC4+VOQ0OANq
         Gh5DiAtGszh8mnmBJk24x/CXO0pzlfPAtyhmyjjxeTnUhae9TkKoOeMj0hhn/axQd3Y6
         vY1Nf1naA0ZB+Pwqic0Mu0zU99yJLrju+9jhl4nd1grvD6/nfNhm8ox+5buhx/Ar5j9G
         400w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hUkU17ur3Gn2KNpYTLcZTvEreQ8GzCGMlgihKW6GxD8=;
        b=bSW0QCzBJZdA43ktnMbCdlitNugKywTDWYrwdDUajdTBk883ku09KjZwEmxDwbTtQF
         6WlcluBxwyw+DUKRtWy9eD+1aa0ufIHkCJl/vpjjEVBv64t0tB3JuileYRRLixjdgmn5
         UpOL52Q3lIHqx4AcESQnd8POVGtD+moE3RG6+mmC53gq/NEBPpjQ/00mI4O/j32AXF+/
         bnN4YB9HBTTdp7fVe2d6XV8Vi5ayccHUTFEibTqaYqN+iJqJ1BhyN/7wz8sAJxgQDLrg
         hS0p+XuuoTOcPQ2uCrD+QbT/sdG7AhISkI3jUUn9g0lmEx0OXxZfDQ5m/JZ9iCzeRRqe
         N+Eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dAFTVkMww8NCkBgMMGsfEd0F2PXjA6cqEvhqACDVyIpjnERrk
	ClPhMfumjDddKLoY9fXll1g=
X-Google-Smtp-Source: ABdhPJytMG8s/KtT+wbpZ1MoiE/QkGxNtctvM0pmp2itFkNfXvBKDXKGPkBE4hKYqMqzivmbB9EH2g==
X-Received: by 2002:a65:6412:: with SMTP id a18mr1080531pgv.445.1626126678441;
        Mon, 12 Jul 2021 14:51:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:968c:: with SMTP id n12ls8124773plp.8.gmail; Mon, 12
 Jul 2021 14:51:18 -0700 (PDT)
X-Received: by 2002:a17:90a:9b89:: with SMTP id g9mr13787974pjp.200.1626126677894;
        Mon, 12 Jul 2021 14:51:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626126677; cv=none;
        d=google.com; s=arc-20160816;
        b=SmSuozjdcLeNvoEKPsTuYeO1liA5Ui+309WK2ZbRAAJW5jS2CmTZjvJ79nrZnk1vkg
         YZ9vCKvVl3eeGCPLGHlzOlwFo9o76gem8z2nd3cEFlL7Mooe+iPZ7FL1Jnjo/XKBfsvv
         95hIEqboPcFhaYnoiCkoLIPavmVBEHZYN2FrGigwoVzs2eDTysrABEm6Ke6/d0bCk3ic
         lUuwkQCeLuSt3WJQ5MtR2lC0lS1PCESGVSav6cc14p44qWmTtNW3gra6k0EEE7oARoAD
         McJB5adS5gtoU43yL7CQjFLqBe26tlQqrPYWt2xLQTL8iqyvlIpvD6qYM1ucX80HNApz
         zUSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FC9FzRF2ZxzWJ7ybB2VO1s6xmx9/J44WUKA3YEHEKwo=;
        b=RczXbXyOngY7FHlT4nKbu00a26SelN7nd2HCZNyJstobbK1goW108GGbCnngXmoWZZ
         VlP/g1nC8eTSHheSg0196b8jW+ffHP1m3IwIaYEhfYNI+NzJTDbxdgb+/jaP93zdnfwV
         GEISmbVmq25GxVNZ/M4nV8kZbRax4x0fcXpRB4uANJs/7XTlWGQHXW9iDZL9q2WQYg62
         rJO3fqtA/JqRXK5RhC9mXJoDQJZPlkqcSIyjAMLGSn0lZbkHPZHqDiQsc/lGwGtaxyeZ
         5eiMZtRmaGk9rnaql5auNQO4zt0W7pbd5G5zYeUEvUfLpsTFfyTZ0H6jsv3a6WwnbGyA
         92Qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nabIYQH1;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p190si1784995pfp.2.2021.07.12.14.51.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Jul 2021 14:51:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1E1F860232;
	Mon, 12 Jul 2021 21:51:15 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH v2] arm64: Restrict ARM64_BTI_KERNEL to clang 12.0.0 and newer
Date: Mon, 12 Jul 2021 14:46:37 -0700
Message-Id: <20210712214636.3134425-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
In-Reply-To: <20210709000627.3183718-1-nathan@kernel.org>
References: <20210709000627.3183718-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nabIYQH1;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Commit 97fed779f2a6 ("arm64: bti: Provide Kconfig for kernel mode BTI")
disabled CONFIG_ARM64_BTI_KERNEL when CONFIG_GCOV_KERNEL was enabled and
compiling with clang because of warnings that were seen with
allmodconfig because LLVM was not emitting PAC/BTI instructions for
compiler generated functions:

warning: some functions compiled with BTI and some compiled without BTI
warning: not setting BTI in feature flags

This depedency was fine for avoiding the warnings with allmodconfig
until commit 51c2ee6d121c ("Kconfig: Introduce ARCH_WANTS_NO_INSTR and
CC_HAS_NO_PROFILE_FN_ATTR"), which prevents CONFIG_GCOV_KERNEL from
being enabled with clang 12.0.0 or older because those versions do not
support the no_profile_instrument_function attribute.

As a result, CONFIG_ARM64_BTI_KERNEL gets enabled with allmodconfig and
there are more warnings like the ones above due to CONFIG_KASAN, which
suffers from the same problem as CONFIG_GCOV_KERNEL. This was most
likely not noticed at the time because allmodconfig +
CONFIG_GCOV_KERNEL=n was not tested. defconfig + CONFIG_KASAN=y is
enough to reproduce the same warnings as above.

The root cause of the warnings was resolved in LLVM during the 12.0.0
release so rather than play whack-a-mole with the dependencies, just
update CONFIG_ARM64_BTI_KERNEL to require clang 12.0.0, which will have
all of the issues ironed out.

Link: https://github.com/ClangBuiltLinux/linux/issues/1428
Link: https://github.com/ClangBuiltLinux/continuous-integration2/runs/3010034706?check_suite_focus=true
Link: https://github.com/ClangBuiltLinux/continuous-integration2/runs/3010035725?check_suite_focus=true
Link: https://github.com/llvm/llvm-project/commit/a88c722e687e6780dcd6a58718350dc76fcc4cc9
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

v1 -> v2:

* Fix typo ("compilign" to "compiling") per Will.

* Clarify that these warnings are reproducible back at the time of
  97fed779f2a6 with allmodconfig + CONFIG_GCOV_KERNEL=n but that
  configuration was most likely not tested.

* Clarify that the warnings come from CONFIG_KASAN, which suffers from
  the same issue at CONFIG_GCOV_KERNEL because there are compiler
  generated functions.

* Clarify that the root cause of the warnings is resolved in 12.0.0 and
  link to the GitHub commit rather than the Phabricator instance, in
  case LLVM moves to GitHub reviews in the future.

Hopefully this is adequate explanation for what is going on, thanks to
Will and Nick for providing input on the commit message.

 arch/arm64/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index e07e7de9ac49..b5b13a932561 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1605,7 +1605,8 @@ config ARM64_BTI_KERNEL
 	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
 	# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
 	depends on !CC_IS_GCC || GCC_VERSION >= 100100
-	depends on !(CC_IS_CLANG && GCOV_KERNEL)
+	# https://github.com/llvm/llvm-project/commit/a88c722e687e6780dcd6a58718350dc76fcc4cc9
+	depends on !CC_IS_CLANG || CLANG_VERSION >= 120000
 	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
 	  Build the kernel with Branch Target Identification annotations

base-commit: e73f0f0ee7541171d89f2e2491130c7771ba58d3
-- 
2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210712214636.3134425-1-nathan%40kernel.org.
