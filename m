Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBRXEU6BAMGQEIFR6OCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id E4ABF337015
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 11:34:47 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id m22sf12724258otn.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 02:34:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615458886; cv=pass;
        d=google.com; s=arc-20160816;
        b=r9Iy9y8rZk+7ooIqRIH4BtznL9fWNfxMnB8+SDwRTcQAHbuZTIZ3woksjMnoNaAjAt
         k8cQn7sgCASExYTJEY1jkVJlKYITS5lFMvyXTph7eI5EbAsXenbwu/d9sznkOo+aY1/R
         xNHSAuPYMgbVqgOSSYx/AXVYOqLakC/nfRnI/FB014OvNWgQFUb3aUjErlcDURDJj7X5
         iO44WuLrEm3Czi3IpFmmKNKznTVTbZb5/06PzxkNT49JCO5gSrP3KdHF2SJ2TUnRZZJ8
         z06u4N9BG4U+lTGHPWJEQ9//HKvTlXSBU5SbEaz0GDGwNbTtc9DALBVuf+uYuv/eWbNy
         JVKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=t6WX/RnlomdheOXP5IE/bdx6cWMN2yiHP+3x4+5QgUs=;
        b=n81lcI7U2DStgRQoAfjEy0aL0LZZtqu7wkVsZ2SZv1QZEaPalj26DnhmIwly+x4wh9
         EUqzN7hpWbHrgxA7lS+Jsz7T3Inyx3d/KRl7o+QdoDguuxCpBUe3uTEo7sDhRsG8dts7
         VwhdlMdFr8kmabJ+RcaEDgMVU6tSiHsLoAzCPSkLaWKPSHAUuOBvAtikk6bXOTyNRGC0
         TTFBiz5tVC2nEb1CW5nbnbDVIw7bbdIDknWbSI7F8M2CRUI2AKVcBB/nwaY5kwrGK8cI
         cEAsB6VdDHIiNbTtrO05m9Lgtp/DlMJYUa7GzP71i+3zt6KnRaVP5wiZCCWB612Vw8Qo
         QtRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RALITuhr;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t6WX/RnlomdheOXP5IE/bdx6cWMN2yiHP+3x4+5QgUs=;
        b=Nni34ccPyfd52bFnBYCjWtsRUYOOt8n1okkbEph5WZZuml63TFugQQRas4qngfGCSp
         n5sGq30a6rkjfuIeguec0H4IA9S5YqsUKyUM9CNuPSLo5DWxUIHuQfY7GAgdudJIkT2d
         brw1/HUyuDoBkLhYVG3s+0olZwg1mHc/O+f0/iMM9sdq1ZupDP5kyEPB2mMVrlVLAlYH
         8HhVa+BmHvV7RBEbSmaCBP3ztxpzIeyPcH2ANKZvKLwoljt+tgL7Xz/t5LHGHUnGJdSw
         ipGusgyHuBhuOp9prvq2xegXixEwP0Xn7H+bkcBrWy6MG8/HzyOgbZM5puot8DoGVgjT
         doFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t6WX/RnlomdheOXP5IE/bdx6cWMN2yiHP+3x4+5QgUs=;
        b=qppjz1wYr5ws3sqgnkKczt8ZTUIWnSFbBnKZ2NpAAamcoBE+RUHDlx8BdSrkJrB29X
         Ar2c48T5q2kJ7rpouwdsPZdX4ZGmjondLPoz9XyfYuQFh6D7ufapbGCneLiA5X4NW6oA
         4unr7Azcw5nQc+WrZbfgXnyoVnpxQ35ez7IGy9ctPj7KVFj9C2yYSVbQlL4b7aqTjgdj
         c3CVAJL+EWAl/ToA0kam6qWV+o/OA3Iweu4jwQXAz/kDRILe3/S0hGftOVlT/T7GUxY7
         f8zt/8zGF+/x1dDkf/bfF22v4IiiJo8Ls+wM6rzT7iw9fG/715tnfTQXIasi3H4dxBJ1
         8rNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531U4eiDcldaA1hR+QpaB+oyo4NcfjQoP/+Voo+7wgCLDsp3vO7B
	IV9C85GqDO/kPMmXEqnC4HE=
X-Google-Smtp-Source: ABdhPJzKPTn/TFU5gpY/1fOyUG4EkRcZ5E/gnudw2RmmailzR2nnNZoYqjznSb1nxSkAUZQPkVgiTg==
X-Received: by 2002:a9d:5191:: with SMTP id y17mr6301718otg.332.1615458886689;
        Thu, 11 Mar 2021 02:34:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c57:: with SMTP id g23ls1319025otq.11.gmail; Thu, 11
 Mar 2021 02:34:46 -0800 (PST)
