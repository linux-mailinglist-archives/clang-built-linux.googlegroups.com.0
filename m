Return-Path: <clang-built-linux+bncBDRZHGH43YJRBJGNRD6QKGQEJLTN2RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5547F2A5D3C
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 04:57:25 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id u129sf9037808ilc.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 19:57:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604462244; cv=pass;
        d=google.com; s=arc-20160816;
        b=OrqX5PjSENvRWLYR4IVceQPsdAAXGOtmG0syd6ZvERCFUWZpHs4KLhAnTq7jdYtNeX
         K6aV0CvcrP6pK7u+brYkIguJb9Y67HiuY6sBVIi6LtDd6sdDm2QOPFMI5YLk9DCYmfVU
         kNRcaS7geINKAebyNpSjKs9USFFXsRNi2ePZS0FSyN+Qu2CETHM35NzN7fh4XWO3b96g
         PFOEo5QjPMPcBtMgn5JYBd+HdrcK4gXIA0ZLvkt8IAbx86clKK0hrwqtSx49Twmft15/
         FfMa4Ya0M0PyA2qsZHyQmZOXueTvzQybrLH/Ltq4/bJJNkBt0qgTSmOFXwOz+IToRgel
         pzww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=dyJjLvTxm0cRb42Pu+8eSg2yTxb42wD5M+ICDe2J1BM=;
        b=mS6NskKKepgRjtujeoVFtJ6cQ6vs0Z23Cx+Dw1+kqdwb+3vTqvUTOzg302cJ7M5jk/
         gfyjiu9EAWoJ+xd3DG+KU+rLTWp6YEhB8onJApGy5u23lilHjLsNW6fl4Hh1FGGPuPvA
         u/pg8qWrCTeqBcXK/bOPfwf9VsGpaTSbUm1PWgiubSBhEFRrPNKWZ7yemIOr5vIsgax+
         ktyFV1WJM/GCjk0gll9sR709Vb7wIHt+YF9qRuAv1rKGLSwY6erdYT1pqK8KIdKjduc0
         gSOFYmSfPKAV/hfAHO0aLEDw8Hs7sK/dqPKNBxS0mgaqFGuOe6B2ApzruUg5GY1C5Kw9
         sNeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RS745suk;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dyJjLvTxm0cRb42Pu+8eSg2yTxb42wD5M+ICDe2J1BM=;
        b=SVsLXbrr1jEv4kiPUW0m6qz+eTjjcsgfbmk2j0DCupirKt9avrnuxP2gFqLwi9eP3s
         XnMvgtMmrDeAv1OMFZthyOqR9qclgN1PwXkAUxTzChfckFZno3BG0SommVcMksZ0FJV5
         a3PXgPkjV4QKO9PmniaHNyZse9w+XDo7SDMLwsEpYNZJxdXs0zVgV6k6zKGjK6tep9gE
         R1Slcfme5XdcnvEvFWydFo8QrATM3CqFIAU1CIwfaihcp/TP/cgPr7tWcRQX5Ac/Ki6m
         ZB/yV9H/IaboJUJ9CcSqerOmzJ44q9NoyW7c74dmPOq3wzy875V/eAQK0ofiDhQZ6gRz
         3BEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dyJjLvTxm0cRb42Pu+8eSg2yTxb42wD5M+ICDe2J1BM=;
        b=tpds/b0XKfYCgYf7qwa72tslYyNBMH6xXzTvXmf5mD4UuDt3BieMZGTn9M/obHdeL6
         tDonfy//1PRxJjv8oeTy7Aq+7fn16/Zk5kWYbMZ/de5vltLK4U/Gx2m0lQa05WVFiSmJ
         r962pw1XLS7YwpjivOieCX3dh0XqNuxMaLQzaW5a7nVEhTcly16M/0wqCggYZKti3oa+
         dqieJ6reXVeBQUse8lziVyF7qp7+lXpCSoPpw4JkIpDkKqSQVO/AtEo81JOMkiGZQ8HC
         3cLsaS+PZDoLz/Qhonc37uAhoCqddlgvvA8FiL1hDj83X+x+ZXY/Yes5OV8SBeHr6p9W
         7FRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dyJjLvTxm0cRb42Pu+8eSg2yTxb42wD5M+ICDe2J1BM=;
        b=Xzh4T+ARFNq91dc+1q1YHL4vH3mS1Pj9N2ZCKRd/XpaB5pBoFuDTJN45tN+ozjBJfm
         6SwqTSPwpLR5I0YEab9gWS5qJX76N6e+fgVl7O6eoEO/ofoQBmaeLSLOTOvZ1RrGBrTA
         u/61kcc1p2ysateH0ZbhZyD5b0qaxVOKTLlu7W5gtECn1WrNWma2rfey0y9qOT1ntGif
         oZhDSup5bYN0t6PKyhECtjbPboe9hzqPDKYgIhKpVNAeFKAMyMkunTx2CR9yB81nyDDr
         F5qtLZgq2SRBIFMoqHQvqNbHDN2Xg1pdB9OSarRc/bOwA5YAvIHjKrnGZ7RjvOlIbq2r
         dj9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530q7fvtGHtnZWNxry3m9+d+j73tH+pHVkWuVm9A6YL90zLni5Y+
	dZLTRcD7STgyyJNUbazBWZU=
