Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOGURL7QKGQEVMQYSYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF822E1267
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 03:23:53 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id w8sf20236978ybj.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 18:23:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608690232; cv=pass;
        d=google.com; s=arc-20160816;
        b=w0dpHs6g/T0Iggj4uHwqvh9t9iTwUd46l6fAXbzYzrowfnaXS4337qPlUsuEanluq2
         ckhbkkL1IMNn2kMy/ZWurCjB/SyG4qgo7RhVS+orMMbbCb7eTOrxnTqY/X6dxxmMPEzi
         vCfUFySfwe1zoXGIbOnIM5O0hq5F/7R1aSCp0ja8cSLkjPQ6JYo5ElF6GB+HLITq4NYp
         c3VufvsxvM0ZYV9wvskZmrYjD1OSds+UFeb9otHBsHtOslblZ73L0rHpED6dAp7ePEGS
         LIQG3uofcyVugiQSA2Wu0q4a8uiU9MOL+PtU/frBLyNe9q0CJHBj07igfbd1oAyt+iAZ
         mCwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dmlbQEUC/oRBiFfG1eGi3gDCiHeA7j1CYeiYF2yZxeI=;
        b=dHLdu2kmksFRKiJk8iVA2H9nXZxu+U++xLAtGmUx5LSUp+dPnkLM9CIpLXYdfF8ozX
         IX0bwrra+ozB2BfQVHk/BaQiEKAzjvJI/4RubTksX29mKGCq/y0z12QQ+7rkcuD0z2Nj
         grqZrnHwWJhGl7dVT0n95F8PRKglWZLPczjSxYgpVoCes0lK8HmZW0Pqh5ZM1QXpgv8y
         qnU7UZoItIATUIiP0mRzQTphOP/PKF8nkylErNeZLxuHbmKXAvLBst/2dKWZ2iNPxfDU
         +E5wVRZk5d7Wadna7jMu2KQIbmipX1dWQeXnCTn9MWFPWHMaaCQkDM37J/yd5eyOJGRO
         Ws6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="jhDOxQD/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dmlbQEUC/oRBiFfG1eGi3gDCiHeA7j1CYeiYF2yZxeI=;
        b=iyD5JCr26yF4xXOypMoNT+KiESTsvaUeU4p6kaFdMDyQWUkY1SoeWyzMcpycU3Hoc+
         5FFQmZxz5QY0/nJ1lB7s2/gtXzlKSMvaIE9+b3tDPogVplK+ApDHNkwOrftY+G62XA/u
         gobgI1banSCoiVV4CCcmNEA/KTu91BLfycBnGrSl4C5jiPtOAwTxkX1B0tNsJu3jDsOa
         a+eACt9STF365fhKuaUc22aauSGWFqQd0EFg+QVyyUckXLLymVZTR7blSDUkWHE5rvdl
         YS2L2cm92mmWHhkh1KW9HtbwOeE/NUXnA6A1D1veYEphnYZ4U9fdOxnLvRkT45637KkT
         74jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dmlbQEUC/oRBiFfG1eGi3gDCiHeA7j1CYeiYF2yZxeI=;
        b=luFtkZXRByoqiSKxMQuF8xCoktaSKUgYPPBSUMFsCfuf5kehzRUFr4gniFE6OiTVl6
         E/pjMTpr0GzBBqobcGcnsSkMdXpx8spDxyPxjP//aVJZ0O0mqetp7Vtvuk9pBDUiVVrH
         pxuxSA3/nq/bAhruT7Y2nBeTkZhHn2Ugz48B1FK94vZbLSXw1ZH/JQXKYbFmj/HS6Sxz
         QhEKFWr7JRhDN1Yly02P+ILd036Qm9pCRQ/m2kH/27eCVSn88TcpYBb9StdNuhQDJENL
         xhHWLMVvfAkBsuUYWzNT+4AB1VNbE1u4+p8TdSSr45HAlDbqMQAvGxJ+nSUBxylRjpK6
         BUiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325/XPp99C3j4S6TUtUhvVEuTrDxbxvSPaxvZ4OzHDPDFuttsIL
	orxbNN83EvKw7d3lqSm1XW4=
X-Google-Smtp-Source: ABdhPJx8R2ozgS7FxzWklqmm5OvjhnjX5GXfSjYo83S452v8SDisy9ai4bZtAsjIvQO2lsF2OGVJ8Q==
X-Received: by 2002:a25:d806:: with SMTP id p6mr33764627ybg.68.1608690232197;
        Tue, 22 Dec 2020 18:23:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:23d1:: with SMTP id j200ls22006016ybj.11.gmail; Tue, 22
 Dec 2020 18:23:51 -0800 (PST)
