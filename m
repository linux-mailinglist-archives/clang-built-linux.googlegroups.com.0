Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBI4W76AQMGQE3JKTQBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8DB32B98D
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 18:45:08 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id l2sf14665300pgi.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 09:45:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614793507; cv=pass;
        d=google.com; s=arc-20160816;
        b=cIfMfh/G9QBaCnObrzXInem3gHDSJCjhFZiu+NeD2IkWqKunkwybJErtQuqX1W1x55
         0tpVH6hcIYImqml4WSp2p8+N04mStSfK9tO+T7IrijQp8Ha4fP0rFFgx9XRdELi+fpE8
         TJi868bkRfY3iV1Ng1WiytWpgmRzn2YwRCs2huU8l65qNlRbYGI2uFKQKWOo45IkZ6bC
         6xexR0iDOjUJ31mCQreauhDu0jCIiV50ebSPVuAMBNyFA79Iot7vtBE3uHa8K/Bj2j6d
         hcSyBdrfAEWmp8qIqSHSMdW/5FasT3zcsf39yJ3OK9/IIjS50ydnhHnMMxV7Ye3F6Ut0
         Fatw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ouaKf7sHDd773E1X5+ck5vm1msKLf+WZrLLHy9N6sow=;
        b=EEAvyrd+WqIq4Sp4ejROBONoowCdgvQLzr9YjkZV3AhK475OG7/0Dq6E9FW75RH0w2
         jusyyVLZykvU1LnKFG6gT7MqCscRtJ/02JxnUHY1r6jmUa1/I2qyCK3EpN5yiNy6143P
         NNesdcxPtjwBLG3rIrJFGDVK++BMJ2Y5F8EHKtOyrvsMHryGOEroFwou+v50PHnZQ1Gl
         0jVrTjYy9Bv9yQtE+f1qXzqxxvwZHGp11q8wApKRYU4KR3FJDIrUUM6xhuKSOm90qBTJ
         SefkW5FrY9H5c7kE1LnrIe6VFRWWIh0QO9MdJ7hLfxpEJ6NW89hhDREeqJ4MBceGyOxL
         gcsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="pq1cz/L2";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ouaKf7sHDd773E1X5+ck5vm1msKLf+WZrLLHy9N6sow=;
        b=lk7+Qc9KiUfT0NbMKjrMf01wMunYWhYDUI+B7HWAKwxYbfimwKxHl9CMtlcyNjd+Ly
         LGB7DuJkID1p14u/ajvGtU1luv/SpBn0l6l722cYBYHJjQXue1WnWHzlrZ70bKILGcRk
         gMv091bFRiR9AdhkC2+whxFlZTCgQhN2S3mZPyEQS/8BGwC33oWnCFBrbKHiCP0gAAVd
         Lsvdp++/mBODmNLvGnjQHy0GUbr6Mi4kdFo7CtM2KGmw6DxL6Z4SV2JQFseD3P9TAP7d
         bD+tbrIGgzV6MB4ICji6TLy0Pd9LjJIelJ5f2Z5rcx2HkTv6sV1mltfrTKeL03NftL+i
         IWMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ouaKf7sHDd773E1X5+ck5vm1msKLf+WZrLLHy9N6sow=;
        b=rJZ4FEVdqRgYCZvknGXvW7fkvhFkbDbyXPsqvsUDSyX54V8OzIk3ddgHWy9XBQyTeB
         PpxqT+cZT5omiqIRcSNlMN8PTSdfRTe2edu3V6wWI68JvbWkM6y2BY1H0XNfOrEfaOf4
         /vhItsY4jljq7VVZjo54hhEjmLSRLgO7r4NM/xuYwjP5Oa3DMLVc41sF82l1v4twrvij
         O2tdJ04X/mwoOvtCFvaEuEhO+1jTzRMytsC4PfdXg7C0OdqIAt2p/7/XmAShtycVsDRL
         Wy05k7ECuLJyGkBAFui1dGCs9g6FYMQbbrCE7uhT6DZPzw4xafuI36/D5KiQ3iVcOzuC
         aA0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qY6BYysaEzcJsO6bsnEyjM4IBG14XAEQSxwiytGt/aNOa9lV8
	+Ze2pr6V/HulV8slB/9kUyo=
