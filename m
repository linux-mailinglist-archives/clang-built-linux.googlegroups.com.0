Return-Path: <clang-built-linux+bncBDEPDEWVT4ORB57W3LUQKGQEVSLCEBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 4183D71334
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 09:47:04 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id x19sf9054770ljh.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 00:47:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563868023; cv=pass;
        d=google.com; s=arc-20160816;
        b=P9mYO9xFtJTWPCtGzf6lLX1DTasbqEdVQfFzucxLJpUYQprq/7uqFwjhpvLhC1rDZg
         tQPac+xFMxBki0r1fSmD43lFdZFRbsdct6prdNhxGlsE2InFl6SHCoe1PvAYVwE6hw8Q
         +nDV1QV1Te75d1vgoOwjAscOoNhwlTKoFtMbJMY6g7q6enOn37dIUd3ddgctcsaEp95U
         OLeYlL4S0zjc50byN/kj3vrXpmkm4rzudhWvaMmqCSeI/56P77K6G7LWmE4emc7VbWpB
         Sgy7fEaI4SNtJAimLFgFHSS9GCPl1q7PcdZ52TQkjJYyPHQbMcjYH0wJ+8IWTE6DfSdx
         tZxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=gpY6RV3OVyW5gV3oSFzaFihwX7ZK9DnQhuytQnoCLfQ=;
        b=g/1b71YbqqWTDNhC8HaM/ZgupAr6sKAMDc+6DoVoxznB/ftNI2SH5hIy3IWTmVDQvo
         9Vx/vV9J80OeeiED1jYPAyhUIIEFrz0fxWusNdtr4GFUQbWIX85WAXX+2FQzVK2YZDUs
         771y8toi9iDSPE2MwpCTye8ZamXjbWzzT1F0ANTYrdjhXsQNZKvkgn7Yg4RyMJbIcntL
         4Vfefs8QbGnLSFFHxPgkXqTx+xfz/rNvy3fman466SbkzTcqTQZGei4ODgO9X8b1EqWH
         V0nfh1x7N8f2syODsEuOl+GviUYV/VSoKlfoOBS4aX0dxjks8QhehkIfYKhzaJVVG190
         HG/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linbit-com.20150623.gappssmtp.com header.s=20150623 header.b="c/ZNarot";
       spf=pass (google.com: domain of roland.kammerer@linbit.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=roland.kammerer@linbit.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gpY6RV3OVyW5gV3oSFzaFihwX7ZK9DnQhuytQnoCLfQ=;
        b=CeLAQ+Vh+OGwa2FNYyVvuJjP5CY7gTfOU0FwR3Iut7C8Kgok1wC8/gGohtgG8ah0V1
         qNoDoxvPB0/5/kwIeUQn4A9safUqErs4l20dh5HF2LNx0By/3VRA7j1VpH+7hCgkHiDD
         TNsyMXZD3gBN6B9VyY+P8QUvlZ+ncPQNQCreVcabUKwjtsi4+Fq8Pi7tTX8FpiYHfy+j
         dY+u34IIiEvMklCyhD6NHPe6szZ4IXOY67TqZLExpuuUbJliadWuqw1TrA0RLImSmURx
         FuoIklDjyhtetf+Slg0mdYmjnpP26/AnU1r6RfD6RnxlMU04VKuGw+nmnqwjsDf3dW3U
         JXiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gpY6RV3OVyW5gV3oSFzaFihwX7ZK9DnQhuytQnoCLfQ=;
        b=O0ZwiTRTaNtAj8gsh8AmLzQPPlbQA64qlUfPQb9lEyBPvPEG51HD9Sknkip6cruZNF
         8V1lk0CXVEdhOnoBYD8dtaC7zXfHFJB2B6j+zpK5eDIGh20vrJSbukMEaHh5sTF2gpmx
         NMMeWKC6tn9JR+iOszjcEjdoiU4j5gfJ1nsi2pntdlA7v0cetb7RbM8iZi2FgBdK254t
         0ZGccLGay5b2CgmmfE1989Zoatym1v02j7eytXdYvvRBkHUH344kfCmtR3Ikmf8KGAhx
         C2zub2QeeGk93pQcarH0fwhVy0mGXjLoGaY6HRPChNGGdTxo3dJl1gfxuFqL0o1U416D
         agjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWPFU7lgSmVbV+VNr2B+xG/wALURxxlMRDzyj+ONLRmq20c49iZ
	H6yl/CGs7mJdcZun31Jdm2Y=
X-Google-Smtp-Source: APXvYqwEoWCs32eQAMSkysMt0KlNXsoudXxLQ/x7kUPMTy3RizbKTpxjn9qq0J35o5FSpKLDsT7uKw==
X-Received: by 2002:a2e:98d7:: with SMTP id s23mr37918688ljj.179.1563868023745;
        Tue, 23 Jul 2019 00:47:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4c2e:: with SMTP id u14ls3395302lfq.15.gmail; Tue, 23
 Jul 2019 00:47:03 -0700 (PDT)
X-Received: by 2002:a19:5d53:: with SMTP id p19mr31296676lfj.109.1563868023303;
        Tue, 23 Jul 2019 00:47:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563868023; cv=none;
        d=google.com; s=arc-20160816;
        b=xQZ1noMmMJk6NW7E9sn6NO+i0AsvGM9zTo/Mzee/GX8mwWo/aUKkx5qbyJOz3tZ70B
         Ulwls5l/Mh/eiPH0rPcowYIwQPLoA1RwrcasOQ3tAKSbZmXmXFbflhGZ5pIenTrQ44hG
         adTigWjzJKDxEyst+SpImt5+6KiB6ZUw34c9/ORZH+RtTan5HSch5MsC1qfF3SP3318W
         hFf0rYH4/YAN3g9eAyJmTSm8wBjhqGBWIPByTMTRt05ug6BwWjgzpNuxXClZp8EOUEQd
         yTAXv4h9kRvJdazxv+yHmU7M/TuB3eHtzth74aNbN7XOJ3oDZsnDrKPDXnoYZiViERwn
         itvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=k7Xz7HKINwi2ffVMf/EFtJWFSDc7hqESTclfwKAt7K4=;
        b=0gb9Eg3CgpnuB3VcO4hw1cwZ7alxP82qpj52cWsLVoo+4Wl8Y6j04ehnD5cvMd5ZNv
         rJ1VvhH38cEOdest/ocILwoKD65orUpEZVd5IumutHtn5eJ3mz+YVFSIflzS4mPDpbpa
         d0fNENvpwVwVSAvw+19r+sd6etImaiUXBmKmrWXD0+cxIzzqLAOgX2SFBM0IZzegsRHv
         vujST9xbPXeNc4DBfu2ea75l9tvjPl3rkNK62t3nCv6NxPyZnGLrD/pi6dObW8CGrUOl
         KbmABOpILyirXCt2dxhbgGHztBy1Z7Au32JPS0E6cVqSBEFcei/riYPPt65Y+Lwf42TP
         FNyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linbit-com.20150623.gappssmtp.com header.s=20150623 header.b="c/ZNarot";
       spf=pass (google.com: domain of roland.kammerer@linbit.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=roland.kammerer@linbit.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id z18si1889312lfh.1.2019.07.23.00.47.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 00:47:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of roland.kammerer@linbit.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id g17so42037795wrr.5
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jul 2019 00:47:03 -0700 (PDT)
X-Received: by 2002:adf:c803:: with SMTP id d3mr4552216wrh.130.1563868022896;
        Tue, 23 Jul 2019 00:47:02 -0700 (PDT)
Received: from localhost (static.20.139.203.116.clients.your-server.de. [116.203.139.20])
        by smtp.gmail.com with ESMTPSA id c1sm89787659wrh.1.2019.07.23.00.47.01
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Jul 2019 00:47:02 -0700 (PDT)
Date: Tue, 23 Jul 2019 09:47:01 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Philipp Reisner <philipp.reisner@linbit.com>,
	Lars Ellenberg <lars.ellenberg@linbit.com>,
	Jens Axboe <axboe@kernel.dk>,
	Roland Kammerer <roland.kammerer@linbit.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Eric Biggers <ebiggers@google.com>,
	Kees Cook <keescook@chromium.org>, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [v2] drbd: dynamically allocate shash descriptor
Message-ID: <20190723074701.fp2qjjm5dwj4i2x7@rck.sh>
References: <20190722122647.351002-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190722122647.351002-1-arnd@arndb.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: roland.kammerer@linbit.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linbit-com.20150623.gappssmtp.com header.s=20150623
 header.b="c/ZNarot";       spf=pass (google.com: domain of
 roland.kammerer@linbit.com designates 2a00:1450:4864:20::441 as permitted
 sender) smtp.mailfrom=roland.kammerer@linbit.com
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

Reviewed-by: Roland Kammerer <roland.kammerer@linbit.com>

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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190723074701.fp2qjjm5dwj4i2x7%40rck.sh.
