Return-Path: <clang-built-linux+bncBD4LX4523YGBB4WDT2EQMGQEBLG3TAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4833B3F89E8
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 16:15:20 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id v30-20020a67c01e000000b002c05ed33364sf75278vsi.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 07:15:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629987314; cv=pass;
        d=google.com; s=arc-20160816;
        b=LgyeKUTJlDHribhoQefggDm2xgfujNsnoJwkE8537cShaNthvMiLruRpx5prkWvZUP
         JBjgk7Rlb8HcksxnvMFL87B4iK2QQznUL3bf1JwZPnE+MFFip1if4RuYAE5CCeBwAX99
         Ed6goIzWwhcOG9+UYYziHxNm1Wh6Cf4peAEaNDcz4INmIADrMvG/CgQl291/U7QVxkr6
         Re8peK/mNaaUM6EAOK5P/0cutIgxox/LxNkfuO5DNzuQqhF+q438eDUfEL7Z2lkNCxMA
         BFWFi+rtq0vBnNemv0fXHcKRpiNYQ9H0atVfAQYKqF6EWF9q2MJ9iK99q+o5LJLiKuAe
         hSWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=0qVsJp/gX/jCWiJ/rn+VXzMxfShm6yxM7MFtLOSh+L0=;
        b=CDqnQAlF9FZgWpJRgzDSiH5gQ/gzPbIuFxnHcdtpA1qPd71jjX/YZzpTs8RM7+MGQt
         drEzqPYcGZEWJLRvtvN5ZcvqI0PFJ72Ws70mLXCiaDXy6Ch98yiEsEwWogjoy2GULFWS
         8x5WKmsCLJ7jXyDOvdvGinltFfcO1YsVJsfEY7LqU5o10aB7AFq7Am4Tj9pkGqYHCrla
         un/vaJxpIT1EZuKh9uoUGB42Z861+YYi8eK8+lPHk21uJoCOvgIl2rWoSva6YXbpq4Ce
         AcRYpd5SL8cfcuXWzKgYl+eJxTR/WvJ3Ndpvo1m0PKU7Y8RqJGiuHCaANHGrkMK6BuR0
         QRqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0qVsJp/gX/jCWiJ/rn+VXzMxfShm6yxM7MFtLOSh+L0=;
        b=N+3+sQFUhfg8ESdQyYj1iCQ2VmsZGw9M2Wvo4IyOuCOTZkQ0wDHpJe2IurA2IrOLgZ
         yaYrsHCgdzz5CfJ6MQqXdtt4YITGCjNA65eNplZslTamKW5q4YiMB7bXQb8m4kR5HDfD
         EiQ4JP2gLBqybc9LIT5ev8uo6a7QLV2Utn4JvgTFToPHY6OUIfYnpECuRW0pXklMv9i4
         TMtLCG0wM52PBNx0EtyH+1LRyqHLeom+6euqsqrqxYmY7+JRQm1TZwm/PhJVDAVJFTV4
         f/LeKgqW5OkMpvwDxXn5CeIbAacDQutXWFtr3nyfcO5kveUFDOvWAXnD86axUhqrtHvV
         lucg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0qVsJp/gX/jCWiJ/rn+VXzMxfShm6yxM7MFtLOSh+L0=;
        b=Qlg/IArmz0oirRdoMBbIMZF0oGEesiSr1dlMJaSlBLIncSGhqcoMkcZzVhY9dCGVSk
         UV/mgYUB9oh9X8jhyrxaEbSrB8GPaszmrELlZGrNUwyKIuBTDJea+nWFTRSltjorSQEG
         SPy4FtCTZeSs5RyTBRsZNF8i5IXDp5VAfR93lt8pgd96YBos+1SPecCPIvSSNYI01yBt
         yTSuIy8+YtYqJofE6C80rb92Liokhca59gBNvkloEEuEFenLFkc5KCrS2j75Ux89ZArv
         NrKOL7P+XeDVshl4oV0etMkzZqEl0YYxx58OxOv8hSfhG159UkfuVdKguuEcTZ5rDsLp
         8SAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332WGblW0FXRtfNZfat57FVQu+HFU3q0D2NhHz8FkdaH0vcLTPx
	NwaKLtYngnmByeYmUfHmP+o=
