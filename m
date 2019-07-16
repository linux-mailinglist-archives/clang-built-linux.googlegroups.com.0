Return-Path: <clang-built-linux+bncBD737MVJ2YLRBGWPW7UQKGQE7HEM4KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C7C6AB51
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 17:04:59 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id g13sf966652lfb.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 08:04:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563289498; cv=pass;
        d=google.com; s=arc-20160816;
        b=ASh9r8QHFxD09HL+eAILtl+KE3JjELbCfArtrfLizB3kl/m82ItG8sZDmZlX1NewxJ
         /DC8c1uhN53XfY9wLAfcc9Rx8/0AVtxIO5iZxnP5w6Uem0wQ42b4kjFGw8o/7GxLSyUr
         +5DEk4tXvYHJwx9iBH57WWatlLsMgTKDpS7lrLALhM9jYh+3x/2VZV+YYd4yux2/I9Hb
         J/ztXCSvqtXozC/VSqNCyJvL+n4nWI2JM9buh0Ml4Zrdu+jMpRPCPT+JNVmThu992MN/
         aobz3veg9add5AFNYSjArS5KszG0878H36X5dfHI5mRiNfcYzfpUScdAWWnqa2J3jNqf
         4Sbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=o9lJ2VLklggev+lZEvPqwMDp5pkoTA8MKdlbvVtuB3Q=;
        b=Sf0gQ8+3QU6xTnUSFapNgydSt4AlWLQ4Fs1t2u19CfQu/1AKHJBrqkFErWg93ixqvP
         P2O/MuolgjRJWamFN0Mv7Wy+3Nw1sQ3I0ED9Gx7x9JHBq4ABsj1Z3lD8hkuqGkG+hflW
         UCrX77bUQsyyEu23Snqv636qGzefZhev2UOhiHOH/FhrhJttaq1KH734nohUR+ffCOck
         AsXeam3KSlEEg6LMf+WnP4wFsjXkVZlHfek7xGjBDVpJ/eAI9Fqw9zSHEq8otYNwlj0z
         RDMoJST86ATF8xI55PRnqp4GOKIDNll0F+sn2FdaAWjGq7eKV+Ny+FM2/dBNw6BJ4d5h
         BKVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J/O/qFcu";
       spf=pass (google.com: domain of willemdebruijn.kernel@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=willemdebruijn.kernel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o9lJ2VLklggev+lZEvPqwMDp5pkoTA8MKdlbvVtuB3Q=;
        b=fnL59TK46Fj2b/5reW5zN8HUIAt43F+Yyv7VMNixBSmWUl78y7/eachgbugt0puEdw
         57N/KicbE0mKzC9LlmRMU+I4hqYM/5xALx2xeXpG+HfLfnNjNwoJNoyM3rfqRIF1PQZ1
         7FLqxmpGHeNce3KTU/eTMm1GJYBDUn3wAA7hQro8L6SVFoYlk31tIhQIiYbSdsem6o+x
         7zxhAwN75LHmGWHybEZj5qnANHbGHMyGWmFKSEAm21GsYOptbPVut5LwCibwc/0GY3XK
         uIKftRksWMQHOtJB+JzKx+40PUivnTOdeSVi/Y39ujQPEPEtGqmQEFufcsq/u5ut7X3Y
         7/VA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o9lJ2VLklggev+lZEvPqwMDp5pkoTA8MKdlbvVtuB3Q=;
        b=s677MzbhNAEwmKK/QfChUmh/ctN51Uw6QQfmdmlkYbl3LsSrZ5RAhLLRSFZ6KumV6f
         PS567LJ+4WxYvChf6xwMUYzO3XvcMM5f/Xhd/YRh3HD5mz7pqH3uVKRZ5cOY0OPkiw7H
         C7ELzZBY4AHQg1DLTYDV783xbVynS3wQYpvEUvpAmn2MMBBq8Cyi7Y6bgUW60ojIoDwR
         sYpwa2HDeO/dAv5VrMtCnav/h3n7RfuZlT0k/eO8d4909RHsFAvWh3GR3uUFHYR1ftVB
         QYjtq4dTYhdNFu5Arw2acv60R+iXHzeAki8MdN1huY+cMbnF4WsKPN41UrOLVlKLjEn8
         blRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o9lJ2VLklggev+lZEvPqwMDp5pkoTA8MKdlbvVtuB3Q=;
        b=seXOoQKS/+qMhx7st9p0E3JLq3UeG9q+HeOFbAc6thMahMFJb/qfeRtUS0SBjL/P8G
         wUnW4aN+k79D3ugVI/svCtjwgbkEuKhrqpt57nrQO+erhNiGKeIY99aPv+v3zfwcxl7e
         njMW+lBtL3aUeodpuqQMDuTdXGcEoemO9T90kk63oAXcZ58dID7aLKrqPBXg69KiAcx3
         rjlIXGfDoNJPIIL0yT2lIusanQYIUVxLn8CpnF2+LjCz7gwnAFoDK6mHmXJ3fEUxFVmS
         4cXFlACcwDFwkacZd6BeYRPzPhkuoe6VnVObca4TOIiEORhBYuhXVihzu0MlYdUawit2
         h1Vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVi045mRZvGQ5HJhNu85TghgQKCIaNPMWwd8r42xBUJQ2x2SWdv
	Y4QZV0dmE7zLzjuxv7D1z+c=
X-Google-Smtp-Source: APXvYqx+LANeZAn+bfUTwlbPTrFThEO5edD6gMdpT6jB1gknVdhKVd49BXUk5KMKHmebLLQIoCgEJg==
X-Received: by 2002:a2e:8756:: with SMTP id q22mr18095929ljj.108.1563289498534;
        Tue, 16 Jul 2019 08:04:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4c2e:: with SMTP id u14ls1672326lfq.15.gmail; Tue, 16
 Jul 2019 08:04:57 -0700 (PDT)
X-Received: by 2002:a19:7006:: with SMTP id h6mr14831359lfc.5.1563289497872;
        Tue, 16 Jul 2019 08:04:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563289497; cv=none;
        d=google.com; s=arc-20160816;
        b=HrheoYD7jujIoKDeiMJe0uif5K1kyn1im6CmKLo71J6pNsazc1My2+Hh0iJD3qH7ZV
         koiwthdH0U+74CBP7XAa9v94PFKH/0omFCQRUb/ToJwjrn0YxGyuIiN9RRN1NIO9Fbks
         e/pN+Cpv4+RWguZ46FpCTqUEsT72m5NaPIQFwfiqQiJxn4oesj0d60psNbX4f4fFxop2
         ifGmkfP7GsTfRx82ueWgM1MwVwIY5VWwQ+zC8WTm7N6lOhV2Amy6DuXFw9OYm3L4nJ66
         Ppfeh3kTfrxaJu8at/wXXOeYcaOtkDpVydERpTp1c/EYfLYaA8YfTKsNPCLx2ekSHojR
         NA6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rLKY158y7o9w0mksAJ+3djh07wVS+19os39rfVhg5lg=;
        b=jaoREmBuk5BVlJyJs6qISB9gJOyE1RpvjBxPg9afgc84IAe1h6easieJwPfPsJe8Dz
         S1wwR2/wKZ4UBGRVFziGJtsp7Kk+HlQRJ6PxybG7+tHhhApYF+F2YvGDPAMIyfRwrrq4
         Vl6dw/tNNBEc1PaDuLFHIhidsVK/LI1KgsC7xkk51p8dln94F65RAD6eTsvNM43ZX3pR
         FjzzQl0rGMoN5ohr1GRtSUxis0Bnv2X8Xk1tTGDeyzgsrKRxtgcCXhcqDRptYJTf9z4f
         Ka5hk//Yi7lpOoKztsA96GHEA0+IovW6dmco2o9/G+Njo2ZQBtD2Boudu2drPzcw+wVb
         U2sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J/O/qFcu";
       spf=pass (google.com: domain of willemdebruijn.kernel@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=willemdebruijn.kernel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id q7si1273560lji.5.2019.07.16.08.04.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 08:04:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of willemdebruijn.kernel@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id i11so20542009edq.0
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jul 2019 08:04:57 -0700 (PDT)
X-Received: by 2002:aa7:d30b:: with SMTP id p11mr30420633edq.23.1563289497311;
 Tue, 16 Jul 2019 08:04:57 -0700 (PDT)
MIME-Version: 1.0
References: <1563288840-1913-1-git-send-email-cai@lca.pw>
In-Reply-To: <1563288840-1913-1-git-send-email-cai@lca.pw>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Tue, 16 Jul 2019 17:04:19 +0200
Message-ID: <CAF=yD-KW-XnDvD0i8VbzrkLGNWEY6cPoaEcHy40hbghGXTo+kA@mail.gmail.com>
Subject: Re: [PATCH] skbuff: fix compilation warnings in skb_dump()
To: Qian Cai <cai@lca.pw>
Cc: David Miller <davem@davemloft.net>, Willem de Bruijn <willemb@google.com>, 
	clang-built-linux@googlegroups.com, 
	Network Development <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: willemdebruijn.kernel@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="J/O/qFcu";       spf=pass
 (google.com: domain of willemdebruijn.kernel@gmail.com designates
 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=willemdebruijn.kernel@gmail.com;
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

On Tue, Jul 16, 2019 at 4:56 PM Qian Cai <cai@lca.pw> wrote:
>
> The commit 6413139dfc64 ("skbuff: increase verbosity when dumping skb
> data") introduced a few compilation warnings.
>
> net/core/skbuff.c:766:32: warning: format specifies type 'unsigned
> short' but the argument has type 'unsigned int' [-Wformat]
>                        level, sk->sk_family, sk->sk_type,
> sk->sk_protocol);
>                                              ^~~~~~~~~~~
> net/core/skbuff.c:766:45: warning: format specifies type 'unsigned
> short' but the argument has type 'unsigned int' [-Wformat]
>                        level, sk->sk_family, sk->sk_type,
> sk->sk_protocol);
> ^~~~~~~~~~~~~~~

Ah, I looked at sk_family (skc_family), which is type unsigned short.

But sk_type and sk_protocol are defined as

 unsigned int            sk_padding : 1,
                                sk_kern_sock : 1,
                                sk_no_check_tx : 1,
                                sk_no_check_rx : 1,
                                sk_userlocks : 4,
                                sk_protocol  : 8,
                                sk_type      : 16;

So %u is indeed needed instead of %hu.

> Fix them by using the proper types, and also fix some checkpatch
> warnings by using pr_info().
>
> WARNING: printk() should include KERN_<LEVEL> facility level
> +               printk("%ssk family=%hu type=%u proto=%u\n",

Converting printk to pr_info lowers all levels to KERN_INFO.

skb_dump takes an explicit parameter level to be able to log at
KERN_ERR or KERN_WARNING

I would like to avoid those checkpatch warnings, but this is not the
right approach.

> Fixes: 6413139dfc64 ("skbuff: increase verbosity when dumping skb data")

Thanks. For a v2, please mark the target branch, as [PATCH net v2].

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAF%3DyD-KW-XnDvD0i8VbzrkLGNWEY6cPoaEcHy40hbghGXTo%2BkA%40mail.gmail.com.
