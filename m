Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3V67D7QKGQEUIAZ4RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDFB2F3C2F
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 23:15:11 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id a1sf5468377ios.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 14:15:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610489711; cv=pass;
        d=google.com; s=arc-20160816;
        b=VYMjsK9qV+OpQFIB4wWMDyVXy8d6QOF5ljJgA0+sS5w9o/jcrE0Wmn7HiqDAM+f/Jx
         a7HqNbAIFk/GoDywXa/ZRSSFkuUcN0Bm7gee9t4k4rOweguBmNEAf3cqHhRbjmbRMfQM
         WZ0hQLRhGfEfQ55ZtSVOtZ+4hdouSqK3kQwylR1XkSqZPwFpKMat7S1c6r23JD5bZIm/
         gzAJ/QzU63LF7MUHO1oMD5ILn/oje7DeOfJykJXGz9E/JRGYPjVhQ1iDxJeZOxEC7WM0
         JCZuLjrMo9r9uDhtSyOAY+pdD+VpCXVTmGw7VcUV5av5CMaTeJR0VW6dDvQkG6VImBS1
         jW0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sq+NjWtNP8o6kgityhOGH9XBcDLljC1tMvO+3l2irkI=;
        b=EkE9ThnfBOedibAOcdUCcqnYKoEsoFmhvPfbikiXr2pZnGAhPoSSdwsNGHds1fiojp
         Dlo6JizEsX1+x49lXF6Iu6Gk2R0MlZ3jTktzBYf6nkiVOUsoVuKhhleUsZf7iqH+G8hs
         PFc8iMWTzTPoLOzxWHhBsUF4ktX/XLdkd0vHzD9hpzOHcUzG3YSM0D8t9zRBJav+oKn9
         9ojGgpZgkBcqXfHAQWWPYFchuaxjlxu87/MmUOTefLOe5xwQTxqch8J960Tl9ywFqLVG
         RO1m9y8+w9VTWLCXoW91DQa/slADD6ELTFBpahCB58sLITZbuJ2H9wtjr4Yau/fGL4ct
         JTlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EJfTsZQK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sq+NjWtNP8o6kgityhOGH9XBcDLljC1tMvO+3l2irkI=;
        b=PgA0OxO6d+8rCdcS0pA/IgmWccU8SAp8gGrOKIrhOj1x1y+Mvwrf1XHncguGTVPB4j
         VkLRR7edZNeMDiI9PbE/AL0RFqiObdaQKvJkwXN+6UfVrhG06A9v373gTPuo2UZ3iXI0
         4tIzLhvrFqqjpEc4Hhlu4w8EwSdeKSLf7VMuct1TbiIZSKusnd7oI1xCZqxBOzCy5GCu
         bw6Sdkc1r19tEcYB8GZ2rku00bDoT9QzQRPYc/yx+wH110y4cTlHne6YBgh6T4YXXTOY
         DNi/oDjR4RFW65bVh3gFubZ1AOQO58FB4Qe4b2qoMmbXlIpCXoO5/W//gRSP3n4x5zyA
         F8fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sq+NjWtNP8o6kgityhOGH9XBcDLljC1tMvO+3l2irkI=;
        b=sr6N7NVWJBmQacECcEouDXwpL10kQtR8pohXBfiB5SBfR3YYPRuLp8r/bRy20hdxIB
         MUr1bLl0I4MyAKyMqq2uH+ge/hSqm4Vlq5KAj9c+n4sfcBqXc2HS0MEhreikwedLu6JJ
         Mx42hudOBBTeSHJ48HgIZJdRMjW10trnCdvRDfzOXVjtCt3tnGWHm6T0nlI0wvxF2x9H
         7qegNI9/a9lxMnjtyFKr5Qh55Lmvh1nTicMI262vXeTQq8F64/MO6ZIAY1SFXzlxjEta
         pXHjFD/+HgwPBQGrhszF610uCnjV/FlRoThIdLK5DuiPkkwVu4sYktOutDJKg9jqwQek
         6a2A==
X-Gm-Message-State: AOAM5338PEZ9/UgPiny3+6EhvHWcEn9w9OIa/DbKWlBV5K3vPdTZbUcN
	vj8sM70XmcUCC1Ml/8tZO0c=
