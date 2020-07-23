Return-Path: <clang-built-linux+bncBDA7X7F2WUEBBOEL4X4AKGQER3H6BWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F5E22AA5E
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 10:09:29 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id w7sf1134317wrt.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 01:09:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595491769; cv=pass;
        d=google.com; s=arc-20160816;
        b=vOpNsQUHMTd/rict0IiP+PIKDCowqCE0Chaqt4vBDqnellTch2I6mm1lGNN7uOtCQu
         v7Ph1JOTh4vhiJ604920Q0FwrQnzYaGjzGVjREwFDaZBmVd/MKt0pMlo51AvW+n9em2e
         +fpiIje3koRIMftvfEyCBuPYSfwQnIkIxHnfjsTNSMjVDLifetjEoChLbKxgE7b5gb80
         gHcmyuISLt58ewr7zJbbRdAdF5bBaDd1llP0qUw+Dv8io5HqkjPqWMUplFzRkaQKBx/M
         s6xH/SDnd5G2joWAq0hmLnlVFVViS9+pdmAZLmwVeot0X3qzLnWZUwyUSSNeFhDThK/8
         oHcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=txPqTV/gYJMyE5iE3zA3dkNpHNE0awg8f+1nr+2q7Ms=;
        b=vGnJIsaPWzJJHi3g9F7I5jAzNJFZTtnoVU9Isju0Aeb+5PDH7hntRjoRgZHvs9AdyY
         tV8VwcELWt9QOqCwNUK4f0Zg2hiZFfPvUeltzWO85jOXx0Z2dWgCQVLKd3B7ZpbiGtln
         gyEUM4ns9USWTJiye5NFFxk5ASpCBc/jhiQ7vIXg5jep9dlBNGwCmkPWO4HzgYizcSTz
         di9kBXeYEzqdJwvEoPJOO5bj55WksOzKY/f5d3jiRxrZX9S6smHvSQ7hyobwDHBBpAVs
         E38KQSKyj4s9+t6c/5oTz0inHEru2T1iRT3wu37Hck1UFl+1l5vF8fNiNU/DP3PDkTbc
         0M4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ttsPTiPk;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=txPqTV/gYJMyE5iE3zA3dkNpHNE0awg8f+1nr+2q7Ms=;
        b=GEgo/HkbhZHrcaV5CUPTvIf0RiqgO0T+PK6poOez7vOpciEElwnYhnXUS6o9jBrREs
         yBD6XJHRHN96Rpxsdyodax31/dDtSnSY1fatZMikVtg4+YGEhFyykuHDn363TMyHA3oN
         qTTOE8Qv9YvkWvGBEPr2S4ijP9GBKOr6G/NvTjtyJ8ODRPtrk6YhhA1hyv+I6k5EHU2A
         m4lhaurKlU2fsy3LV1AOel9Gqml+Z4E4JJy2UqF3mhhmNulibJ4lM6MMiTkx/LcVU/3H
         9viqqce5+byZtQVC0NhwPTbrC+zCJkqdBwzQmmJ3GviH7d51SppZPCoXiXLmJ5tVv0Pj
         gpHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=txPqTV/gYJMyE5iE3zA3dkNpHNE0awg8f+1nr+2q7Ms=;
        b=X5SNBztahbUYV4jefH7UYdW1bHjvidLx4Znq7TAaz1QI+1lQtPBEvRDWDD5d72wrcw
         iL9jSWmf/ZYRHoaDvRTw7K4ehJDQ/cE/6MQiuNHbL0sKjL6NUjII4FhTV8KWHU6mUoCu
         EqnMItomvbUEBaUAH8ODRdHVXycOmyBz4MerPusGQ53ovDCFeT2D0PgQHvY/1jqO1VPF
         iRjhH0Y6UWZcttt6+GjGjqgRE7vNjU3lfUNR5mAtyZHDmA/AtUC+GVhuZMWhinp5NW+D
         LrJVWX5Au+mnVa0yHflMg21L4yjjg9KlF8N+17Nz2si37gg4jal0Svl4QsKOffaqM8EI
         jn8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531flLu5dOgcPUkuevUWg6jiAcZ1g5AQT2BFT4yLZCjylPorRO85
	XjRirbW97nNTetsaZJesywY=
X-Google-Smtp-Source: ABdhPJwsUXd/iGz68YW5U/Ns4r8p5Ym49NGofNq2JvEH23LM3k+UCr6QK0mn3wIARnoWhtNx4q6CEw==
X-Received: by 2002:a1c:2bc1:: with SMTP id r184mr3201505wmr.133.1595491768972;
        Thu, 23 Jul 2020 01:09:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:b1cf:: with SMTP id r15ls5254336wra.3.gmail; Thu, 23 Jul
 2020 01:09:28 -0700 (PDT)
