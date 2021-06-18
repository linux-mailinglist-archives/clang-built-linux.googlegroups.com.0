Return-Path: <clang-built-linux+bncBDV37XP3XYDRBUHSWKDAMGQEXGRJATQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 434443ACE7D
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 17:18:41 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id 35-20020a9d03260000b029040539236725sf6098464otv.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 08:18:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624029520; cv=pass;
        d=google.com; s=arc-20160816;
        b=j3TwWkGFbOx3iojb7dcuGQ0mr8NaDyQ8oBzkhCndn/Fm90nkyfNXE+hlQbwxVNDOtM
         kgWyHpqata+K3nVMeMmKOMTwJMvpEak9k3muKuAyh0f64oV2qLhramB1yQSDY1jRPHJb
         7T7SSK8tnl1d8cgQykuzfgyso6WFD1IpDfT+eGSNiCo+YXfC9RNKwx0wo5qUYgc033H3
         +Y31Grp+RyK61wkluVlMi+dA2yS0aafeTRO7F+djCPoMN4/4IiAyzWGv101POsrF1yYj
         cnAK3QpKbmseeURwUAdSP021dKEtCPlmitR+8ZI1emCk62TJYAHnjfY5kMJ47zO+bNi5
         ONTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RwdZyNo8IUqjmQzQVlutBO7Sp9kYF4Ztfzbho5IO3b8=;
        b=NotgMH+hcbBPLuNFxyQuWLxdJTirXaxNaqu7u1TlpV7/4LktkbY1tPfa2+E6Lmp0Rq
         Yf88auiwngnR5fEP8A5xJU8abOj/dzVvYD1CyOHfHFQQ/FNRneCv/Rgsutf6yhFw45BE
         pgi0jW8YjVqltwoyt/tFOhZa1ePzu4NJdfkBtF4+IkgGFg1wNztQqdPN1dQrZWI0PH2Y
         HlhgtMarf190KQ3TFf3Ou6sXxQl3hxPl59XTlcvZzDh1BO5kMa0+ex72Mgt5ooExtf8n
         9QrX57dvIyDCgFlS5ROKJt++ytD7XEQEPL1U5nltZmSEYFbhPA/LLnjN6DSuBxb5F0Yx
         hPhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RwdZyNo8IUqjmQzQVlutBO7Sp9kYF4Ztfzbho5IO3b8=;
        b=Fo3UkddpcfFZqP9CF88zSKy/15/ZUwucWTPRBMWX5+uvqscMAN43cMckPxfxL8wY7y
         Zt0yx1Hs5v/q9W8wApennQrssPGxvYO13inKueM8vXiZjDoFWOVl3LthSp2mm9T+5V1w
         z3cI/pTsmT9+pZLXw7Ojd9xeN1KA5BVJe7mhQes9HvnbqzUFx7N/eJHORxa8w3DLhVQa
         phJBFSzJBYOMd74cJumuo+/b+f/+GDwIlUJglTEqnaAYQFkkw8ZIIE8HQfoJqlJSiIVL
         TvsBYv10vmbO9+uo/ZzIQcca5ad/eNDxAh5RXR307kB1jwuMqGPpw+Q1yvBmqq0lsTLB
         dnFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RwdZyNo8IUqjmQzQVlutBO7Sp9kYF4Ztfzbho5IO3b8=;
        b=gq/+ndALaUp7tcIaeAN2meLn6lLmAWPaUZDSNm8r16hT7ggThfXw8yWsy8GQ8ZNLP2
         PTxSMPAaa6DTQUVi5Ju9lmR6pfIbn2GDe2yZNLLGaqgtMe0U0k3Qaz0uKTHVZdPdNUWn
         zGOVHGZwQh9tpqFQn53Klw9pJjochxM3neESb619JBVAU9cRdn9KJapuJOyPyd9m9/hb
         tWlZbC2Q9vmFfF9aETF0Hn+oBogKkf8rF5sBIi8yp/c2i2q5jYbsZmzx4X//Iv2BJ4az
         KxNvdATwi13ZQQO8TGxyMA35tPU5J2tK86iqnsElxRmgFQYXBXAYykRXi85/hcn+zypo
         F2+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ADK7LSiOijiuWrtc8Kpt7Mn1TmfIJlO/yH6IWlEDeKMKOjIKk
	79xNPwt4xGF9i7NzmmzduYk=
