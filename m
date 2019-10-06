Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBI6N5DWAKGQEL24ZTWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B4FCD5AC
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Oct 2019 19:38:44 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id z128sf12507184qke.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Oct 2019 10:38:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570383523; cv=pass;
        d=google.com; s=arc-20160816;
        b=m5uDSui5GOqhZsGYRQDtRpINWGrKfZgOZ/zkn5z3Gmz4mbQc+2A02PhBbuh4RZqQ90
         O09ZSjuo7vJSAs8C0oxpIRmANR63uV8zc7AsBMdcqxpn4i9bXYx9G9ahRnztwVhWOk1e
         ST7OllUttLJrQsTqq4AftsZYQmABR401aLoLQRIxs9ACObmSqH9h6EIaNzZKg33ew9nb
         rLkyVnQWVFWHNmfRWbj1SpcoUNvxLqGLRUdw43xmn73/u5wPDNciYNhd7iQastt/C5Ts
         XGBRierbFVV/TFS3ffN4/00BoFIrKack0q14pXS78jS1thqTzyYiOJKDEUifQBmZt+nK
         gnaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=bLVBn/GGGvX96HJBEOhC3Eu9yikUvIb8LmXgAlSkdco=;
        b=zre5UhDGgwi8InXjUd7Hd19BaFWLELVyqcGNJSk63AGcd3/WDnc7Fsk+1DYCQwvkmY
         u2I/rr1D0gjitomaCYH7d7MOch6HXgAquJWbNtlHIMyVBEoNlQmVprJTE+avObLSR+mE
         z+N+UDvjinYRuf/PoaVzgyWW5ncXPwifTl806SLkQQFn/Z6fKmNz+TJMLvwd39Ph/Ksi
         Oxf2PViFrVpwMTQzUElhkSA46ARlonoz7182JIFOtX4Pj7+6FalFyUTfQvNxgGtRiIxC
         aIIIt0ZjT0PXd1UE2KFjiE/nFulpqLrfNng5Y19SsUafdRimElPk3s7uf8frjOvHH2Si
         fLSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z5WGwtLu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bLVBn/GGGvX96HJBEOhC3Eu9yikUvIb8LmXgAlSkdco=;
        b=ILFWcNxhT+fQgSGKYwGhBFy7azJciGHvgsAKhK8rIoXI1/gfgi/f/wFdUB7KbaBRwR
         V3wTO9khI0pI19H9GX7XmATOCbfbaNSjoHwKWkyGTbrg/iLjOdwUd4aFwCMH+iCrpjm0
         2QtjQn16QbYMPe5uva/mPdOO5/j0nraywBirvlPXmg7RVrcxeCAkcuoMllBVKgvMgEAE
         h0XcP8A0DZ8lwPxNeqJ9AlhoJWxGtYVHnDm+2vXT0TOmp5oHADQpCmtvl/xo3w6ZZT7q
         XzPUES7KglbsBy02zXB2Rpm8REIjjWKKI9+/E4ngpxW83Xj5dEE15DuYJ7DPDOxy9caN
         T8kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bLVBn/GGGvX96HJBEOhC3Eu9yikUvIb8LmXgAlSkdco=;
        b=HQQ2ImNF+4zQWKHbtQhhjr/BByAlkB/qDlAmoB8rp26IQ2WkzqTG1ceqishS0tpKOl
         LLI1dPjnLED0cyc7Xu3UH2mOfCu3xSkOVSaTjw5ZfR64WVtmYx6B4cWzqi8zr1HkoqY1
         ms24wHzWXhBeH20Lx8xGq5pav4cTAAiSeZpEWeIIGKuIvY2vsufXy3zoBVt5OgR/roFq
         tmWXmWWVo0abzTHY6rYy51CZ1LdjWk2IQ5HtZZ0F1sHs6wwR3a8g9ckuG1S4BnDv3+G4
         IX/o0E/De4vXZ3lsnUMksAagWSqbvZbRTWnZwL1DuYo4ecohwT7ARDAbh8lfSjbt8Rck
         QUGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVEfA3afinmxk5u3v4U664bzBqkazMMTw2HN0Q0g3n0kGo7mWUl
	V/46JV9mmw9skswQjeQpcq4=
X-Google-Smtp-Source: APXvYqxUj6uCU3x5xASJbb80eSg1i0oTb69hsicLaKQmQbSLEJrIzpkues+M/ilJ1evbXz4Ryu0otQ==
X-Received: by 2002:ac8:4990:: with SMTP id f16mr6057384qtq.149.1570383523281;
        Sun, 06 Oct 2019 10:38:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2c55:: with SMTP id e21ls3208895qta.1.gmail; Sun, 06 Oct
 2019 10:38:42 -0700 (PDT)
X-Received: by 2002:ac8:1bcb:: with SMTP id m11mr26640764qtk.122.1570383522547;
        Sun, 06 Oct 2019 10:38:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570383522; cv=none;
        d=google.com; s=arc-20160816;
        b=PKlrCdIYW6z3LnydDhmbVjURTQ8xV/1r8CnhLnEzB5WFfZTLRKMIGeH+EI9PNkT7uZ
         OPy4BLURJZqOGrsCgXBBSB/3sEPHkWKlhVaiUUJf0bv9x8uDMVoQ8hIcAWvdl2OUSTZ5
         kP8ag5z1wb1TQl3cIMWVXNz5fSGUAuST9yxhpNqhk4XTLmvzBdpAJplHFc2fqOhBdy3o
         ESb6fsFs1KimJF5IjPgG6GgcoFRkyMXuTR4xMO0kQXgtsvQOJqonOaGGG4Yk13plBYdZ
         0w9/DhvUEnjIyDxb1Vkb3zMgK3uIK5oETpIqyAjwL7MJlnzi/qS7c3V76NeXA40ifoog
         bJPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=SmxCHXBv/cxR7WY4Zwm0Qt4mXayD63rzMadCl3XrK/M=;
        b=Vk+H5/Egf0VeLsXF3TCv2k2DsyEyWLLeKsNCBCVp07tmDvUYigTUBN3SDbwhbcRmgb
         k7UeQoE+FddXax0Q7Wg4npeEphAAK+BO5jNYvbasX+g6L1rZmVojIkU5Z2zle6Yxl4ci
         Q9idF7tt4kJJ7qyNphBqDzaUinlOjD9DVOsUpw0w3bgB1xIXT63HLs5C+kv0QFhDRu3X
         1547gaizve7GulokavBfSKxTUDeSs/t5aLUO7u1/D3HPbUeWuY7iST5c//YKINeZ94gJ
         vBryJniPWC0hQCEXqk87S2qr2L727lN2WvN+6m2lN05HtV+F+CVOOD6I0YbaM8+fDwnD
         o0Hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z5WGwtLu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o13si579093qkj.4.2019.10.06.10.38.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 10:38:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F0F53214D9;
	Sun,  6 Oct 2019 17:38:40 +0000 (UTC)
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
Subject: [PATCH 5.2 092/137] MIPS: tlbex: Explicitly cast _PAGE_NO_EXEC to a boolean
Date: Sun,  6 Oct 2019 19:21:16 +0200
Message-Id: <20191006171216.522212342@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006171209.403038733@linuxfoundation.org>
References: <20191006171209.403038733@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=z5WGwtLu;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191006171216.522212342%40linuxfoundation.org.
