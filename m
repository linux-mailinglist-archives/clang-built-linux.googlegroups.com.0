Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEWYSHWAKGQETB72MVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BE9B8AB0
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Sep 2019 08:05:07 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id c1sf1831589wrb.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 23:05:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568959506; cv=pass;
        d=google.com; s=arc-20160816;
        b=mDE+1lJEyqjMjCokLwDHtoHGON3lfgONQ8dWsufF/NZ9O61rpPSI/1D8doJHAVNIYA
         hRrbnupCobkfACyvydYjb8yv4d34K+vGjxU9LGC6CkybTvh504lJqQSI5MMWN+eauCwX
         jnZxQ9cdDjVkiPlHD5JEW3wiuqEfQfFPwiSxMX2NW3W23MWOtyQPLqCFv0wBRzHGd81E
         yvCwJqzxDsBMqm90GrvX52BHBwyZj7apLJ7O1lpgjr3YsJNnct/ih+7WG9mW2zKLyfxB
         1q08BTOekkZUPIB92pUiAVmPDPKOKcZMMY0ALMXDGx6zIdKaZl24RNPS4uhhsYjNE9mp
         cqVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=JoMBHpWsfTG86hml/8NnwjhK5GtoHEdNYY7nnBrxYU0=;
        b=is9ifcXWMIv8j37EGI6V3wT5ciLuRwS2yc4HhBXl2V5pdCLWES60ccX+kcxh07Xlxe
         bc+knrDZK6pOga/rVDwkWYV0KuP435H/jFr8aCslVdfVEj5gzARpchdxRk52T/H4nhcH
         F/FwkHsaFaBxFKi1WtA/mpdvx65fKA64mNJRTki744fQpI39YBYTbRQkbJhOC4iuuP8u
         lH3RWOqikiAX+dyBIoh9KuAwHafhx9VpKwZflApmIhmBb1TCGfhwNuNkn7Sg+K5N8QKE
         FX62okhEg16mJtEvBIgKrIIGAsDVKwJX4s6hiB5FqzZB0P2jPNtZl5Gm5NGY0tG/ZWxN
         +2KA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EmDdv0Lz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JoMBHpWsfTG86hml/8NnwjhK5GtoHEdNYY7nnBrxYU0=;
        b=bED+FZ/e7WHJ+p4iwBa09hce6XhjYp/xGpCe56MDkK8juyEbxqAvoltFCUZbSV90YM
         MrWFiXlrUIXcEv0vwqaLwL/JpclRrOnD58Mx6ltPbNFQ7rEBEUO3tSiyF8h2LPSl+tE3
         DMCvXxNSTooM2Oq9rgEkYEu/71M4sKGrTkpeuHeARy/h1x7eX23oW29lCqIBv+LRIE4a
         2TbLDCHsNABOEG6jFsHi4hwMygFaVEjSOtLpVM58xKj5jvMj01rz9c25ID4s+ejq3xjG
         x93T18kjHv3w/qP8WWP/Q7YSHmvGMl8BIAGczyfzEKDwRJj/9dcI96oD/gAI5CM0jNAK
         au4Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JoMBHpWsfTG86hml/8NnwjhK5GtoHEdNYY7nnBrxYU0=;
        b=g1NzYzOzoZU0hdhn2Uw1fI0xybJX6GwFJNKP7uvBfBOeGFTPEIBCbfyT9zQJe7x1XX
         D4YXQaKgWEC34aTmQBhYcnO89ldVGRdULkNSMhoC8/ojr0b2hERV25SzofRdcYax9aC8
         MNCX7e3T0bS+8MsRVqw3TOHDcJRcULOg5KkIS96ZeG5/ERQIB18u5xEFiTXfn0DlulNt
         zzumRpcD0+WpP2nfBlxS7LUivRJywhcerrbKRxDEWh7LrnvPXbxdey8pTI1A+Zze+3Gv
         q9daCbujCOGZ1Lukb/96oJ74io1wnvPhy0kXWOF7jzoPMgC3/zEFADkRksyZMF6DZKCu
         vASw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JoMBHpWsfTG86hml/8NnwjhK5GtoHEdNYY7nnBrxYU0=;
        b=fum8ENTA9WY5iiw5nxQDDXVWF2FZ0iJXmI4ApaAX0vHxJW7+Da/cbpVR9HTB9ARicN
         pf9C/tJqjJlWl3sHieZ8rL0nqQXXRH5nk79e2EDp6O03tLx0iECpPm1BZGJwWLnO1j8v
         BMpAXg8s9dcUcr9GK0XMFBTxg6CNHzhlUQ4t17btieUus0cpRFGISXuec74tFt84IB7/
         kdYz4rvOuK3DKR0Z5j7lSL4VEeTIbLlBqDNNbbPwuYjf6Y9fLp1vbQaDj3KW9PWjkT1V
         oz6ukF75Ht4UlcVkOuwpCm8mwnOtUQzJerW4tGxl9uOgBm2H8UHlHQNKGJ56a1fCxrn9
         41sQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWLbwdJrZ/4Y/MElDrWlTlkthgk30FGMAF0QeMH9hLh6vXZ2x/J
	S7krJV81QpEMbuHAZcLU3Zw=
