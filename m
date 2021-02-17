Return-Path: <clang-built-linux+bncBDYJPJO25UGBB75XW2AQMGQEQNTNJBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A7031E2AA
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 23:43:11 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id m9sf103206ljp.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 14:43:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613601791; cv=pass;
        d=google.com; s=arc-20160816;
        b=hMktoyggCwhmmKxhRVA/jlrzoX95/AgXLwiyoqGrq8RudpNK1zrYJIIC7xJoQOburf
         mIuS1Zk9RPY0mUu2fpSQartTBj4alM3zMv/sVF5XLm9XlYenzVYsDnkdZPACSUHMxHU8
         xzflXHdSCT7NMa9vIVnUsILUlW/P7kzIYpo4E6kK6Yt0Uu6hfeWFAVIJR2NO38goYtqH
         vn8tQE+O+nptAujdNqIfynffl/RGn9BxwCcLrbH+OgV+Ak3gPPCA9HISDAFnyxJf+NYm
         JRQWNvixYSRbKxhhuSRn+rxbAXoRbvZ4rGQUWCvciBI7Pucgn73w3vN/JC8HavVuuM45
         /2yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OfSNSiocAra/Bg5X+tLkIauJMel9EIZhV/q3lTSg6/A=;
        b=Ri2DohZXEz0avcA1G4kHlgSSNfEw0M5RncgO4SNCm6AmQTRDhETFIhakDdMFXwAJrE
         sU0VC7dsuMg4tf06qMqJKVtlP/mFKzLC56a21SFZ/rsX706aVO4tK1vj7X++vX/VZyMh
         M/UFAttu8CX+Db3wQ58wsBSeldEvd8iHK6zIVMYxUNUjRDXgP1Pw0F4eiFchHsyvW2M4
         cP9k3KfikcqbIXRlwe1+NA68dViNFK8UDyLg0W8VIVbVcAczLhV4mDowrywb8ZvC+HQ6
         /yV7vlSmuuEYHzg4Y12CjMgXgVwS6nRCZDWspsCv6QqCUzCquoASVtWPOuwQL37cavox
         Vnqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GU0Wx53s;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OfSNSiocAra/Bg5X+tLkIauJMel9EIZhV/q3lTSg6/A=;
        b=jrKEZnboTOn6qczC9uoSSObCKZBlEYorSkD98sOJkGZDemoLbbw+eYzcGOZ+D+x9sh
         5ciUYU54Inm1HON+ODX693t0eN78XG2DGFHOcpetg7wv7oTwuvkQMwCv5W2wfSwrdys8
         1c5/pHionao4S5wWSBmUBpMCbgTAULs75Ia1Q7tvqnAKprqr+QxjaAjEwrCQeFQYkRTd
         P3Nc1Q+Od1JrbHsxBsx5P9JaJmX8EH2oqbnrfRFwZ5vtPp82E8bnwniobg07AVyWH1iQ
         +Fbf5TTSy3+0Inego4yxZELg28KriJPUg46h1CRNzX6KClZgGHFv9Hr5GMJ8Cs+P9kun
         adIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OfSNSiocAra/Bg5X+tLkIauJMel9EIZhV/q3lTSg6/A=;
        b=JL52keELahBGcmlyPsVC32nkjv0qBSAsu5XyVxuks3UWw+BDsZ99+j6R5VDuCa0AvV
         4/9Eq7+JYK9YEEZhxRhgzMRoXt3mwmTXK2gZdrXw7QSKd3drsYJnpd1qsegxeHEcVgTN
         oED+cZ7+ci25LGYFJ85c/7DsT7Pxj1Vis4lTMLfviPuYn1j+BnwkIQ5D6NMjQejEOx2Q
         s1cGS231aIdNiLy7nhA5Ag2oPNymrJfAHBcS4c+dwjSF7T62NhPql5k6zahSoAO9nQV9
         HhDRVjUeEbv+66FX1Mx3U9zjGlcR/EqdAkqqjyfXxL/+5E/pMrwqeGDHSjQsDXIEJdJw
         ZyFw==
X-Gm-Message-State: AOAM533qPgshWs6dodPDJnssuqg51wrMMpqI9KJssFeL/wbACkDXZRcC
	KUiKQFJaD43hG95tt2QakNQ=
X-Google-Smtp-Source: ABdhPJyjtE44NtlRb8BltW1bPFzVEB55N8yJq45K665Jn/0fQiZx7sdD3PQwhhlWqTxLXOTmihD9rA==
X-Received: by 2002:a2e:808c:: with SMTP id i12mr876447ljg.96.1613601791442;
        Wed, 17 Feb 2021 14:43:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:518c:: with SMTP id u12ls2588420lfi.2.gmail; Wed, 17 Feb
 2021 14:43:10 -0800 (PST)
