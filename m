Return-Path: <clang-built-linux+bncBC53FPW2UIOBBUP246CQMGQEB24IX3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 6864D39B6DB
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 12:15:46 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id u4-20020a05651206c4b02902e62b2589a8sf3505103lff.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 03:15:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622801745; cv=pass;
        d=google.com; s=arc-20160816;
        b=v2SD+UDnaPRT9jFFQydSWILvbQZFm5KxDCtwyXbRE3JmOIfl0x8tslZWwvWRMbaFAa
         ZxOdevpSEOJXcG9QkRpbgAKEBW8oTVVkr0CAE4dgDR8+HRLEEWA/ByX/mIS6H6ZVO0xL
         Gs1POX9ZdsgzPO1yLiJM4y8K17HnCREOCePA7tmNroBZa2awU1E3pGIRYzHGtygTDnXm
         JehwiEu31O2rotpAvcaiZ/ruN/d95o+YpEPZBCorH6Aay0K+ZA/rVAWy5DndFEg+Atz9
         5tNmNqI5rYpvwBLO4vhPhn7y1Q2UOg+gqWwxj9t6uizQjy8HtsrgonR1/+sLUKcGNNfa
         U3fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature:dkim-signature;
        bh=nxqxkMQr6oh3YRsUe+BBHHPRl37lfyqUC4rqg2hJRvQ=;
        b=RTCs8NsFYfEe5Ktg/4cd0ewi8YhZmhbN+3PlbpxWiUvXAQccnlP6TqcmAET4n9ctau
         BGD7W2x+BlGidrDYm6Lr4Kf0+rY8v4/taa1P3tH/L7kSZVMbmvOIWZ1KaqAkg8wSCfBt
         Q3KVT3T3druhQGU5hcd8i3KbRBYPTaJBIxDhOwrx5+nAOLmD1QSuSfIu2bKyHOMivinN
         CpVAuO3gu0DmqePzzY0Nhh/Q7YJAWbam9YjAg5V3NZjWjQTDLEDX95HypA9t+zF5sSRO
         W3nfkuHYG6fWP3hqiK+neCSg7L6UUdkRTTJbgiJ1r7k0tDOTGT8Opxzj+jNlBy/GZ7SG
         1YjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hQtb6oAe;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nxqxkMQr6oh3YRsUe+BBHHPRl37lfyqUC4rqg2hJRvQ=;
        b=Nz1jd+6hkUyGX+SfTjOwPm2oGMULsyTHuH4VvO8jGZXwzGUfm5f3RjfAIiJS4XdG5t
         b/OZbseewSPz/sY4DKZpZljWjRP6PCymD67rKN0COsZH80Ff0IehRY3MPXltICUFtnNg
         5zgPgi8tP5knwRK8p5AiHXfi5gKnwOY9UZoQQJjFWTpbXWkImTW/vl0cKkxNOef+vzPH
         fnKhT5gz1Zb5rdYN7eLHf4svu/hsdNqM+2hObkhKgj6cuPCd9TMzVdy9f2JPV+wAuKV4
         wwyqnklc1PGDc9NczyOyONF6XhCmw8RMPZzj3Dp2wNKh5VWV4ipC1Ss/ToCVpHqH6vLQ
         Pkuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nxqxkMQr6oh3YRsUe+BBHHPRl37lfyqUC4rqg2hJRvQ=;
        b=OGqfNLzKLuaqDkDEhX3xpoyBE6z9X6veGh8g+wiLURlrmyI2yAkUiv0gfdo1BTJfHN
         6IZSkW9PkmeVlHEY/jGLlIIb6NMYatOrL1qFil3s9H57dmBjZPEch6fQuRozwyYAmQWj
         AVBr64NYkr16BgDZ360Ang4sUcddMu1oDRIC4u5AoKa8C3PJpB0SLhiGdFQ1ew4At3hj
         OEz2Dyw8rHuVWzErvAjfveGVonpZ71eefghMZLTzcOd4brbKPvf7eMClGTtes5R5bcQo
         UX6JPgumP6LLpwWUI4LWxnDd/iWvtIE1jhucI2it/YoJ8PJ6dyHVnL48AdjOtS/vPHSw
         7GNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nxqxkMQr6oh3YRsUe+BBHHPRl37lfyqUC4rqg2hJRvQ=;
        b=ORk0pORjM5bNNme0KApGygVniKW+T1xvS6VKZTddOT/K3YsBAYtAy0t9+oh55FdVXd
         +nUGDhoLIC1STNjFZZvyLF0K28tDdr1YQnUzLV4vNorzyScX/hfVwNeoFMDCzlwjlfYA
         ZrRJf2BFAsEDcvZUKNgqtL36BlOFR1jClbyUI1HFvpepW5rUbPOst2tSYQ56+768UHaF
         SzBWOQ4bx+4Ril/+ECDu7/bMLMS6HCx3ykQaIG5AvsbvvVYKVjKtpr0dXPbC1C4C/JRm
         YKvyuN0P9M52+cg46r4kc9xSlq2tBYrCr0+UZv7crWvI1wYE4SMaIjBPdVK4pkYVPZOw
         kdug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ju9DdlYF28lBL3UaGgI+vfwyOLFOHJY1RPGYILVPCqvjnOKjT
	8RVLkk6A68Rg1tUc9SHXgdQ=
