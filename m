Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBPMYV2AAMGQEKLV3NZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCA8301255
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 03:38:54 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id z20sf4503383pgh.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 18:38:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611369533; cv=pass;
        d=google.com; s=arc-20160816;
        b=hx+muA2EVFxLA9JOuO/BBUQURt4mQfOJp5VLcL/BambGT5h1ePGOJfzZFcrjSyOz3X
         XCqork6Hw9H0TTSd4k5YTy0mWiBqP5ENIz5RjUt4WorIVd3VJcziJEbzTfjjkHp7znMb
         jLrH/4hkooSbFK9JSugrc7dCURUxzAcdkE0iSyuWP4cJRZx6g9zHfx+JyKk8WVjeo/5d
         4AwlnLfMJucC04VPqfyVHzHvzb1vZB+LWBaBAFQKDoEj5znryn563qiGHPFznH4QsJYO
         xQ9mJXFChF3U70q5DUXJNjiH9WYGXgEaDVR84PPr1sMNo3U+cX+P8av4OKC9ErC+Cdr/
         14cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=XR3Io6kzHczVaIDaNBcF1vHTII/kZc2hfsB+LIaGA6A=;
        b=o6QwToUPL2g3rgzRmd1vxe7eMZ/oXCSGItjhr7k+ifzVh2ZlaFvjpZ6onoMdTo4KX1
         VsteAqqrCAGbyGW4qD02JNvcoaA5Fk1fSOF9k8sDMpc+kmkaApe48lnAWdmZSrwKGk3U
         npWzdM3DlICaAnrV7hoI4ijeVpe0WQSdmkEQADfy5tFFJDnWOYOs0NJ4IIunf2/GMRJA
         LzmZMndZVAoT02b1YobqhBpPwja2LvohU7n+ZqIalsAXyIrkT4oBwRpqT72QbapB7Kve
         toBNFVCZt4ud09fDj/QHdPJNEuvtPnXYsLh108RfAv1k33ETdQeNNhtAj1lquv995m2E
         K+Hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AcAMzJqV;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XR3Io6kzHczVaIDaNBcF1vHTII/kZc2hfsB+LIaGA6A=;
        b=pbMC6qonSSc7Isil4MjIqprjWSUsoOY0IUwoYwMH/e79MYnkqY3xIuJTUnqyRWoMJ7
         QzGyIWuitQgQL/A/7Ybc5mFukKqLkHMAHOuSHgW3mnVkJkBe6emPXkQcDq4T36wd5ZW5
         DOizkb9UzbjfeCfUYKLv9UAxGdBwhCDOjnJ9ChtMSKA2YVn0wrDYs1tywlbbmsG2s7ZF
         fk3CETfyJ2wxWWn+QBZU+Kdt8ip8YrNRwPg6VkJZVLMVe4V5AKyOWixf7B2LsOzdlI5U
         KGFgW0PSKAZcANciR9+CJCz9Eti323vSyNejtyeJNkwWkC1WAlkAS63EQqctnBkVw6xV
         lkQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XR3Io6kzHczVaIDaNBcF1vHTII/kZc2hfsB+LIaGA6A=;
        b=d39XSeaoppywlLgjvi401YPJLulKlbzJjtrHgb5MJFnlfpBY+ZlMchyyVdjz+Wnp7A
         XrDBGpNN2g5hi9UpG76YwJ/NUxgI2jyL/xX45on400afSKp63mqbhiLwc4SZ3SfmlCm2
         jHAlkr5H5ukmfLPjie3PJdxkQELXpe8NBBXQ2YbpOLhJprZgA7kk2g2jDxgZUeMvGJNo
         r8z5hWWqEbis2oXoyuZVPMTsP+kJpBUYXyVjoFYjXJ9L8za5F8FpdVUeFFAfAbh3KVez
         e4RgcflMv/VnDSbBqnwq/xWz9WpQLR3wqNMw0scYcxRemf3GJBEcvhlBx9hluqqh6wzS
         HLpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XR3Io6kzHczVaIDaNBcF1vHTII/kZc2hfsB+LIaGA6A=;
        b=pt3TDpkf+n7F/66u2e7ejj+Bj2zCrfc8NMXwlKz4P8J5KCngU377zP8zCVbpqs2BVB
         O/t67LULZNAnoHbcjXe4t8beqClCLXvUr43ZKUK3KDu4319gL9y4zDMPsspEydI3wVIy
         0MileHpbfBIUzRFndOdMIdUuXtxBZ3uLyiOujMwWc4rVVuQaO3otxSdhMpgF8yyWTsMl
         SOS2mQBdCN7w4wxA81DdR8VWghw3Rsza9N3/zbkh2snz/G76naoV8Lkaqb7vtZJa8GPA
         SLH5EfrglcyrdHLAFaJd9Ge2AiFh53zDi4bulToqI5P34JbLXPd1+iYhYXyv3Oj5CQg/
         KChg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309ATWRtkC8tADFHkFQB4Nycqk6jJy8Mp7UbGUc7eJOkMW8DnPJ
	2ahOuuuEtinDFxaFza6tHws=
