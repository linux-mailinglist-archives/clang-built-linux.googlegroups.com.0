Return-Path: <clang-built-linux+bncBDY3NC743AGBBGMMX6CQMGQEGF4NVWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EA4393380
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 18:17:30 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id b19-20020a05620a0893b02902e956b29f5dsf798407qka.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 09:17:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622132249; cv=pass;
        d=google.com; s=arc-20160816;
        b=pqyEXsGhy0VxOFnyLk0s7IWMoiTNLUugXUgLpsuXxU1dQdFuBL2Z00u30Canjt0Afp
         PvccEVHoz3OXcNJKPCgUDUfOFJ+ENSSl62igeVMAPbJphHTcMvMebyns7u7KuHYmEyTi
         j301RS4/J3Rxnnhkv8B898os36yATQtadW2+oo1s7PeONa5j9RuHB/vteGiTd5n5SrTT
         YU/f68jMcEwRB2v/olfeROe0KiVap4xn036f0L90+pN2kzWuFI3pLDA2xCVAycxhFmHL
         EYkEj/MKy07AATHPes5lfeHBHdPWwRL0BPP1L60XUmAUplwb0nXWdUAIRxa+5prXsovD
         JP0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=gC4iAbA2m9F8zqXk5+5BUCC1LTU1L7OAy8YjCjEgyNQ=;
        b=zVBrz6li064SLa/M036j64m+D6TZJaVjoDfpp7dx1LFQv9xErmpAQBs/YIoz+Ab0SJ
         1L07CsnxOX5jDCHc+hUqpG56oVGfy83d0gNfATR5YH6lmNfjLI5GZVOLYmrnVDEOUbLu
         Zp73T4xVjd93hQJQGgfBXV+cprVugzAfVsRWSzdzNz+2rSeNFfepu5G5lEh3q2jMxxVF
         prTIk0jlYfheuxgYG4qG+nZQ7mIKuXLdJ9YiHZvK29iTGp3WfsYSFAF9t1XpXlpX8fCr
         Y8Wa6FODeJe3C5+d87IoFR3fU059o3yfInB6zXcUyU81uhij7S6N9AYlWHMLJyNJ8KTW
         RluQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.165 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gC4iAbA2m9F8zqXk5+5BUCC1LTU1L7OAy8YjCjEgyNQ=;
        b=L5MUUMBE+VMNzuNotmYs/KrZkg+3QcHN/2y+cpScRcSiJlNvGkLrxrUKSeXEieWa3F
         M95UPauxRAzMbnpv9LPA5IwoU8vRuf5AMUaz8EcVaeynQFHHJWm/SO68hnXh8ximp8at
         fvCg66hYdvQcfHnkguNn1W8XRrZsiIhsvKWB5e5RLGfUh+VnMFKeL/azLXq7MXGQo88Z
         O7R0rcFp+2mXCubuiIa/1pUi3XE7pierDJnqd1kZRE9+xgz0zMWHbtfyaZp/SJgCSxFc
         wjeyF2pac9MzaVatAsReVSdQC4tv2367jLJzPcOATmf2bVDff1mHN8z7AvOmoaXZvOH2
         b15w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gC4iAbA2m9F8zqXk5+5BUCC1LTU1L7OAy8YjCjEgyNQ=;
        b=r6rwgtOEBTb6LkfO3u7KdHhlgEEuxIH6cutgpWV1W0t8NifMDjyBOEzMOBpOg80g9M
         MT88rX2joxuVrzaio4iqw28kC0W+KoXOoE+Kz5roThCwS9rLgrvRP2C1aNYcQsxm3uRO
         51zR5+rVA9Uyk0BfO5+wPhpE8WTGUCkVe3fQ93N5H9IcaMLNdezmslPg2Y2pjW8xZWYm
         zOAXzW0IUexdZMR1FKKOBuoWneFPryAFmh/cjt60XnbdOLMX/wSafYdyfXybicww9oDA
         cTc0TxGdOJQQWwfYNeiFpGL+H9cFlkHTiZc/+ZKvAba6YsXosFxzvSyDMjn1yD64MslC
         ffkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RQG9D117AxD+blzmbXRvPwnKld0IAiyxuYkppw5lJHhPVxsrJ
	XVKNf0m0984ZtgIY2i/FJ3s=
X-Google-Smtp-Source: ABdhPJy2ZBmZefh+ghryE1mkFnAuAxdUmL65iCH7DFcSMMGyjJsoVOVFC/Pg7MZUtitQzxsJ/QIYvQ==
X-Received: by 2002:a37:7605:: with SMTP id r5mr4300928qkc.321.1622132249739;
        Thu, 27 May 2021 09:17:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:72cd:: with SMTP id o13ls1753268qtp.0.gmail; Thu, 27 May
 2021 09:17:29 -0700 (PDT)
