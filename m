Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBIHTUWJQMGQECCSP2NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD46511C81
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Apr 2022 19:13:06 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id y141-20020a626493000000b0050d8c0745a3sf524539pfb.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Apr 2022 10:13:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651079585; cv=pass;
        d=google.com; s=arc-20160816;
        b=I/WTQRsYkEapQWieAM6RhVgxzNnfKJfPwUdD07ZeKlUusRbaYlKjqRxLCnDpB4DrLz
         RYNV9rHRgALcxG6F40UeEIV2GUb89T2GVi4PCMecWKdMhz15+g8SdjPpiCm7VHGcW/bh
         6FWW2fpAIp34Mw8o7j276QsVF45AMNC4JPqp2O0RbfaMcszYWJz5olFBKlXbxjwbCpy3
         9QJTy2uzXZUeDDEe3xGu2qhm/EdiIVj675iKWclIEcjCaIv1diiaguzQmcQQNT3e8aXO
         0+q9m1gTmIGG6NWY5ujmbs1IMc4PazyYD6OWpVJZCIdvur6B14UuQ06WU2TZ176IkbGR
         6oFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IMuQqn+khH/6dcV2NBeUliig+X1PAabzjHB5QCYdRQM=;
        b=G6bxWN0HqXY6C4vR84VeV1h4uqMjp3ZbkmKN3gVJ3wSOJd/4/HsrbnH+f+NZ71wfMX
         cNI4gseyryeGpGztH180RnV7E8IMNF+x2iVcIA3B4ra6UGmGHAhD0+9dyefsYzKAKDZ+
         vRsvObWiuqNGb112y4X+e0Fc8epCoBJTQaNrZbbJQ4x/4acbwSK1GbBizRVFkP9fLyPz
         5PSycQJviQlvyF6tEjNZp8QBzDi0iV2fOxWuKfMZV+yBhrcQ5NXaAqKyL5fqdNkdTXiJ
         anpqDv0JEVDW21b6PLX03/EB0S7hM6Qx8N8aEkujYu8GY6JRL80W+2QGj5kHqMXogGJC
         CSwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mI404qdy;
       spf=pass (google.com: domain of ardb@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IMuQqn+khH/6dcV2NBeUliig+X1PAabzjHB5QCYdRQM=;
        b=nmXxhsN2F8VPj4ewmX1RhP2i4sgx9xW8ZTQRGv1V5zojQCtWU1wL5xbt51HqDMJrDd
         98FFgizGI9i3dzwY3TCUv4hMG1WzpmXQHEEVE/Qe6nLFcLhUj603dberk/pWvz7LTAkM
         7lz/VYs59rBM93kzWPjH84lk2+ButguDTjiNMlbV7Xk+hDtfLz3ahchcNvWkjAaJxrTa
         x/lauuZbd1TWF8ze5HGZhArxjFxNLJ/bqdNPUCcFYhMvrfOTlW555TsO1bxkQgg6dPPQ
         uorj2nZ+pttdOkcU5rO+bHj+1gIYb4R40BV08KpU4rUnfdjYAFHJmTQWaEHRJDC/Xdpx
         oDVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IMuQqn+khH/6dcV2NBeUliig+X1PAabzjHB5QCYdRQM=;
        b=4qlDE9K5br4vpshFPH/VIVRuqomkzOVj0BD2DVI0pDVlKeDXa/jzzt0Dcwi6aLS6ab
         JUFFkMbW2k4Jch0TxLwa0kLLLjALdjrY9B7y/+yyD4Cwlg1FmZEfrFrvXuOLlHc4FxRf
         EXt51PmTMB6hSuHyysHbQJ585Hj3UxWLHSXJXndsGK5wQIpMdlyxAa/NOS12G8eZOsH0
         ZC3OKgYC3Wi4wbUPswsdmEeKcbkUlNJYhHiAjwq7lxrt1d8gR47nVCeLg+dPjFDDkvbG
         wuI0UmKiV2KS/L9JpRX26JhCD9NZAOLDwZwVql5VUSEHC4XS6NokbQB/5TTwabmUesN1
         mdYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308TN9YEWm6/01hqdbKcTgZmbaGRIB997O/KtBOKoDsaO9r6M7f
	5gk8jXDyQO2VTCxUcV57f7I=
X-Google-Smtp-Source: ABdhPJzdXI6EjtRIZLe8vGkgnkeD0jpXawSxcOLcmuvFh5I43RBi3ir41dicn90CjaLa2ASOvHE6oQ==
X-Received: by 2002:a05:6a02:112:b0:3a9:f17d:73fc with SMTP id bg18-20020a056a02011200b003a9f17d73fcmr24667995pgb.17.1651079584916;
        Wed, 27 Apr 2022 10:13:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:82d4:0:b0:4fb:1450:22b1 with SMTP id f20-20020aa782d4000000b004fb145022b1ls8188339pfn.6.gmail;
 Wed, 27 Apr 2022 10:13:04 -0700 (PDT)
X-Received: by 2002:a05:6a00:26ca:b0:50a:6ac7:5003 with SMTP id p10-20020a056a0026ca00b0050a6ac75003mr30486145pfw.85.1651079584122;
        Wed, 27 Apr 2022 10:13:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651079584; cv=none;
        d=google.com; s=arc-20160816;
        b=kE8wXg54Ij0Z87KDpspjgVFwMC1oUMAdKn+SLMR/vCBaj7UcfIDXpj21Wy3SpWFQ86
         7HZIBvoisP9YYgaZUqDWBbJFL2a2vanXDvT0SD2oH98MLHTHS+5kQjsNgSqjjWwqiFdf
         pUqNw1aOlRIorL0a8zTJvyt+4hLeq/qnwMPkIgT2w/ubRgUfvHqgtVltoMx64/Rf6RdU
         rpzbrDDtHPndtCbK2QAbyb/039cq0A2/Qf91DolcTdvSIe44AA7ksK8rjnZhDtSTCAaf
         HMoGXua/dblBEPpMrx+W8adEz4wvsEnH34QobXPZ9odyhFSAC84ACe2RxaZdZB/alE/o
         sRlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kmU6an1276ymuxRSL9MNBjG4w1V3Ai0f8XSd8JnvK3U=;
        b=bIdWNkAbEcdtI1q0b6OBxuvGJ2WBg93BTLSuSd/uMRUX1KYjkb6JRNeYD9c/4nbJfj
         jVEQQ364qZ+bI2bslbLeDnPYgMsnFo3DJg4hBBq+4pDVhy5/eoHGtUiY7hMy65XNkQeV
         0DDHf+UeMlDEnjs/O8ZXAV6v/uHDyjhQGm6D+HYQoImIvXKAhZdzgTpYuM8rfQmpjKbL
         LWKIJURG5N6/Zjf7uIsEXKSzrSPQn43fc318hTwMyEXIsEACmsz6gM5pL9E+yCfDMllL
         qtbY1I0tOo7lxHRB7MxvS+YZTpoZIRBfchHTzM0rsPbQ982EJe/U2/EgPXIGQFFly7nL
         txsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mI404qdy;
       spf=pass (google.com: domain of ardb@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id s48-20020a056a001c7000b0050d44c10b11si134693pfw.3.2022.04.27.10.13.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Apr 2022 10:13:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 93BB061E18;
	Wed, 27 Apr 2022 17:13:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE246C385B0;
	Wed, 27 Apr 2022 17:13:00 +0000 (UTC)
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com,
	will@kernel.org,
	catalin.marinas@arm.com,
	keescook@chromium.org,
	mark.rutland@arm.com,
	nathan@kernel.org,
	Ard Biesheuvel <ardb@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [RFC PATCH 1/2] arm64: jump_label: use more precise asm constraints
Date: Wed, 27 Apr 2022 19:12:40 +0200
Message-Id: <20220427171241.2426592-2-ardb@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220427171241.2426592-1-ardb@kernel.org>
References: <20220427171241.2426592-1-ardb@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1925; h=from:subject; bh=bQZstQBwyA5UayDt39rQFQoQ6xyTaxuR5gluVAnpbCo=; b=owEB7QES/pANAwAKAcNPIjmS2Y8kAcsmYgBiaXmGCSeZrap2M2MThRtu4fDOfDoPj5aMO6bi5gQ1 eQuq2PWJAbMEAAEKAB0WIQT72WJ8QGnJQhU3VynDTyI5ktmPJAUCYml5hgAKCRDDTyI5ktmPJNofC/ 0VZ5MoKi4s9Y+GZ5c8YFJO+jHPce5blHGGtcHMZS9q+d67GFIRnul6D3Walmuh81behJNGEtGZHC7M Y7/lhDbH7uQ4bnOWezIVYDR0WhpgvMHvdVdbrB/Lwa9ov7Jrd6HWubST9cn8PSnI2muUbWRkOkMVCO n63UPa0S+f5KXgY1VWUkeGZHp5DucgdYNqx76C4WrBz9ExgmNiRxCw2ZToRxtV34RywpdFEoeYm5Dh gRc81k6i8db9zmxTgKlvUrPfXL8iqs4jwUepd9+NQt7Yz/i0xdxt5XIs2KExN0yhbcroxJWbMAEESM a3lGizpea2DK3p7Cb1Z6+NiuYN0N8N3Av9fG/dClYe7QZikg+unIu486eoLHxK0claKGNRlqZ9MDUn mLcPSHM8abPdY8TKtTIGhcAXPTgNAp7j2iQ5kSRGPqGXjA4jFUd6f5FNmljiYjGfDKocVf3xYAXNMK 7Kr3rwk3ePpwmKjh+xpYMLv8bwU1Gv0jJUozhmSohVa+w=
X-Developer-Key: i=ardb@kernel.org; a=openpgp; fpr=F43D03328115A198C90016883D200E9CA6329909
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mI404qdy;       spf=pass
 (google.com: domain of ardb@kernel.org designates 139.178.84.217 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

In order to set bit #0 of the struct static_key pointer in the the jump
label struct, we currently cast the pointer to char[], and take the
address of either the 0th or 1st array member, depending on the value of
'branch'. This works but creates problems with -fpie code generation:
GCC complains about the constraint being unsatisfiable, and Clang
miscompiles the code in a way that causes stability issues (immediate
panic on 'attempt to kill init')

So instead, pass the struct static_key reference and the 'branch'
immediate individually, in a way that satisfies both GCC and Clang (GCC
wants the 'S' constraint, whereas Clang wants the 'i' constraint for
argument %0)

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/include/asm/jump_label.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/jump_label.h b/arch/arm64/include/asm/jump_label.h
index cea441b6aa5d..f741bbacf175 100644
--- a/arch/arm64/include/asm/jump_label.h
+++ b/arch/arm64/include/asm/jump_label.h
@@ -23,9 +23,9 @@ static __always_inline bool arch_static_branch(struct static_key *key,
 		 "	.pushsection	__jump_table, \"aw\"	\n\t"
 		 "	.align		3			\n\t"
 		 "	.long		1b - ., %l[l_yes] - .	\n\t"
-		 "	.quad		%c0 - .			\n\t"
+		 "	.quad		%c0 - . + %1		\n\t"
 		 "	.popsection				\n\t"
-		 :  :  "i"(&((char *)key)[branch]) :  : l_yes);
+		 :  :  "Si"(key), "i"(branch) :  : l_yes);
 
 	return false;
 l_yes:
@@ -40,9 +40,9 @@ static __always_inline bool arch_static_branch_jump(struct static_key *key,
 		 "	.pushsection	__jump_table, \"aw\"	\n\t"
 		 "	.align		3			\n\t"
 		 "	.long		1b - ., %l[l_yes] - .	\n\t"
-		 "	.quad		%c0 - .			\n\t"
+		 "	.quad		%c0 - . + %1		\n\t"
 		 "	.popsection				\n\t"
-		 :  :  "i"(&((char *)key)[branch]) :  : l_yes);
+		 :  :  "Si"(key), "i"(branch) :  : l_yes);
 
 	return false;
 l_yes:
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220427171241.2426592-2-ardb%40kernel.org.
