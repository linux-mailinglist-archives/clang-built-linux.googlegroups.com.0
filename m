Return-Path: <clang-built-linux+bncBC27HSOJ44LBB4PFXXVQKGQE6C6GRHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBC3A7D75
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 10:16:49 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id v17sf2192310edy.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 01:16:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567585009; cv=pass;
        d=google.com; s=arc-20160816;
        b=saiCyFbwi8RUyWj6UasB9j6m+Ulz9iU9ALDL7HgTTQcdxEhdReWrb9BOIPhqij8r+W
         FZJI9gQmPggxkj1f1W/BUacRqVA0xj4hlQVfEA8MAGb8V17/sHwyGnMebVAPnCvA9QSk
         65VvzunXYRY/nVPoOZ8frJKGmpejrjxYqfJ+6Fy4602wxvHAACjvD+yM6ibBwuv9Ik9x
         kG6PrNony3rv2sbTkTQ+uJQFqSqrXSwM5CVub5Hf8i5+/ycjhBUtx9RE9yKPPcf2G2Ip
         1zzuHyopxli0tGdMOh5z5GWl8tP4DY6W9MeBjpE2eJrSBqgPOi9RYG6UyFe7eyneCf6P
         4kNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=oFE6ojvMY2cU8zs58DJqt42dDs8N4+QW0kRD3cA6ahw=;
        b=bpeNLpF7BJfztWbIc7x6LgQdScEnDmGJZXPlbyS4OsTnnGPh01LmSK86DDUkDZju8y
         0WkGrV3e3nCLYijOQvdpciqUEykR2hBeQzutgIMVG5GhAid/aR9IPuYlyQ88Y4cajGay
         zwIlvwpd6f4lLBNVp2iM0YcRWBODMAN/xLDGj2jHSRM2vXC6wfqtvU0s2c30CtvGyXIK
         sWoGXf0ePO6+EWCNRfBElZbK/Ebyel3c2BqidA5wsPDVx9LwNLERU9A0E4zJrRgozqyJ
         EF1RhCkAWa6a8b4zqWI22bQjsegWeSw7W1GyqAMtT2NgPOrjuxqD2TgI5/O46k3pjpK7
         9aDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oFE6ojvMY2cU8zs58DJqt42dDs8N4+QW0kRD3cA6ahw=;
        b=GM9++YqTQUIicWpRKGFadcg0EHDxLW+M6Shm/BPzyyBAbb7SF3Sv4Itk2tziwEhv2V
         ZYgNliDejz5LWZVxby/MdV5BN0S+UGfTxs4I8kTF1j+JDYmZauA2N442KUWqcI+h1qMW
         pcpDCTrrrnnB181sYTw/78xfgj2KHjXC20VWmu3a71cppEGKxXzZrIqjkxPr2dfgTZNH
         N3MkqbAfrYoVQoHUSh9d6pHN8ErDNElLSPVpt4G41NfYovFtNJ7SXylrQ1fT8sxCuVk+
         z9zlFTHcFB53CWA4g99tpgG8ecPyr5wd4SXtmZ6S+jyvJw391K6/DE8YjFh+6Ddl4BnQ
         lR3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oFE6ojvMY2cU8zs58DJqt42dDs8N4+QW0kRD3cA6ahw=;
        b=D1+WLAImmJlZIkqvElIr4o17zCVZQ4n8WqA+rH42ww8jkJRIFRPS7bNxJaZPmaON2j
         VoHq+ucNaEUutqJ/XR0AvGO0/+HhMb4bq5g/Y1R+YrYBRzzZKNiJPRXsMIgxQMVLxCfo
         0myS3TszUQhtPnmdU1K/QVbXbOXdAT++LVyTS+9JEhiX9wYPG7vEcCTCBw0KB+2Wh98X
         24oIT7kuiL917evdDLgSb4C40/n8KVBKeHrXjSf5edpS1R0QZmo1VCZqcrXW1r1iXy+U
         RafeT/RPvvrjrwCx6RAkye4TYFHr4mFqS1s9684yBdLjTuVQUVPQAQQUmml7hTIrUmeI
         khQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW7fSnE0Zyc/cjA2+oznF+MBSnCcJHjDcxICWYDCSJPMg9/DRov
	yD9DlVWJzHV3WbyJSCuKLhI=
X-Google-Smtp-Source: APXvYqwoeqHXrZE/uCy3uX3Q5iMQpvAU0OrpRfnONaAmdX72jplKjY/kcIvYNnmA9pNAnmKP86ckNQ==
X-Received: by 2002:aa7:d40d:: with SMTP id z13mr26370348edq.229.1567585009284;
        Wed, 04 Sep 2019 01:16:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:c28a:: with SMTP id o10ls6071333edf.8.gmail; Wed, 04 Sep
 2019 01:16:48 -0700 (PDT)
