Return-Path: <clang-built-linux+bncBC27HSOJ44LBBHGET3VQKGQEVDGJDOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6721FA1549
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 11:59:57 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id g185sf2099552pfb.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 02:59:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567072796; cv=pass;
        d=google.com; s=arc-20160816;
        b=cKhLu84c2Uu5s1KuBMy5GowMk2BnF/SIGhdG/EDN85soSxYSTMxubDDLg1qxUNaERJ
         vA/78e5Zgl0iiu897sp9BHyfnfKbgqj2V21VA/I+3IY/tIK1wwvicGUAmWdWDw0NVLX0
         CbAEy3cFylwRbwnhTjlzcSwumwl/WjVCWUWggeW9Y/vdOxj4Ua+2cKdscwfVVYFeNqR/
         OcW3JaJZO9KNEs6lEwx0LiXkLuLNnsVGWYRt2bv/WWBoSQ57nKd7Bq9867LGPCjTmdA+
         iqgO3z31eyiZ22AkIkEP7gos3DGiisOaS4xLMtISw9TE8cMnOHpby07GcxoNcPzVpooc
         ylnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=OCQqdVs+BCtKDTWi2KIsN3PaEKUFG7OIYTVOsdsJZpw=;
        b=DVAhxznspvjO6Na5PIsjx/xGiHhfmqmmJ4Stg6+bONJLeFxI7u4P9JTYh+Kk32yxmS
         Ki/V/3e8uGYLBRcfGf647zRyuIBZCJWhUCLfNDUdvqzakml2wlcgqkxHXbPdUIV+OqFm
         VyUyeHo8Nxleo61HBPCrHdxgfxuqn8pGH0cq30s9QhzOiCAnMWPLJzW84OteS5BY66HU
         +MEdrskbGN7/i53eNFsq5FDPoPF/wgS5ykPKIjL+MYExP5i5jWSOJq1FzABrkhR4CrWn
         u4ryH7ygAHKbiwTDDMfNr9yrQNeL1PrhXj+Gg3kSHi19tz6CYVl7p+qr5HUZY+q2njjF
         xE/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OCQqdVs+BCtKDTWi2KIsN3PaEKUFG7OIYTVOsdsJZpw=;
        b=WHcvxz5egkoMQaRoTErxD2EP7pCeD4FDKWSDCUvtv+MsaMQKiKfEPBbSL88Xcukmwr
         TA3B4j/9zM56Sdgs8uRWKN8L3sNOcapxjka+0DDcV9Jyp07K09QOMQzLJbcFeQzZVTS2
         cHVl9J11GiiIoliYCnkOYxgT4aKTd5h2bcuuFXYKgEjyX96bhXVm7/OL6vLL75PWnX94
         esuhnR2S05gFRHNCO8sZ3z4FiNDOpYL8JNoUmuESbj06PpHlFS2wzSLlP16ELFE7BawQ
         NuNMzu5ud6RT1z8AzhX5DuZIZL9mXLgj1dGUh9Y1pXFEzvR+BHc7/qYq46s4Z6clEGYr
         fivA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OCQqdVs+BCtKDTWi2KIsN3PaEKUFG7OIYTVOsdsJZpw=;
        b=algPg2PjxVNJiB3pYwUUlNtIHLTnkHwNeIqBWC7cBCKsrIINtWW8KbHG0KGch10l1w
         A24x9ay4/BUeKVU0zihp2FKIuUnP5Z+vgFwcLZeFjEP5YgN1orIHUAKjzafY3Oi+GgUK
         mfFo9VMJLPgnPJruMZ5JBI9nTRAYZhgWYuZGUiaRwvYu1WAcbV7eJoq+ljF3B+nSxs5+
         pH6qILFDfr7FUNVkCeyFhjwDxhDErGOYl6/JdzVF7QO78xus8S9zOJqRNg/hNzgDnY+A
         wPzANgAk+n0wY5Cx3yrQV4lLsSYfk9JnESrx1xW+Ak8k55VnpTfCF0u3W4zOe1ylWTe+
         NAWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW1ByoS8cL96ff4/fv+is3M4cuMOApu1BlGOKOYBHrSkpgscQ93
	d9DHWrhWbww9kjVj2EID+VM=
X-Google-Smtp-Source: APXvYqz6EOwJ+HaK3GKSYk+MsKamqN1sXmT6W1RR5qImfYlohKn0xsJjvZtvWdDRLK9IQ/CPsKq3Ug==
X-Received: by 2002:a17:902:169:: with SMTP id 96mr8573171plb.297.1567072796092;
        Thu, 29 Aug 2019 02:59:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3043:: with SMTP id w64ls511045pgw.15.gmail; Thu, 29 Aug
 2019 02:59:55 -0700 (PDT)
