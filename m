Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6WO2P7QKGQEALGE2ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7886B2EB557
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 23:26:03 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id j5sf762084qvu.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 14:26:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609885562; cv=pass;
        d=google.com; s=arc-20160816;
        b=iPuPKUXNL3bM5dRa4RlAijhmQW7/g5BAC4QDRiOI2MAXmBGuuuJo+4sCA1SDaCzLkp
         Br3I83fkibPYec1NdyYV4nMzuxUV468npzlyGK4/MjQ415OQ0g7p3hu5U+9kDzSR2FJ8
         sSu/VSrxBvnLV2GY9oKgB3ucgcOfvfD93+/Dw0suPDhYnFbZbPMyJ65Fl26lXup9Oc+D
         mdgftb2rMtUq37krirdvpLpFKG7i2RE2h5H//jMuuC959Vj2YcAZLMA4/PEkgqTFbj3t
         wlrg3Jcj95ElCGboxzoEAegO1okOw1auNRxUoCimkkfNFguw6Ac7i+2AdJ+XZeizSedx
         3zkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=gjWCN3K77ENOjFkx3G293ZlPztPexd7i0gBdUFGtbeA=;
        b=r9JJmc0x/Fxi4oXreZ0VFsAlbGOhc9CJMgfq57GGxaELx+AbG2BBLOWsJB+hRF+GQt
         6sKY5nH54cbw/Cs8mEOWkhl3wzmvB5zhd6Brtt5DHUoBAPSgTNIyw8o1BL5mtkSPFz6p
         FbdB0SZjl+iS+tU9yZp3/ihMHmBYfebdnaDOuGrfBrmw7XuPJxm8Gse7ELp5JqogRh5f
         iZjBCIx8Ux1yaF18o6zZsU+taNxPb8LXJqt8JwoUvWJV1fQGRU+9hQvwZ91GuMA+4/3f
         Wqy9KU52zd22iUFDWid87Ubs2QXJyqi4v/1w4QVVXDrztpwgVmRd00H24ZvQH5g/R/it
         8L+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GWOTgxfT;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gjWCN3K77ENOjFkx3G293ZlPztPexd7i0gBdUFGtbeA=;
        b=O3xg/+bY2TBaA4WRFs30voScMXp3ZOQ0JVcAeUGtBTgx6ld7ZMmdl7JcHWRW3tVPUl
         fiwtmRgKVbL38MosG/1NkqjrdqSNrMngvslzJ94Q0DwpYOOwmYq9uqSRPMSyGvoDdvgo
         wG76cH2Sr2ocCzlPNXD5NNr0yeu8VJRaTQa2AUDEvjMspkdSS+Eg4DNEruoLVlgtWEbS
         y/2o/lrGry6d5PXvpi6xZNU6vygLBWmmQG4Nyl6psashNLmqUW3KEoMNFjxniBAeRIyz
         IjEYmka4PoAssOMagkcoa4gGiyF4TAuBgnmxHR5Z7eOnF9eJQxRGpqeEegzT4oXlt3Nh
         NVZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gjWCN3K77ENOjFkx3G293ZlPztPexd7i0gBdUFGtbeA=;
        b=iXhsYdCUvN0wmLbzpWCIc1sXbDg8Aqmml2hX2lmpHQ853n5T5RsKHeu7lYBT4CsR7o
         LUmNAxwjXBhjq3F5k73MQtDpbvrnEkriRnD/nNpIfhRNKA7mGJPZs595NgSS+i0VctGs
         oeQ7pWwmhXyc83nCpJaqwNxwfHAjvXzmaCgfHnTq14nE5bgGy2u7clj71o3rYSIYqQpZ
         Gtx1n6CQ3R1rId3kXiADQwm3uMr4o0gA+zNs6GuxYN38ui+N4n4Sn7MrbzyqKxm4q1lD
         ogpPfTCFaAT8T/lJKHX5/LS04TIg4Cl/Hdu9qecLncUfElxJUGY4h1JzUj5dlMqS0tCd
         UO5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gjWCN3K77ENOjFkx3G293ZlPztPexd7i0gBdUFGtbeA=;
        b=g1DYpGfYoRzxNfzhSegzBZUbkSNIEPX8Z0t0/8DX9NtEt7apz3WgfW1KbbeOUbR+pd
         DYoJ9USDFrkz9j6DGQjzhsArADKZBdq6sPLBOKKrTbtnzyGxqxqL93FfHvHtbPn7srX4
         7NepO9Kn64XU/P3SsmfBxgeHJPaMn8hfImp5heM+7vX6PMJ2EcatR7yE434yWlQHio4B
         2h1nJR0FuhdLW3kr6E40z/FZoJO2rtfp3FVKvH28prrHavUSMhmquRwvcJD2FRP1nd9j
         CTuocYs1LxPqJ0Nar9kRS4shmHGeZVUTYF/Aw5CoD4GFbVgXe5ej/9t0YPkgHySfshJo
         hsGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531AI+/5i80uUwfSj/cGuM1xTrqtO/pAbbQU/kb6+g97dBp3lETc
	0nud5XeeXUNwVotjRRwvDLU=
