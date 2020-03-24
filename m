Return-Path: <clang-built-linux+bncBCLI747UVAFRBAVJ4XZQKGQEWXGABKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FA41902EE
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:29:55 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id m25sf107722pgl.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 17:29:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585009794; cv=pass;
        d=google.com; s=arc-20160816;
        b=trgQz74TMYP1LlNB7hl0r0HpEjJ1Kk7xr3ZmzJ4n7heYtuhMl1zfCoTWx9VsocoD4W
         Iia5SAaKTummMrqMJngUfZcHt4PHpwQxlROtH1xx1OFXBWpH7GIDre60IZXMUzkQpBqT
         kq6SN/n4JQSlXQl81v+ipMM9bPsHNeBDTsTnXu1X5BaKjztT6FLwydhMP953ss1DTbXi
         ENQAEcKLiw0QqPKyPZDEb0fjS+HYoXHFYruRtg/DuRHGL2XSk/ag/aFWCMwAmsJySltX
         1jjBV9PDN9CdRC2UEFDpOq2ELxXMBIX9LlWfQyCYmfa1Ct/y5/maF05E8a7VGJ43HY55
         pzag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=lHLUAN3g/AHwGJH/mPeFaMz9XIjAHKLQgu/Wmmx/Iw4=;
        b=dcAM/UfPwbGvzYdxFX0k0hOpjkTESN+awjisa231j80jLTY06l/HyEfImJngOe2a2s
         fcdh3nDDMql/i4/w+Fu+p5smCNwLrHFzl4heFo7P3PMg16t4K/Wvr5NyXaN1v8jPNLLj
         59hVOGeGhAjVeGs6xkUoejPpDZuyTqc22OyYYxRsS0hFaP96hDMz/Ir6WbaA1E0y5HuW
         +HYrpnMVG5FfYgEnF4IhmCe82tPSPDHDKjJcrBsz0ihx1UBXYcw6T99UKuKMZzH5gMFe
         z1MGxC5tfk813Kj0mjXqPkXvktMkfcuxZQ87UY0UFbq7Uw9yiEA4wDqAKw3Ywcc116aZ
         tQqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=Me4q8UB5;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lHLUAN3g/AHwGJH/mPeFaMz9XIjAHKLQgu/Wmmx/Iw4=;
        b=oLRRC2GgacNoxn67sJC/UuX8NakQyQkOg886IIqtmlZ+rocvFaFxo/KgwlXvHCmqZ+
         ktIAsPHwvvyrji6A11WWfnd+e+S20X1wE/PxkU6ZbAHj7DqunAPlS3gwt/EPRKVOC/cJ
         y4rWZBj6crFnamsRsmH/eHuaCRInlcIcLQhqX6JJ5aLrFPmDH6V4AGLvlQCDo1c6KgFn
         G7fPn0xLEKGCrNZqdVz70RlYD3vVgBQ9NO8XiyGJ46dA60umSX1duVQ8cPdMcRwtpZwS
         c7Wv4RVz2KM8TkQ1eljiXI/y6qwNJOQtYb7A5h6L5JI5Y+ljvgeyC1kXIErdxMkAmmlU
         B70g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lHLUAN3g/AHwGJH/mPeFaMz9XIjAHKLQgu/Wmmx/Iw4=;
        b=Ji9cGV0fB0ahTf9zB3Al/vga5tL2aFaSMKGCXzYowjSaOStGfSNZrLsMWgDuiGHxjT
         EiN7yoS8fXrxF6e+j9ccgDgS9ZxIM8U+HOZkMVEZeiaHBp8uCWHNsGFm1vHHY2kmQZsD
         To/Ar7Dmh7h3z07Q6aYSxppN05T8XMR2BEuoLOoCsz9vsKTJ0afRmXpZd9BjJee3K/Ef
         k5KY3qqj+6JmwN4XeD70DnHGHcXF4hLr/aeRdubsC2kYP3yC3pt/qWNWlmyDZL37PP81
         UzaD6MU6PMLyr7QXY7agQRl1LsNVVJG5qBSrsIu5UwA/RsLGXQFXGOeaQpQmX5mrqJYx
         nBDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2J6adSzi6PeiGmaq++SsL8afQ/JTH5YMKMI+qC1DX/aCMYHHJt
	GxJNSStf0fHdeb+oAqtmMdY=
X-Google-Smtp-Source: ADFU+vsS+94iOgt6skhFKxRzrJXkByfcCyBSS+JGFyozs9wGhC1yqXUXJke6dehNN4ZBDcoGRnXCzQ==
X-Received: by 2002:a62:7b84:: with SMTP id w126mr27181500pfc.202.1585009794088;
        Mon, 23 Mar 2020 17:29:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3087:: with SMTP id w129ls8574378pfw.1.gmail; Mon, 23
 Mar 2020 17:29:53 -0700 (PDT)
