Return-Path: <clang-built-linux+bncBDR5N7WPRQGRBYWUUSBAMGQE7MOTTFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAF03348C9
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 21:21:55 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id w10sf6808395plc.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 12:21:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615407714; cv=pass;
        d=google.com; s=arc-20160816;
        b=neKKlCb4F1Kg1+M4ovRhc1QEZhS2prUByvVXe0T87iP7CZ+D+EDyNONDiumYCzHdvV
         dSDw5mZp/aTQXiJ0PtokgGuQ3w1N637FJuU+PibN/Wag6qtGqIxUakGn7lYj0xZ9Dp2H
         fN9o7SHp4c2axBIH+x3K24Eg8SZ1cWP16f4gGKx/vIlfNUlJHHz+IQxsdtvV+Ou5EDHH
         934jNQ9JGSMsw9LX4ZXJ/tH7Gx65fr9BZbgcHDVZ7+FklTuwvCkxfZTvXOngZVM3d2ex
         sJ/eshrNeVWsI2Hcgdy2gpcj/itgbeADuAcxCfa5NWeccPSLj2nOMQxM2iv43/YALDSO
         SzMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=NyxF8GOyMauSqxnwQHlTIlofY6toQoLpZi0pLlD+zAE=;
        b=lCqU0cRPHgMtr9Qf9Hh+UImupBALxzlEzCzcGHbwyQKNzu7oc3/Q/GQ5cNqZ8cJu78
         lHSnVhP1vDqza00nqZrzbK4+wkfEIM7/d/GuuLoF9eMbFIfnMYb/Sk/Blkwni4FRsgl8
         N1HCpNrmjEqpnBeyX0BpmyZGGezn8HM9EEvwAQ1fgja0YrsZwI7l+0trKI2KD0fN3jDC
         wAtuUii8pngq/cLZVpP2kIPP1GsvulZs5Yg5BDv3h3L2xvsWRAdFjNQzb0rExuv3eF34
         F1p0SYxNnNrVBa8SRdJtO4QUlNfgZfv/bPdRlNOhPbtR7+xb54YX7aOKab9XtR0i/UMY
         bllA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=spJ0UNdk;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::12d as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NyxF8GOyMauSqxnwQHlTIlofY6toQoLpZi0pLlD+zAE=;
        b=tG5UMIZaGsDw0FQEes0zBcocey2EQIaf2fQLXNbmfKvgMWvUny2q9/6gNFljnqBv8K
         qPfEB9I+Rk1QhoqDQn4Kya59P9Du5JV73/YBl2VYEzKSA6VvuMylTpMFfyALPnxbqQdJ
         7rxbI5e9G8/Htn4Div6HSnBWn0ziVBCiZ6ytOVj3YYCLS+l1NyOP8R3vI7Qs4n2gHtEA
         EbOMEMlRFMdN+iSPP0U8NPF5A+FkAOVO9vqaWha7Hn17/5wIpRpFJrV1OzqRyVrda5GC
         Cox+yd/uvwdxDDV4DByKbygSusbCdQ8wp82ukkWPvJSIaLMiNqoFQlL+5qWON4nv8W2Y
         1Flg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NyxF8GOyMauSqxnwQHlTIlofY6toQoLpZi0pLlD+zAE=;
        b=ojXQvErU4b1nqfIJWGoA4a1tQer9XjIIMFp4x/FlSs20OyTM2gqINYh7YXptc7mAxO
         QI7vLf+DjUytyjYuaW8S1KyxZn/F16KRN3fp6FGTJmYsxWOj181N5GUAb0ygXNoDpNdo
         ntb8SAfUGKAMsD2daEayG/mcKTSfgN0GMrlj0ePXMg31IcNGj7FHlXgbDJpmISV9664w
         0PfelOx3vyxwJhDZrkbHFGZhXr4P82OIqIibRppL4q/B+dwimqA4l2MB1CKZo6XJ6NVh
         KG1s8rqLybbqxtl4Ah7CRY305agzmzqx+W/vOQAv+JzvZkmIjyNTDnwBINqTr38MbVOB
         YUJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530VC0oBKxfThI/h7FllneHvR7gJUGDFP5C9ckhAmCHJ0ik5BCXz
	Ro7etjsytfryqPx2NqeCXQU=
X-Google-Smtp-Source: ABdhPJz4GlKpThUoA+i6+f6j9Who4vVVVnxwbaksfTtK/NXqZJEqL7K/OxOs1vO+vnrrWdo+PPMmBg==
X-Received: by 2002:a17:902:a707:b029:e6:52fd:a14d with SMTP id w7-20020a170902a707b02900e652fda14dmr4773100plq.34.1615407714699;
        Wed, 10 Mar 2021 12:21:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:972f:: with SMTP id k15ls1390879pfg.10.gmail; Wed, 10
 Mar 2021 12:21:54 -0800 (PST)
