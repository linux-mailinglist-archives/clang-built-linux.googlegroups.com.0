Return-Path: <clang-built-linux+bncBC53FPW2UIOBB5OAT2DAMGQEN2XBK3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B883A6E3E
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 20:31:18 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id m13-20020a2e97cd0000b02901371bba6d87sf5082091ljj.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 11:31:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623695477; cv=pass;
        d=google.com; s=arc-20160816;
        b=iLSBNLDWlx6C0UcH7oJUG/Q61U93kZvuyqyWM0HYHaWBHFN865RSlXUEj0CdqZFXKX
         A3e+7ldUb5HEG1LzbqZ+70nOHZMEGFh12LyocwMJ6cW0FGqkCylJKy5p5GC6FVKh4J8V
         2YH2NThCCVgEc8HVBh+LmVj7nM1Ge5RkOnNtGYELnSbCE3dEY10QweTi6GpR5hsW+vp2
         jYAoCbWjvAz8H9DUKWd7lTVLqhjKtFP43qrQL9/9L80HTMgNOOV/bq9RNDJydTJwMrrK
         wh1F5fl3B7GvcvOBFvgJYENwXiJHZUOL5As4BpgRVdt5zIbOe5k4/D/s2WmTWuEF2LSn
         Q3IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature:dkim-signature;
        bh=8DD9NsnUVMmyTPV8bQH8F1L1sZM/YlI/S6QOR0Q4yE4=;
        b=tEjDqxhpVWFzOcMLpHOjC4mzhtc9tXEYCbaiIIqtJ2255CAEP4c8C0Xbjv5bzmn+zF
         MPRIuniXP1tvQqqu/rXwGkufjoNeBbYwGs6PvATxw+foJywJ3yKPc38Cerk8+qt8wcui
         0ZQF7oiSNnyCvrKglaoZba1jD/EcnfJwDXWavUOcegIQwHgIIMIF4aUUwj8RgeLSXu19
         6Qg3lfOJvFmzkhl9DqyQP/b0qPIg0rIAXzeov5zyxfhkIAbWgzynI5j/uTIUJZEXh2Mw
         YxcTU82SJKvIQjEx4HxonydILnPMAt1xauJzn02bIODPZhdbIFRobd2Tb48w0ciZ73qx
         b3Cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nUgVuHh0;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8DD9NsnUVMmyTPV8bQH8F1L1sZM/YlI/S6QOR0Q4yE4=;
        b=NNYiWJMPaa5Qll3vNh0TIBbCXS4l1pHIFY1ylx1+5CKVqSulP77dlgGYOr+yYMWm5h
         Z2kJvEb832VURuS7OD/qOlDOIGyfJGwbzLfqRJx5BDeKl6l42ZmrwnI0hDb62GDQt0zM
         6HdU8+wDHlLqjaJv0K+N8Wat5cz+YUuYwIAaLGaFbB06JakFm62ZFQRGGxa5QuPDTsj9
         bw3ckt5pnpIG+8dUE+yUBAY1JRohjFRo59EkDAEsZRClzfo/JUL7uu16QJuJBGPsKkBB
         JJzhfmPqGFkKQGMR7+47S4ZO6UJdCD7r89c2beqz5P1Lz4vkJLihPC1ap13jSnOd9SPR
         yS9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8DD9NsnUVMmyTPV8bQH8F1L1sZM/YlI/S6QOR0Q4yE4=;
        b=c3IOJXoiQR33zFnd+a0Cxy/j3W/SqWsAJiGAJSK71fRgT02f+T68Cw275MgIfAhh5C
         0ecyq30tlYFTcoSLe4Tr9ISOMGxRYI+Cke4yjGTX3++B+dgHeWCWblx3c3s6jebV4bQ+
         cPXAgh78uOIioU7PI5HatDOYnSh56ohSJcQpcvOse9jmeFBCqUIK+eUqKE459A2Os53n
         PAA+ByBat4dOoFYxBfiPPMD0atmyTB7atLQbS/GUTC+MWjo5xccbtomKaap6jkde6FD6
         PkFyUFYppslys5EpTK9Vt+8hRJmrpsg+oz/vORoXsBSTHIw5wUXcIchdqgPMrDtrOfC9
         +Ncg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8DD9NsnUVMmyTPV8bQH8F1L1sZM/YlI/S6QOR0Q4yE4=;
        b=qQdDsQcdsSDFX3+aHgu06rxf36+kC4DtgFegoXBF8teZWzCmhN4pYdT+ZH+PWQDR8x
         0YCydGdHciTVj5uI6IZGsT6j1Crlg+xttC1aZynIFuHq5JCzgxvVZ3v2Rh5EzQ7sOi2s
         VWgCTGDiRFAy59KzxOfkeRD2tUKZ7oJ9RLc01DJ9rsKJ88iPFMM8iAuryXjpY2EXw1tP
         mq+EW7GWVf5CHtrfXqGQofBZHMWXFtSilCo0unBcyndn7PG5S1oP125P29Tc1IC3Fd2n
         qt+Ww1MqHm0LAu2p+s8yXvABrxUL39LZ9kc8Ig2BNA6ditMq3+eTZQtbNhw7uFndskO7
         r1Gw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532S5V1G2qMQ9GrV9MqrOaQ1OQvvE5LkRKlXg9oqsn3QS1HaYUL2
	7RJngDNfcKCv5LWm+SHBDgE=
