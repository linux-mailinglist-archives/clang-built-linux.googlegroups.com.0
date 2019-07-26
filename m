Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBW4H5TUQKGQEYRLGGLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id CB30176882
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:45:00 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id u10sf28436035plq.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:45:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148699; cv=pass;
        d=google.com; s=arc-20160816;
        b=hd7lePv1G2r1XFZsZe8pzOKrbAePURb88RepTdTsLp1BraIMKAWX2j1grqyPVbhycz
         c6JdlSu1guVLtdEdnc3fEM6t8K9DGMfxfqjy5o624MdZi5k4DRGj+ZY8jJ3Rvic6SxLW
         BlnctrgvtA1Aa2zT9s8E9lS6t3cPWtgnU8z3D45UEAUqdxfH5tcZ+FEDvNQUmIH8Emzx
         9FpvGkWxIaSuZlAiu0PKMJp2O9PqVz0wv/fCz0/w4HDcg0anUfaeqUK5S/izhRwb0HVV
         Zta/Yv655ASHSmPN2m4ngQzRR2+Q8enoSh1l33ZjbZf9B7TQu693+rpv6xYGv80o2XDt
         HcnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=p4S7vNCmqE2BWb+M0fX1JbwjMA28jJOURfcs+8w5S3I=;
        b=COT8Kxg4V90X6vEY+hHx8TkYRGDwkW+Rkiz3cguO4mCXnhVIgzKR1YwjItugtwuybi
         /3nKDTN6RAqBVbMu85cbY2lNfCqO56HrsS92ZP38gLzTeNxGuMBVzJtHsQB5TtQ1MRlf
         e7uwfVQabom8lEd3TFzOdtCI0x76zpldHKA2+Dp8CtoHqzsYv4MIY1pL2YFCqgg++vt1
         2xL61NMhi6AxTlVTQOOcNSUTPtgL6ujgyfvZJpowZtQy6k/m+2hTd4j5aqNnFXgU6g/t
         FmpNPBY+UjB5vZ6uzDoLZmJzWKadpLCEuxOz52lL3WfXs5M7aLOQ9ntOTqfMO6ZEjCLY
         +Q/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s0EsphYu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p4S7vNCmqE2BWb+M0fX1JbwjMA28jJOURfcs+8w5S3I=;
        b=bZ/tk1bDXqkTetXc6vFlqvtmXkFkcwqX32As9CIQZTEmmFxkVXZy5JIK8ZKL+oYIi/
         2iijAMAUC+7fEL5wKtCtZc8tOojOduzaNg7mtaiUOugP+wR2S0Mw0shPYdoFg24if1fW
         SLq7lOx8mmovQdikGMacsL/NS1IrQLmY+aBueWkzUOVvtA1U+6Ouc6P8aLUYhPoLBPJE
         gwIrriRdrPjxH2rWVtvDO9376+fuToZO3uYzVbEwpjqjdkMJWteNXayuXI0Swwa1becU
         ZoLX7BDEwSAUfe5A4ReHDhlb4MrQDBykhJsYnIir/Jo3NAeY7oJBDdxNYM7y4/pgnP92
         4FTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p4S7vNCmqE2BWb+M0fX1JbwjMA28jJOURfcs+8w5S3I=;
        b=nJlkPt52IYl+AGdnouQDJCF5MpDqfhFnM9Q1SBoeXT7wJt/GXhf6f37jZAk6JcL04z
         fdSdXGpGaE5fAKqIoCYypI7Y/XlNQePFFduJOSxHTtyRNu2wUihBmLUB8Fv1CYj2iVRV
         DWhKaOm2y1Z2OGth8zvV4Wi5cb++21lyBueBiNsgfS6/C71wsjiAzQ18B752/Ryovgln
         g/45pFL40UHCHJnYRenosUepL0SdqjELMTUV+L4YPJsHTvRRxCKDocfQtcat9dxcBMH8
         mXSX99Q4HzvRXAS2q1xjtH9P4giDAfyN6Y1lsF/CGm6E1XB9tW49siw6R/cHs1JNfPqW
         l4aA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWPQOs5DiVA6on4ST2Voe5w5dqTd58jOom1+To0zMhLCr4FquGU
	9keVEAl806Z/Apd5vM5rE9Y=
X-Google-Smtp-Source: APXvYqxrxH6/IfbCbod2tiiSqiPf9cCeXu83lxJljFk1VsgPyuZ8RQ+Mpdl9/2J9p9wKIMmGM8aZow==
X-Received: by 2002:aa7:8804:: with SMTP id c4mr22123302pfo.65.1564148699510;
        Fri, 26 Jul 2019 06:44:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9406:: with SMTP id x6ls10403132pfo.16.gmail; Fri, 26
 Jul 2019 06:44:59 -0700 (PDT)
