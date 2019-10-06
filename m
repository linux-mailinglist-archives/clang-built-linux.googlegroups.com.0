Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBFWJ5DWAKGQEUEOKSWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC48CD4C0
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Oct 2019 19:29:59 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id i2sf23038969ioo.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Oct 2019 10:29:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570382998; cv=pass;
        d=google.com; s=arc-20160816;
        b=lDvrJG8rxfEaCbMnXiFaZvUcC0yTTOrtMKgbavkgUNpeDTZg8cr5GxiiW2aXE6eQjN
         Y5+iySx6pv6Olk6VU1pkIR4mbvW+EdlQuOpyVemHZTEPNYAxVQM+LvwltNRMn/WCgOu7
         4LSZf+vH2B3WgIekMFkXW+G8jlt+UgYxoRTFEy8xcwrXfAn8hrwTdjvU35s89NFhERmb
         6bhDZRr9GMCkeSWbS8s79kGg9/NZPHT+/ZLEujFxZaofzTErU72OH9KzoQLF9TjTTfms
         DpqI+ne9xIfcQ3HPfNBf9FFl5VCVDEy/dn1XXKvqHbPwy4fR2DJQ9XdCi2B3YrRmFQSA
         Aajw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=tRPdC1wvO1asgZdATEfupyro8WLUvja4x1GQFqGN9vw=;
        b=mb++piigVxbeorUZt62ehdmViyH853aPzYYpZvMwmRQ/Rvc9W8Xf31aGYk6VDgV69B
         zrmSz2KTxbUER/Hdt8BILdLxWqK8GJjHZcSoe62jJp5WhTMp8HE+Ufi4omk1LsJ2ndZf
         fhEEx2WGD11b89ed7hu12KUCSC/ihRo2x2H7GTKZPdadil3HSi40xe/KUAjX+/qXoc2S
         6GB3MTqLs6NQKK+XBJVZRO2Ynj4R8PJXTAqm9vjXRk/gLxHc0v+anu4voM2UuUYW3GFu
         9SPVhHORVS/LXBLJgqG2yFsYlJNYbzoe/r78QnPzKrx9R3fRaKTYWfUzW+B5CunKCfxT
         ZF7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=l54CGCha;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tRPdC1wvO1asgZdATEfupyro8WLUvja4x1GQFqGN9vw=;
        b=fTi8n6hQxnMjmSs+l3XQ1iSb67wILf352GKEhSy7oiXoTw4Ce3S3pvivifKdfMZj1s
         kEiN9YaCg5t9dY34rWY2dKtQ5x5wIt56/sKzNS/tMUPv6dlaKLO0qZd+WvHT0tFyjolu
         Oain5/nKpUgDBhbH7GmTyXprQDar2HvvfAhpFtEqNaUHeY/Xke30hibER/h76q4X8/z5
         SJP5x46Refg+ja03MCcN+ySNeyTdy3BRdi4odulxERgwLvbypUNuuP5fIor4HcfUZ8Qm
         geCW6Uw6nOziMBR+JrGbp8koCpv2wX2+QEmmIvFqMLY5i0aqDSzqkKRnpcXYyXm01QvI
         lcOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tRPdC1wvO1asgZdATEfupyro8WLUvja4x1GQFqGN9vw=;
        b=bTiuQGBXej+DM8b+fLITzvmxwyBvo5YiMPZDhd8vGUXse+cFv11ganbS7zhfXPj33r
         BFJolm0glFF+Xlg8Qxbh/DrDK+coLZSIBfxkqS2rT7mhdF+k0z1R5tV5dF89IExG/rn4
         ju+zH+GylWm5xFRF5RjEn2u0DC/YHEDGEfy9z4uKIGJa3j3wqOz6wcNaK9g0vY3lAbmp
         QBhkgiYLRBQ8O1TX/VXl9z8NBN3rpBTsFT3fHCR7nL19WaMBcZx26Z1AFpRJxwXvpkmt
         tHR8Z8wnfFHNNmz4QMPdrh8hSGlL/z2747W4sA3/V+22qbDuIHG7C3vGzhsA0KSxxj1x
         Wz5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV/9G9cEw+vgV3AiZm6UnVznmsaWMt1iFXEHJDGyoiE+TP2mbrw
	n6+3WL4n1S5TEWF3uSlRMk8=
X-Google-Smtp-Source: APXvYqzLvgpB9OoLNgefKdnQVifFDfff4udkQfB8iQQ598/RhpwjskVi2e1fuQv2sB9PXrXJeubfeA==
X-Received: by 2002:a92:cecc:: with SMTP id z12mr26858524ilq.293.1570382998645;
        Sun, 06 Oct 2019 10:29:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:385a:: with SMTP id f87ls3676327ila.14.gmail; Sun, 06
 Oct 2019 10:29:58 -0700 (PDT)
X-Received: by 2002:a92:7e86:: with SMTP id q6mr24529876ill.61.1570382998272;
        Sun, 06 Oct 2019 10:29:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570382998; cv=none;
        d=google.com; s=arc-20160816;
        b=umTSNdlpSbyBX1nc5e/525YcFwsoxM/61JoqkaBTBeeyggD19rg8PhesFFhjcewwN2
         LneLKe5YjrDJFYq+QU6BXzpCcBFZLyHqco0be1OnzuCu38UP3HSwbSG01XX59xxLUMD/
         Ysqu+d5ignEisogE2Ds7dL/AAoDUl0YbzlKzvor1gsdKmtPlaaiIV+ElexE5ZA5oLHUv
         TyF/i6m2sYgjR0AH0uxd3iJtPgx+337KHrU/hUfgcmapaxkSNKhzr2SDKb4SfLijftGI
         f7xr0RfU2kB841BKdJ+n0cNed51OCaeDDwWtA7Sm84rwfSGlMDs56i0AHbsUPW++jZAH
         SwZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=jNdK0+VGQx2WDfvhmMun0ab1+yG+UO1uT/W2TXV9q90=;
        b=X0ANNt8Sk4rpQe+dinMoOssKiHVCy8bndJ5pWtAaSBduxJe2rotxmm8ZER2MTNl/6A
         qE7lVSi/QrtThx5Ji13EIHBnUXY1Bx0cwvpHSUQITtCjK2An0Y/z/Yc7Kk2hp6FTl/4m
         b13YE03XYJxA+nBxSjU0JrSZztIj/h33THVWEk4MKIgbu/WII1tMObugfyrOfUD4PapS
         Jz8pz1h2ifClGxCNIiKjAx9zlN72ZXJJZYkUnSCRxWvymu+iA3vKl0z/ce2tAkLEgAz/
         TOHeYa3awlDu44coamtLTTXgktAZ6qNEnreOO+Qnh2aaSxWIn+CslKI0qDUlo+zqJEtJ
         0+zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=l54CGCha;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i8si632650ilq.4.2019.10.06.10.29.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 10:29:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DED2421479;
	Sun,  6 Oct 2019 17:29:56 +0000 (UTC)
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
Subject: [PATCH 4.19 049/106] MIPS: tlbex: Explicitly cast _PAGE_NO_EXEC to a boolean
Date: Sun,  6 Oct 2019 19:20:55 +0200
Message-Id: <20191006171144.326519243@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006171124.641144086@linuxfoundation.org>
References: <20191006171124.641144086@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=l54CGCha;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191006171144.326519243%40linuxfoundation.org.
