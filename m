Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBUNC4D6AKGQEVDO7FGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 367A429ABFF
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 13:23:47 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id r1sf673822pjp.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 05:23:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603801425; cv=pass;
        d=google.com; s=arc-20160816;
        b=vjebtk7dG5wt90mR5poq6NZ0dVIx3xzKtlglggoSTccx9m8xUSH3tGdKtllTkuraKh
         Uq81l07E4r8e64zRcfMf1D4LpxHSRiWbyqj/zcmjRTolUdHBftYbe0g3gWhKBioK22z2
         iJcZOnV67qmrBXocNPu+Od1nsB2phcWBtddamoLwsvslYVtJC9DSbTIkHsoJQC4YKNRS
         5uEx1m7f2Q+Cx8mOLNr7gObUxyW4roG0C7f2bfK5Unk6KyPTi9iivsqbT3eZgA6UIYUx
         0NCwJTChyK3zPnCu/JF6GfP8+ovfXMu7Vn6GdzXnGXxxLgWXuvGVptoRr/WIlrbKP0px
         YsIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=PsQFVrNMRHXUwmMRwu4JUhNk+a6C7jtuOWgz07VgOWg=;
        b=gOP6b7odF4dmzfBFE4hWPnTSs9fcAp+86QSEwJ4Texupxe5SlagAgGq6WBhRMlaKQk
         ca7nKAFXXjq+kz0v/koUMNXlPhJxabPo5HxxTov9A/JinkdrgQ9YRmZjR9lB4Ec4X7pG
         VDig1x7vAhZlpdwPdJ2Q8pQuwnmuk8JNUSTx21z0XwBxHPsQxehZ6/kXg9ePvxR88cyI
         S5QhAqV+wyLB5INif00+d6LmKpwvJ+3uPwgaL1oLOz4bNU13VYfiE/PfAJ+FNOI21mvy
         mvaabg7g5ZTfSl2R2LMJRMIg20ILkzbAjchdsxfCHCwk26xm/a2FaoNxt9qzCUOzpWsS
         u1aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rB+G0feE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PsQFVrNMRHXUwmMRwu4JUhNk+a6C7jtuOWgz07VgOWg=;
        b=OSMyMpfbRZEqoZEHO/JNnZ1khq2daLX0Jzqhu8S+dbmLe3BMmwUd3UhV8As1f9nfNt
         WVRAV+ZRyCowrN5HBrZO/TgY7LYTBOif8yukYMAc5eR6F1vf1LL9FrsubUet3mcbg3os
         TAqetAL5XNx+BV+DarVGsCXGE0Tk8dvb8KUvhw4ihZs4QEg1YWeTgopB+k2fc3YhUeV+
         6Dk4tsgq/7qOG6PEjLBewEPVg4cjv5HgmBgtYWM5ghAkqLdnvIxG+IBUuOl9elBGYMye
         3BmUTNzqSEuH3bKoDREcaOSmBM4YrKjhkHV8dEy7EdXkAMtPrrsyZpBabFFUC4XmccJ3
         4bgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PsQFVrNMRHXUwmMRwu4JUhNk+a6C7jtuOWgz07VgOWg=;
        b=JJSzSRCM9h+pcPf/WEF1g5IT6pb5OKFT67PtZZPM9yiOe17U/uZuyuXH23LpjQQ9xp
         bLjQp6+5xMLiZx7x01v/AViDEn8l3CLg9OtFAri3ii8+NjW2PFoSds23XEyDT2kM93zk
         dQvzU5zAiQMI+I8mJ83LknhuwuqimveDOx2AmSMFMR7kXegwPkTt18scWR+Z80EuVVX0
         5R9/zwXuVqzBHF/RrbF/Xp0XTCnBUYi2ChN5AChNwKABZEGoNaEZbcVjQPGPgeq8cGnl
         uTTzbm4ozdd8pNVlJkvYt6o/PwqcQaYsdnAzORckfBKfmwTB3xZAE1hNJETc6wKzWnu/
         qx5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bHMSg7G2CvwRqManIErnC0Q3undzeKL0YSJVwD4e0S1EVqJmk
	IAj/npv8YoC2PkQFNtBO4v0=
