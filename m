Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBT5BSWAAMGQEEAAW5EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 463CA2F9BC3
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 10:11:45 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id j11sf7029890pjw.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 01:11:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610961104; cv=pass;
        d=google.com; s=arc-20160816;
        b=JmNjk83fyw31P5mnC4ESNxtOEEwOqVJWgl9nSPqjA7C4TOlYj9SFjVcoAKvsokB0rk
         TfSzg1YIagLdMwl0WUyn9sXDKB1iQjFMyU/B0t/GEztDC+isrfMYMHh5gP+VlGXQKIHu
         t+LR27y4g1HGWJTbr1vk7A9SUSSgsyj8bd2+viVX5yMoktRHRz/jdvGSt0vCJM8Daxm3
         9eNVab3Mq9GqPbTR2j6onFW9rKyUpqCzs8gorDrenj9HeRUzAfqjyw65pPQfLiUQlazf
         oLnQN9682gPfZ3IdW7pGJV1clNJBVMSfijWtIexupjZt5M6mxvl2KdT9OOH4QKGRVRRB
         P+zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7TrlCdJtFvkfLtDZ00dXRb0lO648beZth7PKUOlaHsw=;
        b=Y0IhHwGB+/GvOhu3TM0v1czJgz/tmAFCWt75RrxVLBXHPUSc1r4cGx977KTj8l7hn/
         IwkjmexZoRxeAczuuB5Uz/7XMRiI9/gm1s9oPnoiTJZvzZo4ie5poRdqtw3pcxx545fZ
         MDxFWUbgGn0qN5ZuyBguDg1o+PMOIgYyJZsqknTP6aPeQaMMY77ok83Y2IO1vTgbYIEG
         iH7MEbauMT46PQi1C3QnbJgmBkTfMNZ5pgXWnvAqQUD1inPglM3OdHQymtwTi/BYLkiY
         obvFJ9ncf1c/ALIOTNnxIsRLc+VF00m0H7ZU4Zmxl1z0AswBHiRWhvpesdazlAzE6y6E
         h5uA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=VLoIyYjc;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7TrlCdJtFvkfLtDZ00dXRb0lO648beZth7PKUOlaHsw=;
        b=m69+Ra3dZla8KxOBPnfU0e/W9d3nT/CJOQaAFfn5tR06wy9FWkNFacpoxz/CL81vuD
         E09H4T5z8UgKXVi9VIo161+Ij7bOd7kA90diJHOi8d/NHV0q9unBsFsi0iAzaGGo4X0S
         JWJHqtJH60ub42Fc7WaGSq5VvnrElW4YkSaCrsFfSboggCY9xhPQh1aZ4wrR+tQ8jWeD
         lNZ891RLFHb5rKHjkzA4G5/ypYv8bzeaQpiBgUv8BgwrMyjoC3OX+Ot+zOoPiiYjPWoH
         AQNP+J1/Py/x1qcIS2vWgJupFT+niA5IlW9nEU41FwiXwUHTlxmwh31XZyOfvTSPLfPi
         7VDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7TrlCdJtFvkfLtDZ00dXRb0lO648beZth7PKUOlaHsw=;
        b=b5JRP+k6Xs+tJDuI1EbFRwoKugUTLyCfyyvRpkFDifP+6/JuWou1DefOZ20v0PrBnu
         lgtO4DFKch0Yu0u4jMtNkdhLaMsbQisvIA9surrLISwm1yfkEXzAtR12L0P51Pv4AJzD
         lnf4toWGx9k/vKzv07k49AXN6kYOZld+gZ7hF/fWVJt3+GJFlGaNpOLMGhYzQrri6VWW
         s2fCs3f3Hja7ffCuU6szfVbZrYdN8DKAZ/6oVPn4JfkN5wG+t1gJce5W+E0DOEwVzj0k
         57jruzQLOu4VteDj1aXQ9optTzzBD1OoDONswNp8XiWs3wrAQj8+eI6olmbjVj3UCVV/
         0RFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AyCRREjrhm2NPQRyUY81FcD+ryfu4Ejji1BFY2DoeTeWlFd6h
	Tw1JTHuEh4sMMvEWp648luc=
X-Google-Smtp-Source: ABdhPJwXkJyl/BdYDwI9LTNRppBCfh/6O7fO9Dt+aK12wn7DC8BFmCpT3+r77J1BfMw218k1x2Fqmg==
X-Received: by 2002:a65:608e:: with SMTP id t14mr25115080pgu.436.1610961103771;
        Mon, 18 Jan 2021 01:11:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab83:: with SMTP id f3ls7861008plr.9.gmail; Mon, 18
 Jan 2021 01:11:43 -0800 (PST)
