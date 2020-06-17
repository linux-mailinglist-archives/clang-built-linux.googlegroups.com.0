Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCHXVH3QKGQEVL6EICY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0151FD5F5
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 22:22:34 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id y4sf1550357oto.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 13:22:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592425353; cv=pass;
        d=google.com; s=arc-20160816;
        b=JhjlNagRJLqbgRhlPFRfVS65pGNghkW7i633qFuf7NkgtQitWG6IZgcTqOLBMeHSwg
         AD8nvb5PLgWgLaaPWs1GKztPTQfbzDYDjBgo1CYmKo/hHkHUNr+zqJv0M8nllycHYw58
         yF/VnMyBcjhO9Yw+mK+2eWDTs9orj9x9XMWJrj9A3GrQ+4ZzG7kWtnB8yhr9IGjW1BNH
         L9AbmZdgTfuNy3nf2LSJdATNFfsyAhPP6Cfna8T+cC3Klb+/RZf5rIBv6TlR/jwOdgR8
         MFLa7piyyO4u3BnetP84/qv5wrRUy12OJf4R6qhOmJp6iEFOJjdhlJ7W1ZgvjGEmtCfj
         dfXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=p+J88vM/vg35aXa6bc/9fe4P97aEta1Y8XgDQNfwdno=;
        b=PPdTsBCIiaFzKCJfQEmk2VFjRvJ4+fC7tMDCNGFfbEe1mmdQS+59nfqtY5LoT4rr4h
         uoCIEH7dEzGNFF2mIXvLMRR1KdMak9LY8+5ACQLZvaimePSFBWRY2S3WB1odkV6F8p7l
         vViDyafpxNwCbVMryriJi6oYquOPdAkrHswt+he7iI4DyPux7ukuRBTAXLeaXTQkLscp
         CusSAtI3Dv3RHSZgYMf9VCmJA3fo2NOrHSQPRgN/qE/ZX+UwCZB4d4x5Txo1BROHVQOp
         xd92fzC+7y7P+e4vIY+uSQ/eIHqdqIJ4YOjZ52MVpQLYmNfxj8qWfNNr1wsdK/NqrAfi
         l+LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=syox4XRz;
       spf=pass (google.com: domain of 3h3vqxgwkacypfgucwnpkgtuiqqing.eqo@maestro.bounces.google.com designates 2607:f8b0:4864:20::945 as permitted sender) smtp.mailfrom=3h3vqXgwKACYPFGUCWNPKGTUIQQING.EQO@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=p+J88vM/vg35aXa6bc/9fe4P97aEta1Y8XgDQNfwdno=;
        b=CohBlNXKaDCmK8BaB8DsIVLhBP3MFdA3zqB25W0NrhUWErHk/Cx0oOp59k0QNp76pv
         na5nT+CqeRA+nwRxlAuMpHmJixTlUQClW4stJBJh37ewVKG+GMDEhiFZxXgKFRr3ehKW
         7joIT+lQyStcUr62QW3TenptNRxquYA/XiuzxGeD5axqxn1loVRLn8hh1UXpFIWBMweV
         qA+2EJOWfXxgItNkuKcH5TFm9VBHlXzYOaQZLG2/t1SDm4y3PhjHbL4yV5EgWV5fpIQN
         Wc1bKp1x7M/HsE4YdeJBPgrR3sgIBt4ZoTxswWRTqzKyzZA2Vwm57AKLEWh6KAtKT6nL
         /AZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p+J88vM/vg35aXa6bc/9fe4P97aEta1Y8XgDQNfwdno=;
        b=b25QXd2afs35TSeSwJ1sjsTXoodkpQhiC5PI1EAahEwohfDFvQfdPL6hzbnwpMB6lY
         0K/moeGuj0InJqzgizW8mi/eDFNpW8rFTyyktfKs209wRBhU/zgZ8n+QGZH7pgy8jXbF
         2EPm0qjODNP4oHh/6cF801GwDe8waBCDy1XQlmpY5J9BwPMs0u8aa31b9LeDXL+8MY0F
         k1yZWBDZMmK6WlhuxikQX4dVsvxxh7On5hbvkSwxPx2M3ItIskxyb5+nlt/hHOvs98j2
         7bXr8xT9ZEurSS3DLyG5EqdrAIddtnQu4SxXeSjL8h51ci3Omzzf1rJTMKXc5x96eCmg
         HWbw==
