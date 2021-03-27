Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBUPO7SBAMGQE6FH735Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 228A634B76F
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 14:46:58 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id z68sf2747643vkd.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 06:46:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616852817; cv=pass;
        d=google.com; s=arc-20160816;
        b=zn0K+D0FGR2xgDo0P7hojtX1WN8/eCo0YWx7HBLk8qCGn5TqkfxPNamCYHHI4m5M72
         HAJ/23Wa3fHBsD0qiO/yIL7+4JmGC2Mxpg6Zl7dedD9YIW0c4lnVDRSl+UFPySpy5gqs
         A5X0iBSRaxoeAhfVxVnN9ydZ9JOh06ypXZsOtdnbvoXKAsYtvuJsSlxXqiwNMPLP5Nza
         x+MmFcEGfLzre3BU5cMNvwDcUNy/dI0Oj9QvkYf3I5FFOznZWXjSc0dNnrEHZvruzkW5
         GVJS8l3546dIUmWyJtl6rFszvjsdDz11K7O09uWwQZpiuG/9p6qDu0ivAixVWBtwSger
         mcUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=8QXCIy6vexd9X1gnTXMB9zZWqQgys7YbEPb1h0s4pHs=;
        b=DQswDrTgu1cAMP6hBUulK5Z/n62evFRPtXRF3NlWWCWNl70qD4K2+Z0b13dsL/j7nt
         fZtmnc8EBZVOrdDiumOqi9wslLLgNUg3IFTs6rZj7qn+WRXBWauoqXO1kN8l2+caOQWE
         GY5JgZreqM0xCIsI+yVZ5tjBkDsx+O+VH7epXBHpuAVKzOKPPyiZP2Wv09iEuMbcnPUo
         WPVMeZTlCLnSR00Lmda5OkoTSw1OYrVRyHlwMcvLZM+GXxTTYt4N/n8CcB6zUAru4LhK
         xah0ubaBYcoLTzEYWemx54ZY2C/Ky7dghHPDaRMQX+qN9nnn9hc59LDdIQyLDDPig5/P
         iT/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=MXsu9Vbq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8QXCIy6vexd9X1gnTXMB9zZWqQgys7YbEPb1h0s4pHs=;
        b=VRISz5FVRLsBFYurbVwwMGCkKR/Wyvn/nY9FXQDrrWwcHBtdQVUC+FzjlfgLWkFGFk
         ZNM13v2zLyU4PTR/V25l4iX+Hfs6+6/6IIDrxCxI2HfpIX/z79/mtVGKAkiLRRKV9dVg
         YQylP8KME2KEY8yUcEbDwV+XW0TYNfrM2GzPhN+38Uma7jTsp98O7YEoPsHKbO7gjG/9
         dCLM9a9m0TZtRNapsGMS01QrKSAIMIx+X2hJ4Ja34uGTRZfNGwPj99BQGbzkf7yBh10/
         rv4TdKnNC5Yk+ZezJW4t014XlBoOHPPm2v3JEq65P9T4nshodKU9eWaRdQVnK/xxvPS1
         AhTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8QXCIy6vexd9X1gnTXMB9zZWqQgys7YbEPb1h0s4pHs=;
        b=XcPxSs81OH5vZtrGFbJ3Ojd/d0+GOEbqUMKTItRkNehCbOfMlSu1KQ2DHKJZHsqxon
         kUPYw7UmLaPz8QiZ4KqITFGY13tIXQduEgT3R/kjeZNX/s+KgKC1w48Tx+VEtYT3FGxm
         HGdxdf+tFa1LjzrjsYqxvHYLbmVXoV/lNB2x2a5wnZ+6AM+Vdh7dnGGYOhu3G1mOJY2v
         N4X+wuHbklnMvm01zXYUEwEkkZIfGaW6fXuoaVWFJWml8ZzmUMK7h7RvlztEuOE2L53a
         KKxe/JAzoT6VBObkMPQ25yiGhyoos9UG2jS+GMTDTR6JtyoSSJS4g+OFKNFOUWIg9IC3
         rr4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SO5wUUKfKML+dz9LWYiAYXhYWIq4/XygM1Mzi3PzBpvBoZ1aG
	KKs1NJ7QiMBdoWQ9IrfuZoY=