X-Google-Smtp-Source: ABdhPJyJxLySFwIsw1wlUciQEv1RPJyxcWtuHCgEhaw4uL6+4izvzYvQLoR9Z8RRwKS2mfYPrZa47g==
X-Received: by 2002:a05:6602:214d:: with SMTP id y13mr979643ioy.153.1610489710899;
        Tue, 12 Jan 2021 14:15:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:13c5:: with SMTP id i5ls10941jaj.1.gmail; Tue, 12
 Jan 2021 14:15:10 -0800 (PST)
X-Received: by 2002:a02:4b42:: with SMTP id q63mr1461379jaa.77.1610489710479;
        Tue, 12 Jan 2021 14:15:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610489710; cv=none;
        d=google.com; s=arc-20160816;
        b=Wa6ajshv34TOL+n0R0GEJksPI+WHb5YuykoM9EPEpulrduBBZGPXaxYdWs5+5gyNtU
         oryR0gzmLNa0TODooFTykWQhtzbkaonkx+yCKoqyzuL0cEn3m85M+i0/rf9+dLpcoaoU
         Wdujb3ToG9RRaDaDO/5hYuo667Y8m6G4qcTDdQCvhn7e+i7iviJwxPO51KsIlJlaMXXy
         qQHe+Aeap4SjeKny2sG0Nvmsw+sRsuOXhOZOpPOTHipvpBrhvM5YMr8Lwck7CwfXI8NQ
         u0LnjOLpQ/Nf9QkTaQATU+sBWclPV7aHe9gMude7fKtp+plM/i2jI9fWtDemuC8paEzB
         l9Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FhnukL1HPTPi6q2zbr4puLoBhBCe2P2AwxIRemVRymc=;
        b=XH49nMDhNHpsYYlqYamA6NfflmmIsHY0A9rgpUtFr7qCK7QaE/dn2+1iQ2NG/Mu4bN
         LA3UNGF/+x4OoTa0qhId0+8CtvIMaTpA1qwY/EKV5xd1nJk+Wlff3lVOLzESYiZaZd75
         5OmZMrDFbev6EOHbKUo4riKm+K8bF5ovdzuYs4XXwzq7nxU2ROLtOpnZJkzJSV46V7cW
         +h/CfDLVbUxTk3X8mbsrLEENNEmmrPNuVqb8tCOxY6vwg6xRyrEUfiT++5D41Mc5AQip
         ZbKbKLJ28cFQ7pJQbM9YR2ZzDiw+Zp9qJNZnRMIo8mZHmBCJwDiIrkKoggtBGkIjgCGm
         UokA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EJfTsZQK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id p16si12271iln.2.2021.01.12.14.15.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 14:15:10 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Received: by mail-pl1-x633.google.com with SMTP id x12so2192171plr.10
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 14:15:10 -0800 (PST)
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id
 97-20020a170902026ab02900daaf4777c7mr1257503plc.10.1610489709764; Tue, 12 Jan
 2021 14:15:09 -0800 (PST)
MIME-Version: 1.0
References: <20210109171058.497636-1-alobakin@pm.me> <CAKwvOdmV2tj4Uyz1iDkqCj+snWPpnnAmxJyN+puL33EpMRPzUw@mail.gmail.com>
 <20210109191457.786517-1-alobakin@pm.me> <CAKwvOdnOXXaz+S1agu5kCQLm+qEkXE2Hpd2_V8yPsbUTQH7JZw@mail.gmail.com>
 <20210111204936.17905-1-alobakin@pm.me>
In-Reply-To: <20210111204936.17905-1-alobakin@pm.me>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 12 Jan 2021 14:14:58 -0800
Message-ID: <CAKwvOdnvd1NaBQEJ0fPsYiGff4=tUdrcuAR0no9FUMqnOZSu6Q@mail.gmail.com>
Subject: Re: [BUG mips llvm] MIPS: malformed R_MIPS_{HI16,LO16} with LLVM
To: Alexander Lobakin <alobakin@pm.me>
Cc: Fangrui Song <maskray@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-mips@vger.kernel.org, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Ralf Baechle <ralf@linux-mips.org>, 
	LKML <linux-kernel@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>
Content-Type: multipart/mixed; boundary="0000000000001150b305b8bb5be1"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EJfTsZQK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

--0000000000001150b305b8bb5be1
Content-Type: text/plain; charset="UTF-8"