X-Received: by 2002:a25:b195:: with SMTP id h21mr34746009ybj.406.1608690231852;
        Tue, 22 Dec 2020 18:23:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608690231; cv=none;
        d=google.com; s=arc-20160816;
        b=D95STQLdq9TogY07MJczxc5mAjkj68Bv+RK8KIJwdJO1T4WRHiLwn5oV0jXWwdiVpH
         CK9faReybaXgiV8yxp5qtDLg0OAHzzH5R5MV1WB5VQDrrF2a9CXdHWpvSxRzv3SxR+O2
         SE6BbKEpCPmS92tRMXYDoiTTRiiDrs7FNu6egaCguYlwlPncgBMP73XLANdmMGzwI6iQ
         vWwlXqeBLsQDsQ6JoNTirgtXGDfI3CTSX6ineNO1hkXIFbhvgYXJ8V2uofSmq3JAPSfl
         CGBGcA2TTfZCKEhkYTBFSkmIEv20aBiC1clk1Su4jYdh6sMlwfWRyYMozbsS2ilE4s5a
         J3gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2CxKheTD9oK3vNE1fOv3Ykpm6TxvIg66IVqfrcRHxbI=;
        b=klhnMXQN1is+MI/vutE95ZQiQYjxc5C16N0rr44D/7cnAM3mlh776BRtf6MMvi+9Hm
         oTTD1e2weWm4qX50bJt9hJS3x0ASN+hWCpbLjvOWnX+DMwUVXnz5jZiI/1jJ9k0vn3AY
         oT7nLl4GOKETOwbKB+c5teX8XiSVWD7hYIoFsZ7iGnelWyrAu6YkdxmKQgYg2d5VxVoO
         /cEG1mLsH4CY3Upd/QuT/4qm8SUNY4ynORl4qcFJCtOpFdY0wqacGQp+zvzUAMX/krIR
         xB7pFO1/zw3j0vxGKkuyb/Feopd+OtKTWO+igEeAFj81rTRLa42UBaMPoRnwBx4h3AfN
         qg8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="jhDOxQD/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r12si1828567ybc.3.2020.12.22.18.23.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Dec 2020 18:23:51 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D65F229CA;
	Wed, 23 Dec 2020 02:23:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Borislav Petkov <bp@alien8.de>,
	Borislav Petkov <bp@suse.de>,
	Sasha Levin <sashal@kernel.org>,
	linux-pci@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 46/66] x86/pci: Fix the function type for check_reserved_t
Date: Tue, 22 Dec 2020 21:22:32 -0500
Message-Id: <20201223022253.2793452-46-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223022253.2793452-1-sashal@kernel.org>
References: <20201223022253.2793452-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="jhDOxQD/";       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Sami Tolvanen <samitolvanen@google.com>

[ Upstream commit 83321c335dccba262a57378361d63da96b8166d6 ]

e820__mapped_all() is passed as a callback to is_mmconf_reserved(),
which expects a function of type:

  typedef bool (*check_reserved_t)(u64 start, u64 end, unsigned type);

However, e820__mapped_all() accepts enum e820_type as the last argument
and this type mismatch trips indirect call checking with Clang's
Control-Flow Integrity (CFI).

As is_mmconf_reserved() only passes enum e820_type values for the
type argument, change the typedef and the unused type argument in
is_acpi_reserved() to enum e820_type to fix the type mismatch.

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Borislav Petkov <bp@alien8.de>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
Link: https://lkml.kernel.org/r/20201130193900.456726-1-samitolvanen@google.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/pci/mmconfig-shared.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/pci/mmconfig-shared.c b/arch/x86/pci/mmconfig-shared.c
index 96684d0adcf94..ec63c1e622d77 100644
--- a/arch/x86/pci/mmconfig-shared.c
+++ b/arch/x86/pci/mmconfig-shared.c
@@ -424,7 +424,7 @@ static acpi_status find_mboard_resource(acpi_handle handle, u32 lvl,
 	return AE_OK;
 }
 
-static bool is_acpi_reserved(u64 start, u64 end, unsigned not_used)
+static bool is_acpi_reserved(u64 start, u64 end, enum e820_type not_used)
 {
 	struct resource mcfg_res;
 
@@ -441,7 +441,7 @@ static bool is_acpi_reserved(u64 start, u64 end, unsigned not_used)
 	return mcfg_res.flags;
 }
 
-typedef bool (*check_reserved_t)(u64 start, u64 end, unsigned type);
+typedef bool (*check_reserved_t)(u64 start, u64 end, enum e820_type type);
 
 static bool __ref is_mmconf_reserved(check_reserved_t is_reserved,
 				     struct pci_mmcfg_region *cfg,
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201223022253.2793452-46-sashal%40kernel.org.
