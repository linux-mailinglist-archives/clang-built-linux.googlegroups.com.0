Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDOGV37QKGQE3RMYM5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9402E74E4
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 22:43:42 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id n205sf25830477ybf.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 13:43:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609278221; cv=pass;
        d=google.com; s=arc-20160816;
        b=j+ZdL5F3qXYJ49r5CxH2/mYU+zSut9RdQ7gs71bji7cKK9rBkv4YTvUXvtrpo7TNU8
         sSxaPHg26IqjqKtfwu0XctnCpCsQYE5wP0eZ9PAbDAhAs4N5BEJPtlzwigWpL6hHtuZd
         WhQT6pC6cQLEAEaDRg2vLGZIzZJc+qxWF2qPj5oZNK7mSEqS6sLyIomzU5r69jaeTMC2
         VEyMpMiuWxVMFt2q1pJAGbn56OrdbVx1LpH3uF7zsYgbNlkTf7CFAko+SY49i1N2IL6L
         VVSPrdTA5VQ6a0kCw9e6iBgGkehXwth52TPn0Vt0bEtdwij4T0NKBPnEvnix4h1YQ1Tx
         NbaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=jLq0DgfBQvRutTSTKuOrPojmxa6ReV9w6qt9zRUCiFI=;
        b=ilial+moh1PNW7ton7WGMfriiFNRJlD1Y7iWQK2sREwpOMtVd8152HFtafIED372B1
         SYpAoK/dEiSj2CE/p6J2Q+gaf+fSK6aRVvDIzhBaNki9Dj+HbD5Dm0yNUAztf2uvuVBD
         17EMBDVY/PP6ImnAsebx4dB/rGIACvL2/tqiX0f1sm1MbDhBYKNwr1BHJSu6OoPiA7fX
         n5nevr7UJSyXhzpVYRCAd9dV9JczlR+/QIn1iOVTe7rcpeFuh4/CCqv7INZtiFB9/gd0
         4zaHR56lmEnH1YxGFraUucowbj16/bQBd8Jcpp/0prYyYYl53QmnHHUJpRalpahRNqd2
         y9og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f0dILRFv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jLq0DgfBQvRutTSTKuOrPojmxa6ReV9w6qt9zRUCiFI=;
        b=R+FqAuiTyy6cIP7MmmS3lUQy7aUkWzA1p3tLRwFRlLUPyebx8QPoH4vHnmWkXKcF9W
         cBWDy1L+DxE9CW7O3H4mo2JhTz7ww+oX7If4ZDG4NR2MfGSIY+SZHt7t0Q9R5D/SoVEh
         Y+r/SDKScL3Gt/XMUhdvsDiCNRQij4iiekD3A0caHSYj8B5jdrHo5W4hvyhXDPbutmc8
         ts4rLm7dxZYHP75rXQNqiBE15MjKamBD9vkkuTN4M7Pv83DoXEinnyHMyn/aTc3ZxO4b
         UpFPwk9SBxowPTNitlGNcz8lDNLLsxMlM6yTOXNgOrauJMHPnWUpZ2XfFOjVzwXl/HsF
         uUXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jLq0DgfBQvRutTSTKuOrPojmxa6ReV9w6qt9zRUCiFI=;
        b=dG0U/fDU16BpqphGKtkOcjrGo7HpNkbFuQstRRh/SOxeZn/bwPYDKASeHC8pTrfxT9
         DID1wyVF0aQpKlZHx5f/3WWaMNZk4RwzsdY/2g7b7uN7KRQP78K3vee3X5ah3XUOWhZW
         jmP/si0UOyQw6V6G8ZA9nvdAw2pTaEL3Ch+r6FkxtXb+hY9ZGosX1hoouM4J/A/SJcJP
         myS3yx62uLoVWz6AqJyyKSLcAhXBx72F1wuK3FHgKHcSq26MHM3Mwb85Zdj1ck0NMsLD
         xyrjbjGPif5rY7rWeLtFaPV0F4BEDqgC0G165QdePJQLrc9XzPQvzL4BtcysCYZ64GF8
         Nd3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jLq0DgfBQvRutTSTKuOrPojmxa6ReV9w6qt9zRUCiFI=;
        b=KGiGgjJCkHcfRthA1jLMrdztbBPQNUkwGMvSJUlLDNIhdMaDUt1sZXxiY00MNjKhaB
         t5vwmXAbEdPYefytTygm8wels2lp4rn7Sy7G5BJF1Z2F21ka07+/tSpNsos+uYGhBgVK
         WYLKxe76OZik/iJzfaMhKn2X0auQ7I1dDXuHMjf+/97N0ksx/MIyKCX/I/b3U5McpsMr
         lZ7KZHKreAC4+TgMm95JK64dxsjKGWNTKwyFur1TfEkMJpn41lOCWu3LzKk+t3A0LuIi
         DQ5CgKwZ0eK5u1u47CLs6yvdXCyKLEq//FYlMZV/tzkke93YUVTpRrhAVKk9cXMhaNdc
         1cDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yVHmB3u0gxzeTn8DSJaQXSvgkfWKdDVQrhXMkdFyteBlcFdGA
	iZ65a7HYAqmek+rMyv8oEoE=
X-Google-Smtp-Source: ABdhPJzE8cU6tgX2wfvRyvf/H+Y7qJ6dZ9LDde+AV72cydDHvojWllqe6QvrCEvMAK9lfz0pn17oWw==
X-Received: by 2002:a25:d7d7:: with SMTP id o206mr71763613ybg.228.1609278221857;
        Tue, 29 Dec 2020 13:43:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:f80c:: with SMTP id u12ls25245102ybd.4.gmail; Tue, 29
 Dec 2020 13:43:41 -0800 (PST)
