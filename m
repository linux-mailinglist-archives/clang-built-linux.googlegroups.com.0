Return-Path: <clang-built-linux+bncBAABBLUT47ZQKGQEK4AVDBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 82969190811
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:49:51 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id x6sf11536786plo.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:49:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039790; cv=pass;
        d=google.com; s=arc-20160816;
        b=iPEA/g176wPnd18AAXgc7n3KlooQ2Jj0MgbZwaVHvYRm3svax9OdIeZa+2UNHkZuzT
         vYBVFLZKjZY9vZ1eHS57Uis/RmuRrvaUbM3Z1Zmc5+hvr/raquVarCaIWfpKXDfH18nV
         h7CVqENIfRKr3qGlqh1yDCgMhoPO4Oi/83cnprtp7CPIrKqm7H8b40jflNuvS2OFgYCj
         JZ3qLuo0AwbLSimN4gFB76sahtAzvlIKe+CBwDxkB4M6F7I9yq6vfcWhWp41Sz4QHQgc
         ndP61oexG3AYv4D0P9W7AwSPdaED3ZGDEr2D6faplkUimq9CKyY2EvOQ0/4w9BnWoR/Y
         3bKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=w/++F49/0dBxadLdGMGG2ZEB4j+CBBPyzQvkkU1Cl3A=;
        b=dQ0h/YgOr0X9MIG4yur+LV5c7SoYa9jwvGUiqCS5kLzy+L31XKo6TD6erlvK4h4pkE
         06lFi6ZE+/9zII30flJrzqXs4DRA7JB4QJ5YJ4EyRE0NkbJj365/nsnYmFABQi2qew4Q
         jNMFI+YqnJ8nIFibG3ozKzk7RCSyKjseWwC0ArGo3Im35JFl8InXUWVRJgwAqLg1UlcR
         7cJxHUO27y1a51CIJcokYDV7SyPbtOnRyCMbtrX+fXyF9K2N1fWp4YmctbcE0Rfht6CU
         2DPuScLoqq5XBw63xhIG/zhd1l+1b0wZ/M/f6JXzqhGtPtoxL+Mpzd2uWl4wWMf4FIXV
         WqWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xUZZ70B8;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w/++F49/0dBxadLdGMGG2ZEB4j+CBBPyzQvkkU1Cl3A=;
        b=dR9dqnzPpQEqFdBHT2PAzm2UcqbfDAORO+91Jc63nSRyZWU53LKaZZfACpHxQU/OsH
         mpCECyUq8c4LTEnVPxt2b0eC8S+RIWyhLficM93B4LTAioiY2oSJ2BogMJV34O8cz6c4
         Trd1rUArZhORuvzxW952dKDO2C/vBlAhR2BvulWBc0W4hyOv0dnpCHhnlM6V8S+NjjfN
         qcVe11tCeqGm8BuNWjwyLwEAx59+cnxmfu61D8HDe6dMSRBPKe3tYmMgCKD3+nZAGkpu
         SSahO7Go1AnTFL0P5+9fIeCJFwfZAMuB0OP+w2yu5q52/Kf2tYaBz/oqH1/jSYdE5Z0C
         HiLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w/++F49/0dBxadLdGMGG2ZEB4j+CBBPyzQvkkU1Cl3A=;
        b=PWFytPgbrXbtDIC64bO7PkThm58wl0JuAQjzDn1ZefsEGWqCBJzbZfeA08dCYCi1Tm
         nlHT9ESsyQConSqu+jD9k9QwJAKZEoeO/k4eru6+QtKEAfxEcq8J2VRu01du5tpZdQ48
         Ej4+iZJWy6fHax6n+Czb3xn2nNNSx4i/JaKNv6/i1yQPq/p7wZKX6FKx6+To2mTfNI8W
         U9a4aqqPT/4e+sUmrakwDWN5oCRi/sz9uiCjUTstzDYp9UB++eTCB7Ii/F8+gM4XmbYM
         Ks9UaS+HhXOmQxgA6lTRs4gvcX4m1yR/XCk3m3i0lpKLDwMwEz35ReIk+S3FhM36Taha
         HdRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1mcnN7xUg/SIr/azFb8oikdI1JbNnbSNmGagkwV6Ef/ybWJ6LT
	zualK4CGLlP0CmshPUHMgww=
