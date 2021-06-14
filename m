Return-Path: <clang-built-linux+bncBC53FPW2UIOBBGOST2DAMGQECLZ2Z7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id A192F3A6E8F
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 21:08:09 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id ch5-20020a0564021bc5b029039389929f28sf12972851edb.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 12:08:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623697689; cv=pass;
        d=google.com; s=arc-20160816;
        b=tVA5fY+vf6CEjeaFuQtpynX9/OzmHlp6AeNHbsI1XIBhw85sd8Z9IPX1/UguWe2lFd
         UyCSWFWettjDACiKd1R/oDDpPDjNOD71uBMTuOG34hYgmGKwWm1Y2u59mimXosTseWG7
         XoPKzucIksLLS4q5e6DUs4GnmiRDmxLuu49z9Y2ci7k8NYyGIKdM8OtzDlU4JyYloHKs
         VgC8YxQU8qjs2/DZwOFRAWO1gF3MUZoujLTK68MslDBHzCbMMs6fc0WOVAj8GmwtdeBs
         4z59NwNgYRldTImRkPPqJchtLWvFMgljE/cVpAoYn6AxakucrCYZ6jwImlGhX+qcBmcz
         YITA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature:dkim-signature;
        bh=cOwPa5E9gtfb5FLcF4Jo+sElrmxezsUju9ZxYsKnlko=;
        b=AF11WFgka/tn8N/9+gT7x12Hc53kAC6akQWnQJzuSGAe2ItESSL8+yYTqxJvaAjvrN
         G3taWHKd010S7ZnRKRwwrgedmzXVF3+XHKK4j5PZKcmYDRC1YjiSQ5S1yj+1HPIBon2C
         rosnFGqQ3WaT5vszeWDCPA9inCY8NeiCwUIubYMYnBVhNM/5lKaBWlJ/Oqh+tTCNuO5u
         iTiPHUhn/A8F7X0rc07pWJnTHVJnRkCT73MrLm9SgByuRbY6RyFJNZdHycIur2rClqOC
         Yz/8iKQAJuIxpJQ+6KkH8vv9so5J+4qaEjKc6dog0ciDRRSs1qAxcNca6B8QwdCFEyOZ
         XRrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="sP/OkhF/";
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cOwPa5E9gtfb5FLcF4Jo+sElrmxezsUju9ZxYsKnlko=;
        b=q1AaDaUZcu2u8mKjmOfAnT8dJ/kBb/lRAr785jWFbP6VPrHLgQWvc+Gi0S4FB0/H/t
         mQuNuNtto1GmcZ0s2hfnH6Z2aN3OyqpUIB8OJzQCwLv+NNefvhsjGQUQW+mPMAXuLHFR
         ZseldSpA93rC7aMryPLaY2NCqg0gbtoVtMzRfUQt9DqIXuqcyHG75PhWNjlBhvUl7Tvt
         BuhAC4ZtevlLldaSe+8lmDwhUPqzi5W7RnTUAPp2/qsB5pTyFJEU8EQfiuIwKn0AUch1
         +GnvZQXJLJuphgFekBZ9968UhzDeUB8PIwKFdPkospgtNjJpMevLV46MQCRc8F7s/fG/
         e//g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cOwPa5E9gtfb5FLcF4Jo+sElrmxezsUju9ZxYsKnlko=;
        b=r07PZdVQk1LaZhkMFZQOXO1jtzjYXsQd1i0eWDiu5D+UJtb1TVgfN8dIUGK5BRfdHe
         L/AMbVfhtqz3fppa62u4L4ZOZVIbsGXfzno+FY6h2YwyYVfBYZ0W17rrBe4jClcSN8gb
         gE9EQzTccVaY8hn+n102dPs4rKRyt2JJ0atzKCcqxSYxjAbcvvYD6ypW0EqfiyHy0PUh
         PurTCwbWJrKy+HerqQIDSvJ6AgqLjppuzCsv0vZmNMVmKuf0mLBZWQ+pu16ZOkZLhsQS
         lXwMuEVyFdLymlK1K2W59tHaF3xDXO1qoPYnAUzp/hjIM3qm/64tdcunw8E79qVd/Ysj
         nweQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cOwPa5E9gtfb5FLcF4Jo+sElrmxezsUju9ZxYsKnlko=;
        b=X7RD26iqpLu5tH6iojIzzE+jIvanBN2LORnwUnNLBg7iwM07vrRvrYlFdqVKAcu7ep
         fvpoklmEIb8nnUhuj6Q4nzgaVpAjlo1X7bMJ1GuWavZNTj8OOV6dIudOk5HCHnFxSy0D
         hOdppB2lt5rrPf+AoNPQdDzHNEI7ioTlnlv79C/QckyMiO7coqPzSZL3voUZDHoGoFeu
         OErb7v0YPTJkyrshMrwRbhdmMreKRUb3gh/eVSh4euNr+JweoSEC+VgrDs2HcoRtLHW9
         jMAbRNEoa9nuHpfuksdoFWxbRYUbyRtcHDg0NqmICKLnPjm/DKKHVp8/Ck5fJjXdRTTo
         vhNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53152PoUeFvSj26pQV3bHLKqJ0Sb4+i1f9xjFskdvRlVf+RUenuU
	vr1sOuN3S38OpejVa7heSAQ=
