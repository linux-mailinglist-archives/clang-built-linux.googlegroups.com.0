Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUHO4D3AKGQEACISLAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0101ED9A2
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 01:50:42 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id be7sf3233245plb.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 16:50:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591228241; cv=pass;
        d=google.com; s=arc-20160816;
        b=uoQu0bR2Hs0xbw55DdlgImByKOG1DilqVrezye45jBreMydM+LM6rgXiWqFIxU0eMk
         0vxsBlux0dFOGJR75iE/Fb7Ppw/QLXeb85Fly0/Ic7VW84TZtualkXL4uDN2caR/n9A3
         WSSRsNrlBhyf3rer9gh5CH3IZr1incWNuxCEWM4IrnAnWorvpy1g+Ra7wzzPMpv2w2HB
         Q3hQys7Cao1yqSoSsHG10ORgQIuig+WyfYdi4VOFMY831zs2mYLHWND34pZDHaZVIbNE
         hAHMSZya596sOwrrWdSsLfGK3Ygn6nTMKrkDARghaEwXRmvVHVl+jzWV0ohvNhxGZO3q
         s4iQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=L3XUQ8QVbXMZGe6rYxS7tVHTGCa0zESPXAZnPJ1BFtY=;
        b=eUW4XaNyh7yPUk6x3ZpqTSgCGCUrqQ6uG0B4UHflfekXDzvoYTjvOftcpdyCbS40fJ
         l2brOhKmlZK1IguM4/JvRIhQXFn+gOSVS+E4ik+ai5Yaf8QUPF+s3WuD7FjF9nUSfSLr
         DHkxarhXOxMIx7JzEjKgnayrlqCJ+EckCfeyP4YPj/IdeDthu6cWdkJ4sur8AGTLR4qy
         xvR50KkYQP1oPxR5JpWKnWf0EpFvJb7bq+HOi8OUcTkX0x2+viLxiZVgAYePIQPtZKjV
         rxCzqrNNWNSnDvl0cf05MDfU8SNLH8ku2vor3rMVfDq5aZGbYYOHekyc6zxuZ2UbfCaI
         YKHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R1yFr4XR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=L3XUQ8QVbXMZGe6rYxS7tVHTGCa0zESPXAZnPJ1BFtY=;
        b=ppE2E80gMltGzoBOe5FLcgnvxdWhdxvZ1R07m0c08SSsCVKanspe9s6wxh1puBBQuq
         3lxiR1ATZHOCqYlXk9EdHXd1UL2VP10xyQ8aETTaz9Hm3U5//wAs0EBdZ3YhVKlk3fD7
         0Ab747q9Ms5AvfOUDzqfTZJOF5YlUj4NqNu8KgffaKxhoYwzMwMaqR39vwKaFBB1e6DV
         jv+PhrfORWarZCGFtQEHFugMQAY2w09dTKcd4KxQ7VYifPbVtGD7A+8qfD4sFpWcA5tF
         jlnxVjH9Lxn1F5WAct63iLpAF/tP4L1/fcnv2KdKlp3l8l+tbM8+sGcg3EFVsv4UYLqL
         g4EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L3XUQ8QVbXMZGe6rYxS7tVHTGCa0zESPXAZnPJ1BFtY=;
        b=lEc40IkOGofv1LY06JDFYTHkNFcWM+dFY928stc8bbs70ZLAkn5fwvs4J/pkwLsovW
         sgAlLxBi5kHyr7wOFM/YUk57fIYSF6TqmFq3nNY1GwSns0a4lSbua/y56k6re8Ej3kfo
         KJVgkFgXBw2Oh54vlQ6MRmLHzyIZOifN9P7tZqrLqHHCL40c0YWb99kmUZvv+b3fT2Jf
         9TcDXGKvp9JaWFkO95fmMqoupBKwmuo25kETPs60ztndaDlXpLO8xN76auYxsmSlL64u
         WTaBPVFU/AFnu3CogFoiimlK4Mpe9Ybmn1Kpm6XNDOp/uCD7mCQsH1Lf02+fFT6PfElE
         5FHw==
X-Gm-Message-State: AOAM530MJxblhl6KoXawBKVqC6ge3YXydRRSteYXG7WbmMnehpqmXwxb
	C1yUHg3kthzCQ8NdXTyOM20=
X-Google-Smtp-Source: ABdhPJx+l85jIAnfcbG1/4ymllRYSgayBNZvzISN6izWaWNITLrzGKlXLopb7GBiFetQIB58E54KSg==
X-Received: by 2002:a62:194d:: with SMTP id 74mr1576815pfz.21.1591228240778;
        Wed, 03 Jun 2020 16:50:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bf05:: with SMTP id bi5ls1341825plb.5.gmail; Wed, 03
 Jun 2020 16:50:40 -0700 (PDT)
