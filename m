Return-Path: <clang-built-linux+bncBDV37XP3XYDRBFESYGDAMGQEJQQL5AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFDA3AE48F
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 10:08:53 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id q4-20020a056e0220e4b02901edfa664940sf10251230ilv.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 01:08:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624262932; cv=pass;
        d=google.com; s=arc-20160816;
        b=oZr5OEwAhM1P4NX2avokXuOpn8IHDj26V81jkJ4jVlH4cvqZPxVyB4VLsKjwPoPgSu
         HRh/l69sZuMH6Vr+Vq+CgnS0jCvPQTJmg1zpj7GSR95jsAXYZPGZT2DAjPs1K8ozQLyN
         XY3pfllp0s/1W8Tbge8H6dAqtnK26NLdBfRFpfvN+yjZU3iD75QxHol6R+VHGssoSdDC
         E/ODPNU/dAwTKKfqeCR14o+R05nbh1kAse4tpwz2TS0SdF6N+W5coEMnPpKAccc6Qe1f
         1bryeSk4qkDfx2ZiCC+jEuUhFoGc4a7s+5kZyhPnrSLSkxvSXPe0IZ67lCVRZ2qPFjyp
         2J9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=STaynxJZYxA87H5lLYBALs7Dfm95YynQVEVogrP3FSI=;
        b=yWe+mKGPpWyZ6KSHRBjcANR5uRywHbAiT4MELdTQWlabHl4AI+YFC9McS2U4drsSug
         tFik+fGZec+5d5PQ2aFcyj8lXxL6ltN7bF2sLDVY7/YFgFqjrqwoHkamjjXbyaN0ukpK
         p3ATwwDgdE5lBj9eYOtGxRay2DlJHD1VadYieepnS3qunDD3dVfY6UdI+CjL3h5+ESTd
         24DIb+8uRjuHzG5owZ9l+D4B4C4EX+dJUwXsvVlTRg2J1FNbjwiychC+Wf6st3IYUXvS
         qId56MVG8mjnZqBjAFdiy8pwsaQP3Z2BSPaHgyAl/P4yXsv3lQr0d9BQLuNmkZrU63/n
         y0nQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=STaynxJZYxA87H5lLYBALs7Dfm95YynQVEVogrP3FSI=;
        b=oDpSzGzwYGDlJkktg9miNxjMnGdLXe6xWTTGEj7/gFouR5dWYaQirufIvlM5LMZoSr
         Ea7PE2VlnDWBkgZ2HsW9CNQV+FLVH0Njv6LFpfWUGjnl5w1HRTi14/n4znmctdUWU6pf
         B2EWp1Wk7E1KHoCQwsd81Y9PBn86En1RWS3oDkd0LcI4VBhexxmGzq8lJOk3gpj9M8pk
         Z7+PqrMzKwYkzng/grEyTH7gogH6dY/eMmGrKsA5BBetUjLrF3nQm90Ac9BzSX0DEcrr
         1/e1smippg+xwceLBtoSD77jc0ezrufQ/Dq3AnCIqq2jNKrAoHZVRlK8SajB5ALu8eCM
         Q5Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=STaynxJZYxA87H5lLYBALs7Dfm95YynQVEVogrP3FSI=;
        b=ZnZnJ+enF0poQPYwCwRn8Jsn/slJILF1ZcV1hpw0XrcMN3ZSC8jJYb6GIXOafYWhup
         Gxwu0Sa7hSo95mp+OFi62UuC3pgnt0SK/27Jfkqh8+O/GRIWJfOwRFIriTq5asp5tgdE
         4/wCfcRGdaTEcStP5rKxozsZK4orXFj7R7eQpj7lbjtqyGx/HsC5q+vl/HW6KUOnpLYt
         FHX1yRjKjjlR/fmypLCDwxmUb+ZJvNiCQlDAXyeokD/FtUcEX0oaPe4aA2t+hGdu4i2d
         A5mxCAhwYcjvLCw0A8PRwNGdQ5C68ykrloyem6Xmp/Civv3cCEWFI/eY3WakcoTPLmxh
         zt3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CJmhHj/wXcBgAgw3gRSQm2hlyul1HRVuWYBHY+OH/TSobo8My
	jVchnNabTmRLPiBqSUP4qNQ=
X-Google-Smtp-Source: ABdhPJzKgtjmng386pL9cEhu3iSeoh3nX5EE6xs9otB8C8TUBts25kg9FKXCQHYOgjldFCl8YbDrVw==
X-Received: by 2002:a02:ccd0:: with SMTP id k16mr16499926jaq.56.1624262932272;
        Mon, 21 Jun 2021 01:08:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:13c9:: with SMTP id i9ls2657861jaj.10.gmail; Mon,
 21 Jun 2021 01:08:52 -0700 (PDT)