X-Received: by 2002:a65:5a0e:: with SMTP id y14mr16081419pgs.90.1585009793634;
        Mon, 23 Mar 2020 17:29:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585009793; cv=none;
        d=google.com; s=arc-20160816;
        b=ocaa7nEOZeBWUbUW4znhu79fuT/I04E9Cy4xi9J27jznMvuCZqlrggGwsO0cnUQOqB
         90dvAS09s1un44fKrLS7uIYa8SiJ7uUJuG9hsX2qOUCwig+J7vH10WNXj4hftX8a1yIX
         OlHsBxMg7JvqB/LM6hCvJ1dOQEVDnHn8sy+vIb3guPSf9oXHhH5PIGIucKi4XEpT/E3G
         FdIO1ADMm1PUs3W39VMtxXalkcjYShHlYIBnXrnx6sUnm0/U2ixBNV+67pykLJ1WTseI
         JO1F93XXWRzrJ6j9bzF7UyR6N9ngb44+08zRBH9Vj5uP1T7phS3uKU9rotlSnr1OyXqK
         Ye3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hOcgt01lLyAStdfq+iZ+fVBEY4iwJOedSWMazJxt4Fk=;
        b=0UWs1I6Lt14b4AWXJCFejpluTCCDcb/8iG/A1tIAWBpPc1RU6PtwLNdS6FdRl4F8rN
         7QX+MNz2qwrc1V5jntrB2RRoAcL1JDCQMXoKW4kz0jOLrTKwZYnVqPGCnJCC2L2T0epr
         aJHLjOxT/ZzOzGZYfqThdixLIuio8f4a/JZPkyA8W7YTUIMQbiJx7k6oOnGbgOGEXlHM
         nmT/7yLlFr34GVuOfdiqJsqvdqkZU6vW5WB2nxswEHqIYxU8LhSZmgUxXFT5AXlu7atB
         NYIj8Xb/kIwjJqQTQgFHouO2TSYkrdZJVmqgRgOl2FnvomTWykf87Xerg1sqK0bLtv96
         rSwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=Me4q8UB5;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id c125si459719pga.5.2020.03.23.17.29.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Mar 2020 17:29:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id a13e02b8
	for <clang-built-linux@googlegroups.com>;
	Tue, 24 Mar 2020 00:22:47 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 3a0081ac (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Tue, 24 Mar 2020 00:22:46 +0000 (UTC)
Received: by mail-io1-f45.google.com with SMTP id v3so16335409iot.11
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 17:29:49 -0700 (PDT)
X-Received: by 2002:a02:6241:: with SMTP id d62mr4216457jac.86.1585009788671;
 Mon, 23 Mar 2020 17:29:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200324001358.4520-1-masahiroy@kernel.org>
In-Reply-To: <20200324001358.4520-1-masahiroy@kernel.org>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 23 Mar 2020 18:29:37 -0600
X-Gmail-Original-Message-ID: <CAHmME9rdoo2Q3n4YA59GrVEh8uaCY_0-q+QVghjgG3WwcHkmug@mail.gmail.com>
Message-ID: <CAHmME9rdoo2Q3n4YA59GrVEh8uaCY_0-q+QVghjgG3WwcHkmug@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] x86: remove always-defined CONFIG_AS_* options
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: X86 ML <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	"David S. Miller" <davem@davemloft.net>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@redhat.com>, Jim Kukunas <james.t.kukunas@linux.intel.com>, 
	NeilBrown <neilb@suse.de>, Yuanhan Liu <yuanhan.liu@linux.intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=Me4q8UB5;       spf=pass
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

On Mon, Mar 23, 2020 at 6:15 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
>
> arch/x86/Makefile tests instruction code by $(call as-instr, ...)
>
> Some of them are very old.
> For example, the check for CONFIG_AS_CFI dates back to 2006.
>
> We raise GCC versions from time to time, and we clean old code away.
> The same policy applied to binutils.
>
> The current minimal supported version of binutils is 2.21
>
> This is new enough to recognize the instruction in most of
> as-instr calls.
>
> If this series looks good, how to merge it?
> Via x86 tree or maybe crypto ?

This series looks fine, but why is it still incomplete? That is, it's
missing your drm commit plus the 4 I layered on top for moving to a
Kconfig-based approach and accounting for the bump to binutils 2.23.
Everything is now rebased here:
https://git.zx2c4.com/linux-dev/log/?h=jd/kconfig-assembler-support

Would you be up for resubmitting those all together so we can handle
this in one go?

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9rdoo2Q3n4YA59GrVEh8uaCY_0-q%2BQVghjgG3WwcHkmug%40mail.gmail.com.
