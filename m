Return-Path: <clang-built-linux+bncBDG5L5UT2UARBPWF2H3QKGQE7P26JUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A72209B6B
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 10:39:26 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id c25sf4275730edr.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 01:39:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593074366; cv=pass;
        d=google.com; s=arc-20160816;
        b=qZv+npGU+HnozteEiVM7MNT5vJoR2Vz8T8q9YtejYgBuhktBD3h8OE4q2ubs1i8ND7
         L+FdocbhF3hBHN1g4WIT2VKw5+br1JhjkomfzYOqr8NrzLKLQHLJQT4ntKXlcnxIRFgK
         H9TQQ64zNs8GjC+Ap7lD9fquNQgyAPq6dMh81nye1OdFYBX399yIoZ1sZDuYkZXr7aBR
         AYYqclnTxKvaiY/9PROO8VA3zwIviaufv2t85MqZk8tLlXgQDG1A/ZlKzpJ5dQTh1uV+
         SELXIot1Z/BUQFt6XxSP9dxCvgLZmEXhU0qBOlN2hxo80WBrexRlT8P6kkFq/mShkPLe
         vMmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=pUuMID6meXLoYTPmEtXH8ExR5dES2P+MM2QSRc396/I=;
        b=huN/ptzMGfdTtOX3bmUkvPl89lGmixWP3P7XUHGLlpGwMnmrjvJDIp1GC8q4P/PnyB
         vaRkiklfiXuHoZ4oBkfQYO6EUxguKm/MpzKEG+BoNxhOKEEIHIuXWUXcr8QeYdjMVm6s
         cDT6i9RWBWKzv7WdzoJlmq8RWPOrmhQf8YKylFghY6k2odGVOxrZBtgbG+TK+j2XpUC4
         Pwj2iJATxjoW4oW0XdaYQkCnkGXUnlMeEtnZkkAEwo+Ci59yPwydM6rcWMSwHWcqPYeB
         nYgMwvLwre5/scg7gqkKCEHVSgp6nzbnJ1KOBhvB2kjyAIintkIG19gY2HYCDMB3fRuq
         MaVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@jms.id.au header.s=google header.b=movOQeaG;
       spf=pass (google.com: domain of joel.stan@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=joel.stan@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pUuMID6meXLoYTPmEtXH8ExR5dES2P+MM2QSRc396/I=;
        b=sm4N44lFUyj0udiLA/5Pq+b395p1avQhaXy+ug+YLxHKPCCIPAFvJnD9iIstvqUKrm
         08aABvRRH2JmsnR8s+N1CncQNKWxBaBrFL7a7+3VGAzylPgRl/a9saulD0U6SudnBX81
         rsDE5rQWIuFQE04IJicxzRS4P8bovCzp+XpnwevnDuVkqp60/AH//aFw+YJpPNlK5rnY
         nnqDPzj4VZNrT0QW6f4kPZkOSEDbjvOt9FtEFIGE9bwGUVqlmpQnHK08SUxIXv4k9ef+
         D/PD/S01xkAS25ehgfPfgk2u2vJWDNgwtzQGwUkPyrs9NPZz4RXY95jjNqyrSmmWVvVT
         EOrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pUuMID6meXLoYTPmEtXH8ExR5dES2P+MM2QSRc396/I=;
        b=tj7z4cFZdwCBJvklKJDSn34URYd1qVZ+G3BUXCs7Thk04nakGlaugKRheo0A1dDjPl
         Y8tXvi0QdYRCuHRXx4zvsntVRUszsyo/OjXPiL3R+0NoOmUJRTyptCIcmIbgciUuDlC5
         Rhq9sfPBYNdKixXGJR4bu5ROi9RJHacwDmWH+aGg5EB6jAXxQQ3IqLA/XchO4zYQkg0j
         KN1cjLHGc5mUVCklHY50/s9HDh9foOPgHapw1u7a0M37+NzbO8pRy5xChzmiUOnwCsUy
         xy6LYfOEPn6IM3lkw9PyN87ilMxzXnBR+Rmgc4ix9i0x+VYSb4E76F/P4Isd8dN4hsk1
         C2gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532agVfQKigKeQAFnR+dL2mFYFhoQcy6A2DQVsrRhPH9oF0rESF+
	Kpp87Wnc5df9ADwgmavyYEM=
X-Google-Smtp-Source: ABdhPJy6hUoeqi1qb/H0C3dhk/s0zwOXhTpaF20MtPAv4c0g8YVCQ8SUQ4Kpy5E+6kjEF6uHI4p4og==
X-Received: by 2002:a17:906:469a:: with SMTP id a26mr416728ejr.198.1593074366264;
        Thu, 25 Jun 2020 01:39:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8483:: with SMTP id m3ls2191029ejx.7.gmail; Thu, 25
 Jun 2020 01:39:25 -0700 (PDT)
X-Received: by 2002:a17:906:eb95:: with SMTP id mh21mr12598836ejb.235.1593074365459;
        Thu, 25 Jun 2020 01:39:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593074365; cv=none;
        d=google.com; s=arc-20160816;
        b=ep76vx9t70YRBoDkHfP69palGNmt33gyK14rFqCPfQ+FlXM8OMJoZGjhl+StugPAWk
         CFc6nfB6s17AWSB0KXeT7mhnzfH+UBfzdX18TPl7l0yE3XHAdBRNWRPT4kpr2CTLWV20
         KOPmgq4Wj6llNLSpSEG1PAsjZine/nBz0PBV1gbDRQGIRZgmkxBAScpm2wty8dHq4wCe
         cW9DHiGVztmGceyFeYzcrFm+Y0BIEFUstX6u+JUluqzLoL2/NStY8MB26lu77KSO8KcY
         1EkMobaG3xrDRhssi2wLQ1XjUpi9TXhRCyoH46PBLmdZhb9ZVAzR0tylQqJBsV4uQOqq
         nvJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=knPtliwcot5N5At1mGwZ9m1E+XwC5jbJSjbHxedMECg=;
        b=JZjHVvYl/cRwi127H1XIjrKqy58kipm1X3Ahq/81yAVRRlwQkwbzUPDdA46vAEdNg/
         hEesMyWa8dsj0YnqoE5dy3Glv9YgcySr4x3222WW3+J/o4hPZh/AntX+xaF9RHNmfybj
         phzIOOOeaY5HqU5An9/+J9PGYbKgUwxRLA1wneBLMEVu+M1MIKoFcdpn0mQTr2ncNRuC
         3Bi4X+zn6d3hXWgvh6w+bHh9r7RO9NKeMY4NzyHHqePWf+aB0JZJmetmhbFD61fQPgxb
         tK90uTtwDjkpyaa79N96HUIT1yL1SJds5d3+At9VPWPAB90/d+qDn4ZefLwX1UcP+tEe
         OT9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@jms.id.au header.s=google header.b=movOQeaG;
       spf=pass (google.com: domain of joel.stan@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=joel.stan@gmail.com
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id x21si507241eju.0.2020.06.25.01.39.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 01:39:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of joel.stan@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Received: by mail-ed1-x542.google.com with SMTP id t21so3518729edr.12
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 01:39:24 -0700 (PDT)
X-Received: by 2002:a05:6402:459:: with SMTP id p25mr30314307edw.383.1593074364477;
 Thu, 25 Jun 2020 01:39:24 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590079968.git.christophe.leroy@csgroup.eu>
 <8c593895e2cb57d232d85ce4d8c3a1aa7f0869cc.1590079968.git.christophe.leroy@csgroup.eu>
 <20200616002720.GA1307277@ubuntu-n2-xlarge-x86> <68503e5e-7456-b81c-e43d-27cb331a4b72@xilinx.com>
 <20200616181630.GA3403678@ubuntu-n2-xlarge-x86> <50fb2dd6-4e8f-a550-6eda-073beb86f2ff@xilinx.com>
 <87bllidmk4.fsf@mpe.ellerman.id.au> <878sgmdmcv.fsf@mpe.ellerman.id.au>
 <CAKwvOdnkcjLGay0jdQ77kHTmKhE56F9jvzh01XWwEE8rjbhLAA@mail.gmail.com>
 <87tuz9ci7e.fsf@mpe.ellerman.id.au> <20200618031622.GA195@Ryzen-9-3900X.localdomain>
 <87eeqbco82.fsf@mpe.ellerman.id.au>
In-Reply-To: <87eeqbco82.fsf@mpe.ellerman.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 25 Jun 2020 08:39:12 +0000
Message-ID: <CACPK8XdCmDgHuJ=rvHzdr9Agu=2dGNoNh_WfVH=52mchffA2=w@mail.gmail.com>
Subject: Re: [PATCH v5 01/13] powerpc: Remove Xilinx PPC405/PPC440 support
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, Michal Simek <michal.simek@xilinx.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Paul Mackerras <paulus@samba.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: joel@jms.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@jms.id.au header.s=google header.b=movOQeaG;       spf=pass
 (google.com: domain of joel.stan@gmail.com designates 2a00:1450:4864:20::542
 as permitted sender) smtp.mailfrom=joel.stan@gmail.com
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

On Fri, 19 Jun 2020 at 11:02, Michael Ellerman <mpe@ellerman.id.au> wrote:
>
> Nathan Chancellor <natechancellor@gmail.com> writes:
> >> It's kind of nuts that the zImage points to some arbitrary image
> >> depending on what's configured and the order of things in the Makefile.
> >> But I'm not sure how we make it less nuts without risking breaking
> >> people's existing setups.
> >
> > Hi Michael,
> >
> > For what it's worth, this is squared this away in terms of our CI by
> > just building and booting the uImage directly, rather than implicitly
> > using the zImage:
> >
> > https://github.com/ClangBuiltLinux/continuous-integration/pull/282
> > https://github.com/ClangBuiltLinux/boot-utils/pull/22
>
> Great.
>
> > We were only using the zImage because that is what Joel Stanley intially
> > set us up with when PowerPC 32-bit was added to our CI:
> >
> > https://github.com/ClangBuiltLinux/continuous-integration/pull/100
>
> Ah, so Joel owes us all beers then ;)

Hey, you owe me beers for finding broken machines!

This machine was picked from a vague discussion on an internal chat.
The two requirements were that it would build, and boot in qemu.

If there's a better supported 32 bit machine then we should switch the
CI over. We don't want the Clang CI to be the only user and give the
false impression that someone out there is still booting upstream
kernels on it.

> > Admittedly, we really do not have many PowerPC experts in our
> > organization so we are supporting it on a "best effort" basis, which
> > often involves using whatever knowledge is floating around or can be
> > gained from interactions such as this :) so thank you for that!
>
> No worries. I definitely don't expect you folks to invest much effort in
> powerpc, especially the old 32-bit stuff, so always happy to help debug
> things, and really appreciate the testing you do.

+1

Cheers,

Joel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACPK8XdCmDgHuJ%3DrvHzdr9Agu%3D2dGNoNh_WfVH%3D52mchffA2%3Dw%40mail.gmail.com.
