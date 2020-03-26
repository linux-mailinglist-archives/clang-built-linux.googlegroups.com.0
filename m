Return-Path: <clang-built-linux+bncBAABBGGD6HZQKGQEVPV5JIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0A5193A30
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:02:33 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id t26sf2065771ual.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:02:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585209752; cv=pass;
        d=google.com; s=arc-20160816;
        b=U3cNGywTUW7IISMYl1v51qcbbs0phAPRsHJECKlY7we/sn2hxXDz2eqrWgJtCqairH
         /AWKehfPAf7wSrUmKp2nxBOZXMoGX16jbhXn2jZeC/C+tRIGK0yzUWZpceSDmwfzVpbl
         aROP+geQw9GmRTJa4/aCduWGg5PGjySsC4S6OO2FEROmECOs6M4i+dYwoW76g6gGcbta
         aQf332Jb/SKea5f/P/bAoC4gO3CpQCOfhPdlwwDb6/XcGXUP1YHhIJAV7AlMtrv79chB
         glYTAKtvlVpp60gmebSVykHj/94ddCsIXwnqci79ppjO7QW23wcnjmGxn8LeFTss3iij
         5exQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=8yc9oWAksqiwFZDiHeWZG1lh2gq2YtPgf/sgE3nEXTE=;
        b=k0zzKpJguuQ814FccWDM8Cuncj1IougyaP4oX59+jRO7Qj2MQgwbiI8hPVYm7DxN8c
         OEKVW3lEX5im+F6jZFBTs1dmjpb40wfvujB02lgH6EzNxCwcFO8B9lcSckPXHvpyvIyY
         h0XL6Td4WM1N6xQwM7e572WkhoEo7FcqR2tvFMoBZKosdEHVYmb2qiwOY+sNuWt9yyXZ
         GwDho/QDSOf67PZL8glKlS3R51cGbdp02jg8X2AzREOld2aWF1Rcn1w2KmUh9mpwAGgT
         6Mit5VUqMer/PG6gqlnDofLApKzRXkJXWUhsAyXtVP+qIA3PumDmkIgaftRVRQjSkuJ5
         9Urg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XylL7NCi;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8yc9oWAksqiwFZDiHeWZG1lh2gq2YtPgf/sgE3nEXTE=;
        b=YXO4+Z/Lt+XPHrlNqOlI0KS5i/qixSkvxn0sLe+CSrizZ8V3oH2dsYsYKx9mJ+3qzu
         hySkQzfqDhhZLFiwfRq4RiFUItOeLt9fz6oJiBV9xrYBR4PrQ80wEEO9H2uewQrcA7Q+
         q5Ag08xrjaC3aDS+l1lILEj26JRS8b+WCEZ3bYEnZXLX6AIimdJ1yrRusqqsDbTE2HL7
         0vbmQGANez0ZA/H4IP2rnBA+ONE0XprukiGlsk9QzvAXCsvC0u4zAH2n8nHsApdhHBnF
         zbc5t/9gZoj1lqe1abb6YuIsEfNMpobHqnswzUQH6x4ygxGkb5nsE3LXb4wV3kEO06fk
         tXUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8yc9oWAksqiwFZDiHeWZG1lh2gq2YtPgf/sgE3nEXTE=;
        b=FnyDMYtqYsh2t2PmSInADaPUM+ZRXH8nBxpZTp4iwtKjlIw3DbI5ufz0VOJfjdu5gM
         OayjHxHNWH+UGkpOV8dw4lhb1lQoif5gY9xsLDpc2AneeC5SiTJh26VbWpiTeUGK4sgL
         wDzRGtsq3ITkZgzvGU0gW+UNlkwyutyC/mAo2EGM3WD5tpxN5RgVvH4TeaI1A8UnlD6z
         CrnAFC32+C39QRHqTZ1sEgsWR/c6IOMi1k2ZihDAmva/SPVN08wDFgV6sG/zn77JKcOj
         BlYNR+jGrMHcfmFDqBbzVyXxAl5GEeMF4T/2dpGOv68B6Do6vkH6iWKH9lbMrQFtBdr+
         YrNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3FFYbk+745GAGXaMBzT22tLau/4WA2jKi4RR8LFKeX7IlhNBVp
	eBYnzm2iTB3dbOje/6MR0Z8=
X-Google-Smtp-Source: ADFU+vs0qi/4heCkaQZtCM0PxqvFeSp7A5vowpoFO5ZqyaNAx08/JHsbhNwgUoDDiWfUAmQWD/3Xdw==
X-Received: by 2002:a67:ec81:: with SMTP id h1mr4855460vsp.96.1585209752351;
        Thu, 26 Mar 2020 01:02:32 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2a54:: with SMTP id p20ls390128uar.7.gmail; Thu, 26 Mar
 2020 01:02:32 -0700 (PDT)
