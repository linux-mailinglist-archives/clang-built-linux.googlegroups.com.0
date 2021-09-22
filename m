Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUENV2FAMGQES6OEJ6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 113ED415092
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Sep 2021 21:41:06 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id f16-20020a4a9210000000b002a84ff0cc9asf2295387ooh.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Sep 2021 12:41:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632339664; cv=pass;
        d=google.com; s=arc-20160816;
        b=xfDrKc+WMxavMoiRhwdg4cB/5yqKx5nnr5i5E7UGlzq4ZJhRej7kTPLV1gBIh6x5qt
         T/aTzYLXJ0acntxJ/tSw1O9HSeAGBiDk5olgC7/3gJfYAhkSQWdERkNW8ts0bSDTYXES
         dFE6joeWJVlj67V0P/NhcmAtB6SOi3ohQc0bOgd1H+bFAMmHbsmTWG8RNprSxxqIHZCk
         DcVJ4rVFMvtxm9CvTrhBCVakSsON+Phg8m4xVveoU1mTcUuSyj6bfDX2g2jzAWNlpKyX
         /Qzvqnhbjj4dw6Be88FTNh3GkVJ6sscHYFSDW6QfSD8lDTaLK8PpQWpSvQxlCXHIKmuq
         2v6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=p9RT7lO8XiOPjkBMn0CCWRSpTE3jSPHJFuJrMQB7VLY=;
        b=FQYWcfGelDOP54SfKghq8kWTaSf+mJl/i89P8LjVi8WLzdBohgMHR3vqK8MLVeq/0B
         IYGbfbXKsNNnl1C49sBoxiGhlCIkv/h9L5ta4/V69jYB5FEtfAmnIXvNPo8qOQWbkrk4
         Ck4Ib5yOUTG+B7iwb1ywrRqz87yZanA6u9ZtJ8+15vTd6LSuP5S0cvI1R8U8jvT/Yb3G
         RvjtL0yefJDsenefiNYrdZ8xjFIhGEl4vJkMnr3LBzzkRyq7HH1f5dYkMBuWZFgKu7fV
         uLzorKwFMdgQ+R1xXbd65AouGAMFGiI8w6L5Oiia7JqNyox+Gx5G+4uow+HXDcr8IQZl
         rn0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=sSt5hu2k;
       spf=pass (google.com: domain of 3z4zlyqwkabwf56k2mdfa6jk8gg8d6.4ge@maestro.bounces.google.com designates 2607:f8b0:4864:20::348 as permitted sender) smtp.mailfrom=3z4ZLYQwKABwF56K2MDFA6JK8GG8D6.4GE@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=p9RT7lO8XiOPjkBMn0CCWRSpTE3jSPHJFuJrMQB7VLY=;
        b=Q5R0JgTzfrJsgF9e4/yBYJwmt48xw+MnuKD9z4T2fp9Du0DdYQuT68ALSKuYdC2rTx
         qcmrNt1P9+e6R+sBuFq6rfbjkcMJ8HboMhTHCQj+udj3mc9BGi+IgBcCtiK1C881ekWq
         zgjWpBg3kTYIxJtE8ftd3mGzn6mdUTNDx3mmDmoAjQcDetHmKa9fMcVn/8QTQ8cwQRmz
         mV2pD1AJl6jeZDb/lZ4FVbmn9b6R81lr3uqKddcPN30EUHZjseAGz7KqSr9LarVHnt8t
         rfG7a1xgPg4/0sO+IzFUe5B4bAFdYDbSgXOfNsee0XUVCAWqrGHwG0tKNJEogDcLUC4q
         TtxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p9RT7lO8XiOPjkBMn0CCWRSpTE3jSPHJFuJrMQB7VLY=;
        b=ke0sb1+8vz3mQGNSL8bv/+wC1v+VC7wGr85sC1LcCIFfMK5pF5/LqgutSJ2eP2rtFe
         Qe2cCdnBG+gtkDh9ZjFODwpyES7xU2hZbceS8RERJZcWWBm96iOb8GbzFjx4FN+Dcsc6
         LPd90bAW+J0lyFS0mEnY44raItnDb3p4XZFXuNp8J3PvIJb29sjKJWge0xHuZpGjfgd9
         3WNGdx733KjzkCc3qigxyU1AEKn8a56SNWSZYwJf355X4dzMKJlAjRxfg6+rm/Gsq4T3
         05X71TdhCv9d3LbD+EXAqJVLdkuyWqDQ3brkwqDikedy6B9M/BJXRkJT6n/gG+FwmVv6
         5m7g==
X-Gm-Message-State: AOAM5331zWtyVOH50uq6FMJy0tY52IeKYtmfgqQ6MFtNqBaUMSq2y+lS
	+iBCQUdVEFCbOgobfg/KuE8=
X-Google-Smtp-Source: ABdhPJxupTaLvtALP7szrxXOZHZ3sqEta/P0pl3/1+VYYwwnEVJZptSeDJ1/7+eflh1HL+TnNO3eKQ==
X-Received: by 2002:a9d:75d5:: with SMTP id c21mr777103otl.47.1632339664683;
        Wed, 22 Sep 2021 12:41:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4408:: with SMTP id q8ls1066547otv.7.gmail; Wed, 22
 Sep 2021 12:41:04 -0700 (PDT)
