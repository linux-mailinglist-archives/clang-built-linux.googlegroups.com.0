Return-Path: <clang-built-linux+bncBDYJPJO25UGBB77NQKAAMGQEXZOAKNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9D22F6D22
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 22:26:24 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id n76sf2521781ybg.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 13:26:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610659583; cv=pass;
        d=google.com; s=arc-20160816;
        b=pdjaSF+DBdY+5tbPUdxdEMEr5j5bwD6BaDQ/DU4RkiMbqOmElnsLlk3wu5YoCiKqjg
         lgC4cIPM4oGnVZgI9Cg+CNe/R4OnyTj6NVYYL1EdD/AT4EI5+DWoj8HavTSl0P+MTzcI
         SdLEWshkK8nYHl+YBuWa1RhqLOAZj9gw0KJ30/S6lStRyjo1IKFJPjnuIYPR7xWSPQD7
         sgBnnt4nBNfm9S9BrWpbV3lWQXNqzyi87yqcMLNLDI1ByGWauuCOupAKPCpGflp2R82q
         NSIFFdvvAZff+qIGl9BL6XwURGm26JCKeqcIIJbUtTuyaFlHK97K7YVGoGcq6AfGCzB9
         SWPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QSF18A+hiFIuC/9YwJH6s2jxjg19n31FdU5noRv0iaM=;
        b=RhWDxZoHWaeumhuQypWfg85ozT0I+mkzhhX7CiHnjeQHPbW5BcDbawk+s/HUEyL2d0
         qYKQDQSZbmIvhCyjmJhcGRtU8t/ZtrA+DpTqd4qBS+8LMsjY6IKbe5kUB6X6EtmBYfxd
         qlzduQFJpMGubPnKe1NSgFd7xjH/z3bXTWUlTrsNKKZJMUu6bBOzy319Cc0pNp96yxCY
         ew9tW0IR2CXQMaOmVMjXPkWyEDxxGrpjWHbuHWZmDfVjNISkW82ZTvKzbnnnfjr99Xv7
         hFtMf1zLo4/tRfDJKPHLzD81vVzAG16u/5DZXRnQNGWJH9W2X9ezFqZQF3D2MQzqvGLx
         IeEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=efgvNNjU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QSF18A+hiFIuC/9YwJH6s2jxjg19n31FdU5noRv0iaM=;
        b=oDyP2CrYymaEJUVpcJtLUu+rwKitrQsJ7cgaA+p/v2GQdfASqRRi5918zXC5ksUBsQ
         czEFg32AGk/1tsrVJlD9EQVr6T3vhU3m+Gl5m+ne3sKaBODMVKaEjVJM27jumgb0ak2w
         n1KOubfRjUgiNTLFCuZG44+QCulwaY7PBunhVZz6V+XYUtlxP6Z6JzNcV4BL014Onpc1
         WYJnVbWxoMluRYsS6PoEYSp6qIv6WAQ1wOyy28KxBZmF4f8DS6Zx5fIC6ETroysi5iac
         A9Ahw47dlp1V7AyMt91eYriF/RZhOX3Vi+CKdiRsi9gb9XtyHDfcaxWCyDLW4aJyXn1m
         9sYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QSF18A+hiFIuC/9YwJH6s2jxjg19n31FdU5noRv0iaM=;
        b=GWxiF6AywoAkKiDTgyfVzAtoSQe5+JjSjwCn2NkYN82xt78MG+WkoBMDuXHpbFehOK
         Z0L+CRcgI9FsQ6Ay2cOah9W2y9sVyq9eTS5xx6kp1t8zox/imfVO0/tRW0juMxSY7iuK
         N4cd7T7Z5hkdpOc1Bvi88fLOr0/5l8T6uREk0E684cquEAb91tKIHr/vqeQ9+tr6o6Ct
         HY7jeN5rAeRSq1jbZS25lsTHnGQp3RkjOTwdQFP+reAJ18mp8GAoQcBvanAkTWrKqiZt
         CbP6/Zn3oFod0VAKnkEjgCJNjPMOfohh4vST7MahHPjCsMFNWDYdldLqLRfK9nekLH0C
         Ao+Q==
X-Gm-Message-State: AOAM5332XuwFbenTu2F8hDBznnZFd7Py5nWtvfF62kEJYTQ6sAySUnSc
	fm9fXPeIDsjgaBjABgP2ZPA=
X-Google-Smtp-Source: ABdhPJz1gYX15MsFepy/dqpj55oqPYr8BaZVM3UN8uQastpqcht43phcILMmkdd2y4vneaG8ePumaQ==
X-Received: by 2002:a25:d3c8:: with SMTP id e191mr13691910ybf.234.1610659583167;
        Thu, 14 Jan 2021 13:26:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41d6:: with SMTP id o205ls3349887yba.10.gmail; Thu, 14
 Jan 2021 13:26:22 -0800 (PST)
