Return-Path: <clang-built-linux+bncBDA7X7F2WUEBBRHE4T4AKGQEVSSX4EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EC522A917
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 08:46:29 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id n24sf710547lji.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 23:46:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595486789; cv=pass;
        d=google.com; s=arc-20160816;
        b=fA6LUiCDbA8myxazC4RU9ikLUED/G3IvKDfPQlQskIsVCPj8xf6adY73PyhDUESvGx
         G6+tkaGqSzlySBRWe1c6pcynAQ2Ame9Lp2b98TGQg+ocosCf0Bhy09VB1nz9gNcOyT4d
         BU8IAIqEbc3ut75yIbRMlwL7Bl1EXG+EqZsSRZfUB2wlYTn4L7TZEMthHnay+juwgXRJ
         mBtQ3XBh+D/uVaYxDLJZeFZsOUiDzule3p8I72iJmt6ekimIvZ3LZDgVdMbbgvXzzcDd
         9pYhg1I/L5NhXQe3iqf+YC2M/Lj7wPqNZog9crdGy6jfP1LSFIvJFIifhjkS+LjvgZc9
         6deA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=GszcAghZLTovob20VOAHcpAEEqt00hCL/NKgJ5EtGnw=;
        b=tqJUPAEqg7o5BSBOfzUNkIjHfKMCmaEb5u96BLOaR7jUPxU606CyPnN+MR5kxWt6wl
         N8KttTUuqhDFvnKqEfXRYZNr9hsinkfTVnSymAe7WS6YU58h4UmrxrUZE3Hz2kXVCX2o
         lFCi5iEDt5OuH+Go2HgoWd3Lsp21dykLo5Kb1FLfZdCPUrA8qSprYt7Nk6B+hPYq73Rk
         HyyN0FEfIuxF9URKhqSDh3XXlWABx2PyHtMpKM78HLu0yiPK+mwWHucGUAJnU3DuI5rO
         WwPtbyvU1Fd4+oEipXqhqbEq8BRX6VY4ZMyy65X7jmeg+U+D58iPGWXi3Qv3fO8Sxv/2
         959Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FnvOiTw9;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GszcAghZLTovob20VOAHcpAEEqt00hCL/NKgJ5EtGnw=;
        b=TXW5mvQZTWOxzpoxTbbTUccrWXAAubfeHRkdVr3TB/pREIjldP66zEg6RxxWEj8FMu
         XcFlgSMP0eVSpi9XOUoqPafOJxRg6Lux/dpHMb0nL4xpw2PHlfsDTBdpSKM84ztY0HDK
         7/ZEPauygwEq9v+05pOwrFiqqj3BV+lgkG1KKxOjN7VPk4tFXqKH/IQ0LA9cN0mNDFvQ
         4l8CnfXE9hYVrH6sHCDEvylKDgwrIokYN0IQPVDnAEqXC//HfxUCvHYN5+CA1enWQwCY
         Z0wLDDWYGXL494eXzF5iI4Ozmo7B6QNi+5Gls7XrllhWeY6+QxacFFrNjlmYFnZrRDML
         FfKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GszcAghZLTovob20VOAHcpAEEqt00hCL/NKgJ5EtGnw=;
        b=QaxvulrVoxhUg7Zq7Hi3SWjzpiqdI6k+a9wNxn2WXIpCWDMN7U6B/0CV86+e8vx3Kr
         X1yVXgbUiNDtYRax27TIdacGrbhZyVNAHOU30wOcevm9M7rgdcT8wWrmmhyJYaX17VYY
         IXjSPT1Kkkm9deHhaZd5el+Yv2oHe42XX7PvTPYuWliPhH6Ge0mnDqVdwtOEd0PF2QOv
         FQ/8LsBnuiqAVL8lEVSMSD6buLuG1RHdYnDjevki8WWT5qUp1eLg7ab55GAz+Acsynyp
         geW1xT0Bg2YAUjZnFvO8FkuX6kNWND2NF6AU/DuBOAHDcT273SY8yBZrDhm+ltmaPwHZ
         8dVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lgH5ldhiuv9+8btAIRC1318AEwKKOzQzRIOpOxbn5E8tz3zY7
	U0OHRxf2gW8VoM095YMsc/c=
X-Google-Smtp-Source: ABdhPJx929M02kw8ryeEXbP1k2r6UGFHBoSB08BXhGaY4lSnLpr0VLftDhrBpnpMFMBzOdBgLQQnew==
X-Received: by 2002:a05:6512:523:: with SMTP id o3mr1473440lfc.212.1595486788903;
        Wed, 22 Jul 2020 23:46:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:60e:: with SMTP id 14ls1420415lfg.0.gmail; Wed, 22 Jul
 2020 23:46:28 -0700 (PDT)
