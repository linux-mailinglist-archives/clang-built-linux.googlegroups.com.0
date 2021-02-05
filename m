Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ636KAAMGQE5QJPOLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E77E3102CB
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 03:30:29 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id v2sf1977655oif.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 18:30:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612492228; cv=pass;
        d=google.com; s=arc-20160816;
        b=I5AU2JtwM0B/8Q6Iv5RdOF6YvOuA37Xv/ApEjjIGddLIuLW9SGnqEoI7CXo4Utt1E1
         dRlqSXqkqxkMNwawxsCN5BVxR5KALWUVNizeIJDR561dGdAM4tS7obMUk67z4ZKivnhA
         B4GHPJTbSy3Zq6C4yiGwh/w1izr514O9EUzk1dMWtSlYc/aBhdCS/tVh1OnO714wuwzb
         MFiaESnDV64w0+1QdInHc2jsnQOCvqTgriZPXnffqL3qU5nGlCnu1uS+93RVC0bTNVFK
         ahxt/3vGFZ2QQTYUei4744viRNar4lS0tysfDAe6y0EUtpE6kHlkby8imJTgHX5jwPpI
         whuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nt4JkvrQhwogLzzu8qOG6w+sbxEtqZCwsRsabiWnn3o=;
        b=oDTQIjgIE/r2Xq3g7l1+LuPTw9i8K8/kjq3gdO7QrAagNLcId6KgcloB84/D6ZqKfX
         hvUXLmkbq9elFhaIxshhPB1tupAijTi6XNjE+6eeKY1TqdWJZ0sX+uA6Byhh7y9Umbqc
         u/pB6RyUQFgkM5yqGyw9KVpZOsPu1+EjjfiVOsC5wxuhj+snttIAYJkvBDnsZOGtWPIu
         1SoqXhomz72O3C45VxQSddgSem2+ADDjsP6rsYYGPQcCmF4NBf4vfRoyPxStteBfBlvU
         XTO3SdRpYvYuys0PaHeXJEoWTmGRpa3efQwgOvDV/Vt2+ygSYfOpgRTe8nguZug2kJ8v
         3NRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SOI1Z5ci;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nt4JkvrQhwogLzzu8qOG6w+sbxEtqZCwsRsabiWnn3o=;
        b=b7Def9sDiiOT2kZCO0MmC9Fbc82fHR58cWiLp0srBCn/0RGJZ8hi4jRlsxdz0fXxh0
         921lg//XXGCkUT6qYWbXMQvxb711hpgPEfs9UEgB52QG40xyQc54UHWeuk+uWo4taDQ5
         i4CE9hgxuvEoh+ONS8249tPiWuzG4zpJjXEDxI7BJPuvGtUvciM/PFRffdGDMSFMkJyA
         J2get6mv10JL9zSB1ByAO9Wpz/aWxK/tXicCzBmZGytQtYHI/10qM+0sLHA2uycGnri5
         HlzYW4FQZLnlalM1YAplXAI+/2D2IzhaZEXInmRVL5s77aCfg5Ms7kvx2887AOZjcJfa
         F8hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nt4JkvrQhwogLzzu8qOG6w+sbxEtqZCwsRsabiWnn3o=;
        b=JIah7C33KNfAhp3dDqqxqH161OfzEi1DwnYzoO1lp4B+YbDetN5BIC3bfwDKdOuYAN
         DD6izPfy84bG5kxscb2KV2C0HTIq8dk1rBAW+NLiBpuyMzAaskTY7TV5PecXg1BCief/
         xhkdb0GIEaPj+FGwukJ37RkWZsud//Tm95r3bvzQYEkHuURJgI4Gx++I24wiel2GXnGC
         SvXtZs1XXUrzydXkvrs/di0YOFZyC29z2MljKpfCmVe63uwyzCogH7eaNaY5Zme5Xkyt
         HDeb6rO4FESHSAn+z9cfSJFjaHmoVaZzj9tmLD9uaE8ADQWHJRSCX80GqprJb1esbZAr
         MkPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Zp5f7CJKLezwsXAlyIR1ZRg3FdaQTsbCL29RlZdzVJifrCm84
	UDXaoMTH3Q6CoK0FyIFf2Ug=
X-Google-Smtp-Source: ABdhPJxCTgWNoPWoPdrKZU/aq7CRtlQ1RXHxnddB+7lgLZYeVJ8VnbvPfeXkZDwVL8uXZ6V2GXiJyA==
X-Received: by 2002:a4a:d30d:: with SMTP id g13mr1867753oos.54.1612492228075;
        Thu, 04 Feb 2021 18:30:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9868:: with SMTP id z37ls471173ooi.6.gmail; Thu, 04 Feb
 2021 18:30:27 -0800 (PST)
