Return-Path: <clang-built-linux+bncBC27HSOJ44LBBJ5DQ75QKGQELX6ND5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9D026BFBF
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 10:49:43 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id l22sf2087031lji.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:49:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600246183; cv=pass;
        d=google.com; s=arc-20160816;
        b=yXMHHNMWUriA/tjfMP7LWyRQ23eV7Uotixz8x7F04xKMt6gDmQ+jCQRc3a2BNvPI9e
         RcdlDcXVcPDAWjVNM8/DUPnBsUbFp5KP8yGgYqc+Oz2aIzqBU/+Udf2J13lhivbf/9CB
         86xKlMdv0EJc+3e6aXl/hXnZnAyJV0uPPqzyxKbXo8Rjnak3rsouKXRVGD3foOy67NGJ
         UGlonvkW46HlcbSQ2lQldRypfnEPZx5Z/xFRDFz62nygtwNRbR61cCov9qZ/af4rpo7C
         ajypbPFbdptnaAgYSkDVy0Cp2RU+O4AmLL5oIUMIKhvpDGVShANBa22e1J/zzCLz7cZF
         VSgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=4hO3Vpaqoswh/eECniap1ot7qzHXLoKv/ixa6KDGfas=;
        b=UdJPXzIslxGF+uLj4Us1AdYcLhqP+njgDumpsJUnL4OOoEfAIQa1fRUeS0Q1NsGcnp
         dcf+jcWBEtnXGzt7adH4WPDygzITRSJidyAassly5IDf+ncP+FxjVS5IFrYlmEBy+MWe
         X9D59TkLhf3JZ+oDLqxN1aSBDmxqFizdZziMMx84tjytRi06fOjED27462Xh1Mr8dX3X
         4O7vehr32C6+fSegtIhprILbGKeK2QUdgHApSUUzg06m0/a/gcMAEhLp1LFMAnkOvwfj
         UBxwVRECJtIGZOQAG+GVq4EnaXEsjXyYQzVEMHRyuNRTA2USnm5U75MISt1gKgzTeV/9
         2DCQ==
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
        bh=4hO3Vpaqoswh/eECniap1ot7qzHXLoKv/ixa6KDGfas=;
        b=mr387Z5ol/KKibMfEouWgiGFjZnXxbUCIcr80eSFJPiN/xYMkYMT9gK3ejX2FSjB5u
         bjeYVMKn7El6mn2RO8GWomLD4hmTBqxcJ/kL4UKgsmJ+mY6DwOhps44DIUXGR3/mV5Ux
         q633XSCucgWc7NgYn9Jp4TJBEgKH2EyHQy32hIsUE4b+O44PixmdkF/rN36vlL/gdBpb
         xW12jcdLLCLpNAGhLCSefdRZ9j0cbpMORNzA2LMFdCy2+1DilDsCVyd/DVr1BVqbme19
         xfkSkQ1zXOL390vn50gBTwF1Sh6vtFs2sLw10MLIoRHnM7qv1MIsv5WgpjSponW9p2og
         0ShQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4hO3Vpaqoswh/eECniap1ot7qzHXLoKv/ixa6KDGfas=;
        b=U2h9zeNbMoDtM/iV2Ih3V+Pb/a5HtyCQRV5ftscnR9rYAthGRpa6Nk3riHGIdXLwAg
         58py9EzP+I0NOVMe2lqp+lLj3P35mGN0AsI9EFmVhtLKzVf7zf0RgNElXCMIUxRxR+VL
         wm2ZQL6ksY9Y9qa0s3bNpmDMWt0srlnAcrfGj8gqb4IEXV5SMZWQJCdEMCgRv10gS3Z3
         mdb5sZhTMkQZVijlSYJ2F51yZ09Z8B9rdNvceSDMZ4Y5MFxE+NigMALVnph2V5t6AvPG
         Vi+4X1y0IPjzv0uQk/srGNvxJXIJ0x1pMIQJG3lxzS+No94GhMALBlJKSuJPMdAqaxNI
         PwXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532d+0MzssD6HuY9yrt8YHa3PpJ6iUMWyEwuMKPYdb9Bh5W8CNRs
	hrQre5Ix2xo4YspYBZBB6Tk=
X-Google-Smtp-Source: ABdhPJzWrdT6dYz45rXUHM+JZLdYQCg7sE/gGuwqQ0MaZHts3WIKHnt1cXHIoBzlsJEIfTbHAstQsg==
X-Received: by 2002:a05:6512:2e4:: with SMTP id m4mr7417297lfq.535.1600246183358;
        Wed, 16 Sep 2020 01:49:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9a93:: with SMTP id p19ls180260lji.7.gmail; Wed, 16 Sep
 2020 01:49:42 -0700 (PDT)