X-Google-Smtp-Source: ABdhPJx/a2UwpmYKlXiIwWogrvGkk00Hl3BchYeLHg0HGA1up3GXqgyHjVlJyZqvevxBILmR/d1bjQ==
X-Received: by 2002:ac2:446d:: with SMTP id y13mr412305lfl.354.1623695477640;
        Mon, 14 Jun 2021 11:31:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3a86:: with SMTP id q6ls4187789lfu.3.gmail; Mon, 14
 Jun 2021 11:31:16 -0700 (PDT)
X-Received: by 2002:ac2:4a6f:: with SMTP id q15mr13051446lfp.463.1623695476492;
        Mon, 14 Jun 2021 11:31:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623695476; cv=none;
        d=google.com; s=arc-20160816;
        b=k4IkaedpW2r5n/NgSNEDpxr4kbEtHasW2ouoYJcIl5lna/cwf5qLI8l8JX4d4R7nFm
         aPXuWbzNiOQKI67TqmIrsHBQ2X1qu+whFANDKoM3y9q6tPwEIvEY2n8mpHk57wXE5bcJ
         m/1PNDEwpgNn0VbTTkOnPQ+FKoJyhrdNSTlmpeyh4xu+YFT8UnEAYaW/8Vr8RYl37O7V
         voCSXqJxwN6I/KR3rxdERLVn5Pn2T6mZgHB+q1hEi5wFK59rZdYrUfCqJLyEc04VcVug
         LRTxkHOfCEIgt7R38ncHNN0afLA2AyyhRTWQENSDVbyL1FB+vhPgAaHWo7eX05+9Sq0r
         pgaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5S+UFanMuyRSQ+8Ca0w0RcLwzSDumi9B/Nwwya8yPro=;
        b=JWDRyavgl+FJ1X306nys0LaMeCVx3Qksq6DA6afBnv6fvOoXLJ2lcwzYGJpqPbOBgn
         G59454Kdz3jkHsB/tYj7z/poP4uMy+QC56MrnuBOHf6MhUY05Cv6lFj6G766TNnwW6F/
         0RABVoZSDK4OgmdtRRUZqWFeGwjFDmDmAKjdgjlTzLadOaxRP8r1K8/Dz3yMWkC14M2C
         ddrUnSK/ht3FjfhiNMNMqg/iPkNkp8TYSXF6R3UPix69wEEYsOs7mP22/H3nO4LqXGSl
         J/mUg/jlNGzbForcBJ2Qo1S2eHW+du/osAQXpvC8Puxdeei7KqhDSQmxyxl0R55Ti5zX
         0NFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nUgVuHh0;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id f6si9840ljo.1.2021.06.14.11.31.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 11:31:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id k8so4564068lja.4
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 11:31:16 -0700 (PDT)
X-Received: by 2002:a05:651c:3c6:: with SMTP id f6mr14053150ljp.456.1623695476301;
        Mon, 14 Jun 2021 11:31:16 -0700 (PDT)
