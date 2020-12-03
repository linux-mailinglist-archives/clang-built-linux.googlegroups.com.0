Return-Path: <clang-built-linux+bncBAABBL6OUL7AKGQENA4PGLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 310F22CD1C6
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 09:52:00 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id n62sf1699433ybf.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 00:52:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606985519; cv=pass;
        d=google.com; s=arc-20160816;
        b=k6rLcYxrJcC8RHqbJsQ7fmRCKz+7B8LyKHMRBCQlcOTzaOgz2EinU68vIn2de5Dvls
         5EJgSwgn0OOqHSqdzC/CBElzsYxIFoxin2yQndCpdYHHfOnFCHwliyBku8jFfJvmAijC
         QQAzoCPyMJMM/UQUL2Lk7n5sJmv0qpn6yVEZLoxc9RQDn0KYj26JhhjpeX+wZRrKAcbY
         bNpxmxSpHXcNYz82k8JfMTiwvHYI6tV8hYq8w1JC8HMq2d7LbpOnw0BHEpYZpSuJVhQf
         j8mlUxsY0rULvIXIav84+EhAWhbsR9tZXiQ3B2yeZ6kUNPtqNVOPTLi9EcJn8FLXus9n
         Q/9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Db5xvN+jLlO/Tzf+v2T8oB0g8GfivFI5aX6WbvNcArQ=;
        b=KT4gaEl5hOwj0c1+FGAhP769jCWzKpt+1DqqQMxaIMnO+bb7o6B9wvgUEcNHrwkmEE
         oIQopXXnxlSzcRxZ0dsAethEXZIHppsL0d7BcsrQP/NEPMd2PgnOJ+Accrr+XdlfD0/3
         jh3+221R0TMpIV6984Oz/mnvlE8mOUHNVAZE/ueiZ1B6PcKbAR5ot9unFb0KLA3m+1D0
         YPVSrRXEE0cZlEVac33zQ0i40sRidMx4Y//Q/tYfrCwg5ZPOaLJJju1vut2bH17FCWLb
         x5oYl7kLjkJvwvbSSAje2+UsmVq8fJNdUAxTsAU27TeIorkHwkyfpnXf9KeGa+e+mtBM
         aJCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ErTTATeZ;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Db5xvN+jLlO/Tzf+v2T8oB0g8GfivFI5aX6WbvNcArQ=;
        b=cg9mhguCtH7RB9Mftwoz6TDeHX6ImDgnr0N7J3pdhjpZlUd2SzbySwkvYbxb3lguD2
         6/7hHMHMovRjeoxuCTRW+2ktjaehQnuT4OICrqkFKmoi/KYXh9gf0qIBLTavN3CCZWJS
         BJOJCwG99rf4BDl8KQxF80HxE1405cJt67wKKqAl2IWElljGAJEo/VYYSqlZff3Bc5vh
         bbcseudjktLyVNzS2x0vKzcAG3AKYinQZqUO//vImYFG/D1Rc1Ies0yuD7FayMU62u9b
         uifvSCB3pdKsgiY8rKtFVk7JPMOh8xheKnAk6ycTjZ+XoU3nPXKc7WLOtmIrtyyQ/wkT
         i2Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Db5xvN+jLlO/Tzf+v2T8oB0g8GfivFI5aX6WbvNcArQ=;
        b=NfU3HEGq8Gi4JkoiVKiIQfGxxyxH2E9H+n4zvMMQVU7B5+HkPK6F2gFylvHPm0niWZ
         ARE9fea3h++u9/icTPwkkc4nDg2R0PhUYdJpGCxy7v/D02wnEnM3PR8U0spwsP9OFnsQ
         F806omFm1sxboMQvOOjke+67FYN6a/38ejx7pCqrrmnudeqUVAPd/Bha2QQdoaqgytza
         3WKT+1WQFIlZzgR5h/5nAPKyh1wcDZKdPEevlOsU6bufdO3KKa0LAQrKUiWU5Lsme1ro
         ZP9BohHaaI7Zj1IUZS0AIOx3oK7lQqaN328OMGVrtl5y8TtxEhiZqqpwHI/nH1zLKMXI
         UqWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zkl1meY0oyGRo+dPbUniSWMcNKHohXQBLDhHSHXqgz3j/68mI
	sxcysM3KBWZq7E7J1iA7RQ8=
