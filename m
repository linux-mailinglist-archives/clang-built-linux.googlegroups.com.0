Return-Path: <clang-built-linux+bncBD7I3CGX5IPRBXPOQSEAMGQEL7K5MSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id B85923D8C3E
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 12:54:21 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id kf3-20020a17090776c3b0290536d9b62eb6sf693092ejc.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 03:54:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627469661; cv=pass;
        d=google.com; s=arc-20160816;
        b=FPp/YjOdCmFTXdbU645q+af/32e4N3ddoMQkEfnslZiC4UeHTOD7lIeNxZnysA9TiW
         f1quDUbtQR2R5NBKmpwRyEYoiWdG9malyTUx9YSlZAw55HqalQvu6pml9mGhQD7ZfQbf
         vV4TMsyLKU7ckpBiBIJaBXywW4QSolxFOgCTOXepf3yMuQXcWvFaNr2MR1BIi/T9Bp1M
         JwQ0wtOjE9792/8vSOWm7iEkeOI/FnqdURTfOApSItgra1GQyp3QgMFhYwrgtAEIMIay
         GBQZMqyeNKw1vmorlHNGNJjaKWDgJ5KsiKVuiHngJnStb5CHWSkkqRBzdont2ohtCIIH
         GTlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=AOLhCOzUZ2LxmCOnNga0BHYGTVcwMY52giXEQtECCnE=;
        b=L9Jc7EwjbNe31CZWMqj9hWli716IQ7VvGHPJocXf6oAsx9uM2surq9W/0UOksna9LV
         qf2V1l0bd11WToRmShonNS4TOTbx1prtf7GO5bJVckFi40WkvZvK1T+jTjFnrJVzmr/w
         Jz/VXn3pidQ22T/Iq28iEMz9fc2i6+OtvuN/lpMMxKhoM3arhJRdbW+2sc/vuTdGIgdp
         iXn+FrYWlfyPPtRcA5UUOKR+qmTuRoESWqg9dhdbRLMRZTpEleJwWJ1UEz1ArCYG0Aj8
         7vXuwgwzGkRHr1rqX4q5ERfKEbZO8HU4UCpHuIc3Om/IxhYI365qDFiX3dd9izq59R8A
         2Sbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=HvxZxKOR;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AOLhCOzUZ2LxmCOnNga0BHYGTVcwMY52giXEQtECCnE=;
        b=IaZ3jNa/VQGmX2BbYGYPe08yT5OughlfEkJv6DeA0XtMUIkUrlsPKOp8hv2FGLZrjv
         bzB0hLKEUi7Fv5xiGDKsKeY0BFty/41Tk8pIaPG79uoTYOzdpxSb/WKrpXwOjoITUrlP
         Z+NHWdqHkqbN/JZjRZTY+6cCC9eeeADs7ttlzTNZ04asehYPhcEVPTUsuhNg1m9epe8p
         L5AbT9JFJj6NfxGEKCeCXqlfsdKo9N/ZB3hRJYGoG79o0vbWW4GjJLLOemcczca2oUtg
         Eep5eeg33sdCTv7pX68jYthkujNrrLbRG9ck3qAZMWmF671EcJu4q7muu688B5Py//PI
         qf2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AOLhCOzUZ2LxmCOnNga0BHYGTVcwMY52giXEQtECCnE=;
        b=HoskdzJPLKCnfUyOoU1x5w+KiQIgeIp+HGc7+8bw1781d1m+UBUy47/Zhg6lsVv1Yk
         nY8//egtSTDjhNs9YH3dEU8y9+G2shopZdeT1oRoD+shzBDXAATVekDXg/rWz0OeZI5m
         h0f40cfpcVwRLE1s4jPpoBKfdShWj7UhW9ZOI73s5apJ5gZRGtEIB0LNQZ8JyKB94f6s
         ubs3orPMGphkcLa2dtHS3pg6pfrR6g5eYguUqQkKGFcqdv8xgasrl0TvneiSwsYeIFQD
         5gk54bzJhwthCCc+i3k+u4W7mPFKGtr6Y2zhcOTSDNZoNTBbAWole6Wc1gRi+pPj82XF
         hBaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LYHg0eBAOyHkIjR8OIZCg8OoO7oWRt0E7bZE4/BzB/q/MUDVt
	k8sMQvNf0YSVKQK8aFOovDQ=
X-Google-Smtp-Source: ABdhPJxzcWEtQyn8QgyTFtK+g05NnEelcPeQ6ThaVXLVe6O4lUEFXeYfm8Sjeb33b9CIea4uShhTDw==
X-Received: by 2002:a17:906:a445:: with SMTP id cb5mr3185683ejb.320.1627469661522;
        Wed, 28 Jul 2021 03:54:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:df0b:: with SMTP id c11ls2363069edy.0.gmail; Wed, 28 Jul
 2021 03:54:20 -0700 (PDT)
