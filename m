Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAXCT2BAMGQEUBROKDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 39564332D4B
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Mar 2021 18:31:49 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id e4sf8055340pgt.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 09:31:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615311108; cv=pass;
        d=google.com; s=arc-20160816;
        b=GGRBdiek0CnPZ2VT2ibanZJTrHo5tzE1F0yBsOGOau+evR8bG1FrG5jGyocO/mvJD8
         pMwbRXmRj9qCLeHxJR9D40y/0Ak+Kzf7GRVbVf6+jKsWEXq/avRYo40D60HECCkDhhaG
         hHYhhlE2bqwjRjhCO1pJVOpKM0DdZRriMLxkfZwmA9G1cWzyynO+0zFHOiaoaVDJhDoz
         HmaWp7OEnPndNg/AYn4+QnDiEULq1GdCxf6k+/JGMY2sZwyZ3UG+ecodU5bBqxsmfxiw
         GAn21+vSLIpyNnMCwUDpppkg/+Qe2dgP8kJEVOVRSC3S4ebFGXj8KJ2g23XP3p0xX4lw
         SZHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ME/ceC5B+9c5s458i96t9B8uWih64xOo1m2FZq7DQLE=;
        b=B1k774k+o2L21RUl44aDnmylX7ki1oO7JTywOWJGYh4wisbX5TLgttihAlxf9noCzZ
         iUhc8/tDeEHd4QAgnZltPRcpidV3PdigB+0xtURlQzGEfzc99XgqtO8ZDd0N8y1o4780
         WPOpCekUNJtLSPQzDCamSGb+PRCMIVvHKoPu4qZkuxDMYmVJPkid3X83bRM3D7ZmQFQ6
         9keIMmoUcSjfk2jstMeoUxsFihm62YI25tOAjsNPonXlrFwwV9d8naQSErHgsssXzfoi
         z3hY45ENK3q/4UuS3eaW6bb1bhnhJC66fe/jXKs0OL55SRrXY3O7lun/fvfgVFz4LEO1
         6VpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="TRx6bl/i";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ME/ceC5B+9c5s458i96t9B8uWih64xOo1m2FZq7DQLE=;
        b=R1rwqPbKZrS27FzRw/IgZzGEyDssMWkTYhAu0ItYvD+8fuEDwkcwSW0skqrQ28wtq3
         JLW1Gp25tvYoqDXiSSVeypTNNElbVahnnx26DkXkox5BQU9uvhd9evaCV+zdlesrvqKW
         7CQgU22yXR6j7vdxdZcXWx0QmK+xEtmY1wNd1/BTzy6TkSjkmM8zo07AqL+PzvSZH19H
         sfyxe9oCTzhN6vFBr0l/swYmWBaIHMNbc465kjZz+/QVtpGKHMeCdUR9W2mY8tRRp+gf
         eiPl0u2HZWvp16rU+ALK72FcR2HUuQVucVv92OKSr+UCJlJX1gAuMD4uUP489qiwvecw
         YJWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ME/ceC5B+9c5s458i96t9B8uWih64xOo1m2FZq7DQLE=;
        b=YMMVfk0ITfP9jgaM3l5XHP3B7stvIO1rVnKaRkAMhFHEwwdnxCCmkIN8q+wsWgH8k3
         IW8mNoxXP42EDyksrOV7KO6DqHrKjoGas4EhG6uefjJBnjr9lB51hw00Z0EMuwHTdXQv
         ui03iL77nv5I8t+tiGfM9VTt9f/YeXBf5dQ/pZ/LEUcDpiskpkqj6vRMr9DRun+F+/fC
         jqY8msNEBnfMscTp2aQmhCINUHqoo3+JIvxIlAxs7AkT2pH9Te3W9mu5QKKpl6xpgf1F
         J2nlq9TrfA+fAFJwJxdTpWEW8QrBYKh46FC+0Nr51uOcc/+/fRlWxOYJdv+y/bgDlkuX
         7CgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+HZ28iTholTJUVzJBmK/QndXuYprN28GTB31E9VIOFHZYi9BU
	EhpgaqOjhW5RSLP69b6jxMM=