X-Received: by 2002:a05:6830:2695:: with SMTP id l21mr855699otu.164.1632339664130;
        Wed, 22 Sep 2021 12:41:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632339664; cv=none;
        d=google.com; s=arc-20160816;
        b=OfntD6T/TuUZY9kbRtXWsgN8WPTzhah752h9QSOpiH3JtFhAK60rqNRNj9fY2xYaIj
         NRQOlhvkfjJSXT5+3qLz3kgdeRJVu+lC8xxAS+ozXOb3i6neUVueM3i82rrzx/6IAsbY
         L7wDFAZz3gt0o0TKT0FQouNiTiduPA5wh/cib4SpyvaUMMPt6Cap0S0BrcNZ7FtIumqT
         k+oXS6fi8CKPNpemc5glMgiwTficFi8lDJKK9YcGKKBiv980Ik3p0kCzpjUZ2eIziX99
         aT/6ZVjt0VYTIBDc+ECMZMLIedV5WcWKBQmEzyF1UhNuxCzR2j8dIjhJYj4uTSEWhVeg
         vDVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=/zKLnUWhcFH3ilJZGGY6wHgMj91+1vI0bk7OuiDyj1A=;
        b=dQWbZDNpzm1035g+mWfz8vn+bTa27ON/vJyrxZ+miant6ljMKhSFMAywtvjF4SwrcD
         qKg9w1uCJi2QZDiUdI2qHzFgDarPN5YcAbEKavogHEUPWZq3Wo3qfb2uj4amZqsvqf7y
         sLnpAAT0+a7oT0BIl7rVti2b+EY3v33U4b5zvdH65e5NBUdITYy5YkYGVr1eUuzxrKq3
         QG8vJqZwHyQAkzyqf63wjjb8v/00s8laf4VPkMknJdoVRFut1LnW6KvfXjbmhZPjXz9I
         26QT2g7NrDFcs2q8QbDwNETuDNdXjta78/HR16zU6hBxfB4a642XUk3fe6UEBAr1g20R
         PRJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=sSt5hu2k;
       spf=pass (google.com: domain of 3z4zlyqwkabwf56k2mdfa6jk8gg8d6.4ge@maestro.bounces.google.com designates 2607:f8b0:4864:20::348 as permitted sender) smtp.mailfrom=3z4ZLYQwKABwF56K2MDFA6JK8GG8D6.4GE@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com. [2607:f8b0:4864:20::348])
        by gmr-mx.google.com with ESMTPS id b1si394617ooe.0.2021.09.22.12.41.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 12:41:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3z4zlyqwkabwf56k2mdfa6jk8gg8d6.4ge@maestro.bounces.google.com designates 2607:f8b0:4864:20::348 as permitted sender) client-ip=2607:f8b0:4864:20::348;
Received: by mail-ot1-x348.google.com with SMTP id h10-20020a05683040ca00b00547341f1e53so1708452otu.19
        for <clang-built-linux@googlegroups.com>; Wed, 22 Sep 2021 12:41:04 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a9d:2c22:: with SMTP id f31mr739524otb.303.1632339663702;
 Wed, 22 Sep 2021 12:41:03 -0700 (PDT)
Message-ID: <000000000000cf6d4005cc9ab191@google.com>
Date: Wed, 22 Sep 2021 19:41:03 +0000
Subject: Clang-Built Linux Meeting Notes - Sep 22, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com, 
	llvm@lists.linux.dev
Content-Type: multipart/alternative; boundary="000000000000cf6d2405cc9ab18e"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=sSt5hu2k;       spf=pass
 (google.com: domain of 3z4zlyqwkabwf56k2mdfa6jk8gg8d6.4ge@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::348 as permitted sender) smtp.mailfrom=3z4ZLYQwKABwF56K2MDFA6JK8GG8D6.4GE@maestro.bounces.google.com;
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

--000000000000cf6d2405cc9ab18e
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


Sep 22, 2021
------------

Bill describing difficulties in implementation of zeroing callee used regs.
Plumbers (Toolchain MC Friday)
Almost back to green in CI now that we can apply patch files
TODO: re-enable -Werror for allmodconfig builds
Arnd=E2=80=99s randconfig W=3D1 builds almost green for GCC and Clang
https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git/log/?h=
=3Drandconfig-5.15-min
Kees had QEMU buffering fixes for ci
Nick bootstrapping llvm against musl
https://reviews.llvm.org/D109837
Try -DLLVM_HOST_TRIPLE=3D

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/000000000000cf6d4005cc9ab191%40google.com.

--000000000000cf6d2405cc9ab18e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>Sep 22, 2021<br /></h1><ul><li>Bill describing d=
ifficulties in implementation of zeroing callee used regs.</li><li>Plumbers=
 (Toolchain MC Friday)</li><li>Almost back to green in CI now that we can a=
pply patch files</li><ul><li>TODO: re-enable -Werror for allmodconfig build=
s</li></ul><li>Arnd=E2=80=99s randconfig W=3D1 builds almost green for GCC =
and Clang</li><ul><li><a href=3D'https://git.kernel.org/pub/scm/linux/kerne=
l/git/arnd/playground.git/log/?h=3Drandconfig-5.15-min'><span style=3D'text=
-decoration: underline'>https://git.kernel.org/pub/scm/linux/kernel/git/arn=
d/playground.git/log/?h=3Drandconfig-5.15-min</span></a> </li></ul><li>Kees=
 had QEMU buffering fixes for ci</li><li>Nick bootstrapping llvm against mu=
sl</li><ul><li><a href=3D'https://reviews.llvm.org/D109837'><span style=3D'=
text-decoration: underline'>https://reviews.llvm.org/D109837</span></a></li=
><li>Try -DLLVM_HOST_TRIPLE=3D</li></ul><li></li></ul><br /><hr /><br />Sen=
t by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000cf6d4005cc9ab191%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000cf6d4005cc9ab191%40google.com</a>.<br />

--000000000000cf6d2405cc9ab18e--