X-Google-Smtp-Source: ABdhPJw+Tp2MFsRMADmH/pr9VfcwTiD4kDfyhLDxAXMi8X9R2E5mtquLBz8YfmksYuRiIahKugeyIg==
X-Received: by 2002:aca:1b13:: with SMTP id b19mr3370720oib.77.1624029520235;
        Fri, 18 Jun 2021 08:18:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3206:: with SMTP id y6ls3076339oiy.11.gmail; Fri, 18 Jun
 2021 08:18:39 -0700 (PDT)
X-Received: by 2002:aca:410a:: with SMTP id o10mr7585358oia.51.1624029519827;
        Fri, 18 Jun 2021 08:18:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624029519; cv=none;
        d=google.com; s=arc-20160816;
        b=y+QKbaoGu9TrTFDUJ5Z6Sx1mYg9lATKXRkcBN/JolkNFORUi3eqLIM83vgpDzbAEpm
         wuXyJb1j7YjuCBi8VXviuRZFZEKy3lvV9oT3j+hxVkQZTJbFfgph+0krm9tlLTOQV9Jy
         2V9DX5GFTUCudR/5bn5LPsTdLsT4aqoyTkO+ZDNlG5+3lBUgMC90t+epzJeTu8KTFtFm
         vYTV5E7gwk0mPQaU8kPGDb2XcV+imJNurA7ISmcYSRwsPDei4KR+zAw6W6Nggjw7o/d0
         jvyA/8ki0zvwGJsWIyOT0Xw99AompgucmcqZ1mGKH7UJ9646Q2T7vnl3cNn5zJWVpYnY
         Ek7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=QROIyvoMbqaTDYXGKUFNNWdidRVdVU9pWyAruYcDlH0=;
        b=DVVoVBCyHcUkqiIjsxTNXEQ4KOAALceb4fH7ZbS8br91Du2wl+bLYYPMkP1KwdtaEY
         gGVm2JW1qAY7Ieq2pELvSIssXjfM8O1sybSvxTa3dTTg0q+mfkCcebkU2J4+Vz2vLSR7
         MAF2GyIW1MVsfJalau/W6mOEE9szXscqLTfXPgYraX9X3J8Llw4mN0FVp3bAOetL1NYd
         Jhy5PtrqIRLanNV/EmAgDtDUDEI/hX+zrwItdmLZgx+E29WzOuCVoryEIozO1kU1n6wv
         Ibz7Y8jlMtG/1ImTrb+5ko23mhuYFa7+z0pyAMbbXJ201jE1+M7N+BMrxpk0VEohLokI
         f13A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d8si1024176ote.4.2021.06.18.08.18.39
        for <clang-built-linux@googlegroups.com>;
        Fri, 18 Jun 2021 08:18:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7E15113A1;
	Fri, 18 Jun 2021 08:18:39 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.10.206])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 240E03F694;
	Fri, 18 Jun 2021 08:18:37 -0700 (PDT)
Date: Fri, 18 Jun 2021 16:18:35 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Nathan Chancellor <nathan@kernel.org>, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] arm64: insn: move AARCH64_INSN_SIZE into <asm/insn.h>
Message-ID: <20210618151835.GC8318@C02TD0UTHF1T.local>
References: <20210609102301.17332-1-mark.rutland@arm.com>
 <20210609102301.17332-3-mark.rutland@arm.com>
 <YMv2B6HCnDReOFIr@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YMv2B6HCnDReOFIr@archlinux-ax161>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

On Thu, Jun 17, 2021 at 06:25:27PM -0700, Nathan Chancellor wrote:
> Hi Mark,

