Return-Path: <clang-built-linux+bncBD4LX4523YGBB4OESDWAKGQE3DCCO3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id D71EAB88B7
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Sep 2019 02:50:59 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id m19sf6143791qtm.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 17:50:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568940659; cv=pass;
        d=google.com; s=arc-20160816;
        b=pTO2twBdQaFN2Eb5bUdo09tbUtFKQbxhcBklKbEmtN+GamFOkGp6lcGQaPj7zoPD9F
         eVLlrbs54H/LKPi3W9wa66yg2wNlPUafnPweCz96d1VcU3osht/PWt2shcAtTAr8Yv0Q
         iftz2ttaBrN8OAWaFpnYlWC0TmmYzDXgrh/QrUwrdISH+7G/rp19OED8YgcoiGmFSPng
         QRsGHDz8aQ6xTwF+f9KJlsfxmElMIZ5P9D1aVmvzlnn6pf490Oddo35f7xREFYvfnmFf
         zoxOaP2Cp3Yu5AAwyFmuWxXMvVGg9F1Ludd6720xexm2519S1E7kUEudtECTq61kgcZ0
         2VuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=huLDnBoKjKZH9uaUEX9El7r//+XSdm38Rohf3N3YCIo=;
        b=Rt36GpqprzJLJLriBUUGkP2eDApXWYOMGZp1HVtgzQdQkDHfyPM5zeMENbyHK84J5f
         GNNi//LI0Zc9nfdZLuC0WXF4gtQ+csYT2NtDSu71SGCzd+2nWaLsNYGilswBgbhGHDLi
         QUTX6VDnuSdXx+KnMeOHrWwxwmX0PPM1KLxvPVf7aoeRJ8To+B3SBXc2XmfQK/ssjgZ4
         qV+9xyrqXqZN9uzEXV45imHmX30pURmr9Vu3CTPBCN4OkDWy3yUqtwwTL44BssMO2g5v
         iRBUqsg1PHSXcxkt2WhUlp1ByteJG8B/E+fbuTSX9t5xeaO1yaVfKcm9po9BQKda1NFi
         lIOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=huLDnBoKjKZH9uaUEX9El7r//+XSdm38Rohf3N3YCIo=;
        b=iNF6HSEf60TrfiI/AvYG2k5SVch9vb1KUsgxv0PaheAk/1Ykt0sJ2OkMn1DeZ7Imcr
         tR6bv2NtUKb7mwXnJ+lCt/O0fnQwYt9HPVFYuwtU2ZuYWkGGfXMliU7X0RcwVAMUF7Sf
         hxUjnRsZy+ccsZt1ZnEF5jbx7l+i/ljpK8riBm283IDT8qMHF10Y63qJe243RnuFQevG
         UEYxhCcMKPa4QlmsZVcN8IMRPSAzNY3qgsRrwXm4+Wu7HS0UjBpNbJN7egKbUPs+Q0oP
         /sSNAG622vl8dXrSu8WO6BqmOn6oLAF74iv5a+H2my94kmUNHsJvlHYy7mQqc1HUeRN0
         ZFCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=huLDnBoKjKZH9uaUEX9El7r//+XSdm38Rohf3N3YCIo=;
        b=HewCVohPjeTM7tXbR26xnxy8Qvy1LM4HlO3hhSRHicyt+SgPhgSveFK364Ad0+Nved
         PcKhBkSGfkVT2H1CWRxVJFMIWGcRDgKBofNhnq8HLnjGZa4MvC56cDoXgAlqcAfTCRfD
         kgqoHf25xK1SVNK/vott20MHOp3aavLFZJX/nFFfmTlK0zcr84UG66SElw3gm1nCPeY7
         18IGkls6j8PM8orxfGRAmw74KbPea/QnA0DpMl1DK79UaDpzuISUGHmd97UrV2Qt2Ocd
         K00ODIWhAhHgkoxjZCr3w/fd5Jk04L8nVf2JZXFnjU3agPofS6MxYcpyUS92kgTEKImk
         e6EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUn5Hc/+NHk1gu0qjtNXC1DyBtWXWktR0HIMcTYhbJihpvnu8dn
	ySjU0Kc4EkUwwk0JTSWuS3o=
X-Google-Smtp-Source: APXvYqwVhTa5RHvyBN4T7+y4JiwFd9pxyqZifBgsoaf58fp24689tiqZ/EE2MnELAyA8jGHccHLX3A==
X-Received: by 2002:ac8:4716:: with SMTP id f22mr185033qtp.38.1568940658926;
        Thu, 19 Sep 2019 17:50:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2c55:: with SMTP id e21ls1720058qta.1.gmail; Thu, 19 Sep
 2019 17:50:57 -0700 (PDT)
