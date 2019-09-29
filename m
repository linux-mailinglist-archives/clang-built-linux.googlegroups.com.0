Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBKWWYPWAKGQEGXIRTDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id CB71EC16B1
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 19:34:35 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id r24sf4813981pgj.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 10:34:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569778474; cv=pass;
        d=google.com; s=arc-20160816;
        b=rB33/d4xPSsUwOOYACU2M42E2RzCOmrg3LxqWZkYevDZRgpuarPOq/R0bgwqj2koyS
         d/ww7KqW3Rz5GdffLLv3Yryl0aWjo45hR0fsxYktdmDSm66/BrR3sdjjFNT5N5h6O1wD
         AvDO7Bn/pYNr2QG5wFcojsHTAezIjhlg8S+9a7nlUNCdKHR7ipC3PaLroVnuBwX2PNkB
         XTjofoMh5MYzYXjmeOhJiNGTKuri3l6xWR5QQqx9u7XP9GnF0h+YtySFz1X/VdFif50P
         7xtO/eC7X948da3qU+5aFBT4E8Ueps81xXpfPk0uThnKUHNcS8l+Y1MuE3Q3Mytj0n7M
         FceA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XO6jbCTorvX+ypmHBK1qUAfePagTM37knnlQ6VJb4Yg=;
        b=QsF1GQUOeQqxwSa1QUB27KCxNBX1t8SFm83Izu41u6wW+RPWRX0/LkWVM66/0IvDoh
         5qOMbhR4jW3h7gYtVTFhISkExoL5RLD0TApr9gn3WEMjl/3ovPGkHqHVHr4hcrtQV11Y
         PilZdqpsi9LDLiqO/xPMSG+o/jOB+hYwLLQDAcBKI2nYew1waNLLBUAi9aAKUCcf/sR/
         4jQRDT2OU4xe/7MQGlM6i43SZi4tB/G28x03Yaq8cmHUSH4NgH781FNuIRdbUBc6/N7Z
         YqsNjxBOfC+e/WGa4F/5k75JoeKL3oXLv097Y3nJ62bSPc13UFIQHj0NF5mtwBwFqeI+
         lZ4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IBi0vIJV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XO6jbCTorvX+ypmHBK1qUAfePagTM37knnlQ6VJb4Yg=;
        b=XVAfX3Er9hW+V41CEaGCIlJ+oD4jNTowx5KzCOYrHHwvNqPt8hcF4UrSvEfpwV4N/I
         9ctqDOWlqINRvHnpqmOsqz5bWKrx6zRup8j55/MBJu9J4rt4ouL63BJzZ7D6nrIFrbv0
         B3dUiIrSde34Ayrx74TdNUB9xPWQx4P/WeTcwSf1OR2ULiTmuJAXdLR8kWHaMrtL9LaR
         ovvf4kD1poyoHdQX0iDiiTbUdFRjgscUKSusPnLpZNjHWZsV83xwfWnTVk4u/DXfxdCz
         540zW+i1bNYNSGJ2dXWW5NYbjyxh+jai4QjgkMK2YdIAUHQxdwTmcLld0/c8CDQ0GPAd
         TPQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XO6jbCTorvX+ypmHBK1qUAfePagTM37knnlQ6VJb4Yg=;
        b=qaJDs0QBDWVN3ueKn+2+z/EDRarApbLgae9VOd9dhP2BKeDV0y732r/AM/pamSjOBd
         gbiP3OGlKAhvj/fuCrrIprCz3yrbL+4B3H5Z3uwGDRUoORqVtOSfnmbyiUl/Q9OFvR4Y
         cYq4LLoq7+h+wwXudGAk6p09FWpM+kTyYvvZgqtk7HyOIgcwXES68mrJtYAZmLwQR2fQ
         6qZW/OT4qmV+iq0uaBCxj5u+zmXiMpHaymoG+d8FFwsGwgVrT7BF2M611wApcgNoWK+F
         3E0h9kcOqCE9FBaWqckwysNoVefugTCox3pQ6D5B0vk63YHJR/oCnBRYrFNEi2j0R606
         aI9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUWlAgNdtPXXJYzIbgesncInBPNPPfycr7h/tmpokGbMTtx/dHu
	2wVK93aZN3QTO9KWzD+nhe0=
