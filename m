Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMOV5D6AKGQEKHEPZDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 378FC29E2B9
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 03:36:35 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id y9sf938838pll.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 19:36:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603938993; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sn+tkdP5/LuyExi+m688KkWnyfHVsXJ/zwLHLXjbMYOepQoaoDfY22oXKzrFHkCEfZ
         3wktPGINBwbetRhn3MmvoKN8nZeJDrXFR1FGLoSBltfIBQ9qd3H2wBlCbZIFgRT+7lC4
         wejcvBcPZQ/jKGwuC2d9n+2jDgWfHHdpvmFs1Zm+paq+WY0LjjcDX1VmAw+pb7h9EUxm
         C27FaCGpFmPn3HpEfc7ascU1TxQl3Ecc9LTyrHIesFOBoJyOnvvPaMy5nH+k8tKiXtUO
         l801seuhW+z+XCmSvwtwRY6nHMH+Kq9Ov6hn8G/Pfq3oDmCk8bJngHmYlGfZsJe+LYd1
         OPIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=mFoX8AQPyiKntikDs1Ej6GFeoqxykGWt/q6PsQ+02Fw=;
        b=NB+4hgePgZv1pD5J4Lk27o0LQHkhVsipFEaPQzdM+yQiE0K4RkBsP7jAk5AtSt0S3H
         tU9RkLy2T5qb8Y2zG9ilM7wVV8HGQvm3CHE756y3QznbO0pWgxPVqGFVExYyfL3rYLor
         LU4pY2AAEcsyYfHqKL+1WHWibwyYegwjTdgqE62Nd8O3nchcynCc8KuCSO+2S3jTqOFC
         MLZ+XHtSOQhwULe3cW8gcdHsAIMAsaPyiIzYl2Xcu7oOVXR4POnAQ4gmIBr3gAEFswO4
         n6D7j9kG+L9Bje8Ws9sM24VyiMj/V32c+fkWuR1DP1DgNzsw0YZ5LcXmh04AIOQdxxzV
         pIdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qQtaHxwJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mFoX8AQPyiKntikDs1Ej6GFeoqxykGWt/q6PsQ+02Fw=;
        b=L6dxHlnYDDxKysFFcePu9+cJP/pAG28TA4zGb/dUYbEzOcmWn9gaq7wNFuKOWvxj0U
         vc1OAyJAGV2KeKI51j6IvE5d/bxPJS98ivQEya2dOQXeirBvKS+N1NePChItE9gxHZhb
         uNaGfYPrFT1VpsGeo3zUqDkKVR/KfY883zl6fofLNpjinYTCYAouzcDDus4N0UXIc8s9
         MFWiB0fVtLunpHguTzQXOo4Lr/Y8Hq5fPTmWiZ2DvFlwOsIRaS0m6vm5BQHaolwZYup4
         sOyEyDAl2WK130ROv9yHlw2YyMCdqhjFWlLUgW690HqwhgzvSUT+t8by8MkpShuKUYlu
         2K3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mFoX8AQPyiKntikDs1Ej6GFeoqxykGWt/q6PsQ+02Fw=;
        b=Q+tQdwLGzFkAm5OtmVE8Z5QX6cCpYll6YXleZ0ZRpULuVecY+fxaDoqSVFxEdh54HZ
         GMDAIw3a7Slf/U+Kj+mT2bNUfCfMqTCYpcpz887fuJbyi4JEtRjU8WwtWwOWkBLx1XaM
         Rd0m+zUDrqEeV3jyNClS6uSYb+6nGnz9jdAykgjO24NwifLanpxCD0Ebq7IvBssLCtNo
         Wu84lNHCF+z3NOh1AGQ9RRv7hnLqcBfzKFJXCMXRt4W5SA/ep817tM9paCdJdFBcYgx2
         2ZbsGyyQXlyYzb3Cu0APVYS0deqnZvBTbskB0UWuvvSEsyJnUbIN9z1UjU6ej6Vo47E/
         Sjjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mFoX8AQPyiKntikDs1Ej6GFeoqxykGWt/q6PsQ+02Fw=;
        b=FZFym2XT/eSrUv8VwT+dT1S719YYx8PtJU/o9FmePUIGyyBGMmR5UiqHkRIKwTplgi
         2Zqs3sIpT1idwNkUwCrMTvwji0GG1n7Sv+y1dFf5w8qcgaNYRME9SVTVkETj7cYDCg+6
         fjJYUn/J7rp16qBxb4On37F9L87uzsBnvYB++1ykCfSTCMOHcfSD4xh0oJslCGfiLnW3
         7/8YzguldpXxuJ3zNMVWZOK94l2Uv/XYcUyQGkMoA2SUlAIJzpXccFHyNyP0KwHo6PXB
         ZVmlD3HxCsv5gPggCt4Is/jhGE4tmVX+smbNsWxbbhZ3YGCH6J+caJmpishaRC4oDnlY
         lWYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mUcKqb0/JxZ3O6AGqlwoV0pmVOomK4QWYZz16Db+tyWgfV8Ct
	HL5YWwdhVbtXIsgRMqeEFlI=
X-Google-Smtp-Source: ABdhPJzTW42xt0ch9oRjcp73Xm9LbYa8TJo3/WCtfHV80jgzIoxtzm+u+RQUUolRBcB4S6XghDrZ5g==
X-Received: by 2002:aa7:9575:0:b029:152:97f9:f884 with SMTP id x21-20020aa795750000b029015297f9f884mr1918596pfq.80.1603938993575;
        Wed, 28 Oct 2020 19:36:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b56:: with SMTP id a22ls523070pgl.6.gmail; Wed, 28 Oct
 2020 19:36:33 -0700 (PDT)
