Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUH57KAQMGQEYUHMPQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0AB32AC7F
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 23:40:17 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id p12sf7807931lfu.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 14:40:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614724817; cv=pass;
        d=google.com; s=arc-20160816;
        b=ap2KSg63TTGAIn10WJWMuE/uztcnxp+Lx4IJIQbLux+nBHwmA6Q9arXl919nzZ4PiP
         zyNS/GGyZR0NIifFJwNlmcXXrbR/N3wFNTZbFWiGX+cJDLryDv3G9nkUN1UWx/Ovf47Y
         ncDWWdFyPx/3Z9cBldRC3grsQ0ZPn0XhpCEP83HasuRSn75B4kRKLQUbu+pKoHWTDl8w
         9fN197MEdzdtjDFuADml8TqqRoD3cxJZcrA3MsOjkaM4fnKIJdeHaEUwo6eAPM2UZfb+
         PJxzDJwTLRTQPfDd6Xt/EcN5u18GEYunqJ9n2fDf2SHRAr/VeQ9VDQEl+/rD93P6ulCQ
         5WGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VJnXf5rEGLDZIfekI1R2k94Kb0jHHZPdHza43cdzGAg=;
        b=RL9AwKYBmksSFMGAVyj2s5OGfXbYq3euMnecp+aA4PAUkhOYn1Yde4v0couh9GF3jA
         g6Ic/7+VT5b/FHwzCrEL+swwIWh66dOzViLqewMJhKXix7gxm529O8K+MVJDoik4rPrb
         7FXupH5mp/dwjDeBQUpoyc+UbOy7c67RB6gL/8elSxxSW7R6ciz7CHC4qH4dOEcqN3MU
         X1QeFut+oil9I4eu5fGCI2NjeYmpYreXT22s9mOMJmnjXYle3LOCP5UePpbE6tCGfQNu
         OtElT9vWqoT3t2WWUmpXKiSTf8VasEjkFxqi701giSrSH/sE9E5Ah5jgpp1Q92Mek05n
         orFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=THbki3q5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VJnXf5rEGLDZIfekI1R2k94Kb0jHHZPdHza43cdzGAg=;
        b=gosFQpsSz4lBCKtQ3j+gdcDqL+vJtj8j975qceVXdkYSDpHFRoNg6v9ieSQwySmeFV
         dCKM3hllCgWK4S4fUe1BGd/B8AFhHJTZQR/wNetV/Pw5hC6yFrL2hF03CQL3CYtyA9/q
         QqJyqGVH/GGY3XOHz9gUQTUS8iCX/NlzYOkm2oRQBI++ZJ60PNmNxz+jt9h82Evy6VfD
         e1vGjO+9J2D1Bktaod7w4krupTd8Lfbe8kCAnLcs4fKrmzeYZcJU7ZRKZfeS7oesYyF4
         fwH5IcuoWOcXRY2tynELoUtUmDM0uVRPqNxkj/wgCjNYcAw9bPEHUZDoOraLMhsRrdIL
         hFqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VJnXf5rEGLDZIfekI1R2k94Kb0jHHZPdHza43cdzGAg=;
        b=X6zLL8PMOUx8MmaT6PDyRShF24LClz9cXeA4DKIZQelqivghXnF8N5EMR1Ut20Y3HI
         Fb7c0bt3AQuhVHBtLiMEobgvu6elzUyRBWZX6A//K3qf5MegN804Z2dls+ZYP8JKc2TE
         wPwZIEsc9+zXkCQ/5gUHjhuk9EwVDRqP/AaewIeOj3laocB73Tnp0iGcAAbgJ/cKe2Sg
         az7AWEK7t2SthUgJ/CfFWiQyt8GiJZqkQerLKjprE7pYzR7RytLAUXsi5KtprMEEDbCF
         I8KT4xd/fq89MV/QgpljsLF0J1GsHabL58lm4TOeEhBY4GqlGpnj+RQPLGMWYmOg51dr
         R2gg==
X-Gm-Message-State: AOAM533chOepik1KUM3PdIcBTA2iuGQEtFGPZfjz0UDl7p0rqaorucuu
	lnaPeoO20Anp+TceurYD7NM=
X-Google-Smtp-Source: ABdhPJxp9+FGndj+eRSgoRSDH5RQeSFiWP4HwnYmL5tTPxvwX8wqxim6dTeBFevNi1abw76V5A5bTQ==
X-Received: by 2002:a05:6512:696:: with SMTP id t22mr13104049lfe.631.1614724817077;
        Tue, 02 Mar 2021 14:40:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9191:: with SMTP id f17ls68105ljg.11.gmail; Tue, 02 Mar
 2021 14:40:16 -0800 (PST)
