Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBZGXT2BAMGQESLOUYYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D08332CE0
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Mar 2021 18:09:57 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id k185sf10512381qkb.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 09:09:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615309796; cv=pass;
        d=google.com; s=arc-20160816;
        b=b8Qoko9iP+fbHxswkTjwprx2h8YWSPdWu1wiS3XqLSTJ+fiPWkzpUhQpWzUcu7bMXq
         dmKGbcjdxzaTB9IbhEc+zUZ3J4RwvqF5vkoDoTbh9uuH6W9z3k5Q10RlqKVzrX/Qj3id
         +2gjvZ0G4pE0LrOhHsC+OxrMhj2A2wQKkXeswICZnWDNqFx2SttYU10D8E92ZaSCbvrb
         zsMZah8VwTABFczU8xHNTmikTqyJvJjk+S6RRzAgs0xQST9RL1NelluSUHHChpcO2m+4
         oShNAzmZtT75Khc3DdWplBn1Noqa9M+oNj94TFEzjLYiFLp1y+E8qMtI9SLsh3fBTrDD
         PgrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=y7iI8DdNGUd0Svqj8kHFV6mJrq29JvI+CnMZGnk2Xew=;
        b=Ws/a4ilYZhPmc4t4UbNGsKWoOd/OBdV1ubIMKSv2mTCHjEoYukXfk7CIG7yb8lXBcn
         xwLnrvvua9ok4mzlqbuqFMsQjujeiOALN+geb62J+yezUdnj2ZHxe7yUmPyDoOViI8ue
         JSBo8/HJYP/l92mC3qFm7z4iLhv0+3+quF/keCyznd4ZQm9S4cvmpx0OUuRxQxMuFF/c
         XMloH5kiUBAcnCuHOdnZ/OokTSGvi7FH4A4bu3ty8tcZvnawkN/PYzbzAqqMZcMgwi6A
         DMypiBCtefe721xQ8y4u/wToXhF6OKpR9BYMEbA52J5hdod/bAwkxu5snHfGZDZWK2FY
         b29Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=eStQOfow;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y7iI8DdNGUd0Svqj8kHFV6mJrq29JvI+CnMZGnk2Xew=;
        b=Oxanq2NPiSOcPEiRbCsfocbZPtQ3EXLAy/CN5hygsLTjXzVmPWPQj1ZQmxoSCEh3vc
         9QHrIp1s3lYe/nw8ocYH6sHh6BCaLtPeZe13OexEBND8tZKJEvVmx+7mwGpG80P9K/pg
         djaow7paMNU/XfYu0KozhAy+E/x15UZZN5ao5i+/pPhdT/jq6QXKpwIATWXJQLY2Di1P
         HeWKxphVMsdGVItWJLQ733cQKu2+e/VUnFW8wRmTm4icfX1DI9Pm4544m16UNjp1ROPX
         wx9V0IH8zLSjY4CzI3u/cFZQOAo1EGEFMNxAahH4IJjXBtrEJRZFGLsVvmx7Sw1SbM01
         PhcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y7iI8DdNGUd0Svqj8kHFV6mJrq29JvI+CnMZGnk2Xew=;
        b=sZOH9enopTXEPkMQJdkv1FDunJmC0q8osJN14y/+0HD2dhy9zWIx9KUfJZ5YzSeB00
         fanKIfXivU8keUI0kmxB3zKsb7Qdkn1C0l+UpmgIsQtSaCVg2hQCSJcYmBpSfPVgc3yO
         T2NmdUo/jE3E/xsnafFVTIFpS7mRHyVwXS/CAGWZGPz9hTFtTmmP8m25jvJ9EIzdmZC6
         DwBvtnwncxo5sa9T7P4pDwQBxFy47ysm+AUnsuY62ESlzvOaI4ipJojRK0cWub6Mf+iu
         C5YFktgSkpkSwRAB1Gs4JGiehQdy89jPDgGA+RUj3HIOD911gT947e/3smiqc1HMRKuF
         manQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tTR3/oyletoHtgOgnjpmlRhJX8VzhLNY5lFk+nWRiWY5J2EU5
	uCjfAQZ+WiMsfY1SfpozRJk=
