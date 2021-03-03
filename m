Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBY4U7SAQMGQEMABPYGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E46E32B36A
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 05:02:45 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id j6sf12179462qkd.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 20:02:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614744164; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xf2tYK4vAygpM8FPOWX1PscBTHmATOk6MQWG5/QffqlU1sfo4+hYktwIZbbBWsjuBD
         RDVvbM1arHWU3cJb7aSILwp+wV/RKwXbxA9apXXuXx/kRva40b7LXGldBMojD0pxlb6L
         pAR74ssRku5CvXMtOpEBDpvhr6LJCp+EgZryOjqx0LnrX/+fyfdw67zoUnc3tZcXSVth
         6n4u3wjir7OszkEEC6ndTRS1cIPkB9higp0TtF+AC3akJcoslGtp+fFlH02kSSxawObb
         9K2UXmMedIebr2ScQX9PE81me4XdjHDBkYDSjtm/w78dvYuvLMKOqdMECZwJLTXVuRYo
         2VZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=UeQklnGrENCyZRdjbubRr56SSie+PDIDQ1X7uobDUb0=;
        b=OmPCz4GhP8daKSJaWt58GB06Mi42+9vAs8zMym707wbuDptyAUbrg4+z19MpdgDjzR
         ePAN0nD6b+iK2R8r+Bg45lxj/4VqAeZNS3UnA4AkrYcmb0gFold1DEJRoUpgUN7R28u/
         JpT8SexaBlEW9Wn4/iFaXWYmIBuBQiWqAGI3BXtKjN14zLdKlgBBAn9ReIE1eCcqIYg7
         BKImsUlqUW/jxT9bVzdz/QSLYQI1aAYeiTa7e4xfVr++GkIQ0RKRGKkk8WHAZqLw+51+
         6mF5m7iuxq98zJb35SgH5aGMCex3gFUvqsnwdGMCrWb8DJ9TF2P9rMzwCidlxLnqh7oC
         +Nhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mPOHOyWw;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UeQklnGrENCyZRdjbubRr56SSie+PDIDQ1X7uobDUb0=;
        b=bShmvnxU+iwet39SBzXavn3/ugAmNT2Fj/vtBl4alNV/rNgZ105nyV4BtCEUGr0Zjm
         2JQghAFrHWP5wD2VxjAa4kiVSkS9EWOvl4HFMRlkPqBrsuVHrmJT1MyrXYLvk9GTcNXK
         mVuqFCaAgVajNQ328C8/YE0qe2VpZhdi/THEFnCXB+mjF8PTgoi/Jmqh6tCmxdvgrOvO
         MUjGpSgpPqKe78IzooSWbHTeR94QJ5RjzxTo4azh+ZmT7u2vNEwQhE0s1atCQQ8Gz6sl
         sYU+DbnM5LmbosKaCa+1q/l8jaF7JYT0VRPYS5/9FNULB7pL8VjgFQ+cZqmueltH3P5O
         3sJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UeQklnGrENCyZRdjbubRr56SSie+PDIDQ1X7uobDUb0=;
        b=Dxms+Db4ePUKYSkE23n6d0DsySSn6pF89ycOainJYbTPHFbAeF+moYoZAxlc7+BURK
         jpGXiNnJGjUAsDCr7yfBjOZbdBXAU0ovpohczOFl4PhJ4b2fzQBmMCLFl4ooifcRhx4y
         4ePWGLIltNWKmp4mcbuAYPwBXfRffU/zuM8As5cUcqp7dxh74JOks6KHM4n9ObFkAO+v
         g9HxwQ4X08JAIDd5R59vK3zdtJGJLojZDg7nEU3FkdUAUgAxwpwPbmuB6+hlRBqkbSK8
         fpY2WZ55RQa33aVYOKzi2h8XDnMs9bAeuN+uDQgDD4MF0CXqtL6GXW7D1yiYfYqsnj/E
         Jrcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533AuhHXSixGsFr7noqKdDfRBhRyLHYeihy+tq36ticLCbIj7obb
	7PeW0v6KGCmM6+gjeR3zJnY=
X-Google-Smtp-Source: ABdhPJzIVezHIrsAgEqYjrKH2BQYLSjzn84cZuEu/nh3XZCD+DBFd3RKZKUcs4d2/62NEU05sgxftg==
X-Received: by 2002:a05:6214:d6d:: with SMTP id 13mr23170111qvs.60.1614744163812;
        Tue, 02 Mar 2021 20:02:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:991:: with SMTP id x17ls554804qkx.2.gmail; Tue, 02
 Mar 2021 20:02:43 -0800 (PST)
