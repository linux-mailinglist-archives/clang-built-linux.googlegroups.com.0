Return-Path: <clang-built-linux+bncBC2ORX645YPRB6W75CBAMGQECHRBJQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 544AC346753
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 19:14:19 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id i36sf1522397ota.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 11:14:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616523258; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q+uMiAbbld1Z+LDqmcUBmtiXPCUGzQrikbQee21ZMen6UBhPWy3lTtsrfbzQCODdWO
         nNvRlrw42sy0cFgnlNDLi0pAVxX/zlVil6htMvZfNv+CieCXc5A07BO3h3M0tqv5hJFA
         JdOP0gBGJ9poasUvEbEY3+lCH5jYXN9tY9MU7dGMdOqPK+2vgyvazKj+mBIwmlO4kRLo
         7lI0XcutBVpqoloqsIHloM3ZPmQtjWTsCT7Cd9fKP5qVfS5zukkuwLrmxxObLv+RTdsJ
         e3gEJaqDsm9zqh1DGemFqkepneOGeQl93t3hL4fFvPaxdNZ2lCe2yaxJOL6FsxKENZbQ
         TOXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QRizCf05DdCgWNjQIl9Ey9UHnlfYpOvyjSmP6083eqo=;
        b=lazIoaz/LKVna4LlpbcIOUggnba445LQqUwhfHeQOKTZlxHc0iTc+vUyrwlNFQ1ODb
         IjLvC13RTziXIt3a9vGjb0FVY5sADbbGwjlXu2XArjHOuHUgEzgaeTwEdi8hZMyY6/n7
         pQNMtTeHFwo5SQw4bY+0leHxdX3404h4er7Cmh8sJt+HSNcd2/0+tgXZv1T04B5vrunw
         lrrwpBD/NFydU+e995WGKjqVuIeggwdyHIub6zuJBtJrgmDZC1AeSjqnPYcttSSZ2crK
         GHjgMuqsuX3c8L5kbH1LYXVDOOIzLDISlgVUhvaFkdLd3MQz9LYfFPTv+6PCQ9rWERti
         aKDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G9LSManC;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e36 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QRizCf05DdCgWNjQIl9Ey9UHnlfYpOvyjSmP6083eqo=;
        b=oJsNOxrt6QW9sEq50LjwmYhlRWxdCTXVmn5ljKKdgMBf5GXOsGnUt6wpyaCHdPFIF3
         PGlrXEVh7JjdnwiZyqIN7mBJI6NdhXKusTrgBQx6qy69uVTI53GzBfXkJFv/+2oAhOxA
         YpAAvpjJrZrc1gC0/GDPmIQXC4Tg/KdP2R6jdbphEzrZ2zHeQdP/vwVN+JRFskNjLyZp
         uSOmObxaE6lxD225qsVmvz9YwIerGPLyWJyDnhEndqX9jPT7rHuaMaQmrI3dqmkpizy8
         2dWInpcP4fwkr1WvgIpvOgVEC2r6XuyTfbTsy59fpzoJyM0rZ6GEKEf94tbiQt0fhdpY
         3yDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QRizCf05DdCgWNjQIl9Ey9UHnlfYpOvyjSmP6083eqo=;
        b=Kq9sIJ1UzEWmX6mGlScZWGwLEXhQjY0ogbx8HztA7z3BIuNW9kVAzeagCHE5D8j+F1
         rDmFJ2G2yP8Vk5wL6escdz9kV4G9e10evmun1VIaIK3H+RCwPR6vHwyXUTHXA+lJBfpo
         dHcZbm84vp685EZ8wIF8f+YuqaCJoSCZawtXbD5OZQLGX32AeHiwutEhI5U0uLwAE5kV
         Zh5ZQ553LzV7fgV5f7ME8Fgc5SxySlkx9DJG2+74oBWXLgOaRuRDI+jwB5PhwvLSwzS6
         +JPyc6TBApGrwt9ko8Sw7dJKBa9GzzTiPpjG0EUifwMLG+/2gLFL6N5JE97owNfG6EAQ
         34OQ==
X-Gm-Message-State: AOAM532gpeqjRDAgedM6s7jgTF2rqLY+5/BQAvFa0ihERXbVIJnbYfwO
	f4BbZO/fCZVhtXVsg8mZkME=
X-Google-Smtp-Source: ABdhPJwbjtX163R47CcAu4hBnOjKNjAGwMxMf9GNSZJjEfowEN7gXMbzvDnJYAu4vzEUSa0/f3tlSQ==
X-Received: by 2002:a9d:7999:: with SMTP id h25mr3076508otm.39.1616523258362;
        Tue, 23 Mar 2021 11:14:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2421:: with SMTP id k1ls2419461ots.0.gmail; Tue, 23
 Mar 2021 11:14:18 -0700 (PDT)