X-Gm-Message-State: AOAM5320qoMUYbDajUsPOgORsGZjuXpUrEPXSxn+scJmiRm1BWQtPqaa
	OP/xk4uzoUboejtp/5LcPqs=
X-Google-Smtp-Source: ABdhPJxXj+uSjmPLpIcrZkC5a54rTeKlVBaSaqS7k1KBt6Yd+Wa3H8K63IEvFGoG0WuNajxSS2FcGw==
X-Received: by 2002:a54:4716:: with SMTP id k22mr398969oik.78.1592425352896;
        Wed, 17 Jun 2020 13:22:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38e:: with SMTP id t136ls687398oif.10.gmail; Wed, 17
 Jun 2020 13:22:32 -0700 (PDT)
X-Received: by 2002:aca:1a03:: with SMTP id a3mr414467oia.99.1592425352544;
        Wed, 17 Jun 2020 13:22:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592425352; cv=none;
        d=google.com; s=arc-20160816;
        b=JQU7/hhHexA1BqsC9AqNceV15wRer4QD1xSjReo23G8ZyrsT4kwBIvAN89irtXE07w
         5xhPG/Vmqwt84s3VHj+aTSXT5uBSry6NkPxJBittwmut0Ni12NAXAdpW9qKf5cfONi+E
         HAoFdoSAGSgPlFJwRi1mfU/uXi8hpOHuLSmrFE/IT9l9gM7KRuhoZILyhQCdc6JBhKNS
         pbDc0U39GtbbtvZm9Rp3kmj+ZzZM02oNFULOOlSKXARjh9Ev/rD/DvRKvuOi1WJ8SVYl
         7vVnveA3jNaRzHIymIyeHAZJbHLfwhirJgQmkgGAd30ovXYKiwgLOQ0xDC8aPrJ7f9Pd
         me4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=AUCnP2TcgCJZI1o6QtMCpI/fo/ARlFQ7VA1AiXmjyMw=;
        b=o5kWgHXkdoMPm5UCatJ5y3GhZsJrySLwvPK9UkdpgwdCNZUGABzE1fNp0cf/LmAdQv
         EXTJfAzlAjt2rMWjcrYNEMDPYISeG3VBVpvnZUazxbPUs0Vq/d6CZZRqjHQTl/M3qs6F
         qaOFanJHqrj4CSP02VyRcd+jiCRnwdqxNaEd35DhSf64xIjMvT8XT2Me/pHdBtv/QPg8
         Bw4+GtD3N6Pgmu+JhfHu+/WOnOnL4vdPofyTCj1fpvrgXcV2VXncfhNwn/AQif7+QDLh
         J1gLAPvxVeWyyumOCJ8718OaTp0PO/AqWZCieUwEWqWfG9kVo0pkKU3/1uvopH7He8kK
         rvEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=syox4XRz;
       spf=pass (google.com: domain of 3h3vqxgwkacypfgucwnpkgtuiqqing.eqo@maestro.bounces.google.com designates 2607:f8b0:4864:20::945 as permitted sender) smtp.mailfrom=3h3vqXgwKACYPFGUCWNPKGTUIQQING.EQO@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x945.google.com (mail-ua1-x945.google.com. [2607:f8b0:4864:20::945])
        by gmr-mx.google.com with ESMTPS id e69si74771oob.2.2020.06.17.13.22.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 13:22:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3h3vqxgwkacypfgucwnpkgtuiqqing.eqo@maestro.bounces.google.com designates 2607:f8b0:4864:20::945 as permitted sender) client-ip=2607:f8b0:4864:20::945;
Received: by mail-ua1-x945.google.com with SMTP id e23so1178823uan.18
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 13:22:32 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:ab0:660a:: with SMTP id r10mr620793uam.49.1592425351735;
 Wed, 17 Jun 2020 13:22:31 -0700 (PDT)