X-Google-Smtp-Source: ABdhPJwrO7l/xW3KefPLrRimiAfw8oOo1ylxre0CJRxR3g9aBb9nh9/SjW+JPmJ1OaJq98STyGJMrg==
X-Received: by 2002:a17:902:ea0f:b029:de:5fd5:abb9 with SMTP id s15-20020a170902ea0fb02900de5fd5abb9mr7661464plg.46.1611369533438;
        Fri, 22 Jan 2021 18:38:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9286:: with SMTP id j6ls2778230pfa.7.gmail; Fri, 22 Jan
 2021 18:38:52 -0800 (PST)
X-Received: by 2002:a05:6a00:884:b029:1b4:440f:bce7 with SMTP id q4-20020a056a000884b02901b4440fbce7mr8343636pfj.20.1611369532696;
        Fri, 22 Jan 2021 18:38:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611369532; cv=none;
        d=google.com; s=arc-20160816;
        b=irB0R+uY/7YnklSkVv9axw8oFOURi1Cn2KuaG4v+M2LNIw+Fjv5rCMRGEmM/Pke2D8
         WBKBpUgkujsNsY+ihGoXORtLDGoYFdntn0Zmw3kgLMhDskDX9KTMOvTE+55iIno0STdn
         eSk1gJySoBcCztTujdFZy1IZvd2/BVmIfnv8mVYxw8jRsES2PM4AXOf0P8puhkVV20MV
         YysaGUtfHyZ+FpJ7VePj+0fUGpcAsO72NnkVJ1oXgnRS574RgwPzo6I/PBRBMzQ1YBct
         RMPLALagVuYf/CdWHO1LHALur+4wR8NGhsI9m2jGo8G8iyHt/dJmNXiMWTaywuFYzDzL
         zX4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=z/8jFLG0+YUsszHNMJ3nH9uwKAB96HJoCzzgF45TSX8=;
        b=wm86AcB5oop0WleaWlG78G0oJqJ7bvS9niEGvgdhAS1YVT0MSc4mJ3V0zxd9UrewVY
         7n4tIWkNiwqQDQcfMFUtfF7gdPw5amQk+vWwK2QsohbzHEGWryO6Cp4Fjs6YMAMIBsBh
         RrhzGW6PadfkfhzopqOYex1PTYpTEzfAnWCA63alt8vdtCb74QBCrxquqWfFPgpjkwLU
         y3infHu7SXuM3EnON6jNuqoNGLJahiy4jFNoxUeEqjC5iz+CzWK0VccilKQpztZy1Kgq
         jMmnEprkWLdoHx+6qIsnt8F3bze2DlwLnKuepaPbNlatbJLab4dyqdtItwPM5ff5VAYp
         +x/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AcAMzJqV;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com. [2607:f8b0:4864:20::d33])
        by gmr-mx.google.com with ESMTPS id d7si576049pjg.2.2021.01.22.18.38.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 18:38:52 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) client-ip=2607:f8b0:4864:20::d33;
