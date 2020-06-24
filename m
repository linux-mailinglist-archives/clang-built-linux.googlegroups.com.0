Return-Path: <clang-built-linux+bncBCS4V27AVMBBB376ZP3QKGQEJA4S4YA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCF6206D86
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 09:23:28 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id j21sf788087lfg.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 00:23:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592983407; cv=pass;
        d=google.com; s=arc-20160816;
        b=DUOEj701rJa5X94JwHO8xjs+LQcERfj5BM4F2ehIOi4WbQ6QukR1pynDGzxwNLgWSD
         lFol+v54GohTDKKEaEvJwzLyq6EQ2OJVkCDQtgallCx9cgWFuhRi86KULZwORZmU1vuM
         gSSEoeS2klUyiMSSA5rvpOcI1CL29u0TGrJi9YGjNzDjxZp8gnB2Zg8cvFBN2+V+q4mS
         Ma/il5VF9OdF039ueTW9l1YbYRcZDzM1Jz1M0dq1Tmd+qe7Y2v0ARFw4gvfNJO+jv9+b
         TUUkEQrqzyG1wqpItEd/wM0CpsgHG1pDahBFmqdLNAcrXF54z5huIMSPARqcPt3cUCga
         azlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:thread-topic
         :content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=Duy4qhOQHVllpH2ZK2aUScj4OsUSQNwcNWc1SJj37rU=;
        b=eLuu0LZqhUMAzMZ7vxHvbZM92syhDYmTHhonOvmUxeVUh4L0Z2ek5+wU7GuvukBbMh
         8bzE4FEvUJ70Q0uBYO1PPg1q/KJ5M+q1YbEmu6NheuM1lnVP2kAC4A/byZEH6K4MAfwU
         Oi824qWezaG4waeBVbpefTf1fW5aJ19yJxfAG8UaBV9rwJvgA3QIZdeF3Jt3saauTOZI
         LLAD8Z4P8uWlhS4OdxyI1WohP905Zx63tySjAltv1PGxzwQBbws1v/Vw1j2AGgHnbEJt
         27aDaAWPWeSa/c1jOt2vRpqOWqlY8Lss4jeqOap/TVFbYo/cCrPxswL9ejZSL266XwMq
         R2Ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of richard@nod.at designates 195.201.40.130 as permitted sender) smtp.mailfrom=richard@nod.at
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:content-transfer-encoding:thread-topic:thread-index
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Duy4qhOQHVllpH2ZK2aUScj4OsUSQNwcNWc1SJj37rU=;
        b=Ns2lBboFxX0QCROmzQWH/Mo64N8IkAPaGo6IDgNGLbFQbdfLXjULiszHeIuP4uweYJ
         rOGsDDf6hy5UKURC6tkAxA9qbS20UjfGlWjUZA7yBMr4rzW0gOpPdi7Cy/tlnLDsVv0c
         hxAEkRzWPwnS5QHINMm4JVNpETNYUWEBESvNFDVG9RG/94BTOVwvZuzFLLQhBeX4FCMF
         rYdlOoGK3WpBt8HmJUlHWClvclWNhjMZhigzaIiYGDGn/PS7I9BPlT7yQo8l0HpIqFT4
         62YOQ+LMb45eQ8lVdBjVVfjbziIB34eis7g56Iv+8XCoM28JwhOpwoCyO6oarkyfIkk1
         2JOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:content-transfer-encoding
         :thread-topic:thread-index:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Duy4qhOQHVllpH2ZK2aUScj4OsUSQNwcNWc1SJj37rU=;
        b=UkSwY1i+LFFpSJ5X7J8Q7TeaRHqCpT50nZzUv5XTR0Jj3/klLNtwjqGcMoLQVskNz5
         J+dMo6l1o88SP1ra30z/nGvpFihhT6iE7FkBbmflKqwObnA8JkrbBmCcKp4mjEHJYOrI
         /Myg2HTx6ByGtVyghAhUA2sV2OfAZuGEWd/1UiOSOE1pob8EwTSJH5DLuERRDKcWOQLJ
         BMSk56suA7Mh+t3EldQjOsZvBkTUXJOSngPJbkKC5pxOXvsoSS/UyiHPq/KYAcmFRyeb
         KyRoZEf9O5t3rtx0EvYMmuONtXrfZU6C6Q5lw/oYNv1w1OqfT/5mvDKFI+t+HMtIx9BH
         wXPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QnJvMMsdIXzGjYOmFTIwHZyrFQzpN+vKptELjFWdHGba6dzBQ
	WVllz8Fn8Bzv0v+ZJSJN6Jk=
X-Google-Smtp-Source: ABdhPJwV/8OIaxt8qBdTarnuElEevSKkTGMJBuipOSCAf8Yf3OlCHRnrr0m0dU3nUbFgIVjKjxUfAQ==
X-Received: by 2002:a2e:b4b9:: with SMTP id q25mr13481831ljm.313.1592983407607;
        Wed, 24 Jun 2020 00:23:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:94cc:: with SMTP id r12ls271405ljh.5.gmail; Wed, 24 Jun
 2020 00:23:26 -0700 (PDT)
