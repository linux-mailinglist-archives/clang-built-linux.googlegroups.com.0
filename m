Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBJXGQKEAMGQEDICKQPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A553D8557
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 03:30:15 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id f22-20020a25b0960000b029055ed6ffbea6sf896726ybj.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 18:30:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627435814; cv=pass;
        d=google.com; s=arc-20160816;
        b=dFNzG0Z1GH8Kht4Rm3IIb5bTmaXQhe9GJVJM03j7ORNjp1H0HEZ10bmRk1YO9jkoQB
         HDBYb5C3fwSe6d1aWfPfz7MDYE2LoIwcnwaKG+sX5x6bY8Kr5fbw9BbenrjoX80mXrn4
         mN/flu1ikLrFl4QV/xL8iCZbeCnNp9Fil+OPGnODr5XFY7NitV8efUsGs1j2omVUVYB4
         heAB5ICw8WGTNM+H/8bHrDsuNQDOwYHrD8zkR+c7wR9xHje6b8gjTAYjw/9QOUt/YtnZ
         NxTvV0eA4B2m5dsbg1DKtgl0pW6PjhUAy/jpF3L5xo6pUd/pcflkfdoNcxtMGdMEl1Ji
         Kg2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HldP88MDX0+M8hrHKc20+/QsboBJj3O6mY99p1Atn1E=;
        b=oPWeR8PshV6o9ksCMPgwPzQCshVwmE9WZRcZy5BNjq6YH2Eg7Q7RhXs9txqlGsCkQL
         9yMFb/r6w4zET1InmRf5jC9ypZHB/QNtBT/c7vPY8g9siXrxIUSeG93Uq3EhzKoL+AZE
         79+Y5lcwvQcStOvB47g71U5gqTkS1iF8CDCMBNDeisMfBUZATJ/ItFFP3bRYpo3eVQ25
         yALooKO8KXjt9fti/TsBq/YrIfxlcoRu6IhnZlQ5vBbzYSayykfcIkqY7KEHHBTRbPNz
         g1/lC08zCaoYwqxddjD5oPbwb47UsQtGelDW6qp5hB5rcC3VfToDmyByLXa9C3LK7fpt
         VkgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fSpVrx2K;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HldP88MDX0+M8hrHKc20+/QsboBJj3O6mY99p1Atn1E=;
        b=k2hnzlN+yRl/RqoxjlrIqmp4cqgl5fO4mNEcVA6UcpKmO4Irms8iuWrPvjukeZk8J5
         /nlzky4csikND4YC2ye3KgNS36AdL6G5/fqI5P6iskJGZWuYUVmOBRxRZcbTjT5Nfo6V
         CWV/cUsfsgTp5cLEmKgIEprod5i1qxbTeMF8wsY8H0jakn/8BInlUdSYU9BnV0nhfyc9
         VNZI9veq+fjiLvE5QYpxZkbRFCrAt0J4fwAJJEa6f/2IUe3LWIXaQp37DWOOol5RYluL
         K8jDgaF06V51F6Aa4ier2VnE5IaqDbNKBUAOsi+8KttKi5v4k/RTgunjZn7HDkghFHT3
         ZGhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HldP88MDX0+M8hrHKc20+/QsboBJj3O6mY99p1Atn1E=;
        b=b/orJqc7EYY0zDO4oU8mbn88AS0olje3fZKXYLffUVX2O9NMOCA9lAz4xg913eIs+k
         uKqQ5foeoi66P3yNBsh5UmvN0gW4hnsd2CLkwo4B0O5AKrQ65KwKMn0R2oDow+XxRZSg
         ekjAxdCMyltBbmEAG/Jn/jWlVTcH3NJs/hxcdPSQ2JJ3UNYhUUsdFT4rURkcpn7eVx3u
         KtTZ7DiBJJqvWV0CwkPXDmuz553v/cc7pDfuHiTnc0P3wAgG31vioLPgIo5DHfdUoi9Y
         vqZ8YmrtNQ0MORQGSUt94YOIjVqBsQWQfv8AUrEG0UcRpAt98DuulYX5bq742D94xx6O
         kPBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ysbwbZUfe1sVowIfpHxDncn9AWGGh8j5v6cF+B2h7d2fcSc1y
	k5pI5Ox9Pe7wA1aLW0CjJNE=
