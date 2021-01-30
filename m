Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTPP2KAAMGQEUERQ5KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF28309148
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 02:35:10 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id c3sf7422578qve.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 17:35:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611970510; cv=pass;
        d=google.com; s=arc-20160816;
        b=0tTkjBq9PGnfTmhfHhH5jJOJWol7Bzqcx5IRbCAtIDd3OqDHODLC69zO+jKXMUCiQ/
         bPCoObWsA6znTfft7jdsR9aBGm6cfoDiVKB0911oiQEPUasuZR7ndTlPKVjU/CxT+Xvi
         PR26E+H7PJ4G2/D5ufzHclEyoJntKYTmuZ9yZlQsxpqeITEnzGhLrcxaj+i+pSuPMGA+
         BObPmlaGE5NaQM7CYS2p3vbbr1jDCWTVZ6GprZI7D6LfFjm2fl6noPfDzD2dB/pNlUxM
         EhNwELpJdpv3HVUMxe4Osat+zAX0Xqk/SSaLsvhwAFQH3VXfu/ZtyTiqLSQ/nOsoK+7e
         E6yA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lvks/D7l1n9RDDgw+5DpSjgKQvy3T7JPlo/6qRvfdWk=;
        b=SQZDO0e063t7LDsXtRMNoc/MPc8Ez1HIU4LPcI2ztCNyK5wqt+NNePOO2gzqbTbtAd
         V5leTIjrJcofB7Ii16+jswnobprn/oozsDh78stgC90NvPIhofKkeYEU4S7Gog7hsGJN
         ttwyfrVKETcNnq1+49fI4YsDIjM/6sep0+1c9UjlTXGgYD+g/4RYiSff3/prWsqqh8Xl
         7Xd/OGEgPmiTj+cOOIzfnDTWdG+TFY67iQxDhxAEb+w6TBMjUzhg7mZV1RqK7QdclIy8
         GyhJDjBpSY+yVJh3WEiSSmCGVzK1fSd+Nv3He+D1UV7Y0ZoudfTIKDYdEXpMJhY0WTRH
         7JkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sYVkzUOB;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lvks/D7l1n9RDDgw+5DpSjgKQvy3T7JPlo/6qRvfdWk=;
        b=rjqsKfg6KdfcffST2MkkeRq22IDvqsolMOywaz30R1dkCvzOXGqnOvoU+Hvl6qEq7u
         +fSgDMz1f4POtRj80SEbdgbcyTn3qHJhx87w/6GZATp3asFxK7RIf6cg8TNybGxNgRch
         eqFXCflFWZ9bCwmMpzf42gY2zvxvmXqpUO/7qSC4nwORrDdFNPdXy7dF12t9cWi176Xh
         rJAhqvnW+AgXazHnLJ2vTbSv583ijd7MZIc9MdvOJ1TF35mWDrA8AKfZM51RexNgrwSj
         BBy5UqUeMzRFVegMSABDgNRp8XkY0hmJeqDtJu5ROBGdOVMfcEHLz7Oav1EEMPo8NDNy
         16SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lvks/D7l1n9RDDgw+5DpSjgKQvy3T7JPlo/6qRvfdWk=;
        b=SZED6FlEIcvuty4e9cYl5g0kgcYWAk/Yzcx7qg5ovezqk0OERclRhOGPV48nhc5Oan
         Yw+MRO2kEeW6n3kRV3uBejCAY6ulC2hTkHPfvZvjD0c4wFmJVVrgsIlljIdlc1r5fjZr
         uoxPx5IFEx7Kos7G5IQDwdPY4QeJRPm6kBADNzDZ2wzm+Rmr4lEW0JI55dqeR+S/pc+s
         QI5H9dAvTpaqSYY1fBbFgqncoMv5mRDGKio3doHSFvBt0H4A65zyyJrkSRGiQCfoiMnk
         gDj//JXRLNsN0DlMJGpgOLnfCmKlHnZonswnArBpdDI/FecQkyFqCk7hQICY64Z7TU7y
         U+IA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OHU1E2m4NnvuEJU7ctRbbIkb/t74L4ONbUmalgiwHUHGIdWMz
	UHQDd0riOygl+viEa0F5wWg=
X-Google-Smtp-Source: ABdhPJy/FIsb4cRxUodn92hEbWOlI3CkAPucK8He4pOs1TyE4Wq7fiPij71ji3QxG0Hdnyi5cvSGTA==
X-Received: by 2002:a05:622a:28d:: with SMTP id z13mr7064075qtw.87.1611970509982;
        Fri, 29 Jan 2021 17:35:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3267:: with SMTP id y94ls4121335qtd.8.gmail; Fri, 29 Jan
 2021 17:35:09 -0800 (PST)
