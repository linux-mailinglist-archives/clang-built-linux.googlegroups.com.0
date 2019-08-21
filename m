Return-Path: <clang-built-linux+bncBCP4T7VD5QMRBKUE6PVAKGQEOJSUMPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A9D970A4
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 06:01:46 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id x12sf589259wrw.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 21:01:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566360106; cv=pass;
        d=google.com; s=arc-20160816;
        b=vY/qodwk3nIY8p3Dup18EchomLHOCCJybwiCCtom68gkssx50+4hT38u04D5zjGHGW
         Xm2ti7VxtTef9FcQOl7XfCp669kGRn27hAnsERQJ3SXDNeJWy20y034xTG1rgxfE3Bat
         aSml6AIOLSZMDpGgsUqykKe3KjWgR5MePkaDoSZhnRg9X/Z5K5YhbEPxKmlbM4P+F+0H
         DTaufHKwGf4nouRGGuMEVFDz1zzaiRhrHlDz3u5nfEGUb3d0GktvsLVr958nyVjHBY9v
         fhWyCBYeAsR7Vg3I4GpXcFZ995v0R5XBcfsGubjl7uLQT3ACwcL7brQ1GaeutAAIySQY
         yjlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=7Cnfa5jy1tWUyIYcdq3vuTK5rtkZNzuP3NXEpJMPVKI=;
        b=bU2v105+CFyAqoBdXJOEIPHuGEM+HmLPB72tDx5JB9ecZKmjhlf33VhPP9S3lJzbZ2
         B/Hm3vANAY/67X7/h6zbJNm6kfgsYB0LcGgnt8L8YCbYWRd9yD3lC6WoSRcSiUaqcf5C
         mTuPwltI2LnnGX+yA2hm42nC7Y/zfucV0CIhdkpmBpmZNXsEBLvnI+aB96QSM+a5q7hn
         345eaXa8ZdJSRywu/ar9LSy1EgyCMFRtpf2zLinYyGdYE9oitt8b92sw1ZMacBwb/zW+
         mrST0xh4ligRl2IqdYs85yXZq0KOzTm3sxPF9BgDIXC52AJcpmRzxZoXrNIcBd1hsZFE
         /xzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of w@1wt.eu designates 62.212.114.60 as permitted sender) smtp.mailfrom=w@1wt.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7Cnfa5jy1tWUyIYcdq3vuTK5rtkZNzuP3NXEpJMPVKI=;
        b=g5A/QrKPVfXr+AIq4srY9orM1ZM/7hu/lhruY7IwOlcYDc7VSDuGx5PQVT7ICjDAsx
         Gzbgkaa78hijbaTpYx+i+fLvaDC96ctql3Uz/cHOONYksyyEispVOr15xq4NvRK47jGJ
         uYtP3EIVLX4LfOgh8S0AvE/KN64Z1BCgDV8s4Kcx8rO1+ZD2rRDEqQDxPgIgiYCnE27I
         yBq1bg70A9ouI+IEQ6MJb2j+9KVYpRCTTFT2KjJSQgTkCkgrHcpNzyv0WL0eYc1PUJ3X
         xIjMXtjMI4kg/wjkmJjokeJ+7wtWEFCoKPHUGKpyYE8Ehl/4Ke3OLCimL42Q3P5oQQyR
         SYvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7Cnfa5jy1tWUyIYcdq3vuTK5rtkZNzuP3NXEpJMPVKI=;
        b=GCq27gfA8Ly27nijoAxBOZXS0b9Z0uc1JoatOcyMqUvYOxuDfwzKniBef/gpftQIfn
         KuqxkgPQOsSdUDUl9zYhGJulYy4JPYhWVvsh/vMYmNbHryjMXotoCaXMNUGPekf27KuW
         f2YdwC0xM9JVh1DnRD+ym6ND5pAMf61XMULFGK8xj5OjxA6dWL63M0mpwWqiVbFdk3+F
         8jalXjsfInFv2ZwK28aPGmVU267tkN2G5sQQ1PSeoQp/NxzfqBQrtoo0pHeXHxGOupfR
         CpyErH3l915TsBM3N74EBkuSTNbJXdqS3tpOlMNEKm7cDusKNqGuBNyndC/2BxhA2TRA
         QaPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW1NQewtuljF6CTnihYQGLMaHf5DvL0q0cT20v1+jTCmriuU/3A
	ewMxVymn8Yr7vCrWvSUFI/k=
