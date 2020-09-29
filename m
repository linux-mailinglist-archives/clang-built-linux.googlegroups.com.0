Return-Path: <clang-built-linux+bncBDS5JPEL3IIRB27GZP5QKGQE7UZGXBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id CC85427BFCC
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 10:42:19 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id i10sf1451783wrq.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 01:42:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601368939; cv=pass;
        d=google.com; s=arc-20160816;
        b=aOMFl/Pnou2fGpgvrOLLK7pG1iR3QBrVQdmEMSbrnL8OiJJPyZ9qWwrtDO/MgAxlB7
         HHJJMEhDDs+OW4LEngmRnP15fgJh3hwQg4PTTYLtC7bIawMdYSKQ0Df2BebwC29x91hv
         cQ0vbsS9Ui1SISBLAaDiTstkIlroDYvQdziR+HKOCKcCei+g00pKpMbSPJ+Lp/m76/SY
         e9Db0UEE6PanRp3iqTBObTx+1FWs1lNO+IjD0eAcBi/2J2DoIYlFFzGeppDOtwQy5vhl
         PvZ/lkAMeTQSYmnKu7svMuvYT3Y3UWgu36gPOInN0HNcYouVy4MEyNZVMEeMAO8DpH+C
         cObg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=lUW7kDFcAZutk4YeNSVT4PCdZ71s6odw8iKqVL0aE2k=;
        b=sZtAZfS9ELDi58WCQ12FnCgDGYJ7mlXh+VPVBOTtoj9MxAi4zrUD5O525l9avyJjpI
         IWZFXcWNEIAmgPXl9uVK8wCd6zYQN6xFPSGz0jODRFap9y227askWa1oAjNnaqwafp/+
         P0NMHf1BE5qoxJcbURObH5iIVrxPW7JN8icl3b+FTo02QbFQyZOaow/2FIv5QORCqEMl
         B4yE7b3Lly4XXITkomgvBoS+/f06Y41kLs9bkNrVIwT8Vtl61OSortvX76TrJQ/MQ5+e
         fwUCICoKt+60jbifSB+bXKyyK63dslbh0zVJUChRU8SqpNeYDrftN0K6LAPqDiQpQ6P1
         ohcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C9E4mLgN;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lUW7kDFcAZutk4YeNSVT4PCdZ71s6odw8iKqVL0aE2k=;
        b=jK0VUXQkbCVcFL8eHAdJgZbMJjpFqs1QkaM2H4toC335nVbb/lxO5yvRr3DNAtU7l0
         GeHV1QFshB9/gROx7AiMrlpX5f8pMDipyodybU0jfOhtRG8RSzC1WDSpyGdNKRb39zke
         ArgJsl7rCSWHZG4CCh263dydyNJHOnEDdWrgJfD/cq/cnOAeOjBdJYK1jMyMBjxaPQj3
         Smwvi9QzXf58hfJxrCDuccX6iqvNSbikRg/ubyNtWdGlvdhX1Aq5AQFRYWqxx99D8UnD
         Uv6HoybWgnEYkWYqqwjn1iBaFz0gABHYFVYkCM0KPSE0umQWH0N1CDl87wQfOPGVqjzH
         D8Cw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lUW7kDFcAZutk4YeNSVT4PCdZ71s6odw8iKqVL0aE2k=;
        b=GG6qR+3z4N+eESxjP2jtA6ZGk47ZBRSnDYOor88TGrhD1988j9+vYypRExYbQIgXQ3
         xOe23SY5n/87Z8rj47DnrZLcD6nA6uZoFAS83MhMiM8CW5TB3YCSlikh77CmvBnV8Ym6
         FTsG15m55BiyFYP2GOZ+BoBsUFNBZfavJfENtgyutfN+AWxkbPKOTYZta4Cia2onl0gc
         0Mb0B/LJGzIpOKLUhlGB54BiMzDuFoOVhiOsn9PkFTDJkYnW1S3U9qUV9yMqOCV/gtFp
         14yF/MzPryhVVLuMZhvieZnBQtxCIHbCORs1B3Ug0joup+dA8yewzbg+/Qvc8Vo/T4Sc
         bsnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lUW7kDFcAZutk4YeNSVT4PCdZ71s6odw8iKqVL0aE2k=;
        b=LloSyLA0MBfNk/xNBy2sZGmIJyGfovXR6giAi+pZagWEIGAnGWyaG8gZbB069HkVNZ
         u43PJDyzOBQV7LLMpFSspnKgfp3wFexSguYIUrMLJCU8ObYSZq7AkEdi5a3tg80GY0Xl
         UA8EjdFCDYrXIq46tO403zeViOjwcUQMf+N0lSzWmXtREANAYXfVIurf6j6OKGe8zw0i
         t/3ZMu/0duuf8Gc3nHGAYsWk7UKcdnxuW+AduKNG7HhpCY8jLjhPQrZGO2hRi0KHMpPS
         TqYFVP4OiRvdtQDCMRUenQSozzJ59lL+HlVqnwVehR1h+GNWua3IOVIG3obZa1cadZhV
         cTXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532swH2wRkVl8OLwJsgv4WlfRqLAJap7s+M8q6TsduRrT3O1OS+d
	g6fSC1EPpZ6Wt+33S6UHjsc=