X-Google-Smtp-Source: ABdhPJyFnCjjOLhjj+EgyYOo9jGCXPLB3eCjpwaNL1SdTuwWWAh274VMw9fs+MV3OcSLhrtFSASfOg==
X-Received: by 2002:a25:3281:: with SMTP id y123mr3182690yby.467.1606985519274;
        Thu, 03 Dec 2020 00:51:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:344b:: with SMTP id b72ls2382600yba.1.gmail; Thu, 03 Dec
 2020 00:51:59 -0800 (PST)
X-Received: by 2002:a25:d3cf:: with SMTP id e198mr3162083ybf.292.1606985518997;
        Thu, 03 Dec 2020 00:51:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606985518; cv=none;
        d=google.com; s=arc-20160816;
        b=eL3Mlo/OBu+f8xfTX6RJMnu9qYNWxAp1pMqf76q0sGyN7rzlpS30eRWsKVPQv/rrKA
         KYJs+h2zeQl6Bf0UBJ+UnHd6QnBtwkozqv1ZZbOnxmsSNNo79zFFG9EWSyL84dqGFiAU
         rjMudLwQaLVl2ixsqFws1jaL+lXQOsPzbzhjG7BcTRMbtXi164/WzAGqcbIUFvpyUga0
         YbtUxP143VZIrXB8H1yQTUs8Nku3r/4bSY/tQsZ+SMh5dRF/8UTsEfYyaZXRoDw8Fo83
         r12r91AQaedL2O6lMPf48fdNADFYOi9SSJM7lHwZMwQAcOct4I+0JlDiuns8WqCRWg9x
         FNUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=elO+zlMh/egnxUao8A7A71ibltp+KXBrOD0tCpEyAAk=;
        b=jCBNaDCqEx5SBt3R0iCnixI6PG9sdKCMwI8o4IL/tQ8MjBvfwDBYDMEeAG19L/8uCG
         WInWLsG+OysEVhfO/0Zr0q95ob75LIT82G4x6yDSAYNh7FUmf51H/w5TT2odN03JUBCO
         jnhS45SB9samiZgalgK4iiQIWi391g/hE2ZzYN1KbNSpeUGqkH9UdpaK6vWkMfrai7pO
         dWAWoi9Zvcd14iCXMPDgbqtlJcGR9zdDVVtQHxe1O8lYXXBCsGFMqvnN59+NUznURcBT
         yRbHIx0VgZKVwzIoJvPtAjdDpcN+yWs9SdTvSul+WsHOUUli7C1w79D1+2WJIu7FpjD6
         2zDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ErTTATeZ;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 199si26305ybd.5.2020.12.03.00.51.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 00:51:58 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a9d:be1:: with SMTP id 88mr1415604oth.210.1606985516770;
 Thu, 03 Dec 2020 00:51:56 -0800 (PST)
MIME-Version: 1.0
References: <20201203004437.389959-1-keescook@chromium.org> <20201203004437.389959-6-keescook@chromium.org>
In-Reply-To: <20201203004437.389959-6-keescook@chromium.org>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 3 Dec 2020 09:51:40 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1Br8JFJX2PxyjVxMPMhi-y8mxf+vdEAZQq_Wm2wYP7ZA@mail.gmail.com>
Message-ID: <CAK8P3a1Br8JFJX2PxyjVxMPMhi-y8mxf+vdEAZQq_Wm2wYP7ZA@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] ubsan: Enable for all*config builds
To: Kees Cook <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Marco Elver <elver@google.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Dmitry Vyukov <dvyukov@google.com>, 
	George Popescu <georgepope@android.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ErTTATeZ;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Dec 3, 2020 at 1:44 AM Kees Cook <keescook@chromium.org> wrote:
>
> With UBSAN_OBJECT_SIZE disabled for GCC, only UBSAN_ALIGNMENT remained
> a noisy UBSAN option. Disable it for COMPILE_TEST so the rest of UBSAN
> can be used for full all*config builds or other large combinations.
>
> Link: https://lore.kernel.org/lkml/CAHk-=wgXW=YLxGN0QVpp-1w5GDd2pf1W-FqY15poKzoVfik2qA@mail.gmail.com/
> Signed-off-by: Kees Cook <keescook@chromium.org>

Have you checked if this has a notable impact on allmodconfig compile speed
with gcc or clang? I think I've seen significant increases in build times before
with this, but I don't remember the actual magnitude.

Making it 20% slower would probably be ok, but making it twice as slow might
be too much.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1Br8JFJX2PxyjVxMPMhi-y8mxf%2BvdEAZQq_Wm2wYP7ZA%40mail.gmail.com.