X-Google-Smtp-Source: APXvYqzyxD8G8sQZJjGAXblytWGUkXT9cBh6NJK/pObQZd7dUZQKGF2RTH8FZ1CGE4BPIPbUdl+KSA==
X-Received: by 2002:a5d:4d4c:: with SMTP id a12mr39154407wru.343.1566360106679;
        Tue, 20 Aug 2019 21:01:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb44:: with SMTP id u4ls250320wrn.2.gmail; Tue, 20 Aug
 2019 21:01:46 -0700 (PDT)
X-Received: by 2002:adf:ef07:: with SMTP id e7mr39357534wro.242.1566360106179;
        Tue, 20 Aug 2019 21:01:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566360106; cv=none;
        d=google.com; s=arc-20160816;
        b=ob1QO+UMN+gaunCpS6OasXN69WSDUhxRMUzhftIn37tHSj3+NN/rAioK0CjN1+4Njt
         zAdZHfQ2M1KpsMFNnDkmCyIy9RVh/hd1+IOGR43Cpw1ZGRpHVNFjJOetn8PtmJ0wwXSc
         LGZcYTJUs1FnwivHLLvhuW6DGK3dWv6WWZexUBJ04Vyi0tkPcWj/e/U/RzLBBgXHnPyY
         lnP3SyE57g8meHYpozz18EzxHHtTjidl/y28bjlXbJohwHvpYk0i7lwoz4h1ox/xLf4E
         FSjw+iGtJe6qYbAjmboYlFpb1r0SbKb2Vd9eG5IZXUUSJfanYyH2QwbChaVQPfBvaMCn
         RXew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=NKleqq8qvOrW34KVc9vxFnnT0455tVTS34oSUWJm0eo=;
        b=bc6hgNE6lm4Q3y582rUvapGpetHAJyyzX60mhptyTKQaYA2VpD52JoQkuNriYBBDAc
         C+dkxxRC9/C1N4xGRpakT2l/QCebezPdlGK8zxgE4nZ+azvAgT63uH285p1NfCwX3pfd
         Y7JFbXMiR54TX8slvgwN2/fmotqLF1/LJo5BwK9ztdgcq3G8tMoM2WstztTXeg9796nI
         iols6BxrEP5P+OcoXmn1vTjN4axkxbnSElXjAmCqpfgMAuE5w96WHrh5SKLPPxfPdRFo
         41MxoPhVZNoN272nUJgfzaBmtcRZJWv3DAo2Awiul9SEbFXMvNMNY647KZdDxeE3ZZ4+
         AM/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of w@1wt.eu designates 62.212.114.60 as permitted sender) smtp.mailfrom=w@1wt.eu
Received: from 1wt.eu (wtarreau.pck.nerim.net. [62.212.114.60])
        by gmr-mx.google.com with ESMTP id r13si1083834wrn.3.2019.08.20.21.01.45
        for <clang-built-linux@googlegroups.com>;
        Tue, 20 Aug 2019 21:01:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of w@1wt.eu designates 62.212.114.60 as permitted sender) client-ip=62.212.114.60;
Received: (from willy@localhost)
	by pcw.home.local (8.15.2/8.15.2/Submit) id x7L41OHU009738;
	Wed, 21 Aug 2019 06:01:24 +0200
Date: Wed, 21 Aug 2019 06:01:24 +0200
From: Willy Tarreau <w@1wt.eu>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Joe Perches <joe@perches.com>, Stephen Rothwell <sfr@canb.auug.org.au>,
        Julia Lawall <julia.lawall@lip6.fr>,
        "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux@googlegroups.com,
        Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: rfc: treewide scripted patch mechanism? (was: Re: [PATCH]
 Makefile: Convert -Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough
 for clang)QUILT
