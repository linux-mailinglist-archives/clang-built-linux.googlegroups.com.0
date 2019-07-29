Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGV27TUQKGQERUFSW7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id D2983790AF
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 18:21:47 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id e103sf34363545ote.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 09:21:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564417306; cv=pass;
        d=google.com; s=arc-20160816;
        b=dNad31JN29zZV2ISLUto9q9c+G6gj9yWznhLoNjTSkH1IXItPzrWjHQMe3Bs4WhNIn
         xAO05ev4mdfU8gdyZLOyX6wJgPCO7ikHuT+tmqhxWZqnMmb3Vd+3p3Gs4FlE6CBab+0a
         gdDQmRoeOuA43PWaZXWI2IHPSe4LLbWLW/HP2oTWd/NKIeUaobi7KdsdwPtONa9ABhfY
         7yG9FDH9zhNZj8lE2B8Qq9T127JxpaHxyOeNTGJ8g5VjyRrA+tFNOSr0MCZFyNumfYNU
         imypNU8Te3ug4NTeM/rIMMptuw0xKp5oNH8fCIO8W8rxYlmHNh3q7GICy+ldyQmJXpCB
         kV6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sZk+BVoXRKcTRUk1ALC4NTU0NfRYZfJMIkBXER+Ejsk=;
        b=di9lboyqz8bWA8df0sj5V/sZvGJZQL//fWZs6FnJnQf+PzXDGrEJ/qceem5Qqnt7+W
         orVMznKkN/cOrY75er8YkeJGMXjbBPbCq4ksTBAqDFMkgvV0N1kc/6l9F1UIQ9jLMRGb
         al16PoL2kTdZWjN7SHeC3hAjmvKiiFeLXybo1f4ukrhho2sliQZJ8K+jBlkdC4KEbC6g
         0N/4DeZo81wZQbCcj+RjrmhZNHMb5aTFzH6oEHI7OCR9Vc3cQct7lDEMuc1OtUY44a3y
         4AyxG3/YknVjVNK2tDeFZcyd3rQ/Ql00DssaDx6Xh5sz+qG24BYYDDsQh2f6w+H97jb3
         UkEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QNUdnwD+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sZk+BVoXRKcTRUk1ALC4NTU0NfRYZfJMIkBXER+Ejsk=;
        b=bFVeRr5aVPu0Y8DlWsKWptGz5TjDHT1z6olAAicydvPGicvcRbf2W3dkSErOqcdDUk
         oY8CIHdOwiyfkv0Jc3T9VRJL0KHHDeOCuKiNN+1O5xG4t4PzoS1h0iqWDB2vO/PIT44D
         ei4xou1P9bWOQ5huDLukoWX1ZG/cukXJwA5FkES8SrnFlwRr6n3Ohvg0rTFrxxS69XW6
         iHDUvXhBKBSNtVYV5rXxQ9OoxzJMXH4/bGSvO0n8ny5gUW4SzwhSzBmD+slwIUvu5zyp
         LJeB0b+18tzuaNcc5fce+99MsJzbyEkGpl61RJ2rJwInHdQMNjD+e6lBSXMDTLhUFYg/
         pivg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sZk+BVoXRKcTRUk1ALC4NTU0NfRYZfJMIkBXER+Ejsk=;
        b=MAzenLyxdJlAFOjMZSo9dXz1s8w4Sm1Nuc5/O0BlxppaBRQ15f0arnL6ZS3Vjn8zBl
         XbCHD7TU/Cz3Ncdk3WOQwmj0I1vQR+mUin9uIvMbNfA6nf1TwchSODKssWUEwlE+Cg7T
         vJDA7vOGrBpK1zyRlS3d4YuZPIvj1+xOd5oZizmchGyGJIUtQ57ILPLgSJg2jRSweacH
         wboj/GTlU1CmCVo8cvZPWbFqw1hE395Ms3SFxSd++ku0oovv4vvQWMrTkGdcWB0aVEV4
         MEHsWhaZ33H90uwzgFjrZDx5YwY2aotbThuXQZYSjJ9cYC9T3dURTa0fYyOJ+dEeL1MD
         b7/w==
X-Gm-Message-State: APjAAAX6NaboFdBvv+y9UC0/bdwqmR/SNDkI6lhR1kzXibP39kSGErE8
	w6Fu+xL/kk8fKyDAfI9quRw=