Hi Nathan,

> On Wed, Jun 09, 2021 at 11:23:01AM +0100, Mark Rutland wrote:
> > For histroical reasons, we define AARCH64_INSN_SIZE in
> > <asm/alternative-macros.h>, but it would make more sense to do so in
> > <asm/insn.h>. Let's move it into <asm/insn.h>, and add the necessary
> > include directives for this.

> I bisected a CONFIG_LTO_CLANG_THIN=y build failure that our CI reported
> to this patch:
> 
> https://builds.tuxbuild.com/1u4Fpx2FQkkgkyPxWtq0Ke4YFCQ/build.log

Thanks for reporting this; the lopg is really helpful!

> I have not had a whole ton of time to look into this (dealing with a
> million fires it seems :^) but it is not immediately obvious to me why
> this fails because include/linux/build_bug.h is included within
> arch/arm64/include/asm/insn.h.

The problem is that with LTO, we patch READ_ONCE(), and <asm/rwonce.h>
includes <asm/insn.h>, creating a circular include chain:

	<linux/build_bug.h>
	<linux/compiler.h>
	<asm/rwonce.h>
	<asm/alternative-macros.h>
	<asm/insn.h>
	<linux/build-bug.h>

... and so when <asm/insn.h> includes <linux/build_bug.h>, none of the
BUILD_BUG* definitions have happened yet.

Will, are you happy to take the fixup patch below, or would you prefer
to drop this patch for now?

Thanks,
Mark.

---->8----
From 0acc3d92302f54475d938f55749805adf74faec1 Mon Sep 17 00:00:00 2001
From: Mark Rutland <mark.rutland@arm.com>
Date: Fri, 18 Jun 2021 16:11:22 +0100
Subject: [PATCH] arm64: insn: avoid circular include dependency

Nathan reports that when building with CONFIG_LTO_CLANG_THIN=y, the
build fails due to BUILD_BUG_ON() not being defined before its uss in
<asm/insn.h>.

The problem is that with LTO, we patch READ_ONCE(), and <asm/rwonce.h>
includes <asm/insn.h>, creating a circular include chain:

        <linux/build_bug.h>
        <linux/compiler.h>
        <asm/rwonce.h>
        <asm/alternative-macros.h>
        <asm/insn.h>
        <linux/build-bug.h>

... and so when <asm/insn.h> includes <linux/build_bug.h>, none of the
BUILD_BUG* definitions have happened yet.

To avoid this, let's move AARCH64_INSN_SIZE into a header without any
dependencies, such that it can always be safely included. At the same
time, avoid including <asm/alternative.h> in <asm/insn.h>, which should
no longer be necessary (and doesn't make sense when insn.h is consumed
by userspace).

Reported-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/alternative-macros.h | 2 +-
 arch/arm64/include/asm/insn.h               | 5 +----
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/alternative-macros.h b/arch/arm64/include/asm/alternative-macros.h
index 703fbf310b79..eba3173a2a2c 100644
--- a/arch/arm64/include/asm/alternative-macros.h
+++ b/arch/arm64/include/asm/alternative-macros.h
@@ -3,7 +3,7 @@
 #define __ASM_ALTERNATIVE_MACROS_H
 
 #include <asm/cpucaps.h>
-#include <asm/insn.h>
+#include <asm/insn-def.h>
 
 #define ARM64_CB_PATCH ARM64_NCAPS
 
diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
index 1430b4973039..6b776c8667b2 100644
--- a/arch/arm64/include/asm/insn.h
+++ b/arch/arm64/include/asm/insn.h
@@ -10,10 +10,7 @@
 #include <linux/build_bug.h>
 #include <linux/types.h>
 
-#include <asm/alternative.h>
-
-/* A64 instructions are always 32 bits. */
-#define	AARCH64_INSN_SIZE		4
+#include <asm/insn-def.h>
 
 #ifndef __ASSEMBLY__
 /*
-- 
2.11.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210618151835.GC8318%40C02TD0UTHF1T.local.