X-Received: by 2002:a02:c906:: with SMTP id t6mr16624117jao.117.1624262931908;
        Mon, 21 Jun 2021 01:08:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624262931; cv=none;
        d=google.com; s=arc-20160816;
        b=fxSJWqGoETNo7jIqAqf8+TjBFwdm3Mdx2g1x7BoqaRzwX1GPamP25M6XgplMoTbc70
         fh3/QJx5rdhIbGzRK7eqiDSHTe8K8mEDybOqtO1loil/fgCDryaEjlGViyhATA4n0+9Q
         8sccZnfMtufQrR37OaaJvPT7udSGNYDbDDhnJO8FvZTZxDGqkCCY0cdUo6UV+lqkutMi
         soqQsErcSqBf/Rao86gzkRMa3v/HpgrkpCE/RLEE4UWvIK3cS+vm1HckFgYFwFd7bZe0
         ys80NrucMHhvfzvFvmCT+/ZuygmjHjbDf5YSl8/lY0cdfXbWdqRYktRHRuuGQwjal/Sl
         29nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=KaZd9HqrC4XT0iTAfFOyYFc4L8q2E0Z/tJS6pIUZlLk=;
        b=qR0qRCtjbjDstRxsPifjbdsO7kAFxKQ9Ehj6JVre1WBcIl9PRnJFV3ZMpX1BZAlLaa
         J3iKhfJCmDEHEjVp4msGXygA7kKfsrXZnFZLBxv/NHfPsu7KBErNm3XQff7EyUe9NuGS
         fYgY/CP/QHO35cy8Hp/9PVpSkUU+Tw/I4icGBGu34rAVgHBkMTTNPpdHxDpD1G2nU5Nm
         ymgSlaPua77eKJK/NUm4Vrjy+wideGkwQth7OUF6JBQv0Dp0ciRnsETMbXZDdJgd/Lt1
         iqLF5YkNNd1b/x1KxhfDm1o0vr3/veCqT3VdcZ0cQo8SEvwlFKtrww5kARxzi1QSeYaL
         IbMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a2si802617ili.4.2021.06.21.01.08.51
        for <clang-built-linux@googlegroups.com>;
        Mon, 21 Jun 2021 01:08:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B928D6E;
	Mon, 21 Jun 2021 01:08:51 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.12.39])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E1B3F3F718;
	Mon, 21 Jun 2021 01:08:49 -0700 (PDT)
Date: Mon, 21 Jun 2021 09:08:30 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: will@kernel.org, linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] arm64: insn: move AARCH64_INSN_SIZE into <asm/insn.h>
Message-ID: <20210621080830.GA37068@C02TD0UTHF1T.local>
References: <20210609102301.17332-1-mark.rutland@arm.com>
 <20210609102301.17332-3-mark.rutland@arm.com>
 <YMv2B6HCnDReOFIr@archlinux-ax161>
 <20210618151835.GC8318@C02TD0UTHF1T.local>
 <YMzPi0Ckyd9wqO5d@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YMzPi0Ckyd9wqO5d@archlinux-ax161>
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

On Fri, Jun 18, 2021 at 09:53:31AM -0700, Nathan Chancellor wrote:
> On Fri, Jun 18, 2021 at 04:18:35PM +0100, Mark Rutland wrote:
> > On Thu, Jun 17, 2021 at 06:25:27PM -0700, Nathan Chancellor wrote:
> > > Hi Mark,
> > 
> > Hi Nathan,
> > 
> > > On Wed, Jun 09, 2021 at 11:23:01AM +0100, Mark Rutland wrote:
> > > > For histroical reasons, we define AARCH64_INSN_SIZE in
> > > > <asm/alternative-macros.h>, but it would make more sense to do so in
> > > > <asm/insn.h>. Let's move it into <asm/insn.h>, and add the necessary
> > > > include directives for this.
> > 
> > > I bisected a CONFIG_LTO_CLANG_THIN=y build failure that our CI reported
> > > to this patch:
> > > 
> > > https://builds.tuxbuild.com/1u4Fpx2FQkkgkyPxWtq0Ke4YFCQ/build.log
> > 
> > Thanks for reporting this; the lopg is really helpful!
> > 
> > > I have not had a whole ton of time to look into this (dealing with a
> > > million fires it seems :^) but it is not immediately obvious to me why
> > > this fails because include/linux/build_bug.h is included within
> > > arch/arm64/include/asm/insn.h.
> > 
> > The problem is that with LTO, we patch READ_ONCE(), and <asm/rwonce.h>
> > includes <asm/insn.h>, creating a circular include chain:
> > 
> > 	<linux/build_bug.h>
> > 	<linux/compiler.h>
> > 	<asm/rwonce.h>
> > 	<asm/alternative-macros.h>
> > 	<asm/insn.h>
> > 	<linux/build-bug.h>
> > 
> > ... and so when <asm/insn.h> includes <linux/build_bug.h>, none of the
> > BUILD_BUG* definitions have happened yet.
> 
> Aha, that would certainly explain it. I figured something like this
> would be the root cause but figuring out header dependencies is not my
> cup of tea.
> 
> > Will, are you happy to take the fixup patch below, or would you prefer
> > to drop this patch for now?

> >  arch/arm64/include/asm/alternative-macros.h | 2 +-
> >  arch/arm64/include/asm/insn.h               | 5 +----
> 
> Looks like arch/arm64/include/asm/insn-def.h is missing from this patch?
> 
> If I add one with just the two deleted lines plus a header guard, the
> build passes.
> 
> Tested-by: Nathan Chancellor <nathan@kernel.org>

Whoops; that should have been as below.

Was that the same as you tested?

Thanks,
Mark.

---->8----
From 622fd784c57423b1a276fbbfb270b84839e3afa8 Mon Sep 17 00:00:00 2001
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
 arch/arm64/include/asm/insn-def.h           | 9 +++++++++
 arch/arm64/include/asm/insn.h               | 5 +----
 3 files changed, 11 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm64/include/asm/insn-def.h

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
 
diff --git a/arch/arm64/include/asm/insn-def.h b/arch/arm64/include/asm/insn-def.h
new file mode 100644
index 000000000000..2c075f615c6a
--- /dev/null
+++ b/arch/arm64/include/asm/insn-def.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __ASM_INSN_DEF_H
+#define __ASM_INSN_DEF_H
+
+/* A64 instructions are always 32 bits. */
+#define	AARCH64_INSN_SIZE		4
+
+#endif /* __ASM_INSN_DEF_H */
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210621080830.GA37068%40C02TD0UTHF1T.local.