X-Received: by 2002:a25:cf05:: with SMTP id f5mr73492424ybg.42.1609278221473;
        Tue, 29 Dec 2020 13:43:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609278221; cv=none;
        d=google.com; s=arc-20160816;
        b=TYMHrOHnjZQ7GEwDdNo/mh5Zrkwjfp8dBkh98RgjWi1I1s7Ca/sDD7Y/uHiweHFvaa
         ldSa9B5DUtrVNyWlAfZJz7q3+egZlydMXX5Cn5ZQbg/KbV/FOyQwntr/2WaRHgKtwi8P
         6ao/QORcPaF+H+lHrdM2BtVaB/sxB23br6VqTzM9achvCrJhAOYrwq+sJFbl4/NB8njG
         0jKbfCUDNc0916SrcbjCBw+Y9G3oB+kRcLnsE25f0iJ0UGS7uqPPE7HgRY3kgESzRnWL
         QKZc9RWOhMUu71xp8/IhwW6mP8wN5D+Ekp6siEa1V5TxCJPExRgCnW+ykaFI714uGXyU
         ufSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=HyTMgo2VSftHBiDIe/SLp0txxvwc3jI6o6j5ZlWh/dw=;
        b=VAfqXEVD2bOFGS9UtroGb93vrVbhpkYhCNC643wz7WehRlWsrK8vb1pAvmKMuJ2tfB
         H8rF0MTJallqmEOnHg94+8FAJ5h2QTa5k3p4sKMqN943cEKhQAN2KUKPNw041yhI0au+
         RUVtt+IBOXeH1VNG/FhfuYa7ODnZqea0FVxLoqCFDabiq4SA7TT+20a82OZbnEpjXAIy
         z3XlgIUsZsAfLbcfjgiUUoSN0lurY7ag9HHf8rb41F8mXzDnHBLeqdw2LlVr9Q/yllOw
         RpyDoy6R54UteYz/wpQUFCTbssuROxqFbKy2cgDqTdA58/MOfzSu943DNKKA79fnNddO
         Awcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f0dILRFv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com. [2607:f8b0:4864:20::831])
        by gmr-mx.google.com with ESMTPS id s187si3927949ybc.2.2020.12.29.13.43.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Dec 2020 13:43:41 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::831 as permitted sender) client-ip=2607:f8b0:4864:20::831;
Received: by mail-qt1-x831.google.com with SMTP id j26so9841923qtq.8
        for <clang-built-linux@googlegroups.com>; Tue, 29 Dec 2020 13:43:41 -0800 (PST)
X-Received: by 2002:ac8:1184:: with SMTP id d4mr50229998qtj.103.1609278221078;
        Tue, 29 Dec 2020 13:43:41 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 17sm25725927qtb.17.2020.12.29.13.43.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Dec 2020 13:43:40 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Marc Zyngier <maz@kernel.org>
Cc: James Morse <james.morse@arm.com>,
	Julien Thierry <julien.thierry.kdev@gmail.com>,
	Suzuki K Poulose <suzuki.poulose@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] KVM: arm64: Fix section mismatches around hyp_cpu_pm_{init,exit}
Date: Tue, 29 Dec 2020 14:43:36 -0700
Message-Id: <20201229214336.4098955-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=f0dILRFv;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Commit fa8c3d65538a ("KVM: arm64: Keep nVHE EL2 vector installed")
inadvertently changed clang's inlining decisions around
hyp_cpu_pm_{init,exit}, causing the following section mismatch warnings:

WARNING: modpost: vmlinux.o(.text+0x95c6c): Section mismatch in
reference from the function kvm_arch_init() to the function
.init.text:hyp_cpu_pm_exit()
The function kvm_arch_init() references
the function __init hyp_cpu_pm_exit().
This is often because kvm_arch_init lacks a __init
annotation or the annotation of hyp_cpu_pm_exit is wrong.

WARNING: modpost: vmlinux.o(.text+0x97054): Section mismatch in
reference from the function init_subsystems() to the function
.init.text:hyp_cpu_pm_init()
The function init_subsystems() references
the function __init hyp_cpu_pm_init().
This is often because init_subsystems lacks a __init
annotation or the annotation of hyp_cpu_pm_init is wrong.

Remove the __init annotation so that there are no warnings regardless of
how functions are inlined.

Fixes: 1fcf7ce0c602 ("arm: kvm: implement CPU PM notifier")
Fixes: 06a71a24bae5 ("arm64: KVM: unregister notifiers in hyp mode teardown path")
Link: https://github.com/ClangBuiltLinux/linux/issues/1230
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm64/kvm/arm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index 6e637d2b4cfb..71a49eae9ea0 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -1574,12 +1574,12 @@ static struct notifier_block hyp_init_cpu_pm_nb = {
 	.notifier_call = hyp_init_cpu_pm_notifier,
 };
 
-static void __init hyp_cpu_pm_init(void)
+static void hyp_cpu_pm_init(void)
 {
 	if (!is_protected_kvm_enabled())
 		cpu_pm_register_notifier(&hyp_init_cpu_pm_nb);
 }
-static void __init hyp_cpu_pm_exit(void)
+static void hyp_cpu_pm_exit(void)
 {
 	if (!is_protected_kvm_enabled())
 		cpu_pm_unregister_notifier(&hyp_init_cpu_pm_nb);

base-commit: 5c8fe583cce542aa0b84adc939ce85293de36e5e
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201229214336.4098955-1-natechancellor%40gmail.com.
