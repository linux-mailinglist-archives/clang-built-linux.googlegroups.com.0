Return-Path: <clang-built-linux+bncBAABBZVHYXUQKGQED7SMLUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9356E08D
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 07:23:51 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id k125sf25312975qkc.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 22:23:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563513830; cv=pass;
        d=google.com; s=arc-20160816;
        b=U3/xQ4YYN23HqYqQHONK4owcfXt/eyXK3UveWovoPC+wrhDtNnMFOPllJiQDC4ctzm
         AYDc5hD6e8VxtM4m2KBenOG31ZxXGezGDHiL6xZhOivlpDA0e2Sr0oo7vP7ed9yBu8/U
         BN98YKk5mzOFrGrGiGMP27g4j7kt2qo2Xb0ZHGJvbrL3T6/TBTk386B5A1QrCKMr9P/5
         YJ8JjX66UL4/xcvMYm7fz75vhR1ExnCLGV8NwszbleM3d13N223Cy7nLCkAp2ksdYpYC
         jeZ7VcOTFAnzJ/Twk0su6zcKJVwF9+3kPx6ifxwCuiIIBvbqGKOMPLTmudQh31uRTL1U
         vFpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:to:subject:sender:dkim-signature;
        bh=w0v5xR9X5ptQ1fHuiVPm1pmn0/dcxgIDiZHfX+UHXgA=;
        b=kjEj4HGkl5W9S+uUo4rF1gwuClCCTRSXDqOMIQurpfNCt69TtKwUVGerkjuGJCn4Af
         Zk1TnsAl7EqpZKa3oTmfQvJPOWJ3zoDzzNRoPR2XSxjzb644pM71FDDWIOdv5wSZhQPo
         ylYFK5ClMbTM6JlD71LFJYOALB7R4X9+3M09to+vcw8c/LtZxTNpcX6yb9pLsDkbirlT
         +B/pw8ihnhKZvNa5D1DnSbgr/R7+YjLucdV5sP4C8bXWYJ1weD6DFxNmJSMBdq1ZBjvD
         a7gjdpUEMJ8MZJ6zQqTTXah3UXOCBB/lGygYaJ6dRklLYE5OQJ1v8uqsevsQZ5kKiXFi
         fyVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of lkml@metux.net) smtp.mailfrom=lkml@metux.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w0v5xR9X5ptQ1fHuiVPm1pmn0/dcxgIDiZHfX+UHXgA=;
        b=efXM6Fv0JuiMWXX1lHnksB4q4UkRgXIT/4GnWloXj/gt6HZ0CRwe3xqlsX8UoyCbko
         s6nAMChGL9JHfTcK4c/DFiVTVx0SqKsdoY6sw92CQSDzQDiuWnNx0GahT4G5MkZWX38w
         UtDjgH/wWgA34d0E8vy73N4Uv3XmXkLllFxzKUb5SXlTKkDFV6bGoZAh6chEra3OohJV
         U8pIac6bnXKNAk00zgOhjDCjqDzugrFLRyVIQxINQvL9teZQ2j8DPmIfW3bRzbinIYIX
         musKrTLCTRO4bksy48aA8bOy3TzJ6q0RfjkbCMRUj3qoAIU02iQMauUcnwGWgjncEvVV
         D2rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w0v5xR9X5ptQ1fHuiVPm1pmn0/dcxgIDiZHfX+UHXgA=;
        b=jkM4XXJBlQiR+5wg7ROWYKqCyRU547+NDBxEAoqoy73NsI4yuupMY/i54OMrHkeHQ5
         XQS1YDTyoY4fZ9cavZXNMlVAmcyk/YSPbjzwxXkYebF5oCAh45f66QX2sbb1pTEO7FYH
         8/GnMDYyOwcRyx0xLPcx86fBK+gYfbKvhEYypdtVs0pT+gjtANtMjK4rn1gPaDJsEo7C
         ieq+zbrXVh6WiVbYWLIlpWY9726r4towUMYmIR6ZO9kIOmXaDh/EgiPaGlvp1esdxw2j
         An4ykMTZ8xs0OjUhxyo8kNbGBuxLiTheEN3ztBms7ddDKvQm/K11TNXvKzKAOpCTN8rB
         MHpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV4b2ll9IxAOnpBkv0aG7fh3YszB17ZzUFLuWYSJOCrxmHHWqr8
	B0PsbcOLprj979oEEodZNjE=
X-Google-Smtp-Source: APXvYqyj/OvOs79Lb7xMyN3GZXXIOEPvEjdlTMmmbr44zmkz4sDhFYBJmnMzrwso7E6ttPDelgUN6g==
X-Received: by 2002:a37:4bd3:: with SMTP id y202mr34168880qka.253.1563513830551;
        Thu, 18 Jul 2019 22:23:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:294d:: with SMTP id z13ls7719729qtz.11.gmail; Thu, 18
 Jul 2019 22:23:50 -0700 (PDT)
