Return-Path: <clang-built-linux+bncBCU77JVZ7MCBBKUKROAQMGQEOSUUHGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0184E3154F1
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 18:23:55 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id m16sf11545008lfg.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 09:23:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612891434; cv=pass;
        d=google.com; s=arc-20160816;
        b=XftKcMNdT4yMWlCX/KqssiyZ8wTYqvP/8R+4/sYEJhD5HhQF5wlEnSs40r/tnJGjF7
         PraZIHSpCj4ry9UBzeUbmpZQE9mM4afUZPiRlCgn+ugruLT0nmYjmBKQwqhlVslJXvHa
         udm2S4lx2QafenHO3kLpGZABdsYYprBx+eokNe1IuH1aiaCCGWfI7Tx8BTab1Vtx9zz+
         uaxHLQMH+L5j6mKcOzdgMBmUdsv0XFvABFD0Q+z8Fn3SzTYFkLmWEnEpt8h2IZMV/Cqb
         FYPx7iBkDjWT14/8p+npszKI6+tvVILA4GKydiaQ0dJGTeYv+d5LnNyEZ5SplRi5Haks
         dhTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=wnY1IvsVEG1SM39u97gsTNSwUFZzDxKj2Va5Ihu00zg=;
        b=e/8Y28gfj7ut5fSCQwSLfp7XklUvN9zz6SVB5m4MK2wV8G8R8gxLiCKV7M8xmF/DuR
         iR/7tfrtJroTECXVb5/RwQjDGqC8QHY7i6NY5H2OD9mXbUorLQrnYKzBmX/HZU+i1UoW
         YDEMwN6vuHHiXSV4ZcMk5b3xsliftVuri/FamEh6li9mis/48CrCW70Zr8yWNmwoogmX
         ZERwJh6Ha6y9JAwHSCb8oPCwkOczBcO+Wql5+ANdtu2iFZkICxo6k1cG+HUlBo7UE+hK
         H8p75DcMBq5zg0aWxWPmCezb+VHUi/R47Ur/S4xqCdaHxU8t9ElN8fTxChdBKwWa3p+s
         jKSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YW1BXSdP;
       spf=pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=olteanv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wnY1IvsVEG1SM39u97gsTNSwUFZzDxKj2Va5Ihu00zg=;
        b=V+q11a6gCcvPimhWgYbucEktUDjGTl27pGD9nvLQB27zBzKaeanNuyDN3RSogLHSM+
         1Ey1m3pD/90QL1bMLy4w3Z/9XWQBVUGrGm7aOINUpZCiEfr4N3+hxNV4cMFlb5ZJv+CL
         jyLv40Ns5VdyFCQqEZzoxFSPwUOl/cTD0tglaKqawDds3VduG0aGkeqZ0CY+IrxOMuWI
         difsvXkbn5j4t9zl9U3P2+xEiRfrQsIDsFnEZPj8cF5aBnvbd+667pTuILDn8pcqfkZS
         IEQTvRaopVtN9fh6ysC+V/4Me//cTZeXc3q5Hj+fU1AfrtSSmr2tCjXaouMEd/5EonnT
         /vng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wnY1IvsVEG1SM39u97gsTNSwUFZzDxKj2Va5Ihu00zg=;
        b=fbqgtW3I9+jsx0DAiJ0Yy1zUC9mr13OpBsB+oOs2UtEzmpBLLsrJguUu4oMWtLasjh
         ABUyw/nPACrVyxI5/gNhTPHcxUhM9rZLwZdkKKjxLBdPxoWa940UHv34up9OEcyE5OyB
         aBaPXblO+TEviUFnOXPadkaayHynoLiyPB0QjUj9yUzaMB2irmP91gqjaskGMR2GQPky
         Zf+Kcu3TxkA1pTJebgMuEOx7DhDNIiGua+jb27qdmIDBkI4tyZzSWwECESI7UgJMuG18
         aw19809BuNc/uGVOVj6flPfXlieA3bmjRBGsFPV4t+vITfEoDdo5BZDd+tZvokMdur5F
         Ap3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wnY1IvsVEG1SM39u97gsTNSwUFZzDxKj2Va5Ihu00zg=;
        b=C8XHW1hPEYe1tDvFRCAnqqEmldpFhx3NqgYj3U6mcm/MZkc6OYqYtO+aLi5NmL8EsV
         97pUD2h1n6ktcp/cDV9wOavgdogCGBgZtMHv+0IyRzDTs+4qKKHQPvyxkK4NgWyCraVB
         uT1EHKbF04NaCiR1n/XIoGTtMaUYkSKTgUHC03FTGFvX4j+WHhyqMMwmSi5cnFv1j9ut
         vYji0/Xk12g31yNa++aDccysfQrgAQH/D1Ba05VNIateFcgO2lrJbXAuWibpP5oqR6/j
         662DbsqBMO90jO1e19UD49XqdUxofDUdPNBjViKbRxaccauoji1sx1PTf85RpOq0U2kb
         f/Cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531o2N0bGSUI2uE8CvJvtQzUeve6p9JEjxJ5gn0bpQ/uSMe6IjRR
	2lUQUMeUhMZzFmpaYEh3n84=
