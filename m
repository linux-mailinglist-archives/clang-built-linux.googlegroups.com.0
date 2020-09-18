Return-Path: <clang-built-linux+bncBD63HSEZTUIBB35RST5QKGQEDUHYMYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C2503270717
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:30:40 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id v131sf2039358vsv.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:30:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600461040; cv=pass;
        d=google.com; s=arc-20160816;
        b=vx8ncUXaIGyrIpKbwXrj7AVE2OMZHpaEHdi2UuQ6CHh7cckW6hk1D27xnjjwwZnGyw
         m/isFE7Ui9gmtMP2CHo4gZfEkniq7maA3yvvhW76SDLo89xDx/LiRxGAAbvoLyQrtEqP
         9fMMPdnXs/W5KRovtymfnBHP8fyS2cae48HfejOMmrzFM9Qc6MILu6yKPUNYd0p7RkDi
         at3nuGH7K7dic+re8kBm4RdicwNNPwEI7AbpfZSCC0/+Th91sKRBTMgMkKLZzhrlnQIw
         x+h2VSDmhLIlCY5GWCZQXnApbYXDYIZw1o6SuVybnLFWA4A1GX9jEYDFxtjdAn4jMNwQ
         mhrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=YDWWLimCvJUwYsxUqVDbNxXokH4TyOrfHhUgTtUJ8bc=;
        b=ELb03vfBFQp/qn74yL7Mgt/mTGj++iaM8rz/VYdSj3uODYbWdjBPyM6+aOFfwLUlbD
         nQ6BI4CSVTEi0yOd0tFrBkT1iipwgEbDbzqVkwjgnP2BcxPJJUNXUDx3SEgMGqQd4F+l
         fPKaOjkb9rqOSqiEiHtRjUr9VXgz2q4kFtIGB7IQDic67ak7FUra6LLpAplWknZuHEyt
         kUSuaTNd7G2MuzPy/4Vd6DuIMUoDKljhcMDRCbxWSu2KlmChHXMhXM1VZp0O/XluFPo+
         Q1rLvllpskT72wuXI434ai4Y3JazoVp/7mNPtDSaKwSzBSIUxBgtscwb+Wn4HkLgww7h
         7H0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1IP8r9cT;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YDWWLimCvJUwYsxUqVDbNxXokH4TyOrfHhUgTtUJ8bc=;
        b=QLa6laBkf6k6t2AeL/Ded+cMVV/PIBMCuDykhvUm5oNhD1iPF9ZtnAC1FOa2Cgxy2y
         j/ycPUoeKJjEQAGLhgI2eGS6cUhcCD9iNcFB/SFRaKmHEXqWDVVr0cTm114pnxUe+bgc
         pei6ZD9dtD7Ofok9jzwFtTDL/4Q7AYXH/Zh2CuETar7RZztFEhsBXOa2l/LehCpj8fur
         Y2FSUfcY1WdH/5UxMOHSsIoE0YmM2zcKV3cGfRHa90X65HJz7G+sRCK8lPXpwZKtjAXp
         jPVQGyfZv4Wm2eAzArz5slEm4ZczL0bXhJbuJRXXJyLDOvBahLUS9XrHvO2/q2Istnao
         leUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YDWWLimCvJUwYsxUqVDbNxXokH4TyOrfHhUgTtUJ8bc=;
        b=ZqcWwFV5gVYnyDbYOQbE7n4ohW8flQ+/S4pM07dIdFOAw+N8h92Su6SW/kLqyAZazG
         dvIW4cHa+O37XVogpWD2k8LNUAkTmontxAMJf/Fx1QiQ2VoojIKsFoO0Wh5yUdPpyaMr
         upTMcQQdYcFJYg7SmA34uOGdXmNvEqLzYAT9Fkv3SHowrbCF9XYqc0chT3Unx2m6ARgG
         0RpiT3Ars3AtDNnZh76Eryzw3AFh/M4NsZEwgV/33am5qM+b+1HvKjVk5LyKY6WcBPig
         Cj8RLg/YtavVY0pHv2CIk3y6pR2mSDboEWDCq5koaMEV5dG1U38wiMfbqzkLA9razdEM
         qJ/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533V48/f+CfN3pLa7W/2XnArnfV6hxo7O65gRopYA/B3BfKqK49u
	zhH/fAU7eSKswD87sTI2Sug=
X-Google-Smtp-Source: ABdhPJzHSwlHt+X1pCJyQg86y2BMgjtmFUOP5K/2P2QUXTnfxiqA/97W4DYVVbRnYVSmRqRnJfh+dw==
X-Received: by 2002:a1f:f4c9:: with SMTP id s192mr13040842vkh.16.1600461039888;
        Fri, 18 Sep 2020 13:30:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:c505:: with SMTP id v5ls376408vkf.7.gmail; Fri, 18 Sep
 2020 13:30:39 -0700 (PDT)