X-Received: by 2002:ac8:4313:: with SMTP id z19mr6663810qtm.225.1611970509639;
        Fri, 29 Jan 2021 17:35:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611970509; cv=none;
        d=google.com; s=arc-20160816;
        b=y2cQZ5MVALwUjAF42mQuCSXXhCcaKTpwAVJ1fypt7AJ6qCNgOfDg34+IET3ywfoD9H
         5z7sDkybQhOa5ne5LsBpOS7ekxNF/25/7Z+S0W+ulzTFWIlV0kUEJJatgI0FRNqrzhl8
         HqMYiEQOH80woD0PUcrN3Uy+tdSLaQIQq1nzRDvMs9s1wbD6ph7GHLoWdNv/txfJEs/T
         +hE6UjTChbPNxEmwatKOVwljVR80/8WhkCZq4clzdqCbE+pCR+RXyhs1YexJ5YUW5ZHs
         vZWQWY4Sdoy0aGYYMDHgRuiwMR5r/vtj4B3DwIsj+uf/6X/8g5anEXX9nTszKHqSZa4c
         ufww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yKvwfhD0C6HELEbDEd9Vx38KOo1aZDWyXu1NW7mPmxQ=;
        b=DL/D+pLEiZzsHkpvGyHt8h8A39sngfK3h5hxq033ruFMNUoPVFqdippuDe5qX3xQII
         nEiSN2S3Rbp24bpaMysFr5fAZmvbGIo7lhjam2DjU8TjazpWDIxtJ429OjO1G/K//ycw
         o9VBiaKBtwJD5JUc+rO/t1heHt3carLwHNkf3T7s55X4+06iZ54u3hBMkP9E/KNxdRyV
         u3bCC11H3/YXt2oYTeevkhmcmh8+kamwpYCCirWHKj6TAJffgPvwc+orSNcXtdf0YldW
         MlbGaGKPrtexYCEZN13h1ahe5066Zo57TPKkxwcPBDCLT29eCBjndiboWMKPuZ9DXIYM
         MR3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sYVkzUOB;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i2si369276qkg.4.2021.01.29.17.35.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 17:35:09 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C366B64E02;
	Sat, 30 Jan 2021 01:35:07 +0000 (UTC)
Date: Fri, 29 Jan 2021 18:35:05 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Vinicius Tinti <viniciustinti@gmail.com>
Cc: Theodore Ts'o <tytso@mit.edu>,
	Andreas Dilger <adilger.kernel@dilger.ca>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ext4: Remove unreachable code
Message-ID: <20210130013505.GB2709570@localhost>
References: <20210129185856.158310-1-viniciustinti@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210129185856.158310-1-viniciustinti@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sYVkzUOB;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Jan 29, 2021 at 06:58:56PM +0000, Vinicius Tinti wrote:
> By enabling -Wunreachable-code-aggressive on Clang the following code
> paths are unreachable.
> 
> Commit dd73b5d5cb67 ("ext4: convert dx_probe() to use the ERR_PTR
> convention")
> Commit ac27a0ec112a ("[PATCH] ext4: initial copy of files from ext3")
> 
> Clang warns:
> 
> fs/ext4/namei.c:831:17: warning: code will never be executed
> [-Wunreachable-code]
>                         unsigned n = count - 1;
>                                      ^~~~~
> fs/ext4/namei.c:830:7: note: silence by adding parentheses to mark code as
> explicitly dead
>                 if (0) { // linear search cross check
>                     ^
>                     /* DISABLES CODE */ ( )

The commit message might be a little clearer if it were restructured a
bit, maybe something like so?

By enabling -Wunreachable-code-aggressive on Clang, the following code
paths are unreachable:

fs/ext4/namei.c:831:17: warning: code will never be executed
[-Wunreachable-code]
                        unsigned n = count - 1;
                                     ^~~~~
fs/ext4/namei.c:830:7: note: silence by adding parentheses to mark code as
explicitly dead
                if (0) { // linear search cross check
                    ^
                    /* DISABLES CODE */ ( )

This has been present since commit ac27a0ec112a ("[PATCH] ext4: initial
copy of files from ext3") and fs/ext3 had it present at the beginning of
git history so it is safe to remove.

> Signed-off-by: Vinicius Tinti <viniciustinti@gmail.com>

Regardless of the commit message, I believe this is the right way to get
rid of the warning:

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  fs/ext4/namei.c | 15 ---------------
>  1 file changed, 15 deletions(-)
> 
> diff --git a/fs/ext4/namei.c b/fs/ext4/namei.c
> index cf652ba3e74d..1f64dbd7237b 100644
> --- a/fs/ext4/namei.c
> +++ b/fs/ext4/namei.c
> @@ -827,21 +827,6 @@ dx_probe(struct ext4_filename *fname, struct inode *dir,
>  				p = m + 1;
>  		}
>  
> -		if (0) { // linear search cross check
> -			unsigned n = count - 1;
> -			at = entries;
> -			while (n--)
> -			{
> -				dxtrace(printk(KERN_CONT ","));
> -				if (dx_get_hash(++at) > hash)
> -				{
> -					at--;
> -					break;
> -				}
> -			}
> -			ASSERT(at == p - 1);
> -		}
> -
>  		at = p - 1;
>  		dxtrace(printk(KERN_CONT " %x->%u\n",
>  			       at == entries ? 0 : dx_get_hash(at),
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210130013505.GB2709570%40localhost.