X-Google-Smtp-Source: ABdhPJxDdbKwTYC85a1CyBKhtMwMYrVtzCFV/hz0IxHzmNcO6VYCBxRboKzKBWFGr5p/L8WAHlKUeA==
X-Received: by 2002:a2e:3506:: with SMTP id z6mr3057548ljz.238.1622801745826;
        Fri, 04 Jun 2021 03:15:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b0e:: with SMTP id f14ls201008lfv.3.gmail; Fri, 04
 Jun 2021 03:15:44 -0700 (PDT)
X-Received: by 2002:a05:6512:2e2:: with SMTP id m2mr2168244lfq.469.1622801744684;
        Fri, 04 Jun 2021 03:15:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622801744; cv=none;
        d=google.com; s=arc-20160816;
        b=jc13qdOR99AqBL6K0Mwk2C2skVQ9WruzSbguAE+8zMod9BYYAFQz/VTITLIRaGAl70
         iLOcMxqEMyT7pRZm5JFJsBnxXVW73z3kcd8XuVQSjtGMyqguku8HFpwhJHAJVbi1lSG6
         H2NflfSVZNbMKAay3iYaU0NbJPC/PxgGoCjF5iWFn4X349rXxpZYKMY06RL6/CfpJZzC
         whl9gumn5zc1BHuY3k1RR9pZpIN1cBH+SshfpsqWN4KkgAV3IP+oLn2XkIN04/q9O9lt
         jFmt4IHOPfU47Nt7Ohf4m8UiuXMC2YegZgN9MQX5YwDZttZD18KHYy6eLsz7KYtj8rfi
         w54w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qwh3ad/jO1vwDAyksWj1wLjKtFEy5Etgz1pSxk8HShc=;
        b=CGDaTti4re5NDK3SFt4+l16sv1dyhUnuIsB4Vc1497xCdhG6Kz90mE/5AMLc7DfVuR
         MmphYK4GeEuWmgA/yE4X95MKoeOPm/Corbe4OwQCTanABPblqSwXjQMxf6O38M77Qbrx
         fBtvEjqUDVXSKZI2xsxnQ5B3DeHFML/DKmQOhz7xAbEb43jbZuUDzzVBze+HRDmS58Z8
         0qM6vVL8CvH7Eiy9q78qXBl+TxNgSwF7F2Oj+Iy9fkXPsJAVcTwkL13ivJy+nkE3wi+E
         MTFszMqMUhhxFpEiz9ZdFEFbOdQCMNJCeRmDur3mlWA6kyQWHs1nGTzU5ihdebcfd20Y
         L0Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hQtb6oAe;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id t28si180200lfd.4.2021.06.04.03.15.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 03:15:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id a4so10880113ljd.5
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 03:15:44 -0700 (PDT)
X-Received: by 2002:a2e:9e57:: with SMTP id g23mr2916104ljk.123.1622801744457;
        Fri, 04 Jun 2021 03:15:44 -0700 (PDT)