X-Received: by 2002:a65:4cce:: with SMTP id n14mr2129478pgt.349.1603938993082;
        Wed, 28 Oct 2020 19:36:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603938993; cv=none;
        d=google.com; s=arc-20160816;
        b=HEvWp1bzYh/SuWWZeMm2mJoMCqz+vK8tED1uv/LoG0oeizi18cuCaYM1VK4wTgurk+
         t9hkzhQejyyYBjHWra3zEK+nhWh3TiRg9YMp6vlxhgwpWRwgCVFr52CEZv58yCPtsayz
         o5jaUE5LD2/E5y8LqH3QzMMnZTG4GAJ9PGjHsxk5HKERZjwLSIexFSzgGCtYEhBTqbGM
         /dfLqfuYl1sirQ4kfSVCdSHQPc4jp7kaAM7m2mzwvzgAx+07wM13M9g8s4YUvkq7mo21
         F7LSOmwIBiDnkt62jjGMjxlB4e9PrusD1zeRBXJxMOZJ+OgYx88E10kZ9VnXaBh65Ed5
         Kl5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gtLhAt4Mup4k2BLNkJakc4GXEYtihBg9S7sO53gO1+A=;
        b=UlbfITgwdgXUChZz8ck5DBDDMEppog5NGkD7ai8o9X1X6nn9L9xN45cuW3U77T7WFS
         kG3aQrLzTgOsfXx+wsikEp7uOa7BBMli4sat9XmZMUHAylgZr/ldCRX1/h5LkADwIhwV
         BaJuw+M8oUeNhH7PEZj2Vb3N+9xQQ/b9ZhmDtDTQCwj1OUx2t9fVLDZ6RYQe+1pgM20p
         ZZ9XvYmDUFZ+NSmIxF9TeaKFGP1vegyX78qJFm6lp6fBifAvvZ6anQo2tdGS+X6R9zhw
         WzY1oEnrqFDDmmUrpMjPPNzCumsBl+Almi8zqQAwvsuUWo+0SeQ3+virMTBlRDRk/Ksh
         jTZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qQtaHxwJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x6si73603pjn.2.2020.10.28.19.36.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 19:36:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id w65so1116262pfd.3
        for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 19:36:33 -0700 (PDT)
X-Received: by 2002:a17:90a:d490:: with SMTP id s16mr342476pju.185.1603938992731;
        Wed, 28 Oct 2020 19:36:32 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain (ip68-98-75-144.ph.ph.cox.net. [68.98.75.144])
        by smtp.gmail.com with ESMTPSA id b128sm661648pga.80.2020.10.28.19.36.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 19:36:31 -0700 (PDT)
Date: Wed, 28 Oct 2020 19:36:30 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>, x86@kernel.org,
	"H . Peter Anvin" <hpa@zytor.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH] x86/unwind: remove unneeded initialization
Message-ID: <20201029023630.GA2316@Ryzen-9-3900X.localdomain>
References: <20201028122102.24202-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201028122102.24202-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qQtaHxwJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Oct 28, 2020 at 01:21:02PM +0100, Lukas Bulwahn wrote:
> make clang-analyzer on x86_64 defconfig caught my attention with:
> 
>   arch/x86/kernel/unwind_orc.c:38:7: warning: Value stored to 'mid' during
>   its initialization is never read [clang-analyzer-deadcode.DeadStores]
>           int *mid = first, *found = first;
>                ^
> 
> Commit ee9f8fce9964 ("x86/unwind: Add the ORC unwinder") introduced
> __orc_find() with this unneeded dead-store initialization.
> 
> Put the variable in local scope and initialize only once the value is
> needed to make clang-analyzer happy.
> 
> As compilers will detect this unneeded assignment and optimize this
> anyway, the resulting object code is effectively identical before and
> after this change.
> 
> No functional change. Effectively, no change to object code.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Seems fine to me.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> applies cleanly on current master and next-20201028
> 
> Josh, please ack.
> Ingo, Borislav, please pick this minor non-urgent clean-up patch.
> 
>  arch/x86/kernel/unwind_orc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/x86/kernel/unwind_orc.c b/arch/x86/kernel/unwind_orc.c
> index 6a339ce328e0..5c64eed08257 100644
> --- a/arch/x86/kernel/unwind_orc.c
> +++ b/arch/x86/kernel/unwind_orc.c
> @@ -35,7 +35,7 @@ static struct orc_entry *__orc_find(int *ip_table, struct orc_entry *u_table,
>  {
>  	int *first = ip_table;
>  	int *last = ip_table + num_entries - 1;
> -	int *mid = first, *found = first;
> +	int *found = first;
>  
>  	if (!num_entries)
>  		return NULL;
> @@ -47,7 +47,7 @@ static struct orc_entry *__orc_find(int *ip_table, struct orc_entry *u_table,
>  	 * ignored when they conflict with a real entry.
>  	 */
>  	while (first <= last) {
> -		mid = first + ((last - first) / 2);
> +		int *mid = first + ((last - first) / 2);
>  
>  		if (orc_ip(mid) <= ip) {
>  			found = mid;
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201029023630.GA2316%40Ryzen-9-3900X.localdomain.
