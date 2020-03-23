Return-Path: <clang-built-linux+bncBCQMFSVRS4ORBDNO4PZQKGQEHNBR3MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4A818F8AC
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 16:34:39 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id 78sf11365433pfy.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 08:34:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584977678; cv=pass;
        d=google.com; s=arc-20160816;
        b=FVCGIto0JVQWbUKc2X+A8wY4GnVJw9Y9MrzAZTXovRBwgKUOFpHefS8l+ASCMwWALy
         mA1dwg4bH4aQRBCO3pyXfJ/CrEOid7R3TqjDIdqNLLghQ0S2z7x69j+OI43Ne5ZNP/Tp
         DSmqKOAQxaUgpuJKXeYshC0GoqjPA4fuWZwPvGnNRt9JjyFQ0hQJNF1SaZbNcdl/F96R
         vQfU1aGWDQ8qNTmxBg0IjdIQbmlqsPHyDSU1AWqa+BzbrANpexhjwQqdw9CZ4ZR39CBp
         5YmAYX4xzGjGbJWyje8ui3OQ1RAWOgiEjPRN8J7k76abP0W3L0etOs39NKumQVq42qgd
         EU9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xeH2MIG/VC2ad6XYEqTLdU0hnhwFuxb4ArOMuMzZKOQ=;
        b=uA1Z/ZlvvSKXGOjfTYHXMPVX23UfMyxcA+muYEOdqP3vSi37PSqQNuJ3Nlp7NDdLIm
         42AvYB18vq/5HoKL0wT+QEeejfYqOCem5AYA9oxgJgrfX4GYO4VAdb4yOB+i7l7I2qzA
         fArgGMXsSZeyLTdkl08uZBbfS2JPG8Vur0MvOPgIEO9me+n2txaSElRUTa+7tDwyJsX/
         Ecl/wqhIykvpP7sJjNIIAGJnwAk4OL502wdfuQeZmqeMu4t7Q1C4Q0H+L3ndUoCfu/fN
         AzUVfiFMUdeXLnU4yVv30yEWksBLDxM++x7QuYYjBJzawCjp3OWY5rC2iT6hX5lKqbTK
         xFnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ajtBK9vv;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xeH2MIG/VC2ad6XYEqTLdU0hnhwFuxb4ArOMuMzZKOQ=;
        b=GjmbsNfpYZYRdPJOFZEwnaqRsJmEJv0qOJYYasfMMW2Ulh4X8WAfsyPOUq1gDiZNEw
         v+v7m6wHCSAYzRq7oJg1HQcc6tJMyall6mWTp2yIO5sqpXfsL1Y+nBKJHF6uieyTWr9D
         WsHRNsI3DCeAsIhduqrIGc4CFSgShEsC/gb08q/FOOzUQG/pkxUgsaeXq0hzccCWiTVg
         W8mNSUqsC6H1gTX51QsGjJ1fYV3Jr7ztkC/wov51Ony5BqaUEjlwAI225m5EBPeibZIf
         /QPAzDNLBK2IuuCGbQdlNotcASrO9+b8WFsOpODIDg3NaUVSBhuq01P8jmkn+3DOcGx5
         iW6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xeH2MIG/VC2ad6XYEqTLdU0hnhwFuxb4ArOMuMzZKOQ=;
        b=gyQcWdS1jSwdcx/+9fdShEz7JUlBWN8pqWFqHlHCju9+AMYs+VBnBwtnMWMJSWxN8A
         ozMJXyhXj7RU4qEaXLrM67aQoR8jfnIKF+fUm8arZRh2S8HjKNQ3g6+XTiM8NhdlqWo9
         TDVsatjGeSbmcA54qAC+nNd3+CDlJicMN+Kb1hwQnnc/6SjlEKz971IitlLT0DEuON7/
         Bbr6B77+Z/VpoEVCHc+wa5zdM+FXKuCy97eLg11xp8+Zz3XUwUTQrW28+YSbHUDOZ8dZ
         5ai3jI4XwkcIGLSykstebjTVx84N/mv+dJd+cEkS3nJeZFWXivY9iJt9Uvy3+4SiJa95
         AZcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3dKryG5xqDaZqpM9uTJ4dXPrE9RCGZNr3MDflzTcc4GRuhIwUp
	pJUS1ftBJtxDQ629avUrFxY=
X-Google-Smtp-Source: ADFU+vtPqXF9AU+Iv3fuoXlC0kMwyVOXwlJM8rNpcU4m9dm3yxIJvJ7T4f4ihGzo/r3l7fd+4ngsxQ==
X-Received: by 2002:a17:90a:8908:: with SMTP id u8mr7456436pjn.66.1584977677826;
        Mon, 23 Mar 2020 08:34:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:34cb:: with SMTP id b194ls4688169pga.1.gmail; Mon, 23
 Mar 2020 08:34:37 -0700 (PDT)
