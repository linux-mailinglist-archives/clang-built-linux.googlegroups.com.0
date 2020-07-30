Return-Path: <clang-built-linux+bncBDFIHPORYEARBRMURP4QKGQENBFOPBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E89E2332FB
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 15:25:26 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id 22sf999535ljv.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 06:25:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596115525; cv=pass;
        d=google.com; s=arc-20160816;
        b=oFNi44lWTutrQGml5AeIkvc7ZWByPTQQMQmYUmAQNv8PV68Q2ra3VPKYOf1poFUUS0
         lrM60+7IQHRG8rvoQlgGVWf8w0Zz9b2ikLJ9PmjcCIMrDyPVSx8LURdL85CbF39hqNEY
         xzuEEUYdHcrNeJ3YHI7hKxDAGihc7iLi3B4jBcyZewRlAcytuiFHBUjc+z40iGgIQQy2
         b7cwvBqzI0aKnm8ghfVjBGG6LXVk/OfGJ3gUs1vYllKU7M1usSj2PeMZf7Z5Dbnwk5eW
         ZqV/dMYLESPAAy+vy74rlJPvY2lmW/Bkhdn3uHDTE9S0Z6X3ocnVVszQ4zUkzINuO1Fz
         KTAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=yV88dVU1WMlhTj4VZed5/3f0Du60jwb/vK+jbZLBvKk=;
        b=LU1Iu9N8kqXxqC/q/O7PLhinN23STgysU5aCUIAeb3rQCR2cwXwJgNotZIPFfJddFS
         fNrdO9ZnEcWs5USVrj0sc123iEVtO4KsK77bwFTB3bYEqw9ASdE8Pi+Lw2folGO9tyOd
         hlZRCxK7U8lJhZ9B78H8D54ocEfWlkRECfns/SKxnhKC+c0RRc8/yf6P3HQ+nyf1Fhb7
         CRLAMwFYG5q1YZpNIATRYHAuqVKYKS5XI5BDBbcfZfvpgav8ift6aFKVdzPz/S90QL7v
         94b1LKb6Wq+zqCRShQP6GWWQ7kFUypqiRyN3ZsEOjCanJEQ/2WS6yUjoI3LaZ9q/7ZDi
         Mu3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="G/dR2Xzg";
       spf=pass (google.com: domain of dbrazdil@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=dbrazdil@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=yV88dVU1WMlhTj4VZed5/3f0Du60jwb/vK+jbZLBvKk=;
        b=jvlVWm3k7R1Xd9JM2GqJnc97W2xWJeT+iUzzT4kqeTufEReSmkcchXV2rB/yKUOGXL
         ZXIKS/hN1ruSu36HEAnXFUMd+BQx6BARcWLYPjbld5Q30kzjDHRGynS3IslBbKHsaPBP
         1yML1jnV+IVcAwejIcLwkNyTX0uKyTz0izilN+EBYH/sFy+WzbyoB0tAseGEtdJI7hOS
         a+88bd6p891j6gvsloNXWWYroOeydALdv2yaMlfOEgcyliGqCBNs7EZq+Xj+I5JhBSEQ
         X9WCwOYbKx0orGdOTXWMwYKmjRSO5CWgi6EZfXT3DX5OoWHOWmDx1wPEvqMhI0YrhPAm
         qGFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yV88dVU1WMlhTj4VZed5/3f0Du60jwb/vK+jbZLBvKk=;
        b=eePB+LqKbwUsY1Yuh4n6dymnPzFd4d7kJoypmc3ehFhY3lPwmfM5++yUAKXbT28kc8
         hlwJD24uxx0Y4dG8cNAvQ3N8UTXWcXsBodIDpSNmrB9ZkbE+AM/BHgCO+yuvbT0hICNa
         RXFARFbASY918HIeKYnubZ+nq65U9yoW0o6SkGK4PwT5aPvfkM/+uUTVG9JMw/Yo8NlT
         QgcuBkFbLvCulQa2hZ7HkAJ5y7bIJYpxKiMMMMX8jc8NiSoD/cvyPWKMBKu5omMrkDze
         eo02PGgFmA7y1I6DXv8ENtn+BZIBEevhKFxG5IFLGzQZWqutL7hwDDgdKfQLvMFKmbeb
         FEVg==
X-Gm-Message-State: AOAM533SRUxNpcvsTMZnKLP+SVMkXuGXkI5U60mwzZbaWt6txGxH2ejA
	L9w8jGWydcPobLp/+04YT9E=
X-Google-Smtp-Source: ABdhPJz/Mu9uU/8ls3CACW5f+cpIHuF145MdWQOP6iw2EodItOvAjzhcZM+fCaZXnIUr3cSBUkWStQ==
X-Received: by 2002:a05:651c:339:: with SMTP id b25mr1500755ljp.456.1596115525518;
        Thu, 30 Jul 2020 06:25:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2243:: with SMTP id i64ls1132109lji.7.gmail; Thu, 30 Jul
 2020 06:25:25 -0700 (PDT)
X-Received: by 2002:a2e:9254:: with SMTP id v20mr1630344ljg.282.1596115524985;
        Thu, 30 Jul 2020 06:25:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596115524; cv=none;
        d=google.com; s=arc-20160816;
        b=EBWQILU6o67BE4uuU0VRYWBcf3hE421b1XAdcIHzODuyoeIWSYqgLOiNPkozigBeN2
         6NE4IWyt2byyngggTh8OhIEp/uyt0tOHGY8PnS9lTsuGng0E34XKKf9q0Z99GhuPvtnz
         wPAxbJGAyrRptGUapEU8fT44AXOACLyx6L4nk/nc4lGDiD8l92cLX7BwuMXCGRzgWYll
         SjPfMMctNr17jzY14HQLPe5h99XMzkxbuGhvJgX7XS2ttYkWiOuCFDJAE6Okkf7/2wv0
         d9tREGn9TVeg6lm3tNeV/JaryZ1qC9UKVbF59LfCBBVHUopRXitipZdZFftptwp1kA14
         a8DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=VUEiWZ9pO6UikEPfnSxWzM8COZBi2CR+f41vrCc2PbU=;
        b=MQNVlb4YnDmxpy/HefIn+IixRCvtiIIBR8ftamFtxAJv5IhZYMjOcpYMq+04Yj3NJ9
         lRSBuEXaMyvBxv/apAqPYcXMOpghyACxXxxCR61EvUhS92XGrMPmYq8uAIxI7coIAOfx
         U3r3EinviYWJkBUGx4z38L8vqzzp0YQaUuNV0hJlNBFUiIF1Kq/Imnr9kAhaZ5u7zi8q
         sjjfGWV+UuC1hvmCN73Za8xNxGsMIQiGpGwKljjc8VDJ64tAs7gQid95K5LqRuhjxcJa
         DuXrxJ4JzBL+7oFwTjhHpB+utYGOQxpwA0C6yo6EQUf4R3LwjzzljsHzuiCcOAV05iDY
         ILnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="G/dR2Xzg";
       spf=pass (google.com: domain of dbrazdil@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=dbrazdil@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id l22si163255lje.6.2020.07.30.06.25.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 06:25:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of dbrazdil@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id f1so24342035wro.2
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jul 2020 06:25:24 -0700 (PDT)
X-Received: by 2002:adf:94c5:: with SMTP id 63mr2776837wrr.34.1596115524080;
        Thu, 30 Jul 2020 06:25:24 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:b4ef:bd7f:473a:9fdf])
        by smtp.gmail.com with ESMTPSA id b142sm6483931wmd.19.2020.07.30.06.25.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 06:25:22 -0700 (PDT)