Message-ID: <20190821040124.GA9608@1wt.eu>
References: <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
 <4398924f28a58fca296d101dae11e7accce80656.camel@perches.com>
 <ad42da450ccafcb571cca9289dcf52840dbb53d3.camel@perches.com>
 <20190820092451.791c85e5@canb.auug.org.au>
 <14723fccc2c3362cc045df17fc8554f37c8a8529.camel@perches.com>
 <CAHk-=wgqQKoAnhmhGE-2PBFt7oQs9LLAATKbYa573UO=DPBE0Q@mail.gmail.com>
 <edd8efd53fadd07992f804cc595c6ae5fdb60e73.camel@perches.com>
 <CAHk-=wg8vLmmwTGhXM51NpSWJW8RFEAKoXxG0Hu_Q9Uwbjj8kw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wg8vLmmwTGhXM51NpSWJW8RFEAKoXxG0Hu_Q9Uwbjj8kw@mail.gmail.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
X-Original-Sender: w@1wt.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of w@1wt.eu designates 62.212.114.60 as permitted sender) smtp.mailfrom=w@1wt.eu
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

On Tue, Aug 20, 2019 at 05:43:27PM -0700, Linus Torvalds wrote:
> I would seriously suggest doing something like
> 
>    copy_string( dst, dstsize, src, srcsize, FLAGS );
> 
> where FLAGS migth be "pad" or whatever. Make it return the size of the
> resulting string, because while it can be convenient to pass 'dst" on,
> it's not useful.

I actually like this a lot. FLAGS could also indicate whether or not a
zero before srcsize ends the copy or not, allowing to copy substrings
of known length or known valid strings of unknown length by passing ~0
in srcsize. And it could also indicate whether the returned value should
indicate how much was copied or how much would have been needed for the
copy to work (so that testing (result <= dstsize) indicates truncation).

> And then maybe just add the helper macro that turns an array into a
> "pointer, size" combination, rather than yet another letter jumble.

I did exactly this in some of my projects including haproxy, I called
the lib "ist" for "indirect string", and found it extremely convenient
to use because many functions now return an ist or take an ist as an
argument. Passing a structure of only two elements results in passing
only two registers, and that's the same for the return value. Moreover,
the compiler is smart enough to eliminate a *lot* of manipulations, and
to replace pointer dereferences with direct register manipulations. I
do have a lot of ist("foo") spread everywhere in the code, which makes
a struct ist from the string and its length, and when you look at the
code, the compiler used immediate values for both the string and its
length. It's also extremely convenient for string comparisons and
lookups because you start by checking the length and can eliminate
lookups and dereferences, making keyword parsers very efficient. It
also allows us to have an istcat() function doing like strncat() but
with the output size always known so that there's no risk of appending
past the end when the starting point doesn't match the beginning of a
string.

I must confess that I became quite addict to using this because it's
so much convenient not to have to care about string length nor zero
termination anymore, without the overhead of calling strlen() on
resulting values!

For illustration of the simplicity the code is here :
    http://git.haproxy.org/?p=haproxy.git;a=blob_plain;f=include/common/ist.h

And here are a few examples of usage:
  - declaration in arrays:
    http://git.haproxy.org/?p=haproxy.git;a=blob;f=contrib/prometheus-exporter/service-prometheus.c;h=9b9ef2ea8e2e8ee0cc63364500d39fc08009fb8d;hb=HEAD#l644
  - appending to a string:
    http://git.haproxy.org/?p=haproxy.git;a=blob;f=contrib/prometheus-exporter/service-prometheus.c;h=9b9ef2ea8e2e8ee0cc63364500d39fc08009fb8d;hb=HEAD#l1112
  - passing as function arguments:
    http://git.haproxy.org/?p=haproxy.git;a=blob;f=src/http_ana.c;h=b2069e3ead59e7bcde45ac76a1c6b0b6b5fb3882;hb=HEAD#l2468
    http://git.haproxy.org/?p=haproxy.git;a=blob;f=src/http_ana.c;h=b2069e3ead59e7bcde45ac76a1c6b0b6b5fb3882;hb=HEAD#l2602
  - checking for known values:
    http://git.haproxy.org/?p=haproxy.git;a=blob;f=src/h2.c;h=c41da8e5ee116e75e4719709527511c299a3657c;hb=HEAD#l295

I'm personally totally convinced by this approach and am slowly improving
this interface to progressively use it everywhere, and quite frankly I
can only strongly recommend going into the same direction for ease of
use, safety, and efficiency.

Willy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190821040124.GA9608%401wt.eu.