X-Received: by 2002:a63:f750:: with SMTP id f16mr61777941pgk.317.1564148699080;
        Fri, 26 Jul 2019 06:44:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148699; cv=none;
        d=google.com; s=arc-20160816;
        b=Mv2ynwIem+FxgDouF3Z8w+raQykLkH/tNRcuvFB2lotrpnz0qbZvvOZJjRWcGydKtB
         N0aM5Q4qwKQb4wC5O5tCKe0Z8eXh/lD6dK1mqe5xdYLdnCaSZGPxJBdvkVZu/7Hl8a+K
         I+aJUqOCoFjbHf45bR5P9ctuhU3W9N72yrH9zh00NrJDBmJLgfidxdaXY8px8f42SPvs
         xrtOdkEKyx75R6w0sygjyY/uXUQ8CiEVCS5PcLDZh9fPoVBGladqJYhOjPsfJioh1djX
         qNsGthe6iODWIdTaLtBFCDbOGxd/jVsRMftNhzPCvsBnYXkWpX9nLF+UXvMw5QWJDyta
         M55w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=B5OW3wz+ZPAWYp7cPgeJB2lPG5sB3z3OYmDNOGpfO6w=;
        b=dfkGKYCmm49g+cPuRuHLzcCh9Dvh5Blg1SbuwbgFAKlRIefRFW1eQhxQUSbnskrfOE
         /emhL8EN+4ii7bnvkurX+nt7C2sTAjl23dG03UyR6/mOeA5+U5k1ZyDEFV4o9uV0/ip0
         aFiBP/EIqQZ2NGixw5kZHX39DYbQOnS1KFK5u1ys6AQUSFUHrngCMQHmKtETecmq4aaf
         ri/7Dv9AHb3wPyUkQZzdd6pZ7JchscJ1SvMA55QUomcbAenGMM65lTKlqik4DydnqqNF
         86z8/p16WrQQUNy9C4ApEWb+TqGMiVeoyOcITjllSgcZcSLytuJ8yseHdBvScZtDbD04
         3h5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s0EsphYu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 85si1049331pgb.2.2019.07.26.06.44.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:44:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3389022CBF;
	Fri, 26 Jul 2019 13:44:58 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 18/30] x86: math-emu: Hide clang warnings for 16-bit overflow
Date: Fri, 26 Jul 2019 09:44:20 -0400
Message-Id: <20190726134432.12993-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726134432.12993-1-sashal@kernel.org>
References: <20190726134432.12993-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=s0EsphYu;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 29e7e9664aec17b94a9c8c5a75f8d216a206aa3a ]

clang warns about a few parts of the math-emu implementation
where a 16-bit integer becomes negative during assignment:

arch/x86/math-emu/poly_tan.c:88:35: error: implicit conversion from 'int' to 'short' changes value from 49216 to -16320 [-Werror,-Wconstant-conversion]
                                      (0x41 + EXTENDED_Ebias) | SIGN_Negative);
                                      ~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~
arch/x86/math-emu/fpu_emu.h:180:58: note: expanded from macro 'setexponent16'
 #define setexponent16(x,y)  { (*(short *)&((x)->exp)) = (y); }
                                                      ~  ^
arch/x86/math-emu/reg_constant.c:37:32: error: implicit conversion from 'int' to 'short' changes value from 49085 to -16451 [-Werror,-Wconstant-conversion]
FPU_REG const CONST_PI2extra = MAKE_REG(NEG, -66,
                               ^~~~~~~~~~~~~~~~~~
arch/x86/math-emu/reg_constant.c:21:25: note: expanded from macro 'MAKE_REG'
                ((EXTENDED_Ebias+(e)) | ((SIGN_##s != 0)*0x8000)) }
                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~
arch/x86/math-emu/reg_constant.c:48:28: error: implicit conversion from 'int' to 'short' changes value from 65535 to -1 [-Werror,-Wconstant-conversion]
FPU_REG const CONST_QNaN = MAKE_REG(NEG, EXP_OVER, 0x00000000, 0xC0000000);
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/x86/math-emu/reg_constant.c:21:25: note: expanded from macro 'MAKE_REG'
                ((EXTENDED_Ebias+(e)) | ((SIGN_##s != 0)*0x8000)) }
                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~

The code is correct as is, so add a typecast to shut up the warnings.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Link: https://lkml.kernel.org/r/20190712090816.350668-1-arnd@arndb.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/math-emu/fpu_emu.h      | 2 +-
 arch/x86/math-emu/reg_constant.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/math-emu/fpu_emu.h b/arch/x86/math-emu/fpu_emu.h
index afbc4d805d66..df5aee5402c4 100644
--- a/arch/x86/math-emu/fpu_emu.h
+++ b/arch/x86/math-emu/fpu_emu.h
@@ -176,7 +176,7 @@ static inline void reg_copy(FPU_REG const *x, FPU_REG *y)
 #define setexponentpos(x,y) { (*(short *)&((x)->exp)) = \
   ((y) + EXTENDED_Ebias) & 0x7fff; }
 #define exponent16(x)         (*(short *)&((x)->exp))
-#define setexponent16(x,y)  { (*(short *)&((x)->exp)) = (y); }
+#define setexponent16(x,y)  { (*(short *)&((x)->exp)) = (u16)(y); }
 #define addexponent(x,y)    { (*(short *)&((x)->exp)) += (y); }
 #define stdexp(x)           { (*(short *)&((x)->exp)) += EXTENDED_Ebias; }
 
diff --git a/arch/x86/math-emu/reg_constant.c b/arch/x86/math-emu/reg_constant.c
index 00548354912f..382093c5072b 100644
--- a/arch/x86/math-emu/reg_constant.c
+++ b/arch/x86/math-emu/reg_constant.c
@@ -17,7 +17,7 @@
 #include "control_w.h"
 
 #define MAKE_REG(s, e, l, h) { l, h, \
-		((EXTENDED_Ebias+(e)) | ((SIGN_##s != 0)*0x8000)) }
+		(u16)((EXTENDED_Ebias+(e)) | ((SIGN_##s != 0)*0x8000)) }
 
 FPU_REG const CONST_1 = MAKE_REG(POS, 0, 0x00000000, 0x80000000);
 #if 0
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726134432.12993-18-sashal%40kernel.org.
