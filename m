Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFN24D3AKGQE44GZ3UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id C00831ED838
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Jun 2020 23:58:46 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id be7sf3046943plb.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 14:58:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591221525; cv=pass;
        d=google.com; s=arc-20160816;
        b=vW+2/Lpi0KFmWnsIPvLLmy+4Wssu8KT1/oYUrAbcO+tY9jxtw30bC0kxgCtJgVyNL4
         UcE1xiePxWFIo/PC3R/oyDlevZpFllb1yXqu5yoUtsW7tCpTRCF3ZSXZSBWCg2ufrjJs
         iWznFg5T2pkHIjENZBjHDNRHWRfeKbJtkIYUprRf3F9E8klvSCzKmX2su7PkYxgQvzk7
         j3wjlNpzHS8/6b/RPrsfkILu130oN84I4z6MAYTWFRQeNBZPz2vf3mTps5GutizqfryF
         soJIwyOwr4apVEYrr1OwtneOY3klrH007gVjOZqLXBnXbwo5+3cQIqK7jBpaPyHdFOOa
         x1ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=/fstWUcx6i9khL993I74HRvoLj+LfYTlNsNx42gaS1E=;
        b=LccXgPWHvjtt1fi3oC3lHZ5TqZLvoInbhBnMHB923+jT+aFOyrwSS6k35JrhNItd0K
         yj3mPGdcwhsHKjmDtSlZFQ6G7G3xHzGEQG8VW7uWN3Z8I6i0VDREqDK8aPPpvIE5Vk3m
         ULJoPVtVKblFXRwx9W8qr2ujsLBX35CSE5QqcGue3WS1TxeV3hPxg7eBCFtqP7/QlC1l
         rqKcxfuJjYukeP8QkgF/ax7AJ67V1FMX5a3T1Awvl/lzIknxnXuYTifZvjvb1iAxmfDh
         E5UUNQxtB8CE5UYmWUS3rmFDtN5eu1a0zvRB4iwhUa3oKGBrL3p5/Ga4QRu2gypSu0Rm
         N9Pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VS7pNH+G;
       spf=pass (google.com: domain of 3ex3yxgwkakoxnockevxsobcqyyqvo.myw@maestro.bounces.google.com designates 2607:f8b0:4864:20::e47 as permitted sender) smtp.mailfrom=3Ex3YXgwKAKoXNOcKeVXSObcQYYQVO.MYW@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/fstWUcx6i9khL993I74HRvoLj+LfYTlNsNx42gaS1E=;
        b=CL+46/Wu9UeGFhHGXcc1BnxA13c2PfEnzxbhxNxZ4bkzFIkdXJKmAjpjZ1sCM5WsKb
         kVysKTRAhOP2kIpP1oAyT36Rl5rT8Tyr6v/DCzSJouwTHnBRt7B+sIJ2Iq0TDkVhkklV
         HBAeoMKyr7Mqqt8o6y1Gm/Jjz0W1bmiidynsKBsz8tcQBqaaCNPxPHJLndM4+3ecO4Nc
         lXONOWj3QbdMuUBrKr4cL898ahrp1CYVUMOgM4cE9BE/fC0B8dp6/r7aVAyTu5mpdhrF
         RjqzcJxXMhA1MQBqNK89naMPGOGYKxNFy5T2v0U1vuci/NKY+ExRYd392BB/W5SsLZCT
         /ONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/fstWUcx6i9khL993I74HRvoLj+LfYTlNsNx42gaS1E=;
        b=ST7K8jm0+9FcpdB3D0Nyl/DfTMA8BaHp3LSkLEjOHMjJiq4S9F5RyUdT9NzpIRt7ry
         e5m1uN4zBNAC2fDcBEAoAsSvAHOjN3RFH+7KHN/E/5JKqvdBUKZgrNmVEeGHZMhxh9Z9
         lS0ruITZpMzSEVQEjbzPnKxWUChC4rvhZAwpnj6GFA9WAZ8lHPJxVjw8+MM48vD4kX/8
         ILSYR6iKl1zRaCbMqG4h0RwNWPUJzA5gOOzoZDRELT4E2WOKpkjqPp9gpWLx9ZTtwSjK
         ebdeytehdeE/hAIzQWv/UH+TPXpQsI7XTrO59TP1PfY+CLzobOkwPRyLzMKfarBuouyU
         383Q==
X-Gm-Message-State: AOAM5330d0U8KA4CnyUJWdvjT/kqN9W5qc1yAq0+lKJ2tPIyvMrnSb/S
	h8DW5OWpHTHAnghP5DO5Zqs=
