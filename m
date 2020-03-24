Return-Path: <clang-built-linux+bncBAABBIMT47ZQKGQEELELYHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CFA190807
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:49:38 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id z8sf9423092ybi.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:49:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039777; cv=pass;
        d=google.com; s=arc-20160816;
        b=JtCfbAz/vV+oL2oxYWTGze3LFSRe7v6pMt1HI5GqXH6Ro9lLqJm3MsmnMdz5zAy11A
         HBX2IKE1WeQTMzYIForwLgtM+ETofj5Mv+fpzuYwk13dLExHyUn+YQ/RvBp2qL+DtG6z
         kFskg0rafGTgOla9ds6ZbGH99g3q5a4DLAG399l8u740nnwDbNd2dmRYdTeeen2JdMHl
         em7+J2tzcrAamj6ymrV/UIzYXFhJsUx9OuSfn2mAxSjAGINRsAXBwCMBsX9sOPos/TZE
         2Av9PdmmN01UpDDwkI8u3E7Gqt+WaSRqon1HC6P7D3yVsZu6VR3VGaD/Bk4u8bQB0v2x
         cqEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=HDb/emffAlylDMoVqj9TzHcKm9aVDD16E6odoqJPus0=;
        b=SfMg0VZJOt1zDvDp4QYVjNJF3slDryhiUjiS8u6iAMHG4lp7UzHG5sDwcXNtV9eAOS
         pBDw34fxkmB9RiGrdus3hcVBm8y/3RC5WizG+DU3NYQ+9JZio/uRvQa4BFlsLAiyGHy5
         +L/z7hDl1FOiZxrA+/HjbLUiGQILq3CmXG+nnSNkVW/Yi+1MomRF0FvnN/x528pjRR01
         TEUSV6hvCsHyN4R934i6+y97H8rLaRQhrX2CGXV6P3i1JUW73eQrHIHGpOKOpwCL/nre
         7FYQ4GSndYKs5i9hoR4ihisGskvPO3bNV1wGn2Su6QzjtfvRIG0O8FGf5b4RKov3dZeS
         02jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="Vdr/w1ER";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HDb/emffAlylDMoVqj9TzHcKm9aVDD16E6odoqJPus0=;
        b=S+G8vhyiBkQHHdrvfezTud+C4uUadEcs4KBZ9UlFpjC0OdvJPaeC/rcXbJK8Y0J9B8
         4GxX02teBFM6oOL3M2zrVdAIrrpg6XeebiI/5eBQKzvs3bP1WZ8joACROh+GyRUVJuI3
         ur+sZ3Je9if0bWOWAl0H6LyWlJeasQDH8+fW44fecXtgnRA9aFron04fwKqHB6rivAgD
         yi1kBqcBowtL0YNJ6Nf1/u/F5/9tlON7XPhWfti/Wsk/SK+JEDg37Whslgb5j29/zT03
         u083MbvKDAqAchl3EM5lq9rxV2iz19mMPdHrCMyZwpZpFKJ9bBQ7iAn3phLZTwHASpJI
         lVUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HDb/emffAlylDMoVqj9TzHcKm9aVDD16E6odoqJPus0=;
        b=VECBzrvDVaIMEMNpxxbuNgCykyWcEPnXSx2xOYkIp2ZEPyo7P2iJs9cZrxshZSyLVI
         3IVdP5dZ9+A1N/hDhmRpiUQXD5Ep80/8/VT4LosGH4WIn/RRvnZUX1I1o8S5e2vomZ3K
         kkVgzdSwoQymRKLNhVpC1rNs5dyXv0Fe/wzt7a5jGM0E4MD69baLrseN6wXo/kt7PUSj
         oKXHzQktdkx/CmbhNF/SmULVUUhZN6XHI3ov6HsplYWjHAUUc5dpS25W3MMRZp41makT
         qD6vXQ11xXOOmtdej89RYVcN69tVMNP023J88/+iaXAUORXE13CTARxCEx7Q7pt5RYmR
         NxJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2QTUgMZyR4DclBbuaXZRq1IRrrPSCM7HBk1JS5QNVhXUrMNC19
	vdUE3tXrxzZm4qVMEj9s/gA=
