Return-Path: <clang-built-linux+bncBDY3NC743AGBBHFP7TYQKGQED7YPZSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 999481567AC
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 21:18:37 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id l1sf2018279qvu.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Feb 2020 12:18:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581193116; cv=pass;
        d=google.com; s=arc-20160816;
        b=RMCQgH6Ab5XFEzvvk6aCLqDHZCqsenwoUVrM75yoMihIVPJ+hf+GuuSuVoVSJ6em0g
         faSrYWZ9+Ew9tJP9u9PkYlGpLoM3IrSJ8WJqvfiGm2psQ8tB9UoIhkQBoaKKuZuolZEt
         +2QcRQYot19bPmhxuBupC0r9NQyoMpbsMUzxNCbyw9VeVUvuU5zauJFHUPesLvphIJ7+
         kZBfwHw/sI0S2fpSXVdCnrRZUDU8oDXvqwos2Q4m40I6ipjmNHyLbKtzBiQ2P6iIWMlw
         WSCPIB2RzdktyAgFdD92JQa4YgiyZOMEbF3woKTm0q2scG2chxFaWD4RmlKPI4oo7wZO
         YKBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=O98IVDxyS9uBM80Q2sTl9CNPIaB3FzxJmP4g/MYH9iQ=;
        b=N1MEgAAlPjNVDCHts113VzEhA3vK8mRun707c4eg4pfB98Rdtt/cp4469pmunrsTzF
         wjNWkN70scWGt3RaHopIDDP2VrZ8gq+cRWhFi7elc1wx/oRt1wzKZfePGKV2IEny8vRO
         9/H6H8NS6JrffalI04sbBYa6rEk5tLGqYlgb+Yi39Qkb13AuWE8tEyqoGe/eKj/7Zatq
         4pvGLB3dj/XdAlyDpBqfbEDZZb8DoFcY1j95iMg0zoJ0y+ciXk4KzE+ujyVfA9lPOoEe
         sL1B6yIsGWFFMiLZC3w/EUTA3rsuLD/uZZUDNLrCxrMZznO/+nvnEmumDpuCH9Se/mFT
         TK4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.52 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O98IVDxyS9uBM80Q2sTl9CNPIaB3FzxJmP4g/MYH9iQ=;
        b=PupAK39jlTnKr2a4alLwr+XVGFlrS4Qb35Z3CrH4CSzGAR9ubjladpitWOptStYqN/
         3Ycl0dO58Gn0EbPj18qntJYmq69MC20cMI95kFSCDKzsNhkvJxm58YZW8D3OIgk91KS+
         IhxNYUzbDGkqt9rGVQEkvur8w4Tf881VqIUciRBBLdZLeJN7JaepZfpdjRxdmBlCN7TG
         KpBGTuetx8rnF7YUYfpHgcVrHnrJqBQpGdGhto0uWVz2qmfdKxxgyHIE7NvZmRX2c7+I
         UI9ctGX8pf1xUJ7TRk1kCmZ1BBgoLsQGvq9SvXJdBQEohPcR8Ew4jt61KLX5j1bq9XPz
         rZiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O98IVDxyS9uBM80Q2sTl9CNPIaB3FzxJmP4g/MYH9iQ=;
        b=iZIyuUYaAgKplOLix3JmPnNgI0bCLv1F2v5axlAdouW/Ti2zwsHWwqzGc76ap4zhK2
         imombnvVL3HOdPP/1tyCwT8k0vb1h+BqVzRtRlTq5WHqKqnspvuZK3CIg7EjWVKmYnhs
         0YM1KEigfma/K4Gf+APMWaOMdaWl4qFfhrAmXn+g4xnDL+mHZdtEFPU9foqjNUE9cGV+
         EgjDM6xuNqMDx8hXGFKHaJZEsaqDaFngPXtFRjrgKnsqEjZW1fBjcO3OGj9xcrUVEjDT
         WPfiz/YgtmJH0j82mRj44yNZ5//hrEa5EsJWboROywEEd4L1NQpxG42KyeHTHrvKdyg3
         y3OA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWviWr73YTgPpT2BJXB2VSVyXR5ccw1I4/MERQrwqs5CiVOO6sZ
	ct4sl+ouJ9zJInqFfLgeo8M=
X-Google-Smtp-Source: APXvYqwJD3MAr9tAWBdbehB6Vi/1xglMQHCtto/dHEUDZXhy0YO+WQtQx5Os2HhiVtihteq2aLazBQ==
X-Received: by 2002:ac8:42d7:: with SMTP id g23mr4016483qtm.206.1581193116322;
        Sat, 08 Feb 2020 12:18:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:f507:: with SMTP id l7ls1363240qkk.0.gmail; Sat, 08 Feb
 2020 12:18:36 -0800 (PST)