X-Google-Smtp-Source: ABdhPJwdOjeMhWtw4MMhIxE9XAsu10Bm+oDOWAbJic08ObQUh+8w371C7q22jJuqEkrPirwZ9SqOGA==
X-Received: by 2002:ac8:6913:: with SMTP id e19mr2730800qtr.78.1615309796188;
        Tue, 09 Mar 2021 09:09:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5e47:: with SMTP id i7ls8247092qtx.6.gmail; Tue, 09 Mar
 2021 09:09:55 -0800 (PST)
X-Received: by 2002:ac8:4a8f:: with SMTP id l15mr25989390qtq.238.1615309795730;
        Tue, 09 Mar 2021 09:09:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615309795; cv=none;
        d=google.com; s=arc-20160816;
        b=eytRSYhYG5qM7/qtNmbgHIsXC+Kc5Cw5izzzwR1C0p79n+GpLjb30JECCs7Sos2Bxn
         2S1MiaChpWizUnu3jW/5YzMo4ptuFVEJaIuHaUx/JyJ7uIMVDPXB1AGvLMK6qBP+mVKz
         ghzdcgx378alr0ToENi0IOZaETa3cTi5g5xx4hfkiHmzjnRXRGYwPfY6zFuM/d853SDM
         qWCk3k3Qtc+P6Ymfto6ZYGPJGmI5/qGyGgGzrgxgDFkBCpV7xXqjfeTxyXnkljPNBI/L
         QB77NzcJD4ExMF8RPUILiNc20m4x4Bam0rpEGR4ErVV1caJhdPDEf0URAn1G3JAzj9ZA
         v4mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=Pal5Drg605AgZU5o/jFyWQrW4YUqQKhMRpZPLbzgbH8=;
        b=gnBWzUhofv8Dg89qi5oAdUm8xnwFKEQwLszRmzVoTLBjfZoPdACUkofoN2gzToX0/F
         GvLxmVH8AzKGSWk+C2fZ5jkZ2PEAHKbap92NDXVMLAdys4wwQbJSl2F6sIZjDMcA6Q1D
         VU3aFdqiujxBLYsWN3O6IE2gLRDRahTxj9XM42EldrWLh+tY7r7mw5/ZdsBcgQf1kGXW
         jgo0fcs8CNqPxfD8oamOJv1Sk1oLBwVu+rIjWiQojoJPlsQxWo4CtfhjuvHXzOA385DC
         lpd4dVrDcqruIC1FyXmDYpU7LcXV2MzqrvFxwWowJ6jbHjLaqUwsVOZwq73tBtB2+LyS
         5P4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=eStQOfow;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id g4si776208qtg.3.2021.03.09.09.09.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Mar 2021 09:09:55 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 129H9ef5012071
	for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 02:09:41 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 129H9ef5012071
X-Nifty-SrcIP: [209.85.216.42]
Received: by mail-pj1-f42.google.com with SMTP id t9so1207880pjl.5
        for <clang-built-linux@googlegroups.com>; Tue, 09 Mar 2021 09:09:41 -0800 (PST)
X-Received: by 2002:a17:902:8ec9:b029:e6:c5e:cf18 with SMTP id
 x9-20020a1709028ec9b02900e60c5ecf18mr14856219plo.47.1615309780374; Tue, 09
 Mar 2021 09:09:40 -0800 (PST)