X-Received: by 2002:a65:6552:: with SMTP id a18mr7720618pgw.208.1567072795745;
        Thu, 29 Aug 2019 02:59:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567072795; cv=none;
        d=google.com; s=arc-20160816;
        b=CPqji1px0J/6WJkQa9NgCn4ZlJspH1oPJFfIkmxsnPXgdqtV5HNut3uFngjdXQobG/
         3dMnuqRjir4fXpsbYE/c+4tn9xCUD8BtCVjTyQ1HBJSdxPj9yB4kj3n5gyKn2fdirC7H
         DuoqmqLqb+8TrIkxmDyisQosHSc7aqr5ya1GbeG+Rp2tzV1J1KyR3QEzjVnNQhRRywOO
         w33JewN42yrX1S1Qk7RM5yW/oJkrsu5YtyjqECrFSVqu7JSjx9iL5RaYHw1vRV+ctYMi
         O954BfGd0aVcpYYxiGyLq2Ai+6qdJ+BktOvd0GRbbNYb8GFVeCS9W2JeXI4UwMtw0ZR6
         EttQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=dWc+mW4Sl6F+Q/V6v9/pVJsJeBoUXRtQgiY4Wd5BAw8=;
        b=b0ClxIYC9Y5O/cPyWI63bnaOnTlwpELA/0KMwUkgnqe5gTpkVeyEDBxRmKj4J7iUxi
         NvJspwUgE6UW6KoLugpGufmzQH60AmvwjmxIh9BFmtteMbEzAxEvmDeHHlAS8cjwN4Ar
         /rGod2jdE8LxCKjDM3g2sqdWAUr8Atcf1EROH5oA1anGlTNr5AsCeKdP9Wrb3xUe4ev7
         oPMZ+Zc360998cBWMq5gRgKf4pFlrPtI1x54VGJQwDmxh77ZSvvdVgWBfz5Z4ZlQm/+D
         sQshCXC4HLOXA0spWISunLBUbVA/jCPoQ4Nblhvu4L/QWNffhkyDAvaNd+iyMx4a3KdV
         8yRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [146.101.78.151])
        by gmr-mx.google.com with ESMTPS id 64si28550ply.2.2019.08.29.02.59.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 02:59:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) client-ip=146.101.78.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-33-AjVBBskIPdq6hYwg5k5JLQ-1; Thu, 29 Aug 2019 10:59:48 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 29 Aug 2019 10:59:48 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Thu, 29 Aug 2019 10:59:48 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nathan Chancellor' <natechancellor@gmail.com>, Nick Desaulniers
	<ndesaulniers@google.com>
CC: Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt
	<benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, linuxppc-dev
	<linuxppc-dev@lists.ozlabs.org>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>, # 3.4.x
	<stable@vger.kernel.org>
Subject: RE: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Thread-Topic: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Thread-Index: AQHVXdDJpnOUwPzSaUeRyhz1GkEFSKcR4W8w
Date: Thu, 29 Aug 2019 09:59:48 +0000
Message-ID: <6801a83ed6d54d95b87a41c57ef6e6b0@AcuMS.aculab.com>
References: <20190812023214.107817-1-natechancellor@gmail.com>
 <878srdv206.fsf@mpe.ellerman.id.au>
 <20190828175322.GA121833@archlinux-threadripper>
 <CAKwvOdmXbYrR6n-cxKt3XxkE4Lmj0sSoZBUtHVb0V2LTUFHmug@mail.gmail.com>
 <20190828184529.GC127646@archlinux-threadripper>
In-Reply-To: <20190828184529.GC127646@archlinux-threadripper>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: AjVBBskIPdq6hYwg5k5JLQ-1
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

From: Nathan Chancellor
> Sent: 28 August 2019 19:45
...
> However, I think that -fno-builtin-* would be appropriate here because
> we are providing our own setjmp implementation, meaning clang should not
> be trying to do anything with the builtin implementation like building a
> declaration for it.

Isn't implementing setjmp impossible unless you tell the compiler that
you function is 'setjmp-like' ?

For instance I think it all goes horribly wrong if the generated code
looks like:
	push local_variable
	// setup arguments to setjmp
	call setjmp
	pop local_variable
	// check return value of setjmp

With a naive compiler and simple ABI setjmp just has to save the
return address, stack pointer and caller saved registers.
With modern compilers and ABI I doubt you can implement setjmp
without some help from the compiler.

It is probably best to avoid setjmp/longjmp completely.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6801a83ed6d54d95b87a41c57ef6e6b0%40AcuMS.aculab.com.
