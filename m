Return-Path: <clang-built-linux+bncBAABBBWE7H3AKGQERCPEYAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B501F1CDE
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 18:06:31 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id y16sf13845749pfp.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 09:06:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591632390; cv=pass;
        d=google.com; s=arc-20160816;
        b=RSgNk3u8i7f4BjZXvRzzCW3g2PFB/tDxuJx0c9vw9uJzkJK3+HQqpox/Ojok4RLDUe
         D4z8DvGCluAwfdXImy4JKBnag5SAtcTPeTsULq6802ALB/0JficX/19XJQr+DvXY8ZqU
         gEN4aY1pDyvSQbpAqypHRD+XguQux9PAgbDY2ci/fLC+408y55N2/x6og1Qk9E/2CWmK
         v+zyItGBkpryM3l5b6A0PGa2a88ktRX7nRLiy98OOi6ptwagSPra0jgOv/ubQEZm50T6
         GRyQfylRq2OIQ7ovTNT95H17pF/wN/0gZIjxKD4pdvsR8Jvd/XxiMO+w/OGATFwrjAl+
         iE0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oKYIxsFwSd1JZmvjyfwXSzz+IgowBhSO9aHIU3wy4oU=;
        b=MsE1xEcv1eTDVn/ZHRj0qgBz0WMxVrFc2bYro16HFzqOzgV7cTUN5eONEL0a3yPQ9+
         oQgDCXUghUwreGsK8S9RaaPu1iJTDsWZ9UTCOnCCBZulwA30xYBa+JsPMNDtiCG9ClGX
         m73oxMrnu5uxFssqkE9coCR16O8GnUx/oedDA7OMLeD1k0t2yDq/ijI77rxOR+yRdjP6
         zsmK4hM84uZZRRLsxoqaGuUWY4qc9bMtJMrZY1qTJuhWmZ1QhBrRpN0rIwOOij1MJ1zT
         QEw82cx4t9jJurma4AzzL7PwEIx9sefpEyFC+MBqsTMwzT19X20syjkSxoNlUCUDIf79
         z2eQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=V1bojjCy;
       spf=pass (google.com: domain of srs0=v6wg=7v=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=v6wG=7V=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oKYIxsFwSd1JZmvjyfwXSzz+IgowBhSO9aHIU3wy4oU=;
        b=ML/4XHczUf3youT3u1i3sy875fNGrT42T1UU10u9Yq1SNMKr6Q1Z6HJo6h7aCWnO16
         Nz+kd/l3zyRGHDzLt6DSODqskx21SOWXCrwtIhUwtSBTaXcVREzzDV8oxasNliaEZzUS
         GwMaXGaGHRWhJDW61bCaDoKq10suOip1dsalyQCqHRunuX2AG0A+AtPZjbv1zPL46A7H
         s83i1+KekmNDOvBA0CGDofaAnh9oYjWqugoAlYATLbM2EK5f7VfQLJNKDNs6auUuDu9y
         bPOYrEazdwIfZNc61z3wQdynkux+A6v174gtagQKYVnToeAOt3Ihn9/0/6F6HSxD5ivh
         PeWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oKYIxsFwSd1JZmvjyfwXSzz+IgowBhSO9aHIU3wy4oU=;
        b=ja0W5mmwcWNUSbvVzNaC/5wmYl+SBoLR8x+8fnaTsUNjD/Ri2JRHLkH+FEYaWs9OjH
         mPVQsbu1PJNfgm6vJpirxJggff5fQzWjrhaMvdAtPxgWfS1PA+zoyLql2wrkqFD9T6Tq
         GgpIcCep2zPtsTYHfEoRST5f5mf0OZE9ryJd3bZgyRw81al6EqAEs3Z4p8nlOsSWgE1B
         xWIyHtIj2u3sdw+TCFD3i4GlCEZhsqhJlQ0Z+kW8a0PrTs8T95qi65QoGTrmIrGz1AOB
         rKLwtBb1bxRRwzvLjQYTb9xuSr6PLsLmeNVxKCGA6RQt+0g3LdBI9Kh0IbHAArVvuURD
         tb2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531JtzIyAH8XJbZUft2yN2c1jdUJqStrDXDBB9LQeWQl8vgy6Qqr
	bIpjp+ocdz3IOvNmBMZ+8/c=
X-Google-Smtp-Source: ABdhPJxZSZVOkfFSwmBUR0N0tv+Kyw+QaHzazjwVRAIJG8e4mYjwXxSv/lJDZ+pF8QqXaDD6O8pZMg==
X-Received: by 2002:a17:902:a588:: with SMTP id az8mr20046342plb.318.1591632390138;
        Mon, 08 Jun 2020 09:06:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9a84:: with SMTP id w4ls5419658pfi.7.gmail; Mon, 08 Jun
 2020 09:06:29 -0700 (PDT)
X-Received: by 2002:a63:f242:: with SMTP id d2mr21518194pgk.212.1591632389738;
        Mon, 08 Jun 2020 09:06:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591632389; cv=none;
        d=google.com; s=arc-20160816;
        b=eM+ddzthNO/IRO73MfG2JbT5/9b0OdecgsA+tqTq+RbinIdfFDll8Fw2QMZCmIxXou
         ReDs07g5OJvr/1P+D0iGPttnH6C05nltK4ZTE0YGJjYYkJOmDpnfsM6Ek1bWpEJ8YFCa
         IWzLzxR3JA80E3kqPtuaZStlWoe51SClEgHFAr1LHQHcfl8AQIr+Ka1wl8q6S0KmCOJp
         FpBo5BVjIrSXvvqnVPDxLz8PJ6X3m9WU0hm0vMiRtX+kHTVexBxRJpKEW0yOf/O13cSz
         QXHvI3aflkqpQ/g8qdVfIv5TScicbI0sz+16CgCgwRO00cyOiDfOK3YwLmDvtNV6H+4+
         2K3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RJguWXCASX4gtTwlDrk7pagWK3NDoU0Nh9tWO3kkbaQ=;
        b=vMvlTUd3+KACY2pcpwIMVOBmNfpxB1QErs6dMJz3vclXySppApslbUZVI6H8zP+JDf
         cO6lSvOspdlIcNSiwRm6jeRnkk4di0niwJx/PPdaNuDlq3+ifDjCPrIqlYRdILqUGgWy
         ttyOBIejUji4Be6yqmk1A3ValCEliQhy9mqqXBhZtraj4hAZdY1PEXaYsAeNToYg38aY
         ICaKsq+v6VNeOjHzn994bFVFRS0GV8wGlftddNrEGeX5uGYlQ3W3+qSa2QdZM6etNd4b
         JowhvVEFrZ+QoiQQ2yRz20ULlJ2sr2Y50cVGR4POYtirXF7cRLOgQSj7ax2o5ngl5SB+
         RJkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=V1bojjCy;
       spf=pass (google.com: domain of srs0=v6wg=7v=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=v6wG=7V=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q1si380738pgg.5.2020.06.08.09.06.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 09:06:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=v6wg=7v=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6271E2063A;
	Mon,  8 Jun 2020 16:06:29 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 451BD3522A6D; Mon,  8 Jun 2020 09:06:29 -0700 (PDT)
Date: Mon, 8 Jun 2020 09:06:29 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>,
	kernel test robot <lkp@intel.com>, Ingo Molnar <mingo@kernel.org>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [rcu:dev.2020.06.02a 67/90] kernel/rcu/rcuperf.c:727:38:
 warning: format specifies type 'size_t' (aka 'unsigned int') but the
 argument has type 'unsigned long'
Message-ID: <20200608160629.GJ4455@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <202006060704.dM7SxfSK%lkp@intel.com>
 <20200606001914.GE4455@paulmck-ThinkPad-P72>
 <20200607190057.GA19362@paulmck-ThinkPad-P72>
 <f6df7c3e-4c43-47eb-4c4f-a5e9de0d332f@huawei.com>
 <20200608032632.GA2618368@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200608032632.GA2618368@ubuntu-n2-xlarge-x86>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=V1bojjCy;       spf=pass
 (google.com: domain of srs0=v6wg=7v=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=v6wG=7V=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, Jun 07, 2020 at 08:26:32PM -0700, Nathan Chancellor wrote:
> On Mon, Jun 08, 2020 at 09:56:16AM +0800, Kefeng Wang wrote:
> >=20
> > On 2020/6/8 3:00, Paul E. McKenney wrote:
> > > On Fri, Jun 05, 2020 at 05:19:14PM -0700, Paul E. McKenney wrote:
> > > > On Sat, Jun 06, 2020 at 07:07:10AM +0800, kernel test robot wrote:
> > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/l=
inux-rcu.git dev.2020.06.02a
> > > > > head:   5216948905dd07a84cef8a7dc72c2ec076802efd
> > > > > commit: 7d16add62717136b1839f0b3d7ea4cbb98f38c2a [67/90] rcuperf:=
 Fix kfree_mult to match printk() format
> > > > > config: arm-randconfig-r004-20200605 (attached as .config)
> > > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-proj=
ect 6dd738e2f0609f7d3313b574a1d471263d2d3ba1)
> > > > > reproduce (this is a W=3D1 build):
> > > > >          wget https://raw.githubusercontent.com/intel/lkp-tests/m=
aster/sbin/make.cross -O ~/bin/make.cross
> > > > >          chmod +x ~/bin/make.cross
> > > > >          # install arm cross compiling tool for clang build
> > > > >          # apt-get install binutils-arm-linux-gnueabi
> > > > >          git checkout 7d16add62717136b1839f0b3d7ea4cbb98f38c2a
> > > > >          # save the attached .config to linux build tree
> > > > >          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make=
.cross ARCH=3Darm
> > > > >=20
> > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > Adding Kefeng on CC.  Kefeng, thoughts?
> > > Like this, perhaps?
> >=20
> > Hi Paul=EF=BC=8CI check https://lkml.org/lkml/2020/6/2/286 and <https:/=
/git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git/log/?h=3Ddev=
.2020.06.02a>
> >=20
> > https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git/l=
og/?h=3Ddev.2020.06.02a
> >=20
> > There are two different ways to fix the same issue
> >=20
> > patch 1:=C2=A0 rcuperf: Fix printk format warning urgent-for-mingo
> >=20
> > patch 2:=C2=A0 'rcuperf: Fix kfree_mult to match printk() format' from =
Ingo=C2=A0
> > after my patch
> >=20
> > since patch1 already merged,=C2=A0 patch2 is not needed, so skip patch2=
?

Good point, done, and thank you both!

							Thanx, Paul

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200608160629.GJ4455%40paulmck-ThinkPad-P72.