On Mon, Jan 11, 2021 at 12:50 PM Alexander Lobakin <alobakin@pm.me> wrote:
>
> > The disassembly for me produces:
> >     399c: 3c 03 00 00   lui     $3, 0 <phy_device_free>
> >                         0000399c:  R_MIPS_HI16  .text
> > ...
> >     39a8: 24 63 3a 5c   addiu   $3, $3, 14940 <phy_probe>
> >                         000039a8:  R_MIPS_LO16  .text
>
> So, in your case the values of the instructions that relocs refer are:
>
> 0x3c030000 R_MIPS_HI16
> 0x24633a5c R_MIPS_LO16
>
> Mine were:
>
> 0x3c010000
> 0x24339444
>
> Your second one doesn't have bit 15 set, so I think this pair won't
> break the code.
> Try to hunt for R_MIPS_LO16 that have this bit set, i.e. they have
> '8', '9', 'a', 'b', 'c', 'd' or 'e' as their [15:12].

I don't think any of my R_MIPS_LO16 in that file have that bit set.
See attached.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnvd1NaBQEJ0fPsYiGff4%3DtUdrcuAR0no9FUMqnOZSu6Q%40mail.gmail.com.

--0000000000001150b305b8bb5be1
Content-Type: text/plain; charset="US-ASCII"; name="drivers_net_phy_phy_device.objdump.txt"
Content-Disposition: attachment; 
	filename="drivers_net_phy_phy_device.objdump.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_kjujyfyf0>
X-Attachment-Id: f_kjujyfyf0