X-Received: by 2002:ac2:4557:: with SMTP id j23mr1533395lfm.124.1595486788319;
        Wed, 22 Jul 2020 23:46:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595486788; cv=none;
        d=google.com; s=arc-20160816;
        b=W807h3ZMEqCuiVA8c3GRDt91Svp1+SaaEc0IWSDOTaWD/gRnRsEWzOLyr/4KHvzEaS
         VUZ+x5BfjxzRzdWhnZgXrc+AjCR/Sairv3ef1jfpBZOk4mnUSDwAaD4gQK9NGeqIPRA9
         FobTZ8VcAmmHYvqbRzs6C/DIqKRJ7SZzp18VfexQ8o1S9/M5lB6gM+LgBYjedG93VQHE
         4m7H6X+loqq+lXUSTCSli+8plwkrSwjG7uoEuYCnvsH94pAu0aRYHtOcLVQc2b6f45xs
         APVpSRMgykT3P0BnKZDwWrT39/CkYlaD5ykbB4rWf/DHVNbHMXn1GD0pMI7Ggu8NLmSC
         zmQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=9RCK2VL9NTAPYh3ScsWUKnRLGz4/a3bPy3u04SW8nR4=;
        b=idedR93H/LpKdQKpzmZ8m+ZLC235xU3PSvobuoR+S3uec2BUmzNWBakM8cAQ9rg6O/
         mCFvJ+A/md6sP2DQO5FEiRnU4No2j7fX8/MYa1F0F+6wTRflghluvzcIArC66xAKBFNe
         B+yl6g4ySNVtWlnBEG9DlEJQ2axvDXoAjN15sg2ff4WDGn6uI6/dt/FkhfdBbjPbEvIJ
         weC1IVwC+WWvZS2vCrmA66OJmTMFI9hhdEbCNZ5fwgNxukdeOsauNfH8OJPo8sRqb87K
         kCUu/5oVHUH1TXJfwAY6rChMSPs2kzSRWJsb+GDTuo09iGxmiTg7sSs/E4qG0QEuT4Ni
         990Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FnvOiTw9;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id z26si99978lfe.5.2020.07.22.23.46.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 23:46:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id 184so4149521wmb.0
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 23:46:28 -0700 (PDT)
X-Received: by 2002:a1c:7fd3:: with SMTP id a202mr2696127wmd.67.1595486787458;
        Wed, 22 Jul 2020 23:46:27 -0700 (PDT)
Received: from dell ([2.27.167.73])
        by smtp.gmail.com with ESMTPSA id l1sm2623660wrb.12.2020.07.22.23.46.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2020 23:46:26 -0700 (PDT)
Date: Thu, 23 Jul 2020 07:46:25 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rong Chen <rong.a.chen@intel.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] Re: Adding branches for testing
Message-ID: <20200723064625.GK3533@dell>
References: <202007180528.vD5KVnHi%lkp@intel.com>
 <20200722180319.GH3533@dell>
 <20200723035548.GA363815@ubuntu-n2-xlarge-x86>
 <20200723063243.GJ3533@dell>
 <19e886f4-f4de-2605-d2fe-b6009ce97aa0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <19e886f4-f4de-2605-d2fe-b6009ce97aa0@intel.com>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=FnvOiTw9;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::344
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
> On 7/23/20 2:32 PM, Lee Jones wrote:
> > On Wed, 22 Jul 2020, Nathan Chancellor wrote:
> >=20
> > > Hi Lee,
> > >=20
> > > On Wed, Jul 22, 2020 at 07:03:19PM +0100, Lee Jones wrote:
> > > > Good evening,
> > > >=20
> > > > Is it possible to obtain build-test results for successful builds?
> > > >=20
> > > > If so, what is the process for adding branches to your system?
> > > >=20
> > > > Thanks in advance.
> > > >=20
> > > > Kind regards,
> > > > Lee
> > > >=20
> > > I filed a pull request against their repository and I get email
> > > notifications whenever I push to a new branch on my repository:
> > >=20
> > > https://github.com/intel/lkp-tests/pull/64
> > Of course it's on GitHub! :)
> >=20
> > There was me thinking it was secret source.
> >=20
> > > Looks like there are a lot of trees to look over in case you want to
> > > customize it in some way, I am not sure of any documentation over it
> > > though:
> > Docs:
> >=20
> >    https://github.com/intel/lkp-tests
> >    https://github.com/intel/lkp-tests/wiki
> >=20
> > > https://github.com/intel/lkp-tests/tree/master/repo/linux
> > You've been a great help Nathan.  Thank you!
> >=20
>=20
> Hi Lee, Nathan,
>=20
> We have updated the config file for repo/linux/ljones-mfd: https://github=
.com/intel/lkp-tests/commit/deff2b285b141ac462b3a7091566ce2ea218c9f0

I was just doing that.  Thank you, you've saved me some time.

Would you also be kind enough to do the same for 'backlight' please?

Or would you like me to do that myself?

> and there is a introduce document for these items:
> https://github.com/intel/lkp-tests/wiki/Repo-Spec

Thanks.

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
clang-built-linux/20200723064625.GK3533%40dell.
