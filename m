Return-Path: <clang-built-linux+bncBCZ35CE25UGBBNVD4SCQMGQEJSFGE7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B21A739A936
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 19:30:31 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id f5-20020a4ab0050000b029023e3bd79e80sf3943886oon.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 10:30:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622741430; cv=pass;
        d=google.com; s=arc-20160816;
        b=I29DXo8cYop0QpnzG2AbnC1elMnLdg7QXI0hVBNCnvAKEh4IS8kJqhsx5wJsRRdnAs
         2Rx7bYPgaLqJazeSpvhPmBj5S9LHupFC3/pg0s4dUO0+2HZW3bTcq+aOBqFovhqygeKq
         g7SOf2zC2kUWeDszIbdYm4fstRuIWR5uKU2n9gA/eegGGPNf0C6OpgdezZo/SHcGgkaJ
         f657PJ5WQ2Pp4E34oiEUZq2PzJ8HfkLywdBVIsCyQhUF1CEZaw6XNhV6hhxt6HcXcseo
         8hIXFWzU0ANAK6YbJQQnscVTpXYi63JKIGrPR9e2vx+ePHbuLAYUZRanregyVcpnMWe3
         kXGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=k8GU6UsThdau337Rcyr1CkGXswlt9sGX6GGpbTrdczU=;
        b=0AJ+20rv+vrsM+ojBRLKT0Lr3O7wzNiBKWd1eW0BQIT9F0NeM/1nq5VDLu7HgUIymw
         Dxy/HaWiCMNLKfvdXzOrwCjlirSrIno6X+U0SWis/1ZThdJ+5TSMm/kLROOHc0RedWu3
         oTclGNMUNRzJ0aZLPZhnxnmcV+lbGQkv2KTDPmKK7xnB1djWQG4WQTaZd65Ie8iQw16X
         2FJvbSkiyZqQ6ZGf6FZ0q16eLIVZVlP3f7D3u1B1T0O7Og06xzPKtI8gpeCBOERtp63b
         p4d18DWaBRpop25RhrKac+qf3VaCym5frQgHlkIYuGWmyGE+yXL0ZXYi5z0U3UOqFTBt
         xRNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jic23@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k8GU6UsThdau337Rcyr1CkGXswlt9sGX6GGpbTrdczU=;
        b=oPgZRg8DkWNnoSQcg8UDig9eCauhb21xlvrDWn5QDuvs0A1dbXqIBj59FkdJUrEF4j
         O0Faxcd4OTliMitxfKBiNYFT+AYTYmDTvCEoS/qrnulrGn0eZS7JOWTuncuIU6ctj4QA
         O4XIsQF8bAhIQ3PC6ozh/npNA7Hxi+RCWRsbDakMas53Lgj4qA4JmpGbfNulIH0dAZll
         eCfEYU1x1S3OHaD5x4McZZeDknG8HeNz5APcv76hY5L7A6wJuDZFTtH4fi3NjbzubB1L
         HDF28+x+tAu6J38LDL81tujAxb0KBa2LUopxMDWC8rJs6b6wl6kGu7ehkaKt8Sqandqr
         o8mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=k8GU6UsThdau337Rcyr1CkGXswlt9sGX6GGpbTrdczU=;
        b=H1MUVMCGCgj3rX4tuNCcPo3sg8XcBfBbJY4Xy5p8LibVKXI9zms7SeRWtr2jKsoAbn
         VFV669vNHxSNRcCwACRMI7iP7E+OqsfNE6y1S37a9YRATeLLYSpx5NCZc1v8JK1pdcMS
         TdzO8GH3oYj/8OcuhqeIZ7H3i4+8wH5vV2mQptHh02vW0KCseEWliFV6AE9cctex5sdT
         RMJOQvdmkYY07C9Kisin02kx3TkQV+UXQCzoV8iyLf/sPRLriyoJBQu8+PA/dxrkFLBX
         Q3xUmLOLmlW9kuk2FMELdd49Jqlcd+5R9Z4SV6B6IK53ghK3ukn39k4rzf7cOF5DKefb
         5YxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RjHh23F778U2c5NQpyD/5QAtTnmiQmDZh6ZbyMCa9h5OhTqFl
	IyRtpl8OhjDrR+FrVpU2rQo=
X-Google-Smtp-Source: ABdhPJwID5LebQqY1Hg5il6gXQUQ5HQGh4EnEIi+kymlsKhBDKdbj9uKda5f8hIHUsA+i4uR571qjg==
X-Received: by 2002:aca:4d07:: with SMTP id a7mr8288727oib.106.1622741430243;
        Thu, 03 Jun 2021 10:30:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:51c6:: with SMTP id d6ls913461oth.7.gmail; Thu, 03 Jun
 2021 10:30:29 -0700 (PDT)