X-Google-Smtp-Source: ADFU+vuKsfAXET8CJt51LlNHTJ6iLPluOLaIr+L3HTd2UYOoUwTEo2MEZd8skEpm7K19TkFAJoEcJw==
X-Received: by 2002:a5b:4d1:: with SMTP id u17mr44135062ybp.172.1585039777591;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1d85:: with SMTP id d127ls1034037ybd.0.gmail; Tue, 24
 Mar 2020 01:49:37 -0700 (PDT)
X-Received: by 2002:a25:d658:: with SMTP id n85mr42232687ybg.128.1585039777240;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039777; cv=none;
        d=google.com; s=arc-20160816;
        b=buxtpltyQcnZj3PRPtjwU8gDHWAaFZ6ALlw0+P5VZB5O76iXNues7Rn1wRZRIJCAZA
         T32ebXVaIgQn9TgIRay47DzhzdfP/f4KPFFtoK1CBQ+0dlIoTtFEw6jTjBDUg+w+e9ny
         Q1RcGh+wrjYVzwnxbvftkmgSTcQoXpYqV1yM2X4jjpURm1iMJSLYBU9qCOK93iHUYy1A
         Wgg1fJr0QTPAJdocNPv26w7YI3TJbaoo8Kj35YoMI7/wB2GPQO+VOaERq6zhwYx3/Fyn
         0UeetNFRGNIWJsENnT+sryJqUHH4lwG3bSOTEoDDSXv9jii9VZxtS5nQsXyE/gimwOgt
         TMvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=0n2SNVTASAHLSUpoQ5+c9e3R+yizJV+PNdqURrTAbRw=;
        b=H1gjspmkLxUJjyl6j+5FaZ3/CP2Fuzs5OxjrlfsTyEmKjJoAtxmk9X8s2+QiuF87xW
         br0sDrmcIwWtYDjrR7bAGMZYEHK30XzThdQ5UeJUu7T6IKZoPt0vXhKJqLJWS+8WU5Xy
         i4Y/6huO0T4fbxAoXs7IXUZjWqoZwjMO6vVSUohfUItr1Lf0iy4fgVfbOlvAGJsvwNpF
         CsTJhMiwYVVyvYb9W21Ia4YWAoEzhyNzSl5Q5eufpUlPIREWGlI8lQJpKFluvBcaanvA
         lIt68m3rNfia5O6b87InsFNkdFMqzRz5/n7S4DxN8FZk6BhDij9LJ5khJifQO/MBt8ie
         +MQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="Vdr/w1ER";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id d72si183337ybh.5.2020.03.24.01.49.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O8mgsf011219;
	Tue, 24 Mar 2020 17:48:53 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O8mgsf011219
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
Subject: [PATCH 08/16] x86: add comments about the binutils version to support code in as-instr
Date: Tue, 24 Mar 2020 17:48:13 +0900
Message-Id: <20200324084821.29944-9-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
References: <20200324084821.29944-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="Vdr/w1ER";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

We raise the minimal supported binutils version from time to time.
The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
required binutils version to 2.21").

We need to keep these as-instr checks because binutils 2.21 does not
support them.

I hope this will be a good hint which one can be dropped when we
bump the minimal binutils version next time.

As for the Clang/LLVM builds, we require very new LLVM version,
so the LLVM integrated assembler supports all of them.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
---

 arch/x86/Makefile | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index f32ef7b8d5ca..4c57cb3018fb 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -178,10 +178,15 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 endif
 
 # does binutils support specific instructions?
+# binutils >= 2.22
 avx2_instr :=$(call as-instr,vpbroadcastb %xmm0$(comma)%ymm1,-DCONFIG_AS_AVX2=1)
+# binutils >= 2.25
 avx512_instr :=$(call as-instr,vpmovm2b %k1$(comma)%zmm5,-DCONFIG_AS_AVX512=1)
+# binutils >= 2.24
 sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=1)
+# binutils >= 2.24
 sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
+# binutils >= 2.23
 adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
 
 KBUILD_AFLAGS += $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-9-masahiroy%40kernel.org.