X-Google-Smtp-Source: ABdhPJy2L9b7jPaO+qBjXxD2jnmLvAq0Vk9PNZk3nmxrD7XSd3pBPmNiBcowrGMz6qmivSUM5aKMoA==
X-Received: by 2002:a67:27c7:: with SMTP id n190mr11290589vsn.4.1616852817159;
        Sat, 27 Mar 2021 06:46:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f446:: with SMTP id r6ls1514334vsn.8.gmail; Sat, 27 Mar
 2021 06:46:56 -0700 (PDT)
X-Received: by 2002:a67:efc3:: with SMTP id s3mr10626848vsp.56.1616852816555;
        Sat, 27 Mar 2021 06:46:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616852816; cv=none;
        d=google.com; s=arc-20160816;
        b=Z4fdCs0dO6eurJ8XYHHryvsFXbci3NRQbqpOpZmf0lLbpaQFMPJnAW/1J/jJom6DYL
         B5+kMJCqWvYCBF6lM4rkOn3s0juJ6HDYlIlohuug19dcAHnkL25vCUAd3yqDq1cQDeJX
         HueOBdFd2KyuftaUrkpV66YOU3IUXF6AAGLDODb3z4DtMp4DfOX2TH5H0gGrvY47FJyn
         N6ETw8LBkP3kQcRdMrG7dRT2zeCQSimAPAZAryGJaLLKT6WZ6geerEUDGzQWDS0i1Pqn
         Sb496HsYIGw6y5/5Z2TZPgM4rhG76Mif8nPEhbErze+RoOvtSiH7WdXA8mkB6pw3pYMD
         PlCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=b40+Sdf8A+LrviWWlyfRjeEynNs0ZG1Zo9M+RZz9usk=;
        b=CbXffuHrdSJACFgR9k4D6VJ1Glz4tpT9q5A0H8g+SBFpHO81Lfjo8fPGJoo7EFGMvb
         5nh72+89npLawdlcDOixkx4DBLu+4t2duDVpfOnsBXrpuOUPq2U3QAoD1EDgwP1qUZXi
         1JK5YzIAPvoDHue3N1Bjoduzl3PGpGx2A8rvva8UcNC8dSeT1fY5N7qNMXFS4zJCqNtY
         mLIbAQPx5bvdWAMJ5f+MbT+SHQUoeQMGT2JzEmGp0S1Y2VI5zmZ4IbaxI1NW6TrulcOU
         kgQb0lbkMl/gtL6s6cZGuTGtndddU3wmtaPEPMCOaM3Mu8GvaFjtEg13BhzoO0/n0X+2
         2GXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=MXsu9Vbq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u13si594872vkl.5.2021.03.27.06.46.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Mar 2021 06:46:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E9135619BA;
	Sat, 27 Mar 2021 13:46:54 +0000 (UTC)
Date: Sat, 27 Mar 2021 14:46:52 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tom Saeger <tom.saeger@oracle.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>
Subject: Re: [PATCH] scripts: stable: add script to validate backports
Message-ID: <YF83TMNWhAwPTH4M@kroah.com>
References: <20210316213136.1866983-1-ndesaulniers@google.com>
 <YFnyHaVyvgYl/qWg@kroah.com>
 <CAKwvOd=9HwLcTD8GaMsbEWiTPfZ+fj=vgFOefqBxDYkFiv_6YQ@mail.gmail.com>
 <YFo78StZ6Tq82hHJ@kroah.com>
 <CAKwvOdmL4cF7ConV8841BX+Pey571KDWM8CBt8NnYY47vJ_Gfg@mail.gmail.com>
 <YFsMj3kL5Rl/Dc5R@kroah.com>
 <20210326210335.e6m3cchks32oyzz2@brm-x62-17.us.oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210326210335.e6m3cchks32oyzz2@brm-x62-17.us.oracle.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=MXsu9Vbq;       spf=pass
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

On Fri, Mar 26, 2021 at 03:03:35PM -0600, Tom Saeger wrote:
> On Wed, Mar 24, 2021 at 10:55:27AM +0100, Greg Kroah-Hartman wrote:
> > On Tue, Mar 23, 2021 at 01:28:38PM -0700, Nick Desaulniers wrote:
> > > On Tue, Mar 23, 2021 at 12:05 PM Greg Kroah-Hartman
> > > <gregkh@linuxfoundation.org> wrote:
> > > >
> > > > The only time git gets involved is when we do a -rc release or when=
 we
> > > > do a "real" release, and then we use 'git quiltimport' on the whole
> > > > stack.
> > > >
> > > > Here's a script that I use (much too slow, I know), for checking th=
is
> > > > type of thing and I try to remember to run it before every cycle of=
 -rc
