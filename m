Return-Path: <clang-built-linux+bncBD4LX4523YGBBM5XXT6QKGQEKHOAREI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 043A82B2955
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 00:50:13 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id v13sf8436843ybe.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 15:50:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605311412; cv=pass;
        d=google.com; s=arc-20160816;
        b=cN7vQEk1qmO7PQV0fSgz8ZJnziPN6Ta+EJKBybll78PQeQfjc7qeQmq3FoaYs1mbwX
         WXh7v/S+TXl67G85fJdaJ4Hr+hUQ8ZbCtEg//ToTX9UxS9B9BqgV1ZGnX35NWC6rtNtm
         a52zbjy4J28yfsCiqjSJT6ln5KoIgYn4UDVDcIRVN7Nep8u4OKummIdadz2lJ7KnnZYN
         e1GsZj5MBEtwn5EoNcTaqfPuRjXhOlC3HP7HIOaiTIdYbok5h2nWq5leOc3JwsZdH4SC
         V0hUU1JppNZJi6x/DyzIWs//tKQew3Ml2IwSzgRc7AW7GhjXpAeDdUhc/qPi74Ftxu7R
         JRug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yYG7E0Lx9+d/bBMIfqKq4IAQNimKb4GhJkO+01212Nc=;
        b=eIDEKE2jMFrt1MARBBZRyCECDi7S0Tf5okK6gxVZ2K4wRIThyIgfXObsIVA03lacd2
         KW9WEBpORh453Qved8hjeOHssP78ZIqLFTNxK4gJrw8eH2quK/S93xtmOKAQJBJgj8Rj
         Gf/Wyswa6v2xFGVqzBzJwBysDZUjI2rPlHW/N7uRKCCm3vA7b6r7HQEapT3obQkZWat9
         NCr/U/0XYHtH9es5+47hpOkjAa5gd1u6BSwjQzyBBmDxQa+5iN7rGTUNCjZoUoDr6oVq
         G7bxKLu3jJVbcL3KGQkS/NnUDW7uow50w3UYNOvrAxvzg1dR6dKYa56lDtIliZzLOSJ9
         +Ezw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yYG7E0Lx9+d/bBMIfqKq4IAQNimKb4GhJkO+01212Nc=;
        b=ewXkOz89HE+59FN2tGHqTAVwlklatMUa/DtP9JMotTDADcEWkCRgdWH8Z5hFRf8Q0i
         jPXRw/I1zMsY1CiXI8Ii9xtv7eHp4SGJuQkRD76oAN3dktDxgIczpXDtAtByybU0oa3i
         MnXbf5jQAkB6wVVzWYezNyyQp4yb2+B7bhUj/pVKQojQTY1PKrbr6VrjSGmAp18B8zK3
         tfP0AWsUfzxpFT7J0yNZ/dxAsvQ/FwAi0wg0fl5Q8lPlEIkVg+UuE/xHQpobyzkSIipy
         YUStRL/bHRcFU/b4563hFKN/scbPXnMam39qOn9YYtCM0xd7WTqH81CfaiL0yTJsqtBu
         8+qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yYG7E0Lx9+d/bBMIfqKq4IAQNimKb4GhJkO+01212Nc=;
        b=qQzVxsrkl2WxrsWYBR/TwlhxSBZYHe8fnbsZUY3jNdNgq+T76krdwx7x2MQURgcOw2
         2S/UfWzKwCxYGQNs/w4SiL4c0NKs/n8NQDAxWSsmU6O8B4gguym8sxQbiEp6oZN5Ileg
         DxUdJ5d8M0lzy+Mmc6JZFNk6tAtNn6vEHPuCi6biECbD+5BIwj1rGPizWsj7rt4nnkeZ
         NDRh7LZxqJdxb+zLcs6LDBHIHXg7WbEQJJvraARUQQk0SzymmktVQigY37IHIjVUoNSI
         isc4K5lEwFF+F7qxRvgm5P6Czqp7hWFuFK/CvMSS0QAITFoYkvq9cCQwC0wbJO45to8t
         AelQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cjeSdOFeb1RcjT9t52/7VsXcXAOCRUnKskptfTO8uvOT/GCoG
	+QLFOiaYpxDhG0VPUHFgn6M=
