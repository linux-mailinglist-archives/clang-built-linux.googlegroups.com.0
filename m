Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBSWSRL7QKGQED4KXEJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC762E11F4
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 03:19:55 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id n12sf11615298qta.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 18:19:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608689994; cv=pass;
        d=google.com; s=arc-20160816;
        b=zEKf+9PEJpgt3F0Fa/FmZt/bxdxSAxZ/LOKO3AaoUmubuasCaUbGBwZbbd+MItv/Q3
         GtUcpYGzDU87q97aIphp5ZwDP7vsgcuOZtqZs3N7F65xt4TcuVP62lS1zW9LW+YqTjob
         YO4sHVsYVobjCA4yFAq6UZtQ7Fbw76I4im12bKOqd9am4AZdjh16RiD5IGE1huBiUJbS
         6o/jjlbhZS/X1Ol3l4e/RFjokGki+aHPMY6s2M/ln5unIgyMJeaR5NywKtjApUvabMsq
         xcFmPEol8zvlNOdIqDS0AkLy+OuVygOx9Y2xKV01W10ivTJgErpom1V2ST8p1UTlKKEZ
         BF+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=7K6/bAXiZACU+AcpZ/C5eUfh/Yg28gh4yoaHVPZPY+M=;
        b=xE3hkxQmbYiUgZD9IVYPV6zAIqi782GmW5/U4z5avRqVtYOIcaUutM32vdRFdmTA5z
         nf5KRpLq0DakfbhYZFKxf9QGhV7UEQQD3b3ZzlYcvWVobWtHcK2OPjZfJ/s4bqr32Rx7
         5BYyZS4aVsluBwzsQ/NXQoiZF/dhsaYyyV6pMbZeiZuSwbuO6oPU0nzZUpEdRm8D3vgY
         NjFXA5Nu5hEIgfuMh1PM36QFBW5zpxhxLas+P2D/M+9BSocxFRP/wlRrADtFh0WHEptB
         bjPZof9TAbYSbHAHE31aWWagKV3A51jLWuSQu6bra0ujI+mP4Fy93N5NLnRdFeE/rDHs
         t14Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sAiltPmw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7K6/bAXiZACU+AcpZ/C5eUfh/Yg28gh4yoaHVPZPY+M=;
        b=Oap6bd3JxzweB/UJKGVM3+6KQiDsDHi63mJjubVkhqbxSCoIKc/2NZTv5XbybM0f3W
         r5y/bAIIvyO/MgHuBoGPhHWwmmVofHsC9O7enJG7uG7AvPerlZ4wOHvHbC40idWvGDw1
         qFp3doSEGm/Usn+RzGETv4HaUWCSs/by6T9j3Cp9P6SFn/PW9dPMAUAAblUfO6mGSQ6f
         L2wnY9AMAxDUBaXGJ2qBSJdIB3+VAZvk9t+hhA028R1+Is3t684ZWGiy32BmM8cDcC0C
         hHYgE8qaSI8QyyniimDT6f2amovBUb+L37QOJEKg59rDEyI3PmvZjtR6Xb2gGM2D8UiA
         9/Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7K6/bAXiZACU+AcpZ/C5eUfh/Yg28gh4yoaHVPZPY+M=;
        b=fLfHLEq2yOUWt8szlRsvVl7xV+1iQqEgzJhacZkPVxVlHUi0i0ZWOTj5MZW3wwgB7b
         I2SLT2oKQiyLqjztRjpI9QcK1XMPe8g9YGj5AcnsoIfS/IOD8HZXbXhTD/h7C9d9ywsh
         FCIiw0wvWUEcwrQjse0QoSH1gv4640JfRv6bthTrTNRjmXQH2DnUr7oAD3eRBhIhVbot
         qkqNMR1vClhoOUyqRR1sKtREKAh8VjmxVxDhThY3nq9dRDiQEDXyDQkFiugaGTDNLEVh
         MEYgkCuxq3gaEJQOQaRiktedAcBvsKD0R3paXxdsEAkGxZYxHiWxcKRvAMeWlz89au0w
         3Q/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iEYwPgamV//5IYYf0z5Xc8H7H37cm02BsUhKqZAmsXjnY5dDZ
	GEw6JiQ5lnTFdAR/M1CePKQ=
