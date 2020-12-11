Return-Path: <clang-built-linux+bncBDZJXP7F6YLRBJXSZ37AKGQE7TQJIOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 818112D7DF4
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:23:34 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id l5sf1872492wmi.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:23:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607711014; cv=pass;
        d=google.com; s=arc-20160816;
        b=bhHqTK49Nw2UkDXh3LdrMWO/J9KF1eXfVp0ebUf4uSVfzO36689rp7Q2LWPFzeKQXu
         Wu2UtnSVwm1lL4eQapcnT3qVeEK2fr9wJ2CFTFyirqR/aVNas/VNASHPp/5twvJaeTur
         A3JOpKPwlQ5g5deXbPezujZ2cq5KAiEObqCSP4XOqtvNXmXyxNJODA2yzoEOzk2uFs1E
         c5bnWOOy+/DTYYoowkU+zNFPV0BNPTX8VSaSheMg/U65zIi8IngETL9MZPexit0D9JNZ
         02iNSPeWaAcfsFrSUyIwwgRedSnQul30wH6IbULrZSV/31aEX09nV4WeNBShKOO1BQsS
         7wUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=x/0Sby/zaDOstsES5EkTeiY5+sLHynpq8lBgsHg/2hc=;
        b=qRLHkz+LDD8RDAQClpccPXOIprv3UD5OSeASM7ZXo2dd0WQtu654ftP7/EGf8bMCl+
         uTe5JHC05jeIjOyKIOUYc+TOtzX2S2TXRgANnsAQWoASGORDCAyAWdoY0jzDTu9rpXlZ
         PPghk24e6lTECbRL5jwVdvNmGYEAakcTXRCo9IKM6X03SQ70UGNWOn9OZ4yrNFH1fYFq
         xg3REztoNr4nwDgRa0/UYm2eIAM5QgWOyA0Hx7CHb7PEc6+t7NRqUDXYmyNwrqYXekzB
         Z8ceSWMpuAlI+M1gsnULPhRG+7sLHyB2bnyD6Sb1auniXbqfMHgvN+6F3TsmjBK9LftO
         MKpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x/0Sby/zaDOstsES5EkTeiY5+sLHynpq8lBgsHg/2hc=;
        b=SjJvhgfWUTL+/7YKkOaYTKqbOVYrZyq6BEb+mbPRBfqRZuyOPoy3di2L01qvr7n3e6
         SmhWGTv0Qs5RkSSZipMcyUtF9lfMl4dm28BT1Nn2JJsgCsMgyfD0a98KNycXZUXxK2fD
         vPwJLcsputgVvAZwaDvK5vReD4/0VftokZcQlLZlvL5UOY0P8LF9oqpbGGv04CIfyW3W
         NV28QDHLh7ow0Ue62pkcbIebMZGHFSmh0P5P+/DJoT62KqbTZjh5mYWpbmRkhQzclPk2
         rXL1Rw2x4TlDurdQvjMm/U/2mF8zFl+Bnn66Murff6B1dzAn9VAvbnsUpQLPm4NHwUiq
         xWhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x/0Sby/zaDOstsES5EkTeiY5+sLHynpq8lBgsHg/2hc=;
        b=XEx6pC8KXw2weMmxzYTpFR6s+8MrMiDGtAX90Z4AEBrjmhm8EudFaxEUqdfZIjOcW6
         GvsbfVK/pTdmLiS3U/dkozqqN7Usq8CGly5JL9uwtzJmftgtfCgVdD1/R+O92Jm6NI7m
         9Ze/eqplsh9faoOa0zdKs4Lf67P+1mQ/g3D2zlvVzzdB3R8il3HSUuikv5k8Zj+lSCsU
         +HzyWag+GX9OI4BYYxKFg0Y3OZXnQxDHRCxDBzSGTr2Dmiqx81xbe1ogEPgYnB9uxTQW
         WODsUDLW6KONKwbay00G+7oRIlYmE8A1KZYCAlTFIKrwqWlQFMMhEXgSzVemofgHtiNv
         5AHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wOPZtOQ+Gr5Szg/yTqG4TE16pA7nm3r8aMdwa4/bQMJ1HGpOJ
	UUYavhzETykmw3lZ9qC7TW4=
X-Google-Smtp-Source: ABdhPJwDorLP0DBimSoN384h15hvhWWH6+RelDntPP0PGWRZL1/Hl+doAtb5DYebyyZKnGZ1u2YROQ==
X-Received: by 2002:a1c:5f8a:: with SMTP id t132mr14844236wmb.121.1607711014208;
        Fri, 11 Dec 2020 10:23:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls4456802wrw.0.gmail; Fri, 11 Dec
 2020 10:23:33 -0800 (PST)
