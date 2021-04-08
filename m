Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBLUIXWBQMGQEICQKY6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5756C358BC8
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 19:58:07 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id cf5sf1614370qvb.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 10:58:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617904686; cv=pass;
        d=google.com; s=arc-20160816;
        b=D9Fq8+8zVHJ7J/PztzvizhUuV4QVcfZMyV7oO6+Q+AvE3711p5OVDVGyHRzsrxBlag
         UCEMXhqOVeB0gqgl9/JGEg3msb9TUpWdZYxU04QRX+yGN/llVAj11pT8A1ii4go+sld8
         HAXfe5Wt5TTjNWwKmq4NgfCk5o4vJYbgUhzMQ8B8rLPGSjSTp3lqqjZYIqhGeU9LZU7k
         8oewsliFJwGD7iXz1M4Dt3gHxvpML2lydmtCOTbRUiWhQrGdv6C6IzXdsygMnhN0EPqK
         HvQNBwfsQICn7pL9tGs/7dE3Gf1zAs5HROsR0zE1+lMqnLRYStVnwZpqAxi6cKdwP9Z4
         XuFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=btRm82lI7PCq9Gnbr5T43s/tYAR7Niu2TiJZyYaHZJo=;
        b=csJGLQ8Trin8kcwocazVfBExhx9zmu6kyHgYQqer2DiAqrfmDX9zsN6naLgMGWbCJR
         hsqohO9pNgbi9RWgyoV4usK1NefofPF2DHGopBwXFwlRWPCvQrwliNqKcYnumnrL07lY
         +tDopFyIG/2TdzFaZuHG4lBNcSw0SaMfFUOqH+vVyjDYp3WaiPvLPaKE07Z8dWA+Y3Mc
         akafdyYumjlh2Rgc7QWKnuQt9r3W0rRorfArEX8AKnGRAV2i6VTyTocLvoKj+Tq9hNMo
         i2r/IXCkcPHzNsWC2YHKYYchbkqDFyEd//6igxvHRcLNdifq1oSS29h7wBxeKzPfwj83
         3VTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cT3vv+Zi;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::c2b as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=btRm82lI7PCq9Gnbr5T43s/tYAR7Niu2TiJZyYaHZJo=;
        b=PaQpjpKe08fgEJMS/fqqYfSQEbVP37abvvZLeVgjsVo8PeFc7/LLL6Q7Is8XWKlOKi
         do8XdX2V4IGTgQFwAyZ5uYiNwjynlIvLAKvKj8Unhc+iVQYCMpBUigIx7pGXCxPp9hcn
         X/EIhVp4NEKUaXtrxdGlteo9/OT//eZjpiMoTAE5B1PNdelk0IigaW/mwKaykjmefb1x
         jMrrYP5XBJM25bm3djXVCQhiR4e2UFj0MMQhldCrRVMaN+Levit6gv+s/W0VMMXZbe4T
         XZgJTdg7jvuV1KAqZRiEsWyBbuY1OPpVEutiLSoC1M8xOz14RIFx+ZGpsi8v7Wb2WvtG
         ZRVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=btRm82lI7PCq9Gnbr5T43s/tYAR7Niu2TiJZyYaHZJo=;
        b=J7HL9c/j9wdZP+Qvjibfs2wYMLAd7+F5E7lbfiqsP0L9DUIVR33nJNcW6VJd7eaKYf
         URgyRWmcq/ZltI+xC8BRzYPDwA40dJ9kGUPNwaVAjVraUz/KKRAx6NnPm4SSq2+Wibyg
         WIBgZ+iaX0TIidsvU5GHimqegwTNG842alv7ltScWNc3FLsMwvXQvNCTjZRTVzFLg0cp
         R2BNXuBb1vPPiqFeK/T3GgA5CSpLb71VS2gQWZHNO3GRTMZfBQ7g9oFyEkzuweDhrpn8
         7SPhZLq0C+DewW2nwymodOS+jmA3ueWeWIcMywjx7MByZ5Ap541Le/1tN9tCkenamdQT
         /r5Q==
X-Gm-Message-State: AOAM5336D9WU7Tl+68O/49wRvBXqXiJE1snI3KmfvTYR6if9B4o2vKWC
	wA9empNPMeB/ixCkCB2Ngnc=
X-Google-Smtp-Source: ABdhPJyq994LrR7U93mXMnw10BnSYeMXEYR7tEbL+zSskxuR2rt0LuxBH2bBJG6sxLUdq0ZdC613mw==
X-Received: by 2002:ac8:7f07:: with SMTP id f7mr8517131qtk.134.1617904686411;
        Thu, 08 Apr 2021 10:58:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e82:: with SMTP id 2ls2574395qtp.2.gmail; Thu, 08 Apr
 2021 10:58:06 -0700 (PDT)
