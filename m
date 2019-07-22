Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUGT27UQKGQEBXDT3NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9AA705C0
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 18:52:34 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id q26sf36185128qtr.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 09:52:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563814353; cv=pass;
        d=google.com; s=arc-20160816;
        b=tV41E/47VNf0R2RjmR704mPUuCGsEukElZGcIwonR9iA7ROQf2kMVZCh32H/hzlskF
         heGkbl9vwPp4QeiIx9kfgEFLVIsmjgV+kYIKpKjjdmQGHLQMQ5gFgRXrISdCCmaIe8I3
         Fg5KHtRx2rzxf4W9ubRgRU6cQ6khfRD0eJdPvMMReS1WFBa2UTZPAoULVS9TpvOot9qo
         R0l5nrFlgy/SBtitubStFyfMZsaF2jCC9pc6f/T6xLb4gv41jPL7IZ06fn9ZrTST/mZG
         xeyVcA8tw28k4LstJGOXlJY7qUwDxgIRjGy2sPug8ilbAYCxJVS0fLZZo2FRI6feaCrZ
         9XxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1Sv0zPTUR9Ff2hN9h6gi0Dgf1nqzPWxcgZUqnqdRlNc=;
        b=yI8HH6BW1aq+WJHcjXJkuMlQaT3skwsZsxqN6UNfZDEjRo1TwdE+fLTCuuzVqgAPjQ
         xsAeUw8CdopJKEBwsfJDdiRvo7SawS+KAL1qv1AQiB1tzrw7SMg4N6W4qEVYmDkqftAy
         epZbNEl+qx9rxWBERo5TR3iW5xrHrzNG3rHt4IYdkkxYGooFkyFPGKEqBqZWgtEyNzRF
         gsw3rSN0cHLgJjbHwdbIPDJHybk/MulHWDVexrnjYfEaPYA0NZISJxCQbl8LRvC++RvP
         oXV9Hk/37KVxgCs1ovy+qhQ9++pLSmnvfEzHmyzfH1zu1aO3w75OpYi4027epkvdk4vb
         EXcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lMVKoC32;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1Sv0zPTUR9Ff2hN9h6gi0Dgf1nqzPWxcgZUqnqdRlNc=;
        b=DQHLAmCrF1EwcW9W+a4i2tMZ7iOyPV16xl9TcABns2mE2uLtA/+x/bXOLZ6qa3m3hZ
         wlzPQLBPTKqHBRbT83CZ49DVADAsTfF+QJjtIg5UwQC5SYQbSQ3nHTFhiBTlUJ3+dQk9
         TQH+VJ1tiJAPqD0Nfif6NngqOXH9vGdYiwUQKSOifucp5gFMBzXOd59ZC4X2nIw7Owf4
         oCK60MY2XmfIREAvxvfJAYFz6kjByzKQtpRugZYbRqYNPJ+WXJXaG7MjR56I7pnw/mRU
         dBHu4GkkScFOnACF59O+SoPnkGlQ+IZR5zaE0uXXmp8VHfWF5gKQI/GR/4woKwS6hZT2
         ytlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1Sv0zPTUR9Ff2hN9h6gi0Dgf1nqzPWxcgZUqnqdRlNc=;
        b=hpwrHpXpBBQsv+r/ZZCD6AicaBWb/Q2IZ/JgGMDouBtQYgE78BwYxwsve8iMPYZXDL
         PkcP3hbVm9G7jfco0t0xKkkRBB2hBSuVAPE6Rii4J6to05T4qrxX5gkznpjyA60Mf+AD
         TAggWjrkWwu+jKZQYxDYasZcIX5ZEk86EqZYAJ20k2ZZA90RyKiGSG2tGte+TXNW109A
         +A3mWDD5Q9o0K7PMo+HkvAbSK4m6LETcPouzsIUf30HCks1Ct79oZ7i02F+mNyWNDZq9
         XLDdZlfjDeXHL11dJMqKGO5s7oYhCAx4IqcGptDFcHWsiptdeHDt1+GhfFNlI3T+vIZE
         JDBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU/MNVszL7CxuD8vIzudDIkgK2fJErijXDedPZ5P4jdouaJggCD
	7QVtgyRL8Wm001T8biUwiq8=
X-Google-Smtp-Source: APXvYqzzoa8+vnRWNHJjwrhuMzlMdSxVu0g2kAvnTldEQ8VxJhZs2PpKA8Awl9RYJTqL0UBo6MEZtw==
X-Received: by 2002:ae9:f702:: with SMTP id s2mr22605335qkg.28.1563814353098;
        Mon, 22 Jul 2019 09:52:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:3d2:: with SMTP id 201ls6757833qkd.7.gmail; Mon, 22 Jul
 2019 09:52:32 -0700 (PDT)