Message-ID: <0000000000006c824305a84d6b89@google.com>
Date: Wed, 17 Jun 2020 20:22:31 +0000
Subject: Clang-Built Linux Meeting Notes - June 17, 2020
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000006c823705a84d6b86"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=syox4XRz;       spf=pass
 (google.com: domain of 3h3vqxgwkacypfgucwnpkgtuiqqing.eqo@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::945 as permitted sender) smtp.mailfrom=3h3vqXgwKACYPFGUCWNPKGTUIQQING.EQO@maestro.bounces.google.com;
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

--0000000000006c823705a84d6b86
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


June 17, 2020
-------------

Tom Stellar doing github integration for backports for point releases
CrOS issues
R7 thumb (fixed)
https://lore.kernel.org/lkml/20200608205711.109418-1-ndesaulniers@google.com/T/#u
.text.hot. .text.unlikely. (TODO)
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/2236871/
Integrated as
Ppc32 should be back online after quick LLVM fix
https://github.com/ClangBuiltLinux/linux/issues/1044
Riscv booting (nhuck)
https://github.com/ClangBuiltLinux/linux/issues/867
save_stack_trace for arm32 fixed (nhuck)
https://github.com/ClangBuiltLinux/linux/issues/912
-Wformat is due to narrowing conversions. Too many to fix right now. Lots  
of easy fixes. (nhuck)
https://github.com/ClangBuiltLinux/linux/issues/378
Qemu requires -cpu max for pac/bti testing
RELR breaks GDB?
Reworking asm goto, has multiple boot failures
https://reviews.llvm.org/D79794
Quick UBSan fixes on aarch64
https://lore.kernel.org/lkml/20200608203818.189423-1-ndesaulniers@google.com/T/#u
Nick reviewed a bunch of i386 patches for clang, not sure if they got  
picked up.
https://lore.kernel.org/lkml/CAKwvOdnj4M6xy3DhqE9U05bBhNEHR7-o8CM0T-KoQFRck0o39g@mail.gmail.com/T/#m1402c54af9c26679397be024244fa6148608742c
US LLVM dev meeting CFP is up
(Nick) Everything I know about debugging LLVM
(Nick) ClangBuiltLinux BoF
(Bill+Nick) asm goto w/ outputs
https://lists.llvm.org/pipermail/llvm-dev/2020-June/142224.html
Linaro CFP
Sept 22-24 July 1st CFP deadline
https://sessionize.com/LVC20/
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000 via aarch64 PAC
https://github.com/ClangBuiltLinux/linux/issues/1054
Kcsan clang-11 only for now
Tons of CFI issues in sysfs
https://github.com/ClangBuiltLinux/linux/issues/1051

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000006c824305a84d6b89%40google.com.

--0000000000006c823705a84d6b86
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>June 17, 2020<br /></h1><ul><li>Tom Stellar doin=
g github integration for backports for point releases</li><li>CrOS issues</=
li><ul><li>R7 thumb (fixed)</li><ul><li><a href=3D'https://lore.kernel.org/=
lkml/20200608205711.109418-1-ndesaulniers@google.com/T/#u'><span style=3D't=
ext-decoration: underline'>https://lore.kernel.org/lkml/20200608205711.1094=
18-1-ndesaulniers@google.com/T/#u</span></a> </li></ul><li>.text.hot. .text=
.unlikely. (TODO)</li><ul><li><a href=3D'https://chromium-review.googlesour=
ce.com/c/chromiumos/third_party/kernel/+/2236871/'><span style=3D'text-deco=
ration: underline'>https://chromium-review.googlesource.com/c/chromiumos/th=
ird_party/kernel/+/2236871/</span></a> </li></ul><li>Integrated as</li></ul=
><li>Ppc32 should be back online after quick LLVM fix</li><ul><li><a href=
=3D'https://github.com/ClangBuiltLinux/linux/issues/1044'><span style=3D'te=
xt-decoration: underline'>https://github.com/ClangBuiltLinux/linux/issues/1=
044</span></a> </li></ul><li>Riscv booting (nhuck)</li><ul><li><a href=3D'h=
ttps://github.com/ClangBuiltLinux/linux/issues/867'><span style=3D'text-dec=
oration: underline'>https://github.com/ClangBuiltLinux/linux/issues/867</sp=
an></a> </li></ul><li>save_stack_trace for arm32 fixed (nhuck)</li><ul><li>=
<a href=3D'https://github.com/ClangBuiltLinux/linux/issues/912'><span style=
=3D'text-decoration: underline'>https://github.com/ClangBuiltLinux/linux/is=
sues/912</span></a> </li></ul><li>-Wformat is due to narrowing conversions.=
 Too many to fix right now. Lots of easy fixes. (nhuck)</li><ul><li><a href=