X-Received: by 2002:a9d:7f1a:: with SMTP id j26mr5338931otq.244.1616523257894;
        Tue, 23 Mar 2021 11:14:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616523257; cv=none;
        d=google.com; s=arc-20160816;
        b=RZtAICVtM3LBzdVCD2sYzU+Z6o3UBI8jBXCxz3Fu0atVM9GLtPKdwNzzj2WFZOc4mf
         VoLXnKnfW25RtNSiAqOBZlNGoJMNpsAU94XBnw3N/3CnFRB2fpHVu8CzC/aoUXnx14Jh
         g709GPry3lTY3YNcOtzYOfGz1aPTaTc8+TsQ+PsN+5+yafmg91fPAW+EuuM8xHYsBIo8
         sd0aNwoR1V8+r1CsD/BrTzKVfAt9jngTyD9Fjj+k+7cwIu0ig/XJ/XRozulq4izm4skK
         38hpyHrjR2EOAtsQmGZKc6pYZHLJW+CuQP14KgacLkOoYLh5EKRf4UJ+xgBqEvc2/0UH
         sISg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xTzROt3itpnrti9j03LZlWtci24fIc0v/ID50osegOI=;
        b=aWF7a0PmVeDALeKvajU91sNZ683xJGXcmRm3ML6n6UT9+CfE6oOqIdC10hYeFQOUIz
         wR3FbepuV6TXT0Cbfesn1RQKtocW+ZtCTenpEwHOsKHdpYna2obS/m+fdtt2ooUp4+7C
         kAO1FW7+CXTjkgWKYcSJMD4cRsm9zOMlfpPqr0/kqyLfjFypIxjv8zC01NpBud+Tf4Cr
         gy/VY9IhwGlFcbc1+qF6NlG+Oxegfk/oO4CLQYHq/2hei7K7HdQFamTGZI1z1BjQwive
         GfKT+Vt3Vj8tH30gwxke4GK/lRjry9Ej7R00saXctKYhtXHVNWKFoQ+F/Rj/tzJ39OIk
         nEjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G9LSManC;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e36 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com. [2607:f8b0:4864:20::e36])
        by gmr-mx.google.com with ESMTPS id w4si1020640oiv.4.2021.03.23.11.14.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 11:14:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e36 as permitted sender) client-ip=2607:f8b0:4864:20::e36;
Received: by mail-vs1-xe36.google.com with SMTP id l4so9900898vsc.7
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 11:14:17 -0700 (PDT)
X-Received: by 2002:a67:641:: with SMTP id 62mr4620421vsg.23.1616523257117;
 Tue, 23 Mar 2021 11:14:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210322234438.502582-1-seanjc@google.com> <CABCJKudMQ9CP1zhvywTf-_=PY5zmeviURR+=PqsMn_bqa_MV-g@mail.gmail.com>
 <YFoZBY1SqilWAmx4@google.com>
In-Reply-To: <YFoZBY1SqilWAmx4@google.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Mar 2021 11:14:05 -0700
Message-ID: <CABCJKucYHQ893LS1iCHXivPS05RMDN2BpDFou306jOEbWnt1Dg@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Merge module sections if and only if
 CONFIG_LTO_CLANG is enabled
To: Sean Christopherson <seanjc@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G9LSManC;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e36
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Mar 23, 2021 at 9:36 AM Sean Christopherson <seanjc@google.com> wrote:
>
> On Tue, Mar 23, 2021, Sami Tolvanen wrote:
> > On Mon, Mar 22, 2021 at 4:44 PM Sean Christopherson <seanjc@google.com> wrote:
> > >
> > > Merge module sections only when using Clang LTO.  With gcc-10, merging
> > > sections does not appear to update the symbol tables for the module,
> > > e.g. 'readelf -s' shows the value that a symbol would have had, if
> > > sections were not merged.
> >
> > I'm fine with limiting this to LTO only, but it would be helpful to
> > understand which sections are actually getting merged here.
>
> It doesn't appear to matter which sections get merged, the tables only show the
> correct data if there is no merging whatsoever, e.g. allowing merging for any
> one of the four types (.bss, .data, .rodata and .text) results in breakage.
> AFAICT, merging any sections causes the layout to change and throw off the
> symbol tables.

Thanks for the clarification. I can reproduce this issue with gcc +
bfd if any of the sections are merged, but gcc + lld produces valid
symbol tables.

Perhaps someone more familiar with bfd can comment on whether this is
a bug or a feature, and if there's a flag we can pass to bfd that
would fix the issue. In the meanwhile, this patch looks like a
reasonable workaround to me.

Reviewed-by: Sami Tolvanen <samitolvanen@google.com>
Tested-by: Sami Tolvanen <samitolvanen@google.com>

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucYHQ893LS1iCHXivPS05RMDN2BpDFou306jOEbWnt1Dg%40mail.gmail.com.
