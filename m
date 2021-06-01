Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6GB3KCQMGQEV2VGWUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 79737397B86
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 23:04:57 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id f13-20020a2eb5ad0000b02900f990d6bf16sf4806570ljn.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 14:04:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622581497; cv=pass;
        d=google.com; s=arc-20160816;
        b=LXJoiHFNL39sgFfIYQnUJrJ4NRoeQD6HLVHtdGAmXyBg2CI29DaHFSOH8TIkI9OqYL
         +Dbgnz1MWQN6TY3YxuruM/iKG/OjLqnX/NRqWaUNVek2vXzuJaMKmyTDea58jWJ11tHX
         vrh+CbTq/5UnlF9N401Mnbd1H/rkQ7s+9P9Rs3yBnJ5jdAX1mZJa5TnU3ECIVsJOrt3R
         K+7dIsNXztyVTlJyP+xmgYRe4eBxYxwauMNjrf4GkWF1pX9tuZB5sMR9AIePupzPXKof
         KA3qmP0em0lyVYCTzvtJJ7Cg249YrU+A+Hfq5udHiRBp3dKMaKV3xVmMt0LRlK7Nf+bn
         9YDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zYiaG+Sg3XBfR+u0hveOcM5GStheWahk5xgnt+mmIJQ=;
        b=yRQfdH8aq3QXEEHRpIfB/+G2CXnjyfFwcrJ+TYPDFF3v59SZyCTGNpbuiD2PapNo/E
         nzqYapSdJtOoDTjj0OG6bjGr80bu8kUbIt5KEI5N89PDlOXiVsc4jWjmNdsI6XTIsEuR
         cAePYggEOPRD7Rvymb5Mw9gEeoH8iFnGUFwIdLHpf5xtS5j0ojUVG3g4mYHne1XH1pne
         Nm4Bjl2tYey1I3sW2x78PTdD1dmRwkA2fQhkdZzak3rVTDHA/wAzUEry1YTFia2LCxjk
         9d1SqBhqBNe22Z/kuuKgDc/MF52GmbpVwoKc2RRh1TyS57kq35cyqiFBnfxdqR6ZodiA
         u6cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t0eflJF8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=zYiaG+Sg3XBfR+u0hveOcM5GStheWahk5xgnt+mmIJQ=;
        b=Eqx2sUMuZhqKsTz8UrGoVhbHvL0jQZCHBKSu27Z5N0d+kIpTMvzMvYczPMVMcZS92M
         DiPbDIVBdsfMqvO+ou+3iVK/wOkNEMVlyGoqyf/BjDEWiQXHrzQEQEBVfks1QAULDmVH
         Iy87/Un3+7xfNx9n8Ft/3h9MLj1bWeqmI3Z4tc7GDHZ0v07n4+eJ547yvStMO93lVm3B
         iuS0z3mo068b6V3HUwOUxQMVz5dEPmfP0MmZH2MnpM/+fZcRcK0mJ7SaMkyB6bAfUvu+
         xlBXQ4cvj6HBYmypI8GIKllVnC2ybcpMPzp5tc4UUgysxxdtLEceq4Bbm+7ghk6taPfS
         KjXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zYiaG+Sg3XBfR+u0hveOcM5GStheWahk5xgnt+mmIJQ=;
        b=pmoVUJbt50Sc29KE3ZAvlKqwtym5bryOTQnoAoMJTo4C0qVRplu+GB4xrU7K1jZX4+
         3gIB8F4t9QHhrQ+iGNCv4DPsxJB/CZM1TuLZvObfJZLU1B7I/nML5nUFzGLT/3774PGm
         UdA2f5w3aQJeD3bPzm61ejDAzX1dxe2eCBf6IjfBLLsmQM97kaNJwubm150KnfjWT5NH
         TSrKUZJ1UQtDgc4+g3k+oqjuSYf+jENI5cNZl0e1CrOMlo6m4F366YzCr9aDBbbN9q29
         XOMFRrRtVLJCCK7QbjVHIGzCgz9eiFX2yJOWQvcF0YfNKKCadAcxIp2dImw6j911mlDk
         uBAg==
X-Gm-Message-State: AOAM533IK0ESNVEDxEx8ZYVDO1ml+r4zGZfiR5PqiTDc5CRGMVG2PzVH
	awNyTAVgKhRKxDpkV/qfiv4=
X-Google-Smtp-Source: ABdhPJxKZI6dQJEm07kwkDs4AVCJRW6HLHJt2LAUDv9caKI0F5rN04a3na6pEomlN+/hJIUeJVR+Wg==
X-Received: by 2002:a05:6512:332c:: with SMTP id l12mr8624098lfe.454.1622581497032;
        Tue, 01 Jun 2021 14:04:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1409:: with SMTP id u9ls3597278lje.1.gmail; Tue, 01
 Jun 2021 14:04:56 -0700 (PDT)