=3D'https://github.com/ClangBuiltLinux/linux/issues/378'><span style=3D'tex=
t-decoration: underline'>https://github.com/ClangBuiltLinux/linux/issues/37=
8</span></a> </li></ul><li>Qemu requires -cpu max for pac/bti testing</li><=
li>RELR breaks GDB?</li><li>Reworking asm goto, has multiple boot failures<=
/li><ul><li><a href=3D'https://reviews.llvm.org/D79794'><span style=3D'text=
-decoration: underline'>https://reviews.llvm.org/D79794</span></a></li></ul=
><li>Quick UBSan fixes on aarch64</li><ul><li><a href=3D'https://lore.kerne=
l.org/lkml/20200608203818.189423-1-ndesaulniers@google.com/T/#u'><span styl=
e=3D'text-decoration: underline'>https://lore.kernel.org/lkml/2020060820381=
8.189423-1-ndesaulniers@google.com/T/#u</span></a> </li></ul><li>Nick revie=
wed a bunch of i386 patches for clang, not sure if they got picked up.</li>=
<ul><li><a href=3D'https://lore.kernel.org/lkml/CAKwvOdnj4M6xy3DhqE9U05bBhN=
EHR7-o8CM0T-KoQFRck0o39g@mail.gmail.com/T/#m1402c54af9c26679397be024244fa61=
48608742c'><span style=3D'text-decoration: underline'>https://lore.kernel.o=
rg/lkml/CAKwvOdnj4M6xy3DhqE9U05bBhNEHR7-o8CM0T-KoQFRck0o39g@mail.gmail.com/=
T/#m1402c54af9c26679397be024244fa6148608742c</span></a> </li></ul><li>US LL=
VM dev meeting CFP is up</li><ul><li>(Nick) Everything I know about debuggi=
ng LLVM</li><li>(Nick) ClangBuiltLinux BoF</li><li>(Bill+Nick) asm goto w/ =
outputs</li><li><a href=3D'https://lists.llvm.org/pipermail/llvm-dev/2020-J=
une/142224.html'><span style=3D'text-decoration: underline'>https://lists.l=
lvm.org/pipermail/llvm-dev/2020-June/142224.html</span></a> </li></ul><li>L=
inaro CFP</li><ul><li>Sept 22-24 July 1st CFP deadline</li><li><a href=3D'h=
ttps://sessionize.com/LVC20/'><span style=3D'text-decoration: underline'>ht=
tps://sessionize.com/LVC20/</span></a> </li></ul><li>unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000 via aarch64 PAC</li><ul><li><a href=3D'https:/=
/github.com/ClangBuiltLinux/linux/issues/1054'><span style=3D'text-decorati=
on: underline'>https://github.com/ClangBuiltLinux/linux/issues/1054</span><=
/a></li></ul><li>Kcsan clang-11 only for now</li><li>Tons of CFI issues in =
sysfs</li><ul><li><a href=3D'https://github.com/ClangBuiltLinux/linux/issue=
s/1051'><span style=3D'text-decoration: underline'>https://github.com/Clang=
BuiltLinux/linux/issues/1051</span></a></li></ul></ul><br /><hr /><br />Sen=
t by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/0000000000006c824305a84d6b89%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/0000000000006c824305a84d6b89%40google.com</a>.<br />

--0000000000006c823705a84d6b86--
