Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEXEU2EAMGQEB36NQNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED443DF6C1
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 23:16:04 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id n27-20020a0568080a1bb029025a01bc9839sf120258oij.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 14:16:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628025363; cv=pass;
        d=google.com; s=arc-20160816;
        b=rgNwcL2LHsfE+rwkUQDXE8sR5MVKgq0kGHl7vGSkjZtUpArIXr8fFOASUQMVGSh7AE
         z7RIkMUkQ5FaPAAXut7s2R0LlK1Edc4wGygK/3PEvqnqfu75oNPqYXr0Ozicx2hg+SVs
         Fq8HQ2q9L3+Tptg42aKItadfGZjizkIRIRpXmX5mLd5l/F46f5pAoT9WvPuyOOHeBtoy
         pau3248ar4fU28fHsAPeVyLvvO3DxNm/oeXSdiVupGPIBOl//bLJDbr65pdngGnZy6HG
         Rf/Hh8p86UZ72LV1rxST/Lcmd+IDENJlbhvO8fiY5fxMlaPwyCB1yfuXmtKnxw4oEP+D
         UoqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Ljo6OgSBiYkChXA/t1tobInsuFyk2UhQNRvic+X9i80=;
        b=yqE1IqnCOuT0fNN+SWPTxAvdTYGetWL9RCCgX1QSC0D3si+7SZLO5C69/dm/qITIIB
         Xrnz9IqBZf0PYkwOO8bWdMmq7WfnrH/4cb28Oc7RAi6bV1d7x0iOHMd/In8BpA4dA6/n
         nNcDLuMOSncATMduLVRs2IT8kriX4N5GSVagWt3ZVlUBJIYV8Lzb8y+mbL63Ov1Azwmu
         tol8S7VqzT5VZySBXexfGkrgiPfItiiXQg6yyt0N3ARAWJIX78G9sOngov0uxOtV/E9D
         Kdg7YsUpFsHxmPVAjcfVGed3MbzzMe9k+f0cdfIMSMG2rJslq+FmjM+V4AfqFc+wMQuq
         L7Fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=D7Z+CKbg;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ljo6OgSBiYkChXA/t1tobInsuFyk2UhQNRvic+X9i80=;
        b=J5xiwtxZn7cD9un6dH+DvGqydalvhqIjO/fVBNoKPW/q/wdOw5q1GT+ElvVJX591BS
         a/rD+u5XTXX7Ngshyv/qVv9yCQwq7UnqxFnCUYCgU4ucIKHXgnNn0TAdaRxa9GjiED/E
         AFhjhHFiKnoL4G3L2cIMrNdqvvpAx6EXI/35i0QBElJm/730S3ZyjQimlkCL0OVFi1uE
         An8PkKilG3o924a39VM6H4zWiMmvqwpfKao4TZOArmsgtLiNlUKsFl19nIE4K+BPYD+Q
         QpJeICB6ki6dOBiJQDNw6LyPT7agF5PqaOoHpWMvSX6j7tkGWGrD6KuOup5RV3UR2IJS
         knbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ljo6OgSBiYkChXA/t1tobInsuFyk2UhQNRvic+X9i80=;
        b=Kutt8OjKyfVW6Xe74Rdltk9+lrhG3fN096Iff9mLcTBPXzwGfCnjz7aDJ/MBAFDVlf
         iMSCERsJbCaXOqokqVOs8k9vS5gpbcLjtAy/l9qpkZ3kZb9PIph0NRWQW/g38+hTlYr2
         LxUYOdcLdE45qoKuHFtOUaiBh9FIJNk5acSuUxXZ3d9R+2/io0XK4neZGCBZs1uruiHh
         z9K9+ZeDxQfNig7lJIq6dQVH0lwTPSSNTPrQEBIfr4MyL6k82vMf7OJoOQxhmBXX+vgN
         WbeT1d6wMhPZnNSDw/uAlzjLb95EACjmJH5l1eBMcjjPoryZoMCSpVHWqketWZojsn72
         fLHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rL4QN0diTKa6Svk8i9vOpL0LOIqCiDO/vdrRKsfhU0o1ZoDLp
	skZ0IeppL/GWDeu4F7O/Xbg=
X-Google-Smtp-Source: ABdhPJysUuPdY7tD6sT6MoMXdETxSjSlhDgOLnXC3IaixnWWMDMew4BMWW5JTH6YG4h0ncLu/CDFog==
X-Received: by 2002:aca:230f:: with SMTP id e15mr4736352oie.108.1628025363007;
        Tue, 03 Aug 2021 14:16:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1292:: with SMTP id a18ls31285oiw.4.gmail; Tue, 03
 Aug 2021 14:16:02 -0700 (PDT)