X-Received: by 2002:a9d:8d5:: with SMTP id 79mr6228543otf.345.1615458886330;
        Thu, 11 Mar 2021 02:34:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615458886; cv=none;
        d=google.com; s=arc-20160816;
        b=Wt3uqkPV8KTW7Q8V2WMVjwR4KJoRzO8PcVfQWuLWMNB0yCH+Qr4j8h8m6uMedqEdaM
         quHjan7Ag4ffxMzTa6zJXsNwMYx8Kv1iwdQfHiBFGveSMqSnAa9pGJwhq/+qjWkrtYSG
         3Tc5QG/yqpppZHZ6pY9lrhQi2UHWCppdhhMscucUpgsziR8j0ngqfFiNL554xX7c9OjB
         W2pUGEpzTzl9z4ms5iOOFpfEDSc7UCZL6wcx0OZHCq2/44rVNQg6kGgM+4GHe7Lkdyc8
         cb45Gny6YmjJgqMErOnhoZ9P85uolYSCqdNZBLU7rgp4FoucCiOQyAyArcrkE10Ev0qL
         fyPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=JL39avkr6XAXggrtNaqY+rW1xFvHegX4PxpEorYJ0P0=;
        b=Hz2nG3y0TDo88AZAO/piOo2fev1nPb5iviDduATDmgOHGK3kox6TvJSnXGjzRY9Rfb
         /keq127dvewBoL3n2BRt4zUCL2N2w5s1ZxAALzbnaBooqfE6KW/zVTMmqUTjarJv6RZ5
         xKItKg0heEiKR8CO5XVq81wuU9HVwFMC+Q5nR4X6yDP6bbPZ9Gv7z0vNO8oNFV4gmgfQ
         mxWse57Qvr1i9DYdXeaL0R5z5pz67Dq8WzKRYVCU23hSzLtBeURBMed9qd1Gs+aWl4CJ
         4IA1s0N8ZIE0myMJeA1aJrestOI2vCrb1zOB1bnKiJC+52Qe/Lu/5QXkj4O02f0ygqd5
         98GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RALITuhr;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id j1si182671oob.0.2021.03.11.02.34.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Mar 2021 02:34:46 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 12BAYJEI014541
	for <clang-built-linux@googlegroups.com>; Thu, 11 Mar 2021 19:34:20 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 12BAYJEI014541
X-Nifty-SrcIP: [209.85.210.174]
Received: by mail-pf1-f174.google.com with SMTP id j12so14095880pfj.12
        for <clang-built-linux@googlegroups.com>; Thu, 11 Mar 2021 02:34:20 -0800 (PST)
X-Received: by 2002:a62:b416:0:b029:1e4:fb5a:55bb with SMTP id
 h22-20020a62b4160000b02901e4fb5a55bbmr6828665pfn.80.1615458859439; Thu, 11
 Mar 2021 02:34:19 -0800 (PST)
MIME-Version: 1.0
References: <20210311094624.923913-1-masahiroy@kernel.org> <CANiq72m1e9MD83sP5iZCfzoCR0qLz2HQj_VVkE4X-56vf6e7fw@mail.gmail.com>
In-Reply-To: <CANiq72m1e9MD83sP5iZCfzoCR0qLz2HQj_VVkE4X-56vf6e7fw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 11 Mar 2021 19:33:42 +0900
X-Gmail-Original-Message-ID: <CAK7LNATP2ORegUu0tGtSU1+CSKZVX7m84GOT913X5L29MopAXQ@mail.gmail.com>
Message-ID: <CAK7LNATP2ORegUu0tGtSU1+CSKZVX7m84GOT913X5L29MopAXQ@mail.gmail.com>
Subject: Re: [PATCH] kbuild: collect minimum tool versions into scripts/min-tool-version.sh
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nicolas Pitre <nico@fluxnic.net>,
        Nathan Chancellor <nathan@kernel.org>,
        =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@lindev.ch>,
        Miguel Ojeda <ojeda@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Will Deacon <will@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=RALITuhr;       spf=softfail
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

On Thu, Mar 11, 2021 at 7:18 PM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Thu, Mar 11, 2021 at 10:47 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > +# When you raise the minimum version, please update
> > +# Documentation/process/changes.rst as well.
> > +min_gcc_version=4.9.0
> > +min_llvm_version=10.0.1
> > +min_icc_version=16.0.3 # temporary
> > +min_binutils_version=2.23.0
>
> +1 to creating a central place for all minimum versions.
>
>     Acked-by: Miguel Ojeda <ojeda@kernel.org>
>
> I wonder if you considered creating a folder with files like
> `scripts/min_versions/gcc` containing the version string. That would
> make it easier for reading from other languages or even importing them
> dynamically into the documentation, thus removing even more
> duplication.
>
> Cheers,
> Miguel


Hmm, that is a simple, clean idea.
Then, we can simply read out the file

$ cat scripts/min_versions/gcc
4.9.0

I do not know how to handle
per-arch versions in this case.




Or, we might need to stick to shell-scripting
to handle this.

scripts/min_versions/gcc
#!/bin/sh
# SPDX-License-Identifier: GPL-2.0-only
if [ "$SRCARCH" = arm64 ]; then
       echo 5.1.0
else
       echo 4.9.0
fi


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATP2ORegUu0tGtSU1%2BCSKZVX7m84GOT913X5L29MopAXQ%40mail.gmail.com.
