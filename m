Return-Path: <clang-built-linux+bncBCN7B3VUS4CRB3UPUCDQMGQELCNFV4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0BC3C20C4
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Jul 2021 10:25:19 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id i133-20020acab88b0000b0290240dce28bb8sf6240099oif.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Jul 2021 01:25:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625819118; cv=pass;
        d=google.com; s=arc-20160816;
        b=ktBFACbIZaAS5ll63uxl6331263wx9E10P3Zhv0Y18hivUPsgSnanQiQTli5GWh7Lp
         UoKMRgRF+x3FzlF1iso67K0VdwbJ8MRD26UXGonU8JylavXfJ8nQQTRvc6Ee+3BryFqA
         eXJP1soDjN1BJd8X4vz/c39Bd/8vXoYt/Kptq4hu7K9DkB0wum4pasr9j+7qBETqwzAQ
         n6rzLYdpSS1+HIlKfKUsEtx1CceBLoaOgQvlCYpr4+vEKIdpXbFmNddsWl8q103Gf4jy
         nacLUbDsHNKCiXr9sIvYQ/oTA4Y+DDkztZysT/bS3pE4mX8V9O1UuhdFUAPcYNHiEoaq
         GZ7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VdgpVgaCIorckUx9vGUNTYZooPnR6qZNSwCxk5YUA1A=;
        b=w0p+42bgbkVZ/DnNMR43G/N0FgnbsZsJILbv9sMI8NY0IXYL8pIrg+W4WE01UN0y9x
         PLavMBLPam5cUSAZKFs1Me66+9KrouWCjhpfUXk1Iqg7+QjC/uLgq0s3eIKfKX1IV4z/
         qwTwVrpM5DQE8MXhmpAnGiU6YNGwveu5+yiapOT3C9zeGSZGB0BV6pPQubqDm9rrgBf0
         3i/hu0uj4D+WnR1skBu2FT7tG6aoTsuIslVEToFg8KCQz9foaTpmpeyFmoeJbWJElfcY
         UFq5u3P38fjeH5dkk/mDK7HnfNMIUwjJKTiS/QWQ9+ob+X0iDHFWd2D7Y1Pb3jQ2vOWw
         yE4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VdgpVgaCIorckUx9vGUNTYZooPnR6qZNSwCxk5YUA1A=;
        b=WtR2UUN1IwNDLZHpO8PTlz4xz9MfNE9fTHaPnq3DqHLbJp6tQn/2Z6f72qorCXpK75
         17v+C6X8tejOZGa0k9rFdEHawis4VdE7ZnhVkGRrz5ucojCK97014vsmHLQ6sn01q7o1
         EfkH7Dkk3BLlHSv3aa4PRvWZLFcsxmcpQrRc+hCCRJ29t1+HTDt2aym/cGqG1F4XjhhG
         C9rqmRUuXSuEwn0bQ+Ik7GtDIWb/8MmA2p6k739ZKM7EvpJNM+zLXaOLRCNGQmkVBfAD
         Vr+p0i9sz0ls6Htnhqt+6dVjGNTFAV7WVakZbLshxdNQAC1SPDzSMZUgMpHiWLjfmMcm
         mZXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VdgpVgaCIorckUx9vGUNTYZooPnR6qZNSwCxk5YUA1A=;
        b=tK4OMafKz2A3WcnF88m5C1qPK8uO+JyuZGCuHw4uurjYwUh1XJWAGSa6c8DZn+qc1e
         Jiy3oi1L+FOpECQccUd3MYOdREp3nBfYIAs1A+Pt7lca1rdzvi/rVDuhonnLJlwAsnWR
         1V5rAbCqQJ3gWCsW+sIovJ4PcvO5epK3ljotZWpTjgYoi3w0fFhsWaWDHNb/eCMX6aUy
         p/Ie8VY0qZ5EuS/NvJfiTkN/D6awfSIrpArLTvbMo5VunQXHkXHkrfw++prqXaWZO6Hv
         77GpI+JTjFWkEo50+RECCzh5rQg3UZCKPdwDnTFlnNBB4RT6QhObsnD2HNjOtgcdyNn9
         X9Cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cX4TSBLNYtM2zxPjqFbDRqTGcAJoXJCgs6NZeltaCQBup4ifi
	T4MTBNtuhdOtyCmanKo+LP8=
X-Google-Smtp-Source: ABdhPJxcth84M6s1VLpCqgBkxP71L86epVnQu3z5ee2XLehKgAJMOI33JKJIZV2BSRU9kW3GhNYorw==
X-Received: by 2002:aca:f0a:: with SMTP id 10mr1405864oip.39.1625819118757;
        Fri, 09 Jul 2021 01:25:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a84:: with SMTP id l4ls1685433otq.1.gmail; Fri, 09 Jul
 2021 01:25:18 -0700 (PDT)