X-Google-Smtp-Source: ABdhPJxklthJ0v5UYFS/QiAfufXm7ILMRYjsGzvblBIAj2OpNdys5wVCXb4Zhz0qa4LiNcPrf37E6g==
X-Received: by 2002:aed:2123:: with SMTP id 32mr24689245qtc.325.1608689994462;
        Tue, 22 Dec 2020 18:19:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:498e:: with SMTP id t14ls10694787qvx.0.gmail; Tue, 22
 Dec 2020 18:19:54 -0800 (PST)
X-Received: by 2002:a0c:f74a:: with SMTP id e10mr25284525qvo.47.1608689994179;
        Tue, 22 Dec 2020 18:19:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608689994; cv=none;
        d=google.com; s=arc-20160816;
        b=GX4OUVw81PPuRQ8fjO2Ikprwu73ZkAaTPrn0FohoQvOPM4ah5hLXGeriK58HZxCHi+
         NBZ1/5xxucsqnyVKFbxMMrxxyNeHF7HDR5/Cp2aZKwUBvCoNAgBmJGYkKv4IVcSyuyJq
         u9xE7eyVWcUGx7Mf7oW3iEm6chIOF0w5cgLhFSSVw+q16p3a4pkRG9t/OFVCsPLnCvoh
         ZQAK2XEmwYbyS6WFGHLYh8FmdoFRcwQCsP6Wc00IT7rIA1Gu4PT+eL1NnJpfxc1dNm0/
         Rv7bqpIjgWXhfWXIKgeRYfh/noKUFeVKneAHunLFQz/Lc5mDaFlpZFUU5FfEo5+pEErV
         W4aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vqEmjS6UIlVXiJp0q9+BPit9wTxNMNOfd6LD5AISZa0=;
        b=09cQQFnZccNOFxdZlA1WFCoNJIxCpFO2lAtwd8Z3cxoYsp4r4Cx92RdZGqXXcYmvJb
         4JYcUR3CZG0WJAqh1YMuhNBW52jWBgyM3DQZrpx+Jmh8MXVFvuPKc7ucHbXtBdxyAxYH
         +3FY0AHY9laopj3cskgB/gxmLLjsWvpqqGomcgXocPRItP76Fo84QJ3yfYsDXQSDJs5y
         noVmLGclhO2O1mpc/1eRc6ywIZUe5ODJPz4/FPYj3LfXwGrudL77TpN09WZZHhuF2NM1
         Vgk1l4yugDeKxpE5dQvdQ9VJb8+CvY2ada3LozLaCiuV7QMoRYv/Ba/jzEDnVNjYFmx1
         1+1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sAiltPmw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f21si1931577qtx.5.2020.12.22.18.19.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Dec 2020 18:19:54 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 41B4122D73;
	Wed, 23 Dec 2020 02:19:52 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 077/130] x86/pci: Fix the function type for check_reserved_t
Date: Tue, 22 Dec 2020 21:17:20 -0500
Message-Id: <20201223021813.2791612-77-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223021813.2791612-1-sashal@kernel.org>
References: <20201223021813.2791612-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sAiltPmw;       spf=pass
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
index 6fa42e9c4e6fa..234998f196d4d 100644
--- a/arch/x86/pci/mmconfig-shared.c
+++ b/arch/x86/pci/mmconfig-shared.c
@@ -425,7 +425,7 @@ static acpi_status find_mboard_resource(acpi_handle handle, u32 lvl,
 	return AE_OK;
 }
 
-static bool is_acpi_reserved(u64 start, u64 end, unsigned not_used)
+static bool is_acpi_reserved(u64 start, u64 end, enum e820_type not_used)
 {
 	struct resource mcfg_res;
 
@@ -442,7 +442,7 @@ static bool is_acpi_reserved(u64 start, u64 end, unsigned not_used)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201223021813.2791612-77-sashal%40kernel.org.
