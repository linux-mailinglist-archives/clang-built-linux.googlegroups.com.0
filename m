Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBQMSYH2QKGQE7QX7AGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AACC71C4093
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 18:56:33 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id w2sf121064wmc.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 09:56:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588611393; cv=pass;
        d=google.com; s=arc-20160816;
        b=xEsx02+pNegDzzvCgExNapcinJNdOcm1o/3pZOoyMNZyEecGYjmIeoo5K/lJRGzpye
         8jnZVJi45gZKrt3k1ATovim4mpJfYsg8WAw73EnY1VEJ6cpIelzcldH4QQH0EKKlwM+b
         qNBH+xwbFIBrC657B//jqhNG3k+xjoW6yjz9+jtEyAWvqMvDVzZqjizME73iXxyWG1Mk
         K76gcfzMljV1iSx7aa05D06iwrH8GK13CWPptfVZ4JEBs+8HIvrId/bcIKBgxfA5sncf
         4G9rGqByl3gOakwR+8nSwws3BcJKdHz8mJauVe9cdcgXhhQo1CoPPMum58E+gz+9re5B
         Qc1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ij6SQhIODnSk95rN8UIvDygtnBfVm0sd/hNVNXTCyy4=;
        b=INBKjLfQiHNM1qU8mOAASQDA5y9QuZENo90BlfHkhRx0T1qtsliJPZzv+mQ0DRV2eC
         MlvtEIJcm4x0YsCV9i/YIocAUUo8ou+Rc3KUuyCVhd9GoWvKi/YEt78w0GzPS3Nd41y9
         hNITkyAXlE481KegrXG0vMIOQp45DRC40GrrUkfzdZ4CoueGDBi4xsihohUiO+UrwHzJ
         KNFUUkmBksisaaWsUFLOAKQUx6tJBLTmU5BxXqftGwtnLAKrYirmt5UpVTEyg+1tZJmW
         9KXVWBBcypNQ8ARZjSF/xnC+vrko0E9JGw2YWxz0VRTKxs8EOhDFJUgVuZ2rqk86imuz
         tyjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ij6SQhIODnSk95rN8UIvDygtnBfVm0sd/hNVNXTCyy4=;
        b=R7QaDdUgySe5mfY9/88U9lP97PZEBEEeN1+3HpIdFjWjwqXKv4kaeZPtjTrTW+8DUc
         GHZcLQu13WamWQeKpiVXWbbRUQeVB8V+XSoIqAVbFszF6cX37/4mbbafqSJ9acGWyyk+
         Vq/hmEAK0KdPgBk1c1NYnSz9DjdCafHzIfpOCOOYEnNXPatYFU+8DWo0eGAOzaqCbT/V
         Dpu194VS6lrq7pvOF70NBWMKVBIWsei08mG5ZwgmbHqVgn5aXqbv8jTRrfsVzjkobcEt
         QMbEYf3RHUr8jlnETyAL9Y07Jb5zjMn7cXNqIsS3/fWPclkwNNoG3zdEkttOcJnixbqV
         XfMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ij6SQhIODnSk95rN8UIvDygtnBfVm0sd/hNVNXTCyy4=;
        b=mvPkolkKANcxMs10/dZLKsQcl0nUi7s1EsG/srGyqbD5QROutlpc8M/CPE7V1/6pZp
         SZIIZEGbAF/8k6IMd21iYwi6Rx83tGJoRy0pZZNxJ7DaXh77GH4l1Onvz6dXXgw1SAkm
         MvSBoDbFm30W9E7vTCEpZ0IHKvZm6PqhmAdJ4zCoNmIuvQLEuM2IYVdim9DRzFV0Is0/
         MUjOoMRBzOYcuWFepkNjksAv+rWoYUvdD2gFrSYTM/1VkYITMqZt+MzUOCB5KmqKpE5x
         mA9b3KHeHe4o3sTl1lds/+IEFK8PVEsMht9RwFNdIPDxdvZJL0/wnpCSn/1ZReQlMMh8
         8HcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZlrFM0ed6S8D2atyv4lTOs3T2Rt0UFRmf7U8Luh5DnjD27hVOe
	fcWwrwlEQgd9myZ4JHaHDEI=
X-Google-Smtp-Source: APiQypJDzTuoDA7d4YJM/hwwYeq8YNOACrVMtKccEI4Y1VoO5E9RYs6ggLU44D/Zsm+LTGdP+FMqxA==
X-Received: by 2002:a7b:c14b:: with SMTP id z11mr15176317wmi.44.1588611393391;
        Mon, 04 May 2020 09:56:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4103:: with SMTP id l3ls7097662wrp.7.gmail; Mon, 04 May
 2020 09:56:32 -0700 (PDT)