Received: by mail-io1-xd33.google.com with SMTP id d81so15283003iof.3
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 18:38:52 -0800 (PST)
X-Received: by 2002:a92:c80b:: with SMTP id v11mr3961148iln.215.1611369532214;
 Fri, 22 Jan 2021 18:38:52 -0800 (PST)
MIME-Version: 1.0
References: <20210121160115.4676-1-lukas.bulwahn@gmail.com>
 <CA+icZUV3p+yQYXn=iVseNNQwUSvoMwztLxNDOFpdFb731kDOJg@mail.gmail.com> <20210122123354.GR2696@kadam>
In-Reply-To: <20210122123354.GR2696@kadam>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 23 Jan 2021 03:38:41 +0100
Message-ID: <CA+icZUXxJnhXwiFAJ+f23xWLq-t6ZmF6X_wJPNaEoCVqjP4N=A@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: adjust to clang-version.sh removal
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	linux-kbuild@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Joe Perches <joe@perches.com>, 
	Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>, 
	Pia Eichinger <pia.eichinger@st.oth-regensburg.de>, kernel-janitors@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AcAMzJqV;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jan 22, 2021 at 1:34 PM Dan Carpenter <dan.carpenter@oracle.com> wr=
ote:
>
> On Thu, Jan 21, 2021 at 05:15:56PM +0100, Sedat Dilek wrote:
> > On Thu, Jan 21, 2021 at 5:01 PM Lukas Bulwahn <lukas.bulwahn@gmail.com>=
 wrote:
> > >
> > > Commit 6c8ad4427f6e ("kbuild: check the minimum compiler version in
> > > Kconfig") removed ./scripts/clang-version.sh and moved its content to
> > > ./scripts/cc-version.sh.
> > >
> > > Since then, ./scripts/get_maintainer.pl --self-test=3Dpatterns compla=
ins:
> > >
> > >   warning: no file matches    F:    scripts/clang-version.sh
> > >
> > > The CLANG/LLVM BUILD SUPPORT section in MAINTAINERS intends to track
> > > changes in ./scripts/clang-version.sh; as the file is removed, track
> > > changes in ./scripts/cc-version.sh instead now.
> > >
> > > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> >
> > Good catch, Lukas.
> >
> > As a tipp:
> > Next time you can pass '--subject-prefix=3D"PATCH next-YYYYMMDD"' when
> > doing 'git format-patch ...' (or whatever you use to generate the
> > patch).
>
> I've never seen anyone use this prefix before.
>
> What does the date really help?  In staging, we apply everything on top
> of staging-next and if it doesn't apply then we don't investigate, we
> just say "doesn't apply.  resend if needed".
>
> We may as well just say [PATCH linux-next].  No one is ever going to
> look up the date if it doesn't apply to the latest linux-next.
>

Is there an official rule to label patches for Linux-next?

Usually - when I was more active on Linux-next development - folks add
a "PATCH -next" to the subject.
Of course, this needs additionally a hint in the patch/commit message
against which Linux-next release it is applicable.
Linux-next releases are highly dynamic - a patch might be applicable
to one single "-next" release.
Git trees come and go - are resetted to an older version of a Git tree.

As LKML is CCed - think of the hundreds and thousands of patches
coming in daily.
So a more meaningful subject can give a first orientation.
That was my point.

My =E2=82=AC0,02.

- Sedat -

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUXxJnhXwiFAJ%2Bf23xWLq-t6ZmF6X_wJPNaEoCVqjP4N%3DA=
%40mail.gmail.com.