X-Google-Smtp-Source: ABdhPJyXuOtjzSPEqgPPKEZVwzwWkZMoMUk3TMx5dIkknZzQcTPaZjYD2oHnW3B28eA7tEaiGqAIqA==
X-Received: by 2002:a25:dad7:: with SMTP id n206mr20836067ybf.119.1627435814248;
        Tue, 27 Jul 2021 18:30:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa24:: with SMTP id s33ls434156ybi.0.gmail; Tue, 27 Jul
 2021 18:30:13 -0700 (PDT)
X-Received: by 2002:a25:b9c8:: with SMTP id y8mr33731021ybj.7.1627435813774;
        Tue, 27 Jul 2021 18:30:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627435813; cv=none;
        d=google.com; s=arc-20160816;
        b=oDcDWCSezRU+OxEubb3zI4brWEXxQcWWWObLlxj/EUvvQDbpMpUOhEJWHgdM12XkOf
         7sxMyJQwhfJ/7zvk9+OBku8sYQMU0eTkIHz6jtw+fNVZZWKbrO5O9326QOr1nP06CKqz
         l0MlaOKVmIoXGziQUKf6Y5o51rGIp06qGC7lwobH0q+Mb6mSoYDWXJDivo9qMPOCAHXd
         8Ib2JtSXmkoCnTQdDjVSeYSOOaCHdZuGnVacGRQISr0wQAYFK6PgAxFTyEwB5048u6v9
         Y7TWXoJlUcMmtEX/uaJBEjdwHzorPYcjsGXY4Jgu3+AjcnDlNDYJohie/21txmZKitQm
         RGSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=F/W78E3w8bd3psxYX0IIxref8Eo+wzHY8m4KRkXjPMs=;
        b=IzzJoyotX8LXInUfiBGhK+JbL8kjruLvtrFzokYn83jsxdTJeNvD0N85PfVunIZIV0
         vLJYVX8ot409mAaGfSb/mrwJJGFhLgLiv6ABFFIlOzWDDLarpvnP0czTaeEgP2q6pgZo
         HrytWy1ff69aAXoztu76o0M3JfQGZJ99f4IIqgZgVupjyW8B4+WQ+LMb2P0rbvOvzhnJ
         R5dgwFkOgiADh/6tUnhMY6BeRdHAa4ZXUHYuw1q+x5wFMLIOu5n8IkFdG3StQqTykWwi
         jC8pxC4KjkdlmOV1vzUPO2hZKikprY6dyR7zMKgPZtomj2dTxR9QEkwQkTZQfLks3UIv
         J7dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fSpVrx2K;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id o8si527398ybu.5.2021.07.27.18.30.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 18:30:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id c16so730528plh.7
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 18:30:13 -0700 (PDT)
X-Received: by 2002:a17:90a:ca93:: with SMTP id y19mr7226022pjt.142.1627435813032;
        Tue, 27 Jul 2021 18:30:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r13sm5628761pgi.78.2021.07.27.18.30.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 18:30:12 -0700 (PDT)
Date: Tue, 27 Jul 2021 18:30:11 -0700
From: Kees Cook <keescook@chromium.org>
To: Bart Van Assche <bvanassche@acm.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 33/64] lib: Introduce CONFIG_TEST_MEMCPY
Message-ID: <202107271829.CE9BADDB@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-34-keescook@chromium.org>
 <9827144a-dacf-61dc-d554-6c69434708de@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <9827144a-dacf-61dc-d554-6c69434708de@acm.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=fSpVrx2K;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629
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

On Tue, Jul 27, 2021 at 04:31:03PM -0700, Bart Van Assche wrote:
> On 7/27/21 1:58 PM, Kees Cook wrote:
> > +static int __init test_memcpy_init(void)
> > +{
> > +	int err = 0;
> > +
> > +	err |= test_memcpy();
> > +	err |= test_memmove();
> > +	err |= test_memset();
> > +
> > +	if (err) {
> > +		pr_warn("FAIL!\n");
> > +		err = -EINVAL;
> > +	} else {
> > +		pr_info("all tests passed\n");
> > +	}
> > +
> > +	return err;
> > +}
> > +
> > +static void __exit test_memcpy_exit(void)
> > +{ }
> > +
> > +module_init(test_memcpy_init);
> > +module_exit(test_memcpy_exit);
> > +MODULE_LICENSE("GPL");
> 
> Has it been considered to implement this test using the Kunit framework?

Good point! I will see if that works here; it would make sense to make
this KUnit from the start.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107271829.CE9BADDB%40keescook.
