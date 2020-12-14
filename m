Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBW4I337AKGQEDWEIILQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 722032D9AE8
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 16:27:24 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id m67sf5102766lfd.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 07:27:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607959644; cv=pass;
        d=google.com; s=arc-20160816;
        b=sCtUJhjcEdKmrRHhmVD9QjFfk8CIqvXh0feOL20vDyIOkPmrbvLL0n7pQRkw/G4S5X
         KqC5TZGYYLYquT8HIdaADH/k8nl3rFqbEwBL7UW+0gOtq2oXoUI1uNC603P/00WI9ejz
         ZDHCNq0ym372YVxEPKtB8A1LA1lJJE0wLMZMqrMPRiFNwlf7PTNtuCE3N4Jw6sS6oqDg
         fSsgmtrjmXwZhJOQe3Qk6STh/U+pLv5wto2palKdD157K/p9jsSUULJygZv8IBLWmogW
         HEejDmirwGaJ9A+BULiufG23Tz7RUk+jriYO6DbE45RO8nTw866yTN2jGeSqtFzDUqbl
         6l7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=2ChyitS/X9TMmFnTMY1lTXQAG5pU/NI2BKro+ze3+PM=;
        b=HCjTthMG5pCqLf653dc2uRGg6KhgVYcPuj5ppNPk45Wfni2ZyAIdmK3TYRXlD2VhRw
         6wk70mKxuwP2D2piEVX0dr/Wv/cPx0D1wbQoWZ9MGe1JhxfVUVQKf7ODixvHzdziUwML
         Kpg7PwH5aCH4Z7DBT4gRMFkvZZxHucben1fRPvZYlYt0qjE4NFjrD+DpBy1yUOSLASK3
         L01Zr0Fj8QGu28gzlDB3AWJM0JlOCk9i6URDYgjgGnhgjHaLPdH8P6FIus/J/j8XzGXp
         8l2u9A5hbP18F4NGcaYjJlDxb2hehyliYHPsguwd0Ayr54mOVNvdx6PGSs6qYsLyIqOh
         hiUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2ChyitS/X9TMmFnTMY1lTXQAG5pU/NI2BKro+ze3+PM=;
        b=GKirrkywqha0tx+c44/3RBWW8aRONoI1wktrjN5XcnbGnpnmksSCSVOXw569b77iG7
         K1r9No8nJ+5htyQfK3HiMQWX30G8+iE6FQxyjPMnfnZN8u9lHlOx1C+FCeeoMD3tOSIK
         eoeBZU1nJLlIgdJFcmEYunYRSHZS9n/qfvjzIAJ28sBvU32Lci4KP2J3+MSEs4KsRHK9
         nJ2vW7x8lrLrFeiKpDvLYzktsy3FGqwNH+Z2WfSLnlHHqPIpL0Sk7UDK6bAeFORFaV9Q
         ntyTWVkL249gHBfAy29CgWWW2l0CEKbmWR/RnibcZG19ui9LfaeQ65pkChZXA0nUQpCq
         X6Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2ChyitS/X9TMmFnTMY1lTXQAG5pU/NI2BKro+ze3+PM=;
        b=GDifM6kQrXWXiT/RO5qc/VjQ5HgwDpQ0tvrhA1uVDdlRb0Y0MCbynfJrwf4eOCp8yP
         mnFmkIfRzO/gP4hzQxTcQrpYqGJG6IY+AWmAeov4mZResvqyx4MAfIF8DtPREAgtifEL
         L87HHIGENBYRWh+OLH5OgESRQko5e2qaioOhfZccvSuIF98eR4pc50+jsoS5eizXsidp
         8Xbth3k82TZM2l07mWajeKoMvJOc6hbwSg1e3rEkYWPP4b2sc3uMdlpIdmNZIY4Wfs0m
         u2EaBCwlguVdAhnusevogPsR6PIlR6CXsQ3msvVcf7iuKk+PLqfUL5dijbqD3ivRmRgW
         312A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kTuBjFzcf3n1Rn2UGOcyVHqIO2VZSSV7lpSgMoo7dO4WWdI5l
	nokVPx5dfwOyYd5C7XzV92o=