X-Google-Smtp-Source: ABdhPJyn56GZaeP/mjEZdFCzbjcGA/cpLzme7ns9gZF3DolWagOOpHwenmLWlb09oZU7Ja/ECC4cOw==
X-Received: by 2002:a37:8202:: with SMTP id e2mr1715832qkd.412.1609885562453;
        Tue, 05 Jan 2021 14:26:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e193:: with SMTP id p19ls268243qvl.10.gmail; Tue, 05 Jan
 2021 14:26:02 -0800 (PST)
X-Received: by 2002:a05:6214:1868:: with SMTP id eh8mr1512621qvb.50.1609885562130;
        Tue, 05 Jan 2021 14:26:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609885562; cv=none;
        d=google.com; s=arc-20160816;
        b=OmUZpK+xGeZXvq5s5rr3ElgSfDymVgf8u1A0e6qxh6nAaM+UR8wq+T8ykNpsZSADbR
         jEB+IJb2EkKducxOViNgIK3J7VMKd7C1XoDTPGKMDIQmhtqmYVJh7A6Y14FxvOJ0QozC
         Qw6lUp3p2OOjaL1sKP0QmVK6p97pyN9wl5yqrhbz6NEDBDgSJH4Fy45IPSBsDR5FEk1Z
         WRs/E65N4c1Oj+IrchQigPEZis7QMmRmd+oOkjclCOXpLeyaesYGWSc2FBFEHPNiJTJQ
         YFnJ6/VsRiZ1+5aObhV234UXR9/XikONkaII4DTuqdPTuXWM93ftTMAFVtyl1Oz5oYGk
         +JJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=juELTIvRTW/b337nrNxecDrCQElvIPPbt17rQzuvz4Y=;
        b=iI0BnjmvIkAVENDIYAq0OC7P0BVm6Hy0Lvrw2pbPQ7PtJu4hKswJqw9/Z0Ul8am+91
         RXbDja2/tpaaMfST5ISYo8fYRiM695sbuPDqfv4n9HpXdLzagC/ujzFh6mZI2t4wd2se
         QY4zcFE91IQPjRm82HNEvHj1Fdc5uj0qVp4UBYLxOQDIKSfxJWlTAdy7xMY8jG07P4+F
         PtRVNMrmxZTohjw8LfM6UdU3a2K24j+MAlKFf8NIvTPVPJ0JOvd4iHm+aKOCTTZpxOeZ
         9EbDBuhY+VN38BGgoba27j/NpimRGB+DqqjNbqKhWUbd5mdJ5XH31DUsubHV0flshzEy
         e/WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GWOTgxfT;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com. [2607:f8b0:4864:20::82d])
        by gmr-mx.google.com with ESMTPS id l32si83070qta.3.2021.01.05.14.26.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 14:26:02 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) client-ip=2607:f8b0:4864:20::82d;
Received: by mail-qt1-x82d.google.com with SMTP id c14so987851qtn.0
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 14:26:02 -0800 (PST)
X-Received: by 2002:aed:2b45:: with SMTP id p63mr1582005qtd.111.1609885561863;
        Tue, 05 Jan 2021 14:26:01 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id n4sm330015qtl.22.2021.01.05.14.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 14:26:00 -0800 (PST)
Date: Tue, 5 Jan 2021 15:25:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: trix@redhat.com
Cc: sfrench@samba.org, ndesaulniers@google.com, aaptel@suse.com,
	palcantara@suse.de, linux-cifs@vger.kernel.org,
	samba-technical@lists.samba.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] cifs: check pointer before freeing
Message-ID: <20210105222559.GA4118247@ubuntu-m3-large-x86>
References: <20210105202126.2879650-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210105202126.2879650-1-trix@redhat.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GWOTgxfT;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jan 05, 2021 at 12:21:26PM -0800, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis reports this problem
> 
> dfs_cache.c:591:2: warning: Argument to kfree() is a constant address
>   (18446744073709551614), which is not memory allocated by malloc()
>         kfree(vi);
>         ^~~~~~~~~
> 
> In dfs_cache_del_vol() the volume info pointer 'vi' being freed
> is the return of a call to find_vol().  The large constant address
> is find_vol() returning an error.
> 
> Add an error check to dfs_cache_del_vol() similar to the one done
> in dfs_cache_update_vol().
> 
> Fixes: 54be1f6c1c37 ("cifs: Add DFS cache routines")
> Signed-off-by: Tom Rix <trix@redhat.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  fs/cifs/dfs_cache.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/cifs/dfs_cache.c b/fs/cifs/dfs_cache.c
> index 6ad6ba5f6ebe..0fdb0de7ff86 100644
> --- a/fs/cifs/dfs_cache.c
> +++ b/fs/cifs/dfs_cache.c
> @@ -1260,7 +1260,8 @@ void dfs_cache_del_vol(const char *fullpath)
>  	vi = find_vol(fullpath);
>  	spin_unlock(&vol_list_lock);
>  
> -	kref_put(&vi->refcnt, vol_release);
> +	if (!IS_ERR(vi))
> +		kref_put(&vi->refcnt, vol_release);
>  }
>  
>  /**
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210105222559.GA4118247%40ubuntu-m3-large-x86.