X-Received: by 2002:a2e:9a14:: with SMTP id o20mr13604519lji.493.1614724816232;
        Tue, 02 Mar 2021 14:40:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614724816; cv=none;
        d=google.com; s=arc-20160816;
        b=oDs1Y00w9vfEFG4JJfXu+6Di7VEFZFpreIrQ/Md1TpcYcd04M+ou948d27LUhU76oC
         MguV7HCwlNi5Ug3JkXfbgQyBn46zpbHoaiot0/rYR9hgdf6XQ+Z7+XEDaaWvwonrs2ne
         gTnkJaeRBkIg/zRbbiN8/Cqe3Vs+dAVuPQWJLZ2Na0e9FAIMo/d7qg9N+SEh1LR/J9Qp
         F4rhqVgUDy95ncIFpdeb5L1KpmCC7QkDlcXuhBJKwOgHbSxbT8676Os4GW5ZU4oXOOHD
         CR/9t4x/xbC7oJF09EJVbDhgyyX+FaziLPrTzmrw1SGidCLf7ArI2TlOjBDaauUsOrYW
         spMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2p9MbOkqBnD2DL+deut9cepxGqhyX+A0rBZZTNWQu7U=;
        b=LbaRJuqK/8/mkEUy8QhSTWKuDheYZzljtibD0P2C7S5EK7go1ld75BBSz3+clOj/3j
         sNkAgxMfnMK/4zFwaG/9YFHfm61/ILOJm/P4wR/xR4cYneCfSm9co/DHp9vsQulfceFe
         wSEvgqJ1Gaht120JbW+S0LBza3/rDISyCvkW8VDvsavMUk3dnFcnQNfkqKXqRQ67HCXS
         T2ajIu+Zi8fAG7DrakG8bRq2qf1X66WPpc+WKjD87UlASVGdoiEoKSt5kIq8eT8boXKd
         MC46ayjwRIMaCVNfjhA/R8RSp4rIzVNq3F9JXvUnjviaDb9/+FMkwtZkjksVwCjd3zGw
         PhGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=THbki3q5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id o10si575843lfg.12.2021.03.02.14.40.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Mar 2021 14:40:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id q23so26106799lji.8
        for <clang-built-linux@googlegroups.com>; Tue, 02 Mar 2021 14:40:16 -0800 (PST)
X-Received: by 2002:a2e:b008:: with SMTP id y8mr4393794ljk.233.1614724815853;
 Tue, 02 Mar 2021 14:40:15 -0800 (PST)
MIME-Version: 1.0
References: <20210302210646.3044738-1-nathan@kernel.org> <20210302210646.3044738-2-nathan@kernel.org>
 <20210302220252.ulvlsfyp4ordwrky@google.com> <CAKwvOdmR_p-zbrTUmbObmCVKBcuNLpg_V3NqLeYsEK4xNHfYOA@mail.gmail.com>
In-Reply-To: <CAKwvOdmR_p-zbrTUmbObmCVKBcuNLpg_V3NqLeYsEK4xNHfYOA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Mar 2021 14:40:04 -0800
Message-ID: <CAKwvOd=MXsvTBXvyqDXo8Fr1+-UdqnDGY8JzrD-wSxdQbvHJ5g@mail.gmail.com>
Subject: Re: [PATCH 2/2] Makefile: Only specify '--prefix=' when building with
 clang + GNU as
To: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=THbki3q5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
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

On Tue, Mar 2, 2021 at 2:09 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Mar 2, 2021 at 2:02 PM Fangrui Song <maskray@google.com> wrote:
> >
> > On 2021-03-02, Nathan Chancellor wrote:
> > >When building with LLVM_IAS=1, there is no point to specifying
> > >'--prefix=' because that flag is only used to find the cross assembler,
> > >which is clang itself when building with LLVM_IAS=1. All of the other
> > >tools are invoked directly from PATH or a full path specified via the
> > >command line, which does not depend on the value of '--prefix='.
> > >
> > >Sharing commands to reproduce issues becomes a little bit easier without
> > >a '--prefix=' value because that '--prefix=' value is specific to a
> > >user's machine due to it being an absolute path.
> > >
> > >Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> >
> > Reviewed-by: Fangrui Song <maskray@google.com>
> >
> > clang can spawn GNU as (if -f?no-integrated-as is specified) and GNU
> > objcopy (-f?no-integrated-as and -gsplit-dwarf and -g[123]).
>
> But -g get's set via CONFIG_DEBUG_INFO and -gsplit-dwarf by
> DEBUG_INFO_SPLIT.  So if we say:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang LLVM_IAS=1
>
> So cross compile, use clang, use the integrated assembler (ie. with
> this change, don't set --prefix), with either of the two above
> configs, which objcopy get's exec'd?

Ok, I spoke to Fangrui more offline, and probably misread his
response. From our chat:
```
Fangrui:
objcopy is only used for GNU as assembled object files
With integrated assembler, the object file streamer creates .o and
.dwo simultaneously
With GNU as, two objcopy commands are needed to extract .debug*.dwo to
.dwo files &&& another command to remove .debug*.dwo sections
```

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

I ran this series through a mix of LLVM=1 vs CC=clang, LLVM_IAS=1 vs
unset, CROSS_COMPILE vs not, without issue.

>
> >
> > With LLVM_IAS=1, these cases are ruled out.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DMXsvTBXvyqDXo8Fr1%2B-UdqnDGY8JzrD-wSxdQbvHJ5g%40mail.gmail.com.