Received: from hyperiorarchmachine.localnet (dcx7x4ycc2b7s--vdqzfy-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:42b0:76ff:fe23:6d08])
        by smtp.gmail.com with ESMTPSA id 80sm666520ljf.4.2021.06.04.03.15.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 03:15:43 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>, Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, morbo@google.com
Subject: Re: [PATCH v2 1/1] pgo: Fix sleep in atomic section in prf_open()
Date: Fri, 04 Jun 2021 13:15:43 +0300
Message-ID: <3874710.oRHo3lsn7p@hyperiorarchmachine>
In-Reply-To: <202106031441.FA95440A@keescook>
References: <20210603155318.46346-1-jarmo.tiitto@gmail.com> <202106031441.FA95440A@keescook>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hQtb6oAe;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::230
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Kees Cook wrote perjantaina 4. kes=C3=A4kuuta 2021 0.47.23 EEST:
> On Thu, Jun 03, 2021 at 06:53:17PM +0300, Jarmo Tiitto wrote:
> > In prf_open() the required buffer size can be so large that
> > vzalloc() may sleep thus triggering bug:
> >=20
> > =3D=3D=3D=3D=3D=3D
> >  BUG: sleeping function called from invalid context at include/linux/sc=
hed/mm.h:201
> >  in_atomic(): 1, irqs_disabled(): 1, non_block: 0, pid: 337, name: cat
> >  CPU: 1 PID: 337 Comm: cat Not tainted 5.13.0-rc2-24-hack+ #154
> >  Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 0.0.0 02/06/2=
015
> >  Call Trace:
> >   dump_stack+0xc7/0x134
> >   ___might_sleep+0x177/0x190
> >   __might_sleep+0x5a/0x90
> >   kmem_cache_alloc_node_trace+0x6b/0x3a0
> >   ? __get_vm_area_node+0xcd/0x1b0
> >   ? dput+0x283/0x300
> >   __get_vm_area_node+0xcd/0x1b0
> >   __vmalloc_node_range+0x7b/0x420
> >   ? prf_open+0x1da/0x580
> >   ? prf_open+0x32/0x580
> >   ? __llvm_profile_instrument_memop+0x36/0x50
> >   vzalloc+0x54/0x60
> >   ? prf_open+0x1da/0x580
> >   prf_open+0x1da/0x580
> >   full_proxy_open+0x211/0x370
> >   ....
> > =3D=3D=3D=3D=3D=3D
> >=20
> > Since we can't vzalloc while holding pgo_lock,
> > split the code into steps:
> > * First get buffer size via prf_buffer_size()
> >   and release the lock.
> > * Round up to the page size and allocate the buffer.
> > * Finally re-acquire the pgo_lock and call prf_serialize().
> >   prf_serialize() will now check if the buffer is large enough
> >   and returns -EAGAIN if it is not.
> >=20
> > New in this v2 patch:
> > The -EAGAIN case was determined to be such rare event that
> > running following in a loop:
> >=20
> > $cat /sys/kernel/debug/pgo/vmlinux.profraw > vmlinux.profdata;
> >=20
> > Didn't trigger it, and I don't know if it ever may occur at all.
>=20
> Hm, I remain nervous that it'll pop up when we least expect it. But, I
> went to go look at this, and I don't understand why we need a lock at
> all for prf_buffer_size(). These appear to be entirely static in size.
>=20

I would think the reasoning of taking the pgo_lock for prf_buffer_size() is=
 that because
__prf_get_value_size() walks linked lists that are modified by=20
__llvm_profile_instrument_target() in instrument.c.

However __llvm_profile_instrument_target() looks like it will only append t=
o
llvm_prf_data::values array of  llvm_prf_value_node linked lists, so you mi=
ght be right.

I'll try analyze the prf_buffer_size() better to determine upper bound of m=
emory required,
such that the pgo_lock is absolutely not needed for prf_buffer_size().

