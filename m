Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB74CSL3AKGQE7MAQ7HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A381DA6DA
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 03:01:52 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id b137sf741187vke.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 18:01:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589936511; cv=pass;
        d=google.com; s=arc-20160816;
        b=chWCsJisAe6CqfZKhHH2zsyvds7JyVBjY/K+RRHJaAFhUOoUSZyJwshqn3ZCGKDMCo
         fz68xUKPq2dNVA4iGPE/Woa4nxcBBqAZHM5IKLZ+vQsHsvECr1tgKfm3zhP9hTdPeTMO
         flFQdJNnXQFgdyuJr7Yw5QbcjGjYweaksJOhEFhc6Y8103tPmyIAfMF90kvmxrEK3VK2
         L8DSjnd9SS1c25FDL5FXixv2YQagtaccDJYzYjFUKRZK9nGyLC4yfIlWtS4uer1YzdHM
         GLcBseNH8Di8YWIwswpEp795mmkQ3OJf29bq1k9Ive/k8LVf7gjWTRXKgJy/9UUy+ypi
         zwfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=vzNzFmIOR/b3Yo4EmIvtFpwJUJPeVQUSmuLgykwqBqY=;
        b=bu2Agwhbcmq/u518xGH51N4tWzkUSwjCANQ/pwb03+s7oiUU683OP1jYL5+ImZFGxW
         NBji7YJ5/O848o6jH1zP+b45YVgHxfHERKjT/hxGADpcCL7mfBiY9xu7lXxJPOjCchpd
         6KMX7FgoJbLw6y+a5o38kKA12unj5Qe1rIHhLQLfAfR7qIXxxrxCRO1NudwWRzOvlgBb
         G5W30nhBW2l73/Ld27XEimqvWmSfAPT5X1U9bfuCNZltmhPu6QJ2lfXN1c0yyV2iIqJ5
         qwaxynd4vZdjTU/Hfbk/EZxs+bJ+pBFTEIGu5ffBOpnshhYlnNNec3hlLlrfprlueBmq
         wNfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JUSfhkaK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vzNzFmIOR/b3Yo4EmIvtFpwJUJPeVQUSmuLgykwqBqY=;
        b=U9BCwFpVWCOfv/bkKrSmtLeXxH3ixJ5ZrHghgsKgnk/TobvW80vg6aO+M4JXiqTL90
         RHpa3gGP7yCnch3IAD+9DADdp4FRj1SIhVAYiomoLM6JCq8ERiqyH+LPEh7fYXvID14T
         ksPBF7/BXbsa1wq0h9tYo0aLC4/COD1tIJhDad/q07987OGko4YrAf2v0obcuVb+fNa/
         LQjZaNLzkFmxhM6XMnfVd43g5kpFevVElysAlerKnyXzVN9LlKF9BpstOCR6SsyEZe2n
         ZTvju9MiP/3oWVWMVJs+K5jGkNioODosPoKMDvoIlE66nFyr3hdWmV22Zfq1RlZOlOZO
         lPiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vzNzFmIOR/b3Yo4EmIvtFpwJUJPeVQUSmuLgykwqBqY=;
        b=reRiqt7gOj2rWs1iZ22iErCHxDR3GFeyfaeO4x1MCvantqHfcKoZz8eE7E8j2e8Lhi
         58NjhCuKlltYpE0/SW+PfM5vUvs1Uc+BLAwcqwyoxbGYiex0GJMPvmIsgdw5ZLB92t8z
         x0eNvAumb8EUTrM8OUPs1K3nxJ07gH4Jk7HYYoR5mYB8m1pbbQi6Vv+PH56sNlOIQsdT
         a+MpiBlgjQgV80sSNaSuN22LxxvUPURevTpSzyCVr/E0fUdi/Kx6SCk9UgvFvWyX6FAC
         YU27tf4Fj2GkQcNrEont85gVz/YADCvC66YaKixPoZojnelGrZdJRwZVH8Cj3MT2LOzC
         WGrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vzNzFmIOR/b3Yo4EmIvtFpwJUJPeVQUSmuLgykwqBqY=;
        b=gcJySovdbJ/+l6uAKulDURdog0YDwhFYcRWheCRqJT+RCRenNgvixW9Q4QuE8X1xg9
         MewdbjnDuo4Bb0O2o3swE4fem3FDB+lBaVhqfJym10AfsSWALott+Dw4AWAfG53Tzaef
         RtNfy3/AGiuUE4Rz3oi/qauMUTlllsK9mZ8XrqZ0KLqzBTLl2ThgqmQbKTLgDMI6U8NL
         9Efd7lkP9eySVefy7W6nW4xxIdBv+pPw5fTWkUEGmuwKbNqaYYe+z4iNEINPKLmQfSV1
         /GDPC0rpUh411KlQEFDVb5+cMpx+ZxZQzkpLrR52jJ2lGbu2TtzVZFpPvchF7YMRzMDj
         O70A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mn768ps50QX39uOHBb/vZqgP2pgzg2rGqEYt4VcNc0Tp4l5RQ
	OBQ3/x0xGyKN0rwpV2oItdU=