X-Received: by 2002:aa7:c647:: with SMTP id z7mr3215200edr.52.1627469660665;
        Wed, 28 Jul 2021 03:54:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627469660; cv=none;
        d=google.com; s=arc-20160816;
        b=iQHpFpE7vg1jNyshxEjI13NhL2fb8WxtkR43/Zr6Grprv4NxvV1LTUaENVzM2XBOs5
         Evsxj+qQ7+zR9AkVS/+qrbGL6CYElECNftAU1i4ABZ5tg+NkKckithvtmJTbLqLUyBM8
         kEK9b79d1KQkOA6/8cHmyuCRANJvuuu82t8v4xuAF0D7vdGzbPJkzf6WK4xqhGZ7dr6m
         6Vz2ChgQRMzSOyEQGFOlzR82L1ZCn9veUbtpCmUekmCRX4mRZPsO7CvTqP3AHnbD6E4k
         5bUolrbXd9lgJqUWTFsdwfutPy2G9PmIikJ2ZfNZ4PCAzjDqiuVbs+xV8xXVQCjpEvIE
         i5nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=y7BSRF2BV2wKYMpkMU6AInonSJrtXWVBGV0wA+UfcSQ=;
        b=Fo02PNsppEqJZKIXwvzmfJMIR6P6NX2Ce94Uxxe8PeTFH57/59UPnnd0CehyYY89S1
         RKMqYjjfS/9s2LYbLQIowyYva4ZKAdKrX0yJDZikhdcMVWvwNHSr1tKU6b2/SJ1jPBlM
         HENN3E26LdvEOoMvhwGmfwb9hHy/UGOARBNhsq3eisMMevg8CFQasHMGdic9+IhkNk4t
         NS2P/DIZ/2jlTFLxT3r3NOUsl3oZGo6wBFCMD4e+nPxZfbuNGDA07x3xoIN0CzbrJTxA
         9iw+bLATA7Ug5UY1gbyuT+NnQEE6zqX5AotHfOzjmGavVXBAl+h7k8acPBYhcra/xK60
         KxQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=HvxZxKOR;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id h22si262198edr.2.2021.07.28.03.54.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 03:54:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id f12so2575467ljn.1
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 03:54:20 -0700 (PDT)
X-Received: by 2002:a05:651c:1144:: with SMTP id h4mr18097576ljo.396.1627469659652;
        Wed, 28 Jul 2021 03:54:19 -0700 (PDT)
Received: from [172.16.11.1] ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id o1sm555702lfk.298.2021.07.28.03.54.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 03:54:19 -0700 (PDT)
Subject: Re: [PATCH 04/64] stddef: Introduce struct_group() helper macro
To: Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org
Cc: Keith Packard <keithpac@amazon.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-5-keescook@chromium.org>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <41183a98-bdb9-4ad6-7eab-5a7292a6df84@rasmusvillemoes.dk>
Date: Wed, 28 Jul 2021 12:54:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210727205855.411487-5-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: linux@rasmusvillemoes.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rasmusvillemoes.dk header.s=google header.b=HvxZxKOR;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates
 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
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

On 27/07/2021 22.57, Kees Cook wrote:

> In order to have a regular programmatic way to describe a struct
> region that can be used for references and sizing, can be examined for
> bounds checking, avoids forcing the use of intermediate identifiers,
> and avoids polluting the global namespace, introduce the struct_group()
> macro. This macro wraps the member declarations to create an anonymous
> union of an anonymous struct (no intermediate name) and a named struct
> (for references and sizing):
> 
> 	struct foo {
> 		int one;
> 		struct_group(thing,
> 			int two,
> 			int three,
> 		);
> 		int four;
> 	};

That example won't compile, the commas after two and three should be
semicolons.

And your implementation relies on MEMBERS not containing any comma
tokens, but as

  int a, b, c, d;

is a valid way to declare multiple members, consider making MEMBERS
variadic

#define struct_group(NAME, MEMBERS...)

to have it slurp up every subsequent argument and make that work.

> 
> Co-developed-by: Keith Packard <keithpac@amazon.com>
> Signed-off-by: Keith Packard <keithpac@amazon.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  include/linux/stddef.h | 34 ++++++++++++++++++++++++++++++++++

Bikeshedding a bit, but do we need to add 34 lines that need to be
preprocessed to virtually each and every translation unit [as opposed to
adding a struct_group.h header]? Oh well, you need it for struct
skbuff.h, so it would be pulled in by a lot regardless :(

Rasmus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/41183a98-bdb9-4ad6-7eab-5a7292a6df84%40rasmusvillemoes.dk.
