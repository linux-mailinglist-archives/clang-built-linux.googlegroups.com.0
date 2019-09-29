Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3WWYPWAKGQEBPVTNVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 97333C170B
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 19:35:43 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id t11sf25165908ioc.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 10:35:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569778542; cv=pass;
        d=google.com; s=arc-20160816;
        b=dVO4bt8lnnc5A8hx9iblG2R1zLG+6cfwDzDnIsCPkquDndv3T8b2mCUUqyqkYeDrnh
         +nMKRXb7p0HoBLyjAyaq2WaIwPrVxaxvC59B4ZA8nXKAxNjTQn8x9V5FMd++agygdBky
         VWu4SDcIFoZEPjd7ZBJmBqxZUUTVL/c8ambkVjTRTHmQdb02/dqoxZSHLOr58YYzL48c
         G+OHECqDV0YohT7J/H45FjKQGaCJie3MPifI8X7BEnwYilQKXPeKDYs2bOdQo4TdHjMM
         FGGRNQw7/Brbkw4LxqM+g6wxm0MSAoLxVdzEw+deKd6dlvnfqVcN9G6wzM28LBgxPaEB
         yI9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gRVU0Qg2V2zyeA0v1BE0K61wpw9eMVv0WwHNVK1fzck=;
        b=EDV7UfbtqVpTT0G5XzVifNVg/CfdnrfVT1BoMkEazO3OqxB4fQzlO2csuMBeSx1FDN
         dOutIeiRWseWbMpaM6VCDIyzmBtUhtLazebzvmWy3u8/lH9mPOHGWjsj2yZm96i6dZeq
         tZ4cuNAu4r4PHspFzMGUwip00vl9Kxj6a+hsPZjVFU6Uz7Eax9FkOWxCU9oN3ocKguBU
         o9UJQzdnpvu1DzNqzNl1M/ghx7TjK8aGzGHrYYk5EuFTe9AqmSDVKj1p4JNI0k1OARTz
         LO/J6MpFicrrkg6xU7AVJVe34SbP/es68lUh4JEYQGd7JeFvnerFoPa2qhS/KpoaMgOd
         YEyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C+equMCp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gRVU0Qg2V2zyeA0v1BE0K61wpw9eMVv0WwHNVK1fzck=;
        b=JncpuKo/LGAwGz6GsV6HlanV9Tj7DR+bCe5ZdwmdDcUbCbo6TZjE4WSbcwDLfelFNf
         +/3y67rm3mx3huVad8BFfZC8lRWZZy5uO7Y5KKm0V7o+4kM8jgXOkj5H32wtEEtgtG2H
         4MWKMUloXtRmTL3XI3I5xK0V02vmQvcZ+aUcpzU+zabz++iiFK9NBhC8IW13alP+Vm7b
         GbFn1Jq/5/o3RkSX79Y+SbwfPU7tywo/GbyE18aq55hfnh3QVa1gmziisNCJi1GZ5B6S
         gpeuIFZoTvTKZX25IcQ2fsvdg1P5xQpQpS0lzw0OK/RQVosMD59rFRlc2hAHTH0yVKbp
         pY3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gRVU0Qg2V2zyeA0v1BE0K61wpw9eMVv0WwHNVK1fzck=;
        b=ixy13SrNc+co/gLlunOgSPO13wZCf2YPPJNqx3v7adDZKOQiojyJqJIFUdxTxBSaPH
         Whjkt0mI9/a6iX6a58PonSh4/+KYyCvtk1baEukIBfJXwWCWIDHjsjO0K77bg1955VCT
         i4sQnD+0AqBaT6rj4GQ/DPWlMkRhZKDV+5ngSElnJNRIi5DyO2TX+RGyIQmvbDYXScjF
         TXzgw2vwL4DMlZFb8WdaEHXdXXn6pvDAPpQ0YDEhccIwyvstZjCSrm71Jaxu9Wt7Q3h+
         HqW4N7084FE9qsNLzLdzZmA/YiNaJ78dNqke3FIGsuAnxCXcboE69R4eI27Ex+yonBmE
         Iqug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVvfz9ZCTY06SL5PkSMCoI2LVwEnEEkZoggmmcoVjR4ju5FQOTe
	Xw5//zPL8VC9NdWgo1+izQs=
X-Google-Smtp-Source: APXvYqxBnN5j54jixoVMspcorW3Dwhb2izm8erWdlKHZqnTTn+NlnE/mVLOpvV3QLFiDXBvhtLCtcg==
X-Received: by 2002:a92:b752:: with SMTP id c18mr16658427ilm.42.1569778542252;
        Sun, 29 Sep 2019 10:35:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:e717:: with SMTP id b23ls1992839ioh.5.gmail; Sun, 29 Sep
 2019 10:35:42 -0700 (PDT)