X-Received: by 2002:a2e:bc06:: with SMTP id b6mr22590839ljf.342.1622581496025;
        Tue, 01 Jun 2021 14:04:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622581496; cv=none;
        d=google.com; s=arc-20160816;
        b=okQKaDEbA9gjiAZior9G1hrhvsnRqwYgx7/XkpTuwUtm5lcc2FJVBNMdovFYhlDag/
         gc6wTo9ietlcIitgnEwl9lPPndKh8cTZ22pWezAojOEyzb9SqjHBc4tlO6QM9O0Ezuid
         jIkQjgwlRVWWWZcp53NSm14TdXMR/GN4IfX41OVerqTa6+OgB8zhdH0V5Czg/mfvSc8g
         ES+8lot0Wr/96pkZLjbCMauZFT/BIQ9PTYMIjgzA8c+rHIF9XfzoCrZzaXIlrSfH9HGn
         T24H1oiUqk1lPGMlXET10Tct7mA2ik09Zm9B7o38IrtnGsgV0bssri9qpk1vEaLW/PzM
         C1rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1xBq/yJQb1ctA6qRFIUGU27xyMZ75sBIbNTD9efPBik=;
        b=Q6QAEdqLZ1A0iT8fDc1yH4AdJb5/Xd4CKVL3YTxyqZx/vSzbNlng0/7lYv/lFZCmzC
         NI3cDrTD7YyeIOP5h62j1whkRbz+W9V5A/hdiLRsEnEzMbWlKXjYoKBAFrKhpxtkd7sT
         lDjy6oVp0mMAODQQmPtNa9HEnJZyyjGQ5kESqbAHN5OTIEhX4dskBGEA8shBRUpzIZWn
         X5WveriJYy1q30G8AHTaKddFuz7eiW8ZxWIGLzHJX9w/Hc7oreN1KjfECaSnFSCJrPqS
         +kRS/jLm/n8UK2tJ7spfY7cBfsbDsaIEnjMdP+n1cVaKU3EUxozAIKvCuvVdnYJJF1Cb
         UwRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t0eflJF8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id w26si864852ljw.8.2021.06.01.14.04.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 14:04:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id w33so23958929lfu.7
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 14:04:56 -0700 (PDT)
X-Received: by 2002:a19:f706:: with SMTP id z6mr5933873lfe.122.1622581495442;
 Tue, 01 Jun 2021 14:04:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210528200821.459214-1-jarmo.tiitto@gmail.com>
 <2450763.S1xdTQMYLV@hyperiorarchmachine> <CAKwvOdmk34yQQow_kMLeF32OpfcP4O0SrPx3gMO3KQvgE8uZ9Q@mail.gmail.com>
 <3233714.pFP5IgcPq9@hyperiorarchmachine>
In-Reply-To: <3233714.pFP5IgcPq9@hyperiorarchmachine>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Jun 2021 14:04:43 -0700
Message-ID: <CAKwvOdnN+Cv5e1D5O18GkE6hjqaSAOKQHywDnJ7GzjPNMAsy_g@mail.gmail.com>
Subject: Re: [PATCH 3/6] pgo: modules Add module profile data export machinery.
To: jarmo.tiitto@gmail.com
Cc: Bill Wendling <morbo@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	LKML <linux-kernel@vger.kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=t0eflJF8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

On Tue, Jun 1, 2021 at 1:46 PM <jarmo.tiitto@gmail.com> wrote:
>
> Kirjoitit tiistaina 1. kes=C3=A4kuuta 2021 20.27.01 EEST:
>
> > Hi Jarmo,
> > Thanks for the series! Would you mind including the above in a cover le=
tter
> > in a v2? (You can use --cover-letter command line arg to `git format-pa=
tch`
> > to generate a stub).  The please explicitly cc
> > Sami Tolvanen <samitolvanen@google.com>
> > Bill Wendling <morbo@google.com>
> > on the series? Finally, please specify the cover letter and all patch f=
iles
> > to git send-email in one command, so that the individual patch files ar=
e
> > linked on lore.kernel.org. This makes it significantly easier to review=
 and
> > test.
> >
>
> Hello,
>
> Yeah, I realized afterwards that I screwed up at the git send-mail/messag=
e
> threading task. Sorry about that. I will correct all of it in my next v2
> patch. Make mistakes, and learn new things.

No worries; best way to learn to swim is to jump in the pool!
(Well...I might not actually recommend that to kids, but you catch the
drift; maybe "sink or swim" is the better expression?).  Also, you
should use text/plain for your email; you're probably getting
automated responses from LKML about that. In gmail, you can click the
vertical ellipses in the bottom right of a reply; make sure to check
"Plain Text."

> I will post new v2 patch once I'm done writing and testing it. Based on t=
he
> feed back here I will try keep it simple and unify the vmlinux + modules =
code
> such that there is no fs_mod.c source any more nor necessary code duplica=
tion.
>
> Basically it will be an rewrite on my part but I'm just excited to do it.

Better to rewrite it now rather than later, I suppose.

> I feel this first attempt was more like of RFC/prototype such that I coul=
d get
> in contact with you guys.

Yep, that's common for v1 of patches.  If you're interested in Clang
Built Linux generally, send me your github account name and I'll add
you to our org on github.
https://github.com/ClangBuiltLinux

> Just one question about copyrights: do I need to add my statement to the
> sources, if yes, then how should I proceed ?

Sure, you can add them to the top level of each source file you touch
(we don't do this for Makefiles I think).  I think the signed-off-by
tag is enough though, which implies agreement with the Developer's
Certificate of Origin:
https://www.kernel.org/doc/html/v4.17/process/submitting-patches.html#devel=
oper-s-certificate-of-origin-1-1.
For instance, I don't think I ever have added my name/copyright to the
top of a file, but that also has to do with my employment agreement I
have with my employer. IANAL
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnN%2BCv5e1D5O18GkE6hjqaSAOKQHywDnJ7GzjPNMAsy_g%40m=
ail.gmail.com.