Received: from hyperiorarchmachine.localnet (dcx7x4yffpgq---2xhdgy-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:8461:5bff:fed3:30ca])
        by smtp.gmail.com with ESMTPSA id k10sm1895967ljm.39.2021.06.14.11.31.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 11:31:15 -0700 (PDT)
From: jarmo.tiitto@gmail.com
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>, Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, morbo@google.com, jeyu@kernel.org
Subject: Re: [RFC PATCH 4/5] pgo: Add module notifier machinery
Date: Mon, 14 Jun 2021 21:31:14 +0300
Message-ID: <8638842.4sDhnmlMBm@hyperiorarchmachine>
In-Reply-To: <202106140855.2094DF30BB@keescook>
References: <20210612032425.11425-1-jarmo.tiitto@gmail.com> <20210612032425.11425-5-jarmo.tiitto@gmail.com> <202106140855.2094DF30BB@keescook>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nUgVuHh0;       spf=pass
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

Kees Cook wrote maanantaina 14. kes=C3=A4kuuta 2021 19.00.34 EEST:
> On Sat, Jun 12, 2021 at 06:24:25AM +0300, Jarmo Tiitto wrote:
> > Add module notifier callback and register modules
> > into prf_list.
> >=20
> > For each module that has __llvm_prf_{data,cnts,names,vnds} sections
> > The callback creates debugfs <module>.profraw entry and
> > links new prf_object into prf_list.
> >=20
> > This enables profiling for all loaded modules.
> >=20
> > * Moved rcu_read_lock() outside of allocate_node() in order
> >=20
> >   to protect __llvm_profile_instrument_target() from module unload(s)
> >=20
> > Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> > ---
> > v2: Passed QEMU SMP boot test into minimal Arch Linux distro,
> > module loading and unloading work without warnings.
> > Module profile data looks ok. :-)
> > ---
> >=20
> >  kernel/pgo/fs.c         | 111 ++++++++++++++++++++++++++++++++++++++++
> >  kernel/pgo/instrument.c |  19 ++++---
> >  2 files changed, 122 insertions(+), 8 deletions(-)
> >=20
> > diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> > index 84b36e61758b..98b982245b58 100644
> > --- a/kernel/pgo/fs.c
> > +++ b/kernel/pgo/fs.c
> > @@ -419,6 +419,110 @@ static const struct file_operations prf_reset_fop=
s =3D=20
{
> >=20
> >  	.llseek		=3D noop_llseek,
> > =20
> >  };
> >=20
> > +static void pgo_module_init(struct module *mod)
> > +{
> > +	struct prf_object *po;
> > +	char fname[MODULE_NAME_LEN + 9]; /* +strlen(".profraw") */
> > +	unsigned long flags;
> > +
> > +	/* add new prf_object entry for the module */
> > +	po =3D kzalloc(sizeof(*po), GFP_KERNEL);
> > +	if (!po)
> > +		goto out;
> > +
> > +	po->mod_name =3D mod->name;
> > +
> > +	fname[0] =3D 0;
> > +	snprintf(fname, sizeof(fname), "%s.profraw", po->mod_name);
> > +
> > +	/* setup prf_object sections */
> > +	po->data =3D mod->prf_data;
> > +	po->data_num =3D prf_get_count(mod->prf_data,
> > +		(char *)mod->prf_data + mod->prf_data_size,=20
sizeof(po->data[0]));
> > +
> > +	po->cnts =3D mod->prf_cnts;
> > +	po->cnts_num =3D prf_get_count(mod->prf_cnts,
> > +		(char *)mod->prf_cnts + mod->prf_cnts_size,=20
sizeof(po->cnts[0]));
> > +
> > +	po->names =3D mod->prf_names;
> > +	po->names_num =3D prf_get_count(mod->prf_names,
> > +		(char *)mod->prf_names + mod->prf_names_size,=20
sizeof(po->names[0]));
> > +
> > +	po->vnds =3D mod->prf_vnds;
> > +	po->vnds_num =3D prf_get_count(mod->prf_vnds,
> > +		(char *)mod->prf_vnds + mod->prf_vnds_size,=20
sizeof(po->vnds[0]));
> > +
> > +	/* create debugfs entry */
> > +	po->file =3D debugfs_create_file(fname, 0600, directory, po,=20
&prf_fops);
> > +	if (!po->file) {
> > +		pr_err("Failed to setup module pgo: %s", fname);
> > +		kfree(po);
> > +		goto out;
> > +	}
> > +
> > +	/* finally enable profiling for the module */
> > +	flags =3D prf_list_lock();
> > +	list_add_tail_rcu(&po->link, &prf_list);
> > +	prf_list_unlock(flags);
> > +
> > +out:
> > +	return;
> > +}
> > +
> > +static int pgo_module_notifier(struct notifier_block *nb, unsigned lon=
g
> > event, +				void *pdata)
> > +{
> > +	struct module *mod =3D pdata;
> > +	struct prf_object *po;
> > +	unsigned long flags;
> > +
> > +	if (event =3D=3D MODULE_STATE_LIVE) {
> > +		/* does the module have profiling info? */
> > +		if (mod->prf_data
> > +			&& mod->prf_cnts
> > +			&& mod->prf_names
> > +			&& mod->prf_vnds) {
> > +
> > +			/* setup module profiling */
> > +			pgo_module_init(mod);
> > +		}
> > +	}
> > +
> > +	if (event =3D=3D MODULE_STATE_GOING) {
> > +		/* find the prf_object from the list */
> > +		rcu_read_lock();
> > +
> > +		list_for_each_entry_rcu(po, &prf_list, link) {
> > +			if (strcmp(po->mod_name, mod->name) =3D=3D=20
0)
> > +				goto out_unlock;
> > +		}
> > +		/* no such module */
> > +		po =3D NULL;
> > +
> > +out_unlock:
> > +		rcu_read_unlock();
>=20
> Is it correct to do the unlock before the possible list_del_rcu()?
>=20

Oh, list_del_rcu() should then propably go before unlocking. I'll fix that.

> > +
> > +		if (po) {
> > +			/* remove from profiled modules */
> > +			flags =3D prf_list_lock();
> > +			list_del_rcu(&po->link);
> > +			prf_list_unlock(flags);
> > +
> > +			debugfs_remove(po->file);
> > +			po->file =3D NULL;
> > +
> > +			/* cleanup memory */
> > +			kfree_rcu(po, rcu);
> > +		}
>=20
> Though I thought module load/unload was already under a global lock, so
> maybe a race isn't possible here.
>=20

I searched a bit and found out that module.c/module_mutex is not held durin=
g
the module notifier MODULE_STATE_GOING callbacks.
But the callback it only invoked only once per module un/load so I think it=
 is=20
okay.
If I remember correctly, the main reason I moved the tear down code after=
=20
rcu_read_unlock() was that debugfs_remove() may sleep.


> For the next version of this series, please Cc the module subsystem
> maintainer as well:
> 	Jessica Yu <jeyu@kernel.org>
>=20

OK, after all there is a lot of pointers to the kernel's module subsys.

> > +	}
> > +
> > +	return NOTIFY_OK;
> > +}
> > +
> > +static struct notifier_block pgo_module_nb =3D {
> > +	.notifier_call =3D pgo_module_notifier
> > +};
> > +
> >=20
> >  /* Create debugfs entries. */
> >  static int __init pgo_init(void)
> >  {
> >=20
> > @@ -444,6 +548,7 @@ static int __init pgo_init(void)
> >=20
> >  	/* enable profiling */
> >  	flags =3D prf_list_lock();
> >=20
> > +	prf_vmlinux.mod_name =3D "vmlinux";
> >=20
> >  	list_add_tail_rcu(&prf_vmlinux.link, &prf_list);
> >  	prf_list_unlock(flags);
> >=20
> > @@ -460,6 +565,9 @@ static int __init pgo_init(void)
> >=20
> >  				 &prf_reset_fops))
> >  	=09
> >  		goto err_remove;
> >=20
> > +	/* register module notifer */
> > +	register_module_notifier(&pgo_module_nb);
> > +
> >=20
> >  	/* show notice why the system slower: */
> >  	pr_notice("Clang PGO instrumentation is active.");
> >=20
> > @@ -473,6 +581,9 @@ static int __init pgo_init(void)
> >=20
> >  /* Remove debugfs entries. */
> >  static void __exit pgo_exit(void)
> >  {
> >=20
> > +	/* unsubscribe the notifier and do cleanup. */
> > +	unregister_module_notifier(&pgo_module_nb);
> > +
> >=20
> >  	debugfs_remove_recursive(directory);
> > =20
> >  }
> >=20
> > diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> > index e214c9d7a113..70bab7e4c153 100644
> > --- a/kernel/pgo/instrument.c
> > +++ b/kernel/pgo/instrument.c
> > @@ -33,7 +33,6 @@
> >=20
> >   * ensures that we don't try to serialize data that's only partially
> >   updated.
> >   */
> > =20
> >  static DEFINE_SPINLOCK(pgo_lock);
> >=20
> > -static int current_node;
> >=20
> >  unsigned long prf_lock(void)
> >  {
> >=20
> > @@ -62,8 +61,6 @@ static struct llvm_prf_value_node *allocate_node(stru=
ct
> > llvm_prf_data *p,>=20
> >  	struct llvm_prf_data *data_end;
> >  	int max_vnds;
> >=20
> > -	rcu_read_lock();
> > -
>=20
> Please move these rcu locks change into the patch that introduces them
> to avoid adding those changes here.
>=20
> >  	list_for_each_entry_rcu(po, &prf_list, link) {
> >  =09
> >  		/* get section limits */
> >  		max_vnds =3D prf_vnds_count(po);
> >=20
> > @@ -76,7 +73,6 @@ static struct llvm_prf_value_node *allocate_node(stru=
ct
> > llvm_prf_data *p,>=20
> >  		 */
> >  	=09
> >  		if (memory_contains(po->data, data_end, p,=20
sizeof(*p))) {
> >=20
> > -
> >=20
> >  			if (WARN_ON_ONCE(po->current_node >=3D=20
max_vnds))
> >  		=09
> >  				return NULL; /* Out of=20
nodes */
> >=20
> > @@ -87,7 +83,6 @@ static struct llvm_prf_value_node *allocate_node(stru=
ct
> > llvm_prf_data *p,>=20
> >  	}
> > =20
> >  out:
> > -	rcu_read_unlock();
> >=20
> >  	return vnode;
> > =20
> >  }
> >=20
> > @@ -108,8 +103,14 @@ void __llvm_profile_instrument_target(u64=20
target_value,
> > void *data, u32 index)>=20
> >  	u8 values =3D 0;
> >  	unsigned long flags;
> >=20
> > +	/*
> > +	 * lock the underlying prf_object(s) in place,
> > +	 * so they won't vanish while we are operating on it.
> > +	 */
> > +	rcu_read_lock();
> > +
> >=20
> >  	if (!p || !p->values)
> >=20
> > -		return;
> > +		goto rcu_unlock;
> >=20
> >  	counters =3D (struct llvm_prf_value_node **)p->values;
> >  	curr =3D counters[index];
> >=20
> > @@ -117,7 +118,7 @@ void __llvm_profile_instrument_target(u64 target_va=
lue,
> > void *data, u32 index)>=20
> >  	while (curr) {
> >  =09
> >  		if (target_value =3D=3D curr->value) {
> >  	=09
> >  			curr->count++;
> >=20
> > -			return;
> > +			goto rcu_unlock;
> >=20
> >  		}
> >  	=09
> >  		if (curr->count < min_count) {
> >=20
> > @@ -136,7 +137,7 @@ void __llvm_profile_instrument_target(u64 target_va=
lue,
> > void *data, u32 index)>=20
> >  			curr->value =3D target_value;
> >  			curr->count++;
> >  	=09
> >  		}
> >=20
> > -		return;
> > +		goto rcu_unlock;
> >=20
> >  	}
> >  =09
> >  	/* Lock when updating the value node structure. */
> >=20
> > @@ -156,6 +157,8 @@ void __llvm_profile_instrument_target(u64 target_va=
lue,
> > void *data, u32 index)>=20
> >  out:
> >  	prf_unlock(flags);
> >=20
> > +rcu_unlock:
> > +	rcu_read_unlock();
> >=20
> >  }
> >  EXPORT_SYMBOL(__llvm_profile_instrument_target);
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
clang-built-linux/8638842.4sDhnmlMBm%40hyperiorarchmachine.