X-Received: by 2002:a5d:4ccd:: with SMTP id c13mr15535337wrt.254.1607711013330;
        Fri, 11 Dec 2020 10:23:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607711013; cv=none;
        d=google.com; s=arc-20160816;
        b=FiZalgUq8XUT3+F2SnU3Cm5QKHhlERR9zvG1pukURO/thpiU4vFx3zNIC2eFyqk7LA
         uDS9X39KVhvp2FHG0hsYQH+qK5WhGEZ26UTFqQ1csQLHp7QU945pt3KEonjQHOdshqOx
         2V9PJGNyZGFDlSvlkzcrMx/87tX1nPtR1EXFAMEJuqSAStbKr54jWuJ6lXQ1XSYw2n6f
         uzbFmIr9c5lBOotJSynTHwreoCKuvHqTFtZIRkxcZNT2srt9dCzaXrpRXRbiDPMhbXKj
         9UiSAOYdH55XE+DYZKehtNxvFCRXbmPcNEvYyTa3iDnaIAl/wN++Us0WGwWJc00p43Y0
         9OEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=g1FN3MwXSJcghkTfGlzpvQ3dd12CUwtdJ2IGiSs0I1w=;
        b=DQDPqfas4nekv1tB0227QBwyrLf0G6017fnYibE2dEGIuUYsAIc0qKzVBRtABi3T9P
         pJhINghY6fMw3xb2VyGmQTRAFKKDBiW2dv5lUp2XoRQXumbsYy5pO9hIcIWGr1N++yhW
         cOkftdQkxJQbq/A3vZ0EmBXKbOZMS3qULu6z7XU81V30JkFSppAc3p+C/Zf1vRekRUCi
         UL/obeeR6hdDBiy8/aDyqcruo5bIYn0ErAzAfeC1TsZ+uQn9cyQwUi2SlNAx8xq9LcGb
         gWJ6S5xbpfFtgJT2Q8EjooX3E6alfM4uljqgcjtTkds51btQtVJRiwveWXz63Dc/pYXW
         T2GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 6si219278wrg.2.2020.12.11.10.23.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:23:33 -0800 (PST)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
X-IronPort-AV: E=Sophos;i="5.78,412,1599516000"; 
   d="scan'208";a="367393133"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Dec 2020 19:23:32 +0100
Date: Fri, 11 Dec 2020 19:23:32 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>, 
    linux-block@vger.kernel.org, Hannes Reinecke <hare@suse.de>, 
    linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
    kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] block: drop dead assignments in loop_init()
In-Reply-To: <20201211181236.25755-1-lukas.bulwahn@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2012111923020.2669@hadrien>
References: <20201211181236.25755-1-lukas.bulwahn@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Julia.Lawall@inria.fr
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as
 permitted sender) smtp.mailfrom=julia.lawall@inria.fr
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



On Fri, 11 Dec 2020, Lukas Bulwahn wrote:

> Commit 8410d38c2552 ("loop: use __register_blkdev to allocate devices on
> demand") simplified loop_init(); so computing the range of the block region
> is not required anymore and can be dropped.
>
> Drop dead assignments in loop_init().
>
> As compilers will detect these unneeded assignments and optimize this,
> the resulting object code is identical before and after this change.
>
> No functional change. No change in object code.

It looks like some braces should be dropped too?

julia

>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> Christoph, please ack.
>
> Jens, please pick this minor non-urgent clean-up patch on your
> block -next tree on top of Christoph's commit above.
>
>  drivers/block/loop.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/drivers/block/loop.c b/drivers/block/loop.c
> index d2ce1ddc192d..eed4bc5ef5c5 100644
> --- a/drivers/block/loop.c
> +++ b/drivers/block/loop.c
> @@ -2304,7 +2304,6 @@ MODULE_ALIAS("devname:loop-control");
>  static int __init loop_init(void)
>  {
>  	int i, nr;
> -	unsigned long range;
>  	struct loop_device *lo;
>  	int err;
>
> @@ -2343,10 +2342,8 @@ static int __init loop_init(void)
>  	 */
>  	if (max_loop) {
>  		nr = max_loop;
> -		range = max_loop << part_shift;
>  	} else {
>  		nr = CONFIG_BLK_DEV_LOOP_MIN_COUNT;
> -		range = 1UL << MINORBITS;
>  	}
>
>  	err = misc_register(&loop_misc);
> --
> 2.17.1
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.22.394.2012111923020.2669%40hadrien.
