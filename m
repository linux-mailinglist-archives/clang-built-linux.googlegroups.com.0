Return-Path: <clang-built-linux+bncBCT6537ZTEKRBNO2Y2KQMGQEJ5TU62Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB755530EF
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jun 2022 13:36:23 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id 15-20020a63020f000000b003fca9ebc5cbsf7553064pgc.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jun 2022 04:36:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1655811381; cv=pass;
        d=google.com; s=arc-20160816;
        b=VfxFSh2zey8SvGu/E/T0KewnAKHHvl8JXhfXyhugWIJy1YlYyZDFeMMTbpEGBkM1jf
         0E1VqdmlP80ZT063BZF+OLDGfekZfjBLqoEQdZ2pkJJIJP8HhVjWNQXQzXWkVvWKwDjD
         sJGzRrjVnaXwRpGlgZyMY986RPQdj93pOkjwQ5ruX60dShFPKiWNVasxQt1vbya8gclr
         3evgyVwwmEUbgM1Uoxj03XsebcvgF9x78yIw5OOgwvAMc5F3ju4n6ZO9dohNu0JZZdTB
         953BHl4Dk4z7JYtw06bXUdqMoEpSssp2DbNeJOJdo+Up0OJEU9zFI+WauS5GkysyZYpv
         dUCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=GoIznQwhGB7i1zFFb5TCLRrfVg7iQ2yZYEp7S1tjkEk=;
        b=wCks32wsbDWiNqWDtAXz/Q5TqzbS0PWrX0T23kw0Z+H86deFMpwhPsT4Asb+8tnPZK
         sMa+TsMTVFjhFAuDugU0N5/PJXZ8yjwJBsWXwNmiaZmGgOwok1v/FKKIuVHjvcOUt71T
         gvlL0gNtQed06GdK8JiVRuAYwcdiEyECxLDDRkENOQo9CxmHXdutmYBP6FprthBT16Jt
         me8EArS6IyqLRgetp6BXGXSatfiplcz418pTp3D0AGekxPA5XBqSOgJKdcE1I9V2z2w6
         /9gbFiGW5XJkYSDH1IdHUiMDQZoz/XWvHzCQuou5g4wWaezVUlRnLjFaXpWtHed6dOfj
         zZSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="DciPG/qB";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GoIznQwhGB7i1zFFb5TCLRrfVg7iQ2yZYEp7S1tjkEk=;
        b=pISTzQ+1OnuCjQGDR4+5BVlFTHM/63bZ5viie7WTMN0g/ebDCqiOMjqmkZraJcUllt
         OPapubtm8p+N/cMSV1FnQpdczJQzd41fZl5TN1QpMMLG6QToGt5Poicbgg1j659Ajngt
         gg0p6Dx1keAvrbX7P/L8eqy/UIz++4d5QhFsvztnle05uwIqIHtUBrN1IcecvCBtrTUX
         7Qi/p8Rj3/dRUcexFbNtL8vfSJd5wyWUxavQNQduis74JKXkASWNL0rnusQrcmRTdy7v
         LurqptnNwoj/a/pqG1kxH5eUshl7+QkKf70wkQRDLJd0iT4JDrgPZxdsj/FJZYfxL5MU
         Tobw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GoIznQwhGB7i1zFFb5TCLRrfVg7iQ2yZYEp7S1tjkEk=;
        b=TQQoxGRQOI2//9Ygk9rXjPAhSQq1aiOu76bLeyE+r82LEWcU4kCRcO6Jbm5EO8luDH
         OczWcrpFny7uDIa+C2JsF6hBGcxx5uoe01+U2PLtoLzbl+47+cVxDY42540OfF5OkuBc
         mZ5YXQEka9je5892YPGxDD4jOJLg3pS9xnNjkuF+RNruJ5DOkj7zCdcYWqZ1eoMoshPS
         xj5Fpx05NlfLrrvV/fpibxjr+48vifIxBkXw9KqqRNdEopWO/HXvHGkZRK/Ddk6ugrDa
         Su4FfwGxOdlsEfixWMXPEoT7TkndYlRZgDNrJOxDFSknsRpqeGc6NnmEU5hpImTzONjt
         7T2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora+9Ju6tp1Rgxjl1lPPZ+EwF9pR5Y2XiQXN/IGs3dPdfIePKEOaq
	t6/nFAgot2fFRWoq6yxZFcI=
