Return-Path: <clang-built-linux+bncBDV2D5O34IDRBS4LZ73QKGQE3R74CIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 22893207E88
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:29:48 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id l11sf2509993ilc.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:29:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593034187; cv=pass;
        d=google.com; s=arc-20160816;
        b=wAtO0gPHsmNjak08Ast7g2J/09nH0ch0vJu/HBKZEGu5WNMdqZjHHk4cD6SBk89NHT
         TsUuilL1uiBWRW9Pcy9DRHYqpiXyTMTrvMR3dLAlxt5WPgevQR9anMsc8KdXkq1y+kfs
         MIN3S3KR3GZjQ85Y4esAC/Pn9BcEvSA65HiwGSXL/MSSnUev6hUCe7MbERos/p6X2NEB
         LsOrLFNFqU+9x8Z7P7XeDT053HMtEGAMT6JN61EoTlvlpIpY2BTuaXMpe6Ct4Y+ogujo
         s27KJK/umvFMUcm4fv9ojPhJavij5hKmrosH7hTYbNlHjzp500QMnxlJFacxmPF+LhGU
         0jWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=8i7f51lIq4ZYoF+YWjoBVVdw5M/HcFGkl4T/2ha7wEQ=;
        b=ZyJg8pCsiQ6QUgYxP05jLx5S/jAwOmphlBna83MegMpSOC7c9Kck4LgMtQOvZe261j
         akogPw7hOa1lzzuiqzYvAqdo2wtfCfN9gm+Blwuz0ABM3Sjiw0yAXgaMx3+KQ6mtp8o7
         Uu+zawjf0SGbjve8HLlhnNQZLFdzFGc01j5n3e7uqEoyOMyM1RnSAp/P77WJdabS5H4P
         SCuQ0W13nQUC8ciYyLnoSu85V6/svjz7gbZlS+kJfxtA1hgp5ZX26RioWf1Oe/ZEFTOq
         l0+dezAFgCi3hjRJiH/IjM9oqo6SC8V+tj4uEtLwxlJMO+6L7IkZuwzOBOfLS5E3jIyz
         OIKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=Jgwwd3HK;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8i7f51lIq4ZYoF+YWjoBVVdw5M/HcFGkl4T/2ha7wEQ=;
        b=gdYQeQh5r0kl8EHMk5bMxZf4vtmnsZtyA/ab8Mw5pZm5n6zW31b6NYlEu9RQSULfix
         aOshqxYX+VVff7OGANNotdsQ6jUPt9n7yHRv1XnxruNtelDm+Ss6LqjVRGY+Cm2rjB1j
         HE6ku31uiGjjv5m1Q5Jw2p0+6gflGLleIw3Z6jAZ7Rpjjha95cz37u+rwRICc4kSChVA
         KcEJVkftFMqpwBNdcsXiRsNpBPkMf0WkInZeuu++wA8EZM7C2AZwiJQP0H5l3ClFZ/no
         EoSlHUPVGdMc7E3Hqy/e5kY6MnFrZnzP23gtX3+7ZiWaavpeOVVwU+78VY4LE5UIf1fr
         hwjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8i7f51lIq4ZYoF+YWjoBVVdw5M/HcFGkl4T/2ha7wEQ=;
        b=tdeV+pKpLUoxp7buObw2LZFezNj8UzZEi5lKZnZ2Rz+oInFfC1f6uLIdhDs7pwn0OY
         /km6VVG+OI7xPNKFTJo2SADTih97YtQ0R8+eO+sBi1Tsj8bSeOGmscinmX46DQTr9HZ2
         7NGsAb0E5ulsoO7O9fkugh2W0ukIpU1fqpwzEEM3IjXOLH8KGAbwzlNt4Gxb0aO/ubH0
         /5Yf9h9pIk2xayVXzYonDEgJXvjjb9h1aJUYpMh9zbo9OtpNnnjii4T7yHF3hKTZbTEE
         d0q13KLOrwFOYGqIOkuRkDVac/jc8Iu/Tt3uy0jLCbA56xiMEaNe3jcCsOPlaovgUp0w
         /vcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UbuecXEov1pr63DRe/UmcMAW9J78Vch0F1ZeZqjb0KRB5HiMA
	og791F/kZqjzJqZ9BiFlUoM=
