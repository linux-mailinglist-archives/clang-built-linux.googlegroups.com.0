Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB2XK7WAQMGQEMQ7HWII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id C005432B789
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 12:39:23 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id i10sf14019425pgm.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 03:39:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614771562; cv=pass;
        d=google.com; s=arc-20160816;
        b=z81mBRV1gZdF7cRF88aVxvrXXKhlVBd/xot/mVabyXwro9mvAaO2m/OVMG+oUV+fuZ
         SGKK1SwhJPESgNjKlzVQKQMaBPUB4kyrWkS/mNNZD3t7MugiyWYxgu7QlvYs5MCD9zPH
         sOOFt2y1fZT53OMdpVGDqyLzxu/c66DkbzHfaYVj6JlfBqptjH1IJ17B1NhlETjsk3iT
         uNKIrMSA3+Y4TMS5FFUwUsnXkq/MhYnGgMEMl8Er47Z7B43t7xN4Glqkq/3H+C7CY87y
         FbqXM56EGH8WZ4PVEl0ME+htUJ1h7sw5/nZ4tme5T7p63XGey0OoW1oEFZw6w5m8B5gd
         f1GA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=00q6CPKXMeO0L9//FfQrAUGWorMZcmw85xN91ZOA4ok=;
        b=A/GCaoGehh/YYpbhRVJczVztCNrEVntmFEwzkY0+IJG7oJxDyy/ttORWuljdGJxi5g
         fJSAVfQmyHXzpXff56k+Jgdn3L6e8mi/2rurJH7QpKluVFa/Xf7gRhvG2PBHKW4ExfwQ
         xcAdLQE0ZKbSjM+SkeJPs4EK+cchhRH7vEqLk23NKI7NKD5QvaSf15hDsm5GpehlYXBY
         xfYpOvVGnJlBJkY5UVaMKWjV/wFMHMcXdH7sbnCtOnC5T+AuoFB30Wj9zvCNxkBY/Xuo
         zux7Un/n/l+ZhLYRTG+PneIrMV6S4Wh7M+vNZ8hJwfpaX3xnr/COe2FsAN7QTMJzCMvU
         BwrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=X6j6L+ct;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=00q6CPKXMeO0L9//FfQrAUGWorMZcmw85xN91ZOA4ok=;
        b=hrD37454zP7jIoXggNsK3u6+u2iBdZyDXgQ0dNBqYbdG3VtTfKuI5taULCQaxafGRc
         /xYhhh2Amtfw5rsqgvFH89NTCNkPqkFZDD9SaVUVqUQLFRcnm+hADmavKNVFDEWNUb0m
         52sUUVDjZ7zDJpwxganrM1gdZQ0PKb86koAc8udlRlRJPwE+s8VeswK0yYeYu9cGUpmg
         ywCPPWhOyPPCn860ZSGStguMso/2EYDWZ1v4RQlrU03EW6TER44rFYIcMoNapnMymbcU
         1NQS4d3ct6Atxv+uct6jzFUfnLt4U611ZAiq6a1hXLN8yS2UQ9+jBwJlAKMzbWWj47f4
         wbzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=00q6CPKXMeO0L9//FfQrAUGWorMZcmw85xN91ZOA4ok=;
        b=YIqf9YPt2g4NEsSm3sQd7EsioH7EWHfqF9LOGYqXAiQPN+L5qTTmtWIYSzCh6T/62L
         hDNs6ujdtMNIr+8Rrc3lqF9stKiLKMJbUQHgt4M79YlzYym/5We8qV70I8C+3O3c9MA8
         5uk3QgTp96w1Brpngnhce2xxSA6C+BZShqgp6XyWiJwnECiBMqCg/swFWDkBA76mlI1i
         MXAr0VIplwYEZyv/Y853CuTlHBcmaQwqIU1SZBkSkhNLGYas3rX1jzDMwaCJVI55irBa
         wE1wfOIPsTMMEcyaW5nRsuC4HL5u/c8gaqG5mbQJaagjHeRGINaMi9KErcWpRh+A7E+K
         JVEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HDecmeAr003HE6YF5vOZy20pEctTqE2U+VqL8UN6G/ms8825x
	vAxGJk9GSja5OtAGHgIw9Fg=