X-Received: by 2002:ac8:1701:: with SMTP id w1mr190263qtj.24.1568940657270;
        Thu, 19 Sep 2019 17:50:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568940657; cv=none;
        d=google.com; s=arc-20160816;
        b=Ien8Cgc5YeMf8Hu+QZ6xmKNP7wyf2HPBdfYZjkFxNLrePv5HViUbzIKPmhcID4d8+4
         BeKOypN+zyRJymY7sDU9jysBg7iTAdNGVaIeCjjMZbwWMo/uyV64+MaFoLbkU6VfkI0J
         vzBzQ8NQ7dG549ARS4RjWhdZ8wkXrlLWWdfVYFGT99DhNiLDv/NccqNXhfKsGyAsE0WD
         qtQCQlcxXxGxH3Qkft8aB3/CPUq6JnxoppPr/a9W5cjlGEkR219FiuXSfPu84dfYiHqq
         Hx0vhz5RpJkKpfoUwC0WK2HM4unMu0AKDr71n4mfaLr1X1ReDMfSM0h1wHEboUWuE+L1
         B8cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=SvIcktq22yVLaiRdSQRq8ZD8ehuZdAFJL74gJPLlGcg=;
        b=AQf2SnhE8tB+Y66eVml9CpLy+tM76nCxipnqgAqpa7z6ZBMlJ7I27U69yl11R7BM0k
         WeEfkLWYLQmzyeAW0+nMSoEvzvKduXWHhCFvoQql54BxLoESDkseJpE2WXiqfxMLjrGi
         wKXLRfUsPhC311p7gu5V1R64mr/lyHa0FKqSQL/3LI5avfL6XdLSw/tKYSnqtyKf7kme
         Q+oYmoK6Ccmd+Agt9XhUvtPuExAmyZhqvOF2FRxPeRq1qr1w7xin+1dYmvVaiQyJvIHU
         wWuSlrBGnIncvMFgVSKQGszptdMF1Fb/p7oMxj625ALc3/UWfHZc1yWn9K3aLVfvklSx
         Hw4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id v7si25119qkf.5.2019.09.19.17.50.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 19 Sep 2019 17:50:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x8K0oj8m031635;
	Thu, 19 Sep 2019 19:50:45 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x8K0oi7E031630;
	Thu, 19 Sep 2019 19:50:44 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Thu, 19 Sep 2019 19:50:44 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jakub Jelinek <jakub@redhat.com>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "gcc-patches@gcc.gnu.org" <gcc-patches@gcc.gnu.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2 4/6] compiler-gcc.h: add asm_inline definition
Message-ID: <20190920005044.GN9749@gate.crashing.org>
References: <20190906163918.GJ2120@tucnak> <CAKwvOd=MT_=U250tR+t0jTtj7SxKJjnEZ1FmR3ir_PHjcXFLVw@mail.gmail.com> <20190906220347.GD9749@gate.crashing.org> <CAKwvOdnWBV35SCRHwMwXf+nrFc+D1E7BfRddb20zoyVJSdecCA@mail.gmail.com> <20190906225606.GF9749@gate.crashing.org> <CAKwvOdk-AQVJnD6-=Z0eUQ6KPvDp2eS2zUV=-oL2K2JBCYaOeQ@mail.gmail.com> <20190907001411.GG9749@gate.crashing.org> <CAKwvOdnaBD3Dg3pmZqX2-=Cd0n30ByMT7KUNZKhq0bsDdFeXpg@mail.gmail.com> <20190907131127.GH9749@gate.crashing.org> <CAKwvOdmhcaHpnqhMwzpYdjjwfAhgzq7fqA0Hu8b19E5w3AHz4w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmhcaHpnqhMwzpYdjjwfAhgzq7fqA0Hu8b19E5w3AHz4w@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Thu, Sep 12, 2019 at 02:54:50PM -0700, Nick Desaulniers wrote:
> I have seen instances where instruction selection fails to select the
> appropriate way to branch when inline asm size is misjudged, resulting
> in un-encodeable jumps (as in the branch target is too far to be
> encoded in the number of bits of a single jump/branch instruction).

"asm inline" *only* influences the estimated size *for inlining
purposes*.  Not for anything else.  Everything else still uses
conservative estimates.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190920005044.GN9749%40gate.crashing.org.