X-Google-Smtp-Source: APXvYqzvk5t/NjXU48oRYK0vtHZwMTAFCLie7realhIWoVSMJrZaTV2boQCMfKBfEL+BoZe2hT+xhQ==
X-Received: by 2002:a5d:4d42:: with SMTP id a2mr10881356wru.89.1568959506771;
        Thu, 19 Sep 2019 23:05:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:50cb:: with SMTP id f11ls1494853wrt.15.gmail; Thu, 19
 Sep 2019 23:05:06 -0700 (PDT)
X-Received: by 2002:adf:ef44:: with SMTP id c4mr10816343wrp.216.1568959506259;
        Thu, 19 Sep 2019 23:05:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568959506; cv=none;
        d=google.com; s=arc-20160816;
        b=JZMwj4W707HbWPysc7AKq/SpJhz9PBi2Tu23IHUSliDCN+oEPLBccTPvDZdDyGHbWv
         5u29puxOll+DOVZNs8NDpqyWWbcGMHLJA4lrbToOOvo5WEOhbZV/rGzgaiQ3B6zGYwSp
         iTxXQK/l33j4o3wpwmxBV3gmh1J7NyFTdR/1F1Ql2DpVaL+7SQv5S6FiGzRxSLp2wPlX
         EUK4omTVkagkIK1yRNkU7gQO9zEOq/thFOwIlwLs4ANoadDk3DhU36idgbgpJUMEj5c0
         ZkHxoEVUdCzfelW6AThGNEtIIdVrBu0v8XB3orRCRVXqxkUTYfSGEzJI4dEPVRVPvLeo
         nmBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cED18m1mvjZ+niHvjAeZ+v1xJ6oH9Dol7OSVjJcLyuU=;
        b=h/QrQw5fYhJqjhYa/8XMyp8ePuT0UWiMhzl5enS5HVBVWIg08pfX1jrMv+mg/K3alD
         HGsAZEpS5c2+OU8e6iNqUx0vA8gCR4Hoo0ygsC3ibAcqXYNEPHjt1P3ADVTOQLH7BmNM
         Q/vhQp2MwmiUfSzulZI+n420K9g5/bsHlfw8IX2ylGvyl9wVRQM6BitmNGSovIKHf2aJ
         5G9JN8mPGzQvvfG6MaQcYKza0AAygUNu6kjq/EU087B/2NrSAV8ejig0fgAkuWZDD4fv
         ehqsm2YhzXzvQ/yubx48uuH5nNQjLeuwRLBc9F5O3XD1rK3X3VvUYS/w/MsWuhCPf211
         rfpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EmDdv0Lz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id u15si47937wmc.1.2019.09.19.23.05.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2019 23:05:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id b9so5477721wrs.0
        for <clang-built-linux@googlegroups.com>; Thu, 19 Sep 2019 23:05:06 -0700 (PDT)
X-Received: by 2002:adf:e7ca:: with SMTP id e10mr5806942wrn.234.1568959505815;
        Thu, 19 Sep 2019 23:05:05 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id h125sm913513wmf.31.2019.09.19.23.05.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Sep 2019 23:05:04 -0700 (PDT)
Date: Thu, 19 Sep 2019 23:05:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Max Gurtovoy <maxg@mellanox.com>,
	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
	linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] block: t10-pi: fix -Wswitch warning
Message-ID: <20190920060503.GA130425@archlinux-threadripper>
References: <20190919135725.1287963-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190919135725.1287963-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EmDdv0Lz;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Sep 19, 2019 at 03:57:19PM +0200, Arnd Bergmann wrote:
> Changing the switch() statement to symbolic constants made
> the compiler (at least clang-9, did not check gcc) notice that
> there is one enum value that is not handled here:
> 
> block/t10-pi.c:62:11: error: enumeration value 'T10_PI_TYPE0_PROTECTION' not handled in switch [-Werror,-Wswitch]
> 
> Add another case for the missing value and do nothing there
> based on the assumption that the code was working correctly
> already.
> 
> Fixes: 9b2061b1a262 ("block: use symbolic constants for t10_pi type")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  block/t10-pi.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/block/t10-pi.c b/block/t10-pi.c
> index 0c0120a672f9..055fac923946 100644
> --- a/block/t10-pi.c
> +++ b/block/t10-pi.c
> @@ -60,6 +60,8 @@ static blk_status_t t10_pi_verify(struct blk_integrity_iter *iter,
>  		__be16 csum;
>  
>  		switch (type) {
> +		case T10_PI_TYPE0_PROTECTION:
> +			break;
>  		case T10_PI_TYPE1_PROTECTION:
>  		case T10_PI_TYPE2_PROTECTION:
>  			if (pi->app_tag == T10_PI_APP_ESCAPE)
> -- 
> 2.20.0

I didn't have the break in my local patch but I think this is more
correct based on the description of the enums. Like Nick pointed out,
there is no functional change because this value is not used in this
file.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190920060503.GA130425%40archlinux-threadripper.