X-Received: by 2002:a05:651c:92:: with SMTP id 18mr2441198ljq.441.1600246182300;
        Wed, 16 Sep 2020 01:49:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600246182; cv=none;
        d=google.com; s=arc-20160816;
        b=vYbczB4SWfytX1tzT/gUFHGYg9Z+1sOI3YR6B/6fEwcDsdelNh25XdpCZLKiIJ1clp
         FsYH/UyH219TB+WpxtRIPv/Y5C0STzIC/6MJ+G6CLrL0NC1TUGko2WC16jIbkW3efF/9
         FEdTIPMK1GJCoFzo3alkwtaopubVrTDgM7Zrwvyl5QOfkhv3uLUr9uOUSCxbNL4G4+og
         DFksViYDpsnidlLG0PPaeHnntRDas1n/fxmU0On+TOPBzRK7ZeuNQok13/bWqZP+eHGF
         xywqOJkji2b645E8/k8oY61kMhGPCVidjUa9XIjiI+wOKGOnUWhPXGfFvnAuwI6vsWlJ
         E/Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=dC1+4KZIT/qqvaBDjw9cGNEEtnYBQ2knE7cgwVl0r8Y=;
        b=JUewROFr1h3IWIzmZ6F4KFPwtO8RLCsS4bjHBles4OABU/69uMbklvCnHAPFwPAJ7K
         kvtv0IMdglC3H9jQ43jO0BdMTbhgAvAAxZSIkFo5e+y+Z+dIBu9c27jji3WICqUYs22v
         PeZit4SaAUtjVutTZ0Mueiwp11l+9dUu9U4UcysApw5wWhq49a6bgHYuIA4k3KS0Zbs9
         DM/WNXEM+CTYAQQstzaRwhGJ8xaBMCKeLJQDVSLGqsoZC6osYfSamKNNtEuBK7CrZQmy
         Qan74ycAmmUrlNADYXQrYb9MOvxP8tDtgChj93STOXRwWHcxuFiPSTobq08aGB7wWNTV
         ILOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id 21si497943ljq.5.2020.09.16.01.49.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 01:49:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-237-R-SA02URMPyFWFyvMB9Mvw-1; Wed, 16 Sep 2020 09:49:38 +0100
X-MC-Unique: R-SA02URMPyFWFyvMB9Mvw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 16 Sep 2020 09:49:37 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Wed, 16 Sep 2020 09:49:37 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Borislav Petkov' <bp@alien8.de>, Andrew Cooper
	<andrew.cooper3@citrix.com>
CC: Andy Lutomirski <luto@amacapital.net>, Nick Desaulniers
	<ndesaulniers@google.com>, Andy Lutomirski <luto@kernel.org>, Bill Wendling
	<morbo@google.com>, "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)"
	<x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, Greg Thelen
	<gthelen@google.com>, John Sperbeck <jsperbeck@google.com>, # 3.4.x
	<stable@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] x86/smap: Fix the smap_save() asm
Thread-Topic: [PATCH] x86/smap: Fix the smap_save() asm
Thread-Index: AQHWjAMXVSRzzG6WxEmLrZSeXkmcHKlq8oSQ
Date: Wed, 16 Sep 2020 08:49:37 +0000
Message-ID: <caabef9c729f44e388adc8d359476571@AcuMS.aculab.com>
References: <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
 <441AA771-A859-4145-9425-E9D041580FE4@amacapital.net>
 <7233f4cf-5b1d-0fca-0880-f1cf2e6e765b@citrix.com>
 <20200916082621.GB2643@zn.tnic>
In-Reply-To: <20200916082621.GB2643@zn.tnic>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
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

From: Borislav Petkov
> Sent: 16 September 2020 09:26
> > It's clearly not safe to ever use memory operands with pushf/popf asm
> > fragments.
> 
> So I went and singlestepped your snippet in gdb. And it all seems to
> work - it is simply a bit confusing: :-)
> 
> >   pushfq
> >   popq 0x8(%rsp)
> >   mov 0x8(%rsp),%rax
...
> Now, POP copies the value pointed to by %rsp, *increments* the stack
> pointer and *then* computes the effective address of the operand. It
> says so in the SDM too (thanks peterz!):
> 
> "If the ESP register is used as a base register for addressing a
> destination operand in memory, the POP instruction computes the
> effective address of the operand after it increments the ESP register."
...
> Looks like it works as designed.

Probably more by luck than judgement.

It probably has to work that way because that is what the
microcode on the original 8086 did.
Although even on modern cpu the 'pop' and 'memory write'
are separate u-ops.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/caabef9c729f44e388adc8d359476571%40AcuMS.aculab.com.
