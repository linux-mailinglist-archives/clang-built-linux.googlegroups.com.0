Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBEE4S6EQMGQEWXV5TEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBA73F6EA1
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 06:58:58 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id s15-20020a056e02216f00b002276040aa1dsf6250378ilv.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 21:58:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629867537; cv=pass;
        d=google.com; s=arc-20160816;
        b=T95FnzlxxfeD9pKd360nLd9w5H2Am0FEI6/6eCRR506FVT2HtskRLDUPvXAtry9H96
         gQnKo1rj/BFbqJxJiBcix8QkBtXGaDPB6XHObJ2xpYRGxMz9XKO0E0L1/vkD5TnaJleq
         MF0no/f7s60viqwrMrxpJeM/QBcXYEw7kcQfozo3O6LHlptfGqhRKIPW9IWCnufom372
         91TUWefIjMOduNeh3lQxbqlF+HKNKMVf/xnQgDO087384rn3NwYgvqhrHtnJY9Jqua58
         oFXLG3Vbp3KfYqxjlJu4RawnQ8WiD+eWThIJVCfJPp9SBD3GpXtQz1jkdxBiWScEaQ8B
         EewQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=L1IiE2njlMahA1pMJf+4fETBZiKGJfGOdDdw982RnOc=;
        b=rU2GEOW9WhHLg6LzOV2y5zG/z7gP+jjsvwzVobSKGo3OLCCcKBQfhLthmS7IKNTgT8
         ivEDEGSRAeKfRnDCHGPWpj5i4HQRPSh6Gho40l4A01AGLWwb5GwIZQg0xc4zWSG8jyJP
         vTyoS2+m0zhmYijloai20n4/x1WQeIX5UPqcar8/FsWhk+oA97M80h5gXOcpSHebmFoD
         7gyo9/N3c05rDgT+0Z4/2K1TY+RDIzbXQgoe/jySi57Hj/a2z335IZyEsZ+nihDtlAkd
         JeHnA7iFU3ALaT2I3M+YiTh1AjEY7mh5bPVEIilvVz/7hqURptzuUJUlAnQS5v8+DgpQ
         BGUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ThqoW9Ms;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L1IiE2njlMahA1pMJf+4fETBZiKGJfGOdDdw982RnOc=;
        b=mOyoj0m5anvM4/tKp6Ir2AzomESPe3MdRelLvQysR5TTz/jDBfUWRi/QHJbtFEhxmP
         1j265N4R7kufCOgNxRCSvlzU9Th8BarAxatoWoLdRRR15zJX0PAqu1TkR+9S0ufQbyCj
         eapPpvPAu2Uj5nghIc3ij3bGVw/x0jNJ5TLJYNmPACwOlRXG7RZ1AYdmaE4k11fdgV12
         RRrCp+S6NfMuxci6n5gp/BADk2BalNYawbc2lXVJ5VNWFOgXYmOHhbatk9L+aiZuaQ1y
         6CFvg89Ml1N5cy+XrgdRZ8NjGJA1N+IGS3kdLaIRutUuAPgrZb0j6coH7VVbmGzd7TDF
         zdvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L1IiE2njlMahA1pMJf+4fETBZiKGJfGOdDdw982RnOc=;
        b=MD7ehTJpZcN8CsZ56tmZkp9mwtKCihUWzbrPi/YZerNFQeV1BbaQ9X4gYAgPO2UMqs
         If3kxJYErhK0RAqxFEN1z1PwZnYhPnjflZHkJhxKVYVRqhD1iGhE+q38uGfZP4taHmUX
         KmsIgMpUyZWUQzPn6ojW+5ydzy57c0SOz5PeHY9Lkq/hDox459gtZ9fTtA0Nqn7B/SA8
         Ds+Rlb4GqkDCLs4FjVcq177CAsagGbF1RpR64/xLzFxmo2nzEhFBFugkx32NTydmYAmb
         bLiuJS2q5+Kk0ltbn6QMMAgmcNX4B/kZSfXhnIMisI2qGZtUTy41Nt01Qznn5uksXjBy
         XDuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zLUChUnZyADGEqTwUwCgcFzZGOvYCjuHnlJiWxFsGz+yPuCpC
	KFDk11d+w0p2V/iJUg3h6fM=
X-Google-Smtp-Source: ABdhPJxRLxI2i3jgbg002pdTWeOuZ80hi2O0C4XryM/DN0O8tznWMC4GhlZqviZzlar28X/liZdZRg==
X-Received: by 2002:a92:bf03:: with SMTP id z3mr28075267ilh.196.1629867537027;
        Tue, 24 Aug 2021 21:58:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:6c7:: with SMTP id p7ls222696ils.0.gmail; Tue, 24
 Aug 2021 21:58:56 -0700 (PDT)