X-Google-Smtp-Source: ABdhPJz8R8QELZFVB2ksAydckXMUQxw2RrIJMRQBJzThElO9N/4TN5ix7jAaCV2va1sYpDE6QCkdvA==
X-Received: by 2002:aa7:d34a:: with SMTP id m10mr18918837edr.57.1623697689445;
        Mon, 14 Jun 2021 12:08:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1510:: with SMTP id f16ls7591208edw.1.gmail; Mon,
 14 Jun 2021 12:08:08 -0700 (PDT)
X-Received: by 2002:a50:9d8d:: with SMTP id w13mr18928741ede.94.1623697688593;
        Mon, 14 Jun 2021 12:08:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623697688; cv=none;
        d=google.com; s=arc-20160816;
        b=KzxaSVEzz0kRszbBVX+X9+oGX0BqKjcN0rXe9RFVVb7lT1BHrOC6x0sqaO8vBk2j6L
         s94DsNJX7QDbRaUwSA8Ui9IqWP3IDU+CjRY7e90lGi3Y1Y6uTGlfmULMqxxfpC9w0G4R
         R7nKshug3AXC6JFiFe7Ekq26VYO0+lFrr3vIr85SDE8Csa2F/ZAQoirmKkdf29WGZDsU
         2LDVxRVwXVsFQCtzNL+YnvGIMZCbCZpAhSpTF2HfNkjASDFwyPnZQG59B8wrv6dcJ8vf
         gFThZCWOEbqvDoxRCMT340aBzrCdetoFiJmDKYH7kRNjH1w1WlZ3JzeDYZMCB6iBmydh
         nZWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ib71WC/3UL+4kN8wAu0hjCKNoFyLxGNskm1j3/2F/J0=;
        b=AbbMtyAvMDJOp+PFG7O+28EQbI04xUaDlF7jDosPLjg8HPiyIpEMv0tD4O5HZrsNe2
         UHIPNVmZdrrZAZkvmjhcSMta6XeR+cD3dBxIORuwPMxKcgf8o7W7hR6+uUJvebRX2VgG
         BRCnFsJC8lkL0qEi+zsTMFpL7b2UUn7dLnhwnpy/Aw0C40hETbtCKYsrjr+cnRZn+BBI
         BsIm66QU96d7PpDRVkF2mZj+L//c6ItD/9y4Re4psdAYmnmv73tZi0qGw0/5ZphtaJOk
         NVBwIxwZjWrf1PlOQs6/0ixQmTVYYrgUXICPu/r1AuORmnPdu4pb9tqdqHxo8T/H2llT
         WNFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="sP/OkhF/";
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id cz2si11956edb.5.2021.06.14.12.08.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 12:08:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id x24so17197003lfr.10
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 12:08:08 -0700 (PDT)
X-Received: by 2002:ac2:530c:: with SMTP id c12mr13315409lfh.514.1623697688361;
        Mon, 14 Jun 2021 12:08:08 -0700 (PDT)