X-Received: by 2002:ae9:f016:: with SMTP id l22mr4616462qkg.101.1581193115973;
        Sat, 08 Feb 2020 12:18:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581193115; cv=none;
        d=google.com; s=arc-20160816;
        b=TYOxbCD4So+54xFmiqfpD22x7qLtt9C07HGnPswu5xJCRs+IpbztmevgSPneS3poyb
         4N/gs/DWfNpm6C1Fedaqr0Rx2DNloAsCZmXCIk/brFaBi/DMOuRBxn7SKU1bWjbr7rMm
         kME+ybeeliTpe/1/DozY3tn2JFrcUcKehMs8fn6VUB2Qg/xkdx6jslP/tTYvoTwK+nbW
         kHUA5ERiTAGiFNV2chut6V7d7D88ga0zO/dQcYvgZpIeP+YYTx1Baaf3gfCIqr1ByViV
         XhGfmk3DWQeLG0jvjS0Tw9zBXgUNjcVx1ZS/HJBfZ6MsXRM9q7beXtrzDjXSYmDf1yn7
         LgJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=CG7FjdJhO3Zge8j7N7vQJ22RjB2OH2/c7n/YvlpogSM=;
        b=RAAR3V7Wz/drnxuyLzlPc0UTTuNWzl50NTLljvKQFkHCoZuF+4HhI1IJsZM4p7thwW
         1e915C1+DRsWcllo6Hfvw4qHkrONQ16I6eirXfMshJ2cefD8f28ZopZKXO1dakccZjvp
         C4sRwMUjvI2YG5suzTasWyOHjMua3J4p3Qd+kTLGrVXTor90NvBACmx7PVuVoZAmnOX3
         jG91TKSCRZwDHNdi+7/jzspxm6EMqIlLTal1RVsJ1rbErLbcxmIKjVO3Pn7Jxa1X6quO
         vsgAyIY45NMT2+Ix2ycyoLIKYaBX1jKVZ55wfl/qakeSmvzUvoG8AuSMMqdIgAgknWaC
         bL1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.52 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0052.hostedemail.com. [216.40.44.52])
        by gmr-mx.google.com with ESMTPS id r62si163621qkc.6.2020.02.08.12.18.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Feb 2020 12:18:35 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.52 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.52;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 675AE181D3026;
	Sat,  8 Feb 2020 20:18:35 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:599:800:960:967:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1801:2393:2525:2560:2563:2682:2685:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4605:5007:6119:7514:8957:9025:9149:10004:10400:10848:11026:11232:11473:11658:11914:12043:12048:12297:12555:12740:12760:12895:12986:13069:13311:13357:13439:14096:14097:14181:14659:14721:21080:21433:21451:21611:21627:21939:30003:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: sort14_109d5eb21af35
X-Filterd-Recvd-Size: 2794
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Sat,  8 Feb 2020 20:18:34 +0000 (UTC)
Message-ID: <ba371a74412c07c30eeb26fa25c94c25468599a9.camel@perches.com>
Subject: Re: [PATCH] s390/kaslr: Fix casts in get_random
From: Joe Perches <joe@perches.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Heiko Carstens
	 <heiko.carstens@de.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Christian
	Borntraeger <borntraeger@de.ibm.com>
Cc: linux-s390@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Date: Sat, 08 Feb 2020 12:17:20 -0800
In-Reply-To: <20200208141052.48476-1-natechancellor@gmail.com>
References: <20200208141052.48476-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.52 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sat, 2020-02-08 at 07:10 -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> ../arch/s390/boot/kaslr.c:78:25: warning: passing 'char *' to parameter
> of type 'const u8 *' (aka 'const unsigned char *') converts between
> pointers to integer
> types with different sign [-Wpointer-sign]
>                                   (char *) entropy, (char *) entropy,
>                                                     ^~~~~~~~~~~~~~~~
> ../arch/s390/include/asm/cpacf.h:280:28: note: passing argument to
> parameter 'src' here
>                             u8 *dest, const u8 *src, long src_len)
>                                                 ^
> 2 warnings generated.
> 
> Fix the cast to match what else is done in this function.
> 
> Fixes: b2d24b97b2a9 ("s390/kernel: add support for kernel address space layout randomization (KASLR)")
> Link: https://github.com/ClangBuiltLinux/linux/issues/862
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/s390/boot/kaslr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/s390/boot/kaslr.c b/arch/s390/boot/kaslr.c
> index 5d12352545c5..5591243d673e 100644
> --- a/arch/s390/boot/kaslr.c
> +++ b/arch/s390/boot/kaslr.c
> @@ -75,7 +75,7 @@ static unsigned long get_random(unsigned long limit)
>  		*(unsigned long *) prng.parm_block ^= seed;
>  		for (i = 0; i < 16; i++) {
>  			cpacf_kmc(CPACF_KMC_PRNG, prng.parm_block,
> -				  (char *) entropy, (char *) entropy,
> +				  (u8 *) entropy, (u8 *) entropy,

Why not change the function to take void *?

static inline int cpacf_kmc(unsigned long func, void *param,
			    u8 *dest, const u8 *src, long src_len)

vs:

static inline int cpacf_kmc(unsigned long func, void *param,
			    void *dest, const void *src, long src_len)

and remove the casts?


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ba371a74412c07c30eeb26fa25c94c25468599a9.camel%40perches.com.
