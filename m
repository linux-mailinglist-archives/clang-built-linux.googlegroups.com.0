Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBCXNSXZAKGQE7DMBSQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E36915C7A9
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:17:15 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id g10sf2285260ljg.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:17:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610635; cv=pass;
        d=google.com; s=arc-20160816;
        b=QZtahKhUh4zn1wJ0oKCbIeLEiQdm7WDQ+471Av06zGUYXhhSA3OylmJy/+2ZuAI/bc
         1f0fdJnPY1DFtz3ydmvTH4UM5+I3d7B6WpNwc6TrdAPri6PPhcAHoI1cPofrd/rpNlCw
         wooXgk/64680K4vAV0qMSVzsUzS5jTuK0jYAB2th/yps5r2ikywE9ur44xbayWhdNKZH
         IXZzBngUAcHSHNdJr0GNGilEMagxrhfO4lu1t7JbCfyPlqmnR4cDqXhOPuGMGXip4KOw
         i/JO8HSviXrtGilcnlHHY4AoU3lYiOyb6IteOHA0m4W3ixfZFRG/7IQDgpMYN3istl9E
         DSNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HoP9hIIMQ0Z06U9e5NcJXOPq0uEQlTGiqqGeAevb4OM=;
        b=DBwqlT/ONG+BITqhOBM3dzx/Sks6gc6/85lJMCM3UGNJb7rpZaPzk86zMzzlOBT5fr
         2GqXxwM0nCMcQmpsKmRCD8OUoZN4C9K/baxVyr+Pnu0MKsSjWXgxQQh1mYlIFcJKEfhO
         CZfYiJYUFzCj6VS8BY2c5Vv5Z/TyEEV/L4Fix7sx6GFEakvkhi6hsCJsoFRltEkSxhou
         N+6YBq7lXal6RpZDgTwX5rbv1q7y7xGG5grh0GLyFsBQCCYKwrP6TlPA6GcgbfZsDnWc
         eujgvyo+MtT7jUX0wRwPw/YItseDPu624ymCZs+/+rnrdOdHUdcEXi2IdPZ6bzqh2poa
         JlEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HoP9hIIMQ0Z06U9e5NcJXOPq0uEQlTGiqqGeAevb4OM=;
        b=UtxpXZkUuhaQQP0rPXFwkgLtxZjq1U7caaVfvf5jIED4BCteqZLMQ/VZjq1VMk+EB5
         z3y8b/bBpwDSU3dFdz7+c3gH20xiQOgIzMD42Y7jQv6JLO+ZpEa2SMnl8/FYTxrcMOUJ
         s9E3zFEE2Pi/VhkYYsZbo/kAwVlmlarILcu978l0n+RCg+UuPId8yp/zWeq+o5Scst9U
         H11qdQo/RqqV++Vmg5LAQYcb7qNbEMHIJx3a275ZrMqIlEJjVuCkdZkVrYnu+VdYHx74
         3JDILZItcPucJ1QiArlSeY2d5eySLK8vLiITpxA3a508v2RT/BjGXuVtxHg5cErkwZCk
         h8Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HoP9hIIMQ0Z06U9e5NcJXOPq0uEQlTGiqqGeAevb4OM=;
        b=f2s8q38O4nl4C8XMQ0K8n5IVb0hkNGeG1S2GRtoXySROEgrjalIsoKA6o7FYqg4g1z
         bqKfmDyrBXjgylj2EWYLx0hUkMtg52hOWc2otbm+ozI7wctv/gSBms0vRwbybWW9xeOH
         /6KbDc/OP2MKFJdZIII58RKhopwmUZCNoBP+F8Tapg0NltORv8kuYGE3pJ8PTkbcVye/
         5rSD/mrSQpHN/l63M6dXcQeEM6LDNH303pbNemXS31PG/oL7OJp0ZpFbaLR0Ep3cjTj9
         ZUtC40xpRG3klRKMdxNzciIrIabTmuH4BgE+9kfLMBjIZH2WCCaKNpNuIXvFTmc7V6IY
         Fa5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWjDPko/yvewmrrBGGx21UjqP3KN1T0o88lZTe9ShweppOiFzuU
	RzuzcgciNtHdWhGxvoj+2CA=
