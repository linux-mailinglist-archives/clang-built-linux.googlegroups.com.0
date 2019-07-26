Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBJ7H5PUQKGQEDMMK6OQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCBE765F7
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 14:35:54 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id s21sf28316702plr.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 05:35:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564144553; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pizr2Ck2fpsWFZBJyL1XIOqe7MDb9rCT9L2vRanGDM5uZOrQhvLNsZ9IqAw1aIh61G
         rh4H4WaFSFmSdJL12WApKef5EoeEOqEN0IlCh2X2bnh4P+xKCa2lVkBrCq6ANI41DcEp
         TnCQwOZmyKmnIv4+6d/n6tOURkLNAP8xZVqg6q5s0OdTRfAGjrjpoIen1/lHVkXo5FY0
         POkOZR3jGpMDjuG6NBUaomjuClQvev5D49fCyKoKGFYiHVeYMwyJK53UxbWdoXkZYCUk
         MDUB9kMzGZk8h06T5Acz5xcO1xQ9ZkFOub8wRz6s7yE7RQz6weioV/Jc8QyxkUxWRpYQ
         jmKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:organization:in-reply-to
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=kVwTD8LGBaIOfxPJGO2l3A4K13cqj9FyfT4FzSK2B0c=;
        b=HWUqc1EYStqpRcxexOFU8ugaDobRZ/eBpD+2B+3fAqWbAgGq8X6vkfYlMqYhZ2so0f
         /3IK5KPdsnI7AGoOvHbkFB07SIkdOi+WGTS+tz3BZdk/M9F+fQKdGScPysSpw1+4lilb
         eM71xT4nKfgD8DXHA3w0K66++J6SrNAN0kDmkTVmWGpiWM4fH4pR2BEkc2owkzXby39w
         1d0m9N0El9+v8G861EH5KQN78rgQj0kKeRzR3kXUIcATlgkgInHMIRC+jxi7RLhs1abU
         WvSmldqPcAnNG20qKVd7+RtBKGbNi97guM0c5TYScjjCwK8nRE7cCRh08gwBp6h4GPKh
         Gj5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:organization:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kVwTD8LGBaIOfxPJGO2l3A4K13cqj9FyfT4FzSK2B0c=;
        b=FwcYG6d2EfTX2FE5AgqaaYNiTKyVQ/Ms9A5jAai9uVmU3Oxn0sN91EkeAhzm9t+j+f
         2yDEvodZwLADQOicv7VjhuVDv/JtY24MV1kfD+t4usk4YyqxSOOl9EGndGtX6gCzUn30
         U6mM9GaCB1tpTVYGIFmnmRdDEqRF26QiP5BPtWGkOOF8GgvtTDHD2hsBNoYUHiVuaKfr
         ZBm9soBWmp+qjwB/oNXYpz7/KRtqXjsetP1gktsTg8/gQ3xtXXMJ3FhuS8KpQRXBGcfk
         NRfrP2IzbQaO1Xtj2Z7ualtKIGKqVP9/9LWA6MIRpOkwBBhsoC7MjcZiJizUZ1S7CxEF
         gNZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:organization
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kVwTD8LGBaIOfxPJGO2l3A4K13cqj9FyfT4FzSK2B0c=;
        b=lBCt6Lb/SLAhp8ui0vTwunkkIP5OGKvmA/2l9fq8xRLTmbeGShbkT44mJnm59M9sNk
         LX9bIjPjaPi6tJt25BchBCxNnlsz49dBDzuQe/uhf01lfu0Nm2er9A13KTqWj345G+ec
         qd6CUUFg5BrP5PjUYwbsceGteLoqJdH17VdGuG+JYuB87HJsbPvqoEb/7yrV2Ve5dJ5k
         AL4uhY38QtbBkWKewdLvQqCCKYjuvzDlpAgX4hjwMdfXkv02sgLHvVeXTYk4ApW0DgsC
         MZsf8e9NtqEI9V1ChvXUtWmQZ6KIzldxmwVoPuwCyr/rg+E94ZxLilWK830gv2IDhlj3
         plcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXSoMCBR0hl1VPqOUyMgAhBBRHonZBiGBqYrdVt7FWvdfeAJPsH
	a9hbcmuC+Nrf6lpfpN2Q0fE=
X-Google-Smtp-Source: APXvYqw5tEJf5Syzo/jheaDhX5edtuaru0m2Kol7sCNHdpDbhXRICvcL0KlMtukDjURYJ2dARpM/MA==
X-Received: by 2002:a17:90a:3225:: with SMTP id k34mr96513224pjb.31.1564144552035;
        Fri, 26 Jul 2019 05:35:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5f87:: with SMTP id t129ls10367129pfb.8.gmail; Fri, 26
 Jul 2019 05:35:51 -0700 (PDT)
