Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWXXT75AKGQERHY7WNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 38470254D17
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:30:52 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id q89sf4596548pja.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:30:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598553051; cv=pass;
        d=google.com; s=arc-20160816;
        b=guPDEVmx1jWHaQRZB9KwL0kdhXUea/xupajoBqqQbJeRrc0YYlpfBLsnlaMlsLrvNo
         gvZNoAVDZKZTyY19xR0mDTyGs0mIy8O7omIJwIUD22Mx894126TaR2UwbAIHeU+hrE14
         SP14yJIfgfSUi7BQN/0InLaA8SiU1OOCiPqx+JRV8iARGKa9K+OGKhRb4qVifZQYbQ97
         QV//jQkEjxObfBaI599Hl8S5zMobfMsW5sqlQimoWXgwpBtLJJPWno0pLzlNdCYjBULK
         1k1qhHBEaG8C9FjgbO4ffWg6gKJ1hLGTYpiHMctMZWJaVQb3uM/DQgQR2BxJiU+cxIlz
         uxUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Oy4Oi402Oc6tNalLG3VRsAZSVzsNKgh7dwrfD03eVww=;
        b=mf9MbjoCk5LE+MHoF/w4LRtzFNyy73VFCVBtfoXLazC8v9Wz82kcMFZlrNrNJoUPVd
         tCowylqr6ewhwQcGFD+Tdy/+98bXgK2f1q5aVNXQnLDw7QMEzhnJhct9X4ukv67gW7TM
         tXDhdA8IGi8cRqsY1x7d4vsHv0kOYjkFxNpvFnFVU5iTkQUols7dOBAQnYt1IXp2/jJ7
         azj2B6cCnuMTzZsYkK3YoUlGPtGi7ok5ICcmFT0a0kbO/DVM+306WO8GXFK3ucyi4kee
         yHXwQQ8l9glnH1+CCAFtg8dTFbjRWpxMW3qMNPNYRpmTYvAZwkcH2n3p/2ULTQ1VHmw8
         ABTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kxRn8GVt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Oy4Oi402Oc6tNalLG3VRsAZSVzsNKgh7dwrfD03eVww=;
        b=GmlgdkcVp+yhbZAAqgWVN8a5NU1oDjHo9jkUgw0Bh2/22HPR7iIFbhwMOFbFY4L/tT
         u9ugkQHpSD8q/6dM/CtrM5LAviQgppjtW8al28gNeCKSR4q1BE46+Sq22aFRKvwBFOcs
         O4tCFsin2VRbU1LFEo2IM3yjQSLTEEg83PlZCwbD3XNc86+UVcZaAkkAmz+bGevOX+oZ
         VNXDRbscDQ97/bve7FkKvcg+/EJHHEbF3PxS60J4rzyHjnw3XLuowaZLxZABAxcW7wRR
         R2B8OhjND+M0nJ087CVypHWc22U5BvZhl+D6acrrDtJf5U0Ay3bQ0Cz9PKm6qg3Ifw3X
         5TYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Oy4Oi402Oc6tNalLG3VRsAZSVzsNKgh7dwrfD03eVww=;
        b=P0i61bU5YGVC6PN+iKN9LoJKcn+wbA6vBNHAAxbxtLuuFCmXfWEw/NcRMk2+H8CTff
         X5Xqee11xA9ZlI2LozIdg0dRWkh+tVS9TkUcrMFbAc5re9OAdPna2vohHcS2wsI85FVe
         l1sPh2AvIew3ZPhwV7PyZ7GvLTAsBLf5f5Q65GgRCY+KnwYNhBajJBQFIU0MD1a+lMTD
         TgnFosE/Dy67zm8oEatb6e+ywrvpQJHcpnu6Dr7UD6d1qqB6elmwVF+Lq0j9qTr53fFi
         3ymBlUy3GeZypoqkry3g45jiWo/GoVJIeau1Ak4cqBctcelYl51Y8Bd2qbIcIkMpOs/6
         3Uhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bR7ufCkPVty9TXMIn7h+YUphMVRsiM0lBIg5ku0aKksM6VbFI
	dm88i7k1p9sj+JV/ah8BeE8=
X-Google-Smtp-Source: ABdhPJzKqs5z+QKbcdLZlnhlMYtf6ytPLvwo/atTfOnit57DiKXHdeRr1W7502D+8u3wQTGdaFJ7Kg==
X-Received: by 2002:a17:90a:8817:: with SMTP id s23mr153245pjn.158.1598553050910;
        Thu, 27 Aug 2020 11:30:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b4c:: with SMTP id g12ls1613679plt.7.gmail; Thu, 27
 Aug 2020 11:30:50 -0700 (PDT)