CQkJMDAwMDAwNGM6ICBSX01JUFNfTE8xNglrbWFsbG9jX2NhY2hlcwoJCQkwMDAwMDA4ODogIFJf
TUlQU19MTzE2CS5kYXRhCgkJCTAwMDAwMDk4OiAgUl9NSVBTX0xPMTYJLmRhdGEKCQkJMDAwMDAx
MGM6ICBSX01JUFNfTE8xNglrbWFsbG9jX2NhY2hlcwoJCQkwMDAwMDEzMDogIFJfTUlQU19MTzE2
CSQuc3RyCgkJCTAwMDAwMTRjOiAgUl9NSVBTX0xPMTYJLmRhdGEKCQkJMDAwMDAxNWM6ICBSX01J
UFNfTE8xNgkuZGF0YQoJCQkwMDAwMDFjNDogIFJfTUlQU19MTzE2CWttYWxsb2NfY2FjaGVzCgkJ
CTAwMDAwMjA0OiAgUl9NSVBTX0xPMTYJLmRhdGEKCQkJMDAwMDAyMTQ6ICBSX01JUFNfTE8xNgku
ZGF0YQoJCQkwMDAwMDI5MDogIFJfTUlQU19MTzE2CS5kYXRhCgkJCTAwMDAwMmEwOiAgUl9NSVBT
X0xPMTYJLmRhdGEKCQkJMDAwMDAyYTQ6ICBSX01JUFNfTE8xNgkuZGF0YQoJCQkwMDAwMDM4NDog
IFJfTUlQU19MTzE2CS5kYXRhCgkJCTAwMDAwMzk0OiAgUl9NSVBTX0xPMTYJLmRhdGEKCQkJMDAw
MDAzOTg6ICBSX01JUFNfTE8xNgkuZGF0YQoJCQkwMDAwMDNhYzogIFJfTUlQU19MTzE2CSQuc3Ry
CgkJCTAwMDAwNDc0OiAgUl9NSVBTX0xPMTYJLmRhdGEKCQkJMDAwMDA0ODQ6ICBSX01JUFNfTE8x
NgkuZGF0YQoJCQkwMDAwMDQ4ODogIFJfTUlQU19MTzE2CS5kYXRhCgkJCTAwMDAwNTVjOiAgUl9N
SVBTX0xPMTYJa21hbGxvY19jYWNoZXMKCQkJMDAwMDA1ODg6ICBSX01JUFNfTE8xNgltZGlvX2J1
c190eXBlCgkJCTAwMDAwNWE0OiAgUl9NSVBTX0xPMTYJLnRleHQKCQkJMDAwMDA1YTg6ICBSX01J
UFNfTE8xNgkudGV4dAoJCQkwMDAwMDVhYzogIFJfTUlQU19MTzE2CS50ZXh0CgkJCTAwMDAwNWI0
OiAgUl9NSVBTX0xPMTYJLnJvZGF0YQoJCQkwMDAwMDYzODogIFJfTUlQU19MTzE2CSQuc3RyLjEK
CQkJMDAwMDA2NWM6ICBSX01JUFNfTE8xNgkkLnN0ci4yCgkJCTAwMDAwNjY0OiAgUl9NSVBTX0xP
MTYJLnNic3MKCQkJMDAwMDA2ODQ6ICBSX01JUFNfTE8xNglkZWxheWVkX3dvcmtfdGltZXJfZm4K
CQkJMDAwMDA2ODg6ICBSX01JUFNfTE8xNglwaHlfc3RhdGVfbWFjaGluZQoJCQkwMDAwMDk5ODog
IFJfTUlQU19MTzE2CSQuc3RyLjYyCgkJCTAwMDAwOWY4OiAgUl9NSVBTX0xPMTYJJC5zdHIuNjMK
CQkJMDAwMDBhNTA6ICBSX01JUFNfTE8xNglfX3N0YWNrX2Noa19ndWFyZAoJCQkwMDAwMGQ4NDog
IFJfTUlQU19MTzE2CV9fc3RhY2tfY2hrX2d1YXJkCgkJCTAwMDAwZTNjOiAgUl9NSVBTX0xPMTYJ
JC5zdHIuMwoJCQkwMDAwMGU0YzogIFJfTUlQU19MTzE2CSQuc3RyLjQKCQkJMDAwMDBlYTQ6ICBS
X01JUFNfTE8xNgkuZGF0YQoJCQkwMDAwMGViNDogIFJfTUlQU19MTzE2CS5kYXRhCgkJCTAwMDAw
ZWI4OiAgUl9NSVBTX0xPMTYJLmRhdGEKCQkJMDAwMDBlZDA6ICBSX01JUFNfTE8xNgkkLnN0cgoJ
CQkwMDAwMTE2NDogIFJfTUlQU19MTzE2CS50ZXh0CgkJCTAwMDAxMWFjOiAgUl9NSVBTX0xPMTYJ
JC5zdHIuMTkKCQkJMDAwMDExYzg6ICBSX01JUFNfTE8xNgkkLnN0ci4xOAoJCQkwMDAwMTFmNDog
IFJfTUlQU19MTzE2CWdlbnBoeV9jNDVfZHJpdmVyCgkJCTAwMDAxMWZjOiAgUl9NSVBTX0xPMTYJ
LmRhdGEKCQkJMDAwMDEyODA6ICBSX01JUFNfTE8xNgkuZGF0YQoJCQkwMDAwMTNlNDogIFJfTUlQ
U19MTzE2CSQuc3RyLjE1CgkJCTAwMDAxNDA0OiAgUl9NSVBTX0xPMTYJJC5zdHIuMTYKCQkJMDAw
MDE0NDQ6ICBSX01JUFNfTE8xNgkkLnN0ci4xNAoJCQkwMDAwMTQ1YzogIFJfTUlQU19MTzE2CSQu
c3RyLjE3CgkJCTAwMDAxNDc4OiAgUl9NSVBTX0xPMTYJJC5zdHIuNjQKCQkJMDAwMDE0YzA6ICBS
X01JUFNfTE8xNgltZGlvX2J1c190eXBlCgkJCTAwMDAxNGM4OiAgUl9NSVBTX0xPMTYJZGV2aWNl
X21hdGNoX25hbWUKCQkJMDAwMDE1Njg6ICBSX01JUFNfTE8xNgkkLnN0ci41CgkJCTAwMDAxNWY0
OiAgUl9NSVBTX0xPMTYJX19zdGFja19jaGtfZ3VhcmQKCQkJMDAwMDE2MjQ6ICBSX01JUFNfTE8x
NgkkLnN0ci4xOAoJCQkwMDAwMTYyYzogIFJfTUlQU19MTzE2CSQuc3RyLjE5CgkJCTAwMDAxNjQ4
OiAgUl9NSVBTX0xPMTYJLmRhdGEKCQkJMDAwMDE2NjA6ICBSX01JUFNfTE8xNgkucm9kYXRhCgkJ
CTAwMDAxNjY4OiAgUl9NSVBTX0xPMTYJLnJvZGF0YQoJCQkwMDAwMTcwYzogIFJfTUlQU19MTzE2
CS5kYXRhCgkJCTAwMDAxNzNjOiAgUl9NSVBTX0xPMTYJZ2VucGh5X2M0NV9kcml2ZXIKCQkJMDAw
MDE3OTQ6ICBSX01JUFNfTE8xNglfX3N0YWNrX2Noa19ndWFyZAoJCQkwMDAwMTkwMDogIFJfTUlQ
U19MTzE2CV9fc3RhY2tfY2hrX2d1YXJkCgkJCTAwMDAxOTMwOiAgUl9NSVBTX0xPMTYJJC5zdHIu
NwoJCQkwMDAwMTkzYzogIFJfTUlQU19MTzE2CSQuc3RyLjYKCQkJMDAwMDE5NDQ6ICBSX01JUFNf
TE8xNgkkLnN0ci44CgkJCTAwMDAxOTVjOiAgUl9NSVBTX0xPMTYJJC5zdHIuOQoJCQkwMDAwMTk4
NDogIFJfTUlQU19MTzE2CSQuc3RyLjEwCgkJCTAwMDAxOThjOiAgUl9NSVBTX0xPMTYJJC5zdHIu
MTEKCQkJMDAwMDE5OTg6ICBSX01JUFNfTE8xNgkkLnN0ci4xMgoJCQkwMDAwMTliMDogIFJfTUlQ
U19MTzE2CV9fc3RhY2tfY2hrX2d1YXJkCgkJCTAwMDAxYTEwOiAgUl9NSVBTX0xPMTYJX19zdGFj
a19jaGtfZ3VhcmQKCQkJMDAwMDFhMWM6ICBSX01JUFNfTE8xNgkkLnN0ci4xMAoJCQkwMDAwMWEy
NDogIFJfTUlQU19MTzE2CSQuc3RyLjExCgkJCTAwMDAxYTUwOiAgUl9NSVBTX0xPMTYJJC5zdHIu
NwoJCQkwMDAwMWE1YzogIFJfTUlQU19MTzE2CSQuc3RyLjYKCQkJMDAwMDFhNjQ6ICBSX01JUFNf
TE8xNgkkLnN0ci44CgkJCTAwMDAxYTgwOiAgUl9NSVBTX0xPMTYJJC5zdHIuOQoJCQkwMDAwMWFi
MDogIFJfTUlQU19MTzE2CSQuc3RyLjEyCgkJCTAwMDAxYWUwOiAgUl9NSVBTX0xPMTYJJC5zdHIu
MTMKCQkJMDAwMDFiMGM6ICBSX01JUFNfTE8xNglfX3N0YWNrX2Noa19ndWFyZAoJCQkwMDAwMWI1
YzogIFJfTUlQU19MTzE2CV9fc3RhY2tfY2hrX2d1YXJkCgkJCTAwMDAxYjg4OiAgUl9NSVBTX0xP
MTYJJC5zdHIuNwoJCQkwMDAwMWI5NDogIFJfTUlQU19MTzE2CSQuc3RyLjYKCQkJMDAwMDFiOWM6
ICBSX01JUFNfTE8xNgkkLnN0ci44CgkJCTAwMDAxYmI0OiAgUl9NSVBTX0xPMTYJJC5zdHIuOQoJ
CQkwMDAwMWJjNDogIFJfTUlQU19MTzE2CV9fc3RhY2tfY2hrX2d1YXJkCgkJCTAwMDAxZDYwOiAg
Ul9NSVBTX0xPMTYJbWRpb19idXNfdHlwZQoJCQkwMDAwMWQ2ODogIFJfTUlQU19MTzE2CWRldmlj
ZV9tYXRjaF9uYW1lCgkJCTAwMDAxZGVjOiAgUl9NSVBTX0xPMTYJJC5zdHIuNQoJCQkwMDAwMWUz
NDogIFJfTUlQU19MTzE2CS5kYXRhCgkJCTAwMDAxZTkwOiAgUl9NSVBTX0xPMTYJZ2VucGh5X2M0
NV9kcml2ZXIKCQkJMDAwMDFmNzA6ICBSX01JUFNfTE8xNglrbWFsbG9jX2NhY2hlcwoJCQkwMDAw
MjBkYzogIFJfTUlQU19MTzE2CS50ZXh0CgkJCTAwMDAyMjE4OiAgUl9NSVBTX0xPMTYJX19zdGFj
a19jaGtfZ3VhcmQKCQkJMDAwMDIyMjQ6ICBSX01JUFNfTE8xNgkucm9kYXRhCgkJCTAwMDAyMjQ4
OiAgUl9NSVBTX0xPMTYJLnJvZGF0YQoJCQkwMDAwMjJkMDogIFJfTUlQU19MTzE2CV9fc3RhY2tf
Y2hrX2d1YXJkCgkJCTAwMDAyNjU4OiAgUl9NSVBTX0xPMTYJLnJvZGF0YQoJCQkwMDAwMjg3MDog
IFJfTUlQU19MTzE2CSQuc3RyLjY2CgkJCTAwMDAyYzg4OiAgUl9NSVBTX0xPMTYJJC5zdHIuMjEK
CQkJMDAwMDJjYTA6ICBSX01JUFNfTE8xNgkkLnN0ci4yMAoJCQkwMDAwMzIxODogIFJfTUlQU19M
TzE2CSQuc3RyLjY3CgkJCTAwMDAzMjIwOiAgUl9NSVBTX0xPMTYJJF9fZnVuY19fLnBoeV9wb2xs
X3Jlc2V0CgkJCTAwMDAzM2ZjOiAgUl9NSVBTX0xPMTYJX19zdGFja19jaGtfZ3VhcmQKCQkJMDAw
MDM0NzQ6ICBSX01JUFNfTE8xNglfX3N0YWNrX2Noa19ndWFyZAoJCQkwMDAwMzRjMDogIFJfTUlQ
U19MTzE2CV9fc3RhY2tfY2hrX2d1YXJkCgkJCTAwMDAzNTEwOiAgUl9NSVBTX0xPMTYJX19zdGFj
a19jaGtfZ3VhcmQKCQkJMDAwMDM2Mjg6ICBSX01JUFNfTE8xNglfX3N0YWNrX2Noa19ndWFyZAoJ
CQkwMDAwMzY4ODogIFJfTUlQU19MTzE2CV9fc3RhY2tfY2hrX2d1YXJkCgkJCTAwMDAzNzc4OiAg
Ul9NSVBTX0xPMTYJX19zdGFja19jaGtfZ3VhcmQKCQkJMDAwMDM3OTA6ICBSX01JUFNfTE8xNgkk
LnN0ci4yMgoJCQkwMDAwMzdkMDogIFJfTUlQU19MTzE2CSQuc3RyLjIzCgkJCTAwMDAzOGMwOiAg
Ul9NSVBTX0xPMTYJX19zdGFja19jaGtfZ3VhcmQKCQkJMDAwMDM5MDQ6ICBSX01JUFNfTE8xNgkk
LnN0ci4yNAoJCQkwMDAwMzkyMDogIFJfTUlQU19MTzE2CSQuc3RyLjI1CgkJCTAwMDAzOTM4OiAg
Ul9NSVBTX0xPMTYJX19zdGFja19jaGtfZ3VhcmQKCQkJMDAwMDM5YTQ6ICBSX01JUFNfTE8xNglt
ZGlvX2J1c190eXBlCgkJCTAwMDAzOWE4OiAgUl9NSVBTX0xPMTYJLnRleHQKCQkJMDAwMDM5YWM6
ICBSX01JUFNfTE8xNgkudGV4dAoJCQkwMDAwMzliMDogIFJfTUlQU19MTzE2CS50ZXh0CgkJCTAw
MDAzYTE4OiAgUl9NSVBTX0xPMTYJJC5zdHIuMjgKCQkJMDAwMDNhMzA6ICBSX01JUFNfTE8xNgkk
LnN0ci4yNgoJCQkwMDAwM2E1MDogIFJfTUlQU19MTzE2CSQuc3RyLjI3CgkJCTAwMDAzYTc4OiAg
Ul9NSVBTX0xPMTYJX19zdGFja19jaGtfZ3VhcmQKCQkJMDAwMDNjODQ6ICBSX01JUFNfTE8xNglf
X3N0YWNrX2Noa19ndWFyZAoJCQkwMDAwM2U5YzogIFJfTUlQU19MTzE2CSQuc3RyLjMxCgkJCTAw
MDAzZWU0OiAgUl9NSVBTX0xPMTYJLnJvZGF0YQoJCQkwMDAwM2YwMDogIFJfTUlQU19MTzE2CSQu
c3RyLjMzCgkJCTAwMDAzZjA4OiAgUl9NSVBTX0xPMTYJJC5zdHIuNTkKCQkJMDAwMDNmMTA6ICBS
X01JUFNfTE8xNgkkLnN0ci4zNAoJCQkwMDAwM2YzYzogIFJfTUlQU19MTzE2CSQuc3RyLjYxCgkJ
CTAwMDAzZjc4OiAgUl9NSVBTX0xPMTYJX19zdGFja19jaGtfZ3VhcmQKCQkJMDAwMDQwMTQ6ICBS
X01JUFNfTE8xNgkucm9kYXRhCgkJCTAwMDA0MDM4OiAgUl9NSVBTX0xPMTYJLnJvZGF0YQoJCQkw
MDAwNDBlYzogIFJfTUlQU19MTzE2CV9fc3RhY2tfY2hrX2d1YXJkCgkJCTAwMDA0MmU4OiAgUl9N
SVBTX0xPMTYJJC5zdHIuNjEKCQkJMDAwMDAwMTA6ICBSX01JUFNfTE8xNglnZW5waHlfYzQ1X2Ry
aXZlcgoJCQkwMDAwMDAxYzogIFJfTUlQU19MTzE2CS5kYXRhCgkJCTAwMDAwMDI4OiAgUl9NSVBT
X0xPMTYJLnJvZGF0YQoJCQkwMDAwMDAzMDogIFJfTUlQU19MTzE2CXBoeV9iYXNpY190MV9mZWF0
dXJlcwoJCQkwMDAwMDA0NDogIFJfTUlQU19MTzE2CXBoeV9nYml0X2ZlYXR1cmVzCgkJCTAwMDAw
MDQ4OiAgUl9NSVBTX0xPMTYJcGh5X2diaXRfZmlicmVfZmVhdHVyZXMKCQkJMDAwMDAwNTQ6ICBS
X01JUFNfTE8xNglwaHlfZ2JpdF9hbGxfcG9ydHNfZmVhdHVyZXMKCQkJMDAwMDAwNjA6ICBSX01J
UFNfTE8xNglwaHlfMTBnYml0X2ZlYXR1cmVzCgkJCTAwMDAwMDc0OiAgUl9NSVBTX0xPMTYJcGh5
XzEwZ2JpdF9mdWxsX2ZlYXR1cmVzCgkJCTAwMDAwMDg0OiAgUl9NSVBTX0xPMTYJcGh5X2Jhc2lj
X3QxX2ZlYXR1cmVzCgkJCTAwMDAwMDkwOiAgUl9NSVBTX0xPMTYJcGh5X2Jhc2ljX2ZlYXR1cmVz
CgkJCTAwMDAwMDk4OiAgUl9NSVBTX0xPMTYJcGh5X2Jhc2ljX2ZlYXR1cmVzCgkJCTAwMDAwMDlj
OiAgUl9NSVBTX0xPMTYJcGh5X2Jhc2ljX3QxX2ZlYXR1cmVzCgkJCTAwMDAwMGE0OiAgUl9NSVBT
X0xPMTYJcGh5X2diaXRfZmVhdHVyZXMKCQkJMDAwMDAwYTg6ICBSX01JUFNfTE8xNglwaHlfZ2Jp
dF9maWJyZV9mZWF0dXJlcwoJCQkwMDAwMDBhYzogIFJfTUlQU19MTzE2CXBoeV9nYml0X2FsbF9w
b3J0c19mZWF0dXJlcwoJCQkwMDAwMDBiMDogIFJfTUlQU19MTzE2CXBoeV8xMGdiaXRfZmVhdHVy
ZXMKCQkJMDAwMDAwYjg6ICBSX01JUFNfTE8xNglwaHlfMTBnYml0X2Z1bGxfZmVhdHVyZXMKCQkJ
MDAwMDAwYzA6ICBSX01JUFNfTE8xNglwaHlfMTBnYml0X2ZlY19mZWF0dXJlcwoJCQkwMDAwMDBj
YzogIFJfTUlQU19MTzE2CXBoeV8xMGdiaXRfZmVjX2ZlYXR1cmVzCgkJCTAwMDAwMGQ0OiAgUl9N
SVBTX0xPMTYJZ2VucGh5X2M0NV9kcml2ZXIKCQkJMDAwMDAwZjA6ICBSX01JUFNfTE8xNgkuZGF0
YQoJCQkwMDAwMDExMDogIFJfTUlQU19MTzE2CWdlbnBoeV9jNDVfZHJpdmVyCg==
--0000000000001150b305b8bb5be1--