X-Received: by 2002:a50:d096:: with SMTP id v22mr8182948edd.81.1567585008726;
        Wed, 04 Sep 2019 01:16:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567585008; cv=none;
        d=google.com; s=arc-20160816;
        b=aaiyGS8lH094dSZVe+qktXSUEjmD0Go4Ti8DyVjjGL+ZDO7A96ihM4BxasCN4wYzZX
         SZ/JcJbrWv1ltg1fAFXyL5PH3nk+N6+m7PxY5FPzLe2E9RHw9mQJiIq7bJMnCSEA2kNF
         LwZ0mvU3HSh/NFS71h0Gc5V3DyKLBLpp476DEXiAOPy96KYFQLGZ4cu1qkMA1nU7PyxO
         XX3lJ80CuGtJC6DN+FNx+wmZZ87DMXHSrSGwpKe2pIZ7w7zwV5Z/8xlNgDfZ8kArTtIr
         z4ZnX0PG6cci6Q/1bTd2NOf7vTr+A+ppfaOdBXE70VeeyLzQ0Tv12Hblcnv1v381bBYU
         Nwgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=ZZj1ux1gZpFnkAz9z3k1dDDWBIbzHWdKqcJhAMFMjsQ=;
        b=set2JqmmNDWWYGcAVqJ/PjQ/O6caA7w9apNYL8zWHcCObcQ33P+iF14c1RVmb+XU1L
         1HlS1+voHEYdxPtsbf2ZBpzan7pMkDbyC0eJVTB4IZ0N3Egpp277AASYURlsLWFHWKTE
         WZMp4dpOmO5AA9MUUAPuCngx+zNbMemfHbED2Rza7WyGz4k2m6QyF04XpAJqEAoruaS4
         4iWbvC1VSA/WHcQi8SI782g7s+hbJeY1UyUXFYp02ZYZ3QMLPMpdZcxJuwLIytWrws5O
         xMHCEaIwttAJ5DHdut+O79JfdFeuPEcFF56e2Jafo+rFRo+9m02csWxmDHFhSTOlmuKd
         2bpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [146.101.78.151])
        by gmr-mx.google.com with ESMTPS id z31si691885edc.2.2019.09.04.01.16.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Sep 2019 01:16:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) client-ip=146.101.78.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-193-nFFPn1P4Oom3Bv3qJ6LEWg-1; Wed, 04 Sep 2019 09:16:47 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 4 Sep 2019 09:16:45 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Wed, 4 Sep 2019 09:16:45 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nathan Chancellor' <natechancellor@gmail.com>, Segher Boessenkool
	<segher@kernel.crashing.org>
CC: Nick Desaulniers <ndesaulniers@google.com>, LKML
	<linux-kernel@vger.kernel.org>, # 3.4.x <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>, Paul Mackerras
	<paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: RE: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Thread-Topic: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Thread-Index: AQHVXdDJpnOUwPzSaUeRyhz1GkEFSKcR4W8wgAjREfaAAIOqQA==
Date: Wed, 4 Sep 2019 08:16:45 +0000
Message-ID: <1bcd7086f3d24dfa82eec03980f30fbc@AcuMS.aculab.com>
References: <20190812023214.107817-1-natechancellor@gmail.com>
 <878srdv206.fsf@mpe.ellerman.id.au>
 <20190828175322.GA121833@archlinux-threadripper>
 <CAKwvOdmXbYrR6n-cxKt3XxkE4Lmj0sSoZBUtHVb0V2LTUFHmug@mail.gmail.com>
 <20190828184529.GC127646@archlinux-threadripper>
 <6801a83ed6d54d95b87a41c57ef6e6b0@AcuMS.aculab.com>
 <20190903055553.GC60296@archlinux-threadripper>
 <20190903193128.GC9749@gate.crashing.org>
 <20190904002401.GA70635@archlinux-threadripper>
In-Reply-To: <20190904002401.GA70635@archlinux-threadripper>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: nFFPn1P4Oom3Bv3qJ6LEWg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com
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

From: Nathan Chancellor [mailto:natechancellor@gmail.com]
> Sent: 04 September 2019 01:24
> On Tue, Sep 03, 2019 at 02:31:28PM -0500, Segher Boessenkool wrote:
> > On Mon, Sep 02, 2019 at 10:55:53PM -0700, Nathan Chancellor wrote:
> > > On Thu, Aug 29, 2019 at 09:59:48AM +0000, David Laight wrote:
> > > > From: Nathan Chancellor
> > > > > Sent: 28 August 2019 19:45
> > > > ...
> > > > > However, I think that -fno-builtin-* would be appropriate here because
> > > > > we are providing our own setjmp implementation, meaning clang should not
> > > > > be trying to do anything with the builtin implementation like building a
> > > > > declaration for it.
> > > >
> > > > Isn't implementing setjmp impossible unless you tell the compiler that
> > > > you function is 'setjmp-like' ?
> > >
> > > No idea, PowerPC is the only architecture that does such a thing.
> >
> > Since setjmp can return more than once, yes, exciting things can happen
> > if you do not tell the compiler about this.
> >
> >
> > Segher
> >
> 
> Fair enough so I guess we are back to just outright disabling the
> warning.

Just disabling the warning won't stop the compiler generating code
that breaks a 'user' implementation of setjmp().

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1bcd7086f3d24dfa82eec03980f30fbc%40AcuMS.aculab.com.