X-Google-Smtp-Source: AGRyM1vEOQxA5nojwYARUnYGIUfrNR/dxjiXs8Dvj/GOwcmrvxivkSvZBkkeJC1pmefoYOx+nDgOpg==
X-Received: by 2002:a63:3193:0:b0:3fe:3f57:35fd with SMTP id x141-20020a633193000000b003fe3f5735fdmr26334210pgx.232.1655811381312;
        Tue, 21 Jun 2022 04:36:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2f65:b0:1ec:9383:5539 with SMTP id
 s92-20020a17090a2f6500b001ec93835539ls4752746pjd.1.gmail; Tue, 21 Jun 2022
 04:36:20 -0700 (PDT)
X-Received: by 2002:a17:903:11cd:b0:167:90e6:5d83 with SMTP id q13-20020a17090311cd00b0016790e65d83mr28182862plh.136.1655811380650;
        Tue, 21 Jun 2022 04:36:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1655811380; cv=none;
        d=google.com; s=arc-20160816;
        b=dHkxAuNNHoI+Wm0q1jw8X8yVolcEBcVToAPSHPQJqKbmrU/cog6hCJ/TV3mdtKV8NV
         yfdoC9QeOejJ5MJ1ma4B92srZR+7gqJiHVpU/mcT4jKddTz/27RmHs7Vam2D0YfZ0qUQ
         0qAjRWbn2ylEBRiISW0RaXcBFlR5oGboseN4Eek9ZzHzL28snwTmyP+XW4IjV9ljFieH
         DFOwUf/83K8IIzoTPDRdGMsJT+V6pL2SVfs2FnDUgz5G8h9IL41OZ+yKYfHBMocAZYfw
         GbRmbQmmnW6qF7seAUW0vqMHn/ewnO/MCqnsD45TIOVUo2AqcPB6dRju1ojzSumvW/t3
         6TZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uy109NGVZOqUEqj/HN5Y0t40mZp/IMiopZZkWsBlk7s=;
        b=pmCa+OTwL07fgSW9Slcw32NWSGiNSPRpX9pyPlcrfqone2Bkm/RPXBPDqjk56yi/Kb
         eQSOyc3gCFiIX3l3WOBfUH7nc/1rFB20wNb3WzM6WorvECZk0CInPodyKZo/cmk96RBh
         PWwt55g458jLWa6zFzT7ieDPJWo8XyHxYis3pugXb9Bh0Yhzbaii655KcEMeGfIpKWp9
         1iE8TYq9Ukugcxw4ZGPbRfratlXQjwXYRF0Q5XvJJsMBTStECvy62fX+X92u9PJ0qIU5
         07lPyRa6dB7yyEzFyaDkwBsDSIK4zPZt/zAteMUeE7GXyP8nX2WPoPTQpawb+gmQGick
         s7Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="DciPG/qB";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com. [2607:f8b0:4864:20::b2d])
        by gmr-mx.google.com with ESMTPS id f23-20020aa78b17000000b005207277be24si564229pfd.3.2022.06.21.04.36.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jun 2022 04:36:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::b2d as permitted sender) client-ip=2607:f8b0:4864:20::b2d;
Received: by mail-yb1-xb2d.google.com with SMTP id r3so23962656ybr.6
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jun 2022 04:36:20 -0700 (PDT)
X-Received: by 2002:a25:cb12:0:b0:668:be92:a574 with SMTP id
 b18-20020a25cb12000000b00668be92a574mr21688868ybg.617.1655811379693; Tue, 21
 Jun 2022 04:36:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220620124724.380838401@linuxfoundation.org> <CA+G9fYsvY-0ub_CXbb5is0vRLQ9+SaPS8Op=9mZzCkeccUN+mg@mail.gmail.com>
 <YrGHheX8D0iIz+db@kroah.com> <YrGTT/MLbCuHanhB@zx2c4.com> <YrGe64z7Al+V3bvB@kroah.com>
