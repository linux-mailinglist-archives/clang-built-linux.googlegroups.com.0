Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBJFLQGBAMGQEBZKSLCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 930A432CADB
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 04:36:05 +0100 (CET)
Received: by mail-vs1-xe3d.google.com with SMTP id v15sf3550933vso.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 19:36:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614828964; cv=pass;
        d=google.com; s=arc-20160816;
        b=yLjBOK6FovZ83CodilEMiuGNMlo9GNAR3Pp9AY8i44D5MoW1NS80OVvoot3teNx6aT
         JFHv4/63nvK5Ot4DcPjKoyyWhWTts3d7n/pA7GNGsNcZZOpFT9PqZFyt7rlpBsaT7QJ0
         Ymu97zxI/JC1kl4/tVOCpleoULMDNPvmqLWw5GmZ1zEUlcvlZULV+csne4uEzZzGm4fw
         PD/xKuPp/GePOR28YTkvi8YiI6wjZa3RikG1ZFfsRIBXxQVYR/dj4ZES7fcjNmh77F8S
         CDxOueMPkIlqk3W6RjQC/ZVZLYjIOCEstDzUcygFDeJ68z8psYQsqNZHb/W90fwCc4w9
         1few==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=wg2gQ56Vcw9FNpe4jNFFprqaDmgwjRC1yMsxmvyW3hw=;
        b=UjpjIFovbTVim28e35ZbfMfYjjHmDa+z68Ig2Pa45ZD4nMpywjoizchM+jJ4aa495K
         3cAs8uG87OC4D26qpceul0j7WRM/kkJ3okzUtj+G6s3KT2WcTlJ/7d60Zppfc+ojopY2
         TzYuaLiGbIZc2mgV8tIr8FKygF17yuA5L3PLZbGqNNHv//CaAuarT0bH3CqFnuBiMAqW
         twcN6roQpUif6hbKot41+Uj9FumAir8snHBrUZwNE2vKH0gKwo3Hka9mIMhSGK87480u
         Bwrdtx719CsaVIDscMCVc651wXizrFMtnjABUHLhtPiTIXyHeSp3i1yPv1Z0jaTY5/9o
         cMrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ArOUi1Y+;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wg2gQ56Vcw9FNpe4jNFFprqaDmgwjRC1yMsxmvyW3hw=;
        b=CdPiu2EBjfOK8uZqkMbuDxXxSMgxsZ7IEX+LDpcOLIxhD//Ms6wxVtR1i1ChRW03mO
         vx4TnL1XMAE2ojPgf3Nlm90idK+750zxU65uUIwV8dPh/j9JcuFSqq1ozjjocO1N9v4k
         kMkwxNSFgYe9wYES6v5vbRUY+pBFTLREtNK5KheS3u8KXGtfiksLzTMgPavxvZqJco+J
         xDaVAGxyl6LEBdcx74Fufbl6rh7ckCu409ajJlFmD8SgJ8XSLYT/wMP/lcHp+pFKvEAf
         cQcQqK/smFasB6QgkeerB3FDnfGVr6QjMqtGvE/bmbvkBGsDHlQ7RCG9srxTpr4sJbmK
         0i+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wg2gQ56Vcw9FNpe4jNFFprqaDmgwjRC1yMsxmvyW3hw=;
        b=A42qoEJbCyf2HlaHA9FuzUsOp3HMf6ApIcd8B1bGFT4BxaJQp5dbtYHrADDnrOSSHw
         DoF1Ph1xtVGtEjqGTb5xjjvUAdGAHCooNl6J8C4htotSAIG68Y96PQore/05HRB69iZY
         ePsbpt0x486qYi55HtTjcbbfmCjrOcMXAnhEMya1McXm2JtIQ1UOhv0Onflj59I7qm5H
         3w2GYT/iegalSocIk4oZY7CliRWzue4qIE6lKOQNz5tWZaxcMLV6q7q8LwwjXfUgbxTx
         hn+v0YvGpdeJQr00eWoO28gTaRNYfL9pBBiED1ODkoEm/hC3uwqv8uQD5HMXYUG3VNgw
         jenw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XfaLdPBrCjWwxBqEg+m60zCTJndQzf7bJr55zhC7XYdLuIvm0
	7TTFLuKvI3rsA+uoCTYrzwQ=
X-Google-Smtp-Source: ABdhPJzvXkt7Ag8esKXh5VJEUf0d0pPdqsDVEuagNRv+Wc8ltHtHIYSYd13GEtA/4DTK+iBvnYrM6w==
X-Received: by 2002:a67:d44:: with SMTP id 65mr1388122vsn.44.1614828964584;
        Wed, 03 Mar 2021 19:36:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3917:: with SMTP id b23ls75017uaw.4.gmail; Wed, 03 Mar
 2021 19:36:04 -0800 (PST)