X-Received: by 2002:a05:622a:1701:: with SMTP id h1mr8740403qtk.86.1617904686005;
        Thu, 08 Apr 2021 10:58:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617904686; cv=none;
        d=google.com; s=arc-20160816;
        b=b3/SNx6tqetw0cMxOMx+NjfKGDiNaVuVYhbOLsMrka3OtPyJUBhcAnkTf0oO0NMT2S
         8C+h4osTVhssV477RsNgTYJQG+BLa01mpbgzrfFW6clZQ4fhN9t5Vd9ph17cwORL/XPw
         izDXkn3MhHEo4hVJWzQnHf8PW+iD+fVvI/Q4URrqZsBIORpTuvO2Lzg05jAOwYgUthOy
         DclTozyWNmdpDL0Chs0TMIJEMlWbpnJgDZC6Ept7+qfBpKska6WHjqw7samOY4oVsSt8
         J4IEOWHZVWQ5bFlBqS16I9ug79E9j8s0Yo6ZahaYMHGW/L+b8OqRC0pYYTrY5m6w8ChV
         K0bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZjjtxfZDaRiLXHBjXX5lq0Oke8MJeuPXuGP2r18boHY=;
        b=boCPi/FkaPbMxH1ob45WHNoI9OwLAdj7KIvkL5/d7czvMqgregUmKw0yZOSA1tXVLI
         tyx8GqAkuSnpUp64tOtlXHT0JQmAA+Tmt7vICGcdoVyzf+YY3rhM0v68KjzPsHvW49at
         eDjFbt2NGW94aUbIADi78u4TvOXuyf1znjQiq4WW1gB2b7SpCfSgFXYet1GBGCy8ZNxX
         0uvYV2zb1gQonYWkkSID8+ZgvZZoY6Yi1tkL/yGHb3ikA95y1jMU/KCUrpUaJ6YPfEFy
         ZnQCLhishH2nkuIISVM4KH8mzIBy7+RRSJhpTY1tBN0B27kSAxjjaH+S0D8w22eyd5iP
         fCTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cT3vv+Zi;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::c2b as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com. [2607:f8b0:4864:20::c2b])
        by gmr-mx.google.com with ESMTPS id n9si11300qkg.0.2021.04.08.10.58.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 10:58:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::c2b as permitted sender) client-ip=2607:f8b0:4864:20::c2b;
Received: by mail-oo1-xc2b.google.com with SMTP id r17-20020a4acb110000b02901b657f28cdcso709703ooq.6
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 10:58:05 -0700 (PDT)
X-Received: by 2002:a4a:e6c2:: with SMTP id v2mr8545609oot.74.1617904685371;
 Thu, 08 Apr 2021 10:58:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210330230249.709221-1-jiancai@google.com> <20210330232946.m5p7426macyjduzm@archlinux-ax161>
 <114a5697-9b5c-daf1-f0fc-dc190d4db74d@roeck-us.net> <CA+SOCLKbrOS9HJHLqRrdeq2ene_Rjs42ak9UzA=jtYb0hqWY1g@mail.gmail.com>
 <CA+SOCLLBgKtTz732O5zcrNs_F=iS6C2bE4HBmJfoPTum3Yu1oQ@mail.gmail.com>
 <20210331215802.r4rp6wynjqutdoup@archlinux-ax161> <CAKwvOdmoud9=Uf2xN7q1c1gP06ZNU4K2-Q5PDD-LTynHC+qOMA@mail.gmail.com>
In-Reply-To: <CAKwvOdmoud9=Uf2xN7q1c1gP06ZNU4K2-Q5PDD-LTynHC+qOMA@mail.gmail.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 8 Apr 2021 10:57:54 -0700
Message-ID: <CA+SOCLL67K=reMX=pBQzRV6dYbbS6EPVeOxZ8Xdw90P91Zb8Zw@mail.gmail.com>
Subject: Re: [PATCH] blk-mq: fix alignment mismatch.
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Jens Axboe <axboe@kernel.dk>, 
	Guenter Roeck <linux@roeck-us.net>, Christopher Di Bella <cjdb@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-block@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cT3vv+Zi;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::c2b
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

So this issue is blocking the LLVM upgrading on ChromeOS. Nathan, do
you mind sending out the smaller patch like Nick suggested just to see
what feedback we could get? I could send it for you if you are busy,
and please let me know what tags I should use in that case.

Thanks,
Jian

On Wed, Mar 31, 2021 at 3:06 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Mar 31, 2021 at 2:58 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > On Wed, Mar 31, 2021 at 02:27:03PM -0700, Jian Cai wrote:
> > >
> > > I just realized you already proposed solutions for skipping the check
> > > in https://lore.kernel.org/linux-block/20210310225240.4epj2mdmzt4vurr3@archlinux-ax161/#t.
> > > Do you have any plans to send them for review?
> >
> > I was hoping to gather some feedback on which option would be preferred
> > by Jens and the other ClangBuiltLinux folks before I sent them along. I
> > can send the first just to see what kind of feedback I can gather.
>
> Either approach is fine by me. The smaller might be easier to get
> accepted into stable. The larger approach will probably become more
> useful in the future (having the diag infra work properly with clang).
> I think the ball is kind of in Jens' court to decide.  Would doing
> both be appropriate, Jens? Have the smaller patch tagged for stable
> disabling it for the whole file, then another commit on top not tagged
> for stable that adds the diag infra, and a third on top replacing the
> file level warning disablement with local diags to isolate this down
> to one case?  It's a fair but small amount of churn IMO; but if Jens
> is not opposed it seems fine?
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLL67K%3DreMX%3DpBQzRV6dYbbS6EPVeOxZ8Xdw90P91Zb8Zw%40mail.gmail.com.
