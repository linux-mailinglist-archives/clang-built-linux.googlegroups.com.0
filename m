Return-Path: <clang-built-linux+bncBDA7X7F2WUEBBXMXQX4QKGQEMQHOD3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A731231C8D
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 12:13:50 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id z6sf2659592ljc.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 03:13:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596017629; cv=pass;
        d=google.com; s=arc-20160816;
        b=WmmcCpokIOCC3TY6S+3QJ/VRDh9AKkmHo9rOHyVpjpQba+xvT6CFZoS1YwWBr3w3hi
         8l2j3dRj2qq1+gorWiyDOIRmEqVrq/j/1nvXsfzfadw1AqXSsOHsO4OoXLios0Xgia/K
         oQIFPyMOCcxlhQft83b/VVSQ2SO155Ty04oeQc0/BK4Rlgxm+933PpNPIcWGNNW0gxQ4
         fNoC8ioXmtvMStMxFzKkjXzSOhSB7VXcpF0syOff1JK9XzAPH1QSnJbbDssBMzt2aoGx
         VVnG8SB2tzeyP63DQt1XXCc2LJDjdbthcJXGiTRuQT0n4zZID6HSUz4IjkKZJ5zRHnlo
         6VkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=71ZRpCDcmDGlp1sHcgGVLe/q2mxLW5WpJcdcpP//4jg=;
        b=zaBzppYQ1Dtt4m2t0AJW8Wh4sezAW2nWXFI1PDfp0NERrk/Ag/zIUhW5hBumITlQc9
         5Pxzh1WQbYELFpjPHZZFG06RgCmuRVj2jedHhHpTzwXzKbN/ip3+HIdnd0ncGnXXAGPZ
         fLWZteeRFPbyphVNrh1PbRuruf41aeRsaoUikPXElJQkTuPLfycC7WUxeEg/8WinE648
         ledDEkZhb9nQc9p6PUzTp3X0MpsLOiY0MHT3lGXw1zUo1hMzkrqSTDKtb+NaL2LDm5Bt
         uEx55vqG5VFnYJ1yXAvYU+udWhcJ/XNLHe2PTIP2jqh0mX3nFwVZ5ry09V4uk/+D6i7m
         HuPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WXGNAqEa;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=71ZRpCDcmDGlp1sHcgGVLe/q2mxLW5WpJcdcpP//4jg=;
        b=NSek1Yxxdgzjy2JN5PvRQvZlcrjiBCyDzx9oVaIwax7s0NEUJaC7LgcCgfB4VYBg7h
         EARWIO8SMxZpliRr4j95iXZCPIncPB2sbaGkbELyMQcDtuLQnBnO0+r0XE3sUZsHlIbd
         Cwc7LTQkwcOYLR8ufrqWM1TCm/Rd9rOv+KOqXxjspf6YvzqVF/MfeGvZPparFfKi+bEE
         161PwaypiKt+OvO54qWMe4W48pxdIDCc4KpuumcL5N6WyeeiIsmEoctA7bmQlUOvR7Xc
         Pz2OhCSQWpD3lbVPK1WIEWn8oRFHiNZJ6dmSAYNn0MHPJ8FoIeWIUdXIC2/LhcHH2M6I
         BX2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=71ZRpCDcmDGlp1sHcgGVLe/q2mxLW5WpJcdcpP//4jg=;
        b=S5st5+XGNU11XW5iAN+0dX7mThdz152DlktGLCwv1itPn7Jk2oyAD2oYGc8Y7jOfm3
         4JJ6hidVMAGXSTzRNXn/7K6GCnVDB4sDHoc4WQ4HDJneHfDU/MzX/jpX4gA9HtsA42JP
         UaGjabk7yOEbP3hSiJysBnomMEuwKvonZ/tUndWZfhdkYHnahynrCc2b3mQLJfv/skYT
         /kWueykUMQaw5CeXCdClGnTSX80nojjvVDR3Llrq3JjyZcWQDEPsGmUsmS1B8DPsNUBO
         z2xDRcEXOiQV+MoefwWlg7e6nkdd6MSgUtRHIHBjxmqlcDFzAEv+HMnV73+4Ic57dYwP
         TEAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ndcnf7J6WM6ZEXgWjygoA2YaxOeCJkPGl1s2xH7GJpa5ODU9+
	EWHo1rpB8fDDhBkSmrTrLcM=
X-Google-Smtp-Source: ABdhPJxhhv5/if+2X9c33d8GLdj5pCB+qPvGZszGCmoykhYh6eVA5WROMsAbambJAYQNHFncuXNPxA==
X-Received: by 2002:a2e:9644:: with SMTP id z4mr14809713ljh.333.1596017629694;
        Wed, 29 Jul 2020 03:13:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1182:: with SMTP id w2ls275089ljo.2.gmail; Wed, 29
 Jul 2020 03:13:49 -0700 (PDT)