X-Received: by 2002:aa7:8648:0:b029:1fd:85ae:169b with SMTP id a8-20020aa786480000b02901fd85ae169bmr3122159pfo.28.1615407714021;
        Wed, 10 Mar 2021 12:21:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615407714; cv=none;
        d=google.com; s=arc-20160816;
        b=J7A9aMEPMPWoGIR2LhEd77JvgWRXYo1+FVwVkBpC+ePjkjjYkZecJ5+mAxZoDB+vVs
         S8KOcJKh42XbqAghxZf+HJoNzmz3dpcWPi4Okeh35VubOCVtfrZ9hQ7gMqVDoESMPHOT
         +sdmLGnxB7pUkJzDTZjY6dPZd4l+4+t35BVdZHHwEzYIXLQ5cLa/82ndNOcZX/BwOGZ4
         zOkGSFm0Y1uQo+I2U46V4ZfWZiX8Dl5/UwRvZQiE8s7p4Z1s151G8KvFspXkQyXLdJR1
         maJ2bhkc2fPjRgv5/LWeiYeAvALQbbrKL4Vl118EWcpPIbOteMyV8Jxe2VsL4iYqKm+l
         fSKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=16SMPeE21CushitzJ7QMJXGi9ZvpBG0rD0GsXsI6hkU=;
        b=fmfV32WOEWdv9mA0HWqWJxwvtvD4RLqFOzYhSBn0KzGow/hiwDH30xr6Nda23plbTK
         OnBrrDIRSX+nndgftMUVY/gr8dq8jSJHSKlQq9CTtd0z9gE8iBcSuLLea7kwRRro2wMz
         LfCid7cNKNqECcDDboc7G6Ly+mYgigZ1I/7cE7jibb7eEGrd+ia2+Ub7To2FuDF4HnaW
         ZSbTkj6GruBi51Lj09ka3Yh1VXKiu0qHBEQOLIIRqn/45IqHWxNPNF56LYVjEaN50ebI
         PLH72+Cmg4h2QF+yhhKi43Hv9ZXrvFGNTnz9BiPduGNpcHcxoTA1fekR3roMqFssgJie
         8goA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=spJ0UNdk;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::12d as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com. [2607:f8b0:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id h7si48865plr.3.2021.03.10.12.21.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 12:21:53 -0800 (PST)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::12d as permitted sender) client-ip=2607:f8b0:4864:20::12d;
Received: by mail-il1-x12d.google.com with SMTP id c10so16807121ilo.8
        for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 12:21:53 -0800 (PST)
X-Received: by 2002:a92:1312:: with SMTP id 18mr3843559ilt.92.1615407713037;
        Wed, 10 Mar 2021 12:21:53 -0800 (PST)
Received: from [192.168.1.30] ([65.144.74.34])
        by smtp.gmail.com with ESMTPSA id h15sm199377ils.73.2021.03.10.12.21.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 12:21:52 -0800 (PST)
Subject: Re: -Walign-mismatch in block/blk-mq.c
To: Nathan Chancellor <nathan@kernel.org>
Cc: linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210310182307.zzcbi5w5jrmveld4@archlinux-ax161>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <99cf90ea-81c0-e110-4815-dd1f7df36cb4@kernel.dk>
Date: Wed, 10 Mar 2021 13:21:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210310182307.zzcbi5w5jrmveld4@archlinux-ax161>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=spJ0UNdk;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::12d as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 3/10/21 11:23 AM, Nathan Chancellor wrote:
> Hi Jens,
> 
> There is a new clang warning added in the development branch,
> -Walign-mismatch, which shows an instance in block/blk-mq.c:
> 
> block/blk-mq.c:630:39: warning: passing 8-byte aligned argument to
> 32-byte aligned parameter 2 of 'smp_call_function_single_async' may
> result in an unaligned pointer access [-Walign-mismatch]
>                 smp_call_function_single_async(cpu, &rq->csd);
>                                                     ^
> 1 warning generated.
> 
> There appears to be some history here as I can see that this member was
> purposefully unaligned in commit 4ccafe032005 ("block: unalign
> call_single_data in struct request"). However, I later see a change in
> commit 7c3fb70f0341 ("block: rearrange a few request fields for better
> cache layout") that seems somewhat related. Is it possible to get back
> the alignment by rearranging the structure again? This seems to be the
> only solution for the warning aside from just outright disabling it,
> which would be a shame since it seems like it could be useful for
> architectures that cannot handle unaligned accesses well, unless I am
> missing something obvious :)

It should not be hard to ensure that alignment without re-introducing
the bloat. Is there some background on why 32-byte alignment is
required?

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/99cf90ea-81c0-e110-4815-dd1f7df36cb4%40kernel.dk.
