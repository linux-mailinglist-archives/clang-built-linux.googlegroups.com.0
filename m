Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBY4G5TUQKGQE2PBY4DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF5376830
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:43:00 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id i6sf21080781oib.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:43:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148579; cv=pass;
        d=google.com; s=arc-20160816;
        b=sC9/EQw1v91Vh1KgsrenFRtQ5fPEII0ToUmmKCpVqBWdtQqTwybTebtj0g37b/5CFg
         Xe8k+XaiGiqSfRJEy9QI+X3Fc2S+a9ezlGRyFN73qxc3V/lK+2/cNM+w+W1wj8n/copV
         xoO8kC1mTEUDQ/5DFE1Mdu6dKC55J8YMON/3gSU7IxBKdWidJM+HoL5OsBD9N3dxqysZ
         JLcd+QNXoYKU+nAxszeRXgTI/0KhdR1pI69lO7MUfkAK2Msxm55ggW0nC1ViHlsJMmL9
         x1m6AzSlH+ZYO/k6QJa0Ueve8Onm3twiqXt+O5vSITkwgHPRbLELbsVu1RZG7OKQIKYo
         OIwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=rbtdtGYFuGpdttvJT216ZCCm3Npxw6PSnIwNX9AeIDs=;
        b=MdbrnrQ9yNcXASKlJcBPu3sVg+kIgYpt+8PN7jaN26vpSr3SMdpIkjETEiVVL/oioB
         uPKjoo/reH+XYUdD+qvUzk5/6WvIwxUDMXvEEbVcEYqhiYTgt63fLxnGPd4ZIDe4cWNt
         8FnvGf/CsJfnFkmoTxune8OKwJQ9j54UMb+1Db79JoQsE64dPtkmlNeDYTjq6HiP3U75
         1vB5s4zW+7CVYgWMABCak7yDap4VjwmOudbnbd1y+5RHhpzmfvobPm9FF3e0j79dq4DT
         ENrcxa0a55MpPpHfDtcO1tAb80/eQYDR2Xg32iPKXXOvplGW+Q7xiQjI8Z5Jya2zhXcE
         cYUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Q8dwKgMY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rbtdtGYFuGpdttvJT216ZCCm3Npxw6PSnIwNX9AeIDs=;
        b=PpvAbEkbTBa0WJSTu7TJl63BafSBc80EctIN3+smXEhlzbHfiU8wRFpUrT5RMiMBZY
         wmDC8ibJEybAuwLsm2A9/4NeDrkrXXPh7rTOLzRMrBK7G9oB97d5MM8fzjtopHt4IYMC
         qk/xxk8Te1X8zfKj9f99N3hfw85GYcEAEA5occmj0o67eqmD3IBe0qQONZKt4ynNxv2N
         jMqaAXB30/5vSVocnfxvrsNpziiqKnI8YRzXjdut/DjXgdTdGm/hGOPlb3/YG49oYxkF
         TdbGYDVvz7Ts1CF9b+k9tSp29wy9E+A6ADyIobpEGRm9VEIZee/3w7XCQajpiTjytlPv
         iScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rbtdtGYFuGpdttvJT216ZCCm3Npxw6PSnIwNX9AeIDs=;
        b=oJ8sQzXkt9LAWftbxjZqaTWd9teR4xPGQjF+BN9TXEhTPLTadTFyHzrdD0Y7ietXb0
         dHB/DFulKmmPA1BiZClmbKNVlDAeGfdzUCec6fl4hbXGQTCO0Z69S8WjmRQCLIHkHnF5
         Yg2TQCIW6w2p/UEYtBajbhcApcjYMUD6dinVMcClV9DV4UlOvxozhGX11Dy/gwaHLQTT
         ZdPi22XyGAydLGl/SB81l+bLwSKEaf3jT57uepdX4FFSQlOYW/6g1Xwxmzweuczg4t0/
         9gRYC7797nTisH06QUwEd8yqNQ6laftn9ErKRF2KKkyGMzjtal/BpufpxQ/VFuRDr8xM
         qrVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWSJeTMa8iMp4D3YJMjUXrsddcoNoyp3PpN6okr7oJ4Lv8r1BS/
	ES44AVryohr6gdN61gNF0cE=
