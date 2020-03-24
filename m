Return-Path: <clang-built-linux+bncBAABBIUT47ZQKGQEOX7FPZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CD919080B
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:49:39 +0100 (CET)
Received: by mail-vs1-xe39.google.com with SMTP id z18sf2135233vsz.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:49:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039778; cv=pass;
        d=google.com; s=arc-20160816;
        b=d7lVBlnpJNBBMQU/2pKOSNDNYixV0gO+vif3qtjEy+K6egP0gAFSm+2LDZZeb18D0T
         M10w0IYodfe8wRXyb5IjtIlSxAZZmlyOtRsd5BYDmkiz6y2Yk6+vZjpMIs40M8XE8G7i
         yPkla8WSq+1zXq59hEhp8jxlWNIXC52DQf0c4MVkg9FHp+0nE6qKZLvZ4Kw6R26IEJEa
         nrkJosIgxr3YACdXegcW56F8a5brT5N9GSxxzWqaxg0eb6T69OYpZtkLgnis7oKTYOjz
         9Q+21p8GNszH6uPuKm0TMuqO+dvRaSd3lrdgUOL+0YOMXq1cLrPcEfYq5xFsO4lZdQwh
         lR8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=Hmpqzz7Sf+HswI/G1iiNvoY3F/oFR0Aqk3PDTyqZd90=;
        b=QxJ9hvVm1DlohH1Ag75NLuwbTqlLv5sSf5TAVrPcV0Hncj2/0tFzbFrSllvPCsK4ei
         GpIe2F0KHa8bjZIpXf4EbN9vG2uAmJgUSiWxtKYAz7MMW2GY3zEP9+zXfFsctmDdAd4l
         fCbtX9ScKjuTpxSxl7rzpGNUrD3e04wggMLt/PVOLjGHj4MpkR40pbLLFVJkYMM9Qd22
         Y6W0oaj3idgSBfCnUukb9zUXKfU+lu3tB7wBdlfJFsPZQseTnu6bM8PhcXkzu4JjPLHy
         C8Iz3RMg0ltuFfFjb3VbfyjFyJxnDQXsGu65ymf+bCEhKQkTiAfzv5FSGbyWgqh24UY+
         tazg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=n9RusmaB;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hmpqzz7Sf+HswI/G1iiNvoY3F/oFR0Aqk3PDTyqZd90=;
        b=rzdH2AIiOmNXMB/2WB6uNSNHXZzgW6GM83Lwr4lqqNBE25qgAujsu+V/fYKAM7+0WX
         jOqnVQJq+Xx71E6hz8aPnZ5S9Bq+fdYkc7Hi+DjqV6c9CszOubIvrd5zrsHlJZ5WF/p5
         J+DkqFUNzH4OO/gAXC+D3S+Gsxk6aKvB1S4Vn7+9SBLWZi5CHxoxuUY4NZoNoSiARdU+
         zx4Q2YBIeuqMc/2Iotl807Hmt6tXf6Xa7BYDuKOdM/KH8abemVs5U66Criuu9rB4Jzud
         vQVBbKeWw0NqLhSHYQbZR1OgDQOw+8odxfdwcb70We6u1KOiRsX27VcOGfzAC2S1fh3p
         n2tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hmpqzz7Sf+HswI/G1iiNvoY3F/oFR0Aqk3PDTyqZd90=;
        b=FljCxSuESy1JUDpRMKS/Gt28U/wy+rC1w53ybb9cqjTVY13dI7JWToSnEuw7BIBkuQ
         fqDd3t2fW11Er7QiUmSBEFxqOB+rHFQ52fOEViPmJ3B4vKaw1cAdz5gkHGOn2kY+d7IJ
         NVLQKvcKolPbPkybekhejlTlgSD5V0g/Z5W/tERszkShXP55cuSofWSRmgQeMNISAtPh
         EDWDQeBSFUjxaZWaqWeD03xfgn3Sfv2vSLGVunpqt8X1vTb3eQJik1IEvDUrdyj6f4MM
         7m3iQNfDmKVOk8U3ediWNrBhgyS1IDUgNQeHPYwt8PFV2UrakKDzxCt6g1jCM7snJG7/
         SubQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ324p2mc6jZvLViak7V3EhBnR2ABniiw+/XdBnk6H56yKeCOQnt
	MM9XvJghkDJOvdqc+3BxqTk=