X-Google-Smtp-Source: ABdhPJyr8iOCqzmZcbsJbUb+vF08S0000qNLItXcuzm0b/mPQiOJodIg7qBJS/clp3aLqWkyPxTRMA==
X-Received: by 2002:a05:651c:31c:: with SMTP id a28mr14600860ljp.119.1612891434574;
        Tue, 09 Feb 2021 09:23:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5748:: with SMTP id r8ls3801001ljd.8.gmail; Tue, 09 Feb
 2021 09:23:53 -0800 (PST)
X-Received: by 2002:a2e:3507:: with SMTP id z7mr14457044ljz.32.1612891433675;
        Tue, 09 Feb 2021 09:23:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612891433; cv=none;
        d=google.com; s=arc-20160816;
        b=fB4GVEd+CJsHoicJHYaro3ACGEIXyJBgdCBAQrhYMcDTdsf7TBVcb4v9N20m7GW90c
         /Vk5nf/7YFtGh5N2dJnAdrqBHfLB7BzaN04Qq3RRiG0ckrHXlRvmKGe7w+VCrwAv7qdz
         BlErpWiEfDRZRUq+WMPNPwLvS6VRDf9NrFlC06pY4es/5lHjimPUKvH7Twq/Y3sIQO3J
         vAb2NXm9938JMEpr1Q9Erp+6iHzPXosWXgmbSQ8jGAvc0O0FdCVdzJ8yLU/bhBG56frJ
         eCa54Z5YLwlH7W5LAqNpFAE4SZHPzCOfxBsEeD9qLMSEqZ+ZilUtQ7B4J1jGYK3MtV5t
         PLlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fK8oEiCpaigib7LB0udlJczFBXRNeR3GDTUC3nFVlXE=;
        b=ayquInkyw0F8ArEQQgGsDy8vaonchtgITW6qmgdJHKFzrxRqLvqUE05J9ylaPkFjBL
         2lBwfwXYMbVyV4CJTGuRsGnD9j+6rrfqyKqSn7lrV4Y85HmX6VRiYnWtW/u2q3uUol8O
         qLLsnfPSOj9SKWjzrfvnlOIKhWEEQ7h3daUC94SwdBmQ0aBi5OOXC95V/MGM+abN9sDS
         wkw7/W1YvJ9dQxK7lRK0oAZmdkGYGR3mBL1qg41QisRb7Jc+exuuLTHzsCRDY5cZMQKh
         UoKaUff4LO44Yul5szE5ZBC7nRAxfIUsJBOW+THAmBgENbHApRg0/5ewEnhwK4roDWi9
         iDIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YW1BXSdP;
       spf=pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=olteanv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id b4si485416lfp.11.2021.02.09.09.23.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 09:23:53 -0800 (PST)
Received-SPF: pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Received: by mail-ed1-x52f.google.com with SMTP id y18so24786064edw.13
        for <clang-built-linux@googlegroups.com>; Tue, 09 Feb 2021 09:23:53 -0800 (PST)
X-Received: by 2002:a05:6402:b86:: with SMTP id cf6mr19240192edb.269.1612891433484;
        Tue, 09 Feb 2021 09:23:53 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
        by smtp.gmail.com with ESMTPSA id w24sm10877030ejn.36.2021.02.09.09.23.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Feb 2021 09:23:52 -0800 (PST)
Date: Tue, 9 Feb 2021 19:23:51 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: George McCollister <george.mccollister@gmail.com>
Cc: Souptick Joarder <jrdr.linux@gmail.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Jakub Kicinski <kuba@kernel.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: Re: [linux-next:master 3824/6048]
 drivers/net/dsa/xrs700x/xrs700x_i2c.c:127:34: warning: unused variable
 'xrs700x_i2c_dt_ids'
Message-ID: <20210209172351.ovvf6nhhagbiwzih@skbuf>
References: <202102070252.HkjUQntk-lkp@intel.com>
 <CAFqt6zZm7rAZ=eqJWoWNojT-s+pmdnYL7MbbCPBE89fk6Q6szA@mail.gmail.com>
 <CAFSKS=MMCJySR3w0RfwY4uWi35VEGpLZHF2HDzRiHAP35iapNg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAFSKS=MMCJySR3w0RfwY4uWi35VEGpLZHF2HDzRiHAP35iapNg@mail.gmail.com>
X-Original-Sender: OlteanV@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YW1BXSdP;       spf=pass
 (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::52f as
 permitted sender) smtp.mailfrom=olteanv@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Feb 09, 2021 at 11:18:12AM -0600, George McCollister wrote:
> On Tue, Feb 9, 2021 at 10:33 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
> > I think, this can defined under #ifdef CONFIG_OF.
> 
> Was this robot reporting this warning for other DSA drivers? A lot of
> them appear to use of_device_id in the same manner (unless I'm missing
> something). Do we need to do something DSA wide to deal with this?

Probably not DSA-wide since we still have drivers that probe on platform
data and not OF (dsa_loop), but individual drivers should have "depends
on OF" in Kconfig as far as I can tell.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210209172351.ovvf6nhhagbiwzih%40skbuf.