X-Google-Smtp-Source: ABdhPJx4qz5Wpcagi5OA5gwwkrFDC02VVbK1MZe0tojGBxrGOG/bNWyv0k4etOibKzhiFJcx1A9PBA==
X-Received: by 2002:a05:651c:542:: with SMTP id q2mr11266261ljp.19.1607959643870;
        Mon, 14 Dec 2020 07:27:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls1061691lff.0.gmail; Mon, 14
 Dec 2020 07:27:22 -0800 (PST)
X-Received: by 2002:a19:5216:: with SMTP id m22mr9730001lfb.459.1607959642847;
        Mon, 14 Dec 2020 07:27:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607959642; cv=none;
        d=google.com; s=arc-20160816;
        b=jGwl3YMGli/R7YOYybGSHXiVtT+0enh9aKUJUx/r5VeHOvUzX1vilgzIM2C/a9AjFQ
         KyPYIxdufcAZV2BPkwG8QfU8GBTkkit2ioDKC2+OeYq9Q6gNrkf72aZQs8B643T7Rgtu
         WrxADE4W1eVvR76thQpbYZkBzZHdE5Y0ry6GZpGwSHFSXbZSBRnomMyFHD7AjF+wFmFP
         PQKB0G29Id7zUAakLjZjVZsJhNe9zPP9QJboPgwAgS7q2ko9NH7VW+4F4ge3lI1y7Usv
         LhM87K0TgpVt51gk/Kh16qznxyTo79OLOwqWZz6OzIcquqp0cDDMwsDC7xX4eOiyQyXo
         1qsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=YcL8paRLO61HnxabxIb11Ll1Hhi6y3osxQ9fDuMHbuM=;
        b=dgvuwdG4oWKlyJ0pCM4pYtumME+eGqRc/lKMtRbRFOtBzvU9SZHn/3ytiX+N6dKLrR
         AOidwgCFRueGd5+fKp2TP4wUlj7NgCy2PtY00W+Cc9SsprP0SkkDNTbNOIR+Je7/B3Hp
         MC/jBTcvnWMJqojIy4QtieulOov99vDtxcckkv16PlH9D741/eDDGSzXOGhwlIEaG/zy
         NOvgNvW56ZZLSJq0pRJel8QqPk5amI6tlMuzAq1ZP2hHCa0R0iv9QA37JDa51/r6BwQU
         v0bCCcHuH27MRnoMLreBayKs1cflj+hJ/rHauUNDD/I6sBoil+ZOD/d1UbfHZqJqj3br
         U07g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id h21si726141ljj.6.2020.12.14.07.27.22
        for <clang-built-linux@googlegroups.com>;
        Mon, 14 Dec 2020 07:27:22 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1kopkv-0006Cf-02; Mon, 14 Dec 2020 16:27:21 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 60377C037B; Mon, 14 Dec 2020 16:24:47 +0100 (CET)
Date: Mon, 14 Dec 2020 16:24:47 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Anders Roxell <anders.roxell@linaro.org>
Cc: natechancellor@gmail.com, ndesaulniers@google.com,
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] mips: lib: uncached: fix non-standard usage of
 variable 'sp'
Message-ID: <20201214152447.GC9149@alpha.franken.de>
References: <20201211102437.3929348-1-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201211102437.3929348-1-anders.roxell@linaro.org>
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

On Fri, Dec 11, 2020 at 11:24:37AM +0100, Anders Roxell wrote:
> When building mips tinyconfig with clang the following warning show up:
> 
> arch/mips/lib/uncached.c:45:6: warning: variable 'sp' is uninitialized when used here [-Wuninitialized]
>         if (sp >= (long)CKSEG0 && sp < (long)CKSEG2)
>             ^~
> arch/mips/lib/uncached.c:40:18: note: initialize the variable 'sp' to silence this warning
>         register long sp __asm__("$sp");
>                         ^
>                          = 0
> 1 warning generated.
> 
> Rework to make an explicit inline move, instead of the non-standard use
> of specifying registers for local variables. This is what's written
> from the gcc-10 manual [1] about specifying registers for local
> variables:
> 
> "6.47.5.2 Specifying Registers for Local Variables
> .................................................
> [...]
> 
> "The only supported use for this feature is to specify registers for
> input and output operands when calling Extended 'asm' (*note Extended
> Asm::).  [...]".
> 
> [1] https://docs.w3cub.com/gcc~10/local-register-variables
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> ---
>  arch/mips/lib/uncached.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201214152447.GC9149%40alpha.franken.de.