X-Received: by 2002:adf:fc11:: with SMTP id i17mr285465wrr.152.1588611392866;
        Mon, 04 May 2020 09:56:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588611392; cv=none;
        d=google.com; s=arc-20160816;
        b=kOWSpYEuT18lnUurydD23OBQ6p8Srp5iUs6aJvGg0tC3X27T0HRmL8w2vN4jE6l/4k
         eVBMVyqUuvNpA/DMOqjhI7eS5gsyUBOrWMgwtFKHH2d39hzp+T2rmK3S5Zmg8Ah+ClWD
         8hRiSlVmZ7kChItOtEy2RNaTBeyUvzM4AKRoUXE2ovPKKflcqb91P/ngozt+JrEpqla5
         hCF9PpJ1/QZvILmdeQcZlr0zopW7ZC/F9KqOMfGKtlcHTBYcvYpDBpiR6wRBQ7ULyYR1
         nur5FwuEHRxePXsqcoCCYL0gkSr4jO4XtAQR1eztf5KgSWSy+V0CPHRk9JR5y6iAKJfC
         CvWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=I7mdxmJeyQri8c9vLff2Etk8x7sTZqssP/del5sYcgU=;
        b=hOVw6cGFb4PbVfpYZIEbwhaowIkquki87TKyTslZsP0Gtw3s7SsgUzl9aELjxerS/Y
         QCUueQ6tXchgfQKop+Ld5hgyuTWulduBBjNHzDl27EQxZ2g+eIi126yqglTJUyoa2p7g
         jmYYdJKjm3ewQHKT6QE90HuhgGrpCQY6sARI3Nz7K5PC+9uk1SLhS+ZwueQodueaCDzN
         bfz2cRcocNclatLmsOcKg/ZNFvAwUHzNSu9wbineVnnIpT01hp6C5LWxJ3FuHB4ok1Vg
         RIQXzgKxUX6ioW+IsH5IP6qYcr4Df7H2hIBOtcFl5k6FbTSvNItuR5379w20krih2mH+
         vzGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id f129si4595wmf.2.2020.05.04.09.56.32
        for <clang-built-linux@googlegroups.com>;
        Mon, 04 May 2020 09:56:32 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1jVeON-0004p9-00; Mon, 04 May 2020 18:56:31 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id C9E36C036D; Mon,  4 May 2020 18:56:14 +0200 (CEST)
Date: Mon, 4 May 2020 18:56:14 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: "Maciej W. Rozycki" <macro@linux-mips.org>, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Paul Burton <paulburton@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Jouni Hogander <jouni.hogander@unikie.com>,
	Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
	Borislav Petkov <bp@suse.de>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] MIPS: Truncate link address into 32bit for 32bit
 kernel
Message-ID: <20200504165614.GA15545@alpha.franken.de>
References: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
 <20200422143258.1250960-1-jiaxun.yang@flygoat.com>
 <alpine.LFD.2.21.2004230036480.851719@eddie.linux-mips.org>
 <B307BFAC-9973-4444-B69A-40B054210E84@flygoat.com>
 <alpine.LFD.2.21.2004241316360.851719@eddie.linux-mips.org>
 <20200504154613.GA14031@alpha.franken.de>
 <86D4A0AC-59E1-4C82-B66D-6BFC71E08376@flygoat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <86D4A0AC-59E1-4C82-B66D-6BFC71E08376@flygoat.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Tue, May 05, 2020 at 12:09:46AM +0800, Jiaxun Yang wrote:
>=20
> =E4=BA=8E 2020=E5=B9=B45=E6=9C=884=E6=97=A5 GMT+08:00 =E4=B8=8B=E5=8D=881=
1:46:13, Thomas Bogendoerfer <tsbogend@alpha.franken.de> =E5=86=99=E5=88=B0=
:
> >On Fri, Apr 24, 2020 at 01:22:30PM +0100, Maciej W. Rozycki wrote:
> >> On Thu, 23 Apr 2020, Jiaxun Yang wrote:
> >>=20
> >> > > Alternatively, have you made any attempt to verify if actually rep=
lacing=20
> >> > >the setting for VMLINUX_LOAD_ADDRESS would be safe?  Glancing over =
its use=20
> >> > >there do not appear to be many places.
> >> >=20
> >> > Limited experiments showed it should be fine...
> >> >=20
> >> > But MIPS kernel has some design I'm not really familiar with like SY=
M32 for
> >> > 64-bit kernel and special address space design for Trap-and-emul KVM=
.
> >>=20
> >>  This only affects CONFIG_32BIT kernels, so SYM32 does not apply; I ca=
n't=20
> >> comment on KVM.  There's still that bunch of:
> >>=20
> >> $(shell expr $(...) \< 0xffffffff80000000)
> >>=20
> >> constructs I mentioned before, so let's leave your change as it stands=
 at=20
> >> this time.  Please do rename the variable as I suggested though, I hop=
e=20
> >> that's not a big deal.
> >
> >Jiaxun, are you going to send an update with this change ?
>=20
> Sorry my mail server missed Maciej's reply.
>=20
> Should I send another version or you just fix it at apply time?

please send a new version, thank you.

Thomas.

--=20
Crap can work. Given enough thrust pigs will fly, but it's not necessarily =
a
good idea.                                                [ RFC1925, 2.3 ]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200504165614.GA15545%40alpha.franken.de.