X-Google-Smtp-Source: ABdhPJxXdbqYslGqZbgX3nLjxoeQN8fmNUkK501sBLbT3KJy/B14z1jQ/cdH2RTu/bTNukR7/OfjbA==
X-Received: by 2002:a63:3f8a:: with SMTP id m132mr1376269pga.225.1591221525409;
        Wed, 03 Jun 2020 14:58:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9a84:: with SMTP id w4ls1103914pfi.7.gmail; Wed, 03 Jun
 2020 14:58:45 -0700 (PDT)
X-Received: by 2002:aa7:8ecd:: with SMTP id b13mr1153428pfr.297.1591221524902;
        Wed, 03 Jun 2020 14:58:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591221524; cv=none;
        d=google.com; s=arc-20160816;
        b=DVUYXByE6L4ZSM1uoC7ivTaZ0NVpWbhhGZTAMbTpZGoUThc8ZgzXrSl2B/8j336ALf
         WeH/UQ1GNn/k5XQLz5NuiewMUBhvCclgGzTzyX5qzZFw+1WWi2VaHW/0I5gAtDKGiZaJ
         gH0ZGqOkaXGNEYy6cL9CeBv74U+vfeyayJlo+/fxeULQe2QYAR5uc5MyrsRZyxapfq36
         nvjmx2iF7MFD+1pD79WhiLEFYwTxCAw1sVnURjZ4NK0irrqQUDFB48NeaFdWTs/RGWp8
         qM6LLKYm4eXbvswr3OCOaTJnQhx3/4WvDrgBTejOgWV0gZh5UppZDkZmE86WDynacbrN
         Y7pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=f90RYlKtKB/LxhbrvS+kEQUmUNQX5TDl3BW6LR52cgY=;
        b=pf5MYWP9ZDrL5gQb4UuuvLH3f4cPqjZnlDblGXU8NyTwx9t1oONlOM9ytuPNoFvhT4
         YUX/T+rAZo/xv6N1w5j4E3rfSjq/Sxju2ySBB7v1dFDviqqZ+UmSTzEBrdYyKDTNvDHz
         qVnGusDkyvB5ivB4uQk30arPbSYjWolCfNjRS+nwTBmyaIstE+3tBh+0ZymVU2nmqLPL
         RraMucexcBrnqIQ7SHVx7Uo1uVcggB/Ni/s+WwaRxZ+TuDxipV9szP1trXu6fBfUaTo+
         dS9/wheg9HCZ7AZZGz7hfqVgXWkEQ+C8oABeCww3GDE+Kd7ad3p4M0zAekWKpVpA7Uys
         6Klw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VS7pNH+G;
       spf=pass (google.com: domain of 3ex3yxgwkakoxnockevxsobcqyyqvo.myw@maestro.bounces.google.com designates 2607:f8b0:4864:20::e47 as permitted sender) smtp.mailfrom=3Ex3YXgwKAKoXNOcKeVXSObcQYYQVO.MYW@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe47.google.com (mail-vs1-xe47.google.com. [2607:f8b0:4864:20::e47])
        by gmr-mx.google.com with ESMTPS id a22si836439pjv.3.2020.06.03.14.58.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 14:58:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ex3yxgwkakoxnockevxsobcqyyqvo.myw@maestro.bounces.google.com designates 2607:f8b0:4864:20::e47 as permitted sender) client-ip=2607:f8b0:4864:20::e47;
Received: by mail-vs1-xe47.google.com with SMTP id k13so866382vso.16
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 14:58:44 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a67:8788:: with SMTP id j130mr1222034vsd.115.1591221523838;
 Wed, 03 Jun 2020 14:58:43 -0700 (PDT)
Message-ID: <000000000000b076e305a7352137@google.com>
Date: Wed, 03 Jun 2020 21:58:43 +0000
Subject: Clang-Built Linux Meeting Notes - June 3, 2020
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000b076ce05a7352134"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VS7pNH+G;       spf=pass
 (google.com: domain of 3ex3yxgwkakoxnockevxsobcqyyqvo.myw@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::e47 as permitted sender) smtp.mailfrom=3Ex3YXgwKAKoXNOcKeVXSObcQYYQVO.MYW@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: ndesaulniers@google.com
Reply-To: ndesaulniers@google.com
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

--000000000000b076ce05a7352134
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


June 3, 2020
------------