X-Google-Smtp-Source: ABdhPJw9NRPKPaBy/aRS5v1eGRKUWoyaSwl1d8lFDwuCq8LWvxUuQcfLBALP2UUQyzYrmWvW0BCG0g==
X-Received: by 2002:a62:170a:0:b029:1ed:cc98:35aa with SMTP id 10-20020a62170a0000b02901edcc9835aamr2838514pfx.77.1614771562320;
        Wed, 03 Mar 2021 03:39:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1790:: with SMTP id 138ls842963pfx.5.gmail; Wed, 03 Mar
 2021 03:39:21 -0800 (PST)
X-Received: by 2002:a63:4442:: with SMTP id t2mr21990846pgk.23.1614771561689;
        Wed, 03 Mar 2021 03:39:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614771561; cv=none;
        d=google.com; s=arc-20160816;
        b=FxuxwKAd9E/0vftE5PvCgsML06H8G0A0vUGhx8R7GV12dzujBqDYJMGOdWkgKgKajO
         rmjNSyI9NC7vwU5r401+3fkz82RbMxbmgUhU1bLsJeiKvrNBdaOqyhoM9OIKZciye3tV
         2O0KfykxsGGHqpui2MNKC21ETTOv079RpOmpOr2P2tv+oUGJsaF3QA8swXGTukOLOrEj
         rKDZBzGEj7pS5eblL836YawF50EaOMdTwh0Q/F7M5kdaCSRNsDgcLKfrE068ObuU8swY
         AftWU2/kyxawvSwoZ/Y6jaVZtcQZiBF6NEaS7Gyd2laeQOQpyg7KzGQ0O6bBRE0APO+V
         jIMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=h3LNR7fqXEjV5dRyMGMzxh6NqG+1wU6ysQj2qblhhvc=;
        b=Oht/zqjrZ7K7fdGLa7nafrEaK0dFH26SP18tFzPNKRgv7pXv92WtXX4RjzT9t6hTcJ
         IhaF0rBBwUHxchLhZwMy7f3NORN6/zQXl7oGhFmald3HqWB2GQDV1QjV2fIHRWxQGD34
         uRrhM+snlaAd09AjHk257kF+XXVjaPnOt95RlvvW8VogJcBu/ybM3pieuMVfurKXyb1+
         iSr0QrjsauJhjV5Ve2KdI7S0fWZXPdFIiv2uP55p6Ym8dTOMDdUFk9nrPvNN6jKo1FET
         PqDoFoHgPA4DSdUbdKTnDZVfBFpWCItkrIG6b9LM3LnMSYjrX6fk0+B4Ds07F8OXuCLs
         yBrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=X6j6L+ct;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id h7si1177473plr.3.2021.03.03.03.39.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 03:39:21 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 123BchTJ007797
	for <clang-built-linux@googlegroups.com>; Wed, 3 Mar 2021 20:38:44 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 123BchTJ007797
X-Nifty-SrcIP: [209.85.214.179]
Received: by mail-pl1-f179.google.com with SMTP id u18so7699658plc.12
        for <clang-built-linux@googlegroups.com>; Wed, 03 Mar 2021 03:38:43 -0800 (PST)
X-Received: by 2002:a17:90a:5510:: with SMTP id b16mr9232214pji.87.1614771523191;
 Wed, 03 Mar 2021 03:38:43 -0800 (PST)
