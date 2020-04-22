Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4W7QL2QKGQE4JAU7TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 007D41B4EB2
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 22:58:27 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id r3sf2898269pjq.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 13:58:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587589106; cv=pass;
        d=google.com; s=arc-20160816;
        b=YZgxQ49TuPrMTHlo9H1sI0vFwYgphTyaJiT0qSK1dRimv6uQmYsGBdPA0giWvD7Wao
         sJtRtZz42MkOGO/rjs4JsTU1bRblZSlrIKuM3GElg4VMl8XLI1gPNMOKdtTqRmnSCnK9
         F8rph6YM3hb+zkAlxXWzROn3h6/Rqm0aVJ3cwlZ/R8nUW1qAgNqZzJsM+ODiDLAhag/z
         G38xgHvTIEpTRpPlx5Ud0mx8+gHfhEU1wX88ORWlrM3vSyKu9HTIFV28p9kDpPIV8NZC
         OoxuPvZCbytNR3BApHoD6QvyuFu9UK12yzirZFX2iZnW8dJHbEztzk4d6lEzqQQ55RT5
         UazQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=50Fg/g4cWzQMgimd0C8WGC6eqRSE7PmQq/z7f4+/vrU=;
        b=YovPDcLT8yXtwNTJZDRMPGtXmIVo+03Dpe5ZDXipfOC2azeB/EUplPeMNGMSBvehPy
         M6CI++OJL3CHcR3bmi6WlioIBca71XHglnFalqQo75v7vCkdDnxGjkOIEkMMjAuULsGw
         YXMIoKn0i+g0LYPzkINgUTGugaiObvIDzF9LRkvFQ7wnSKbEI+AIUNEF07sIvr9pEDPX
         5fKb1iUginDwzEkZE4ht3Z4505zttlHxk0QgKwZfrwhw4i1Ca5Pm4L0SsNSApIT5Mk7Z
         5Af/fcAmmVZYhMeGBncZIxnKoDQU9zqdfWkXAR93WRS6AQsHiR9Je5KRAA0GBJyBFMDZ
         MHOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=B9hBxvWA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=50Fg/g4cWzQMgimd0C8WGC6eqRSE7PmQq/z7f4+/vrU=;
        b=OpZ2yLuCQ0LcK+3qt8YtYwNHcBT9ZjEJdh9QUqGJT+yzVRV1RmkPrrVezSiqtHBa7E
         s4dIXGjWV8imH1DyAfNb9TyHOgqXbdsLr5LwlEdsbDHQPO9ySnTgforwoukSkFIIxpZL
         QYdVyKFGjnnXwJheUAbGESBHA9G4ED05CV2i9jCM2WKIMjlVkxuLpubOTbQN3Eblolor
         eHp6vCoX3laDl6uNPTGCNU5vOXKkHozgCiGUC3h3GBNqMUDgKEt4xcyHsR8YY4I3Ab/z
         8dN35EaDARbDQnbcbq7IQSeNhnXR+ok57GhfVe9LBo/pw76t4F4ugTWdj2ijXWgycgiO
         /S/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=50Fg/g4cWzQMgimd0C8WGC6eqRSE7PmQq/z7f4+/vrU=;
        b=lZCr6uGJEuukCFfy8pS/6I9r4RozNG/ksphXVSJGrc4ycfkxSXgabdAnE96A/I0I5x
         kWpsnEkM8dmQslmN6/Hx91c5Kwkl2sn7i3wbXTqAlWHfLOZNqpQXl+qvrYWG1b4kmCOP
         9ql4+0rfZzMtJkY+cT5D1XUDiGGyQu9wlKdCunbCS3UaCzVSa3jfjPZ2mcs8GZpOkxng
         v7wtYGZ1qEt7eTQcVGwtCj8dnlmfDuJegcxbvq74g6IESfgzczXP9hy8X1uBInHkRnY+
         peviVK5vqrGvvovoRNQQl69fhDdW2iLjlhYd35RPKwrG5mgn7GumGSlH+kQEM6GpC9Pe
         AeMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaBpnTMXeu7tNPaoetnW77qH8RqjpRgOfoc6AyFyupKcYuQGsBS
	8pqgmV2jr1P7X8Jrep+3Bbk=
X-Google-Smtp-Source: APiQypIpAo8uZPi0JioE1HOOKqPamFT13YIN/RHEndeEeg6ra3Cn2dz+PNMdRg2rP7SJpdbafAZNLA==
X-Received: by 2002:a17:902:6a88:: with SMTP id n8mr561495plk.292.1587589106477;
        Wed, 22 Apr 2020 13:58:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:834c:: with SMTP id z12ls1726754pln.5.gmail; Wed, 22
 Apr 2020 13:58:26 -0700 (PDT)