X-Received: by 2002:a17:90b:e05:: with SMTP id ge5mr2687248pjb.49.1591228240336;
        Wed, 03 Jun 2020 16:50:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591228240; cv=none;
        d=google.com; s=arc-20160816;
        b=cnuhz1KLJ5QGLXuISJSPRAG3ECq5KaQp7IAjIOQtbbLgzPmVH7Aus6nTUz0KtPHQZM
         JKAvzuwoN7kY7mg2rmItKzDbbJ4LM91QtjDZKtsdbvxvGD4sIue/3T1IkgrodNoBb50i
         YMCiQWho0x7qOS7gFzoT/YIc8s7W3XTUgxOE5IHAit7sg9cMn9KMKyXz9ZIkqnwG+wEk
         a1MWcF990IWJHzo4OIkzHRNRiFeVbm9Ve5kFHa3SkKMGoEqsZjIF6mQLlOioYl6Z1p72
         bIxzl3vwibHnp1xekkhfdwgi9ZQjpfZcL2NST25P+iYIM1p2w7Nputfq955jEsiRjB7G
         O/ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qWmO3ZI8i34h9spdSprmL/lLpf4pLXBU0GLhND3KfTg=;
        b=u2VbIpe1ubqgiW/h4zOO7eno44NiAE1CQWJ0kgpLuz73zXbaLQOlT+g4ro3L+ZOgao
         iDItgtpKhwfZNRcEvVk0u9AZ5KJrKXmp88UW8YXFULIOO0XmxH6Y2/Ws8vQK96H37WXd
         BGPkr1U8CCzCVIlg1mz1vjz+ltnFDAWqHRLaf48oGQOvBEaI5GQvHV3PkYhQdBKoU0Ns
         86GeTjMZKGiJQZnfufQFpglsiAUb7JNvC5LWq1+C8TCgDWoO6PrTEKua6DFgGU+vtNyc
         DVC3PxOSaF2uMW1T+ndl/INJQ5PU3ffGRopzoW25VdVbji/5VCYEmp5hLEFsXTqDs1xl
         PHlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R1yFr4XR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id b2si199151plz.5.2020.06.03.16.50.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 16:50:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id a45so1540406pje.1
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 16:50:40 -0700 (PDT)
X-Received: by 2002:a17:90a:4802:: with SMTP id a2mr2479012pjh.25.1591228239667;
 Wed, 03 Jun 2020 16:50:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200205005054.k72fuikf6rwrgfe4@google.com> <10e3d362-ec29-3816-88ff-8415d5c78e3b@c-s.fr>
 <20200207064210.GA13125@ubuntu-x2-xlarge-x86>
In-Reply-To: <20200207064210.GA13125@ubuntu-x2-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Jun 2020 16:50:27 -0700
Message-ID: <CAKwvOd=JYqzJthPqTjRZkE+8dDKDqVig-nb7=iYDS_UEKn3+Qg@mail.gmail.com>
Subject: Re: [PATCH] powerpc/vdso32: mark __kernel_datapage_offset as STV_PROTECTED
To: Nathan Chancellor <natechancellor@gmail.com>, Christophe Leroy <christophe.leroy@c-s.fr>, 
	Fangrui Song <maskray@google.com>, Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=R1yFr4XR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Thu, Feb 6, 2020 at 10:42 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Feb 05, 2020 at 07:25:59AM +0100, Christophe Leroy wrote:
> >
> >
> > Le 05/02/2020 =C3=A0 01:50, Fangrui Song a =C3=A9crit :
> > > A PC-relative relocation (R_PPC_REL16_LO in this case) referencing a
> > > preemptible symbol in a -shared link is not allowed.  GNU ld's powerp=
c
> > > port is permissive and allows it [1], but lld will report an error af=
ter
> > > https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git/com=
mit/?id=3Dec0895f08f99515194e9fcfe1338becf6f759d38
> >
> > Note that there is a series whose first two patches aim at dropping
> > __kernel_datapage_offset . See
> > https://patchwork.ozlabs.org/project/linuxppc-dev/list/?series=3D156045=
 and
> > especially patches https://patchwork.ozlabs.org/patch/1231467/ and
> > https://patchwork.ozlabs.org/patch/1231461/
> >
> > Those patches can be applied independentely of the rest.
> >
> > Christophe
>
> If that is the case, it would be nice if those could be fast tracked to
> 5.6 because as it stands now, all PowerPC builds that were working with
> ld.lld are now broken. Either that or take this patch and rebase that
> series on this one.

So do we still need Fangrui's patch or is it moot?  I'm doing a scrub
of our bug tracker and this issue is still open:
https://github.com/ClangBuiltLinux/linux/issues/851
but it looks like all of our ppc LE targets are linking with LLD just fine
https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/builds/=
169379039
though it sounds like
https://github.com/ClangBuiltLinux/linux/issues/774
may be a blocker?
Though I don't see Cristophe's
https://patchwork.ozlabs.org/project/linuxppc-dev/patch/5f97f7c921ffc2113ad=
a0f32924e409bccc8277a.1580399657.git.christophe.leroy@c-s.fr/
in mainline or -next.  Was the series not accepted?


>
> Cheers,
> Nathan
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/20200207064210.GA13125%40ubuntu-x2-xlarge-x86.



--
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DJYqzJthPqTjRZkE%2B8dDKDqVig-nb7%3DiYDS_UEKn3%2B=
Qg%40mail.gmail.com.
