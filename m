Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBIOP5DWAKGQELGWCIIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F2DCD603
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Oct 2019 19:42:58 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id e13sf12760598qto.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Oct 2019 10:42:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570383777; cv=pass;
        d=google.com; s=arc-20160816;
        b=r/0FAXL5nr77j7wce7WMJMin6Qkrn0Zax80fbs4UYG7YfPr6L9glbOn66OE2VUyOCS
         NgmlLNCFO1+uzCPxSGfEKnVZEl8P0lkzEtrZGxthhLle8z5oy/Og6lOqs2CL2rORbkKh
         NUIfGF1KHO0H9bXId4TYDfcjtvMIc32RSHMWBL2votiwOaMdEr/ibvzEtmnYd6PQziGP
         +E85N49JjarVPNVpwGT72l0LdheHM2iZtVw7cbk+ErGVN8FRFIavLYOX2fetJ/pNvII9
         YK0g+miXMxvtpLhEXwgZjVni/bfPWnF2t7AA82SG4xGTK6I6u7cD9xaDiSPP2oNUc0vK
         fX0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=QeJyN/GJZOg54OOtxOJT7Vc0AqwNwDEviqYY2N5FDkk=;
        b=i4UfXStdxOk4t+HGxrpJUNCyoaWiPCXJUpxZm8TEGqbeCYrVeqpVjxaTJTMbXISnpC
         yvdJpQxBZ5LuVUNWkIrbqYQg2r2cuezhQ1N3uuRy0SYS+YQi3kA3iUxvD0YmmmVbgLSt
         yck08OkqfnfWCqXEPp2cRvxfYJgS5FO/cupGl2WweJiVFlYivgGp3qWQcf1SQTEQFDZH
         p7BgD82eiyQEV8OfcVQtHpMb9q7MflD2DYxrXskRKmPUcME3J3pRsrjBcKchH9jtyvfq
         EmjJ/foQwzOP2FQw2FyakULGCwt3JUJ/qDwAPWsYnFQfSP4xWpoMwY3jVq+z0aU90z6J
         jdFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BYlGy27d;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QeJyN/GJZOg54OOtxOJT7Vc0AqwNwDEviqYY2N5FDkk=;
        b=IWqA/CdAmn3kbN4U8IeA2GhiD0HTWqiqwbB23LSfppe5iQRjht+R8jHDbOT96G3MCw
         zREhO14gTSaUYbGlxkJ4rAzEmF2LdQNbUYNOCURHpXOX4UEbwNlidccXlxPtlISUUlKk
         QZ62gDuJUDyIxId2nyvtTEK4HHmZbYloqjJ1ALqIIpTG6o0WxcOFMELEwwbQYye32Wvp
         rRYlMDusQtYvxfyYHKkr384sza2En3OeH4zDEsAl3McKkkAQpjLhio0UkzJmN7LCL0k6
         2tPRPdHaknxAIGz5xHsM5w6NntUGgBOC1VLZJiw8I2r4AhZDvY++B4Huzr5Y+Tbrdu4S
         UQoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QeJyN/GJZOg54OOtxOJT7Vc0AqwNwDEviqYY2N5FDkk=;
        b=MEgImygr1/huHEVk+frny49lLe5r1mtYr+1mEjiCqDHK77LO/UV1xZpmn4ZPLTILeU
         3t+qje1C7FtzsY5vBXGlqLO5PJ/IYyt3XAS+kyKmN0na2zwRofOqb501EmfDIX5MmSvU
         rOzYoj2eO6YGNNmojBD1No4sHxkbGtMLoAdEHjHWlxH6i9dXB7hYArIX99GXl9iL6Cug
         rVLWnuvuA6WIjHXg6yS4wqE/yrqZsaX52SGn5WSoICz3qWyxdkSYvZK36vBthr5qQIiV
         eca5tXEQlTXlzqq1PAr8vn/kQ/vXb9SNjHpykxZoIll8EbZuFhto3c4voHJgtfyNOosi
         mR6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVg1qBYtrQT/NGcuA1hiyobcwRQiFwkDvOzytBICktcPwKlnoGv
	aU153+bYsCCek/WyOslPO1s=
X-Google-Smtp-Source: APXvYqxmCPsY8D8Ca+CqsUfc5C1ZW3/IsBZkfxFv+/Y65Sd5LWm4+JxWMR+IcRZWGKXadlQ/f6rptw==
X-Received: by 2002:a37:9544:: with SMTP id x65mr20907281qkd.100.1570383777477;
        Sun, 06 Oct 2019 10:42:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2e06:: with SMTP id u6ls3661961qkh.5.gmail; Sun, 06 Oct
 2019 10:42:57 -0700 (PDT)
X-Received: by 2002:a05:620a:249:: with SMTP id q9mr20164101qkn.491.1570383777186;
        Sun, 06 Oct 2019 10:42:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570383777; cv=none;
        d=google.com; s=arc-20160816;
        b=VFvhFO4p7Jzm7OejF2FB+za8btlg4s5uvdJ8CqpZxR16AP6lZyVDLHNj++cZMY1KIh
         KIT6ahyCW8hDO0adXIW4Qf9Xa5DoPfL0A96y9w9XT9zHjVZ+KbBrHdtWQnbkLf4DvJvq
         vHCbi4bq9oWyw4K7V7T4sHcUIlk+JQ9bNIlU8HimkQQjs0gw7m3qsqgs36Ryo9jvtSmj
         VuZi6VQ4yAJ1pcNk96GVf2xxLgjeUBAlzo6ZSudldbbAlkfZklUwUbWEMY/Vkaixn4tD
         dz4AMfHruXFlTcE6oTtb5T5SYQ8f3kuztUFUjfvqtl7TlVU0idoGc+DAYT/mvDfYq8CB
         uykg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=SmxCHXBv/cxR7WY4Zwm0Qt4mXayD63rzMadCl3XrK/M=;
        b=X+ou3NdthzvBHjXAiY/EAH6jdcVh7YpNehESeTeAvolYf9JtSwkS24cVx6gpSEL85G
         y6nC6VtTwfU9FrmnVzgthm3qqx508NQVQKodFzGa8uUEmr3ior5ZnULO0Xl3OIXmfTIP
         UUOlfkvrzm2bbdR6QGIp1tXVUUjvk3ixVtRPDtJLrGf4n4i6a42qAsJMHNCfDPWgwRvB
         Z2p4XXtk4iru8q0YIxE9TAvP2rotjepzVTufbXnhBfkP3LO/v4rHS0ZWFnkuxYB1yaP7
         NhOylwujU40vVzRdaqqRovnq0p1g5Dmii+0RPz6aIFVuYKoNDGQW1QnHUzbnte29w8aY
         3nDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BYlGy27d;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h4si387030qkm.2.2019.10.06.10.42.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 10:42:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9B4822133F;
	Sun,  6 Oct 2019 17:42:55 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Paul Burton <paul.burton@mips.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	James Hogan <jhogan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.3 084/166] MIPS: tlbex: Explicitly cast _PAGE_NO_EXEC to a boolean
Date: Sun,  6 Oct 2019 19:20:50 +0200
Message-Id: <20191006171220.578235842@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006171212.850660298@linuxfoundation.org>
References: <20191006171212.850660298@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BYlGy27d;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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
index 144ceb0fba88f..bece1264d1c5a 100644
--- a/arch/mips/mm/tlbex.c
+++ b/arch/mips/mm/tlbex.c
@@ -631,7 +631,7 @@ static __maybe_unused void build_convert_pte_to_entrylo(u32 **p,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191006171220.578235842%40linuxfoundation.org.