X-Received: by 2002:ab0:770d:: with SMTP id z13mr5490646uaq.58.1585209752097;
        Thu, 26 Mar 2020 01:02:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585209752; cv=none;
        d=google.com; s=arc-20160816;
        b=X7V5DZhrxUBmzJkCm12jLHOpzBz2Ao+vmcS8nK+20RCqj6u6mUrPjaRLy7OmLMKVUy
         Ti5Z0EaZwHs477CvRruRmxh4Fno5bHHPpe1ZB99JmvErWqfsQN9CVA0PxzglnTisNrNk
         BXbdAqGY+9tT+UTQN2WiJdTxnekrwcOcfK0FCK6VGX1Z/7HuMfjh3VyGcxynsxG38Mq6
         AHmYM1SGyzWaNBs0MlwExOFzXkZV2Ca+ccQKc/SAhlu6LWxS4gk1Y7/xUlM9WEAukFX6
         xWyx3eRo/Cve0q6b1gH7UG9uEbnmNQC5CyaV2YjUPIsxEKEWTaL6cOzC4VS73ANSID2J
         Vc6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=n1XeZ1wVDljXai1fPjVNbhqgRjXfYjMjNINQQzEPCTo=;
        b=ApbWEcTJyKdK5GbXKg2EHNveGgjwzH1dZdZt7a0HpIQzazpxeDeNj+6Ky1Ixhd4iOO
         P5ZyXvtoJ9B8ypZXt28m2IVLJ1ZVqcJzqDSvSlcWL7m4nLS2iWCxSKWI1fSxCYhYsbj1
         H6j6PLbyMXwjoXtLh9hjcmJxZLvYQikaU6Ua9FzBHpCWJ/UyZaRQEChw8WDgH/7fqbRW
         /AfeT/f7+L/MCbT/sd/K2ZokYZtEMELlNCXZ/OA3EmSx3KAVKtPtwo2QxSd3m8PvqMRG
         gtgy4sPmOKMZzs9KTE0oaRCPFK+Z6xBiDfBVl2AYJ4OoLG0XGhMMHAVjm+bBmRX4nU3l
         2NbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XylL7NCi;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id t191si109335vkt.0.2020.03.26.01.02.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:02:32 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02Q81Wpg002183;
	Thu, 26 Mar 2020 17:01:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02Q81Wpg002183
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        "Jason A . Donenfeld" <Jason@zx2c4.com>,
        clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Herbert Xu <herbert@gondor.apana.org.au>, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 13/16] crypto: curve25519 - do not pollute dispatcher based on assembler
Date: Thu, 26 Mar 2020 17:01:01 +0900
Message-Id: <20200326080104.27286-14-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
References: <20200326080104.27286-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=XylL7NCi;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

From: "Jason A. Donenfeld" <Jason@zx2c4.com>

Since we're doing a static inline dispatch here, we normally branch
based on whether or not there's an arch implementation. That would have
been fine in general, except the crypto Makefile prior used to turn
things off -- despite the Kconfig -- resulting in us needing to also
hard code various assembler things into the dispatcher too. The horror!
Now that the assembler config options are done by Kconfig, we can get
rid of the inconsistency.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
Acked-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2: None

 include/crypto/curve25519.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/include/crypto/curve25519.h b/include/crypto/curve25519.h
index 9ecb3c1f0f15..4e6dc840b159 100644
--- a/include/crypto/curve25519.h
+++ b/include/crypto/curve25519.h
@@ -33,8 +33,7 @@ bool __must_check curve25519(u8 mypublic[CURVE25519_KEY_SIZE],
 			     const u8 secret[CURVE25519_KEY_SIZE],
 			     const u8 basepoint[CURVE25519_KEY_SIZE])
 {
-	if (IS_ENABLED(CONFIG_CRYPTO_ARCH_HAVE_LIB_CURVE25519) &&
-	    (!IS_ENABLED(CONFIG_CRYPTO_CURVE25519_X86) || IS_ENABLED(CONFIG_AS_ADX)))
+	if (IS_ENABLED(CONFIG_CRYPTO_ARCH_HAVE_LIB_CURVE25519))
 		curve25519_arch(mypublic, secret, basepoint);
 	else
 		curve25519_generic(mypublic, secret, basepoint);
@@ -50,8 +49,7 @@ __must_check curve25519_generate_public(u8 pub[CURVE25519_KEY_SIZE],
 				    CURVE25519_KEY_SIZE)))
 		return false;
 
-	if (IS_ENABLED(CONFIG_CRYPTO_ARCH_HAVE_LIB_CURVE25519) &&
-	    (!IS_ENABLED(CONFIG_CRYPTO_CURVE25519_X86) || IS_ENABLED(CONFIG_AS_ADX)))
+	if (IS_ENABLED(CONFIG_CRYPTO_ARCH_HAVE_LIB_CURVE25519))
 		curve25519_base_arch(pub, secret);
 	else
 		curve25519_generic(pub, secret, curve25519_base_point);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326080104.27286-14-masahiroy%40kernel.org.