X-Google-Smtp-Source: ABdhPJy5aDIT2y/QxEiw7sUA/e0Y8dlfy/t9ioT7lvy5yD5kIw+X6JuSsv7vTX98pyd5veyJ7HkIcg==
X-Received: by 2002:a67:ee86:: with SMTP id n6mr2748312vsp.5.1629987314197;
        Thu, 26 Aug 2021 07:15:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:48a6:: with SMTP id x35ls630335uac.2.gmail; Thu, 26 Aug
 2021 07:15:13 -0700 (PDT)
X-Received: by 2002:ab0:2b8b:: with SMTP id q11mr2473406uar.105.1629987313713;
        Thu, 26 Aug 2021 07:15:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629987313; cv=none;
        d=google.com; s=arc-20160816;
        b=VMv2DuFELVlX9p51v1+3GjjZUeqSEODU1kUVjIjjX48vEfOEzcm0SYFfqTTzjhTqWJ
         NglBikwSpWq9Ciy+aaLs+wbWOF8J1Ii9gj3vqCqikbJB7TUBXgeVabgArqhlqsFm75G2
         FK04rViQAyfT1dzasoGZ5nKbAH4rEIAEz3z1mvvqoCLGdvp2sNbxlnbUcSniLpWlI7v0
         6QC/o7mh+gnzQ/gqux5A5uU+ctUSXwNljE3CN/FV9vtkVR1CO5psx5GEAFvYH4H/SsvW
         7w3ZEjLXebdyEK9Nulw2X0SqcdmOnvwM+hF42GK7/zgTJGuRH1N7Pq3oskyesSIRV27x
         XPVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=CSG25rB6Wmf9N3zvQrYzrvAYxWAkdcZh31ftkAbzw/Y=;
        b=O3SHAiAWxhgDJFgnpSPgVrVt/6cKBgPqVZTxAue0wTPuPxteT23EpQ4sh/5jVY2GxX
         AvlUYSHroX7SQwJddmojQ0ALAhRYCv/SkOaLU3d9wKSP3Z4E4zOXoLEpFd+NIzBeEWW4
         nmB+sMP8UNDfjd6bOZCYPjfoupFRtuy+2vf5f9MD8ttGgH3WsKDdjXaWl4EvM5wpk8qu
         UtihbLp8aS/J36U5wbzOIsjzIRHmNh55aDiEunJyTIZLtQDG3XbR2r55sP0cmh+/X11Q
         2Mo966Vx+37VrHVXwKp8MhvpaDYfYAteubaS1xFXBdh7xZ9zKJcqXNkIfYx6CroHmXDC
         Ybmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id w131si154173vkw.3.2021.08.26.07.15.12
        for <clang-built-linux@googlegroups.com>;
        Thu, 26 Aug 2021 07:15:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 17QECso4020353;
	Thu, 26 Aug 2021 09:12:54 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 17QECseB020350;
	Thu, 26 Aug 2021 09:12:54 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Thu, 26 Aug 2021 09:12:54 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Christophe Leroy <christophe.leroy@csgroup.eu>, llvm@lists.linux.dev,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
        Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH v2 2/2] powerpc/bug: Provide better flexibility to WARN_ON/__WARN_FLAGS() with asm goto
Message-ID: <20210826141254.GB1583@gate.crashing.org>
References: <b286e07fb771a664b631cd07a40b09c06f26e64b.1618331881.git.christophe.leroy@csgroup.eu> <389962b1b702e3c78d169e59bcfac56282889173.1618331882.git.christophe.leroy@csgroup.eu> <YSa1O4fcX1nNKqN/@Ryzen-9-3900X.localdomain> <87h7fcc2m4.fsf@mpe.ellerman.id.au>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87h7fcc2m4.fsf@mpe.ellerman.id.au>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Thu, Aug 26, 2021 at 01:21:39PM +1000, Michael Ellerman wrote:
> So there seems to be some misunderstanding with clang, it doesn't like
> us passing an expression to the inline asm.
> 
> AFAIK it is legal to pass expressions as inputs to inline asm, ie. it
> doesn't have to just be a variable name.

It certainly is.  That is the whole point of inline asm!  This way, all
of the C code "around" the asm can be optimised.

> This patch seems to fix it. Not sure if that's just papering over it though.

It is, and it makes less optimised code (also on GCC), as Christophe
points out.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210826141254.GB1583%40gate.crashing.org.