X-Google-Smtp-Source: ABdhPJyl4lPcZST9ozluF2ivM95hBeB1pmSgmGR1b7wkFQEMQiOvTQnsI2/G7xMtXnArr6/ggX3V3w==
X-Received: by 2002:a17:90a:aa03:: with SMTP id k3mr252267pjq.168.1614793507266;
        Wed, 03 Mar 2021 09:45:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9106:: with SMTP id k6ls1652241pjo.0.canary-gmail;
 Wed, 03 Mar 2021 09:45:06 -0800 (PST)
X-Received: by 2002:a17:902:509:b029:e5:9944:f763 with SMTP id 9-20020a1709020509b02900e59944f763mr308958plf.35.1614793506756;
        Wed, 03 Mar 2021 09:45:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614793506; cv=none;
        d=google.com; s=arc-20160816;
        b=OZUiH2fhy948mEE7d/EqQFIUM47vBPWAbxmM6NiK3RDoTieKHFCG7/PnMF1aLpxHGF
         8DouQ2OO53D+drBsJAKO/9ongqEWt9MPR6YAJSeFs/DawsJOOzMkGoJYBoveRALVjpa/
         bPv7BbJeMppxmX2Iw9fXD3FC3/6Lsku+sK7Vcvbuof2OCos9WO8WrpuDt50TYtlQttRQ
         upTw8GZF+/zlcKvAFXJta0EIvPOllcqfpNk4PGe99o725FyqPJVP0EdUKUUjzJzQLVJ8
         bn1a2GTvV76OvfEsYULqGuzWYc6l0vkTj53Hm2VPH1Fz4OiCW9FjRm5RpEByAh7W4v9n
         XTWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=TtkQhWxnVK0aNIS6vJUhqhHZSNqp0SRZsxeyriAvGg8=;
        b=znk8imnBXIkRaqa+u6KlzlmKBWI6p1m3kM4iKF3zrfu/9PsSaWP/T9mpUIiBBv4qNt
         1tqSHmfJtb1VMxvYWrUq7cvlgV5cefQ3Kd+s08MNsPmzdc0raHZSzjC1cOycgaFC7uB/
         2wyrSRaLVbLlNLN8pocqevDeuv+k5kC7S5sP4Cr35wPoj6nfd51yK9X9S810j//cmTC+
         4t6sEdT7PKpiQG7+C5el/PADvsjLAOypPplvczuDOsq0oIGcMB5GJjH1Z+B/xwBGbvc9
         rkmpoJvpQo1V3OCHeMcieHx85nM0Jjrj9Hf/9Vf/5AecMMoDyDQdGijV9FZQesx9yq7z
         LM5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="pq1cz/L2";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j11si1836408pgm.4.2021.03.03.09.45.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 09:45:06 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 93FEE64EE6;
	Wed,  3 Mar 2021 17:45:04 +0000 (UTC)
Date: Wed, 3 Mar 2021 10:45:01 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Bernhard =?utf-8?Q?Rosenkr=C3=A4nzer?= <bero@lindev.ch>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] Fix ld-version.sh script if LLD was built with LLD_VENDOR
Message-ID: <20210303174501.x7dwsgdzhrbqubz5@archlinux-ax161>
References: <20210302221211.1620858-1-bero@lindev.ch>
 <20210303040237.tvwo34j322tzqnwz@archlinux-ax161>
 <CAK7LNAQ8zvEv50HgD4HOzjMBYB7UAHggTsQ7OwoGgktXSDjzYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAK7LNAQ8zvEv50HgD4HOzjMBYB7UAHggTsQ7OwoGgktXSDjzYQ@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="pq1cz/L2";       spf=pass
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

