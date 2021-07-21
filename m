Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB26Z32DQMGQESAIB7GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7B73D081D
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 07:13:16 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id l4-20020a0ce8440000b02902d89f797d08sf691837qvo.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 22:13:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626844395; cv=pass;
        d=google.com; s=arc-20160816;
        b=wnNp5MM8SbqpOXHhD9+mTRQNL0hPL4nZXwbAf+tg0AILCXyvn0pirHDrn5mi8J1PtY
         /MgIi6Dhmy15nrzDDtYhxdSvdMyt/Dfvml+hVnxTx6TRV7ll12Cd47em68PYq5oIOnEB
         ugi86EMhpkTRL14/f/KD5vRBDXDRNhwTtHD2yJOpBcD2pOl7vU6iYPlAWYs/UZIqFLgW
         PnJNfA/CwGxPyQrgGTHeL6E5P3cs9cNMBwmwc/MnLLmpPmetHDXcr82FxxsbG3pPJmpQ
         2XJDbrxcY1M15ddbn3olMmyfCyug4lv6e0WsMolgxGhxBUtr4XmZtrVht1CZ5iS2R++r
         zUZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=ew3fTYwZriw8RHolQ7F25tFsegcZFP+f9tNGw/i2wuo=;
        b=ldck3xaG9c1G347yTFzsPa21E7PNWxQ0tre5aIBjh6JcyAduKzsEtuXTjsxtMHuRsG
         CRP5GnKWb+LJzLHqhMseZSyPEGpc0Jo2uY7CRkRETqf595dKp5ZGWYXg+pnmZE0k9g5V
         d0FyzWXswCT36A4P46irNkNCfl4jeVen3Yuo3aIacKz+zduWmBd6dlUVWaoFRcjy7rxu
         Kspvyg9+caDyzlILJrwxn32AHO0zKQx7KEDPeSROffHoMccc8pXaMWbgQM+yQTtJC0WR
         d6tUtvycQ7B43e+AuMsOSuoJJhJC4/0wbzO1JOoQqk+dk/TX/1b2gKl2ynUQBMqCkSld
         vFFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=GFgnK6g6;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ew3fTYwZriw8RHolQ7F25tFsegcZFP+f9tNGw/i2wuo=;
        b=fQLSBJC1GUT0cK0KgEvIuUxDNj9AB8/9XbgDkY5beaJZczHZdAXcxhn3It4D2Iclz5
         tlqp3smVYdK0kvnpS3XHNQU8T6D3ZjeWQog77kxn+RzVCepCUhHLMst/N9jPsr+qlgeU
         uha1FvtLcgoMYUjkYEr6QA5ju8rl/oPU2eGM4f/CN5ny4+VPml7qmhiIt2Ooi9OxPQCn
         5IBqyc08n5zooszBeyhqlmA0XFC+mAyfmexXIO5jZqSktfMmXwNxU4+IQAF2QYlOKQ5P
         tTkIhbhuulx8N5s1/WIu63gk06XinUOTDab18fBEmvzyPKtR0HCz4E7dp3elPq5PkRmq
         sCug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ew3fTYwZriw8RHolQ7F25tFsegcZFP+f9tNGw/i2wuo=;
        b=K5ZxFtfkgEfNVUfMQeA0xUyb35ln8G01K3YRANwHqWHW8V1T+xTJH1F6BTJRLstrmw
         sltenR8IylVDGDsTDroTIPsxJJHzLwfQu3mMYD0nR0T0COAnEZG7zNhC1fRAG3N+7vr5
         OnG5FUmxytKqFjB3NZ8DbTgQdSTdn1nQy+Hl9hVcsCUnnPr+w2CoSkOTqKRg8lzDPeN2
         FCFn8ATZNj6QGR4vMkxn83FnHKkJytfhiOsjDGv5T+PXZFOMji3lRUH+Igs/WTxbIasP
         c4NqZcmLsEeuYM1jPYY34Zsdtx+CuYcv90aVMpQ0E1RbDoyPEf73EuHFwcbdHrPxtguh
         tT2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533BaIn7A6A5ioVj3EwdYNUSYb2FL+89Z5EpjMuboP/hrhmjDWpT
	FmS8aJnXTgRTg1ERrkN8lh8=
X-Google-Smtp-Source: ABdhPJy8lXuHWzBZvDvMg8TYAexmw8GtxTK7siaUHnoOZ1fv7grXUSR+OrHzmaXKzUizKh7RXqWnxQ==
X-Received: by 2002:ac8:7645:: with SMTP id i5mr29478813qtr.133.1626844395215;
        Tue, 20 Jul 2021 22:13:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1305:: with SMTP id o5ls803612qkj.11.gmail; Tue, 20
 Jul 2021 22:13:14 -0700 (PDT)