X-Received: by 2002:a05:6e02:1d06:: with SMTP id i6mr29536769ila.113.1629867536703;
        Tue, 24 Aug 2021 21:58:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629867536; cv=none;
        d=google.com; s=arc-20160816;
        b=ss2++98D8W1ADdbqOVwyK96142riA0LFBSV07k9i3lXCcKOu2Bygl946Bx4nT7CfIe
         4i/VXZ6ZFDoVa5YeV5N5X+zt6J7T6o1fSVBPx6p3V43g1GA0cDXEmGoGxUEUW4bUlc92
         rkCjDOp4KCE9nTRHjYT0VhaiZZu6VGrU+9WCPj/4S7Z2shx3h53lD0btK62HRPFfGpuk
         sRHofR0AGm+QghTDi85i/oLzI14uB0gdYlCNGoncuu5vw2mOML4N2sCx+yJLo7Xp2fej
         vZcE26A2rOU2/MvLy8RTBYx+ytl0Bg0YJ49V4IJ5GVp6Gf84F5prSKi4h7ZwYq8Y7p/A
         qH1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=2s1HaRNyPJiY7KgsOGbE/rpbydQNblyKJTWJP8FagRg=;
        b=pzVH2rKxREMMLtRad3uEJcDaQWgPWt0JQ/4Cp9iWwzUtAyuu2bhkCN980gZdFcfk0O
         VcWr9Fxy0WbTEPE++gFzMOFHAp/iYdVVFahRvJRTSFnFrl+SrjXmh+vpO8pEPw1lY6QB
         fS2weoafFcRmcsxO7Cgiku8hA/9ZoosHpxvwzc5AwrFnkdISYR0PzuGDX4zTxMjBcxfl
         j0xgiN19g7zb3LDbMR09fcoH5I335oROpJdmDWypnMe380CgEmIaTeP5CLrcI2X2B5FW
         Akpcdq/BfYqauc0LG4FEjWo9MzlU3r36Ossm6EBeIliWTTXxUEOoyCM12tVa3rSdcGsy
         dGLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ThqoW9Ms;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id x11si1205209iog.4.2021.08.24.21.58.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 21:58:56 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 17P4wSNJ018786
	for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 13:58:29 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 17P4wSNJ018786
X-Nifty-SrcIP: [209.85.215.176]
Received: by mail-pg1-f176.google.com with SMTP id n18so21924195pgm.12
        for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 21:58:29 -0700 (PDT)
X-Received: by 2002:a63:a58:: with SMTP id z24mr40517663pgk.175.1629867508346;
 Tue, 24 Aug 2021 21:58:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210819005744.644908-1-masahiroy@kernel.org>
In-Reply-To: <20210819005744.644908-1-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 25 Aug 2021 13:57:51 +0900
X-Gmail-Original-Message-ID: <CAK7LNARoxA875uynQHs-HpcfXtzFvuxkzSha9tquR2uV0Za10A@mail.gmail.com>
Message-ID: <CAK7LNARoxA875uynQHs-HpcfXtzFvuxkzSha9tquR2uV0Za10A@mail.gmail.com>
Subject: Re: [PATCH 00/13] kbuild: refactoring after Clang LTO
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ThqoW9Ms;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Aug 19, 2021 at 9:58 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
>
> The introduction of Clang LTO, the kbuild code became much
> uglier due to CONFIG_LTO_CLANG conditionals.
>
> It is painful to maintain the messed-up code, and to review
> code changed on top of that.
>
>
>
> Masahiro Yamada (13):
>   kbuild: move objtool_args back to scripts/Makefile.build
>   gen_compile_commands: extract compiler command from a series of
>     commands
>   kbuild: detect objtool changes correctly and remove .SECONDEXPANSION
>   kbuild: remove unused quiet_cmd_update_lto_symversions
>   kbuild: remove stale *.symversions
>   kbuild: merge vmlinux_link() between the ordinary link and Clang LTO
>   kbuild: do not remove 'linux' link in scripts/link-vmlinux.sh
>   kbuild: merge vmlinux_link() between ARCH=um and other architectures
>   kbuild: do not create built-in.a.symversions or lib.a.symversions
>   kbuild: build modules in the same way with/without Clang LTO
>   kbuild: always postpone CRC links for module versioning
>   kbuild: merge cmd_modversions_c and cmd_modversions_S
>   kbuild: merge cmd_ar_builtin and cmd_ar_module
>


Patch 01-08 applied.

I will take some time for the rest.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARoxA875uynQHs-HpcfXtzFvuxkzSha9tquR2uV0Za10A%40mail.gmail.com.
