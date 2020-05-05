Return-Path: <clang-built-linux+bncBCLI747UVAFRBM52Y72QKGQEMCYIJMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7E31C633A
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 23:40:05 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id bm3sf116204qvb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 14:40:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588714804; cv=pass;
        d=google.com; s=arc-20160816;
        b=J6kt9EY5kfg0tR1b/MoIZB+rsF49wnR5Sjwdu0XDpM9yBOYEA5dGDsJVKW+ZgMw4SP
         XPf7hnwJaaAKYVVENId0hdagR94gFCg8Xav2tE89V6RPIz0LSZZNQ/Ge6vVs29zOyFiV
         j1dSnv2sHsOjQj/QlUH3gvgxyfbbnnzYYh1mOE1sO6cVF8CrhOfBJBXcbJOc5Pr1F/pn
         JZlNpKICrnoUoNyHIjBnWsYbWkdPJdlm1KQC8OAXPVAcTRkcsoSABAMpGR9HW/fpcG1R
         pr20Qoy0l/4Ytm7ULWy+YqSiRroZ5uErUdoHzTnnr0THnA20BF/o/k+m2PncbwEutclV
         Id8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=E0b00HWsVzVXvgU5Y4mejzIOpdWtoYTye9CktflFctQ=;
        b=m+MZ0qiX829/kXliVKjPQUKdESR8Rt45Jsv7wBWbcVNeZS56zXo/bzMeTB+9W8WxpE
         oR75O9ifOBm3JdpBkR+wcpz95hETa/WRqmo5o+60D502NH+74+AJUCal0LsZ7yOxuSm2
         Xr8EGRwbQJUt4kkjLwX3Xr9Q3hb6/1qDXEHI7tinnpuEdxLqDL0jTcHM3825duN/IXMb
         ta9ANsLO7u5DzdoprlQRXqnIoIyJWX+hM6NLWSgUM0zhEbnUw2QRrM5KytihVpFAd/S1
         R2q9vZyOKhJgcBwFiJkz05dmVkyI/F4YL7usSrTy6Og0bc07l04VQ8SCCsURa2AC76P1
         w4cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=gchBw5gG;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E0b00HWsVzVXvgU5Y4mejzIOpdWtoYTye9CktflFctQ=;
        b=UNVYqsl9ZmeAHlW6AcZupE7tQlcF/GvLXtiSmhqNFBrkD12lK757svU9PHSFMl8vYb
         /kaxNhY+7xDNHjfIR7Il9FlKSDQo9Zif+c4DyzamUa0uzgQnp+Ph/cVYiXOVBIOXPD7A
         wkD5QUoTeA7/bq0x/1cUjoh1SiUH0SctNOfDveMnksiqQhxAPTtAyooFGC2tHO+DUzPI
         jyyqUjO/KjCqWP1pQgMSjBplxOZyPKvvkZRDyx/Cz2Jo4GgW3ABhoGPH36A9gPCWgz/Z
         Ty3pP6A1YqgrZ3AShYoC7lB1xZVxvk81WSNMx66XwOIsZIGxRyzacuPkPzimsqtHGdhY
         7kjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E0b00HWsVzVXvgU5Y4mejzIOpdWtoYTye9CktflFctQ=;
        b=Ym3ZR06gPPDrkaqTcO+IAgawNc70r7QKuvCZTturYl+czITytp8CToWw+EhFzN8vlE
         LP6FB7f3FuSzO+fH+uu/ZTuamXv86z1K65SYE0ktdZS6PU3eQBAp2XgHYZzlsetNGi+B
         LpOUs6R0jBQd9XkSIa4gvdiBXAnJXejd5gfTI8iZlhFdzvB4ZAQV1Ejdzo4gCrCGlYwI
         tkxnYl/4HivQOgbEEQ02Ercio3698QFiEg2WnMa84oovkf6r0oG5hboNMC51wr2xXw3B
         hf04/knCdn4nVMvOxPQAbAy1DgiRp8YzVJAgN/Tmp59ErVLEbfpOtD3+nw1lFeQcCp7m
         SAdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubhz55pUOeizOf2lVX9MFv33St/aaw1UTLoTc3d8Uh2kBIzV26D
	k8IHmXOtRD/fX83NS6yAMHw=
