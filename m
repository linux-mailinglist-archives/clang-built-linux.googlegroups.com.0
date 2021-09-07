Return-Path: <clang-built-linux+bncBD4LX4523YGBBJHV3WEQMGQEQVMN5OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E033402AF4
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Sep 2021 16:43:51 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id m8-20020a05680806c800b0026702f1769bsf3713387oih.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Sep 2021 07:43:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631025829; cv=pass;
        d=google.com; s=arc-20160816;
        b=A4ywmCXUzgND07aKp6J7rnobTxQBNwwiYB4Ubm9xrPgyc+Ueie55vnbRNWyHD2MKCE
         zQle79reDFD5OqWt8OEVxxY1FsMYzrIxw44VANVrwqs2JvuPRtNisqfArsoLDgScwx/U
         wrreAAu+9G913V18M9oru4bj0qGOmukwCEkC6LO7dcYzL/3wDd5zYi341NdVtOxVOv8o
         /M4Awi+K2HhdBQlco3Qnm3fvY17UjVNudq3/7WT1A5aRalZRP/HWcAXQT+3HVDPehFCp
         R2D711o2njQwJiFZbO1q5poCO0FfGdxOy7nwYVAVqm8VGw7pqgz3Gn+KItePECNxwcF0
         LR7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=WkxNz8mQMS+Un1OhLSuZhxI0j5tbB3VThDavvC6weIk=;
        b=UQseGkSYzgad5oqHtyuCf04+2aPzgIk0lrGpeIysXf4Qxq3/YcUNcWPxosjn32icjt
         7PlObG2tQe5fUh2xPugvYWgfTpqhdEmzIJeq3cu8qcVmA6nunQ0jAvvLhYRqvqY+1lLL
         2h33kesus11Vnd2Gaw/LmwQ/XzrajCA6V5FKiEbD08NkX6MhQrPG78bCkAvpiY8nRhey
         FBnh0IoWQJZ4fsWdk664I5f2/g+nw3uytgyXLsaxcNIpNNyjUbJEXTPSfcazrtEgwu4F
         jMxdqzPEcbkYN/487oNTm2bLMV0ztJb2VjCE2VC56ZSQGfWYIB5fw7DN8HC0F5Uw3jqB
         eqsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WkxNz8mQMS+Un1OhLSuZhxI0j5tbB3VThDavvC6weIk=;
        b=HyNqbWCpPfpERDj9IIe9/HmUZ7dtLqma98IOIu8US6SQ+bOjJw8f0PPdIIC4ck0PUE
         Yk4rWexrvcOBJrp9CKWsad/Y/5z9gRwtBzQgDadRu3DYAwhpF7U14kl8zR1fleJVid92
         CGebj/3mOr8APAiDwSKj6suoCTcahE9rjXOlc2xvNSIP6rb0Q0CsuzuYdhiF0/DSHqjh
         YYY23JroxmUM+hqq+J0rooIA1zPKG4ZKccfu9Ad5YB11adCp0p/h5VZucwP6QuRTDv95
         VktXJ/g8LwfnKHRffjtdHwKqDcPBnKJDjuzGFDJec3+rrgjYnTc69eaTnGDPCnXzunK9
         DKfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WkxNz8mQMS+Un1OhLSuZhxI0j5tbB3VThDavvC6weIk=;
        b=D4NoY2xdWhIdvIaWSdiHOe4HBzZ1xiUWgmCIymrOHeCBX2bh4pBwK/9ySMYdJhkxIr
         W24XDtRJqI8KZES66n4TLoCkm80CK2gierqTZLNqVJJDdA13GipiKclkThPH3IZvcKzh
         kWBQQ2Y5El/WN/F333C0C01EHa4OdSLkFu9zr+LLEaNIPC1Jxudc7ojoO9WHLc8HesB1
         LuyPAJTM9rEGbDAbgCC0bRn3jg64s39/osZ8k6tgj5tmwn+YwpxB/djJ61FmGABYtKf8
         DlbSJiljq6kEFt8jKyvHlDNgkHbxKu5ovSJrsBgfjNIshGyD+WzkTf0VmsqL5iIXxeW0
         GHEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530k+itdhYLkiZueXJvZ8VWkGrviP/Iv1Y614vbSncspVkUxByqF
	6c1s/xm2FXP6L1EJbd1GaJQ=
X-Google-Smtp-Source: ABdhPJw79pm1ApRwXhPUZ4cSslsMFtDvQBzIik65zhCPfswvxkG0EPTkGyETwgexnbdtY+wssFLIJQ==
X-Received: by 2002:a05:6808:b21:: with SMTP id t1mr3220104oij.165.1631025828804;
        Tue, 07 Sep 2021 07:43:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:62c9:: with SMTP id z9ls2561124otk.6.gmail; Tue, 07 Sep
 2021 07:43:48 -0700 (PDT)