X-Received: by 2002:a5e:8704:: with SMTP id y4mr13899860ioj.103.1569778541996;
        Sun, 29 Sep 2019 10:35:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569778541; cv=none;
        d=google.com; s=arc-20160816;
        b=laDFeVr5/VxUmoQrUx1Eq2uaDz0IGJtq3I5wacsegvV5IvfLWo4GgY12Bi9g67FPJX
         c3SnhX785vfXy6jUO3OItY9z3+A/ZYY6edq2x0f1cCLDJvwwMoykq4gl/r+cGdJVWrbQ
         e7u2Lccwj0gjrsS9FV/lBBi3a530V/+1Gv522yKW6UTsVJx8UmlHhDBG0suvr2BffkMQ
         2Km2qhOYSByGKgg3u0HALEw5eQTCQirjDI+srH2VPnnIgmZ/zoK3Y/MFBdezhgNxKbp/
         zklzIkmhFPvGqZu0JO2JKql/Yn0shkJHCk8rHTAX88DfNXmyOBwhc5WCpEcYlzT7fiha
         zl9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CgwL4hJCI5ee987j46Dkknf3HZ9Q98BVIvHBHDBJd00=;
        b=Nfv+j1XVTlCWAwjS5MwA+4TDT60c+u1sr44diYTkHzdD7kw4iTdio9P9Dvzhp5YyVW
         kaBRZPWUiQn3CdIjIeiXILX/G7MemV/bkmRZavmJFZOLPj+pWTEvSbi/GpNl0V2yZvBI
         yn+d/neHuGq1yhM87/1rQB8lzpSdcowF8kKPzt/I/uDRLJYns2eFz0O8GfRkEtxfUS+q
         /R2oBHJxns6zW1uS+shtqq7oxCmqcv1eeuFID28dS4vhSMGoHKdFBqsB+0xInTDpn17S
         /luMPJ1pUQIrefaEThAp9J8IbrQ69DU6qx74/L0pwazOSa8iu+R2obofXaIvFpKnWmdU
         KrdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C+equMCp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x3si550111iom.2.2019.09.29.10.35.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Sep 2019 10:35:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4DB8D2196E;
	Sun, 29 Sep 2019 17:35:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Paul Burton <paul.burton@mips.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	James Hogan <jhogan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.14 02/23] MIPS: tlbex: Explicitly cast _PAGE_NO_EXEC to a boolean
Date: Sun, 29 Sep 2019 13:35:12 -0400
Message-Id: <20190929173535.9744-2-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190929173535.9744-1-sashal@kernel.org>
References: <20190929173535.9744-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=C+equMCp;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit c59ae0a1055127dd3828a88e111a0db59b254104 ]

clang warns:

arch/mips/mm/tlbex.c:634:19: error: use of logical '&&' with constant
operand [-Werror,-Wconstant-logical-operand]
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                         ^  ~~~~~~~~~~~~~
arch/mips/mm/tlbex.c:634:19: note: use '&' for a bitwise operation
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                         ^~
                         &
arch/mips/mm/tlbex.c:634:19: note: remove constant to silence this
warning
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                        ~^~~~~~~~~~~~~~~~
1 error generated.

Explicitly cast this value to a boolean so that clang understands we
intend for this to be a non-zero value.

Fixes: 00bf1c691d08 ("MIPS: tlbex: Avoid placing software PTE bits in Entry* PFN fields")
Link: https://github.com/ClangBuiltLinux/linux/issues/609
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Paul Burton <paul.burton@mips.com>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/mm/tlbex.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/mm/tlbex.c b/arch/mips/mm/tlbex.c
index c2a6869418f77..dc495578d44d3 100644
--- a/arch/mips/mm/tlbex.c
+++ b/arch/mips/mm/tlbex.c
@@ -634,7 +634,7 @@ static __maybe_unused void build_convert_pte_to_entrylo(u32 **p,
 		return;
 	}
 
-	if (cpu_has_rixi && _PAGE_NO_EXEC) {
+	if (cpu_has_rixi && !!_PAGE_NO_EXEC) {
 		if (fill_includes_sw_bits) {
 			UASM_i_ROTR(p, reg, reg, ilog2(_PAGE_GLOBAL));
 		} else {
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190929173535.9744-2-sashal%40kernel.org.