X-Google-Smtp-Source: ABdhPJzWO+nV3HkNw/Sh8GY7vM2cwK/CTElWROu1DmdOKajCYGLfFPewhnB+LbBgE2z/5ZJ5EgKg4g==
X-Received: by 2002:adf:a3db:: with SMTP id m27mr3091966wrb.277.1601368939621;
        Tue, 29 Sep 2020 01:42:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls368067wrx.3.gmail; Tue, 29 Sep
 2020 01:42:18 -0700 (PDT)
X-Received: by 2002:adf:ec4d:: with SMTP id w13mr3056267wrn.334.1601368938560;
        Tue, 29 Sep 2020 01:42:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601368938; cv=none;
        d=google.com; s=arc-20160816;
        b=AqZldvbuy2k9e8EDYAa0AMk/5hZVlI+R8AyHV577uOW/mezFPSHWlB3zUuFZ0pMuV8
         HjLl3SBKV+smjPoOqL4k8cCw5DDHdC9+Rbut0COK2POcunL7kmzYcGOfTJfjsYn2yItg
         Kc5jeuNA/nXYJf5QpVEh+rK3Z0hcYDrHGFwxX9M/LqO3b+1W7pGw52ZSfKC4ugkA7E5x
         pDd8TKJWKyAlj0Kc7m9y3dzVLla1v9hLpcXai8oCWAMcsYSMhjXNnI0twN1XO1MVkAgJ
         VlCp7xy2iEgT5SBlTeUzx2jZ6y8XFoTeN+rXc9y5izF966SGCVIKqi3VAnbLs3g4KbAt
         pWig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=lMOqo3ypO/SZ3oHUy6euRnuasGkm67DC6ZbiwUFwB8M=;
        b=U+zJ+k0fTA7AjjCMexnyCFOlRmYcXYOU8JPA5PloekUY2hXIjbawT2V9jb8+JsNZlQ
         worBr4nHfOgxn/0aLFJtTC8JaA3eobchdCMSExnlXenOYtvLcRF94CVdAW+0gPLE/efj
         LbOvFbgQMiuSZ6nwQOGqOaDUiL6MrY1p9Px7vkbSiaC8Q80QQpgwIWPVxwka5rXzDmub
         5a0XWHvb58JOfYi1GFbgNMwPAzoqPiCAy7XcN9ihQsqa/ScNVbpG6e6rcXHMDzwH9rFR
         RqfJywEIv/BiwU85S/q9pfj29+Pk093r9/Pzu1pkX4senNbaj8GN27BegAKpUYwRgZKR
         R0mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C9E4mLgN;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id w10si119358wma.1.2020.09.29.01.42.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 01:42:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id r7so13786845ejs.11
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 01:42:18 -0700 (PDT)
X-Received: by 2002:a17:906:f755:: with SMTP id jp21mr326002ejb.97.1601368938287;
        Tue, 29 Sep 2020 01:42:18 -0700 (PDT)
Received: from felia ([2001:16b8:2d89:9100:6c4a:28e4:c658:86f9])
        by smtp.gmail.com with ESMTPSA id u9sm4528036eje.119.2020.09.29.01.42.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 01:42:17 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Tue, 29 Sep 2020 10:42:15 +0200 (CEST)
X-X-Sender: lukas@felia
To: Dave Hansen <dave.hansen@intel.com>
cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
    Dave Hansen <dave.hansen@linux.intel.com>, 
    Andy Lutomirski <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
    Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
    Borislav Petkov <bp@alien8.de>, x86@kernel.org, 
    "H. Peter Anvin" <hpa@zytor.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, 
    clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, 
    linux-safety@lists.elisa.tech
Subject: Re: [PATCH] x86/mm: drop superfluous initialization
In-Reply-To: <1d376c1f-2f14-5c29-671e-ca59853fa4a4@intel.com>
Message-ID: <alpine.DEB.2.21.2009291034160.17656@felia>
References: <20200928100004.25674-1-lukas.bulwahn@gmail.com> <1d376c1f-2f14-5c29-671e-ca59853fa4a4@intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=C9E4mLgN;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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



On Mon, 28 Sep 2020, Dave Hansen wrote:

> On 9/28/20 3:00 AM, Lukas Bulwahn wrote:
> > diff --git a/arch/x86/mm/init.c b/arch/x86/mm/init.c
> > index c7a47603537f..5632f02146ca 100644
> > --- a/arch/x86/mm/init.c
> > +++ b/arch/x86/mm/init.c
> > @@ -609,7 +609,7 @@ static void __init memory_map_top_down(unsigned long map_start,
> >  	step_size = PMD_SIZE;
> >  	max_pfn_mapped = 0; /* will get exact value next */
> >  	min_pfn_mapped = real_end >> PAGE_SHIFT;
> > -	last_start = start = real_end;
> > +	last_start = real_end;
> 
> Thanks for finding this.
> 
> This becomes even more obviously correct if we just move the 'start'
> declaration into the while() loop.  If we do that, it puts the three
> assignment locations right next to the definition, and its trivial to
> spot that the initialization was not missed:
> 
>         while (last_start > map_start) {
> 		unsigned long start;
> 
>                 if (last_start > step_size) {
>                         start = round_down(last_start - 1, step_size);
>                         if (start < map_start)
>                                 start = map_start;
>                 } else
>                         start = map_start;
> 		...
>

Agree, this point is simply a question of style:

Shall local variables be defined as "local" as possible or simply 
consistently at the beginning of each function?

If there are no strong opinions of style, I would just keep this patch 
as-is.

> Either way, your patch looks correct to me:
> 
> Acked-by: Dave Hansen <dave.hansen@linux.intel.com>
> 

Thanks for the Ack.

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2009291034160.17656%40felia.