X-Google-Smtp-Source: ABdhPJwP4bPfyVCmx6aMoG6fdp3MGYuPBvue9kRMYWlitwwvcx5OaxKErxUJ6OnuSsy/GgNFZ6y3NA==
X-Received: by 2002:a05:6102:3033:: with SMTP id v19mr1454037vsa.217.1589936511329;
        Tue, 19 May 2020 18:01:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4103:: with SMTP id j3ls99811uad.9.gmail; Tue, 19 May
 2020 18:01:50 -0700 (PDT)
X-Received: by 2002:ab0:4387:: with SMTP id l7mr1832256ual.38.1589936510766;
        Tue, 19 May 2020 18:01:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589936510; cv=none;
        d=google.com; s=arc-20160816;
        b=kyc2oOP1ojF7pEoPlvAUgpe0SEvHUduMs1smoJpDkBtgVGtFj8qghr0zshZ52TQe6r
         Yg83De7HsQXL0gSxgJXwQpQleIr+b4yBRBomM4IF3LG2Gw3GZN0z+pWejVQoC5qVKaou
         owODa+PsEylEIFJ4+L9AYGO5R9Qr0R53JDw0HnqwyP5V7BcLi9T2rBVWgARvP+aJlS3K
         VROqWVOHH5Ayy5iBZ6a/39MjoV+vbMCIqlBdU3vFbyCvW4DfFxJ6wV+cFK1Bos8zts9k
         k7aUC0h8BUJ56F2Snallk+5CcscEhzxnhruPk/npQQ57W9yJYnc+yQIYg0bHt4Kn6AYK
         Ebaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=LuDq9zr9w9fCZ3XVYzjVFkV0xVlRh0j8ysT1ayVpGXA=;
        b=TtShgkvPYrYR19/1oZkYuKcD+B14tNOS4OjkAqN6GZCLHYD9WIh9FP7k0w74MBPf88
         VMX4saH3mFc8BL2aUcsTCWDMcmFN1uRxuOWuWF5KN5UalJeOg/3YDv62iehGoZiJcYmx
         PrHnRJ9g/EmWfW1UqTfz8Ftkoj6644qZkZn/QKKbK4mkQu2FD4kwr9ysKvu4c0wyzv/w
         nRPoKDeySBXz9h7Dnrj2LX9wmyAkNeglNyL8QAEJsTCScHrV8/g866ZYDQtk9Eoz4q9a
         9m+c5xGHcqbUbAXiv5PagvmCNAB2o0YdNUBSBSm5NXh06Tp/q9pCXWeST2v6ovUC5/8q
         5W6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JUSfhkaK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc42.google.com (mail-oo1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id i26si118999vsk.0.2020.05.19.18.01.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 18:01:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Received: by mail-oo1-xc42.google.com with SMTP id p123so375980oop.12
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 18:01:50 -0700 (PDT)
X-Received: by 2002:a4a:831a:: with SMTP id f26mr113422oog.72.1589936509881;
        Tue, 19 May 2020 18:01:49 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id m17sm342137otr.80.2020.05.19.18.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2020 18:01:49 -0700 (PDT)
Date: Tue, 19 May 2020 18:01:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Fwd: [CRON] Broken: ClangBuiltLinux/continuous-integration#1432
 (master - 0aceafc)
Message-ID: <20200520010148.GA3327346@ubuntu-s3-xlarge-x86>
References: <ClangBuiltLinux/continuous-integration+164415390+broken@travis-ci.com>
 <5eb43a0c8d43d_13fb5db924ca0104770@travis-pro-tasks-6cc9887df6-4zmjd.mail>
 <CAKwvOdmendjEgurRBAyi4R0rDZRdwfHjddS_pfOQ6761XiiFMA@mail.gmail.com>
 <87d07fcdee.fsf@mpe.ellerman.id.au>
 <CAKwvOdn0Spc15v3WUE_rdrb5UvaTXmOvjEJOsD7ahktQOwQk+A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdn0Spc15v3WUE_rdrb5UvaTXmOvjEJOsD7ahktQOwQk+A@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JUSfhkaK;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 19, 2020 at 05:56:32PM -0700, 'Nick Desaulniers' via Clang Buil=
t Linux wrote:
> Looks like our CI is still red from this:
>=20
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/build=
s/166854584
>=20
> Filing a bug to follow up on:
> https://github.com/ClangBuiltLinux/linux/issues/1031
>=20
> On Thu, May 7, 2020 at 8:29 PM Michael Ellerman <mpe@ellerman.id.au> wrot=
e:
> >
> > Nick Desaulniers <ndesaulniers@google.com> writes:
> > > Looks like ppc64le powernv_defconfig is suddenly failing the locking
> > > torture tests, then locks up?
> > > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/j=
obs/329211572#L3111-L3167
> > > Any recent changes related here in -next?  I believe this is the firs=
t
> > > failure, so I'll report back if we see this again.
> >
> > Thanks for the report.
> >
> > There's nothing newly in next-20200507 that seems related.
> >
> > Odd that it just showed up.
> >
> > cheers
> >
> >
> > > ---------- Forwarded message ---------
> > > From: Travis CI <builds@travis-ci.com>
> > > Date: Thu, May 7, 2020 at 9:40 AM
> > > Subject: [CRON] Broken: ClangBuiltLinux/continuous-integration#1432 (=
master
> > > - 0aceafc)
> > > To: <ndesaulniers@google.com>, <natechancellor@gmail.com>
> > >
> > >
> > > ClangBuiltLinux
> > >
> > > /
> > >
> > > continuous-integration
> > > <https://travis-ci.com/github/ClangBuiltLinux/continuous-integration?=
utm_medium=3Dnotification&utm_source=3Demail>
> > >
> > > [image: branch icon]master
> > > <https://github.com/ClangBuiltLinux/continuous-integration/tree/maste=
r>
> > > [image: build has failed]
> > > Build #1432 was broken
> > > <https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/=
builds/164415390?utm_medium=3Dnotification&utm_source=3Demail>
> > > [image: arrow to build time]
> > > [image: clock icon]7 hrs, 0 mins, and 54 secs
> > >
> > > [image: Nick Desaulniers avatar]Nick Desaulniers
> > > 0aceafc CHANGESET =E2=86=92
> > > <https://github.com/ClangBuiltLinux/continuous-integration/compare/87=
7d002bdcfe6bc5cb0255c3c39192e8175e2c19...0aceafcfcca7c4a095957efae0939a612d=
755077>
> > >
> > > Merge pull request #182 from ClangBuiltLinux/i386
> > >
> > > i386
> > >
> > > Want to know about upcoming build environment updates?
> > >
> > > Would you like to stay up-to-date with the upcoming Travis CI build
> > > environment updates? We set up a mailing list for you!
> > > SIGN UP HERE <http://eepurl.com/9OCsP>
> > >
> > > [image: book icon]
> > >
> > > Documentation <https://docs.travis-ci.com/> about Travis CI
> > > Have any questions? We're here to help. <support@travis-ci.com>
> > > Unsubscribe
> > > <https://travis-ci.com/account/preferences/unsubscribe?repository=3D6=
718752&utm_medium=3Dnotification&utm_source=3Demail>
> > > from build emails from the ClangBuiltLinux/continuous-integration
> > > repository.
> > > To unsubscribe from *all* build emails, please update your settings
> > > <https://travis-ci.com/account/preferences/unsubscribe?utm_medium=3Dn=
otification&utm_source=3Demail>.
> > >
> > > [image: black and white travis ci logo] <https://travis-ci.com>
> > >
> > > Travis CI GmbH, Rigaer Str. 8, 10427 Berlin, Germany | GF/CEO: Randy =
Jacops
> > > | Contact: contact@travis-ci.com | Amtsgericht Charlottenburg, Berlin=
, HRB
> > > 140133 B | Umsatzsteuer-ID gem=C3=A4=C3=9F =C2=A727 a Umsatzsteuerges=
etz: DE282002648
> > >
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
>=20
>=20
>=20
> --=20
> Thanks,
> ~Nick Desaulniers
>=20

This is probably still a manifestation of
https://github.com/ClangBuiltLinux/continuous-integration/issues/262
because rekicking the tests usually fixes it.

We should probably just disable the torture tests like we do for x86_64
for CI because we do not have access to QEMU 5.0.0 where this should be
fixed. I believe it is slated for 4.2.1 as well but we still have to
wait for that to be updated and packaged in Ubuntu.

Relevant threads:

https://lore.kernel.org/linuxppc-dev/20200410205932.GA880@ubuntu-s3-xlarge-=
x86/

https://lore.kernel.org/qemu-devel/20200414111131.465560-1-npiggin@gmail.co=
m/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200520010148.GA3327346%40ubuntu-s3-xlarge-x86.