MIME-Version: 1.0
References: <20210302221211.1620858-1-bero@lindev.ch> <CAK7LNARA3uKsW_G+gnCX6dvSwgXWzqgZON7pc6gBWdw9gimq1A@mail.gmail.com>
In-Reply-To: <CAK7LNARA3uKsW_G+gnCX6dvSwgXWzqgZON7pc6gBWdw9gimq1A@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 10 Mar 2021 02:09:02 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQb2pCtFgebADigYoRJUo4M3i_4iwS=88QYZx5H+736Hw@mail.gmail.com>
Message-ID: <CAK7LNAQb2pCtFgebADigYoRJUo4M3i_4iwS=88QYZx5H+736Hw@mail.gmail.com>
Subject: Re: [PATCH] Fix ld-version.sh script if LLD was built with LLD_VENDOR
To: =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@lindev.ch>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=eStQOfow;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Mar 4, 2021 at 12:34 PM Masahiro Yamada <masahiroy@kernel.org> wrot=
e:
>
> On Thu, Mar 4, 2021 at 9:18 AM Bernhard Rosenkr=C3=A4nzer <bero@lindev.ch=
> wrote:
> >
> > If LLD was built with -DLLD_VENDOR=3D"xyz", ld.lld --version output
> > will prefix LLD_VENDOR. Since LLD_VENDOR can contain spaces, the
> > LLD identifier isn't guaranteed to be $2 either.
> >
> > Adjust the version checker to handle such versions of lld.
> >
> > Signed-off-by: Bernhard Rosenkr=C3=A4nzer <bero@lindev.ch>
> > ---
>
>
> Bernhard,
>
> Could you senv v2
> with the suggested code change?
>
> Please make sure to add
> linux-kbuild@vger.kernel.org
> in the To:


I did not get v2, but never mind.
I locally modified the code and applied.

I added Link: to your original patch
just in case I make some mistake in the
code refactoring.


The final one looks as follows:





commit 0b2813ba7b0f0a9ff273177e85cbc93d92e76212
Author: Bernhard Rosenkr=C3=A4nzer <bero@lindev.ch>
Date:   Tue Mar 2 23:12:11 2021 +0100

    kbuild: Fix ld-version.sh script if LLD was built with LLD_VENDOR

    If LLD was built with -DLLD_VENDOR=3D"xyz", ld.lld --version output
    will prefix LLD_VENDOR. Since LLD_VENDOR can contain spaces, the
    LLD identifier isn't guaranteed to be $2 either.

    Adjust the version checker to handle such versions of lld.

    Link: https://lore.kernel.org/lkml/20210302221211.1620858-1-bero@lindev=
.ch/
    Signed-off-by: Bernhard Rosenkr=C3=A4nzer <bero@lindev.ch>
    [masahiro yamada: refactor the code]
    Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

diff --git a/scripts/ld-version.sh b/scripts/ld-version.sh
index a463273509b5..30debf78aa09 100755
--- a/scripts/ld-version.sh
+++ b/scripts/ld-version.sh
@@ -44,14 +44,20 @@ if [ "$1" =3D GNU -a "$2" =3D ld ]; then
 elif [ "$1" =3D GNU -a "$2" =3D gold ]; then
        echo "gold linker is not supported as it is not capable of
linking the kernel proper." >&2
        exit 1
-elif [ "$1" =3D LLD ]; then
-       version=3D$2
-       min_version=3D$lld_min_version
-       name=3DLLD
-       disp_name=3DLLD
 else
-       echo "$orig_args: unknown linker" >&2
-       exit 1
+       while [ $# -gt 1 -a "$1" !=3D "LLD" ]; do
+               shift
+       done
+
+       if [ "$1" =3D LLD ]; then
+               version=3D$2
+               min_version=3D$lld_min_version
+               name=3DLLD
+               disp_name=3DLLD
+       else
+               echo "$orig_args: unknown linker" >&2
+               exit 1
+       fi
 fi

 # Some distributions append a package release number, as in 2.34-4.fc32




--
Best Regards
Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNAQb2pCtFgebADigYoRJUo4M3i_4iwS%3D88QYZx5H%2B736Hw%4=
0mail.gmail.com.