X-Received: by 2002:a25:48c8:: with SMTP id v191mr11979128yba.311.1610659582841;
        Thu, 14 Jan 2021 13:26:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610659582; cv=none;
        d=google.com; s=arc-20160816;
        b=e1DogNmUZplnxGobTFD7e2IZWSjwB5GsKt4P/3OMyrutn2MJ0mvLqmZa672j8PT0Li
         SU3qgTQoSSpSztFCHipNT5JQRetBD/apvh0kZkR17mCmoc6bmXs3Hj1P499lGt9HINsv
         npRQ2CYtu/jJWJ2HmyhsYUfSdgAoilAlHpitVoy1TYKOynN5dlV6JxhPPg03wCNdLuVf
         9/HlRDVrFaimG1iM06EC1L+T9+L9+NqVjGyeqs75BR65lGwIzXcbvlAn+PQcF1Ezazfn
         soevPtCKWOdFk3T3QD42UgkxUbFdRMjWib+UCIArPIMyAg+Kf5KuFcP3n7yxGdlt22oE
         +aBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7YZRPblIyzW5+pM+ZmU3L8TmAj6aWnDHQ531b9FA4sc=;
        b=fgad9nOZ/JqmoA7SuJ8IZbqJe+pdcI+RQeS3PQ/2fb3zEhI4RKSQiQOGHoaUn8TEAM
         GXCOdZPXYelxAotnFmxzPzHR+88PaGLFe8R/on4MoS2sxsN/Lxwn5AMri3FUIKUI5C/z
         7r9vpVPKPTgPJxu1n98wwyw7DOcHjoj2lP3Pw9imv9f1cOVUepJXwbxIgPGV4EI7AX8h
         DHykkU3koZlYSvA2CCkh8iJ0nEuqZHjpJw5UEbieMMy5jRK3IIF3Co0UV9Wo72Bn2d7f
         l7Z3LWNOs2qXii906neFaYjAsmwkgOVQgLdMYuCzkjq1ajEfSH9KgMhM7/H5K8nBjxtS
         XNig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=efgvNNjU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id i70si483836ybg.1.2021.01.14.13.26.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 13:26:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id be12so3585528plb.4
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 13:26:22 -0800 (PST)
X-Received: by 2002:a17:90a:9915:: with SMTP id b21mr6759731pjp.101.1610659582307;
 Thu, 14 Jan 2021 13:26:22 -0800 (PST)
MIME-Version: 1.0
References: <CAGm4vTOdh3j7_9BPvDVLpMikktyEYY9T7P+zZP89F+eewiOeFQ@mail.gmail.com>
 <CAKwvOd=73XPTSQQ6YJG8_yCSXF49b3ZmFz-HsHDsVcGvO3canA@mail.gmail.com> <CAKdWgSyrB4Psfnd+Ft9Q7jnEBGw=CtZ=16c=UqguNxNcJs-fXQ@mail.gmail.com>
In-Reply-To: <CAKdWgSyrB4Psfnd+Ft9Q7jnEBGw=CtZ=16c=UqguNxNcJs-fXQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 13:26:11 -0800
Message-ID: <CAKwvOdn5aG329BEQaS+6YZchW7ApaG=yEQsnus2YWpPq6Vg+hg@mail.gmail.com>
Subject: Re: TuxBuild/TuxMake priorities?
To: Vishal Bhoj <vishal.bhoj@linaro.org>
Cc: Dan Rue <dan.rue@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Antonio Terceiro <antonio.terceiro@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=efgvNNjU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629
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

On Wed, Jan 13, 2021 at 10:54 AM Vishal Bhoj <vishal.bhoj@linaro.org> wrote:
>
> Hi Nick,
>
> On Tue, 12 Jan, 2021, 11:11 pm Nick Desaulniers, <ndesaulniers@google.com> wrote:
>>
>> On Tue, Jan 12, 2021 at 9:30 AM Dan Rue <dan.rue@linaro.org> wrote:
>> >
>> > Hello,
>> >
>> > I won't be able to make it to the meeting tomorrow. I've seen a lot of
>> > activity on https://github.com/ClangBuiltLinux/continuous-integration2
>> > and a lot of issues that are blocked on tuxmake or tuxbuild issues,
>> > but it's hard to know which ones are blockers vs nice to have vs
>> > something in between.
>> >
>> > Can you help us prioritize these issues? Here's what I've found:
>> >
>> > - Allow llvm-related make variables
>> > https://gitlab.com/Linaro/tuxbuild/-/issues/91 (blocks
>> > https://github.com/ClangBuiltLinux/continuous-integration2/issues/18)
>>
>> ^ #2
>
>
>
> We have added support to set these variables and updated the documentation:
> https://gitlab.com/Linaro/tuxbuild#make-variables

Cool, filed https://github.com/ClangBuiltLinux/continuous-integration2/issues/24
for us to track.

>
>>
>> > - ability to specify --git-repo and --git-ref in --tux-config file
>> > https://gitlab.com/Linaro/tuxbuild/-/issues/79 (blocks
>> > https://github.com/ClangBuiltLinux/continuous-integration2/issues/3)
>
>
> You can now specify them in buildset:
> https://gitlab.com/Linaro/tuxbuild/-/blob/master/README.md#passing-git_repo-in-build-set

integrated: https://github.com/ClangBuiltLinux/continuous-integration2/pull/23

Thanks for the heads up! If anyone on list wants an invite to the
github org, please send me your github account names / link.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn5aG329BEQaS%2B6YZchW7ApaG%3DyEQsnus2YWpPq6Vg%2Bhg%40mail.gmail.com.