X-Google-Smtp-Source: ABdhPJwEAx/99kLVDdI1LbMUf3pTXcyqQBNCR0+aEgANUYaqBQA7iefU7jn1ywytDX89DfZeCNxhMQ==
X-Received: by 2002:a25:7ec6:: with SMTP id z189mr6082604ybc.8.1605311411839;
        Fri, 13 Nov 2020 15:50:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2d56:: with SMTP id s22ls4096732ybe.0.gmail; Fri, 13 Nov
 2020 15:50:11 -0800 (PST)
X-Received: by 2002:a05:6902:72e:: with SMTP id l14mr2085423ybt.175.1605311411308;
        Fri, 13 Nov 2020 15:50:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605311411; cv=none;
        d=google.com; s=arc-20160816;
        b=gUrOUjLv4xXjAIiVYIAkqTL5jZGFGzruqEsfe/Jz8PE7ZtfAFkSi2r/nQPIW4oJ32/
         XusbOjOzzdHYQQq7hMNDCTGIQenXm/2VIS44HSLiXHFiB/oLQxEi07n3VAFSwrMvW1f5
         5cR4CId3AgOwguvFyfq4gtq+XFs8DMQj/yhnsbr0vXQ/GQJv9ZOQO6NjzsKHQuit1G9J
         +1TGBaGWAwrl9suxvOEkzufTIRZqokb2erlNHStuF3WiBW5Ndn794uUNxbfD0a7bkMDe
         pMJ4Pcu0XsveRDzaVSMjaq92tybpvE2/wNoP9JuXjw4j8S+4AZ4zsTFTawSlf4o2AEVo
         4ujg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Fn8eUHxj6PUsElCvlxoTv63mO0QbAqv01bHyzyqEdbQ=;
        b=rOGZ3i+Qv3DgByZLyGiL/8UoIx3SsyKqnm3xxMKJ1JIb3Ki/+lpYOw1SfPDRi7pGKd
         1R6ZM2CBNYCBd3MrV4KEKxHIi28TyiTPGSBEOq690sq2SmebeCtWYvgJx4PSXZEvV5aq
         PNmPjsgYkcmKYd1z9n8d3+ZJwusFQ0gZb33KEIaIbz1eGiJi6eaF66eV33D+wYtDve7a
         W/+c4CG7hDMKAT6QPXimAjq4Tlo5ukzAWZGAjOlNND8mZjsJ1oF9aLCmDpfocxqcIFj5
         mKqkG+FA6tVn3eVypm0SSJWxDP8v0Tn/UhsgJrvcEIUfRMdVg7/IO5vZMubX9v1LIGtR
         FPBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id g36si600434ybj.5.2020.11.13.15.50.09
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Nov 2020 15:50:10 -0800 (PST)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 0ADNl2Ne002336;
	Fri, 13 Nov 2020 17:47:02 -0600
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 0ADNl1rc002333;
	Fri, 13 Nov 2020 17:47:01 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 13 Nov 2020 17:47:01 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Alexandre Chartre <alexandre.chartre@oracle.com>, kbuild-all@lists.01.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-toolchains@vger.kernel.org, kernel test robot <lkp@intel.com>,
        Arvind Sankar <nivedita@alum.mit.edu>,
        Ard Biesheuvel <ardb@kernel.org>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST entry C handlers
Message-ID: <20201113234701.GV2672@gate.crashing.org>
References: <20201109144425.270789-22-alexandre.chartre@oracle.com> <202011131552.4kvOb9Id-lkp@intel.com> <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com>
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

Hi!

On Fri, Nov 13, 2020 at 10:59:26AM -0800, Nick Desaulniers wrote:
> The `optimize` attribute is both non-portable across toolchains (hence
> this warning)

Like *all* GCC extensions.

> and a little quirky in GCC.

How so?  Don't spread FUD please, say what *is* wrong, then people can
decide for themselves whether they want it or not.

We (GCC) do document it as:

     Not every optimization option that starts with the -f prefix
     specified by the attribute necessarily has an effect on the
     function.  The 'optimize' attribute should be used for debugging
     purposes only.  It is not suitable in production code.

The optimize attribute is for setting/resetting flags on a function
granularity.  Not all flags can be flipped per function.  The SSP flags
work fine though, AFAIK.  But don't use it for production, there are no
guarantees.

Cheers,


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113234701.GV2672%40gate.crashing.org.