> > > > releases:
> > > >         https://github.com/gregkh/commit_tree/blob/master/find_fixe=
s_in_queue
> > > >
> > > > It's a hack, and picks up more things than is really needed, but I =
would
> > > > rather it error on that side than the other.
> > >=20
> > > Yes, my script is similar.  Looks like yours also runs on a git tree.
> > >=20
> > > I noticed that id_fixed_in runs `git grep -l --threads=3D3 <sha>` to
> > > find fixes; that's neat, I didn't know about `--threads=3D`.  I tried=
 it
> > > with ae46578b963f manually:
> > >=20
> > > $ git grep -l --threads=3D3 ae46578b963f
> > > $
> > >=20
> > > Should it have found a7889c6320b9 and 773e0c402534?  Perhaps `git log
> > > --grep=3D<sha>` should be used instead?  I thought `git grep` only gr=
eps
> > > files in the archive, not commit history?
> >=20
> > Yes, it does only grep the files in the archive.
> >=20
> > But look closer at the archive that this script lives in :)
> >=20
> > This archive is a "blown up" copy of the Linux kernel tree, with one
> > file per commit.  The name of the file is the commit id, and the conten=
t
> > of the file is the changelog of the commit itself.
> >=20
> > So it's a hack that I use to be able to simply search the changelogs of
> > all commits to find out if they have a "Fixes:" tag with a specific
> > commit id in it.
> >=20
> > So in your example above, in the repo I run it and get:
> >=20
> > ~/linux/stable/commit_tree $ git grep -l --threads=3D3 ae46578b963f
> > changes/5.2/773e0c40253443e0ce5491cb0e414b62f7cc45ed
> > ids/5.2
> >=20
> > Which shows me that in commit 773e0c402534 ("afs: Fix
> > afs_xattr_get_yfs() to not try freeing an error value") in the kernel
> > tree, it has a "Fixes:" tag that references "ae46578b963f".
> >=20
> > It also shows me that commit ae46578b963f was contained in the 5.2
> > kernel release, as I use the "ids/" subdirectory here for other fast
> > lookups (it's a tiny bit faster than 'git describe --contains').
> >=20
> > I don't know how your script is walking through all possible commits to
> > see if they are fixing a specific one, maybe I should look and see if
> > it's doing it better than my "git tree/directory as a database hack"
> > does :)
>=20
> FWIW,
>=20
> I had a need for something similar and found `git rev-list --grep` provid=
ed fastest
> results.  Does not provide for the "ids/" hack though...
>=20
> =E2=9D=AF N=3D"ae46578b963f"; git rev-list --grep=3D"${N}" "${N}..upstrea=
m/master" | while read -r hid ; do git log -n1 "${hid}" | grep -F "${N}" | =
sed "s#^#${hid} #"; done
> a7889c6320b9200e3fe415238f546db677310fa9     Fixes: ae46578b963f ("afs: G=
et YFS ACLs and information through xattrs")
> 773e0c40253443e0ce5491cb0e414b62f7cc45ed     Fixes: ae46578b963f ("afs: G=
et YFS ACLs and information through xattrs")
>=20
> =E2=9D=AF N=3D"a7889c6320b9"; git rev-list --grep=3D"${N}" "${N}..stable/=
linux-5.4.y" | while read -r hid ; do git log -n1 "${hid}" | grep -F "${N}"=
 | sed "s#^#${hid} #"; done
> 6712b7fcef9d1092e99733645cf52cfb3d482555     commit a7889c6320b9200e3fe41=
5238f546db677310fa9 upstream.
>=20
> =E2=9D=AF N=3D"ae46578b963f"; git rev-list --grep=3D"${N}" "${N}..stable/=
linux-5.4.y" | while read -r hid ; do git log -n1 "${hid}" | grep -F "${N}"=
 | sed "s#^#${hid} #"; done
> 6712b7fcef9d1092e99733645cf52cfb3d482555     Fixes: ae46578b963f ("afs: G=
et YFS ACLs and information through xattrs")
> 773e0c40253443e0ce5491cb0e414b62f7cc45ed     Fixes: ae46578b963f ("afs: G=
et YFS ACLs and information through xattrs")
>=20
>=20

Ah, I did not know about 'git rev-list --grep' thanks!  I'll play around
with that to see if it actually is any faster than my implementation...

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YF83TMNWhAwPTH4M%40kroah.com.