X-Google-Smtp-Source: ADFU+vvaDD+1+mmE3b6Wvj0nWhzeQ9JwC/ozx80i1m8HaO5PUOxA0haXuwmW9W3pTGBCrFJZXdrN3w==
X-Received: by 2002:a17:902:6a88:: with SMTP id n8mr25071991plk.265.1585039790244;
        Tue, 24 Mar 2020 01:49:50 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c8e:: with SMTP id t14ls6056771plo.9.gmail; Tue, 24
 Mar 2020 01:49:50 -0700 (PDT)
X-Received: by 2002:a17:90a:1d0:: with SMTP id 16mr4100565pjd.113.1585039789267;
        Tue, 24 Mar 2020 01:49:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039789; cv=none;
        d=google.com; s=arc-20160816;
        b=q6w7ny97ymkDclG0n25Mu2FZMOvmb+sxDbx3FlodOT9uhuflgi079BiSBmCjxX5Vtv
         DfEwZI4O5JKGxQtWIdeqgM2SmnXt0ffv3i1GBkmy09uqfNurNXhQX/bvnvHMEEqpSRvG
         CTLXpLn/pOhbX+nLz+y7vXMv4IpQNH6EGi1u9i5RII/vTRChRMadeDUdSfBVsRwgi5Yt
         Xg1PO7VDdUDBw1qtPJnk0uxAtv7+l4TtbZYU8GD8YSCUsKnlP5uwD5pURrrFFwFa2xov
         5McJDna1opzzHrqr+z7BvwYuerloLOyuGf8gUt9Vdg04PGS9SJv3KH4h3Rb5H/SbWHOu
         DNdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=wo4v6sLSkF3zJEtLmurbhlkARw0fSZMgaGV3bKygv0s=;
        b=mP1bH74fTsPJVqDCHBdTs0VQOqmaj29NFJvzhkNDfSvG+nUnNfGvPrdhqjVk9q2tB4
         RgTTYJmarhXBBUCwiydrWXO0I4Pt77JAoYNLfuQweLzLET8bnPuYAT84es1dYpaJ16q5
         +QyTmP6vxL5z9Q2NMXBtoTo0Km2xX3ZYMAym51ZN6CHk+6rcWn1Y2bCVm79cYBIN3YP2
         QpV4mpgwJhAeY5nGcOhZWTTMe/ikeZLYK7Gs9PGbF8/jdH8ePUCEHg1jUH3Z9DKskZ+w
         gn3MxjzhfvWapTop4WaCIdQiyr/fijHHwv+XcOxGE9nVTzTDI4xMfY7gMm5H8fejkOa9
         GlYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xUZZ70B8;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id c207si283897pfc.3.2020.03.24.01.49.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:49:49 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O8mgsn011219;
	Tue, 24 Mar 2020 17:49:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O8mgsn011219
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>, clang-built-linux@googlegroups.com,
        Herbert Xu <herbert@gondor.apana.org.au>, linux-crypto@vger.kernel.org,
        Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        linux-kbuild@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH 16/16] crypto: x86 - clean up poly1305-x86_64-cryptogams.S by 'make clean'
Date: Tue, 24 Mar 2020 17:48:21 +0900
Message-Id: <20200324084821.29944-17-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
References: <20200324084821.29944-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=xUZZ70B8;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

poly1305-x86_64-cryptogams.S is a generated file, so it should be
cleaned up by 'make clean'.

Assigning it to the variable 'targets' teaches Kbuild that it is a
generated file. However, this line is not evaluated while cleaning
because scripts/Makefile.clean does not include include/config/auto.conf.

Removing the ifneq-conditional, so this file is correctly cleaned up.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/x86/crypto/Makefile | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/x86/crypto/Makefile b/arch/x86/crypto/Makefile
index 928aad453c72..a31de0c6ccde 100644
--- a/arch/x86/crypto/Makefile
+++ b/arch/x86/crypto/Makefile
@@ -83,9 +83,7 @@ crct10dif-pclmul-y := crct10dif-pcl-asm_64.o crct10dif-pclmul_glue.o
 
 obj-$(CONFIG_CRYPTO_POLY1305_X86_64) += poly1305-x86_64.o
 poly1305-x86_64-y := poly1305-x86_64-cryptogams.o poly1305_glue.o
-ifneq ($(CONFIG_CRYPTO_POLY1305_X86_64),)
 targets += poly1305-x86_64-cryptogams.S
-endif
 
 obj-$(CONFIG_CRYPTO_NHPOLY1305_SSE2) += nhpoly1305-sse2.o
 nhpoly1305-sse2-y := nh-sse2-x86_64.o nhpoly1305-sse2-glue.o
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-17-masahiroy%40kernel.org.