X-Received: by 2002:a9d:6c47:: with SMTP id g7mr326480otq.67.1622741429888;
        Thu, 03 Jun 2021 10:30:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622741429; cv=none;
        d=google.com; s=arc-20160816;
        b=ejH27PgMY1fgIBWiXuRvqiq9G6qsTVvPaYC9bIFfaWwmGWV+3340HDC5NQVZ1VsSTf
         hI5O0214l7+whssgdPSKOCvBxzZTTXF6h5UFQzKhBxUpRKYFhWSCrb7CmIj1gJJsWvVl
         xzgCX4DJm39HLSJCeVXi/r7bY0cuqdWys0VoCocEpb9I5ShEYgjI3HUPg7Xm9x+gkT5F
         bOp9zHJX14+pL8eO46hybmzBo+5EXtE9nAW8ypTjoYXmk1IMwjeZdibD0Y+ZwVRaypG8
         vtJuidkWYO4MA8zw+NkLCx8ny+i5iPeJatXp+wu5gMjeupnOKW7wZXC13dnpFMsnj3Hk
         PLBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=RHRlqU2sN8mAVYqWf7YvHVH7LP9LmztMnaPwXaI5vMY=;
        b=OTeTFKHT4t16uPpGpuEArUqK7LMXi6WC3UWWJ1Q9g0hU5O+JbCvrH0D74iy06xxr66
         colY2QzH/5AHDsLfyFMaoKp7wSaZmFS5+xq53JvxbQn0KGIbD5x1MBqoJqM+xQH4YlXM
         0QJqUZbTr09y0KFZE5bIQKaLoNqLjVf7ORBGBcB6Oeyq1Iy+w7AIrGhdlEYNUx9qK/HG
         bQlrXepgpDP/nrgGh6qUgBDSuiX7n/Nd36UC8UAeH6JmqH5BWtRQMoZSDCYftcZOqWHe
         IS5Ix9wCWstqP7GY2piAgTMvS6LE35y7jomKjolmSJ6O9YZAzBCWUMuUzp/0+DebEGt5
         AQ8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jic23@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c9si391639ots.4.2021.06.03.10.30.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Jun 2021 10:30:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from jic23-huawei (cpc108967-cmbg20-2-0-cust86.5-4.cable.virginm.net [81.101.6.87])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C47106108E;
	Thu,  3 Jun 2021 17:30:24 +0000 (UTC)
Date: Thu, 3 Jun 2021 18:32:06 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Joe Perches <joe@perches.com>, Nathan Chancellor <nathan@kernel.org>,
 Arnd Bergmann <arnd@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Maxime =?UTF-8?B?Um91c3Npbi1Cw6lsYW5nZXI=?=    
     <maxime.roussinbelanger@gmail.com>, Jean-Francois Dagenais
 <jeff.dagenais@gmail.com>, Arnd Bergmann <arnd@arndb.de>, Lars-Peter
 Clausen <lars@metafoo.de>, Alexandru Ardelean
 <alexandru.ardelean@analog.com>, "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com\"     
    <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] iio: si1133: fix format string warnings
Message-ID: <20210603183207.4f76ecf3@jic23-huawei>
In-Reply-To: <CAHp75Vf2ZO-5XEQtzdN2ABLLC3KLDmQxGps2uD1z06Rs7L2z=w@mail.gmail.com>
References: <20210514135927.2926482-1-arnd@kernel.org>
	<7afc367b-8103-9d48-1bfe-d505d86553b9@kernel.org>
	<20210516103628.2cf899a0@jic23-huawei>
	<644a711e4d2639a23bfc50dffa180ad184a4acb1.camel@perches.com>
	<CAHp75Vc72vMbj311P3xnxh6ExxzD1=enoETj6wY8dHn+xBJ4+w@mail.gmail.com>
	<fc3afc8e74ee9eda0b4eaff9a4d9ad32f1c461c4.camel@perches.com>
	<CAHp75VeQdFoJrPhXU2fYdrhLUwvM4NEoPn=Z4WBPkhOa4xK+ig@mail.gmail.com>
	<cfdbe504c7ed3964bef22c551f0c78c048ce3d2d.camel@perches.com>
	<CAHp75Vf2ZO-5XEQtzdN2ABLLC3KLDmQxGps2uD1z06Rs7L2z=w@mail.gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jic23@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jic23@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Sat, 29 May 2021 10:52:44 +0300
Andy Shevchenko <andy.shevchenko@gmail.com> wrote:

> On Sat, May 29, 2021 at 12:35 AM Joe Perches <joe@perches.com> wrote:
> > On Sat, 2021-05-29 at 00:16 +0300, Andy Shevchenko wrote: =20
> > > On Saturday, May 29, 2021, Joe Perches <joe@perches.com> wrote: =20
>=20
> ...
>=20
> > > > > > Likely these should be 0x%02x =20
> > > > >
> > > > > What=E2=80=99s the difference (except printing 0)? =20
> > > >
> > > > (assuming the argument is unsigned char/u8)
> > > >
> > > > %#02x will always emit more than the specified length (3 or 4 chars=
)
> > > > values < 16 are 0x<hexdigit>, values >=3D 16 are 0x<hexdigit><hexdi=
git> =20
> > >
> > > 0 will be 0, btw. =20
> >
> > Hey Andy.  Right.
> > =20
> > > > 0x%02x will always emit 4 chars =20
> > >
> > > *Minimum* or at least 4 characters. There is an upper limit of sizeof=
(int)
> > > * 2 + 2. =20
> >
> > I did write assuming the argument is unsigned char/u8.
> > For the general unsigned int arg case, you are of course correct. =20
>=20
> Signed char also.  Basically for all signed types and unsigned int cases.
>=20
This was near enough the top of my tree, I decided to rebase and pull it ou=
t.
Will amend as Joe suggested.

I considered %#04x but that looses readability.

I'll send this along with 3 patches from my recent series that have the
same 'problem'.

Nathan, given it's not a totally trivial change, I'll drop your tags.

Thanks,

Jonathan



--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210603183207.4f76ecf3%40jic23-huawei.