X-Received: by 2002:a05:6000:c:: with SMTP id h12mr2833727wrx.49.1595491768464;
        Thu, 23 Jul 2020 01:09:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595491768; cv=none;
        d=google.com; s=arc-20160816;
        b=t+iAgagNFgPOD8dE2Xm+1oDY2tokDkXQF0SxOyxvB5uiYgZjwAQWsFl64Bbqfg7FVw
         3pyj0X7+Af+TuWuzdqmbyMj0EoPgXfTzqdLtrLm5dhv9e2o/Y+JrMFsE8SzCwFSB/4rV
         JeDYtpAu3dau6FTGrkgO88sAkcuY3TdQZIfTprWChDNYUD85AsLWvUuiB1m5wuw4rQtW
         2kUpc+TKdnsrSp5s8xjEhtD/4PmNDdLVAjrJMG4m5w5nwVM/y3EMkFtZylXDGy1yTp4A
         OseQC6DKPauCyqRtC3+tJlOvijR+3GdiXbdWMU9NmaBxldEkFf3gUV74+PqEJud017ES
         CKnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=LKkkRra4NV864e0GGC42WE+9nkbNpkfYWcQeQQEZxHg=;
        b=C/6lkw5hbQajqhbffHL9nNZbQwJ0w8WVAcjuIpbD3M9ST4qt7vO4+7onkUzMpY2gAN
         h4fe41bRB1Ry/KhSKnVsYFiGOEV6IyrOTaLbnjEIcsSF8sPJ5w/oYGn9Kj1eudRBscVv
         8yfevvhKf3WMxFnmScQzqJyA6tFKfKNiMdN+GOMhVXd4B93x0JDOgVxO003zC9yOiPE5
         qzuSonMaVRzEnFo+kMmnYiXQpGjHQadRIrVC/qxrDitI3/oRfqQ3oKHisdKloIirPou0
         v8POxW9cYDifrVmbCL5CY5/i4r65hUMzGYklF2Yuz+7K6pZRjUNzXt0vrVDSnkmCIavt
         +TsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ttsPTiPk;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id s79si450387wme.4.2020.07.23.01.09.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jul 2020 01:09:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id a6so5950156wmm.0
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jul 2020 01:09:28 -0700 (PDT)
X-Received: by 2002:a7b:c259:: with SMTP id b25mr3049963wmj.107.1595491768066;
        Thu, 23 Jul 2020 01:09:28 -0700 (PDT)
Received: from dell ([2.27.167.73])
        by smtp.gmail.com with ESMTPSA id 68sm2931771wra.39.2020.07.23.01.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2020 01:09:27 -0700 (PDT)
Date: Thu, 23 Jul 2020 09:09:25 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rong Chen <rong.a.chen@intel.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] Re: Adding branches for testing
Message-ID: <20200723080925.GN3533@dell>
References: <202007180528.vD5KVnHi%lkp@intel.com>
 <20200722180319.GH3533@dell>
 <20200723035548.GA363815@ubuntu-n2-xlarge-x86>
 <20200723063243.GJ3533@dell>
 <19e886f4-f4de-2605-d2fe-b6009ce97aa0@intel.com>
 <20200723072720.GL3533@dell>
 <40833ab8-8a33-b452-ae61-6574bbaaa992@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <40833ab8-8a33-b452-ae61-6574bbaaa992@intel.com>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ttsPTiPk;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::341
 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Thu, 23 Jul 2020, Rong Chen wrote:

>=20
>=20
> On 7/23/20 3:27 PM, Lee Jones wrote:
> > On Thu, 23 Jul 2020, Rong Chen wrote:
> >=20
> > >=20
> > > On 7/23/20 2:32 PM, Lee Jones wrote:
> > > > On Wed, 22 Jul 2020, Nathan Chancellor wrote:
> > > >=20
> > > > > Hi Lee,
> > > > >=20
> > > > > On Wed, Jul 22, 2020 at 07:03:19PM +0100, Lee Jones wrote:
> > > > > > Good evening,
> > > > > >=20
> > > > > > Is it possible to obtain build-test results for successful buil=
ds?
> > > > > >=20
> > > > > > If so, what is the process for adding branches to your system?
> > > > > >=20
> > > > > > Thanks in advance.
> > > > > >=20
> > > > > > Kind regards,
> > > > > > Lee
> > > > > >=20
> > > > > I filed a pull request against their repository and I get email
> > > > > notifications whenever I push to a new branch on my repository:
> > > > >=20
> > > > > https://github.com/intel/lkp-tests/pull/64
> > > > Of course it's on GitHub! :)
> > > >=20
> > > > There was me thinking it was secret source.
> > > >=20
> > > > > Looks like there are a lot of trees to look over in case you want=
 to
> > > > > customize it in some way, I am not sure of any documentation over=
 it
> > > > > though:
> > > > Docs:
> > > >=20
> > > >     https://github.com/intel/lkp-tests
> > > >     https://github.com/intel/lkp-tests/wiki
> > > >=20
> > > > > https://github.com/intel/lkp-tests/tree/master/repo/linux
> > > > You've been a great help Nathan.  Thank you!
> > > >=20
> > > Hi Lee, Nathan,
> > >=20
> > > We have updated the config file for repo/linux/ljones-mfd: https://gi=
thub.com/intel/lkp-tests/commit/deff2b285b141ac462b3a7091566ce2ea218c9f0
> > > and there is a introduce document for these items:
> > > https://github.com/intel/lkp-tests/wiki/Repo-Spec
> > Would you be kind enough to expand on a couple of points for me
> > please?  The Repo-Spec seems to be lacking in a couple of areas.
> >=20
> > What are 'integration_testing_branches'?  Will lkp-tests only operate
> > on those branches and exclude all others (except those mentioned in
> > 'whitelist_branch' of course).
>=20
> Hi Lee,
>=20
> the branches of integration_testing_branches are from linux-next tree,
> 'integration_testing_branches' means 0day will try to apply lkml patches =
to
> these branches to test.
>=20
> $ git show linux-next/master:Next/Trees | grep lee/mfd
> mfd-fixes=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git
> git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git#for-mfd-fixes
> mfd=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 git
> git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git#for-mfd-next
>=20
> >=20
> > What are 'subsystems'?  If the MFD case, these do not appears to be
> > directories.  Do they pertain to something else, regex for instance?
>=20
> 'subsystems' is generated from linus/master:MAINTAINERS, 0day use it to c=
ompare with the patch subject from lkml,
> and sort the branches that the patch may want to be applied to.

Okay, that makes sense.

Thank you for taking the time to explain.

--=20
Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
Senior Technical Lead - Developer Services
Linaro.org =E2=94=82 Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200723080925.GN3533%40dell.