X-Received: by 2002:a9f:2b03:: with SMTP id p3mr1371724uaj.28.1614828964132;
        Wed, 03 Mar 2021 19:36:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614828964; cv=none;
        d=google.com; s=arc-20160816;
        b=xgovOkhbu4N5YEXuZqtiH9UkIDM1YPbmuNWnUUC6Pkzrg2uZVrv1qdt+tjRTMfYl5W
         8LcLsvU7yTEcSghQzeFE5ctPy50AR1oMCxfhzr7/NwpkDtcH3R4xbNc6aBdXrx32wfyt
         T6OLCB/8zrgTijZdDH22oZTLfhs1X6rbuZokSv/uX03mvulE3Rg98uSs+DtSrfD4e2qu
         oTdOeq7e5pc6EG39KDKvJ335DXnxsXor9LuDIJ3JoJ9bJmWyRGoiP8wHTTCKyaTtZ8f5
         uBPPAJajgIQjKFZ5F1flFDnHz+VYDNAEotYZIK9v+tw08E9ctdNw/7Y/96ZXfGQi/44A
         KyHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=9xlyy3Pf9ec/TJfLoVRw1xhcBXuHNCdaC+6iRdmoiN0=;
        b=PNgTCNPiFPSi/fabG7193Ze6f6kHIe79hpot5yb4Xf6BFPKQ0UIxmleuuYrlTWzp90
         8cvAEjMuQaLMw382sptaLLLQTnLC0zowcz33aIv5aiD2WBCH6wMXkA0FPQ0sffwLOgnQ
         JsiGXezuSvmCMxgZxYo1MRb/h6NZoBX+/ryXmX4PEdnP63TE+4kyEFqwtoFHKRyi9EcD
         0tM+ZsMjMKc/DpYnbQLoXK8ZMXhRJTHubmuQNih26SE8Vd/e5mOUNkfjX/i/SG32gYOr
         JnjDBAUgR0rdxelHFZcgosvSOpcg+1Uhx8Q21r7/F/M93ZMQF/jO3BBREoRUzFLw7Sdp
         PVCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ArOUi1Y+;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id d23si445041vsq.1.2021.03.03.19.36.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 19:36:03 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 1243ZbKg027160
	for <clang-built-linux@googlegroups.com>; Thu, 4 Mar 2021 12:35:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 1243ZbKg027160
X-Nifty-SrcIP: [209.85.216.41]
Received: by mail-pj1-f41.google.com with SMTP id d2so5899472pjs.4
        for <clang-built-linux@googlegroups.com>; Wed, 03 Mar 2021 19:35:37 -0800 (PST)
X-Received: by 2002:a17:90a:5510:: with SMTP id b16mr2299989pji.87.1614828936712;
 Wed, 03 Mar 2021 19:35:36 -0800 (PST)
MIME-Version: 1.0
References: <20210302221211.1620858-1-bero@lindev.ch>
In-Reply-To: <20210302221211.1620858-1-bero@lindev.ch>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 4 Mar 2021 12:34:59 +0900
X-Gmail-Original-Message-ID: <CAK7LNARA3uKsW_G+gnCX6dvSwgXWzqgZON7pc6gBWdw9gimq1A@mail.gmail.com>
Message-ID: <CAK7LNARA3uKsW_G+gnCX6dvSwgXWzqgZON7pc6gBWdw9gimq1A@mail.gmail.com>
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
 header.i=@nifty.com header.s=dec2015msa header.b=ArOUi1Y+;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Mar 4, 2021 at 9:18 AM Bernhard Rosenkr=C3=A4nzer <bero@lindev.ch> =
wrote:
>
> If LLD was built with -DLLD_VENDOR=3D"xyz", ld.lld --version output
> will prefix LLD_VENDOR. Since LLD_VENDOR can contain spaces, the
> LLD identifier isn't guaranteed to be $2 either.
>
> Adjust the version checker to handle such versions of lld.
>
> Signed-off-by: Bernhard Rosenkr=C3=A4nzer <bero@lindev.ch>
> ---


Bernhard,

Could you senv v2
with the suggested code change?

Please make sure to add
linux-kbuild@vger.kernel.org
in the To:







>  scripts/ld-version.sh | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/scripts/ld-version.sh b/scripts/ld-version.sh
> index a463273509b5..4c042a306e22 100755
> --- a/scripts/ld-version.sh
> +++ b/scripts/ld-version.sh
> @@ -49,6 +49,18 @@ elif [ "$1" =3D LLD ]; then
>         min_version=3D$lld_min_version
>         name=3DLLD
>         disp_name=3DLLD
> +elif echo "$@" |grep -q ' LLD '; then
> +       # if LLD was built with -DLLD_VENDOR=3D"xyz", it ld.lld --version
> +       # says "xyz LLD [...]". Since LLD_VENDOR may contain spaces, we
> +       # don't know the exact position of "LLD" and the version info
> +       # at this point
> +       while [ "$1" !=3D "LLD" ]; do
> +               shift
> +       done
> +       version=3D$2
> +       min_version=3D$lld_min_version
> +       name=3DLLD
> +       disp_name=3DLLD
>  else
>         echo "$orig_args: unknown linker" >&2
>         exit 1
> --
> 2.30.1
>


--=20
Best Regards
Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNARA3uKsW_G%2BgnCX6dvSwgXWzqgZON7pc6gBWdw9gimq1A%40m=
ail.gmail.com.