X-Received: by 2002:aca:2316:: with SMTP id e22mr4495141oie.103.1628025362630;
        Tue, 03 Aug 2021 14:16:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628025362; cv=none;
        d=google.com; s=arc-20160816;
        b=jd3qSiOER5pmzaAu28WmiqdDIACTIXH5PcSjmqFnA5+g5obkNPJ41xRi1Z/63N+gyP
         uJI4odKATrdBocO/+p6MtSlmMNk71HOaH04d/vOXV1d9VGm3XTA0+YM/bS+JyhOSPxMC
         SMfSfpzA2J++n0rxzYHujyZftRvAc7kafhXv4FxVHElfRLbK/A5KNd8GsF3F6wizmTo/
         CNCOwa1N+8nwIwF2pnlD9AmrqW3GHx0SBmb8POqk8GNSXL/qnYPOyXagrH9JIh10Q1Rr
         qkdsalp8nM73n7EFdJr56p8s2zO6FIts7MRxkpUpTS9zNkNIYtW52Ew3VC5ZJgWzwzTo
         c/Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=OJs0PqkckE8ymSIEc2HUlj/+2SVYdf5KfxuCIGo6MXg=;
        b=Dc1xOoET6QQnUZtw0fBJJRyp6d/epA0VLDvh+FFMk3CG8/oMfjw5BWVJvAsXQ4ct4h
         NaqI5yz/gjzeQJTlNNkdERWz00fn8e0psiOFF/WSi6eqJSFQYeaVRtUWjKW/nZulFxL1
         oPrWl/hxnUl0nJQi9QtP5yBdZkwOEXveHkT8dlhlz873SA60CPcL1UbXrewKfORZLSRX
         7ym2xIaJ+pCFcUfMyx45os27g05BnwcQpS4NMJMlDCB8kv8XUtoJKr5jjYjXbx+rme2P
         jWnbTk05yifT1ja1AJMZPjUq+avUWqQKYM6pXcoaW6AKYjfeVfgXeMOC5TsrG373Fv6w
         ECwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=D7Z+CKbg;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m22si4042oie.5.2021.08.03.14.16.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 14:16:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E3A1A60F0F;
	Tue,  3 Aug 2021 21:15:59 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Gautham R. Shenoy" <ego@linux.vnet.ibm.com>,
	linux-pm@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] cpuidle: pseries: Mark pseries_idle_proble() as __init
Date: Tue,  3 Aug 2021 14:15:47 -0700
Message-Id: <20210803211547.1093820-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=D7Z+CKbg;       spf=pass
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

After commit 7cbd631d4dec ("cpuidle: pseries: Fixup CEDE0 latency only
for POWER10 onwards"), pseries_idle_probe() is no longer inlined when
compiling with clang, which causes a modpost warning:

WARNING: modpost: vmlinux.o(.text+0xc86a54): Section mismatch in
reference from the function pseries_idle_probe() to the function
.init.text:fixup_cede0_latency()
The function pseries_idle_probe() references
the function __init fixup_cede0_latency().
This is often because pseries_idle_probe lacks a __init
annotation or the annotation of fixup_cede0_latency is wrong.

pseries_idle_probe() is a non-init function, which calls
fixup_cede0_latency(), which is an init function, explaining the
mismatch. pseries_idle_probe() is only called from
pseries_processor_idle_init(), which is an init function, so mark
pseries_idle_probe() as __init so there is no more warning.

Fixes: 054e44ba99ae ("cpuidle: pseries: Add function to parse extended CEDE records")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/cpuidle/cpuidle-pseries.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/cpuidle/cpuidle-pseries.c b/drivers/cpuidle/cpuidle-pseries.c
index bba449b77641..7e7ab5597d7a 100644
--- a/drivers/cpuidle/cpuidle-pseries.c
+++ b/drivers/cpuidle/cpuidle-pseries.c
@@ -403,7 +403,7 @@ static void __init fixup_cede0_latency(void)
  * pseries_idle_probe()
  * Choose state table for shared versus dedicated partition
  */
-static int pseries_idle_probe(void)
+static int __init pseries_idle_probe(void)
 {
 
 	if (cpuidle_disable != IDLE_NO_OVERRIDE)

base-commit: a6cae77f1bc89368a4e2822afcddc45c3062d499
-- 
2.33.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210803211547.1093820-1-nathan%40kernel.org.