X-Received: by 2002:a63:4a19:: with SMTP id x25mr22860488pga.167.1584977677301;
        Mon, 23 Mar 2020 08:34:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584977677; cv=none;
        d=google.com; s=arc-20160816;
        b=bSIKUrtzDxdK4efJNOnOEEzeyfe5AJWdNCvXHV+ClaL5WislrOYC17sByTaW1ohc4A
         2T/vNq6py/RKeCdn5QW67AzVqeLGV/xp7nLwPJ+urc6ViNWOyE8mdUrYAuzsogl0E3ap
         SzVg5tlxkeisQW6TIM2pAuhfAeDt+XcP0zHr+2WRLR2ovMYlklIqeToEkVdOzGJN6lT4
         5EjcOcWItd8QxKdr+my3yD6chUw5bJkqqDokam4I3bzlPTBPvCGqyScrRR60wRU0Xnk0
         5EsHCnIfA3nUPNVJqllAIkVPLCrOQoAbkBabSIiOxSDZpEOd8q1wZeMlmn9B/LgX0dmd
         I4Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lHA6NHdkB+Tv4kHa1G52eJOCYosea4sDAyyXOo4Po2E=;
        b=Dhr3DpH9ATytn+/W28SgS31Qt99FhZhyhtYUO4qWxehfoZseM8owhdi8LTPljmwYCR
         +Oeyj41Qs6HoJIbDWF0w73ocCxaff+hWcI0u1zZofYAbER6iqHEEDrZY4OH8/YHuHYll
         3q76fndsaEp04N8BEViIej4TTJx67eV/4ig2hA+WHcI7YQgNUgj2mYOD1SuwgVO+5HTP
         wK4pINQhLHI1X1eXO6j8rhMU+eabq/ge1eRaFd0DWpNrMz0q9NNRufvB+JspGqliC1aR
         jkIwPsHjzjj7RfnAlWUdJVGvzNbmVpxVYpYM+Ax2hVnWy6OKcUSLQmgP0b+BUTL9LYEV
         U9vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ajtBK9vv;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 19si297920pgb.2.2020.03.23.08.34.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 08:34:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [122.178.205.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3BD3420409;
	Mon, 23 Mar 2020 15:34:35 +0000 (UTC)
Date: Mon, 23 Mar 2020 21:04:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Mathias Nyman <mathias.nyman@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"linux-arm-msm@vger.kernel.org, Bjorn Andersson" <bjorn.andersson@linaro.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Christian Lamparter <chunkeey@googlemail.com>,
	John Stultz <john.stultz@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Andreas =?iso-8859-1?Q?B=F6hler?= <dev@aboehler.at>,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	Mathias Nyman <mathias.nyman@linux.intel.com>
Subject: Re: [PATCH v7 1/5] usb: hci: add hc_driver as argument for
 usb_hcd_pci_probe
Message-ID: <20200323153429.GR72691@vkoul-mobl>
References: <20200323101121.243906-2-vkoul@kernel.org>
 <202003232207.IGeWbiPn%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202003232207.IGeWbiPn%lkp@intel.com>
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ajtBK9vv;       spf=pass
 (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=vkoul@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 23-03-20, 22:49, kbuild test robot wrote:
> Hi Vinod,
> 
> I love your patch! Yet something to improve:

Thanks for the report.

> [auto build test ERROR on v5.6-rc7]
> [also build test ERROR on next-20200323]
> [cannot apply to usb/usb-testing]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Vinod-Koul/usb-xhci-Add-support-for-Renesas-USB-controllers/20200323-203447
> base:    16fbf79b0f83bc752cee8589279f1ebfe57b3b6e
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 006244152d6c7dd6a390ff89b236cc7801834b46)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from drivers/usb/host/uhci-hcd.c:847:
> >> drivers/usb/host/uhci-pci.c:297:36: error: passing 'const struct hc_driver *' to parameter of type 'struct hc_driver *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
>            return usb_hcd_pci_probe(dev, id, &uhci_driver);
>                                              ^~~~~~~~~~~~
>    include/linux/usb/hcd.h:483:27: note: passing argument to parameter 'driver' here
>                                 struct hc_driver *driver);

I need to drop the const qualifiers for uhci_driver, I have checked that
and will send v8 with this fix


-- 
~Vinod

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323153429.GR72691%40vkoul-mobl.