X-Received: by 2002:a37:9506:: with SMTP id x6mr48447322qkd.107.1563814352779;
        Mon, 22 Jul 2019 09:52:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563814352; cv=none;
        d=google.com; s=arc-20160816;
        b=RUVpu+uNrGFxYFqiyBo+XJp4zSCQWhAQI18JCy6BUjqylaAwdIHyIHmyL0HiIq3209
         nsqeDCcaB57wp/vtMgLGUxA+9WMpKpz9PFggk93riage+oteS/Ep9jcz1s/khiB/7mta
         G4dyQyq2+RtjJ0UJmiS2yJOiNMurLdZJHDMNgOEY/vMp0r+N5TNhvbKqpCpceY+48Wyo
         7BdlaUYlukxwJaENzViN56Yk2iG2VV9UGNU69iNyIYXN0rwSVIKGPaffTYZklpppzdlg
         ijijQOVgOnTkVxf3MnpXWiDHfhtX/9dAH4E5Ctp453/S6An1uSPNKI/lxhbqTOcWYjO0
         oPZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=D5i5eeVRTyq7Qm2OPmoZkgOgQ/VLsd39M3tEbxvABCE=;
        b=ynH3D+wyVVu+9BycNVhv2WH/pEea/1dtLpjafgF37GlTRUbC2KpP04lKFBB4eznRf8
         V+LkBssD8r5rZXWrYyIiYlBBrgMRtgpJ9fm7w2KDqiWCYRDihCAYo+RCI/SDwnKyJeh/
         2X+B20MJ7UcHoFelZ+h9VH9f3KjIZGnX2AESwD0AmkSfDzP/5jgzvEGRCF2+VE86BU63
         S9WxnND/vrOWlEAleC+I7I4oF1+Vc0XRqkNDCzd5VP2NeOFxF18pLGphUkKCXAoufmfg
         L8p47wJePrFtF2G263Vn5EXrIAV095ibYdOYm0Lt1UB3/JKpF6tYY0Jaegf6TB93g+hh
         OFpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lMVKoC32;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c188si1766757qkb.2.2019.07.22.09.52.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 09:52:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id n9so11716982pgc.1
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 09:52:32 -0700 (PDT)
X-Received: by 2002:a63:7b4d:: with SMTP id k13mr70901703pgn.182.1563814351931;
        Mon, 22 Jul 2019 09:52:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d8sm36678029pgh.45.2019.07.22.09.52.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 22 Jul 2019 09:52:31 -0700 (PDT)
Date: Mon, 22 Jul 2019 09:52:30 -0700
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Philipp Reisner <philipp.reisner@linbit.com>,
	Lars Ellenberg <lars.ellenberg@linbit.com>,
	Jens Axboe <axboe@kernel.dk>,
	Roland Kammerer <roland.kammerer@linbit.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Eric Biggers <ebiggers@google.com>, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [v2] drbd: dynamically allocate shash descriptor
Message-ID: <201907220952.EA05EEE9FC@keescook>
References: <20190722122647.351002-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190722122647.351002-1-arnd@arndb.de>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lMVKoC32;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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

On Mon, Jul 22, 2019 at 02:26:34PM +0200, Arnd Bergmann wrote:
> Building with clang and KASAN, we get a warning about an overly large
> stack frame on 32-bit architectures:
> 
> drivers/block/drbd/drbd_receiver.c:921:31: error: stack frame size of 1280 bytes in function 'conn_connect'
>       [-Werror,-Wframe-larger-than=]
> 
> We already allocate other data dynamically in this function, so
> just do the same for the shash descriptor, which makes up most of
> this memory.
> 
> Link: https://lore.kernel.org/lkml/20190617132440.2721536-1-arnd@arndb.de/
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
> v2:
> - don't try to zero a NULL descriptor pointer,
>   based on review from Roland Kammerer.
> ---
>  drivers/block/drbd/drbd_receiver.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/block/drbd/drbd_receiver.c b/drivers/block/drbd/drbd_receiver.c
> index 90ebfcae0ce6..2b3103c30857 100644
> --- a/drivers/block/drbd/drbd_receiver.c
> +++ b/drivers/block/drbd/drbd_receiver.c
> @@ -5417,7 +5417,7 @@ static int drbd_do_auth(struct drbd_connection *connection)
>  	unsigned int key_len;
>  	char secret[SHARED_SECRET_MAX]; /* 64 byte */
>  	unsigned int resp_size;
> -	SHASH_DESC_ON_STACK(desc, connection->cram_hmac_tfm);
> +	struct shash_desc *desc;
>  	struct packet_info pi;
>  	struct net_conf *nc;
>  	int err, rv;
> @@ -5430,6 +5430,13 @@ static int drbd_do_auth(struct drbd_connection *connection)
>  	memcpy(secret, nc->shared_secret, key_len);
>  	rcu_read_unlock();
>  
> +	desc = kmalloc(sizeof(struct shash_desc) +
> +		       crypto_shash_descsize(connection->cram_hmac_tfm),
> +		       GFP_KERNEL);
> +	if (!desc) {
> +		rv = -1;
> +		goto fail;
> +	}
>  	desc->tfm = connection->cram_hmac_tfm;
>  
>  	rv = crypto_shash_setkey(connection->cram_hmac_tfm, (u8 *)secret, key_len);
> @@ -5571,7 +5578,10 @@ static int drbd_do_auth(struct drbd_connection *connection)
>  	kfree(peers_ch);
>  	kfree(response);
>  	kfree(right_response);
> -	shash_desc_zero(desc);
> +	if (desc) {
> +		shash_desc_zero(desc);
> +		kfree(desc);
> +	}
>  
>  	return rv;
>  }
> -- 
> 2.20.0
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201907220952.EA05EEE9FC%40keescook.
