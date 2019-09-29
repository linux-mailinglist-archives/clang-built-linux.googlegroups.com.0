Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBSOVYPWAKGQERZI3QGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A78C1690
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 19:32:58 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id d26sf5560669vkl.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 10:32:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569778377; cv=pass;
        d=google.com; s=arc-20160816;
        b=KCc65L0RP1w44i2mlRHzwMmiMTlfEG6X7S5mF9uoljGJbsJ9a/PFkq8M7snZN3gcxB
         fuwzBk971YsD8GsMw26VTGQV/19bWXf+2xc7UuK+ocgxmtM73aCKZFMieg8w7cHHaoJT
         iLMFzMVZQ1HLB6/2oRCJK4kIoFHAXIoQQ3v4lYJpkXEP5VrY3mPlRRH3rBqWrTV3Dnjk
         Pu7jNrnH56lFDCNpqH+h882gZY4wiXfcS43vING8KJjGremLncjs+jBB7qRC474shZU5
         +Ig7DLRq1mMa4okfUarfGM7NJoilC2KYyynMicri7QvFyoRR8eDidEtAOqhxIsWXszel
         jjFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=56inN5aYHnLeTz3tymlt0/N1S/BCDmK3owZLh6RpcNk=;
        b=KLsy4xJbnnDDbhwAJGO8N80PAIpCvkF2K/m4KZ9voLUizkRW+qFy/v+Vs/p0ihIZ05
         2xvmFo503R+sEJtEJomVoPKGZFbb3//muZJBmHl4jcS9R3dl9fPgE1cqcWhxjunKtdK4
         VMEylCFNUa5ZuRGg6VYFbA0F44xusrH4DzdgVnChvgLFWUBsoLqfzdCYM/f9Nwg+Ejal
         pc2dSdNJ8ZG+PcFKdGx1FNqJBiuh98FSRiG0E/opJvLH7JY52ExsRNZYXrW88F50KKXj
         7OKjXmr2ME/krZ81woybiMEBvhSkqRF17gm2MWjxOpHVH01YpqjCAPP/jiruD7JRN5Mc
         Tagw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BPC9w0rU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=56inN5aYHnLeTz3tymlt0/N1S/BCDmK3owZLh6RpcNk=;
        b=adjPJaGJIDNN9HVXq7A1ZHwRfWdfqU8wTM81hT1z1LGu8+r6I7ZOo//iKP6JoFLPPh
         klWyNxOKw7EPLk9tKVpqACFlgl1uOYIfLedPzRTLGuHsilQfV4HaZp9qml3kR1rmFBiD
         GYJ1uusCUQ/n8QBGTlQk2Xok8jmHQVxr8EN2E/5q9oqHWf8LAXdjq7VKOp5x0taUD0+O
         gvKpYWIbFA7TsTj9QPxS/gqTodq0fZJ6arE8e4M+IN4xKkElqo4B++6xpvW+kFZ5wd+x
         wiEnXt6d3JH1l8n/kxgEAzqT6gqBvoJ6QYuFGTl4c7XuSZ+OxPeTaJeLSOWiWORvSU9j
         uEmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=56inN5aYHnLeTz3tymlt0/N1S/BCDmK3owZLh6RpcNk=;
        b=fT2iy7E+v9gTmI9WM7MYpKc6ntEBF206kTpS5xF0DqIpA9Q8/bgBh9YxZOOve+MVWH
         lKnMgJrgImgyoaruUIJMDuCNCz7+xxTR4gEC1m/+JDmnbjKzxv3FyrTFYfJMPPJ511Sd
         p9x7QgTZ3dYPpdOiB9lhs+aOgzVpHMiTp05+qIL+x0gAE5hdHSXnop3tlnnzYIjiztbC
         bel+Qnqt890eLrxhimA1hpvfdTOCvdaph5avsSL/bbDxSwZn4fnrSGOZNlQlBalQIcgo
         WRwFIkk03S2Csysr976wmwHtZiXB6zwGMmkeDWEbH4rXD3nfEVP3BS87YwEy3kAfWzqN
         Km7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXnxA9Ghx9fNlBetiEB/MsLq5GVZQikw0dPruN6Q2BmJ1JKO4/Q
	sYlf6x9A6TX0Zqou30Nas9w=
X-Google-Smtp-Source: APXvYqzQBTxma+OG9EnLncTN1IduWtuYOnv3rB23pt93xvrapwVe0bCKUsID3XOBNhdNgypONuxshw==
X-Received: by 2002:a1f:5f51:: with SMTP id t78mr3721955vkb.66.1569778377741;
        Sun, 29 Sep 2019 10:32:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7214:: with SMTP id u20ls613458uao.2.gmail; Sun, 29 Sep
 2019 10:32:57 -0700 (PDT)
X-Received: by 2002:ab0:4ea4:: with SMTP id l36mr6887640uah.37.1569778377356;
        Sun, 29 Sep 2019 10:32:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569778377; cv=none;
        d=google.com; s=arc-20160816;
        b=l/oeL5fGKSGJcMhlG+WLMPpJTvIBDD58G0GMcY9jLvr3h3+yZ2FljvEBM2TplnUkDZ
         h3rpjPskbhXIw7MSRXPAObASWhFy7c9RHWl6BfBcPts1jb2dIEpTS6yN+S/2IdSQaixg
         p35k5GodavUKmZ5Xk3+6cRWN1mv7JYU3GOUSo599x8QoOBc8udUGhLL3Ctb++1p6kOQM
         iC74wGy7HH0pK5hfHLjChU1KQqnItFyVlquW/+3PGzctSURLKOIQeG5OSB8BcCHEHeTk
         b2hRTh1XzaCEBQbBM9iAP+xTl+1EJIoYbFWmU1WBdO5duACJxKs5WmBKm+ef98QEZfsF
         dCsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SmxCHXBv/cxR7WY4Zwm0Qt4mXayD63rzMadCl3XrK/M=;
        b=kPZV7Lx0MCqr89Mj40ZV4lARzRyqK3wrlVUXK7b13vc1S0vK1CR2Nl0ggzjbAwzVDF
         vagidEXNKeRQamKTLfuo2AzhL7VTooPftQUqg/OY313tFPCnXcmyIcnUwyAHIvj6pl2D
         o65E88du8zwHUgSmZtrKZFDqX3x6rFwiBSA1+XJp6bFv2WxpLBXpxWbwas5INDCcL083
         4lFryPsmCkH41HbQzQfpuJZjTSGMwFuJB1R09Y7nLRU//8nEzm+d1CrAsP174zsZX0LB
         saAUH7QzHbZyLUPk8AB4lB7Qy5TniuCinpbmcJknLDiJvkNaWUVSVOo/IOqVkQaCWjGZ
         hRiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BPC9w0rU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 136si784592vkx.4.2019.09.29.10.32.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Sep 2019 10:32:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2A4802086A;
	Sun, 29 Sep 2019 17:32:55 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.2 04/42] MIPS: tlbex: Explicitly cast _PAGE_NO_EXEC to a boolean
Date: Sun, 29 Sep 2019 13:32:03 -0400
Message-Id: <20190929173244.8918-4-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190929173244.8918-1-sashal@kernel.org>
References: <20190929173244.8918-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BPC9w0rU;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190929173244.8918-4-sashal%40kernel.org.