From: "'David Brazdil' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Marc Zyngier <maz@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: James Morse <james.morse@arm.com>,
	Julien Thierry <julien.thierry.kdev@gmail.com>,
	Suzuki K Poulose <suzuki.poulose@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	android-kvm@google.com,
	kernel-team@google.com,
	David Brazdil <dbrazdil@google.com>
Subject: [PATCH] KVM: arm64: Ensure that all nVHE hyp code is in .hyp.text
Date: Thu, 30 Jul 2020 14:25:19 +0100
Message-Id: <20200730132519.48787-1-dbrazdil@google.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: dbrazdil@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="G/dR2Xzg";       spf=pass
 (google.com: domain of dbrazdil@google.com designates 2a00:1450:4864:20::441
 as permitted sender) smtp.mailfrom=dbrazdil@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: David Brazdil <dbrazdil@google.com>
Reply-To: David Brazdil <dbrazdil@google.com>
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

Some compilers may put a subset of generated functions into '.text.*'
ELF sections and the linker may leverage this division to optimize ELF
layout. Unfortunately, the recently introduced HYPCOPY command assumes
that all executable code (with the exception of specialized sections
such as '.hyp.idmap.text') is in the '.text' section. If this
assumption is broken, code in '.text.*' will be merged into kernel
proper '.text' instead of the '.hyp.text' that is mapped in EL2.