On Wed, Mar 03, 2021 at 08:38:06PM +0900, Masahiro Yamada wrote:
> On Wed, Mar 3, 2021 at 1:02 PM Nathan Chancellor <nathan@kernel.org> wrot=
e:
> >
> > Hi Bernhard,
> >
> > I have added the ClangBuiltLinux mailing list, kbuild mailing list, and
> > Masahiro and Nick to CC. Maybe ld-version.sh and cc-version.sh should b=
e
> > added to a MAINTAINERS entry to make sure we get CC'd (I can send one
> > along tomorrow).
> >
> > On Tue, Mar 02, 2021 at 11:12:11PM +0100, Bernhard Rosenkr=C3=A4nzer wr=
ote:
> > > If LLD was built with -DLLD_VENDOR=3D"xyz", ld.lld --version output
> > > will prefix LLD_VENDOR. Since LLD_VENDOR can contain spaces, the
> > > LLD identifier isn't guaranteed to be $2 either.
> >
> > TIL about LLD_VENDOR...
> >
> > > Adjust the version checker to handle such versions of lld.
> > >
> > > Signed-off-by: Bernhard Rosenkr=C3=A4nzer <bero@lindev.ch>
> > > ---
> > >  scripts/ld-version.sh | 12 ++++++++++++
> > >  1 file changed, 12 insertions(+)
> > >
> > > diff --git a/scripts/ld-version.sh b/scripts/ld-version.sh
> > > index a463273509b5..4c042a306e22 100755
> > > --- a/scripts/ld-version.sh
> > > +++ b/scripts/ld-version.sh
> > > @@ -49,6 +49,18 @@ elif [ "$1" =3D LLD ]; then
> > >       min_version=3D$lld_min_version
> > >       name=3DLLD
> > >       disp_name=3DLLD
> > > +elif echo "$@" |grep -q ' LLD '; then
> > > +     # if LLD was built with -DLLD_VENDOR=3D"xyz", it ld.lld --versi=
on
> > > +     # says "xyz LLD [...]". Since LLD_VENDOR may contain spaces, we
> > > +     # don't know the exact position of "LLD" and the version info
> > > +     # at this point
> > > +     while [ "$1" !=3D "LLD" ]; do
> > > +             shift
> > > +     done
> > > +     version=3D$2
> > > +     min_version=3D$lld_min_version
> > > +     name=3DLLD
> > > +     disp_name=3DLLD
> > >  else
> > >       echo "$orig_args: unknown linker" >&2
> > >       exit 1
> > > --
> > > 2.30.1
> > >
> >
> > I am not sure what a better fix would be of the top of my head but
> > wouldn't it be better to avoid the duplication? This diff below works
> > for me with or without LLD_VENDOR defined.
> >
> > diff --git a/scripts/ld-version.sh b/scripts/ld-version.sh
> > index a463273509b5..84f9fc741f09 100755
> > --- a/scripts/ld-version.sh
> > +++ b/scripts/ld-version.sh
> > @@ -44,7 +44,10 @@ if [ "$1" =3D GNU -a "$2" =3D ld ]; then
> >  elif [ "$1" =3D GNU -a "$2" =3D gold ]; then
> >         echo "gold linker is not supported as it is not capable of link=
ing the kernel proper." >&2
> >         exit 1
> > -elif [ "$1" =3D LLD ]; then
> > +elif echo "$*" | grep -q LLD; then
> > +       while [ "$1" !=3D "LLD" ]; do
> > +               shift
> > +       done
> >         version=3D$2
> >         min_version=3D$lld_min_version
> >         name=3DLLD
>=20
>=20
>=20
> You do not need to use grep.
> How about this?
>=20
>=20
>=20
>=20
>         ...
> else
>         while [ $# -gt 1 -a "$1" !=3D "LLD" ]; do
>                shift
>         done
>=20
>         if [ "$1" =3D LLD ]; then
>                 version=3D$2
>                 min_version=3D$lld_min_version
>                 name=3DLLD
>                 disp_name=3DLLD
>         else
>                 echo "$orig_args: unknown linker" >&2
>                 exit 1
>         fi
> fi
>=20
>=20
>=20
>=20
> --=20
> Best Regards
> Masahiro Yamada

Yes, that as the following diff works for me.

diff --git a/scripts/ld-version.sh b/scripts/ld-version.sh
index a463273509b5..30debf78aa09 100755
--- a/scripts/ld-version.sh
+++ b/scripts/ld-version.sh
@@ -44,14 +44,20 @@ if [ "$1" =3D GNU -a "$2" =3D ld ]; then
 elif [ "$1" =3D GNU -a "$2" =3D gold ]; then
 	echo "gold linker is not supported as it is not capable of linking the ke=
rnel proper." >&2
 	exit 1
-elif [ "$1" =3D LLD ]; then
-	version=3D$2
-	min_version=3D$lld_min_version
-	name=3DLLD
-	disp_name=3DLLD
 else
-	echo "$orig_args: unknown linker" >&2
-	exit 1
+	while [ $# -gt 1 -a "$1" !=3D "LLD" ]; do
+		shift
+	done
+
+	if [ "$1" =3D LLD ]; then
+		version=3D$2
+		min_version=3D$lld_min_version
+		name=3DLLD
+		disp_name=3DLLD
+	else
+		echo "$orig_args: unknown linker" >&2
+		exit 1
+	fi
 fi
=20
 # Some distributions append a package release number, as in 2.34-4.fc32

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210303174501.x7dwsgdzhrbqubz5%40archlinux-ax161.
