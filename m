Return-Path: <clang-built-linux+bncBC27HSOJ44LBBR4JR6AQMGQEPTWNF4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ABC316549
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 12:34:32 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id o8sf1310563ljp.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 03:34:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612956872; cv=pass;
        d=google.com; s=arc-20160816;
        b=mUqsxJQt1eJoju36H6i8bRX0ZUzV8CED1rV4XU9FprUNWBct6ar6w8yHOgMO51oirC
         wCHoSvKRYPcW/bExuEaIEVYrXRyDTUy8MM/1mk1rkS/Y8YmaGSaHT79vL7h447bz4/7x
         6+oXClGlLiCDg0gWR2MW7vzx4C8kiABq35Ra/iCWyJzArP3KBk7axAzhTeWRM+fHPyMq
         SiWI436MxRc+IoyQrQF4hXqhDrPrD5O+dFrwkccEnDNgQBkUQVTPn+tg/8TkYFSkwVyJ
         jx1voq44lRYXTF4oMJGO8CkCaTuTHe+ZlsviHhQX7Sluz5fO4EGrhvmyPjZ3omtngGuz
         XJMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=LCbUX6As1vKEaBBbeCH0DU2G0oyMe2SZ7nU/MhMNOxc=;
        b=ZVEQryKERMi8Id5FZxdMua9r+ikLqiqFeow/8P4QfM/6dGcn3U8UkQ+owct+Mg2L08
         UFjV9tkBohKLlHc+OozHwPzai2CL5rytg0cVX0rFIBQ4ooicKc/PJy2V9z/mneYj+ktb
         hUvShdrUkjsFIcTvwlizGVRBf11Tp1tz0gD1e0FjUNejRe1eoDHpOFePS8W3eLrbuzpJ
         d2PYf1BaS/enE5JpYZi0spnHNhzIcE1tXlby+JJc6vjBZUa913JhDmp9/KULBBSfpHp9
         02lgSdNG7qzE3qasxyz7M2YfOXykNIjoINKHU5thG+xE+exPCIf9prD/VyORHS8NqkoZ
         MFjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LCbUX6As1vKEaBBbeCH0DU2G0oyMe2SZ7nU/MhMNOxc=;
        b=bJ3aX3SjMg9z48Y5L1TMgUr/ZTRs0Is5pTRqzLIlJwt+PFWhoMe4bqGLTR+vKMGl1O
         Zqb9qACBFOUzCoEHen8dKTChMKHRnsuf6UtHHcFPz4AEekUNxo0CdpF8OxM9w+dQHIUo
         jMm5QGNOwic4b00E9eoaKRMAUzcuUkxdy9FuL8tQ4Uuq5Qb9kCKBf9xbCc1H+1D8ckwZ
         f6QIfZqVEC75WyCIHFEZbGQwcZEbCoTIKAlZ7ezj4rTZoJCRPT2JxgevcU9pHGxSfPaK
         zOWXndAmpBc7lHZjcMXuIMHrS/9ilXxrEztnZ4WJDkkUnwuTjTLh/Ib+sNtVHIdo4ova
         rg9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LCbUX6As1vKEaBBbeCH0DU2G0oyMe2SZ7nU/MhMNOxc=;
        b=fUcowjF7bGjEvGWGM2wpyQ+1pOUBJZusTSmEL90YGc9v1FHxR4648bi2NM/dY4QlPV
         I4LBZNUlvZy9ZUeq1UhoH2DAs/WETSVnJBqr1n5IV/MLv93efuomPzmFQkKOgv5Xtl0J
         Y2BqsuZVQ1OqbMVnJt7IQdfKlCEcROEMPmO8jf8kOp/dnK2cAzURrwhEYtss0uK4J+Zd
         tUl6uSBhTn6aOjpxtY6v5deHCzbifANtlSr+vu41VbzzSgRJSG7erXzXM4Nr+V2R7Rcq
         X0N5nGZ4Hqj0/GT8GUUsaGDf94+Jpwdbr8kmIF+kJTCzHU6RhLkKAWgZ+/Go9rACEKn7
         ithQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PT0QfdHsvT1TymljisEsDwNXVXM0UPyFAqLtpnJMCTcqjcSt6
	YxwfdR0uelZ100euYeB9Q80=
X-Google-Smtp-Source: ABdhPJzwRpLVTYOVwgh/JzOx3eXKdRqiOJqa+FyHBbHZmnbn1R2VfEWpe57Q4+4jRyDKpKz//Pb4iA==
X-Received: by 2002:ac2:4349:: with SMTP id o9mr1586576lfl.415.1612956872052;
        Wed, 10 Feb 2021 03:34:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:518c:: with SMTP id u12ls1140286lfi.2.gmail; Wed, 10 Feb
 2021 03:34:31 -0800 (PST)