MIME-Version: 1.0
References: <20210302221211.1620858-1-bero@lindev.ch> <20210303040237.tvwo34j322tzqnwz@archlinux-ax161>
In-Reply-To: <20210303040237.tvwo34j322tzqnwz@archlinux-ax161>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 3 Mar 2021 20:38:06 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ8zvEv50HgD4HOzjMBYB7UAHggTsQ7OwoGgktXSDjzYQ@mail.gmail.com>
Message-ID: <CAK7LNAQ8zvEv50HgD4HOzjMBYB7UAHggTsQ7OwoGgktXSDjzYQ@mail.gmail.com>
Subject: Re: [PATCH] Fix ld-version.sh script if LLD was built with LLD_VENDOR
To: Nathan Chancellor <nathan@kernel.org>
Cc: =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@lindev.ch>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=X6j6L+ct;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Mar 3, 2021 at 1:02 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Hi Bernhard,
>
> I have added the ClangBuiltLinux mailing list, kbuild mailing list, and
> Masahiro and Nick to CC. Maybe ld-version.sh and cc-version.sh should be
> added to a MAINTAINERS entry to make sure we get CC'd (I can send one
> along tomorrow).
>
> On Tue, Mar 02, 2021 at 11:12:11PM +0100, Bernhard Rosenkr=C3=A4nzer wrot=
e:
> > If LLD was built with -DLLD_VENDOR=3D"xyz", ld.lld --version output
> > will prefix LLD_VENDOR. Since LLD_VENDOR can contain spaces, the
> > LLD identifier isn't guaranteed to be $2 either.
>
> TIL about LLD_VENDOR...
>
> > Adjust the version checker to handle such versions of lld.
> >
> > Signed-off-by: Bernhard Rosenkr=C3=A4nzer <bero@lindev.ch>
> > ---
> >  scripts/ld-version.sh | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/scripts/ld-version.sh b/scripts/ld-version.sh
> > index a463273509b5..4c042a306e22 100755
> > --- a/scripts/ld-version.sh
> > +++ b/scripts/ld-version.sh
> > @@ -49,6 +49,18 @@ elif [ "$1" =3D LLD ]; then
> >       min_version=3D$lld_min_version
> >       name=3DLLD
> >       disp_name=3DLLD
> > +elif echo "$@" |grep -q ' LLD '; then
> > +     # if LLD was built with -DLLD_VENDOR=3D"xyz", it ld.lld --version
> > +     # says "xyz LLD [...]". Since LLD_VENDOR may contain spaces, we
> > +     # don't know the exact position of "LLD" and the version info
> > +     # at this point
> > +     while [ "$1" !=3D "LLD" ]; do
> > +             shift
> > +     done
> > +     version=3D$2
> > +     min_version=3D$lld_min_version
> > +     name=3DLLD
> > +     disp_name=3DLLD
> >  else
> >       echo "$orig_args: unknown linker" >&2
> >       exit 1
> > --
> > 2.30.1
> >
>
> I am not sure what a better fix would be of the top of my head but
> wouldn't it be better to avoid the duplication? This diff below works
> for me with or without LLD_VENDOR defined.
>
> diff --git a/scripts/ld-version.sh b/scripts/ld-version.sh
> index a463273509b5..84f9fc741f09 100755
> --- a/scripts/ld-version.sh
> +++ b/scripts/ld-version.sh
> @@ -44,7 +44,10 @@ if [ "$1" =3D GNU -a "$2" =3D ld ]; then
>  elif [ "$1" =3D GNU -a "$2" =3D gold ]; then
>         echo "gold linker is not supported as it is not capable of linkin=
g the kernel proper." >&2
>         exit 1
> -elif [ "$1" =3D LLD ]; then
> +elif echo "$*" | grep -q LLD; then
> +       while [ "$1" !=3D "LLD" ]; do
> +               shift
> +       done
>         version=3D$2
>         min_version=3D$lld_min_version
>         name=3DLLD



You do not need to use grep.
How about this?




        ...
else
        while [ $# -gt 1 -a "$1" !=3D "LLD" ]; do
               shift
        done

        if [ "$1" =3D LLD ]; then
                version=3D$2
                min_version=3D$lld_min_version
                name=3DLLD
                disp_name=3DLLD
        else
                echo "$orig_args: unknown linker" >&2
                exit 1
        fi
fi




--=20
Best Regards
Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNAQ8zvEv50HgD4HOzjMBYB7UAHggTsQ7OwoGgktXSDjzYQ%40mai=
l.gmail.com.