Received: from hyperiorarchmachine.localnet (dcx7x4yffpgq---2xhdgy-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:8461:5bff:fed3:30ca])
        by smtp.gmail.com with ESMTPSA id x1sm699760lji.19.2021.06.14.12.08.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 12:08:07 -0700 (PDT)
From: jarmo.tiitto@gmail.com
To: Kees Cook <keescook@chromium.org>
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>, Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, morbo@google.com
Subject: Re: [RFC PATCH 3/5] pgo: Wire up the new more generic code for modules
Date: Mon, 14 Jun 2021 22:08:06 +0300
Message-ID: <3322609.HabJG8yQ7u@hyperiorarchmachine>
In-Reply-To: <202106140851.2D4CAB8@keescook>
References: <20210612032425.11425-1-jarmo.tiitto@gmail.com> <20210612032425.11425-4-jarmo.tiitto@gmail.com> <202106140851.2D4CAB8@keescook>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="sP/OkhF/";       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::130
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

Kees Cook wrote maanantaina 14. kes=C3=A4kuuta 2021 18.55.23 EEST:
> On Sat, Jun 12, 2021 at 06:24:24AM +0300, Jarmo Tiitto wrote:
> > prf_open() now uses the inode->i_private to get
> > the prf_object for the file. This can be either
> > vmlinux.profraw or any module.profraw file.
> >=20
> > The prf_vmlinux object is now added into prf_list and
> > allocate_node() scans the list and reserves vnodes
> > from corresponding prf_object(s).
> >=20
> > Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> > ---
> > note: There is no module notifier code yet,
> > so only vmlinux.profraw profile data
> > is available with this commit.
> >=20
> > Another thing is that pgo/reset will only
> > reset vmlinux.profraw.
> > Profile data reset for modules may be added later:
> > maybe writing module's name into pgo/reset would reset only
> > the specified module's profile data?
> > Then writing "all" or zero would atomically reset everything.
>=20
> Yeah, I think matching the internal naming is right. "vmlinux",
> module::name, and "all"?
>=20
> > I'm bit unsure about the new allocate_node() code since
> > it is the first place I had to put rcu_read_lock()
> > and the code is likely to change from this.
>=20
> Comments below...
>=20
> > ---
> >=20
> >  kernel/pgo/fs.c         | 30 ++++++++++++++++++++-----
> >  kernel/pgo/instrument.c | 49 +++++++++++++++++++++++++++--------------
> >  kernel/pgo/pgo.h        |  2 ++
> >  3 files changed, 60 insertions(+), 21 deletions(-)
> >=20
> > diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> > index 7e269d69bcd7..84b36e61758b 100644
> > --- a/kernel/pgo/fs.c
> > +++ b/kernel/pgo/fs.c
> > @@ -32,8 +32,10 @@ static struct dentry *directory;
> >=20
> >  struct prf_private_data {
> > =20
> >  	void *buffer;
> >  	size_t size;
> >=20
> > +	struct prf_object *core;
> >=20
> >  };
> >=20
> > +/* vmlinux's prf core */
> >=20
> >  static struct prf_object prf_vmlinux;
> > =20
> >  /*
> >=20
> > @@ -281,7 +283,6 @@ static int prf_serialize(struct prf_object *po, str=
uct
> > prf_private_data *p, size>=20
> >  	prf_serialize_values(po, &buffer);
> >  =09
> >  	return 0;
> >=20
> > -
> >=20
> >  }
> > =20
> >  /* open() implementation for PGO. Creates a copy of the profiling data=
=20
set.
> >  */>=20
> > @@ -292,13 +293,21 @@ static int prf_open(struct inode *inode, struct f=
ile
> > *file)>=20
> >  	size_t buf_size;
> >  	int err =3D -EINVAL;
> >=20
> > +	if (WARN_ON(!inode->i_private)) {
> > +		/* bug: inode was not initialized by us */
> > +		return err;
> > +	}
> > +
> >=20
> >  	data =3D kzalloc(sizeof(*data), GFP_KERNEL);
> >  	if (!data)
> >  =09
> >  		return -ENOMEM;
> >=20
> > +	/* Get prf_object of this inode */
> > +	data->core =3D inode->i_private;
> > +
> >=20
> >  	/* Get initial buffer size. */
> >  	flags =3D prf_lock();
> >=20
> > -	data->size =3D prf_buffer_size(&prf_vmlinux);
> > +	data->size =3D prf_buffer_size(data->core);
> >=20
> >  	prf_unlock(flags);
> >  =09
> >  	do {
> >=20
> > @@ -318,12 +327,13 @@ static int prf_open(struct inode *inode, struct f=
ile
> > *file)>=20
> >  		 * data length in data->size.
> >  		 */
> >  	=09
> >  		flags =3D prf_lock();
> >=20
> > -		err =3D prf_serialize(&prf_vmlinux, data, buf_size);
> > +		err =3D prf_serialize(data->core, data, buf_size);
> >=20
> >  		prf_unlock(flags);
> >  		/* In unlikely case, try again. */
> >  =09
> >  	} while (err =3D=3D -EAGAIN);
> >  =09
> >  	if (err < 0) {
> >=20
> > +
> >=20
> >  		if (data)
> >  	=09
> >  			vfree(data->buffer);
> >  	=09
> >  		kfree(data);
> >=20
> > @@ -412,6 +422,8 @@ static const struct file_operations prf_reset_fops =
=3D {
> >=20
> >  /* Create debugfs entries. */
> >  static int __init pgo_init(void)
> >  {
> >=20
> > +	unsigned long flags;
> > +
> >=20
> >  	/* Init profiler vmlinux core entry */
> >  	memset(&prf_vmlinux, 0, sizeof(prf_vmlinux));
> >  	prf_vmlinux.data =3D __llvm_prf_data_start;
> >=20
> > @@ -430,19 +442,27 @@ static int __init pgo_init(void)
> >=20
> >  	prf_vmlinux.vnds_num =3D prf_get_count(__llvm_prf_vnds_start,
> >  =09
> >  		__llvm_prf_vnds_end,=20
sizeof(__llvm_prf_vnds_start[0]));
> >=20
> > +	/* enable profiling */
> > +	flags =3D prf_list_lock();
> > +	list_add_tail_rcu(&prf_vmlinux.link, &prf_list);
> > +	prf_list_unlock(flags);
> >=20
> >  	directory =3D debugfs_create_dir("pgo", NULL);
> >  	if (!directory)
> >  =09
> >  		goto err_remove;
> >=20
> > -	if (!debugfs_create_file("vmlinux.profraw", 0600, directory, NULL,
> > -				 &prf_fops))
> > +	prf_vmlinux.file =3D debugfs_create_file("vmlinux.profraw",
> > +		0600, directory, &prf_vmlinux, &prf_fops);
> > +	if (!prf_vmlinux.file)
> >=20
> >  		goto err_remove;
> >  =09
> >  	if (!debugfs_create_file("reset", 0200, directory, NULL,
> >  =09
> >  				 &prf_reset_fops))
> >  	=09
> >  		goto err_remove;
> >=20
> > +	/* show notice why the system slower: */
> > +	pr_notice("Clang PGO instrumentation is active.");
> > +
>=20
> Please pull this change into a separate patch and make it pr_info()
> ("notice" is, I think, not right here).
>=20

All rightly then.

> >  	return 0;
> > =20
> >  err_remove:
> > diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> > index 24fdeb79b674..e214c9d7a113 100644
> > --- a/kernel/pgo/instrument.c
> > +++ b/kernel/pgo/instrument.c
> > @@ -24,6 +24,7 @@
> >=20
> >  #include <linux/export.h>
> >  #include <linux/spinlock.h>
> >  #include <linux/types.h>
> >=20
> > +#include <linux/rculist.h>
> >=20
> >  #include "pgo.h"
> > =20
> >  /*
> >=20
> > @@ -56,22 +57,38 @@ void prf_unlock(unsigned long flags)
> >=20
> >  static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data =
*p,
> > =20
> >  						=20
u32 index, u64 value)
> > =20
> >  {
> >=20
> > -	const int max_vnds =3D prf_get_count(__llvm_prf_vnds_start,
> > -		__llvm_prf_vnds_end, sizeof(struct=20
llvm_prf_value_node));
> > -
> > -	/*
> > -	 * Check that p is within vmlinux __llvm_prf_data section.
> > -	 * If not, don't allocate since we can't handle modules yet.
> > -	 */
> > -	if (!memory_contains(__llvm_prf_data_start,
> > -		__llvm_prf_data_end, p, sizeof(*p)))
> > -		return NULL;
> > -
> > -	if (WARN_ON_ONCE(current_node >=3D max_vnds))
> > -		return NULL; /* Out of nodes */
> > -
> > -	/* reserve vnode for vmlinux */
> > -	return &__llvm_prf_vnds_start[current_node++];
> > +	struct llvm_prf_value_node *vnode =3D NULL;
> > +	struct prf_object *po;
> > +	struct llvm_prf_data *data_end;
> > +	int max_vnds;
> > +
> > +	rcu_read_lock();
>=20
> AIUI, list readers are using rcu_read_lock(), and writers are using
> prf_list_lock()?
>=20

Yes, I intended the list readers to use rcu_read_lock() and writers to take=
=20
the prf_list_lock().

Sadly after I sent this patch set I found during more testing that there ar=
e=20
few problems that I need to work on:

There is an lockup that only occurs during bare metal run after +15min, so =
I=20
haven't been able to catch it in VM.
I suspect this is caused by the RCU locking I added such that it results in=
=20
recursive calls into __llvm_profile_instrument_target()

I will try build with CONFIG_PROVE_LOCKING, but I have had problems with
the kernel not getting past cgroup_init_early()... even without my patches
applied. (stock -rc kernel) :-(

> > +
> > +	list_for_each_entry_rcu(po, &prf_list, link) {
> > +		/* get section limits */
> > +		max_vnds =3D prf_vnds_count(po);
> > +		data_end =3D po->data + prf_data_count(po);
> > +
> > +		/*
> > +		 * Check that p is within:
> > +		 * [po->data, po->data + prf_data_count(po)] section.
> > +		 * If yes, allocate vnode from this prf_object.
> > +		 */
> > +		if (memory_contains(po->data, data_end, p,=20
sizeof(*p))) {
> > +
> > +
> > +			if (WARN_ON_ONCE(po->current_node >=3D=20
max_vnds))
> > +				return NULL; /* Out of=20
nodes */
> > +
> > +			/* reserve the vnode */
> > +			vnode =3D &po->vnds[po->current_node++];
> > +			goto out;
> > +		}
> > +	}
> > +
> > +out:
> > +	rcu_read_unlock();
> > +	return vnode;
> >=20
> >  }
> > =20
> >  /*
> >=20
> > diff --git a/kernel/pgo/pgo.h b/kernel/pgo/pgo.h
> > index 44d79e2861e1..59d0aa966fbe 100644
> > --- a/kernel/pgo/pgo.h
> > +++ b/kernel/pgo/pgo.h
> > @@ -19,6 +19,8 @@
> >=20
> >  #ifndef _PGO_H
> >  #define _PGO_H
> >=20
> > +#include <linux/rculist.h>
> > +
> >=20
> >  /*
> > =20
> >   * Note: These internal LLVM definitions must match the compiler versi=
on.
> >   * See llvm/include/llvm/ProfileData/InstrProfData.inc in LLVM's sourc=
e
> >   code.
> >=20
> > --
> > 2.32.0
>=20
> --
> Kees Cook




--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3322609.HabJG8yQ7u%40hyperiorarchmachine.