X-Received: by 2002:a05:6830:18ca:: with SMTP id v10mr21915474ote.299.1625819118380;
        Fri, 09 Jul 2021 01:25:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625819118; cv=none;
        d=google.com; s=arc-20160816;
        b=qBkfhtQsJRajuwSAgEOuxXVne1ooLuzVQgt9es4GtF/4bdDN7A3mktZQika41bc91e
         H6dYFkkJF9dyVIx8QSTi4AlHDCERJpkohbdaDXy8AXi26Yfv8FPoqDeXHqBPdqfdNkzk
         wXEm7A6UxvMoQdzTXTPEEzoC0GFAhuspYl5aAhhbO3Rjzu23l1splGsk2R75u+I0xGau
         qL7u/WHYQhLMmD7vuoZWOlRh2esQfjUuPBKYZGOJSfVLu0cAJLeyUA0tvxm4NKtA4FO/
         E5Vk5jUf7YFQiMWguq2k8pdYq1cfSYp1WyuUGiuEAEY0QTBTxz1E0yj1jW03vOkwkRIO
         sFlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=9tMvzypqzCuN3+l+GTXzc2X/PkDVAZOnB7r+h3+Dw7g=;
        b=wuvHqysHOgtyIN0t2XLSB8iOMZq0dkne2qDlogpwKtrd2uSRtaj7nwiuI0i1tGpewH
         UrgB5/ksTGg9j6CGMEpY0MDMh5NeYit0+JQ/7FtlQbNxdDqsCK6YrfW3oWGBOr1IKNRD
         euQMDfBdzUVvJC6Y+IQXBU74uVYFZzKYAM/ltkwiWEF9yehwZS/xQICZcC7K62xHuqOj
         H+DxEJPTRxgPutklfoWQQMZhUXJz2eVB8cSuTALChcNq5vpWxWSadA+DXfHvXyJwz7QX
         8i6dSUeqZhEgHPNS0jh9y8ENhRtXzQEdvTa7NQCnGJpeaI4o+FHNF8demXRinBBVi9/T
         LPCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id v8si513311otn.0.2021.07.09.01.25.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 01:25:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: e2fa50fcf82b4f31a3406b086a65e148-20210709
X-UUID: e2fa50fcf82b4f31a3406b086a65e148-20210709
Received: from mtkcas10.mediatek.inc [(172.21.101.39)] by mailgw02.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 54868000; Fri, 09 Jul 2021 16:25:13 +0800
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 9 Jul 2021 16:25:12 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 9 Jul 2021 16:25:12 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <samitolvanen@google.com>
CC: <clang-built-linux@googlegroups.com>, <keescook@chromium.org>,
	<lecopzer.chen@mediatek.com>, <linux-kbuild@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <masahiroy@kernel.org>,
	<michal.lkml@markovi.net>, <nathan@kernel.org>, <ndesaulniers@google.com>,
	<yj.chiang@mediatek.com>
Subject: Re: [PATCH v3 1/2] Kbuild: lto: add CONFIG_MAKE_VERSION
Date: Fri, 9 Jul 2021 16:25:12 +0800
Message-ID: <20210709082512.25208-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <CABCJKufWcp6Hx=8btz6pDNcKvQ21n4BSPZ7cp1Tzhxt0+pQOmw@mail.gmail.com>
References: <CABCJKufWcp6Hx=8btz6pDNcKvQ21n4BSPZ7cp1Tzhxt0+pQOmw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as
 permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

> On Tue, Jul 6, 2021 at 2:06 AM Lecopzer Chen <lecopzer.chen@mediatek.com> wrote:
> >
> > > On Sun, Jul 4, 2021 at 7:03 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > >
> > > > On Fri, Jul 2, 2021 at 12:29 PM Lecopzer Chen
> > > > <lecopzer.chen@mediatek.com> wrote:
> > > > >
> > > > > To check the GNU make version. Used by the LTO Kconfig.
> > > > >
> > > > > LTO with MODVERSIONS will fail in generating correct CRC because
> > > > > the makefile rule doesn't work for make with version 3.8X.[1]
> > > > >
> > > > > Thus we need to check make version during selecting on LTO Kconfig.
> > > > > Add CONFIG_MAKE_VERSION which means MAKE_VERSION in canonical digits
> > > > > for arithmetic comparisons.
> > > > >
> > > > > [1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
> > > > > Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> > > > > ---
> > > >
> > > >
> > > > NACK.
> > > >
> > > > "Let's add MAKE_VERSION >= 40200 restriction
> > > > just because I cannot write correct code that
> > > > works for older Make" is a horrible idea.
> > > >
> > > > Also, Kconfig is supposed to check the compiler
> > > > (or toolchains) capability, not host tool versions.
> > >
> > > I feel like requiring a Make that's half a decade old for a feature
> > > that also requires a toolchain released last October ago isn't
> > > entirely unreasonable.
> > >
> > > That being said, if Masahiro prefers not to rely on the wildcard
> > > function's behavior here, which is a reasonable request, we could
> > > simply use the shell to test for the file's existence:
> > >
> > > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > > index 34d257653fb4..c6bd62f518ff 100644
> > > --- a/scripts/Makefile.build
> > > +++ b/scripts/Makefile.build
> > > @@ -388,7 +388,7 @@ ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
> > >        cmd_update_lto_symversions =                                     \
> > >         rm -f $@.symversions                                            \
> > >         $(foreach n, $(filter-out FORCE,$^),                            \
> > > -               $(if $(wildcard $(n).symversions),                      \
> > > +               $(if $(shell test -s $(n).symversions && echo y),       \
> > >                         ; cat $(n).symversions >> $@.symversions))
> > >  else
> > >        cmd_update_lto_symversions = echo >/dev/null
> > >
> > > This is not quite as efficient as using wildcard, but should work with
> > > older Make versions too. Thoughts?
> > >
> >
> >
> > I've tested this in both make-4.3 and 3.81, and the CRC is correct.
> > But I'm not sure if anyone would have the "arg list too long" issue.
> >
> > Tested-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> 
> Thank you for testing. This should produce a command identical to the
> wildcard version (with newer Make versions), so that shouldn't be an
> issue. If nobody objects to this approach, would you mind putting this
> into a proper patch and sending it as v4?

Sure, I'll rebase the whole commit and send as v4 soon.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210709082512.25208-1-lecopzer.chen%40mediatek.com.