X-Google-Smtp-Source: APXvYqzXFfo9b2vScrCV+hf9IxQvqrSHtrAUinTtnrQ7wUCvRDqpWvFltBMJs9bMWH4twFWgBgY9Jw==
X-Received: by 2002:a9d:4f0f:: with SMTP id d15mr71508675otl.52.1564148579137;
        Fri, 26 Jul 2019 06:42:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:71d0:: with SMTP id z16ls10328451otj.2.gmail; Fri, 26
 Jul 2019 06:42:58 -0700 (PDT)
X-Received: by 2002:a9d:6ac3:: with SMTP id m3mr10612076otq.92.1564148578936;
        Fri, 26 Jul 2019 06:42:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148578; cv=none;
        d=google.com; s=arc-20160816;
        b=AGhdCpuUq1+YG348qqrdGmEsQbZ2Q6+LbBe1NU4dIq5sVeOeSjvysUtmgYggOiUn7+
         zz62J0a2LtKH7Q8HoVHLVyjz3gQN0TONM99MazMY1bn1em27zBYoUAN8XtiILlURJNlt
         JsVRoTH4fb+S3f8I6I8YeexbMCbaFzQAVy47om+YnR7eK82ygHPAC/1xmxiSa1lDr5+S
         6r4ujVFhviNE969D5n/p667VOp9J7fxxV55/zLJ4EJ6nke9SdcgO3S7ouBiGO7S5asfe
         ARDoS+an86TF/QX4J2hhb5oj73RunET5HuR2/xaU4JuO1zPWcyPSFW8gVo0bPd92HziT
         jm/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7GjzGpLikKKG+uNBNxDlnKwwYW+AtyJLvnl8HsIpDfQ=;
        b=UovBjRhyTfapMw7zLBARRhkEai4z7xOsZl5pSJR8xw8SWB5upTaD3ctCIzKmdor39r
         fDuL8mZv5Lu2MtQtPEduQDin6OlzKZgUb1YB+9tfm/7vdIIpeYg5OPHZej6PzDTWfw76
         8bCY3xXqwAeBAo3qxPsTIa8mYm1txKpWdaplRK04Nm5bNFHlAfINl9KtKTbQ2nDifs+b
         NQN2Ubx3Uwpm3MOFw2OJg0egr554vtNCkrbuJphu726VpTe/H1nu5mtDVaREmE0zmP/L
         i9jGcJ4oowMAlbC6kfHmrduYZXDq5YAf+JnGHidgujTO94dAiGgZHypYM8/DYw1ZPaqo
         fdMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Q8dwKgMY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p6si2737165otk.5.2019.07.26.06.42.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:42:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8053022CC0;
	Fri, 26 Jul 2019 13:42:57 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 29/47] x86: math-emu: Hide clang warnings for 16-bit overflow
Date: Fri, 26 Jul 2019 09:41:52 -0400
Message-Id: <20190726134210.12156-29-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726134210.12156-1-sashal@kernel.org>
References: <20190726134210.12156-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Q8dwKgMY;       spf=pass
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
index a5a41ec58072..0c122226ca56 100644
--- a/arch/x86/math-emu/fpu_emu.h
+++ b/arch/x86/math-emu/fpu_emu.h
@@ -177,7 +177,7 @@ static inline void reg_copy(FPU_REG const *x, FPU_REG *y)
 #define setexponentpos(x,y) { (*(short *)&((x)->exp)) = \
   ((y) + EXTENDED_Ebias) & 0x7fff; }
 #define exponent16(x)         (*(short *)&((x)->exp))
-#define setexponent16(x,y)  { (*(short *)&((x)->exp)) = (y); }
+#define setexponent16(x,y)  { (*(short *)&((x)->exp)) = (u16)(y); }
 #define addexponent(x,y)    { (*(short *)&((x)->exp)) += (y); }
 #define stdexp(x)           { (*(short *)&((x)->exp)) += EXTENDED_Ebias; }
 
diff --git a/arch/x86/math-emu/reg_constant.c b/arch/x86/math-emu/reg_constant.c
index 8dc9095bab22..742619e94bdf 100644
--- a/arch/x86/math-emu/reg_constant.c
+++ b/arch/x86/math-emu/reg_constant.c
@@ -18,7 +18,7 @@
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726134210.12156-29-sashal%40kernel.org.