X-Received: by 2002:a9d:5d01:: with SMTP id b1mr15073363oti.263.1631025828452;
        Tue, 07 Sep 2021 07:43:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631025828; cv=none;
        d=google.com; s=arc-20160816;
        b=pKkzx1ex72pEvALwzEanqRBi/iaA3SjByD293OuoD88/FAiPcfEeFwV4MDQeCuMb37
         TsDKPjUPTW0s3SO43/aItTE1xtFZZQosWXPQPOZ1oLN7LlyVWHtbGmPoHuHe01Hi6JVW
         9xxUoeAgI/bJyC8f/kx5J32tjTbJxcZiQh8Ro2hfpW4qqpy+HS/hjToKG0RNMS5ZufmA
         iZrHzeAMTd/UUag3c5qAivzhfPs4Y9mMsJ+Yk7+Ndy5k47QSwjIxCUzFmb12Tt40m76a
         p3q/mzy1yUssoxOJXgbzPyMiB63XruasM0ovdIJKMMaCSvNpbaFnVg1hgNSWP2oZmN5o
         AuAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=eXd7EjtSdGq2jVwZFdGtOevYholOSn9jt/6/QLbJTCA=;
        b=EAHJuJXqUaC1RhhqkS7I3pxEaXmGV3aC+/2dWau/sTPKwRztwgQjyCZCl+MZTLTkPk
         Jeds7qiyIe20ZbOxeY8Jpiq87M4DG34/RfMgJsiyQZB/UIjUbyYoIQylxYyX/H4r8gHx
         BXGX84vnmLMg9hE6FmpHw+B4YvQ5VU/+ZjiDp+/BNnJ+WY5rRUUGGJBsa2r3EzpErGBP
         /4PLjN7aBZzDpgJZneeTnpAC5k/YU+58lC26qnyCNS9RuRee6KV8QUIElQiO5LgoesAM
         b8AMoQLcidb15P8zQaJb5BKv9f+DTSOQHog/E1pZHvLNIVTHgWu7f5Jn8Xu4w+TtvKRz
         +W/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id m6si721306otk.4.2021.09.07.07.43.47
        for <clang-built-linux@googlegroups.com>;
        Tue, 07 Sep 2021 07:43:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 187EfdkK007864;
	Tue, 7 Sep 2021 09:41:39 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 187EfcpQ007861;
	Tue, 7 Sep 2021 09:41:38 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 7 Sep 2021 09:41:38 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Linus Torvalds <torvalds@linuxfoundation.org>
Cc: Jakub Jelinek <jakub@redhat.com>, Florian Weimer <fweimer@redhat.com>,
        Nathan Chancellor <nathan@kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
Message-ID: <20210907144138.GG1583@gate.crashing.org>
References: <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com> <20210906154642.GV1583@gate.crashing.org> <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com> <20210906172701.GX1583@gate.crashing.org> <CAHk-=wh0MBVfA89WLWnCiSnJ2a=hSAoSxfG-jyf7JJeBDPK3ew@mail.gmail.com> <87lf49wodu.fsf@oldenburg.str.redhat.com> <20210906194808.GY1583@gate.crashing.org> <20210906201432.GZ920497@tucnak> <CAHk-=wi80NGPppGmBpc5zuGRAsv4_7qsDu7ehW515J2FJoezAQ@mail.gmail.com> <CAHk-=wikLP4KbTUUY_OKL6doyztjqFNKu_Q713vcrkjthc4S0g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wikLP4KbTUUY_OKL6doyztjqFNKu_Q713vcrkjthc4S0g@mail.gmail.com>
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

On Mon, Sep 06, 2021 at 02:24:39PM -0700, Linus Torvalds wrote:
> There are some *very* core header files that the kernel cannot include
> from outside. That "stdlib.h" thing already came up in the errors I
> quoted.
> 
> But I think you'll find that you guys want to include things like
> <errno.h> too, and you'll probably add others (<types.h>? things like
> that) simply because they always work fine in user space, and you'd
> not even notice.

Guess what.  We actually test this.  We do notice.  Except we don't,
because all those problems do not actually exist.

Long ago there were issues.  We do not live long ago now.

> I'm pretty sure you guys don't really want to deal with the pain that
> is crazy kernel people that have their very bare environment.

There are many other users that use freestanding environments.  Most of
them do use the standard headers.

> So you may *think* you want the kernel to use your header files
> "because compiler portability". Instead, you should be very thankful
> that we don't, and that you don't have to deal with our mess any more
> than you already do.

We would like it to be *less* pain, *less* unnecessary work, that is why
we would like the kernel to use the compiler headers.  Instead of what
the current patches do: getting rid of more of them, which will end up
as more work for everyone.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210907144138.GG1583%40gate.crashing.org.