X-Google-Smtp-Source: ABdhPJwvIG2OFp/hf4Hjeq/eSqTXqHfCilJoVrigbpRQV8h3jaTqI6ptcPHSlDIvk6zjEw7QPNrhlQ==
X-Received: by 2002:a05:6602:22c5:: with SMTP id e5mr15632753ioe.9.1593034187110;
        Wed, 24 Jun 2020 14:29:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:14d5:: with SMTP id l21ls517708jak.7.gmail; Wed, 24
 Jun 2020 14:29:46 -0700 (PDT)
X-Received: by 2002:a02:707:: with SMTP id f7mr30669548jaf.119.1593034186785;
        Wed, 24 Jun 2020 14:29:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593034186; cv=none;
        d=google.com; s=arc-20160816;
        b=crD6BU7SHeItQ9vw+AL5NYxQubn5B2PzGmwFKWD99ypR1s0i5XJ6k3AKEkKoRTxKfk
         7ldO8VqfaVBpvNMOMOIjDfTqn+VUQWjxm/mwp3QysnUwlYlIlu+VCLNSRbVI/sqbgxQ9
         iyxJcpFOK/0W/dHoNg0oSZ4wCQHhTwWp7I+HOBRYmx0ulx/9o33plK8tJLRljMjzvHeB
         zFFd5i0RRHrwWmJ7EKvc/GH+xsyCZRzlCA87eLtmHFotqD7JkMhPmtERPbYtlru1brtV
         IH3VNadrBS90rlj2RPEonEj4399RREQGqFD9ZA6QhJvLjtnPNItAQf6w8rjwoSxgUy13
         0RaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=1HvsEisY+JqAH4eB24qkTv31vmmbufpD8xgSfU5UPdM=;
        b=lY6yYVQx1dYuKtzPYFCMSDMT3SRify1zJJvqi3vB1XvkrQTvLtYi59Z7AyQ287r4yR
         R0ZVvh8/Ebd/3oJPsDJWrk0A9o8/tTyrUkfkUCSZFPhIFhlicHkBVPg1ej3pECCHaLp2
         CvD8RpYfn5FyMg5aMO+ZnJ4OF+3ZfTwaDpK/rCtEeEYJYJq3KoN2iv7lHKEiacCaU7Ut
         jc2RAgrb9dVujwcNlTDSfuTv/56l4vsS/zpEptj+JzpHJLMfBRscXzx3JI7tOeKvZbHv
         546xFGxBtfNPft7A8ruFFWanUUG69My4/ze7DuevR7BtTl2iIxZIxe/WqkFLBGeiMmtT
         5tZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=Jgwwd3HK;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id f15si647170ilr.0.2020.06.24.14.29.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 14:29:46 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joCxj-0007YQ-1Z; Wed, 24 Jun 2020 21:29:43 +0000
Subject: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
To: Kees Cook <keescook@chromium.org>, Richard Weinberger <richard@nod.at>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Prasad Sodagudi <psodagud@codeaurora.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, linux-kselftest@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Richard Weinberger <richard.weinberger@gmail.com>
References: <20200529200347.2464284-1-keescook@chromium.org>
 <202006231610.4993DC5@keescook>
 <2356a78c-750b-538f-3d64-b9c78aff89cb@infradead.org>
 <903628180.54697.1592983405305.JavaMail.zimbra@nod.at>
 <202006241335.2C0FB5DF90@keescook>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <b97853f0-c4be-7039-1d4c-96b3ab802472@infradead.org>
Date: Wed, 24 Jun 2020 14:29:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <202006241335.2C0FB5DF90@keescook>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=Jgwwd3HK;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 6/24/20 1:36 PM, Kees Cook wrote:
> On Wed, Jun 24, 2020 at 09:23:25AM +0200, Richard Weinberger wrote:
>> ----- Urspr=C3=BCngliche Mail -----
>>>>> Regardless, it seems arch/x86/um/asm/desc.h is not needed any more?
>>>
>>>> True that, we can rip the file.
>>>
>>> Has anyone fixed the uml build errors?
>>
>> I didn't realize that this is a super urgent issue. ;-)
>>
>> Kees, if you want you can carry a patch in your series, I'll ack it.
>> Otherwise I can also do a patch and bring it via the uml tree upstream
>> as soon more fixes queued up.
>=20
> I think the lkdtm change will tweak this bug, so I'm happy to carry the
> patch (I just haven't had time to create and test one). Is it really
> just as simple as removing arch/x86/um/asm/desc.h?
>=20

I just tried that and the build is still failing, so No, it's not that simp=
le.

But thanks for offering.

I'll just ignore the UML build errors for now.

--=20
~Randy

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/b97853f0-c4be-7039-1d4c-96b3ab802472%40infradead.org.