X-Received: by 2002:a19:4f57:: with SMTP id a23mr696293lfk.66.1613601790507;
        Wed, 17 Feb 2021 14:43:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613601790; cv=none;
        d=google.com; s=arc-20160816;
        b=FIFp8ivM5s4pGIcsARMeT+SK4JyYI17uqu1Gq+k1VG4buZO7YsnhE5kfStE0LS0VXc
         docGQFJ5DdxQt5mMNDcvoKXPQQl2jFFcFur51JymNQhfDxjz8VnQFrbsHzr3HBEXSV97
         ioINnRi5vl2VDj6hFQXfR9W5anVbhbv6ujVWrWKtX3uEBqlBhkCWD30faPsuzfBeKIo3
         ReC0clW0HuQKJSK/ah8eozMsVr5klkoBch2fGr2vPNAaI7ch64tAnPm7YLBnIY4r/QwF
         XJyWCrtjPecTluCYTupPICJFyeZjOHxU4pZHA+h2MBI05TUo1LMhZD+TeS7rwEEh5j55
         S9rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3j1enWyMhIZXZgAFYDJ15TJ5iiBiy+DYSPbMIAa28XQ=;
        b=bZwjXxnnlThPCH/JzZiRGdcS2MZVUZm83lTdIwXrCQGg4uw5EYx6jn9SPnBCyXL8sV
         ybtCYeJPwWWs6Ddx8S/osM0wMfTStDeLdReANABM81T9aPnJRC5dNMFUnL5pJvJCC4eC
         dkaVSXIoeVxpPGVPLX36MfgTrXheHyJAkX/xUWDORtM2vCuSy20BAKAc0FJN7XmwE8Qs
         Xsh7d9+KcA4wZ4Kv217i7kz7LwdoHiVz9xYNMcHP9LZBP7YC3F4qSUAD3nndDwyDScx/
         9dqm/+gzMT7poCfXExyX6Qymb76Q0gKCBpYYyiNGmghzv0ntw79su4OGTOXTZiX8Rigc
         jhBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GU0Wx53s;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id y3si119116lfb.6.2021.02.17.14.43.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Feb 2021 14:43:10 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id c17so17912642ljn.0
        for <clang-built-linux@googlegroups.com>; Wed, 17 Feb 2021 14:43:10 -0800 (PST)
X-Received: by 2002:a2e:2a83:: with SMTP id q125mr836996ljq.244.1613601789807;
 Wed, 17 Feb 2021 14:43:09 -0800 (PST)
MIME-Version: 1.0
References: <CAGm4vTNaq05cFMZEC6zN0WEeq2-+_DgK73XM3xsNdbXX7D_Krg@mail.gmail.com>
In-Reply-To: <CAGm4vTNaq05cFMZEC6zN0WEeq2-+_DgK73XM3xsNdbXX7D_Krg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 17 Feb 2021 14:42:58 -0800
Message-ID: <CAKwvOdnjyunWptu=2DzsZ6oxvar32RN00QGbAzD_-843+RnFzQ@mail.gmail.com>
Subject: Re: Do you want to share your builds with KernelCI?
To: Dan Rue <dan.rue@linaro.org>
Cc: tuxsuite <tuxsuite@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GU0Wx53s;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Feb 17, 2021 at 1:37 PM Dan Rue <dan.rue@linaro.org> wrote:
>
> Hello, and welcome to the latest updates from TuxSuite!
>
> # Integration with KernelCI
>
> TuxBuild is rolling out integration with the KernelCI Common Reporting
> database project ("KCIDB"). This is opt-in - if you would like your
> build data publicly shared with KernelCI, we will turn on the
> integration for your builds in the back end.
>
> For more details about the project, see the blog post
> https://foundation.kernelci.org/blog/2020/08/21/introducing-common-reporting/.
>
> If you would like your builds to be included, please reply. By default,
> builds will remain private.

Please include results from clang built linux builds via our token for KCIDB.

>
> # Moving to a Mailing List
>
> I've been sending these emails to you directly, and this is the last one
> I'll send direct.
>
> We have a mailing list which anyone can subscribe to at
> https://tuxsuite.com. Future emails will go exclusively to that email
> list.
>
> I'm going to go ahead and enroll all of the TuxSuite users into that
> list. Going forward, anyone may subscribe/unsubscribe at will. If you're
> not a TuxSuite user and receiving this email, you will probably not be
> auto-subscribed by me, and you should go to https://tuxsuite.com and
> enroll if you'd like to continue hearing from us.
>
> # Moving to TuxSuite Authentication
>
> We are migrating all TuxBuild users to TuxSuite accounts. You do not
> have to do anything - your existing tokens will continue to work.
>
> You will be receiving an email from Vishal with your new account
> details. If you would like to create new tokens or remove existing
> tokens, you may do that by signing into your account. You may also
> change your password. And that's it, for now!
>
> The reason for this change is to allow you to use your same tokens for
> TuxTest, once it's available.
>
> # IRC & Discord
>
> We are trying out Discord, which is a modern chat application. If you'd
> like to join, follow the link https://discord.gg/4hhTzUrj5M
>
> We also set up IRC channels on freenode at #tuxsuite and #tuxmake.
>
> Please feel free to join and collaborate with us as well as other
> TuxSuite users.
>
> # Kselftest & Clang-12
>
> TuxMake now has support to build kselftest. Usage details can be found
> at https://docs.tuxmake.org/targets/#kselftest. Support is not yet in
> TuxBuild but will be coming soon.
>
> Both TuxMake and TuxBuild now support clang-12.
>
>
> That's all for today. Stay well!
>
> Dan



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnjyunWptu%3D2DzsZ6oxvar32RN00QGbAzD_-843%2BRnFzQ%40mail.gmail.com.