To ensure that this cannot happen, insert an OBJDUMP assertion into
HYPCOPY. The command dumps a list of ELF sections in the input object
file and greps for '.text.'. If found, compilation fails. Tested with
both binutils' and LLVM's objdump (the output format is different).

GCC offers '-fno-reorder-functions' to disable this behaviour. Select
the flag if it is available. From inspection of GCC source (latest
Git in July 2020), this flag does force all code into '.text'.
By default, GCC uses profile data, heuristics and attributes to select
a subsection.

LLVM/Clang currently does not have a similar optimization pass. It can
place static constructors into '.text.startup' and it's optimizer can
be provided with profile data to reorder hot/cold functions. Neither
of these is applicable to nVHE hyp code. If this changes in the future,
the OBJDUMP assertion should alert users to the problem.

Patch based off kvmarm/next (commit a394cf6e85).

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/kvm/hyp/nvhe/Makefile | 26 +++++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index 0b34414557d6..aef76487edc2 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -20,10 +20,30 @@ $(obj)/%.hyp.tmp.o: $(src)/%.S FORCE
 $(obj)/%.hyp.o: $(obj)/%.hyp.tmp.o FORCE
 	$(call if_changed,hypcopy)
 
+# Disable reordering functions by GCC (enabled at -O2).
+# This pass puts functions into '.text.*' sections to aid the linker
+# in optimizing ELF layout. See HYPCOPY comment below for more info.
+ccflags-y += $(call cc-option,-fno-reorder-functions)
+
+# The HYPCOPY command uses `objcopy` to prefix all ELF symbol names
+# and relevant ELF section names to avoid clashes with VHE code/data.
+#
+# Hyp code is assumed to be in the '.text' section of the input object
+# files (with the exception of specialized sections such as
+# '.hyp.idmap.text'). This assumption may be broken by a compiler that
+# divides code into sections like '.text.unlikely' so as to optimize
+# ELF layout. HYPCOPY checks that no such sections exist in the input
+# using `objdump`, otherwise they would be linked together with other
+# kernel code and not memory-mapped correctly at runtime.
 quiet_cmd_hypcopy = HYPCOPY $@
-      cmd_hypcopy = $(OBJCOPY)	--prefix-symbols=__kvm_nvhe_		\
-				--rename-section=.text=.hyp.text	\
-				$< $@
+      cmd_hypcopy =							\
+	if $(OBJDUMP) -h $< | grep -F '.text.'; then			\
+		echo "$@: function reordering not supported in nVHE hyp code" >&2; \
+		/bin/false;						\
+	fi;								\
+	$(OBJCOPY) --prefix-symbols=__kvm_nvhe_				\
+		   --rename-section=.text=.hyp.text			\
+		   $< $@
 
 # Remove ftrace and Shadow Call Stack CFLAGS.
 # This is equivalent to the 'notrace' and '__noscs' annotations.
-- 
2.28.0.163.g6104cc2f0b6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730132519.48787-1-dbrazdil%40google.com.