X-Received: by 2002:a2e:b60e:: with SMTP id r14mr4658148ljn.84.1592983406848;
        Wed, 24 Jun 2020 00:23:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592983406; cv=none;
        d=google.com; s=arc-20160816;
        b=ghEsQaszwLGwV86aRhwwDfQezVC9fgRGgFVZlRxdajrmWk4sta8+e+E3iXcuNv/ayF
         sTraALBBCVhkFlkDGpAYkCyJI0yBVauBO+a038evKzgAb3WeNTltpACa4R3QKkUVpVI7
         CLJNdIZ6bm8NXAZKmx6iwmqizzSSbj9prUK5KmnvOqWTc1lABEtJ1zP7LOUHgIUBQgoi
         sM9oU84ddpuFEKIvrRRGMCWjiR2d4BR3HJR8G7Tjn1XDbPMqVKfci8RT4Eb3EToC8AzC
         gjwRjhX3/tyDt/yKoDIyi1VsnN+ulkWdTZe36r6Q7RCFYfN/1Gtnk9EROyKrEHVtYDPD
         fa9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:thread-topic:content-transfer-encoding:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date;
        bh=FytTxeowvAT4sKN+zSz5vbEcby0UyAAaBfYIAkLytlw=;
        b=U99HSBXPo8/npx1+7/OcZ+68lCfarB0DXdF70BeO3IGiqsQCceJaz6K3CmTsziJfZh
         +LZiFEyyZbXFIIUayx87IxwnXMm6fJ2hQFcpZPF2qDPgGYQYkA8WjFcd475Cj3HuTLjX
         aNf4A9CGqKzoyUCPwvoQTMFVmlVSnBlyXmzzGOz/Zt2+fdka8frTwnsNZTMJnMvZVANu
         aI3IakpFHO/84I25TxRZJe1f2aelfzOtppHUPulSixn8W7snieyrfZ2JKifcd2O0AGlD
         WnoU4q092ZRyOyQlX1yIEC0I6hZQM/icgLNCj6PgTkZ33DrsL+ngQKTtLhxfs8tXVZ1N
         /Mig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of richard@nod.at designates 195.201.40.130 as permitted sender) smtp.mailfrom=richard@nod.at
Received: from lithops.sigma-star.at (lithops.sigma-star.at. [195.201.40.130])
        by gmr-mx.google.com with ESMTPS id b26si372811ljo.6.2020.06.24.00.23.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 00:23:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of richard@nod.at designates 195.201.40.130 as permitted sender) client-ip=195.201.40.130;
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id 03BAC6089348;
	Wed, 24 Jun 2020 09:23:26 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id kIp0YWd4f9Wp; Wed, 24 Jun 2020 09:23:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id 987DE6246915;
	Wed, 24 Jun 2020 09:23:25 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id guvA4nah7l7J; Wed, 24 Jun 2020 09:23:25 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
	by lithops.sigma-star.at (Postfix) with ESMTP id 6A8CC6089348;
	Wed, 24 Jun 2020 09:23:25 +0200 (CEST)
Date: Wed, 24 Jun 2020 09:23:25 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Kees Cook <keescook@chromium.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Prasad Sodagudi <psodagud@codeaurora.org>, 
	Sami Tolvanen <samitolvanen@google.com>, 
	Amit Daniel Kachhap <amit.kachhap@arm.com>, 
	linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	Richard Weinberger <richard.weinberger@gmail.com>
Message-ID: <903628180.54697.1592983405305.JavaMail.zimbra@nod.at>
In-Reply-To: <2356a78c-750b-538f-3d64-b9c78aff89cb@infradead.org>
References: <20200529200347.2464284-1-keescook@chromium.org> <202006231610.4993DC5@keescook> <2356a78c-750b-538f-3d64-b9c78aff89cb@infradead.org>
Subject: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: lkdtm: Various clean ups
Thread-Index: AQwsBIGnKjKHDWJPXuIGObKRE4SqJA==
X-Original-Sender: richard@nod.at
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of richard@nod.at designates 195.201.40.130 as permitted
 sender) smtp.mailfrom=richard@nod.at
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

----- Urspr=C3=BCngliche Mail -----
>>> Regardless, it seems arch/x86/um/asm/desc.h is not needed any more?
>=20
>> True that, we can rip the file.
>=20
> Has anyone fixed the uml build errors?

I didn't realize that this is a super urgent issue. ;-)

Kees, if you want you can carry a patch in your series, I'll ack it.
Otherwise I can also do a patch and bring it via the uml tree upstream
as soon more fixes queued up.

Thanks,
//richard

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/903628180.54697.1592983405305.JavaMail.zimbra%40nod.at.
