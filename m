Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBAUYWGFAMGQEXL5WZ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 32330415B2B
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Sep 2021 11:42:27 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id n22-20020a0565120ad600b003fcc09af59fsf236448lfu.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Sep 2021 02:42:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632390146; cv=pass;
        d=google.com; s=arc-20160816;
        b=DyRS6DMz8d6usKU9UUhD5eafAdwJoIIuALtFo7Lvkb+lpYy6Vav13QEYTPerA7HWs7
         CJshebKKMManoOuQqZkY1+5p1W1OP06Z5nN+fqt6YMba0a8XUT+YwO4SZgxmDhm6p4Vu
         eCQlq5WJc17gbjE01ULJceR239hJV1BY5iyibVS2n7W4YdjGhOkSLg8ZGuiEdwGb7Bmr
         RmQVoxBoL/0w3fxtm5rBwm0JJbYhtEWMxZ893ZzVAZa1aL9YIUyFFSwSy+xcLIVZyAtW
         U6+aXtPWEQaGXtWz6iGDElXKgeBM+sgkff4DksunPRmdcU/Vu+EzozHAr/q9uJ4DAzFp
         CJQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=TifXF7PB74KWeOnLHjgMbTEIHlf39Yi+ukW9RXg0a2k=;
        b=ElZC9eWjMqG4bzyYE2bK9oWvUh3N3TMoq4JiidM38ioqasCGCD1msG8XLh/Dkf7Vmz
         jHj6R3fwTX55Xu3vVdvQzVGC4ogg72+WJ604/8A0uUMld081qdzfK2XHbVfQ9OBJ4kOW
         tXyhN5RLNibiPAE9WBfu2RO2iPf5e/xHUbvs3VY2vpXwRXP4E1SV/1Jjd9CT6CPPRVO6
         SqL+U99P0X8gXw6Jr6aXcRbmc0+jySV9dsTCkRknaN3PeA+AFV410fvevdCwH+OwwUkC
         LetAOuFdkuQTh2NcXr6iC1rk1jnUBbqBRZYYje02qHBOyr9yrTb7csfDwilLK5C0NQcb
         /xEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TifXF7PB74KWeOnLHjgMbTEIHlf39Yi+ukW9RXg0a2k=;
        b=ohbC4sbvWax974TXywuTYK4Gtv6G76eiJtXUb7cM6qAIcMzaIJs7U2rCO+ooH16GUA
         6OrmfgeEXptgv1S/naEebdcTTKAN3WW9H1yY35a/7+eyl89NevoIa37fG/2niR2Bc4mU
         WmJ1MPvwI/hAPjVLXa+M7glkuFu7/MIa6xed7RwuCr8CF1DitoaeS3hjAlBl5CnS9SA0
         AMsux1cPlk6+pwS4NAA1PwJMDtIhogzWgLjveEoxeuhsLKO6hC4zUvQSNjcjrnHhHJnE
         OicdRZcA7mbqC+fIs1Ojd2ehOBf6q2TZaY/Ea/YpoXCLKnkbTHxI+tZfDCYfhzWtfbdz
         PeBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TifXF7PB74KWeOnLHjgMbTEIHlf39Yi+ukW9RXg0a2k=;
        b=Gcpm3KjxvQNCQ+elG8GcxFX+L1KAXuRCfB0FpGh9WZaKvii7cDgsL9MslYtSh3jwcc
         RemMXIuyygxo51iTRp0GKOU/n9Jz9vbk6vigUlcnLa3sM6xWlWLODs8iUFV600632gUG
         ztTFa1QwD2+pmfA4TtTHENCIJLp+Tc1CnTyNymCcbGwQzqk8FKMeRcs5yO1Z7ga1cHrq
         XbkjB50Ygn8Ui0CzN6pBeeEcBo7C2ep5yTfUcx4HK2rRNH0IT1lG9iHPrtGVTjX/vr+3
         kcFq0HzKq0MuyTdFxLLZ+JoFbVmopId+RI7WqjdcxNVFAjRbg22NToAPpz797p6lSBJ1
         zsog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334X8Z+YN+T0aVE7sL1FgAfCa+KgIvE5fud09MVu7MFfD5oFatG
	LkBQ25C2fgS7TvWnfJneIAE=