X-Received: by 2002:a17:90a:b010:: with SMTP id x16mr25292686pjq.74.1610961103157;
        Mon, 18 Jan 2021 01:11:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610961103; cv=none;
        d=google.com; s=arc-20160816;
        b=pS2yCy0olSZx2cKcdN2lfcvUeBSmgGweFUZ6HiACex2FhEHUuTSNj+pvDBfA9zwETF
         J1QwhhEgwolx0XYINOmOIokFREErZZONQjytWOw8s79olhbwToYPxIrDgxlT5IQcxa4M
         xeOhVPjbxq51CByI78u5G26pPdsjH1FvpdUZLP+iPQnCx1lLBgJR8vUbt1aJ8jg+S/Cb
         8X71KEZZqPrUmDHpC5mOh6pgpdNDpcB6Ag67YZiFwYs96h7LMr/JE1wBdL4zJ1uRDWpm
         80dSWgI6OtuF6bLH7wxHJswBaPCLReLwxieQB0aRTQUuyoOcIXZDO2FTNjfa1Set2lq7
         S53A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xuCYDs7qOfu96FcmTvAw7JQHpHxjs/ZBXI2C6JeOpM8=;
        b=dk0I8b0q5Z00IoOfmEHHhHLdtNTTmr09j7WaNBgiNzpEbO/FAzAe1hRQF4uskAr82l
         huVCjJBa8etGhvv0UO6oHUSUgBgRAqiAYf/d/vT0MA0/uZy1fd+mWYlL1zDxPOHebbIN
         GeyDbn2gzhrv7dYegYOhWcOFuWM5hB5QFiOqRCoZ3vW1berOOvzAVcv4kx/3aOOxCvkp
         04YI54umM8ktwj4HqphP8nTXSQvbMJlODWjMDOT9sPpiF+ij7CCtVwafZaPV1Uzov1Bn
         oesMuhlmXuZNFk8w/r0EpdcV2pS5dTEPDtratZPORUxGViL9wVjMpXb93NwCXq5052QI
         zecA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=VLoIyYjc;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id jz6si1193617pjb.1.2021.01.18.01.11.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jan 2021 01:11:43 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 147AE22285;
	Mon, 18 Jan 2021 09:11:41 +0000 (UTC)
Date: Mon, 18 Jan 2021 10:11:40 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Roberto Sassu <roberto.sassu@huawei.com>
Cc: kernel test robot <lkp@intel.com>,
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Mimi Zohar <zohar@linux.ibm.com>,
	Sasha Levin <alexander.levin@microsoft.com>,
	Silviu Vlasceanu <Silviu.Vlasceanu@huawei.com>
Subject: Re: [linux-stable-rc:linux-4.19.y 9753/9999] WARNING:
 vmlinux.o(.text+0x2f872e): Section mismatch in reference from the function
 ima_calc_boot_aggregate_tfm() to the function .init.text:ima_pcrread()
Message-ID: <YAVQzME7h5CAyUgW@kroah.com>
References: <202101170926.7gVGRoMm-lkp@intel.com>
 <a4867445057a4b8997c4470899dc310b@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a4867445057a4b8997c4470899dc310b@huawei.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=VLoIyYjc;       spf=pass
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

On Mon, Jan 18, 2021 at 09:01:58AM +0000, Roberto Sassu wrote:
> > From: kernel test robot [mailto:lkp@intel.com]
> > Sent: Sunday, January 17, 2021 2:53 AM
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-
> > rc.git linux-4.19.y
> > head:   e864f43593ccf9180c61738abdf1c1dde091367d
> > commit: fcb067cb457e2326c6d759e346f5f5dfef351d50 [9753/9999] ima: Call
> > ima_calc_boot_aggregate() in ima_eventdigest_init()
> > config: x86_64-randconfig-a015-20210117 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> > bfd75bdf3fd62d4f5e7028d4122f9ffa517f2a09)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-
> > tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-
> > rc.git/commit/?id=fcb067cb457e2326c6d759e346f5f5dfef351d50
> >         git remote add linux-stable-rc
> > https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
> >         git fetch --no-tags linux-stable-rc linux-4.19.y
> >         git checkout fcb067cb457e2326c6d759e346f5f5dfef351d50
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> > ARCH=x86_64
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> 
> Please include commit 8b8c704d913b.

Now applied, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAVQzME7h5CAyUgW%40kroah.com.
