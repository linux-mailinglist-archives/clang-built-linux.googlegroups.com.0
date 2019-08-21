Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBQNH6LVAKGQEASX66AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 849E596E7E
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 02:43:46 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id k25sf81523lfj.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 17:43:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566348226; cv=pass;
        d=google.com; s=arc-20160816;
        b=bgOnTWbWu/W/DB01SRWtsnNRGnQtee+DLf0Dso+apsVsHvU4qifNLxqkC34iPab/S2
         O4sNADCHY0qwBEbQZ6X+ZFJKId3HHqxcOHQHiRizade7BhgNVC98xeWW86icLgOs0RKg
         WDPVPZTC4XAglHAoADES4+GHPA/A4fsJZRu8TbC0ZXEBkxtMDFi5BrZMI4rrgVN9feeg
         SM1iT901JUeP1u+lICopeyY4R3jyyCKzK9i2DqgRAY++VIXfV4/Y2YK/1tBLJvn8llUI
         WkkkgZq0RmC6Mum9vJlFDgdVlG1HYUG4ue+KdDxAwjzdqyg91z4slK+oNV9oDmKqwFBO
         hbKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=NkzZmouPIamXW1+X4WNJSddUlFZnyYxHFAnaJDRmje8=;
        b=SKQiJqihJew9vCXz1lNZ3ICB77dC0keJ9OXfSPK5H8cRfeP5YYpqvyN6q4Dw0CApu3
         sAkFw6YKw49owJyXCYTtamyNR73teD+If8AegQJudaqMmLv2dk0msQDPVXO4pwUKPa/q
         8kTxQjlvZSzIOBp22tB9xRdOxgN9cE7RZUe6N1RG5mU607Zkg8DFM09og+/ETZo+JS5K
         j+YV/cI7kTXvGrUosVFbc8tIBPGmsuBtL31BTn5f2q/QnZ3EsXm+ZNyHnHGjeLTq47X9
         3DHDwdhmhcLyx6HA8vGYdEddk3hZvxWBw/5L/d7qjDw1+u4j4CKlyQg7Symd4sKaQ9eb
         FKkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=OgGbnwzd;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NkzZmouPIamXW1+X4WNJSddUlFZnyYxHFAnaJDRmje8=;
        b=LDTqNxhpTwwmQAo8cAUbjMk7UpTsRT3A13dDxhmhHZWO05lHd4On5SwrHPKBhYmXPK
         lGlyyFIKQ54VYhwOakrNi/RRE6OWp/05BD2IreOcIBBrTRFvcYeGEU/b0IGNhVzljzsb
         0SlezOJkEasCRWU70hSrfppWuRmR7EZKrVSm6N0gS7+liDEgXfUB4k5oPTiWUqsmwvNs
         Br6OXh4n4HJpnnADbQDeOjIX17NuAE/SNSGbdmkiI6/2iiakwyszZ2LfwqB0ND4HE6cD
         eCD35NwLtbYkojbUoDibxkKbfFEiYcC1zJc9igBAmFsC69sDE0C5knIqOF4qpAM1tK15
         lXJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NkzZmouPIamXW1+X4WNJSddUlFZnyYxHFAnaJDRmje8=;
        b=ATzgKzH0N1rFG4YBCGsIQGjCJZ3BmdcGSvo2KxtlI16FgM/z7KQ2HTUhZKnoudHjH4
         4zsqrNnOm3h/8UmnraGqCFAxtAXbmrmL7RuV/37xpXT8eIsVCJUPnST59Vm/w1ERg1Zj
         RQc8jvIefX2oLUeqCBW11H+5xJ3Tlwwm2W3Mv+jzoi1ekj+wdUxx5Rd+HGrYV/WGIX4y
         jGO90HTL7fnagyJVQoCnAlpawhoqcn+iF00ByiTWMxXy6N0mmvisRkvTNtQJtdqr8vAu
         FmIB6igi45q3vjNPD+AbMcxCl13zYQ5v17T2y8MPungdxLR2AwlJXDc66NlppKzOGh+U
         DCOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVN+ERfaVI0iXJqAlH2GKQ2X87qI2ERhf8xZ1jgvw6a4DXCZvK7
	m+8jCefJOySmu7SYHu0j9RM=
X-Google-Smtp-Source: APXvYqz/nQEuCsbkVnFrQ6ZXZ+axDNrKW4xYsQekQ2+rMxsoJuAR1vfulXgdtZgUbbGi6pneMe4w0g==
X-Received: by 2002:a2e:93c5:: with SMTP id p5mr16719789ljh.79.1566348226074;
        Tue, 20 Aug 2019 17:43:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:8c0c:: with SMTP id o12ls41426lfd.12.gmail; Tue, 20 Aug
 2019 17:43:45 -0700 (PDT)
