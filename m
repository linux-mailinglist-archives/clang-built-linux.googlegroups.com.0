Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM56Y72QKGQEJZZZJVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A3F1C6364
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 23:48:37 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id s26sf204424ioj.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 14:48:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588715316; cv=pass;
        d=google.com; s=arc-20160816;
        b=jSu4DsM8UztHA3RZHqkhnWKeFEGp8W5sUF+7kGbIohhRBYsznudDKWZEsO+yVtyo1s
         pYZt7HyAQmK5nM1M+DpK3wFjunEN3srSqgU3qZKUaAEJJrZS1gO5zy2FR5MJ80Rr3Ds/
         UgrhuX5kdBdc0T8XQKDrOyhYTkofIlcSNGaqjp7J2yvUKN4nHglzfzte7/XGTtSXbJEV
         JPurfevkPx6mOsHQX9TgP3goGAj6wWcwSiCwuT1IqYa7+FstEoXGBMLH/h5gbaI81G6I
         Pkc+zckhAGI8c40jHY2sitbWxzKzRLCgXIHNKoJzQXSPbe+ZIykxgWDoTEcHDa2eQ7DG
         omFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9squi8J5VRUwFME/xt8UcKFRcdSsjobyptlkeAlR6rs=;
        b=0jFZLF5gpbIM1Hz4oLjYEKi9+OttIQHjg8SFunZkeOrQ9b9ii/KE7wkG0sTShfohgh
         bYHZ4iLHgI1Y4XvT2HDEgmbbHhN3mX9GiPxQlsoRLFUieIA3MJ2eKZD2nu9BM3gRZNpu
         f4Ux4VYHlFMqlvx6Qx8afPTB9gu2mv+f0raVs+47Ed+fFE4yWKMWDFtZm6V7vvDj06P2
         8k70BkLQ01ByA48y73MuCV+WOLJxRDLY/D1xC7qbzzjZzBCKrcXJDyTC6mEuB3eWd7sX
         1CGtp1fVsNyQZUDws47i+8v553uB3G59HM/QBoUvBFmjIagwRbmq5l1zzWCzVDuIeSmJ
         u5Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LTTvgtHC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9squi8J5VRUwFME/xt8UcKFRcdSsjobyptlkeAlR6rs=;
        b=HZubQXDUVeJlMOQT91H0zcrEOJ9VOCwCvvpZXgwH+BGLXVITUAGuVFR7pm+Y7meYhl
         oa2TryUslElPDv7MifxWjcP0Z4HJ0XPG/YbUJvJ5G3T1obpIev/PV3ve/fBEODwFxK5t
         kFVU2cTOJAbtNVUmOBVJVEvxryzyIJY6lJXtFTPRdTUlbYc57Fz8bNxIDgcEcm7slyEz
         SUPt7JfGwkKEO6xdxnGyPnmk5YoaWxmO/bV3yOa9OTEtaiTJmcAto6DN50yh0ZyE/ws7
         aFHWYFYdwdImpZLYOq1FFFXSfvvo8jeRBvlrHhxSVvzL1kX5Nza0u56m0LmlOZBXqE6m
         GlcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9squi8J5VRUwFME/xt8UcKFRcdSsjobyptlkeAlR6rs=;
        b=TcpD5eNzgBCwLBDGMwuuMgjBHbfKqPpMU3QE3DsE+eXDOg+Q1QxBYlZnBHMiYzLp5R
         DsiP5s87TL2n6ZNk38Gp7xN9xIHzU4Rp7yMvx5IJD+voxc5BF7GyaZ0NNAOBlOiFOtAB
         WHNbZBOCiOG/2F0O/MrCIwSuu6ujvjNv03BLZXrt/7tWOvDwvWIHAHEEhYJqpmC4fUQx
         y2Djh0atjli6brYNwmWjftPnDODKP9OWtG21yPBDi9o8RnYPwWWQB6UwbHFJHKjYI4oE
         qmVMqGQVvY41JEicSKc1F/aOkqFwyKBWiTZGvVZ+aM+0xljzVnY/OXCchrwzlY2ueno4
         QGNg==