Atomisp fixes (Arnd, Nathan)
R7 warnings, compat vdso
Should the compat vdso be configurable?
Clang ia patches (Arnd)
ODR patch from Bob, waiting on x86 folks to pick up
https://lore.kernel.org/lkml/20200515180544.59824-1-inglorion@google.com/T/=
#mafd13fc1faf858832f30ea09c7ad3678c81ce75b
Huck intro
Focusing on compile time measurement
-fno-eliminate-unused-debug-types (Nick WIP)
https://reviews.llvm.org/D80242
-gz=3Dzlib in kernel
https://lore.kernel.org/lkml/20200526171830.151966-1-ndesaulniers@google.co=
m/
32b x86 reviewed
https://lore.kernel.org/lkml/CAKwvOdkB0J8oMjG-NsM6O6BCnodmY8UeYqCyeR-c6NSa5=
paYfQ@mail.gmail.com/T/#m1402c54af9c26679397be024244fa6148608742c
Sroa bug
https://bugs.llvm.org/show_bug.cgi?id=3D40776
Pattern init found a bug in overlayfs
Rust working in the kernel (Nick)
TODO: loadable kernel module support, dynamic allocation, crates
Compat vdso on arm64 hardcodes bfd, doesn=E2=80=99t work right when linked =
with LLD
https://github.com/ClangBuiltLinux/linux/issues/1033

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/000000000000b076e305a7352137%40google.com.

--000000000000b076ce05a7352134
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>June 3, 2020<br /></h1><ul><li>Atomisp fixes (Ar=
nd, Nathan)</li><li>R7 warnings, compat vdso</li><ul><li>Should the compat =
vdso be configurable?</li></ul><li>Clang ia patches (Arnd)</li><li>ODR patc=
h from Bob, waiting on x86 folks to pick up</li><ul><li><a href=3D'https://=
lore.kernel.org/lkml/20200515180544.59824-1-inglorion@google.com/T/#mafd13f=
c1faf858832f30ea09c7ad3678c81ce75b'><span style=3D'text-decoration: underli=
ne'>https://lore.kernel.org/lkml/20200515180544.59824-1-inglorion@google.co=
m/T/#mafd13fc1faf858832f30ea09c7ad3678c81ce75b</span></a></li></ul><li>Huck=
 intro</li><ul><li>Focusing on compile time measurement</li></ul><li>-fno-e=
liminate-unused-debug-types (Nick WIP)</li><ul><li><a href=3D'https://revie=
ws.llvm.org/D80242'><span style=3D'text-decoration: underline'>https://revi=
ews.llvm.org/D80242</span></a></li></ul><li>-gz=3Dzlib in kernel</li><ul><l=
i><a href=3D'https://lore.kernel.org/lkml/20200526171830.151966-1-ndesaulni=
ers@google.com/'><span style=3D'text-decoration: underline'>https://lore.ke=
rnel.org/lkml/20200526171830.151966-1-ndesaulniers@google.com/</span></a> <=
/li></ul><li>32b x86 reviewed</li><ul><li><a href=3D'https://lore.kernel.or=
g/lkml/CAKwvOdkB0J8oMjG-NsM6O6BCnodmY8UeYqCyeR-c6NSa5paYfQ@mail.gmail.com/T=
/#m1402c54af9c26679397be024244fa6148608742c'><span style=3D'text-decoration=
: underline'>https://lore.kernel.org/lkml/CAKwvOdkB0J8oMjG-NsM6O6BCnodmY8Ue=
YqCyeR-c6NSa5paYfQ@mail.gmail.com/T/#m1402c54af9c26679397be024244fa61486087=
42c</span></a> </li></ul><li>Sroa bug</li><ul><li><a href=3D'https://bugs.l=
lvm.org/show_bug.cgi?id=3D40776'><span style=3D'text-decoration: underline'=
>https://bugs.llvm.org/show_bug.cgi?id=3D40776</span></a></li></ul><li>Patt=
ern init found a bug in overlayfs</li><li>Rust working in the kernel (Nick)=
</li><ul><li>TODO: loadable kernel module support, dynamic allocation, crat=
es</li></ul><li>Compat vdso on arm64 hardcodes bfd, doesn=E2=80=99t work ri=
ght when linked with LLD</li><ul><li><a href=3D'https://github.com/ClangBui=
ltLinux/linux/issues/1033'><span style=3D'text-decoration: underline'>https=
://github.com/ClangBuiltLinux/linux/issues/1033</span></a></li></ul></ul><b=
r /><hr /><br />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000b076e305a7352137%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000b076e305a7352137%40google.com</a>.<br />

--000000000000b076ce05a7352134--