X-Received: by 2002:a17:90a:252b:: with SMTP id j40mr715658pje.60.1587589106102;
        Wed, 22 Apr 2020 13:58:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587589106; cv=none;
        d=google.com; s=arc-20160816;
        b=jVvU3bHxP+Fwb4RtVdbRmtle+FcdQSjtJXqRGsTgB0wCWp4F6c8wRL66riZjnoyxcX
         HtHmHq9ZH+0W8pD4sm7gkAUcD5vSwh4J/U3HNuwtSdgqeMteyJV34x6WGgl0/dXToXMl
         w4Rq1FZmm2Bs46uVIanBJOiZLhtAUao0n7Hq3Fv2hgqtD2CzVMF3CF3tddKt5dOdV+Qd
         QX/MPxa/D9DcZzKuFsW/KDhh1LvwaLag2Lg9xkKaBU+7UPHcS8Nxx+D0bL3Gb1w5Wwjp
         rlQSnKxGQpAtLzBwK+sCEtQWDmjaRJwfo24ktb/cspALDjEXvvf2WGD5T9gqpgBnfJbi
         Qxjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=8BHopCdLNgJxOKVza7lxQaEaVmnLM1O63o3OsMCNvYg=;
        b=xvIMBswQ36+5+Kt5ALGLzARlZBOuExBIG67hwDa43P1V74KBNPtLJ+scHI2TAWrr1m
         YbFUG2tBAJ0+/L6BnO1ofqfi1bVrowHzj3pQvgzfu54Ggu7TSHV80Y2EP4kFrChgSELi
         ZcJichLMCkqCyi6/1AlPJXtRfZtWVzJGlQivUAXt3UHKzTOEzbYJ3H5odZ6XC9Tj5VIS
         pxbgPj2mk9elUb76n7aE/p+zmYBN1dC7GzaZMlivewgc0lBvVqF99Wp0u3XXJYspgd8r
         BZNDj9O+Wyo1tBqLdhTuVZDv/x+QFfFH3rvxjVqasHyM71xG1YMWLqWIQNDNrr3qQiRj
         cTUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=B9hBxvWA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id 194si55390pgd.0.2020.04.22.13.58.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 13:58:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id s10so1438694plr.1
        for <clang-built-linux@googlegroups.com>; Wed, 22 Apr 2020 13:58:26 -0700 (PDT)
X-Received: by 2002:a17:902:988e:: with SMTP id s14mr533182plp.179.1587589105800;
        Wed, 22 Apr 2020 13:58:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u15sm126744pjm.47.2020.04.22.13.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2020 13:58:25 -0700 (PDT)
Date: Wed, 22 Apr 2020 13:58:24 -0700
From: Kees Cook <keescook@chromium.org>
To: ndesaulniers@google.com
Cc: android-llvm@google.com, clang-linux-fellowship@google.com,
	clang-built-linux@googlegroups.com
Subject: Re: Clang-Built Linux Meeting Notes - April 22, 2020
Message-ID: <202004221355.D5F7B61B1@keescook>
References: <0000000000003b3e9705a3e74e22@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <0000000000003b3e9705a3e74e22@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=B9hBxvWA;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Apr 22, 2020 at 08:52:08PM +0000, ndesaulniers via Clang Built Linu=
x wrote:
> http://go/clang-built-linux-notes
> Meeting: Hangouts Meet
>=20
>=20
> April 22, 2020
> --------------
>=20
> Move meeting up one hour? Sounds like this might benefit at least one
> attendee.
> Armv5 boot issue default page alignment
> https://bugs.llvm.org/show_bug.cgi?id=3D45632
> X86 stack protector
> https://lore.kernel.org/lkml/20200422192113.GG26846@zn.tnic/T/#t
> Asm goto w/ outputs
> https://reviews.llvm.org/D78341
> https://reviews.llvm.org/D77849
> https://reviews.llvm.org/D78166
> https://reviews.llvm.org/D78234
> https://reviews.llvm.org/D78520
> Kernel size regression debug info
> Clang-10 ppc and riscv regressions
> One outstanding pull Hal has approved for Tom to merge.
> Iwmmxt missing support in LLVM, should implement those instructions.
> Memcpy fortify
> Previous regression fixed
> Clang fortify may never have worked for the kernel, Kees and George looki=
ng
> Zero init cfe-dev thread started by Kees

bug:    https://bugs.llvm.org/show_bug.cgi?id=3D45497
thread: http://lists.llvm.org/pipermail/cfe-dev/2020-April/065221.html

> I spoke with Arnd Bergmann about s390 rootfs images.  He suggested debian
> deboot strap.  I think we might also be able to cross compile a simple in=
it
> binary with zig, though I don=E2=80=99t know if s390 support has been wel=
l testing
> in zig.

And here's my ~/bin/git-contains helper for figuring out when a given
sha first appeared under a tag:

#!/bin/bash
match=3D"$2"
if [ -z "$match" ]; then
        match=3D'v*'
fi
git describe --match "$match" --contains "$1" | cut -d~ -f1 | cut -d^ -f1


The "--match v*" bit helps isolate changes to only Linus's release tags.

-Kees

>=20
> --=20
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/0000000000003b3e9705a3e74e22%40google.com.

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202004221355.D5F7B61B1%40keescook.