X-Received: by 2002:ac8:27d4:: with SMTP id x20mr34507712qtx.138.1563513830386;
        Thu, 18 Jul 2019 22:23:50 -0700 (PDT)
Received: by 2002:a37:4bce:0:0:0:0:0 with SMTP id y197msqka;
        Wed, 17 Jul 2019 04:08:25 -0700 (PDT)
X-Received: by 2002:a7b:c4c1:: with SMTP id g1mr37299210wmk.14.1563361705131;
        Wed, 17 Jul 2019 04:08:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563361705; cv=none;
        d=google.com; s=arc-20160816;
        b=F+vFqG10zxH55c+WW0KRWfmL0/drsn3zM/Pv7AJIncYqwP/xAWM6kykc4tq7HA8BGI
         vmjS4rt9I7aUE8uJswY4v/l35nHdb0q9xWoVJ0VPSXWIUO/duaqF3k39kxSqQomR1kKT
         Spdz3bfviaw3MLH/sg3HtccM5vKOb9em6zVV1fW8RopQxMMTIl4um/ShzYdA9yKx5jrA
         PPVtgU+omEA9BJh1RC2+FLrd7uW4KEYDGIFapM5WsMzEn7CEbtqieDy82zFoFnXt7HYt
         kV96fxXfKrc2tRjCRmnYVP5N6IFik0VGRdy/PcToJ4kCFDYsjmGPI0w51K2R5xTGgpcz
         Lf3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:to:subject;
        bh=OTCWnd1UB1KYNtHRdWiT4tx9CPYKGXCQxE73vPSB1qM=;
        b=Keyb7nkrKHlizPWcCsMRbtzoSUUP0H006ETR/2M4f8dMFr4wwnG4nRaxhbSozyizTu
         2B5XB5VotHUBTlOeqAnPLY3r4QBJlfPsh9teRROUVICBRH3t4bydlddDgdHC1AEYtHHi
         298gon31E6J7vALc1XNdPCsmpLwYmetVGHP9MZFtgoELXhCSOE5aGIAsyVWxR4kc0umU
         C1ScpHNaLUhkQ22wsENuQ/fcCs1FQWJEhW42KwCK5mtWRhz2/fHdQu1EBwvGeOWM/4yI
         JwRsDhXC0I7zbWgfCO2JTqeupQ2s9rFoYLma6PhOFqeM2bs4xDIkySBWQDxt3e016xxD
         i/vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of lkml@metux.net) smtp.mailfrom=lkml@metux.net
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id s13si1588099wra.1.2019.07.17.04.08.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jul 2019 04:08:25 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of lkml@metux.net) client-ip=212.227.17.13;
Received: from [192.168.1.110] ([77.7.13.186]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MI4cT-1hhRC50gpr-00FFCN; Wed, 17 Jul 2019 13:08:22 +0200
Subject: Re: [PATCH 4/4] debian: add generic rule file
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 "Enrico Weigelt, metux IT consult" <info@metux.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, Robo Bot <apw@canonical.com>,
 Joe Perches <joe@perches.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 linux-riscv@lists.infradead.org,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <1562664759-16009-1-git-send-email-info@metux.net>
 <1562664759-16009-4-git-send-email-info@metux.net>
 <CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw@mail.gmail.com>
 <5af9db32-2cf5-10ba-261c-e08852d0814f@metux.net>
 <20190715191245.GD3068@mit.edu>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Organization: metux IT consult
Message-ID: <9dace139-ab0d-f1bd-436e-d95a4ff4a7f7@metux.net>
Date: Wed, 17 Jul 2019 13:08:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190715191245.GD3068@mit.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Provags-ID: V03:K1:ls2KdKhlB/ERv7ImE0pEbdHSeZNUh2CLrbNdokQc4+7HDaSPFnH
 NWof8UK9fZ70y9OOR7NqmnH49OthwYD4CJvEByZVBLedq6jKVFzDd8ZilQP6fvhLFS0CQgW
 eOIitHgU3txoT5k3bK0BeMXSos96Hb+c25Z9OnrRJyeuMbvCiekhpq0yCMvt1P6fUDHFJzD
 9b1bZJa5geDEZScPMT+8g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:l4VD3LhjbFs=:iBaZCq5t7ZNDjcoa1g/GHQ
 hPi2gmZPgmxeWOzgGFmciK5msfjaPYzPmXvGMIEWDgP5baBPaJp90fjM3CMYAFN4GMFrNjZ4D
 TXfZTKjxdLFSSY+ydeTHfW9Qbu4DhZr3Exrl6XjSn8RHFhx6CaW+EIc/+vjY/zXjMXNhJIoVZ
 jD9rCK7W19mZWbpfi2I8fowg0d6VGS8qbJRyjGI9jLTocymBTg+MaOYQSGnzZY/RfeRikDK+S
 EfM5Ti6J1MCMAKqaJMRWFY8ipIlxz1JXmrfhYN3SENTo1B6xG1+kBZ8Gr3tdjcpe7EGpALAP1
 Xj2YpneaVZKUkvw3PXKQAnBTGSYKvkQeG0DFvdiPexSnwOpnQuRSiurgX61daSGvbnRm0vP/S
 cVmNqlZpeUl+NdxnGpLyA37PAqX+SH3/Eejb6Xsme6DO8QUT72cnNXZt1stWcZk0nktWCTrMT
 8bMiF8rTH/a2Hfcyf1/8r3ldzkB0s4gb7uE137ENM2PdiQKrfOPoJiT3ya2uZkVI2wx1yjeao
 8lfI9xwe3MrusEOpwWz1E5ILm0B6SfEAQa7GVw8L0F80w7EqoTbRRv2UPezCVks49LIhyzOVL
 JCZCHWEL4FjceHHkvwhxvSKR4Twvzvg8gBoPW2HlpUL+ekEQSRmHUQbDoovscttYY73YL+xko
 m8d1CZ8dmbK7I83h/31GRJHJGkcNAzos1/tGfGJuseqUut94PR82A7/3EpOuR2BDKQ0P+44rS
 7c94uKgPuUWiIIL4mLwUmE6W+ZxR2McYZ2unEICCdVksL9oExYRrrD4fwGU=
X-Original-Sender: lkml@metux.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.13 is neither permitted nor denied by best guess
 record for domain of lkml@metux.net) smtp.mailfrom=lkml@metux.net
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On 15.07.19 21:12, Theodore Y. Ts'o wrote:

Hi,

> It's possible I'm not remembering some of the feedback, but the only> thing I recall was the comment I made that I'd really like this use>
case:> > make O=/build/linux-build bindeb-pkg
ah, I yet wanted to test that - thx for reminding me. > to not break.
And as far as I can tell from the proposed patch series> (I haven't had
a chance to experimentally verify it yet), I don't> think it should
break anything --- I'm assuming that we will still> have a way of
creating the debian/rules file in> /build/linux-build/debian/rules when
doing a O= build, and that the> intdeb-pkg rule remains the same.  At
least, it appears to be the case> from my doing a quick look at the patches.
Yes (unless i've missed something), everything should remain as it is.
One thing that could happen (not checked yet) is that running good old
'make bindeb-pkg' without O=... could overwrite the now already existing
debian/rules file.

If that's really a problem, we could tweak the machinery to use a
different name for the rule file (for now, one the preceeding patch
just allows giving a different name for just *generating* the rules
file). Another idea could be rewriting the whole process so that no
rules file needs to be generated at all.

> Yeah, the official Debian debian/rules is optimized for doing a
> distribution release, and in addition to the issues Enrico has raised,
> last time I tried it, it was S-L-O-W since it was building a fully
> generic kernel.  It's not at all useable for general developer use.

I'm a bit reluctant calling this 'optimized' :p

The strangest aspect (IMHO) is they're building several different trees
(w/ different huge patch queues) from only one source package. Instead
I'd rather:
* try to get as much as possible in one tree
* have separate source packages if there really need to be separate
  patche queues (IMHO, these things, like RT stuff, just need proper
  Kconfig's)
* do all the patching in git and skip the text-based patches entirely

Haven't found out, why they're actually doing it that complicated way
(didn't get any useful answers from debian kernel folks)

> It sounds like what Enrico is trying to do is to enable running
> "dpkg-buildpackage -us -uc -b" from the the top-level kernel package
> as being easier than running "make bindeb-pkg".  I suspect this might
> be because his goal is to integrate individual kernel builds from
> using Debian's hermetic build / chroot systems (e.g., sbuild, pbuilder)?

Yes, I'm building all deb's by the same process / infrastructure.
In my case it's dck-buildpackage (*1) which runs the build in a docker
container (kinda pbuilder w/ docker). It always starts with a fresh
(minimal) base image, calls debian/rules to create debian/control
(if necessary) deploys the dependencies found in the control file
and finally fire's up dpkg-buildpackage - the output is collected
in an ready-to-use apt repo.

The goal of this is having a canonical build process for all deb
packages, not having to care of any special cases anymore. I also
have another tool ontop of that, which runs the whole show for dozens
of packages and targets (*2).

My first approach was trying to use Debian source packages with new
kernel trees, but had to give up after a few days. Then I've found out
that the kernel already has *almost* what I needed. The difference
between almost and fine is this patch queue (minus local .config files)


--mtx

-- 
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9dace139-ab0d-f1bd-436e-d95a4ff4a7f7%40metux.net.