X-Gm-Message-State: AGi0PubyOztbOp4bXZYX/pbIMSbOD/KnWuxPWRluxn3ZzWDr2iW9Xu6Y
	CqJW/ZN5qOYTv9mYhA3SZ74=
X-Google-Smtp-Source: APiQypLPBeilty8j+Z78lJjyxAzIbtzFZl1KISa5lYz/YM855g/xSQ4ESdXtQDYcSZc9Qf47QBAWDw==
X-Received: by 2002:a92:4989:: with SMTP id k9mr6071659ilg.104.1588715315768;
        Tue, 05 May 2020 14:48:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2186:: with SMTP id b6ls1313387iob.6.gmail; Tue, 05
 May 2020 14:48:35 -0700 (PDT)
X-Received: by 2002:a5d:8ad9:: with SMTP id e25mr5679496iot.37.1588715315385;
        Tue, 05 May 2020 14:48:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588715315; cv=none;
        d=google.com; s=arc-20160816;
        b=bdJLbRpQX1bbfjrYCmGthjrc+FlIVH983N9QbxzPSL0AiayabWRRh5u2X85s7NOJs9
         24/g6/+ciii5d6hFfWgspXBcE75bEAcYsG0IhjRSmusJ/S0w9IDFTyuQKOzlN83Guqe3
         iOWHImT2dg/+5YaGMTNW0KbOq8r0C31WVsuLftvCvVQponciB1OwsyvbDLDVxsj+XJ20
         OhRrQIjxRQOSMNrK7gENBgaPg58Gf6zOJa29sQc+Lm6THRqdihPGfuNUpXt3A/eho6wY
         3tzjA1jIYkwTnCGQtuHIQawCAY9ptrzB5Ld1PIZnjotdBCaqptF4F5slbUbH9I8l/d6Y
         WPvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=p9AA4xWTEKVxtYf0LEjgHn4IlPJGCm4GiDnieohbszo=;
        b=a+2iuYWKHjCgl4o3IrrDAKEfLuwH09bvW28h3dJhoj2TQTMxAaTr3jBC4m8oS9H32Z
         H+CRe5dJI3++FFyv0lnCH1ZOs6H7/HddqXjyEBu97qTJtT7KusKKIJb2U8ART6KvSUah
         siCrBfWktDvew4s/6u6CLBYoPxw05Fsl26MfRX3NgjarjYTKO6IwvMcVt1vnE1vSKSQW
         HBxOZliWgRXYLBwOS5y0v+tjATinuuflZGr7ettKjnW8B/PH0+CEUJzNDC6b0RezCAa8
         5bZS2aPn4qgiTyKHUUsFxRtND7eGRQM2h1YXVg+YXwI3bfr9q8d0TAmtT1Nvw92YYi94
         znyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LTTvgtHC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id y87si2343ilk.0.2020.05.05.14.48.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 14:48:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id f6so2230pgm.1
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 14:48:35 -0700 (PDT)
X-Received: by 2002:a62:146:: with SMTP id 67mr5115544pfb.169.1588715314449;
 Tue, 05 May 2020 14:48:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200505135947.216022-1-arnd@arndb.de> <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
In-Reply-To: <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 14:48:23 -0700
Message-ID: <CAKwvOd=OiMUfbNVzQ-Z-bLrsqvPKgG867NBX379rzop62TB0-g@mail.gmail.com>
Subject: Re: [PATCH] crypto: curve25519-hacl64 - Disable fortify-source for clang-10
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Herbert Xu <herbert@gondor.apana.org.au>, 
	"David S. Miller" <davem@davemloft.net>, Ard Biesheuvel <ardb@kernel.org>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	George Burgess <gbiv@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LTTvgtHC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

+ Kees, George, who have started looking into this, too.

On Tue, May 5, 2020 at 2:40 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> As discussed on IRC, this issue here isn't specific to this file, but
> rather fortify source has some serious issues on clang-10, everywhere
> in the kernel, and we should probably disable it globally for this
> clang version. I'll follow up with some more info in a different
> patch.
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq%3D034%3DVw%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DOiMUfbNVzQ-Z-bLrsqvPKgG867NBX379rzop62TB0-g%40mail.gmail.com.