X-Google-Smtp-Source: APXvYqyzCdhoP1gf9i0ONDu5fMMbZZnbS16vq9ZdsrtDnbeQk5N/RzHXUI/h4Pj5M41rEX283eHliA==
X-Received: by 2002:a63:5615:: with SMTP id k21mr297883pgb.323.1569778474406;
        Sun, 29 Sep 2019 10:34:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c086:: with SMTP id o6ls3093672pjs.4.canary-gmail;
 Sun, 29 Sep 2019 10:34:34 -0700 (PDT)
X-Received: by 2002:a17:90b:f15:: with SMTP id br21mr22461056pjb.101.1569778474107;
        Sun, 29 Sep 2019 10:34:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569778474; cv=none;
        d=google.com; s=arc-20160816;
        b=B/RQhVfdvWBTtvi2f0ByyODmYgGsXRGrvUlpA3J0EA+QeF6EmrAs8+R9zpol6VaWgu
         00gjZxR3kF93ABvpSUjZfh2FxHPHJIuxV33UaZKG7cMSSBVjjZ+4ZPm6DFETHpkk89hm
         8YWu/+ngaRxznCgYCUgJ+ZG81ilPL7wnHB4YVMiTelxtYEaq0rgChpkijK4g/JIjqctK
         nsg6e699ap9tB3HqnDPDJ+nzOmDVZkHeHcZGHCyphymfdKaNLsdFrcxW5WxSlbf/YCmu
         TCbUzdaAretSF+h8/gSh8LpA4vwYWvLfji6QSltI9pl3amzzmA8PwLl4+NrSr2jsMgKI
         pZiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jNdK0+VGQx2WDfvhmMun0ab1+yG+UO1uT/W2TXV9q90=;
        b=g9nLRFC9iVqPSr0BzLY/pTf4wRuAwEkG/NFaM6GpeJUt7VYwS/Wma9FtDnKB+sNoVg
         bIRIf22nKBdYGI5yl83yFTFVIIPa2T5B82hZNEdd1x4dCaq8BIyUfyOQ2JwiW2+Cn2UV
         hSczeE2KKOAURJ/oq7Itmjx65VDeZzqym5GwNVGqzNO0NndrtsBBYYfaotO75LUsQmtm
         NZvLhZBOXyhHlPL9EHVmeYuq+TD1VoUyZIVi7nFpxpxHbAo1WiYlfeU1/N7HwBKHh5+o
         YiG0CvsJ7rQC38XFl1Iekbo9vZWKRHsgbPpv6JOme1bYGt785EC3EOhIghuL7kxMY1Q6
         Ln7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IBi0vIJV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d5si136149pls.5.2019.09.29.10.34.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Sep 2019 10:34:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CBAE121BE5;
	Sun, 29 Sep 2019 17:34:32 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 03/33] MIPS: tlbex: Explicitly cast _PAGE_NO_EXEC to a boolean
Date: Sun, 29 Sep 2019 13:33:51 -0400
Message-Id: <20190929173424.9361-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190929173424.9361-1-sashal@kernel.org>
References: <20190929173424.9361-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=IBi0vIJV;       spf=pass
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
index 8c4fda52b91dc..355f8eadb1cd2 100644
--- a/arch/mips/mm/tlbex.c
+++ b/arch/mips/mm/tlbex.c
@@ -630,7 +630,7 @@ static __maybe_unused void build_convert_pte_to_entrylo(u32 **p,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190929173424.9361-3-sashal%40kernel.org.