X-Received: by 2002:a17:902:834a:: with SMTP id z10mr17756607pln.5.1598553050477;
        Thu, 27 Aug 2020 11:30:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598553050; cv=none;
        d=google.com; s=arc-20160816;
        b=KCXimsDzKQpuzoJ/2Lj9j9EBcGsYr0lmxWp1As2lOnHwrFKKsZvj/hs2UGi/HCenZv
         /jtBOd3sqdtRW4mhDiw9uXptMz1bJkOA850BQ3FcucLbSMWHCvGpPhWmxkqdciH+peVH
         dYRPEUpDbjULZ2Cxb/V/1bkb7VhsdtL5UpAUVStKF/U+HMo669BZFzafBwvASN5WHYMc
         orPUJATgVc8Q5CMv7Ei01rUH0ODj45vHmStrVD/eVCYRug2WhbWubebNG7M/CygYy/dR
         x0LO6c1tbQ5B1GtNGH2BwvsrL3ql5xK7SX2s/LCd6XbyYRV/1l7WLlt/KzFiftgXQjZ+
         4o+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3fcEiNsK377lJ2U8rpSs38iDBS2ZV98GwCjqRo1vxUY=;
        b=JvLFn4x2QSH0odOTo26Cg8EmI6uSG+dI29UeHYHho5EFAwCn1G87Sbk2MSX/LEJiUe
         RtT4wAagra11pSJ6nVn4R2gslRgxtPGcTcarKpdYMlUVcTAlcqeMVVAZ/4iZK72aKCjm
         j02KV1u+wpvvrKAeB5lDuFIvfpsdjPgCoOcQqmaNVxS1GnkuEvU9xWH/ox0TYZed//tu
         N/uWBIhpaF8x8nszRk5ndGVmbnebj6OUTRRmOu6IEvUHJJGa7WZIQWaL6h9h/veZaryf
         w0NWO5YMvdp3v4YOkhfLh8vERhHlBDFqxnmKjWSp76B5+InqkRSMFJMieWrPJQQlqmlP
         KIqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kxRn8GVt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id q23si177291pls.2.2020.08.27.11.30.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:30:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id q1so3041040pjd.1
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 11:30:50 -0700 (PDT)
X-Received: by 2002:a17:90a:c704:: with SMTP id o4mr150099pjt.146.1598553050196;
        Thu, 27 Aug 2020 11:30:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k5sm3139734pgk.78.2020.08.27.11.30.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2020 11:30:48 -0700 (PDT)
Date: Thu, 27 Aug 2020 11:30:48 -0700
From: Kees Cook <keescook@chromium.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Joe Perches <joe@perches.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	stable <stable@vger.kernel.org>, Andy Lavr <andy.lavr@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Sami Tolvanen <samitolvanen@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	Yury Norov <yury.norov@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
Message-ID: <202008271126.2C397BF6D@keescook>
References: <20200825135838.2938771-1-ndesaulniers@google.com>
 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
 <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
 <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
 <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
 <202008261627.7B2B02A@keescook>
 <CAHp75VfniSw3AFTyyDk2OoAChGx7S6wF7sZKpJXNHmk97BoRXA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHp75VfniSw3AFTyyDk2OoAChGx7S6wF7sZKpJXNHmk97BoRXA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kxRn8GVt;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Aug 27, 2020 at 11:59:24AM +0300, Andy Shevchenko wrote:
> strcpy() is not a bad API for the cases when you know what you are
> doing. A problem that most of the developers do not know what they are
> doing.
> No need to split everything to bad and good by its name or semantics,
> each API has its own pros and cons and programmers must use their
> brains.

I equate "unsafe" or "fragile" with "bad". There's no reason to use our
brains for remembering what's safe or not when we can just remove unsafe
things from the available APIs, and/or lean on the compiler to help
(e.g. CONFIG_FORTIFY_SOURCE).

Most of the uses of strcpy() in the kernel are just copying between two
known-at-compile-time NUL-terminated character arrays. We had wanted to
introduce stracpy() for this, but Linus objected to yet more string
functions. So for now, I'm aimed at removing strlcpy() completely first,
then look at strcpy() -> strscpy() for cases where target size is NOT
compile-time known, and then to convert the kernel's strcpy() into
_requiring_ that source/dest lengths are known at compile time.

And then tackle strncpy(), which is a mess.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008271126.2C397BF6D%40keescook.
