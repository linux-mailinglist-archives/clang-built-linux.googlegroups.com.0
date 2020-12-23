Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBVOTRL7QKGQEDDFHQNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D632E125A
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 03:22:14 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id z1sf20275022ybg.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 18:22:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608690133; cv=pass;
        d=google.com; s=arc-20160816;
        b=lhISMmfEuLgQc494wq7a40Dn/B4E/62uSbyywa6Jb+I4P8+rqcjKWMMblUbHKRGQg5
         BmQAkRVmXAbwQQKG/HoU+q46nXUM44dbXN5n2+YOY8dN1fxQWUKl6DwBxk4KVEZR0tLn
         /nqgDnEQqHw23VTiK6PPoeIkniFUJclPDcW5OnpgPdHqP97A7HA5dBmKO20yFVsJ9CP0
         nFsp6iiRlcmnXWC+eY3HASDqpFihKNf8XoBwu6MsR8GHsDQZgdA6k5yTgMKzdNZK+rL/
         7pE4jJCx+pTUC/ycnOaSuosM/55GwQtlDc4IaI2ZYEVHjN1w0JbIp6T/bBwfguCv5PB0
         tDWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CQ1aPrC8a1fviFlhcGNSf/UMnTXD8jQRhr6G8UNZQp4=;
        b=ckt7Oe4IdDuOv1wIWA+MJuDdcSJnCT5xAwUBQ0adJFIZMbA+zELaUi61OJoD/+c/7r
         5jJwHu/0O5fEdsK6T/huXN4PcRqyCftVYEk3TZve+BnDSI1vKj8kbZbsf10xnrnwsRBO
         0QLRTGneh/O+x2zUrpNXa8h63arveMvNf6qsr0ji5aG8+NRK9vroobUMOW2ekO+jynd2
         2ZiqVKDImTFjHzbws7qhJEgwGcArL1zHvrGmBdV97nfnaBEqzt5su3o1gF/6aTS9iPnY
         uNJsQsgJNX5Q0lYqREuvNN7L0b4NUtKNrAFiI21kIAgd21G04joHHK6m1aCuV04bpVf1
         PgwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="CDq3h/Ob";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CQ1aPrC8a1fviFlhcGNSf/UMnTXD8jQRhr6G8UNZQp4=;
        b=DGRuIRTLdCkndvWj8aKG8xwx1xNfS/Op1mt9mmqjS74nfYCmHjjSKz7dvkZzaMUASR
         LTE/ytMiLm5Ibp9/ljIo+oSjlP9fFWPPf3XdCROOd5yjuvOobDc0jLlaNtkWmcV6fhlw
         tgI6X4wKblU9yrO3+xbnSL8F3dcn5aDmvYRfoM0Z/DIBzqw8pmGBZWz5wHdtI2w6Svti
         SXaK7rDYtm3Cnm4PKozGLJsfa3r/vdi+ye4n0exeURbzZ0MJ6uBffElclMpyj6rmJS7T
         CmfWZqRD6GYZqv3JBpNPqZgtgO61R7sIdIjLGZe6mBh3kngmUP+YVwtWel8fmpzwdoeO
         h0xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CQ1aPrC8a1fviFlhcGNSf/UMnTXD8jQRhr6G8UNZQp4=;
        b=Ba5nmzkqy1Rnt24j3YuXraBfwCWjAoZEZbYWJommvg334tRqTkhkVsWBqkAMV+cn9r
         Y/Z30A0Ro93R7EWWSx5SQSb/j8/y/X0FV69osQVqH1MfaZnTaUNnBoKheaj5JhVyevc1
         VdOM0vw37Q8ITiJRPdOe3OIP0c4yN91ItLC5gT6j7CQTgIBB/WHFyyjxYz29E6lHbm8R
         N0fL82IDv3ZRce9YCpfEGcV78+RRFwlnVFdPJz2vu/obtz1sADwG1ubDGD08DUPZEVbx
         FyMm7JBuu4HNHp3IdA8PlU039vHVfXKPrE27FfUZ6sMhfBApLn1KFBuiZ8Avew/7vLRi
         Epyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oeLpu4me80/SqvUbZwLzveemyKB2dyTwjynmrEz0nSqFmx3RL
	Zfmv6ZdoFzX/Ze/vY4N79P4=
X-Google-Smtp-Source: ABdhPJzkGyEit+6Aq0uf1gRvpWd0EmF1dI6NDXQkWroguD5tL/uxKyZL/jfu+hmAFSnHrSaW60a9uA==
X-Received: by 2002:a25:7108:: with SMTP id m8mr20417446ybc.209.1608690133220;
        Tue, 22 Dec 2020 18:22:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e407:: with SMTP id b7ls5029057ybh.6.gmail; Tue, 22 Dec
 2020 18:22:12 -0800 (PST)
X-Received: by 2002:a25:ab30:: with SMTP id u45mr32911486ybi.516.1608690132813;
        Tue, 22 Dec 2020 18:22:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608690132; cv=none;
        d=google.com; s=arc-20160816;
        b=vtCi1ibA3gwCFbMYBCYHgHtH/UfJQn6c9HlzuK8Vlxr/RhramoTlUMipjR890ahEuN
         DMJEkYfDnOlFBBkgYmuM95ykkc2PW0fJGQDQJqXp2Cy24aspUMzSgCWB41U9cXuNHmSW
         0uoBeXNVP66aQ7TcI7RmdmDkbe4hz3cmIfB3ue3m5Xkeu6ABi2jUosc3JaStskSonPLL
         Azkg5ZaoAJ4osTAsZ/cm1qD6rPtOaCXE8bpiWSlb8QmfNZOFqK/4a+26WBSsZk/qIZvE
         YDGK7w17G6BqTg/iBj2csLCMmxpFaY11vmLwSjpz7spqd2z9jRbfTxoYC/SWjtLO50Xz
         NhHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rvCVhGzKFu1GR1VEdNATmTOizvA8CdICSS+PEZzXGJE=;
        b=M6P68UKqUzROxsHfo6+zSal9pSOtuv85QpiDKib+iiTsVEWWD2K6WEfWSzNmiJKlgR
         A7ApyBRHenu3B1bCwyqVig6ZmQ1ij8yRxdgXyoeWw38kUQjyv96LPx5KBZoLiM8wB9LH
         6reMCEUYpKeuv4TpOLSX+jLLAV6v1a6Xi5h1Gs55XXVleFmnKDJ0C1zwQyCyGSREb6lO
         TR9DM1EtuoA2RtlajZNmGLb5BBkJ6gYl7EN4rqsRQNJMLkljcpEaaC0QuxM597brsSBk
         hlOjMUZHOcl4V0ewy1iMneZwV//JTyD0hAu//juKoW8ddhlpSqkFxDUoScBXZmaCkSGi
         PrUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="CDq3h/Ob";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s187si2302969ybc.2.2020.12.22.18.22.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Dec 2020 18:22:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id ED37422A99;
	Wed, 23 Dec 2020 02:22:10 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 55/87] x86/pci: Fix the function type for check_reserved_t
Date: Tue, 22 Dec 2020 21:20:31 -0500
Message-Id: <20201223022103.2792705-55-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223022103.2792705-1-sashal@kernel.org>
References: <20201223022103.2792705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="CDq3h/Ob";       spf=pass
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
index 7389db538c304..8fbb9676e56cf 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201223022103.2792705-55-sashal%40kernel.org.