X-Received: by 2002:a05:620a:13db:: with SMTP id g27mr11302057qkl.367.1614744163384;
        Tue, 02 Mar 2021 20:02:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614744163; cv=none;
        d=google.com; s=arc-20160816;
        b=rRovVQSVbjmwYQpW+UdmsDHd5/d7QZ0LvI/9q2EMgs3ENh0VR8TWal7LY4xhhdAezV
         wJU1inouuC6PLQnyrXXID5ri2K4Ivt1uLkWyj+JcUmvqJtOlX+sPXIG5mPZh/qTpitNO
         yHINZtienSbepSaDnCkIx1pXLxprfacMqDqdVaeqSUYdFIGGGwB8r3LWwx+ZddXl0vR0
         kzJjvmYHJ6xbXjmnXGXTKinEg1DYkdpRpLcD075JDQDYoOasituFsIrITJzo3pmcVJt/
         5Q6TdxLUOiFwSuYGKhHjLANvoj96lRdZiQ8NNbrlnR3aordgHUCTisuxfKmvVPrFpPS6
         AevA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=3jHfnLEuBbLuZp1KoFg6Y+Ls6QZ4NI3HZFKvn5UU8xk=;
        b=e46HgCVcJIEIGhw7aeGIzhsxcGg8fWZa7zFZoWCzKue4GJ7nNnCDphkVDn4++uPLXb
         4evKdFKQJfhrlvSdHA1yZ9XzSiiph9GeCTSwbdS2UBfZ06F1QN+RE5z6Z5FKrUyvgWIj
         h9f7bI7TXAIXSLFJsQHCXwvS87QQVNfOvJs8mZV+dcueRmtPBT087wgLw1NCe+QndakG
         SUFr5FHcOObob6yoHrkVnz/Xt/rekHJgazAgPWA5Hd+T6XnASxJJEgMHQtnQA7JAF3ij
         fwfjkVKQBG9jloeYrABlxFi+FYUwuGWqgH4Althk+4+zA8itQh+aKvKjXEESuhxoYQtS
         DSbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mPOHOyWw;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f10si1021132qko.5.2021.03.02.20.02.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Mar 2021 20:02:43 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D7D1664E59;
	Wed,  3 Mar 2021 04:02:40 +0000 (UTC)
Date: Tue, 2 Mar 2021 21:02:37 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Bernhard =?utf-8?Q?Rosenkr=C3=A4nzer?= <bero@lindev.ch>
Cc: linux-kernel@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] Fix ld-version.sh script if LLD was built with LLD_VENDOR
Message-ID: <20210303040237.tvwo34j322tzqnwz@archlinux-ax161>
References: <20210302221211.1620858-1-bero@lindev.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210302221211.1620858-1-bero@lindev.ch>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mPOHOyWw;       spf=pass
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

Hi Bernhard,

I have added the ClangBuiltLinux mailing list, kbuild mailing list, and
Masahiro and Nick to CC. Maybe ld-version.sh and cc-version.sh should be
added to a MAINTAINERS entry to make sure we get CC'd (I can send one
along tomorrow).

On Tue, Mar 02, 2021 at 11:12:11PM +0100, Bernhard Rosenkr=C3=A4nzer wrote:
> If LLD was built with -DLLD_VENDOR=3D"xyz", ld.lld --version output
> will prefix LLD_VENDOR. Since LLD_VENDOR can contain spaces, the
> LLD identifier isn't guaranteed to be $2 either.

TIL about LLD_VENDOR...

> Adjust the version checker to handle such versions of lld.
>=20
> Signed-off-by: Bernhard Rosenkr=C3=A4nzer <bero@lindev.ch>
> ---
>  scripts/ld-version.sh | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/scripts/ld-version.sh b/scripts/ld-version.sh
> index a463273509b5..4c042a306e22 100755
> --- a/scripts/ld-version.sh
> +++ b/scripts/ld-version.sh
> @@ -49,6 +49,18 @@ elif [ "$1" =3D LLD ]; then
>  	min_version=3D$lld_min_version
>  	name=3DLLD
>  	disp_name=3DLLD
> +elif echo "$@" |grep -q ' LLD '; then
> +	# if LLD was built with -DLLD_VENDOR=3D"xyz", it ld.lld --version
> +	# says "xyz LLD [...]". Since LLD_VENDOR may contain spaces, we
> +	# don't know the exact position of "LLD" and the version info
> +	# at this point
> +	while [ "$1" !=3D "LLD" ]; do
> +		shift
> +	done
> +	version=3D$2
> +	min_version=3D$lld_min_version
> +	name=3DLLD
> +	disp_name=3DLLD
>  else
>  	echo "$orig_args: unknown linker" >&2
>  	exit 1
> --=20
> 2.30.1
>=20

I am not sure what a better fix would be of the top of my head but
wouldn't it be better to avoid the duplication? This diff below works
for me with or without LLD_VENDOR defined.

diff --git a/scripts/ld-version.sh b/scripts/ld-version.sh
index a463273509b5..84f9fc741f09 100755
--- a/scripts/ld-version.sh
+++ b/scripts/ld-version.sh
@@ -44,7 +44,10 @@ if [ "$1" =3D GNU -a "$2" =3D ld ]; then
 elif [ "$1" =3D GNU -a "$2" =3D gold ]; then
 	echo "gold linker is not supported as it is not capable of linking the ke=
rnel proper." >&2
 	exit 1
-elif [ "$1" =3D LLD ]; then
+elif echo "$*" | grep -q LLD; then
+	while [ "$1" !=3D "LLD" ]; do
+		shift
+	done
 	version=3D$2
 	min_version=3D$lld_min_version
 	name=3DLLD

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210303040237.tvwo34j322tzqnwz%40archlinux-ax161.