X-Received: by 2002:a2e:999a:: with SMTP id w26mr9670993lji.242.1596017629113;
        Wed, 29 Jul 2020 03:13:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596017629; cv=none;
        d=google.com; s=arc-20160816;
        b=ZO8JspZct8uptAQRvUoOYGB5EGng6IvQzPdrhb/RQJXwi1m7bg1zpWf2pN2MOlYLDr
         NsBQ2+6cNQpYadIB1Vk/hvv9Zo8x0ZteHexTrl6/HWK1Cy7X35HkmT4ygUGPYldkWjIQ
         FJW3AgIXZ0wxUKQSK7kjw3rC4UCBTXnZKjdSnD6jj882YaOjfmboY0HFSqqCA716roIh
         YFMMIjvD9hNxjjmNP1s0xff+jDRPBEm2nTq0xG7Qr8N6n2zpMW40hue5i2oZ7w+sokjo
         4igucfwDLcJkF2JB1CAsexbz7Kwtzb1BRn3/BX0QNadQrHzdW78elEdfCQmdKM6traNc
         NkEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=siT58MPt5BpfzeyFnUlE1tIcuaBu2dcyDRMbQqlOxU8=;
        b=CqmFY9jPNSIu+PbyVQm9C/Obv9lIe+BAx83rVRrPUrORP9GF7IRHEWuNbR3hJwyoPN
         3NGXlR88rk0kaEy8iYgHatRrlezMBP7rfNwCKYYma6IfrCk7bALOaqZIKErXqMDhyr/t
         PE66nJFBf0vlkSxVbqdIYq/ZPwjz+VG1nyKylNlG3r/DGCSylLhwvXXGJUrsxqy/VxiW
         uYSSEoE3eiArSmUhFV/5rh54w68qb2aGjJcc3AqIFtfscyqe4tQk2jGjbJaj6kqEgOen
         kskeVyavwROQAAcqQBaMV9hhdO2sNk2MLBbi1hnu3uCVne9VIb6rANFXQkvaH4HNfkxf
         NVoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WXGNAqEa;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id c27si103650ljn.3.2020.07.29.03.13.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 03:13:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id x5so2195639wmi.2
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jul 2020 03:13:49 -0700 (PDT)
X-Received: by 2002:a1c:7ecb:: with SMTP id z194mr7515075wmc.12.1596017628568;
        Wed, 29 Jul 2020 03:13:48 -0700 (PDT)
Received: from dell ([2.27.167.73])
        by smtp.gmail.com with ESMTPSA id j24sm4943226wrb.49.2020.07.29.03.13.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2020 03:13:47 -0700 (PDT)
Date: Wed, 29 Jul 2020 11:13:46 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rong Chen <rong.a.chen@intel.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] Re: Adding branches for testing
Message-ID: <20200729101346.GI2419169@dell>
References: <202007180528.vD5KVnHi%lkp@intel.com>
 <20200722180319.GH3533@dell>
 <20200723035548.GA363815@ubuntu-n2-xlarge-x86>
 <20200723063243.GJ3533@dell>
 <19e886f4-f4de-2605-d2fe-b6009ce97aa0@intel.com>
 <20200723064625.GK3533@dell>
 <440716db-2411-e4a6-6e6b-0f8d679e558b@intel.com>
 <20200723080844.GM3533@dell>
 <20200728092524.GF2419169@dell>
 <f31f204a-1663-fc9f-868d-34f2d3bf3057@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <f31f204a-1663-fc9f-868d-34f2d3bf3057@intel.com>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=WXGNAqEa;       spf=pass
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

On Wed, 29 Jul 2020, Rong Chen wrote:

>=20
>=20
> On 7/28/20 5:25 PM, Lee Jones wrote:
> > > > We have updated it: https://github.com/intel/lkp-tests/commit/c0286=
b0f24d04bf11f83e253df7e237a49858243
> > > Excellent.  You are a star, thank you.
> > >=20
> > > I have added one more repo:
> > >=20
> > >    https://github.com/intel/lkp-tests/pull/73
> > >=20
> > > Please see to it at your convenience.
> > Any idea why I am not receiving results for the following please?
> >=20
> >    https://github.com/intel/lkp-tests/blob/master/repo/linux/lee-linaro
> >=20
> > As far as I'm aware, LKP should be testing all branches.
> >=20
> > What am I missing?  Did I do something wrong in the config?
> >=20
>=20
> Hi Lee,
>=20
> It's a network problem, the bot can't clone the repo successfully,
> I'm downloading it but it still very slow.
>=20
> $ git clone https://git.linaro.org/people/lee.jones/linux.git lee-linaro
> Cloning into bare repository 'lee-linaro'...
> remote: Enumerating objects: 884266, done.
> remote: Counting objects: 100% (884266/884266), done.
> remote: Compressing objects: 100% (14993/14993), done.
> Receiving objects:=C2=A0=C2=A0 3% (99547/2967293), 42.67 MiB | 32.00 KiB/=
s

Thanks for looking into this.

I guess that this will only need to be done once, right?

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
clang-built-linux/20200729101346.GI2419169%40dell.