X-Google-Smtp-Source: ABdhPJxv3mdFBblKJmO8s04wQ520NuSI9xRpPxB3GkOp9tNajVZGd1exr4XJv9LoWv9c/Ttk0toAXQ==
X-Received: by 2002:a05:6e02:801:: with SMTP id u1mr10347884ilm.199.1604462244407;
        Tue, 03 Nov 2020 19:57:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9a07:: with SMTP id t7ls130679ili.8.gmail; Tue, 03 Nov
 2020 19:57:24 -0800 (PST)
X-Received: by 2002:a92:99ce:: with SMTP id t75mr17387606ilk.257.1604462243993;
        Tue, 03 Nov 2020 19:57:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604462243; cv=none;
        d=google.com; s=arc-20160816;
        b=HRLGqZaB+jQMV3q0btoaiBvrRKjBK9gLuTq/g7UO6i7s8RKQ3qBFsqK2+vEie5kSRc
         tRbKi6Tl4LbRohsRWlB7rAbXOCyrYG1gZBAoW0moWgAbk9BMjdGY11fSwz4+Vi0IQR+6
         D1o8Rb1eRWO6A84BIO2T6V9hUE4MHUQQrQyJCSJhhKOi3oZyzjxxNkqRM2rCB1NgEvzH
         VwGGR/lPaUkIef5r2xhTVwk0wAh0d/idU80XSFcRrJCn7/eGPVQTUHr2xDyFU3pF+0ww
         lCDF9PYLK0MEdH/F2eVDaAohoGHsZ8theNHxjs4IQKkbCThWBSbKKIBi/5NfKGm+NTLA
         pVGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ylcoj02BPuhWE4EiF6XhbU6xzEwhDsrRnFe1b7UE1QU=;
        b=aZTdxZI3F3pRRpb8JXInoduzeo6sCAlo7202gcBlD0EytDt3FfiAjVxiBYlrLUADr+
         n08TSG/5OJXCHuoAwbGETZR+yDtMFuEpWtI8LwTy2RXffQXo0RHNaWkNXFgwchUqS8Yy
         0V9Ta06hqAnP3uZK/Yls7XOi0DT9tj6nOZGEXpdMU36Dh3RQImqzNGSiDg0PHg/BL7d0
         g0Cb6SEk3UQNqP3l3X38kjiltZQ/3nPPDbMxo0zoFAagwic5XkXlq99DVLgz3WbgLhtY
         MUOcen6CgSgilTbAne5IsV47H+L+x/slSpZaq4vVJ6gXKN5ySEwgCUymdaNZ26py5rxV
         cE0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RS745suk;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id o19si58649ilt.2.2020.11.03.19.57.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 19:57:23 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Received: by mail-yb1-xb44.google.com with SMTP id f140so16867664ybg.3
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 19:57:23 -0800 (PST)
X-Received: by 2002:a25:e5c1:: with SMTP id c184mr6444106ybh.247.1604462243664;
 Tue, 03 Nov 2020 19:57:23 -0800 (PST)
MIME-Version: 1.0
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
 <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com>
 <f474396f8f47c303e3a3ac90a582c116e38e50e4.camel@perches.com>
 <CANiq72nnpdPSngjoOf=imLxZ2g0A7ZXe5nRjF0qf5AG1UCfXyw@mail.gmail.com> <8d02497f4565c3154d3f7bcf2968b56ccd945ab4.camel@perches.com>
In-Reply-To: <8d02497f4565c3154d3f7bcf2968b56ccd945ab4.camel@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 4 Nov 2020 04:57:12 +0100
Message-ID: <CANiq72k11+VO-igyHRakJEGuSmsDJyQCpYDVeNxZwRt62yCFXQ@mail.gmail.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
To: Joe Perches <joe@perches.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RS745suk;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, Nov 4, 2020 at 4:15 AM Joe Perches <joe@perches.com> wrote:
>
> No one ever will use clang-format on the current kernel sources
> without having a recent version of clang and clang-format.

Why? Many distros come with clang-format pre-packaged, and in fact the
original patch (that you commented on) argued for the >= 4 requirement
that way.

I am not saying we cannot change it, in fact I'd prefer if we do it
(see my answer to Nick); but I don't understand your basis to claim
nobody is installing their distro clang-format package.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72k11%2BVO-igyHRakJEGuSmsDJyQCpYDVeNxZwRt62yCFXQ%40mail.gmail.com.