X-Google-Smtp-Source: ABdhPJyUahBlomwLOIF4ORc4NgUT3jfV9h54ptvbdBnnbT1WQXXX9K9cg5H43AKT/0SojcjEJt7jug==
X-Received: by 2002:a05:6512:12c6:: with SMTP id p6mr3296484lfg.526.1632390146804;
        Thu, 23 Sep 2021 02:42:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3746:: with SMTP id a6ls827542lfs.3.gmail; Thu, 23
 Sep 2021 02:42:25 -0700 (PDT)
X-Received: by 2002:a05:6512:16a9:: with SMTP id bu41mr3268423lfb.41.1632390145837;
        Thu, 23 Sep 2021 02:42:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632390145; cv=none;
        d=google.com; s=arc-20160816;
        b=nLJBCVa7oDeuiR+LznFSFWmw7yV0wAvtWmOu4GonSduqWxguQahv+1jmY+kiBRuPOV
         PeVpr2WP+WqtMXsOC0EGtDHC2KNmh9QKE+jRwMjI9Qd3wZUWfO9bfXirUmZr0lJEK1Hu
         riwaKqSeSoiPjjuE0mWe6/yk28JwZKdsmP6RIzQ+eR5aJEcJ2xqAw4MjCjiAl6UyYMqn
         vQIEGmhYUNnnIxR5mqNUyG/dQXD9afSkeaoFegxhrIFcvHOZCpb9eQitHbi1PwlybHOv
         zlnaOn8XnYF+3FNaKTpfiGpZJ+cZLuLWtNHkq18Ww+C/SCovkaaWob5XSfTt0mc9x4NW
         pRFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=BTsG4YZpMANQIWBGyUzDVzftQXPC3KRcxsL2tnyNYDs=;
        b=L4VPErmm5UirKckHbZ3Js/+tJa6Fvv0a6mY3UwYWVgdB24otrsxeU0WcMJbfOB4lCK
         y5mdOXQk/slJLDlAz/AlFXlFvZcVMB6prCsF7p1sO//JslfzMbTPEY/KG23RsqR2i8dk
         i4tOd3DVIwmr5GG3pYkKSuxoAe2LYEv/zd3KAJZp46eyc8pNQ6kEZzp0COii7Q4f4kok
         utWHx0OSAIrReOOdrH/PoM5VhatE4i3EvbS6ZIjDsQjfSV/pPhWK8TWBd4xFgV0MH3ba
         gzwdnUzZ+l9HHGYCnHulc7mTQwd4qwlVnRD/oN3VJozsIxLFIGipj4/nIWXms7yczdPs
         TLQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id k8si212721ljq.8.2021.09.23.02.42.25
        for <clang-built-linux@googlegroups.com>;
        Thu, 23 Sep 2021 02:42:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1mTLFI-00072a-02; Thu, 23 Sep 2021 11:42:24 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 7A2D7C1CE2; Thu, 23 Sep 2021 11:36:28 +0200 (CEST)
Date: Thu, 23 Sep 2021 11:36:28 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Paul Cercueil <paul@crapouillou.net>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tiezhu Yang <yangtiezhu@loongson.cn>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, list@opendingux.net,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] MIPS: Avoid macro redefinitions
Message-ID: <20210923093628.GC7289@alpha.franken.de>
References: <20210913213415.527306-1-paul@crapouillou.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210913213415.527306-1-paul@crapouillou.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Mon, Sep 13, 2021 at 10:34:15PM +0100, Paul Cercueil wrote:
> To be able to compile the kernel with LTO, the assembler macros cannot
> be declared in the global scope, or the compiler will complain about
> redefined macros.
> 
> Update the code so that macros are defined then undefined when they are
> used.
> 
> Note that virt support was added in 2.24 and xpa in 2.25. So we still
> need the TOOLCHAIN defines for them.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
> 
> Notes:
>     v2: Removed commented undef line
> 
>  arch/mips/include/asm/ginvt.h                 |  11 +-
>  .../asm/mach-loongson64/loongson_regs.h       |  12 ++
>  arch/mips/include/asm/mipsregs.h              | 190 +++++++++++-------
>  arch/mips/include/asm/msa.h                   |  34 +++-
>  4 files changed, 155 insertions(+), 92 deletions(-)

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210923093628.GC7289%40alpha.franken.de.