X-Google-Smtp-Source: APXvYqy9cm7wkpZ/kvogDa7qW+err3M/EHsHG2HkCW5xClfqf4+ufPCeL98a6anIhlHHOlSQvx0hcQ==
X-Received: by 2002:a2e:3514:: with SMTP id z20mr11424121ljz.261.1581610634995;
        Thu, 13 Feb 2020 08:17:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9c85:: with SMTP id x5ls4316147lji.0.gmail; Thu, 13 Feb
 2020 08:17:14 -0800 (PST)
X-Received: by 2002:a2e:86c8:: with SMTP id n8mr11364083ljj.205.1581610634137;
        Thu, 13 Feb 2020 08:17:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610634; cv=none;
        d=google.com; s=arc-20160816;
        b=Mg6arFgRFmw87udb+86nXfAXpYlZPLR9vpW713GA57AruPHk7VOOdkj4yxJ7wvybKE
         zif7v3eztWi6eJ1NAPYfRdPxNcHjAOkytmk7NBmYMTiwueZdQ6xM1c7BAFJ+yEITwftW
         pH9hczSwl4cli96+qBHVELp2W+cUMedPw8SpbLG9UKnmQSwQbVn9JjByxMWOv7Kh9TzJ
         JLVz6jkEaXvSVLbqxOm2bOZ6EwkoUcHXpm5kGHQX8ODl6i8zDvm2P3Ih0rioF98oaZLr
         ulYxtDs8VRjCUI7ZKeLKpLbX/y6jQHPaANUlotcLKNysWxpJRg8fT6Tr8iug1F6pIni4
         W8PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ZyxIrdf6S/lFcYUMeYqbrdBVim1oZu8jvsWYOCQZtVc=;
        b=yrH04+fXM6sL1rZSeQrvuKLYCWEjzm2E+LSs9mbtP6GXLwdSSUIuB7bHN4bJZam0S6
         QSSSnKHqB0Bl5XsMPypVgo/ynCIo4LDeQoTWWx4OmZaLgQqXV6SF42ajjmEcMWQkwKeQ
         D/oazw+Jwbx46+T1ios0nOXTsqCqagAb1VVORskif00mu3XlK+kOxiqnq1JNhAawwTXf
         eCQv7WRgd+PwVqxn07ca88Ac6S7b8lGrqL+Hd6RDBOKNdTWeGLArYLNBvRsygICHTGwf
         JOgzCu8JmkTVMEFsHf5LVPYf39l6C0VuMgR3YpCcxNfVk1FgjZgxOjqiks1DPtKBmYXP
         mbsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id j30si130127lfp.5.2020.02.13.08.17.13
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:17:14 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 239721063;
	Thu, 13 Feb 2020 08:17:13 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 97AF03F6CF;
	Thu, 13 Feb 2020 08:17:10 -0800 (PST)
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
Subject: [PATCH 11/19] linux/elfnote.h: Replace elf.h with UAPI equivalent
Date: Thu, 13 Feb 2020 16:16:06 +0000
Message-Id: <20200213161614.23246-12-vincenzo.frascino@arm.com>
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Replace linux/elf.h with UAPI equivalent in elfnote.h to make the header
suitable for vDSO inclusion.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/elfnote.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
index f236f5b931b2..594d4e78654f 100644
--- a/include/linux/elfnote.h
+++ b/include/linux/elfnote.h
@@ -59,7 +59,7 @@
 	ELFNOTE_END
 
 #else	/* !__ASSEMBLER__ */
-#include <linux/elf.h>
+#include <uapi/linux/elf.h>
 /*
  * Use an anonymous structure which matches the shape of
  * Elf{32,64}_Nhdr, but includes the name and desc data.  The size and
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-12-vincenzo.frascino%40arm.com.