X-Google-Smtp-Source: APXvYqyfaDnv+7Zb6AAj71mQgV8gKPUqxQGGfvoKxQBD1RxNGfVCGTf5GKy1fxB3Z7tNbXJmxwXS2A==
X-Received: by 2002:a9d:7e6:: with SMTP id 93mr59739358oto.143.1564417306577;
        Mon, 29 Jul 2019 09:21:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:d6a:: with SMTP id 97ls2767388oti.0.gmail; Mon, 29 Jul
 2019 09:21:46 -0700 (PDT)
X-Received: by 2002:a9d:590b:: with SMTP id t11mr24859774oth.239.1564417306334;
        Mon, 29 Jul 2019 09:21:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564417306; cv=none;
        d=google.com; s=arc-20160816;
        b=V7vIxsmi3r2xK+nJ3MiRUaOGC5ZJaL2Hp+d0Nkl/Cc5qAA1rETAHKSWvoMz2lNuiLX
         hdtF3NBKWFnp5JvzThDSydDTtIfoBfp4lXEn31e5PiJEKbBWmg6Wbx7mcnCBCtlkbXCr
         9key8Il57eetFRQF5eRCWnI/RuMWENGbxrO31ZF9BXlVxBm04yqqUteug0MAThhF9vis
         8Pr1HoMvJNXN1bNGERbebf9puvvDvgGTm/trYZ9FHZlRVa0y6+LRotYT9DJ1e4sMasPX
         rgjNdq5CUgHmjo9qgwaqnnF/MNHQ26MG16O1GeYjT2lQDmVSib+S2CB4qSVVyzn3UCoB
         vcRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6c39aHCrPSADKgn1QA3sQ/OzJg2W7CUxLj9xwpXNwm8=;
        b=aCuy9jdNXrob3/VX8aGTxcZ0yqBmJMaKzjxkJTMHOz7+yEnlvy8902UHh9mOvHHCd7
         g8ywAuKUd6PmptLxY/iID1ST3iNwUz/Ia713zTKpfErSEnEFC4d7lxUbWboNX5Z0YMxD
         a1ondorB9ne2NPcqUNOJgMvgQjN1eO6G21I0/3AdETcNzPUQhOqHvreL+ZXYBf+pyVoh
         cbkNmaRdZ5jynSlfrFsX8YNAqgWAYqFeomI4izoaBfU+FLWRcn2Ift4NPeGxjkAY6tn2
         v86IP4CFLmkaeuFj6gKO/TM/4Dt+MgGVqMPAJr2YNiSHGYL2tKVNKuSkXPVjQcbLIuzu
         WRZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QNUdnwD+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id q3si893732ota.4.2019.07.29.09.21.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 09:21:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id c2so27679276plz.13
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 09:21:46 -0700 (PDT)
X-Received: by 2002:a17:902:e703:: with SMTP id co3mr13856835plb.119.1564417305124;
 Mon, 29 Jul 2019 09:21:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190729091517.5334-1-yamada.masahiro@socionext.com> <20190729160412.GA100132@archlinux-threadripper>
In-Reply-To: <20190729160412.GA100132@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jul 2019 09:21:33 -0700
Message-ID: <CAKwvOdnU8tLQ=wYAKs9Fy+3c2e_NmKL6H4kRKsRxH=sv16+8cQ@mail.gmail.com>
Subject: Re: [PATCH] kbuild: initialize CLANG_FLAGS correctly in the top Makefile
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Stephen Boyd <swboyd@chromium.org>, 
	"# 3.4.x" <stable@vger.kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QNUdnwD+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Mon, Jul 29, 2019 at 9:04 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Jul 29, 2019 at 06:15:17PM +0900, Masahiro Yamada wrote:
> > CLANG_FLAGS is initialized by the following line:
> >
> >   CLANG_FLAGS     := --target=$(notdir $(CROSS_COMPILE:%-=%))
> >
> > ..., which is run only when CROSS_COMPILE is set.
> >
> > Some build targets (bindeb-pkg etc.) recurse to the top Makefile.
> >
> > When you build the kernel with Clang but without CROSS_COMPILE,
> > the same compiler flags such as -no-integrated-as are accumulated
> > into CLANG_FLAGS.
> >
> > If you run 'make CC=clang' and then 'make CC=clang bindeb-pkg',
> > Kbuild will recompile everything needlessly due to the build command
> > change.
> >
> > Fix this by correctly initializing CLANG_FLAGS.
> >
> > Fixes: 238bcbc4e07f ("kbuild: consolidate Clang compiler flags")
> > Cc: <stable@vger.kernel.org> # v4.20+
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnU8tLQ%3DwYAKs9Fy%2B3c2e_NmKL6H4kRKsRxH%3Dsv16%2B8cQ%40mail.gmail.com.