X-Received: by 2002:a05:6512:118e:: with SMTP id g14mr1402258lfr.205.1612956871053;
        Wed, 10 Feb 2021 03:34:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612956871; cv=none;
        d=google.com; s=arc-20160816;
        b=oCeQ8aNeVEtCSqd2uJibRumqcPezNG/xJxM4hVNFaxLc8oJcJW5EpFxewW0nA7nuPK
         HnYt7uTBYsnoH/7GlfwS9Ef0xL9y3rHi7Rcu6mSJnS/4UyEzeJKxSAY4N9gv+xCKbJpT
         baL0ids+xm6c4zM0K4XlEfLzezdoP0MgztL4TwiHJm3YrukR2onnF4HaXAxQwl3DChKf
         /GT6xD9wIM5X33gfxe8FIklTheS57nIkbcDBWqQd7u0TuUQj+4BoXjIPg3Da5R0PADWC
         obC+5/n+BD2zdUsBTZT+lpPqI7DEIOwarsLkg2zKuFQTaaP1eObPT3XJvoPpsGlmufHs
         1U8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=WMP1j7Cvtm0achR8cR6+hQaIy6maZ1uJy0j7OEwO074=;
        b=nsN0bBiaQE2ohj8pyqdktt+8L7BZqRdL5aZX1IaCLG4Qq6FYZt/33mEmznCojXasvU
         ViNL41vDy3IkYXF8nWal0TDWcp/S59rp3rM0Njk1JQtmAhFW9980CFdIT48iBPRE8gss
         24cds+XfvxFRSUbwzGvSBYg0YmqXn7jyYp/Lj82IHhweOnW1T9Xcdykx4d/nRYvcQF18
         zNF6Jq7u2R1c2ryPPAHandW6KVrq4MBxrLAkL/6KrRgo95okn3OWUOckI7wCBOWM6pMo
         cP3Gp630gCgDksT+T1eFrxsbPsFumjq8OeBrivdHmk9jeFLeO25gTSfOnbk0cZkn/CMO
         /2Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id w18si106434ljw.1.2021.02.10.03.34.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2021 03:34:29 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-115-a5OTD5OFOq-Owgh4ZRfTyA-1; Wed, 10 Feb 2021 11:34:27 +0000
X-MC-Unique: a5OTD5OFOq-Owgh4ZRfTyA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 10 Feb 2021 11:34:25 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Wed, 10 Feb 2021 11:34:25 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nathan Chancellor' <nathan@kernel.org>, Nick Desaulniers
	<ndesaulniers@google.com>
CC: Jiri Olsa <jolsa@redhat.com>, Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, "Song
 Liu" <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, John Fastabend
	<john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, Networking
	<netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Veronika Kabatova
	<vkabatov@redhat.com>, Jiri Olsa <jolsa@kernel.org>, Arnaldo Carvalho de Melo
	<acme@redhat.com>, Daniel Kiss <daniel.kiss@arm.com>
Subject: RE: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Thread-Topic: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Thread-Index: AQHW/0GRCH7UzKiswkSGiUsyv9cB9qpRQTWg
Date: Wed, 10 Feb 2021 11:34:25 +0000
Message-ID: <67555404a0d449508def1d5be4d1f569@AcuMS.aculab.com>
References: <20210209052311.GA125918@ubuntu-m3-large-x86>
 <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86> <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava> <YCKwxNDkS9rdr43W@krava> <YCLdJPPC+6QjUsR4@krava>
 <CAKwvOdnqx5-SsicRf01yhxKOq8mAkYRd+zBScSOmEQ0XJe2mAg@mail.gmail.com>
 <20210210000257.GA1683281@ubuntu-m3-large-x86>
In-Reply-To: <20210210000257.GA1683281@ubuntu-m3-large-x86>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

> > > vfs_truncate disasm:
> > >
> > >         ffff80001031f430 <vfs_truncate>:
> > >         ffff80001031f430: 5f 24 03 d5   hint    #34
> > >         ffff80001031f434: 1f 20 03 d5   nop
> > >         ffff80001031f438: 1f 20 03 d5   nop
> > >         ffff80001031f43c: 3f 23 03 d5   hint    #25
> > >
> > > thats why we don't match it in pahole.. I checked few other functions
> > > and some have the same problem and some match the function boundary
> > >
> > > those that match don't have that first hint instrucion, like:
> > >
> > >         ffff800010321e40 <do_faccessat>:
> > >         ffff800010321e40: 1f 20 03 d5   nop
> > >         ffff800010321e44: 1f 20 03 d5   nop
> > >         ffff800010321e48: 3f 23 03 d5   hint    #25
> > >
> > > any hints about hint instructions? ;-)
> >
> > aarch64 makes *some* newer instructions reuse the "hint" ie "nop"
> > encoding space to make software backwards compatible on older hardware
> > that doesn't support such instructions.  Is this BTI, perhaps? (The
> > function is perhaps the destination of an indirect call?)
> 
> It seems like it. The issue is not reproducible when
> CONFIG_ARM64_BTI_KERNEL is not set.

Is the compiler/linker doing something 'crazy'?

If a function address is taken then the BTI instruction is placed
before the function body and the symbol moved.
But non-indirect calls still jump to the original start of the function.
(In this case the first nop.)

This saves the execution time of the BTI instruction for non-indirect
calls.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/67555404a0d449508def1d5be4d1f569%40AcuMS.aculab.com.