> >=20
> > Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> > ---
> >  kernel/pgo/fs.c | 52 ++++++++++++++++++++++++++++++++++++-------------
> >  1 file changed, 38 insertions(+), 14 deletions(-)
> >=20
> > diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> > index ef985159dad3..9afd6f001a1b 100644
> > --- a/kernel/pgo/fs.c
> > +++ b/kernel/pgo/fs.c
> > @@ -24,13 +24,14 @@
> >  #include <linux/module.h>
> >  #include <linux/slab.h>
> >  #include <linux/vmalloc.h>
> > +#include <linux/mm.h>
> >  #include "pgo.h"
> > =20
> >  static struct dentry *directory;
> > =20
> >  struct prf_private_data {
> >  	void *buffer;
> > -	unsigned long size;
> > +	size_t size;
> >  };
> > =20
> >  /*
> > @@ -213,6 +214,7 @@ static inline unsigned long prf_get_padding(unsigne=
d long size)
> >  	return 7 & (sizeof(u64) - size % sizeof(u64));
> >  }
> > =20
> > +/* Note: caller *must* hold pgo_lock */
> >  static unsigned long prf_buffer_size(void)
> >  {
> >  	return sizeof(struct llvm_prf_header) +
> > @@ -225,18 +227,21 @@ static unsigned long prf_buffer_size(void)
> > =20
> >  /*
> >   * Serialize the profiling data into a format LLVM's tools can underst=
and.
> > + * Note: p->buffer must point into vzalloc()'d
> > + * area of at least prf_buffer_size() in size.
> >   * Note: caller *must* hold pgo_lock.
> >   */
> > -static int prf_serialize(struct prf_private_data *p)
> > +static int prf_serialize(struct prf_private_data *p, size_t buf_size)
> >  {
> >  	int err =3D 0;
> >  	void *buffer;
> > =20
> > +	/* get buffer size, again. */
> >  	p->size =3D prf_buffer_size();
> > -	p->buffer =3D vzalloc(p->size);
> > =20
> > -	if (!p->buffer) {
> > -		err =3D -ENOMEM;
> > +	/* check for unlikely overflow. */
> > +	if (p->size > buf_size) {
> > +		err =3D -EAGAIN;
>=20
> This can just be ENOMEM instead -- it'll never change in size. (But we
> should absolutely keep the check.)
>=20

Ok, I was wondering what return value would be appropriate here.
=20
> >  		goto out;
> >  	}
> > =20
> > @@ -259,27 +264,46 @@ static int prf_open(struct inode *inode, struct f=
ile *file)
> >  {
> >  	struct prf_private_data *data;
> >  	unsigned long flags;
> > -	int err;
> > +	size_t buf_size;
> > +	int err =3D 0;
> > =20
> >  	data =3D kzalloc(sizeof(*data), GFP_KERNEL);
> >  	if (!data) {
> >  		err =3D -ENOMEM;
> > -		goto out;
> > +		goto out_free;
> >  	}
> > =20
> > +	/* get buffer size */
> >  	flags =3D prf_lock();
> > +	buf_size =3D prf_buffer_size();
> > +	prf_unlock(flags);
>=20
> And there's no locking needed here.
>=20
> > =20
> > -	err =3D prf_serialize(data);
> > -	if (unlikely(err)) {
> > -		kfree(data);
> > -		goto out_unlock;
> > +	/* allocate, round up to page size. */
> > +	buf_size =3D PAGE_ALIGN(buf_size);
> > +	data->buffer =3D vzalloc(buf_size);
> > +
> > +	if (!data->buffer) {
> > +		err =3D -ENOMEM;
> > +		goto out_free;
> >  	}
> > =20
> > +	/* try serialize and get actual
> > +	 * data length in data->size
> > +	 */
> > +	flags =3D prf_lock();
> > +	err =3D prf_serialize(data, buf_size);
> > +	prf_unlock(flags);
> > +
> > +	if (err)
> > +		goto out_free;
> > +
> >  	file->private_data =3D data;
> > +	return 0;
> > =20
> > -out_unlock:
> > -	prf_unlock(flags);
> > -out:
> > +out_free:
> > +	if (data)
> > +		vfree(data->buffer);
> > +	kfree(data);
> >  	return err;
> >  }
> > =20
> >=20
> > base-commit: 5d0cda65918279ada060417c5fecb7e86ccb3def
> > --=20
> > 2.31.1
> >=20
>=20
> --=20
> Kees Cook
>=20


--
-Jarmo


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3874710.oRHo3lsn7p%40hyperiorarchmachine.