X-Received: by 2002:ac2:5219:: with SMTP id a25mr17182219lfl.154.1566348225363;
        Tue, 20 Aug 2019 17:43:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566348225; cv=none;
        d=google.com; s=arc-20160816;
        b=ja07oUYFfEJ+rQWwK010GuVf9MaaFx/GXJbsuQqhEPGwrO/C1nGmoqlMlIyyoYoVEf
         n9mzB77BYltROrHJ6EP7MLLMqRgr5EHL7fx490lOVp0C4kPhQOfQee3QTpiaBmuHeycN
         CVGb7QWPpVUL1FwSqutmBDrVYIQrc2WUfkWrPAaOc+TsG8kpP7jWlNXjLoZ0zU7qYsQb
         B3qgTE7Kt/dx99jUoTDQCTXFDFD6+mRHGRiY7sTeIOO8e/aCQIopln0+MZbjtqZ5K+kA
         e/7r6X9fpmaMmpRbx1rxgOQSH7nZL4zURqVKf1SVFCVHLLGVAh1hDBOJ4cypQ3fI+EYa
         ubxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FajnE/5GS1R2x5f3KG7EhW3STXyEPWL5jLH+s75xMBQ=;
        b=02m67MnyW6k6OBxSZ7rMGVCNYRBYZ8ceOW9FeLSnss2p5klLMwTxppM503Aqb+wWcE
         eYEd2VxQ+/38pKNHYMfNW6UU+8IQUukWPdBKF7Pd+UwYrUbwHDnW0cFb/oPsj80kIqCK
         ++bzMvh0pGPA7JCsaF7Hd5/tgbg98XSe1LVY1PmmkbaKkt+uWN7t5oP2iAA6C/4VDyCH
         AixaspH0uAXInEjbTCaXQdGZBu0JE01rrv3vsUtQo3rdYnNetjBAQ3WmpgvjcKpqyGhW
         FfFj/NhELwgTHSRSxgDRINs/imxYf1aZjsAPoZGLgpdappL5x11N3t9h3UhnOIvlb/Cl
         GVpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=OgGbnwzd;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id b8si902622lfp.3.2019.08.20.17.43.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 17:43:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id 62so434569lfa.8
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 17:43:45 -0700 (PDT)
X-Received: by 2002:ac2:4a6e:: with SMTP id q14mr16175036lfp.80.1566348224694;
        Tue, 20 Aug 2019 17:43:44 -0700 (PDT)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com. [209.85.167.54])
        by smtp.gmail.com with ESMTPSA id r89sm3019163ljr.75.2019.08.20.17.43.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 17:43:44 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id c19so426202lfm.10
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 17:43:43 -0700 (PDT)
X-Received: by 2002:a19:c20b:: with SMTP id l11mr16880592lfc.106.1566348223500;
 Tue, 20 Aug 2019 17:43:43 -0700 (PDT)
MIME-Version: 1.0
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
 <4398924f28a58fca296d101dae11e7accce80656.camel@perches.com>
 <ad42da450ccafcb571cca9289dcf52840dbb53d3.camel@perches.com>
 <20190820092451.791c85e5@canb.auug.org.au> <14723fccc2c3362cc045df17fc8554f37c8a8529.camel@perches.com>
 <CAHk-=wgqQKoAnhmhGE-2PBFt7oQs9LLAATKbYa573UO=DPBE0Q@mail.gmail.com> <edd8efd53fadd07992f804cc595c6ae5fdb60e73.camel@perches.com>
In-Reply-To: <edd8efd53fadd07992f804cc595c6ae5fdb60e73.camel@perches.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 20 Aug 2019 17:43:27 -0700
X-Gmail-Original-Message-ID: <CAHk-=wg8vLmmwTGhXM51NpSWJW8RFEAKoXxG0Hu_Q9Uwbjj8kw@mail.gmail.com>
Message-ID: <CAHk-=wg8vLmmwTGhXM51NpSWJW8RFEAKoXxG0Hu_Q9Uwbjj8kw@mail.gmail.com>
Subject: Re: rfc: treewide scripted patch mechanism? (was: Re: [PATCH]
 Makefile: Convert -Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough for clang)QUILT
To: Joe Perches <joe@perches.com>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Julia Lawall <julia.lawall@lip6.fr>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com, 
	Linux Next Mailing List <linux-next@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=OgGbnwzd;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Tue, Aug 20, 2019 at 5:20 PM Joe Perches <joe@perches.com> wrote:
>
> Umm, btw: have you actually looked at stracpy?

Yes, Joe, I have.

What part of "there are now so many of them that no human being can
keep track of them" didn't you see as a problem?

How many broken string functions are we going to do, adding yet
another one when you notice that the _last_ one wasn't great?

We never seem to remove the broken ones. We just add yet another one,
and have a never-ending jumble of random letters.

I would seriously suggest doing something like

   copy_string( dst, dstsize, src, srcsize, FLAGS );

where FLAGS migth be "pad" or whatever. Make it return the size of the
resulting string, because while it can be convenient to pass 'dst" on,
it's not useful.

And then maybe just add the helper macro that turns an array into a
"pointer, size" combination, rather than yet another letter jumble.

            Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwg8vLmmwTGhXM51NpSWJW8RFEAKoXxG0Hu_Q9Uwbjj8kw%40mail.gmail.com.