In-Reply-To: <YrGe64z7Al+V3bvB@kroah.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 21 Jun 2022 17:06:08 +0530
Message-ID: <CA+G9fYs7+kA6pzCZZNBxrwx-2-OFZfV+5Zk4B8a=uE=VUFykFg@mail.gmail.com>
Subject: Re: [PATCH 5.15 000/106] 5.15.49-rc1 review
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	torvalds@linux-foundation.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org, akpm@linux-foundation.org, linux@roeck-us.net, 
	shuah@kernel.org, patches@kernelci.org, lkft-triage@lists.linaro.org, 
	pavel@denx.de, jonathanh@nvidia.com, f.fainelli@gmail.com, 
	sudipm.mukherjee@gmail.com, slade@sladewatkins.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="DciPG/qB";       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, 21 Jun 2022 at 16:05, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Tue, Jun 21, 2022 at 11:45:51AM +0200, Jason A. Donenfeld wrote:
> > On Tue, Jun 21, 2022 at 10:55:33AM +0200, Greg Kroah-Hartman wrote:
> > > On Tue, Jun 21, 2022 at 02:06:06PM +0530, Naresh Kamboju wrote:
> > > > On Mon, 20 Jun 2022 at 18:36, Greg Kroah-Hartman
> > > > <gregkh@linuxfoundation.org> wrote:
> > > > >
> > > > > This is the start of the stable review cycle for the 5.15.49 release.
> > > > > There are 106 patches in this series, all will be posted as a response
> > > > > to this one.  If anyone has any issues with these being applied, please
> > > > > let me know.
> > > > >
> > > > > Responses should be made by Wed, 22 Jun 2022 12:47:02 +0000.
> > > > > Anything received after that time might be too late.
> > > > >
> > > > > The whole patch series can be found in one patch at:
> > > > >         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.15.49-rc1.gz
> > > > > or in the git tree and branch at:
> > > > >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.15.y
> > > > > and the diffstat can be found below.
> > > > >
> > > > > thanks,
> > > > >
> > > > > greg k-h
> > > >
> > > > Following commit causing regression while building allmodconfig for clang-13
> > > > on arm64, riscv and x86_64.
> > > >
> > > > > Linus Torvalds <torvalds@linux-foundation.org>
> > > > >     netfs: gcc-12: temporarily disable '-Wattribute-warning' for now
> > > >
> > > > fs/afs/inode.c:29:32: error: unknown warning group
> > > > '-Wattribute-warning', ignored [-Werror,-Wunknown-warning-option]
> > > > #pragma GCC diagnostic ignored "-Wattribute-warning"
> > > >                                ^
> > > > 1 error generated.
> > > >
> > > > Regressions:
> > > >   - arm64/build/clang-13-allmodconfig - Failed
> > > >   - riscv/build/clang-13-allmodconfig - Failed
> > > >   - x86_64/build/clang-13-allmodconfig - Failed
> > >
> > > Does Linus's tree also show this issue?
> >
> > Linus' tree got rid of the pragma with:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/fs/afs/inode.c?id=874c8ca1e60b2c564a48f7e7acc40d328d5c8733
>
> That isn't going to work on 5.15.y at all without a lot of hand tweaking :(
>
> > and then a subsequent cleanup:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/fs/afs/inode.c?id=e81fb4198e27925b151aad1450e0fd607d6733f
>
> That doesn't work on 5.18 either.
>
> I guess I'll go revert the 5.15 patch here for now and let others sort
> it all out when they want to build 5.15 with gcc-12.

Whereas clang-14 builds pass. I am considering this as a waiver.
The problem is with clang-13. you may keep the above patch which is
adding support for gcc-12.

We will stop building with clang-13 and we will upgrade our toolchains to
clang-15 (when released and current clang-nightly builds are in production)
and gcc-12 builds are running in staging. We would like to bump versions soon.

- Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYs7%2BkA6pzCZZNBxrwx-2-OFZfV%2B5Zk4B8a%3DuE%3DVUFykFg%40mail.gmail.com.