X-Received: by 2002:a63:f118:: with SMTP id f24mr93322877pgi.322.1564144551547;
        Fri, 26 Jul 2019 05:35:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564144551; cv=none;
        d=google.com; s=arc-20160816;
        b=m0tBlPRiPcaOtdUd49ssJBKiADBQ+fFzCkRjBPGngJpTby17lgNAxPcTG18MoP7THL
         3I+D5HIrR4045hqENC1XejDR+0cHgwbo9GFDF/0UbkPOevd2QFMO4K0yPWFdNWYsFbjO
         0jYXJpwoxk/YJ2MDQm+UKaOCTL09G0Re5Ax9o7fQVhNi/tMAXbRqoGA0+DpcsDNrjZ09
         dUgTcUMVvgR7FKT8/3hdq5PPnbV8hlv7XSqPkXQ0/EUXtn5PacuXfikdOViuclEWTkVV
         udfp/75nBLK4XcpBxK9JYXfGvEtYQPbAnFpPq2mnRLuMZlG2O9kF1uw3fkxTLiiGqGpT
         GeQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date;
        bh=JllNJc/uMQ6FVedcGb5wpr4jdm+h8W6n7nDOAnzRHx8=;
        b=vSf7e+9FV1MVFM44IbRUClRXg/SwHOCrANXW8WkyglpWN19P5vqtOCGLSJs8WiJuTl
         izikLSksNXQetUOFXw4uLEpDESjsZZP1LUArjy/RvPLRcP5UtfdgMSWKKbpJHTRiJQgd
         cpNAec+olwqMdEJIATwKpg4hvp9dGk/cateyku16elegE+wqw3nGBHraCWP9F2uVzBFl
         AUtE1f+aJoAQ6WtbNGeSX4mL1NA81rpQ9MX71YyJbj2FraTYjLHxssPtT+Uv3Imp3t+h
         sft8NnMpJjSHPdAjPanRqHFpVkCKs5rAi3Xm05cqbRTk/mfbTXtp7Yu0QQ6eRXeiWprY
         pWBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id s193si1915379pfs.0.2019.07.26.05.35.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 26 Jul 2019 05:35:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gondolin.me.apana.org.au ([192.168.0.6] helo=gondolin.hengli.com.au)
	by fornost.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
	id 1hqzRg-00040d-2g; Fri, 26 Jul 2019 22:35:36 +1000
Received: from herbert by gondolin.hengli.com.au with local (Exim 4.80)
	(envelope-from <herbert@gondor.apana.org.au>)
	id 1hqzRe-0002E3-BI; Fri, 26 Jul 2019 22:35:34 +1000
Date: Fri, 26 Jul 2019 22:35:34 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Arnd Bergmann <arnd@arndb.de>
Cc: davem@davemloft.net, arnd@arndb.de, omosnacek@gmail.com,
	ard.biesheuvel@linaro.org, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] crypto: aegis: fix badly optimized clang output
Message-ID: <20190726123534.GA8490@gondor.apana.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190718135017.2493006-1-arnd@arndb.de>
Organization: Core
X-Newsgroups: apana.lists.os.linux.cryptoapi,apana.lists.os.linux.kernel
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

Arnd Bergmann <arnd@arndb.de> wrote:
> Clang sometimes makes very different inlining decisions from gcc.
> In case of the aegis crypto algorithms, it decides to turn the innermost
> primitives (and, xor, ...) into separate functions but inline most of
> the rest.
> 
> This results in a huge amount of variables spilled on the stack, leading
> to rather slow execution as well as kernel stack usage beyond the 32-bit
> warning limit when CONFIG_KASAN is enabled:
> 
> crypto/aegis256.c:123:13: warning: stack frame size of 648 bytes in function 'crypto_aegis256_encrypt_chunk' [-Wframe-larger-than=]
> crypto/aegis256.c:366:13: warning: stack frame size of 1264 bytes in function 'crypto_aegis256_crypt' [-Wframe-larger-than=]
> crypto/aegis256.c:187:13: warning: stack frame size of 656 bytes in function 'crypto_aegis256_decrypt_chunk' [-Wframe-larger-than=]
> crypto/aegis128l.c:135:13: warning: stack frame size of 832 bytes in function 'crypto_aegis128l_encrypt_chunk' [-Wframe-larger-than=]
> crypto/aegis128l.c:415:13: warning: stack frame size of 1480 bytes in function 'crypto_aegis128l_crypt' [-Wframe-larger-than=]
> crypto/aegis128l.c:218:13: warning: stack frame size of 848 bytes in function 'crypto_aegis128l_decrypt_chunk' [-Wframe-larger-than=]
> crypto/aegis128.c:116:13: warning: stack frame size of 584 bytes in function 'crypto_aegis128_encrypt_chunk' [-Wframe-larger-than=]
> crypto/aegis128.c:351:13: warning: stack frame size of 1064 bytes in function 'crypto_aegis128_crypt' [-Wframe-larger-than=]
> crypto/aegis128.c:177:13: warning: stack frame size of 592 bytes in function 'crypto_aegis128_decrypt_chunk' [-Wframe-larger-than=]
> 
> Forcing the primitives to all get inlined avoids the issue and the
> resulting code is similar to what gcc produces.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> crypto/aegis.h | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726123534.GA8490%40gondor.apana.org.au.