X-Google-Smtp-Source: ABdhPJw5u/uVKhsG4E38Gv0VllAkDj/uCJo7/OC20P73W3Sq5+hGVDU9nDdHVjbxJzSB+xEHQv6rtA==
X-Received: by 2002:a17:90a:4549:: with SMTP id r9mr1890119pjm.146.1603801425622;
        Tue, 27 Oct 2020 05:23:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4486:: with SMTP id t6ls786580pjg.0.canary-gmail;
 Tue, 27 Oct 2020 05:23:45 -0700 (PDT)
X-Received: by 2002:a17:902:23:b029:d5:b88a:c782 with SMTP id 32-20020a1709020023b02900d5b88ac782mr2048629pla.5.1603801425021;
        Tue, 27 Oct 2020 05:23:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603801425; cv=none;
        d=google.com; s=arc-20160816;
        b=uSH/s9o8MbmXTpRHfFF35wGwRDPmBsehiqC8zFO09b8B2HMxHlcfpO98QZh67SE/0C
         gvDEyTEWlOBtrMBwOlFa0f4Fy3IhrskRP7ntsCrNlv7Ma7aXZoFuG4g2KYVZNwKHOsDw
         FZDLhrrVTRuyi6ukeXU2e2fDjMTMrICfAY8Q19rNGtSz96zNyrDQUdK3JEC5Ey03rS7T
         bsiDOpoEIyh/TuG1Gjz5ZbyUp1OKwu7g19uXFq/iOzKSRoIXpkjJnF00uD/SDeJE6kC+
         EbKNOFKaBNLvoJn1ykPNdJ2PJ2NCVqvarR4oUOEMt0LfQfUmTKWhPj03hnEoBfqiNgef
         KvPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=u7GtkbCSprPR7r3Y8n/ovXrMGVuQisLlzb1N4eBZDxo=;
        b=CNRgqvBkelVdtDLx3OrC3FIusn1A0PbYbBamRVKlDAsnfPk5I7+71saPNzuMZFcHoi
         kdkoc7AE9ovKM6O2uZViifgvhhkZnvQ5dJbrhtCGxqb9CV8qiluUdZA/Q2oiuKhuznhB
         /v5TO6Ee9Xo9hoft3PLiQs/9SE5Yyv0rRYxrb4k8IbzfgADNi40LERYKfH/DoX3mrxVw
         gwO30Jc/r2EF+dFsDo9AXDCNXAVN3R6/f2XydBGGTx5EIqIm3otdz4hbyjJQO5fAqYPR
         yTwF+kQQdCMELJE7elvVcWVyDu9WP3PBFKBCxpx+GvqoehhS6hYiygHehFYofW5qbVeY
         X0+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rB+G0feE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mv6si74707pjb.0.2020.10.27.05.23.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 05:23:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 13CF022450;
	Tue, 27 Oct 2020 12:23:43 +0000 (UTC)
Date: Tue, 27 Oct 2020 13:24:39 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] staging: wfx: avoid uninitialized variable use
Message-ID: <20201027122439.GA670469@kroah.com>
References: <20201026160243.3705030-1-arnd@kernel.org>
 <1716365.mxtkSTacob@pc-42>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1716365.mxtkSTacob@pc-42>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=rB+G0feE;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Oct 26, 2020 at 05:11:11PM +0100, J=C3=A9r=C3=B4me Pouiller wrote:
> On Monday 26 October 2020 17:02:22 CET Arnd Bergmann wrote:
> >=20
> > From: Arnd Bergmann <arnd@arndb.de>
> >=20
> > Move the added check of the 'band' variable after the
> > initialization. Pointed out by clang with
> >=20
> > drivers/staging/wfx/data_tx.c:34:19: warning: variable 'band' is uninit=
ialized when used here [-Wuninitialized]
> >         if (rate->idx >=3D band->n_bitrates) {
>=20
> Hello Arnd,
>=20
> This patch has already been submitted[1]. I think it is going to be
> applied to staging very soon.
>=20
> Sorry for the disturbing.
>=20
> [1] https://lore.kernel.org/driverdev-devel/20201019160604.1609180-1-Jero=
me.Pouiller@silabs.com/

Sorry for the delay, had to wait until -rc1 was out.

Now queued up in my tree.

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201027122439.GA670469%40kroah.com.