X-Google-Smtp-Source: ADFU+vuH0DY3kPPv2rdJXP65vO5OPTqbCXMc78AodavdHP38iJg3T3MXGAWQPbBKBS6kUCN769eJuQ==
X-Received: by 2002:a67:4384:: with SMTP id q126mr18708555vsa.154.1585039778215;
        Tue, 24 Mar 2020 01:49:38 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6950:: with SMTP id c16ls313272uas.0.gmail; Tue, 24 Mar
 2020 01:49:37 -0700 (PDT)
X-Received: by 2002:ab0:70d9:: with SMTP id r25mr17604805ual.67.1585039777890;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039777; cv=none;
        d=google.com; s=arc-20160816;
        b=0Nz72B8OYNg1kup5kAXrc/Sfhcl/sDMlscFgUpHiURxPdTCE2tFe9vh4aGLLjnlg1w
         qV/E+O36P9N0H55XecYNEbgIRXY37STYCrNs2mdIt5nxmP/KCLfvB2QJmSNnLrYb6c9s
         zNd+ey6xwxj0dSyIcYgERZA8vAB4SHDZwHdc9KbYVa3nDkbOswy3LOIwgaO113OUxHnc
         ewPMJmsLdCeR75KP457hSlyD2I/NxXe4/iJfRr9/G2E89YJECTB8uDfWlIf8FNt4nBNt
         gDXllHbBno4pH14mTv0eS+rnAaRjQH3HvUprBhpL8iGZ72mAU5PHHgyj7xRD36g9k0/b
         O5+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=+sBpYXedQh2YzVb03jkJMbz9JNuGcrw07RIglD9uxfI=;
        b=RS6Bx8pELAkdxAlgBnyNDsP2qVn7GBCY1rIoDFhMbg8fppejOJ7YFWC89ICYEPc2T/
         KFOdvLdMiU9Lt5UPdtuC2b9ZfWA27ff3t+FEaK1DMfN3NdP54BKP5LNEB2lKBDM/uxYY
         SOI9HvLmHAYfg7CVZgLMjdKRlc9wXiTc7PnhGS+HL3OGm1b5Zw/6T6vbfuZOqotmEXY5
         wv2EzWt1c+GOxTlwMhIh5MsKCoQXth8jEybkAwScs8YK11Kd+XiS+vxn98mFUGEluPFo
         C4sgurVCCw4sgErC7wadysxmMKV97pxMH3sfLZnHFQRFjJHDLIuIrHf9V0NwGHOgtXH+
         Y65Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=n9RusmaB;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id w12si1149966uaq.0.2020.03.24.01.49.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O8mgsk011219;
	Tue, 24 Mar 2020 17:49:00 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O8mgsk011219
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
        linux-kbuild@vger.kernel.org, "Jason A. Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH 13/16] crypto: curve25519 - do not pollute dispatcher based on assembler
Date: Tue, 24 Mar 2020 17:48:18 +0900
Message-Id: <20200324084821.29944-14-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
References: <20200324084821.29944-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=n9RusmaB;       spf=softfail
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

From: "Jason A. Donenfeld" <Jason@zx2c4.com>

Since we're doing a static inline dispatch here, we normally branch
based on whether or not there's an arch implementation. That would have
been fine in general, except the crypto Makefile prior used to turn
things off -- despite the Kconfig -- resulting in us needing to also
hard code various assembler things into the dispatcher too. The horror!
Now that the assembler config options are done by Kconfig, we can get
rid of the inconsistency.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-14-masahiroy%40kernel.org.