X-Received: by 2002:a1f:e905:: with SMTP id g5mr12782825vkh.17.1600461039440;
        Fri, 18 Sep 2020 13:30:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600461039; cv=none;
        d=google.com; s=arc-20160816;
        b=guiGavVrR9PzQ8dt4w4BW5LVNrsGp/WwaHxkkuR/5dKzdsa1KclxKhTvRxdIv5aa0x
         e4mPgHjtCYZ1Owuu77cuBCXH0snsphH1lMikByTa2whOM7kfkpVGhJAX4pFkz4oJYpPX
         Bc1bTBcKjHoERtMzjBYhehFDRv4lJtxTUQsLzHA+lljkiMHz7QeCZN0j8bHCzmLAiXHS
         H8gHGd5ICiaWiCag5b1B7ZgtD4ovWCPt/Sxo7nU7PC56g5S3MyuKYc7zkL03o1ZvnzqN
         ue8hFl5+U3WlmhRYHZtYVRt4KAhnXsdPUkoYNpmeMa+Lzi5wDJb5/LieHFjlMwb1jRSs
         ztyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d2MmVvsz9cFmb282g9eq067oReQQikq0PR0EsAD+uJE=;
        b=YcnmplhP1bT714xuwyvJvCYWbOIWtLMt67LbPoJn0jJvqD6Nfm6SW4g/U2FmnBETSl
         uirTAv9ZH1h4gUCgcHwl2uCLNCysSJ4hkzaThyPbok9wGNmE/Ruq+7fU9kOnXlo6fmyi
         z/A4eJsYY2qXRFFyBuw8Db9ZpjbuP2jrXfmDNWvoWTvXITAn3y3kQBiudjhxK7cbqcCQ
         cfTN8iNPOoH7JXORY1mN6n4MWAA6iOrSLX5RWfPeZd2jsxMvdrQAKhawZUuaCuBN+oyz
         PNJHO4TtCXiATuA58tlgI9o6w79SOS8PHLvmhrAcHvI4Zfo666xzdQTOVGMdsDd0gv+t
         cgGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1IP8r9cT;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u25si304762vkl.5.2020.09.18.13.30.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:30:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E35A023119
	for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 20:30:37 +0000 (UTC)
Received: by mail-oo1-f41.google.com with SMTP id b12so1737913oop.13
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:30:37 -0700 (PDT)
X-Received: by 2002:a4a:b443:: with SMTP id h3mr25381514ooo.45.1600461037066;
 Fri, 18 Sep 2020 13:30:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200916061418.9197-1-ardb@kernel.org> <CAKwvOdmqFoVxQz9Z_9sM_m3qykVbavnUnkCvy_G2S2aPEofTog@mail.gmail.com>
 <CAMj1kXE-WJoT0GhCzGGqF4uzVNCqdd1O0SZ9xbHP25eQMCUsqw@mail.gmail.com> <CAKwvOd=G3CCwDdMsrbZvvUpNtxFL=FReovS4ProcRhZBQ73RiQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=G3CCwDdMsrbZvvUpNtxFL=FReovS4ProcRhZBQ73RiQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 18 Sep 2020 22:30:21 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFVn=8-1KPOTm5FxG9FoVWPMcnfzR6xVB96Fk58GjrQDA@mail.gmail.com>
Message-ID: <CAMj1kXFVn=8-1KPOTm5FxG9FoVWPMcnfzR6xVB96Fk58GjrQDA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] crypto: arm/sha-neon - avoid ADRL instructions
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1IP8r9cT;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 18 Sep 2020 at 22:08, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Wed, Sep 16, 2020 at 11:08 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Thu, 17 Sep 2020 at 03:53, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > One thing I noticed was that if I grep for `adrl` with all of the
> > > above applied within arch/arm, I do still see two more instances:
> > >
> > > crypto/sha256-armv4.pl
> > > 609:    adrl    $Ktbl,K256
> > >
> > > crypto/sha256-core.S_shipped
> > > 2679:   adrl    r3,K256
> > >
> > > Maybe those can be fixed up in patch 01/02 of this series for a v2?  I
> > > guess in this cover letter, you did specify *some occurrences of
> > > ADRL*.  It looks like those are guarded by
> > > 605 # ifdef __thumb2__
> > > ...
> > > 608 # else
> > > 609   adrl  $Ktbl,K256
> > >
> > > So are these always built as thumb2?
> > >
> >
> > No need. The code in question is never assembled when built as part of
> > the kernel, only when building OpenSSL for user space. It appears
> > upstream has removed this already, but they have also been playing
> > weird games with the license blocks, so I'd prefer fixing the code
> > here rather than pulling the latest version.
>
> Oh, like mixing and matching licenses throughout the source itself?
> Or changing the source license?
>
> (I've always wondered if software licenses apply to an entire
> repository, or were per source file?  Could you mix and match licenses
> throughout your project?  Not sure why you'd do that; maybe to make
> some parts reusable for some other project.  But if you could, could
> you do different sections of a file under different licenses? Again,
> probably a worthless hypothetical; you could just split up your source
> files better).
>

https://github.com/openssl/openssl/blob/master/crypto/sha/asm/sha256-armv4.pl

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFVn%3D8-1KPOTm5FxG9FoVWPMcnfzR6xVB96Fk58GjrQDA%40mail.gmail.com.