X-Received: by 2002:a05:620a:136b:: with SMTP id d11mr32572730qkl.340.1626844394793;
        Tue, 20 Jul 2021 22:13:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626844394; cv=none;
        d=google.com; s=arc-20160816;
        b=sGv87vUbtp+vpR5tPN3v5rv4jiDtKfwObpt9r+FTpXc9MwnF0CzN9ld26FqYHip4PX
         X58M2mapfD++TL61lTPniSAXN/SAX1jsVaEvasOV/uSspmiGBV3rD3lW/+hyRfU5AUDm
         d7ecKLW9X3PHbd4wyC0RRrbSoK0sq3J0GvK2P++WXyxzzskqwBQjw4ndfSCkuOSvOQcB
         +2lGHWTXIHeJ7h3fe3FYkt/oUfSmrYzDw88MzibktN1bRaovxbSqvxM7OpbQ4jv8pMS5
         qNoO3r9aXdQ9A6AowlRVz1cVjoBnOKt3/IbcS//VLKIW6gsvg8rMyDcESvIsiZfGBEBk
         i1Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=3xx/KdE6CtGmtNN/L+TIdcy1e+9LgHIW8BuUFAscNmg=;
        b=I/IjoS3BrpNJ1i5GRbN79FxHJ29AVPWp9uTAVMT6G35Nqi8EDxambbWXeUN51dc6Ki
         v6Q9iYsiRQ3paFFaJ/w3w/febeksPSlQ/J8+Rij4T7gUbRij5A4eeyGKLXjDJdj788AQ
         Ueo+qDWPHw9xN0hE4GwBypNqRLKvMaD7RUkfBQCtZ28AwW+fxf9cZijBqu4Y1v0IqUy5
         XxF082rTGa7z++aBQnMx5pDMfHjkL1R/C8R88Fr9NVohR2bFYTsEDlooOjuCZMAClWTP
         o/LQ4GtBwu+Uvj8H4+ioWjsMMs2cICy4XbpETirMJDhzd0V2uTZeZfddlr0nAvV3vgS2
         eW3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=GFgnK6g6;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id l21si1399822qkp.2.2021.07.20.22.13.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 22:13:14 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 16L5D0Tq007454
	for <clang-built-linux@googlegroups.com>; Wed, 21 Jul 2021 14:13:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 16L5D0Tq007454
X-Nifty-SrcIP: [209.85.210.181]
Received: by mail-pf1-f181.google.com with SMTP id y4so1338922pfi.9
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 22:13:01 -0700 (PDT)
X-Received: by 2002:a62:1d84:0:b029:304:5af1:65f6 with SMTP id
 d126-20020a621d840000b02903045af165f6mr34202636pfd.80.1626844380426; Tue, 20
 Jul 2021 22:13:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
 <CAKwvOdkvju7heeNpk87brsjkhXHbdKFsUgf63KWhXox9rDkQsA@mail.gmail.com>
 <CAHk-=wiZe2FuiAOwhbKR_VMmFBKekz0NFREm4fvik25PEdcK_g@mail.gmail.com> <CAHk-=whS1zBU=uhDTk2M1LwkqG7AKLsR0_+XG+saY_s2FHZr-A@mail.gmail.com>
In-Reply-To: <CAHk-=whS1zBU=uhDTk2M1LwkqG7AKLsR0_+XG+saY_s2FHZr-A@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 21 Jul 2021 14:12:23 +0900
X-Gmail-Original-Message-ID: <CAK7LNAROLTHfz7d93xNx-MWj1-dsxD+7=OFGd8z078kdSRigPA@mail.gmail.com>
Message-ID: <CAK7LNAROLTHfz7d93xNx-MWj1-dsxD+7=OFGd8z078kdSRigPA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Christoph Hellwig <hch@infradead.org>,
        Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=GFgnK6g6;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jul 21, 2021 at 8:20 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Tue, Jul 20, 2021 at 2:54 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > But there are other things that stick around. In particular, I have
> > considered simply using git config variables for that.
> >
> > Something like this in the main Makefile:
>
> A slightly more fleshed-out patch to do this just to see if somebody
> wants to work on something like this.
>
> It really would seem to make it very easy to set up any random build
> environment, and not have to remember it once it's done.
>
> There are probably better ways to do this, I normally try to avoid
> doing Makefile magic, since others have taken it over. Masahiro?


The patch would uglify the Makefile.

If git is not installed, $(shell git config  ...)
will spit an error message, so '2>/dev/null' is needed.

Actually, I believe we should be able to build the kernel
from a source tarball without relying on git in any way.

In fact, we rely on git in some places, for example,
scripts/setlocalversion can add commit hash to the release
string, but I want to minimize the git-dependent code.








>              Linus
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwhS1zBU%3DuhDTk2M1LwkqG7AKLsR0_%2BXG%2BsaY_s2FHZr-A%40mail.gmail.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAROLTHfz7d93xNx-MWj1-dsxD%2B7%3DOFGd8z078kdSRigPA%40mail.gmail.com.