X-Google-Smtp-Source: APiQypJojtZKbVOaVCt6usbnyTXvuQoFHhl+bo/snqRm5YRYmaC39d8ajY9Hr40KTW3tv3WKwoIViQ==
X-Received: by 2002:ad4:4812:: with SMTP id g18mr5166522qvy.120.1588714803398;
        Tue, 05 May 2020 14:40:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ec06:: with SMTP id h6ls188929qkg.9.gmail; Tue, 05 May
 2020 14:40:03 -0700 (PDT)
X-Received: by 2002:a05:620a:62c:: with SMTP id 12mr5877195qkv.234.1588714803119;
        Tue, 05 May 2020 14:40:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588714803; cv=none;
        d=google.com; s=arc-20160816;
        b=wU5p8lEIUyK68IZiCvB8dkioEW3JRoHb57ClT3mzra7Jq9lrRTG8fp38SINb+9VGyq
         Mw3ZILwNImKNjImRp1BqqVc//BR+tWYJ0fj2HxhcJ0jYEelCYWddTOUr7gdfoOLLy2Qf
         0U7ARoWH3SN750HVvCWZVwc5GWV2Kd5EXXpP4NXMFWd6cAbIKSoMEKZH7GlwO62xW+4o
         95xPuF2zEpjeWV1NeVV7UsGHEGpwRnKP4E2UK78KSHhoOkPCbtptYZ85c45uwYxfk+IQ
         kC4V35grvaOXcWjuHgIc3xHQR7vBVxK7bXCmaoT9lGQmOVJnJgdjTbRCrixF76VHrZbD
         zRWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SxtSMj1SRlE4bCJJlON21QTz7VrwGIEqtHT9DpQ9TF8=;
        b=P0DgpJo95yTgi0RYnk3rhfzJuQI+pOWd6t8MbmY0EK3y5hm4ICTSqL92mua8C06d3p
         RVvBppPH8cGOz5vvtNppSteqznYoHHQHfBRCRnjMcpM+1S9q+V7YndPL0kkBdRPqiLXO
         6Szq2EmwI7KT9O+1iOegOL5BfhOwZuZfz5fg33EYdxenpKy4OfWfrzhtI05WOz+s0xTX
         8HlJvmmD1qgJEBYRR5nFhXXWwlbHLXf0JOHrAXGE+5jSTizjzclQyx1o5EmUAdRqv6Pq
         thVBjLDAmAKZ71WPa2/UmipdTn9j9B+nF4/3xf1I3NHDgw1yKNjzJmAiuEfqQyYaQEQx
         DpCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=gchBw5gG;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from mail.zx2c4.com (mail.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id f3si7785qkh.5.2020.05.05.14.40.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 14:40:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 2c5f1dfd
	for <clang-built-linux@googlegroups.com>;
	Tue, 5 May 2020 21:27:26 +0000 (UTC)
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id a76a9822 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Tue, 5 May 2020 21:27:24 +0000 (UTC)
Received: by mail-io1-f47.google.com with SMTP id d7so2296019ioq.5
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 14:40:00 -0700 (PDT)
X-Received: by 2002:a6b:7114:: with SMTP id q20mr5360364iog.79.1588714799206;
 Tue, 05 May 2020 14:39:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200505135947.216022-1-arnd@arndb.de>
In-Reply-To: <20200505135947.216022-1-arnd@arndb.de>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 5 May 2020 15:39:48 -0600
X-Gmail-Original-Message-ID: <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
Message-ID: <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
Subject: Re: [PATCH] crypto: curve25519-hacl64 - Disable fortify-source for clang-10
To: Arnd Bergmann <arnd@arndb.de>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Ard Biesheuvel <ardb@kernel.org>, Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=gchBw5gG;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

As discussed on IRC, this issue here isn't specific to this file, but
rather fortify source has some serious issues on clang-10, everywhere
in the kernel, and we should probably disable it globally for this
clang version. I'll follow up with some more info in a different
patch.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq%3D034%3DVw%40mail.gmail.com.