X-Google-Smtp-Source: ABdhPJzbJBHzjbisPSttScDV2H+JNIs4Y5CMb84H0LwQImky0+NtfbPKL2SXJHJcla70We6gA/ep+Q==
X-Received: by 2002:a17:902:f1c2:b029:e4:6c23:489f with SMTP id e2-20020a170902f1c2b02900e46c23489fmr4942639plc.62.1615311106403;
        Tue, 09 Mar 2021 09:31:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:972f:: with SMTP id k15ls4365207pfg.10.gmail; Tue, 09
 Mar 2021 09:31:45 -0800 (PST)
X-Received: by 2002:a63:1b01:: with SMTP id b1mr10403464pgb.330.1615311105854;
        Tue, 09 Mar 2021 09:31:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615311105; cv=none;
        d=google.com; s=arc-20160816;
        b=cb/1Rjuke3IrsujEy3fqZjd9sQWigS6eVK/R67pyLIY2tnFV8yFHeVYFXEra9DZW3W
         XDsLSy1cliatOvoKMWyhty3AeyKZbp2DO6PfxPwom1XJKOB9Mhmz6hvtWNRuyue5x+su
         eajwUUStyngeaGUDPvP459sEsWYTM2JyhHkwa6qz9Ahc1mXztkfk7rD0YIMoEt8ISsTU
         zr5/5fu+rSsOmuAvZ4qc7Jy9CRYE63WVoB9silxzXL0YVQnldPpIw3xAWs9qgyZIsgl2
         0Hg0RVB5B6gAarq0jow4bPmX3j7t18KzHgqgIqLIDmQUR9aYuji9QaZDXl7SsiWLf0z/
         Zh+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Ngsszn7M7tuUMiPAe1CATxNB3aBXYr0Zj/XeZ62OZgY=;
        b=Mw3PLPYzTMNTi0ObRhbqgDuCxulWtmVq//6ms8sDuQ823MbCh3aCtg2Ry9h4DcaeWZ
         yFiNFOyfvzqMqRPuOv/pkFdng/g07fRApGGUB+OnF12fCsV7MjVmVnH/JZmHlYCE+YWk
         fLK6YQdo+HYwSgC13jxPRKncPELqT8Ch669nuAUhucLM2ZmhSHP220a/4/CWA5PjVsl7
         zVojxgZaIdzP6TDN4CIJVxvYb9aOdfCjUxf8y+4nC+1ujmAv0UZZZd2lOhv8GaE03akP
         EnQgFgRMgZvflN7xCF53Nxx5HJLvhpx4xC9pwd5vL+PBkB/4eu9h/B3+Uep9qrA5ReGT
         mn7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="TRx6bl/i";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d13si940409pgm.5.2021.03.09.09.31.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Mar 2021 09:31:45 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4B0C36523A;
	Tue,  9 Mar 2021 17:31:44 +0000 (UTC)
Date: Tue, 9 Mar 2021 10:31:40 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Bernhard =?utf-8?Q?Rosenkr=C3=A4nzer?= <bero@lindev.ch>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Subject: Re: [PATCH] Fix ld-version.sh script if LLD was built with LLD_VENDOR
Message-ID: <20210309173140.qbd362rze2d5legg@archlinux-ax161>
References: <20210302221211.1620858-1-bero@lindev.ch>
 <CAK7LNARA3uKsW_G+gnCX6dvSwgXWzqgZON7pc6gBWdw9gimq1A@mail.gmail.com>
 <CAK7LNAQb2pCtFgebADigYoRJUo4M3i_4iwS=88QYZx5H+736Hw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAK7LNAQb2pCtFgebADigYoRJUo4M3i_4iwS=88QYZx5H+736Hw@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="TRx6bl/i";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Mar 10, 2021 at 02:09:02AM +0900, Masahiro Yamada wrote:
> On Thu, Mar 4, 2021 at 12:34 PM Masahiro Yamada <masahiroy@kernel.org> wr=
ote:
> >
> > On Thu, Mar 4, 2021 at 9:18 AM Bernhard Rosenkr=C3=A4nzer <bero@lindev.=
ch> wrote:
> > >
> > > If LLD was built with -DLLD_VENDOR=3D"xyz", ld.lld --version output
> > > will prefix LLD_VENDOR. Since LLD_VENDOR can contain spaces, the
> > > LLD identifier isn't guaranteed to be $2 either.
> > >
> > > Adjust the version checker to handle such versions of lld.
> > >
> > > Signed-off-by: Bernhard Rosenkr=C3=A4nzer <bero@lindev.ch>
> > > ---
> >
> >
> > Bernhard,
> >
> > Could you senv v2
> > with the suggested code change?
> >
> > Please make sure to add
> > linux-kbuild@vger.kernel.org
> > in the To:
>=20
>=20
> I did not get v2, but never mind.
> I locally modified the code and applied.
>=20
> I added Link: to your original patch
> just in case I make some mistake in the
> code refactoring.
>=20
>=20
> The final one looks as follows:
>=20
>=20
>=20
>=20
>=20
> commit 0b2813ba7b0f0a9ff273177e85cbc93d92e76212
> Author: Bernhard Rosenkr=C3=A4nzer <bero@lindev.ch>
> Date:   Tue Mar 2 23:12:11 2021 +0100
>=20
>     kbuild: Fix ld-version.sh script if LLD was built with LLD_VENDOR
>=20
>     If LLD was built with -DLLD_VENDOR=3D"xyz", ld.lld --version output
>     will prefix LLD_VENDOR. Since LLD_VENDOR can contain spaces, the
>     LLD identifier isn't guaranteed to be $2 either.
>=20
>     Adjust the version checker to handle such versions of lld.
>=20
>     Link: https://lore.kernel.org/lkml/20210302221211.1620858-1-bero@lind=
ev.ch/
>     Signed-off-by: Bernhard Rosenkr=C3=A4nzer <bero@lindev.ch>
>     [masahiro yamada: refactor the code]

If it is not too late:

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>

>     Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>=20
> diff --git a/scripts/ld-version.sh b/scripts/ld-version.sh
> index a463273509b5..30debf78aa09 100755
> --- a/scripts/ld-version.sh
> +++ b/scripts/ld-version.sh
> @@ -44,14 +44,20 @@ if [ "$1" =3D GNU -a "$2" =3D ld ]; then
>  elif [ "$1" =3D GNU -a "$2" =3D gold ]; then
>         echo "gold linker is not supported as it is not capable of
> linking the kernel proper." >&2
>         exit 1
> -elif [ "$1" =3D LLD ]; then
> -       version=3D$2
> -       min_version=3D$lld_min_version
> -       name=3DLLD
> -       disp_name=3DLLD
>  else
> -       echo "$orig_args: unknown linker" >&2
> -       exit 1
> +       while [ $# -gt 1 -a "$1" !=3D "LLD" ]; do
> +               shift
> +       done
> +
> +       if [ "$1" =3D LLD ]; then
> +               version=3D$2
> +               min_version=3D$lld_min_version
> +               name=3DLLD
> +               disp_name=3DLLD
> +       else
> +               echo "$orig_args: unknown linker" >&2
> +               exit 1
> +       fi
>  fi
>=20
>  # Some distributions append a package release number, as in 2.34-4.fc32
>=20
>=20
>=20
>=20
> --
> Best Regards
> Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210309173140.qbd362rze2d5legg%40archlinux-ax161.