X-Received: by 2002:a05:622a:1012:: with SMTP id d18mr3742447qte.295.1622132249249;
        Thu, 27 May 2021 09:17:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622132249; cv=none;
        d=google.com; s=arc-20160816;
        b=jy0Vb1Ya3gr4C7dLDbuk/SFq+dRnde0MRn9JTTbgVOcFp+8VARsD7EBMNvL6OxZ0PQ
         cEBa95/yr4F5mJvILko5IT1+QtjN3gpzeqzdzMH7n0vffQdvNI9sgF4yQqLyxp0EVPzM
         GYdG2L5FCBpU4z77eqYTYrXyZiXgMTlZCZKgwLwX8IFl/0hEueR7xuId5XDedXHn5ZMu
         x33cthgdJjGt1tOe7c8sUlFPiI0YiBOZpWicwQzOEKHH9ORk9O36VDaDBnhdCxl+xFIJ
         4InMZnt7nYeR+N8vqi0spJoSA83XKUvyvk9iTXHmfC7TvB7LXFQgiXUM3m73Gv4q/jqx
         gvMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=nfEYfHu/xpv2orIRp7LpxxPBhcKbj3EHe2w3N0b/vhE=;
        b=JRA4GBbyIAYpUd1xa81yPpsGdfJ1K2L/iGzvOaYsy8D0FiB8J9irFCJR3rs+VIxYko
         s4e0o4YhF2roFlHMuFJqcaVlrUD/5hqVA8LKIQ+NOySFyBjiDoaqN6/YzS0SmzdJc9L6
         nLMrgE4okSpItONV5Ck16t1hICiTq1qNafVeEoS5X7eEm6Zi69r5mBIf8AmlLINcKSiU
         DIEXEje7Kld40m1w03kwDiOKy+YpdM0uTdux5OMaJ0X8NPxkWSlQXF7JPbcm0+c7a9gX
         uXr+ZJWyigidFNlg6pJX8Tdgc/h9Wq9fHLxqJRjCkQOvH+6zs9wAhRAjjw25G4VTEFJe
         XaKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.165 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0165.hostedemail.com. [216.40.44.165])
        by gmr-mx.google.com with ESMTPS id x24si295958qkx.3.2021.05.27.09.17.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 May 2021 09:17:29 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.165 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.165;
Received: from omf14.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 7B4A21812870E;
	Thu, 27 May 2021 16:17:28 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf14.hostedemail.com (Postfix) with ESMTPA id 840D8268E46;
	Thu, 27 May 2021 16:17:26 +0000 (UTC)
Message-ID: <644a711e4d2639a23bfc50dffa180ad184a4acb1.camel@perches.com>
Subject: Re: [PATCH] iio: si1133: fix format string warnings
From: Joe Perches <joe@perches.com>
To: Jonathan Cameron <jic23@kernel.org>, Nathan Chancellor
 <nathan@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>,  Maxime =?ISO-8859-1?Q?Roussin-B=E9langer?=
 <maxime.roussinbelanger@gmail.com>, Jean-Francois Dagenais
 <jeff.dagenais@gmail.com>, Arnd Bergmann <arnd@arndb.de>, Lars-Peter
 Clausen <lars@metafoo.de>, Alexandru Ardelean
 <alexandru.ardelean@analog.com>,  linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org,  clang-built-linux@googlegroups.com
Date: Thu, 27 May 2021 09:17:24 -0700
In-Reply-To: <20210516103628.2cf899a0@jic23-huawei>
References: <20210514135927.2926482-1-arnd@kernel.org>
	 <7afc367b-8103-9d48-1bfe-d505d86553b9@kernel.org>
	 <20210516103628.2cf899a0@jic23-huawei>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.39
X-Stat-Signature: qdkk4frfin6s4b3oqc9zzfiayxtbnk1i
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 840D8268E46
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+ozl0XL3trtk2YILrXGbz44hU+4X9/M6Q=
X-HE-Tag: 1622132246-824994
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.165 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sun, 2021-05-16 at 10:36 +0100, Jonathan Cameron wrote:
> On Fri, 14 May 2021 10:45:02 -0700
> Nathan Chancellor <nathan@kernel.org> wrote:
> > On 5/14/2021 6:59 AM, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >=20
> > > clang complains about multiple instances of printing an integer
> > > using the %hhx format string:
> > >=20
> > > drivers/iio/light/si1133.c:982:4: error: format specifies type 'unsig=
ned char' but the argument has type 'unsigned int' [-Werror,-Wformat]
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0part_id, rev_id, mfr_id);
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~
> > >=20
> > > Print them as a normal integer instead, leaving the "#02"
> > > length modifier.
[]
> > > diff --git a/drivers/iio/light/si1133.c b/drivers/iio/light/si1133.c
[]
> > > @@ -978,11 +978,11 @@ static int si1133_validate_ids(struct iio_dev *=
iio_dev)
> > > =C2=A0=C2=A0		return err;
> > > =C2=A0=C2=A0
> > >=20
> > > =C2=A0=C2=A0	dev_info(&iio_dev->dev,
> > > -		 "Device ID part %#02hhx rev %#02hhx mfr %#02hhx\n",
> > > +		 "Device ID part %#02x rev %#02x mfr %#02x\n",
> > > =C2=A0=C2=A0		 part_id, rev_id, mfr_id);
> > > =C2=A0=C2=A0	if (part_id !=3D SI1133_PART_ID) {
> > > =C2=A0=C2=A0		dev_err(&iio_dev->dev,
> > > -			"Part ID mismatch got %#02hhx, expected %#02x\n",
> > > +			"Part ID mismatch got %#02x, expected %#02x\n",

which is almost certainly wrong.
the length specification includes the # which is already 2 bytes.

Likely these should be 0x%02x

> > > =C2=A0=C2=A0			part_id, SI1133_PART_ID);


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/644a711e4d2639a23bfc50dffa180ad184a4acb1.camel%40perches.=
com.