X-Received: by 2002:a4a:ce90:: with SMTP id f16mr1827663oos.61.1612492227704;
        Thu, 04 Feb 2021 18:30:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612492227; cv=none;
        d=google.com; s=arc-20160816;
        b=eFsfqTrKgDgOjMYAjYXV2lwGBAcVRm+uCujIiM9kahuTCbkMEx0KMxZ67ccC4AJnon
         ni8nXCocZqITwb67ks9L8TDKvB98IfKptAo0jCnJECDxTnA+q9dvJE979KcFF3qFYYqH
         4WMvwx5Z9aCrHo3UAnQZpkEGmFzz+Zfj+6N3h44fO2A4wE8VtB7l1wNsl/CahEqbq2eX
         gQIvr5vU3CsEoP0UYluyrLAui5K5+vBJFBXMyabOaXgDtiT6XSfLjAa3DYR6aFl+GGdR
         AMhKv3exNOdEKiHnZjKPsI6ldDZcFfpCUJRSHl4zv/3LPgPDrKZWwf0m8uOComFVApiN
         RnFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aMKaUGaKNYBxFNLjEHZCw2j40cBK6i/KQbabFT0Ckv4=;
        b=wY1IotnCxIxqs5YGZHtGbm8UpexO5g1aPKdl4zf8RTa3ZF8PL6e8y74p6h6nguHwSz
         wvf9J3DE4J2b7pbbgzkQkaD0ewJlfj8mQsCXeIiPzCrT2O/oks2LCUjbfAY+zhwQ8+1L
         q6LWoCehYO/HNDfupzJPSTJ/FALWg8mpx87qIcgrYedHWYDRYm0jqbesJ4QoAiyj0D6N
         r+8iu+br9AvYPFTz4RiwP/QPzGimGUu3KdCvwswdd0A0sjACFFGH0+EJmSKnRH07d/W1
         cprw0UVCUYaEnlvkhsT2M48bKhy0aOCPm9pjf9MrAGljkfwTA45yZRpUnZ/HjdQpVYvV
         U6dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SOI1Z5ci;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x35si551239otr.4.2021.02.04.18.30.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 18:30:27 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5381264FB5;
	Fri,  5 Feb 2021 02:30:26 +0000 (UTC)
Date: Thu, 4 Feb 2021 19:30:24 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Behan Webster <behanw@converseincode.com>
Subject: Re: =?utf-8?B?8J+SpSBQQU5JQ0tFRDogVGVz?= =?utf-8?Q?t?= report for
 kernel 5.11.0-rc6 (mainline.kernel.org-clang)
Message-ID: <20210205023024.GA2411290@localhost>
References: <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
 <CAKwvOdmqF=wXxFgUNyjJnCPtFnMrnbnuxP2APyOLimVbBqK0JA@mail.gmail.com>
 <CANiq72kN+tpC2J4rBrtT=ANhcs6F-RTpjGPFuowW+SdFgJF6-Q@mail.gmail.com>
 <CA+icZUWPN_fjpWyQN1oW+0y0naf_iajD9TzkfyxyMmHTnaS9Nw@mail.gmail.com>
 <CAKwvOdmOKvzHOBAichsZe6HQfJ=q0j+Gp_7QkhBDAKdZE9Y3Kw@mail.gmail.com>
 <20210204223504.GA428461@localhost>
 <CANiq72kHrEiYi-=rU6AXfi0TbWePCgKJSoW-PJPutJbWH5E0YQ@mail.gmail.com>
 <CAKwvOdnbFxge108d1ka14WH=OJ6aqHKJa8==Kuq50RHfKWkY1Q@mail.gmail.com>
 <CANiq72nsSxCjhmOhTVXxH1qyAftRbK5db0OCR7U9YcZx81PsbA@mail.gmail.com>
 <CANiq72mWT25=Z+L2b=_G7u_NeEwR_CKmZCD_33iv88h5f1f=7g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72mWT25=Z+L2b=_G7u_NeEwR_CKmZCD_33iv88h5f1f=7g@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SOI1Z5ci;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Feb 05, 2021 at 03:16:01AM +0100, Miguel Ojeda wrote:
> On Fri, Feb 5, 2021 at 12:03 AM Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
> >
> > Let me know if you prefer that (I already sent the request with the
> > same name as the google groups one, but these things usually take
> > time, so I guess you have time to change).
> >
> > On one hand, linux-llvm looks best (and follows the other linux-*
> > lists). On the other, people know the project by clang-built-linux...
> > So, up to you!
> 
> They are fine with both linux-llvm and clang-built-linux, so it is
> your call. I think the rename is a good idea if you want to give a
> feeling that now there is official support for LLVM and Clang in the
> kernel (and commercially supported). For Rust for Linux, if we manage
> to mainline it, I was also thinking of a rename in the future to
> linux-rust to reflect that too.

My vote is for linux-llvm as we are focused on LLVM as a whole now,
which includes clang.

> Also: do you want to try to automatically import the users? That means
> parsing the old emails and subscribing people automatically to the new
> one. It is more work for them (so let's avoid it if possible), and
> they would prefer to start fresh. I think it is a good idea anyway: a
> cleanup is always good and people may find it intrusive if they are
> subscribed automatically, but the option is there nevertheless if you
> really need it.

No, I think that people should opt into the new list. We can post an
announcement that we are moving.

> The archival is also requested (although that is done after the ML is
> setup, by another team). It would be great if you can see if it is
> possible to download the entire list as an .mbox file -- that way we
> can migrate all the old emails for posterity. If Google Groups doesn't
> support that, perhaps Nick can find an internal way to do it ;-)

It does not look like this is possible within Google Groups but there
appear to be other ways of doing this?

https://github.com/icy/google-group-crawler
https://pypi.org/project/googlegroupexporter/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205023024.GA2411290%40localhost.
