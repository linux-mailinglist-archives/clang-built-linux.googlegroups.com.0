Return-Path: <clang-built-linux+bncBCQMFSVRS4ORBTN74PZQKGQEYSVRECQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DEC18F961
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 17:11:58 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id t193sf5352358vkb.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 09:11:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584979917; cv=pass;
        d=google.com; s=arc-20160816;
        b=oPRgUsW1TqVSRG1VyvYaiBvxawrb1KAEZNitYss6pY95TvlP9fthCv1mYUkJaZkZJn
         KjsrNQwBC6PvCmKHsmr5mSFx+KNo7q5WvWMEQoq61C4XEevZr/7PSxR8qOxGAn3Qot5i
         2r5HT72HNOwpC3VqgMhHdaqKqhuQV6Zxvuqk4SeIQHPVHVCjnC3DakalLxRGLcLNFsZ3
         wm/DqE7C3AfFecDKpGLdVh1ljC2oFoCTGUvqP+J7ffnTGvgCvDc/zz4R4hWPzTDHi3+3
         cD9lEPTPl0D5GdVjj6Pt+3WfR1kLjcciGnDuU/f+ujn2urRJQRwfmrgGDSP9TFEpjVfC
         HFQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KwSJVFH2Lam1kxiQQO+71KkF8CtW/VpjaaJgdK/x5hg=;
        b=YG9S8XOcE+o3rXKhksTelS56Et9ZZ9QSRetpC6RBD7dzI9AfFs9Z9awlq1aVFs7wyE
         FnBlFnhd6dh0wv9V7OwMXvBUklHuddLzamYtKg8zU+ijiX40WNEh44nh12/zJdUL8qjV
         sADJisCEvkhg88j6KYMnDWgAw/dj8zbzLYp9uFj2+RfP2jwcVdrqNb/XoA43V+4Bmest
         pG0+pf95CT4Cno/bxubTYmZ7paVdvU42DdzJrt7QQGGkTeog3G/5z1I/jlOTlBANcQsM
         aqO/6p7aCQ2fVwLC9/TJqKOqZjn9KZkQ42D/lnC29ZnytmUsUHlM2q1EKg9GZY6KhcZH
         /VqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=U2C9OHrk;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KwSJVFH2Lam1kxiQQO+71KkF8CtW/VpjaaJgdK/x5hg=;
        b=Jx8mPWGeLHNZ7y2iTK0zlZi8s2KsqFqAIVAXULeUz0oxM3FveyxaHnQXSRy+vTDX7d
         EFcXNItkYQA2L8ZTqAjSUAWortNyH1sHdGcpSvEWj3W4dH+XmdEirgQK6742p3pltg/K
         lu7k2SiYNxk7zeVAAlysoN0yG1ipKYCeTMIVHR3UpzOXuf8FVFlWupQp8EIi32U9aK3s
         ZowOqQDXxp3ZZfI1H57wCbU1ogpjNLy71KQ5tT8fTeOo/WInxpfG5n/tuxBLlTCuQiSL
         MfsvHT4jY9qQ+YkQKqf87XjlXHk3Uy3SVwhbab996TqPMZpY3u8/152mj8skCFpecGZB
         1Qxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KwSJVFH2Lam1kxiQQO+71KkF8CtW/VpjaaJgdK/x5hg=;
        b=MBHur8va6IaM+MTA5iVSiaWgwgNRghW8pdlA4olJ0btOyTAmY5RI3qTthPaGQTeZYl
         p3sRioDmB3uiFJuDB65GFxQ397drXp+OIDYRR7EE60zuoeIFE9a4uL9u7XS2mQlhDxmf
         8LRvXgu1EpzHV5V6izO/CENDQxxI8riigP4y5R104IdBjMb82aColC4sDPCYg8POVFei
         Ir8tipR2kreJ/bFTxc+jtyLpMcHIIHxMPVfa3RmEGHH3hF0uyOEJ4H0FE1iRWGyY0yKQ
         H2jkshLi1V0EE7o1NoHuHgkd9L2kWS62rxc2T4+VikKXDnxoAn3qmwpG1mEVwix8C4yC
         B3WQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ19dozbeWuVOMHIOXPAyKXzmlUzfGzZceS+YZWo2xX49eWD2M+1
	kOkVApTTOPmNRDchVLXNhPk=
X-Google-Smtp-Source: ADFU+vtiJkdLueeW+x1VtRaD5m5GGuNusOBH87gqaaJm3/vbW+ktJQWo4AH0A1iCE95XoRbhnNQa7Q==
X-Received: by 2002:ab0:20a:: with SMTP id 10mr14055252uas.19.1584979917533;
        Mon, 23 Mar 2020 09:11:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9acd:: with SMTP id c196ls184445vke.6.gmail; Mon, 23 Mar
 2020 09:11:57 -0700 (PDT)
X-Received: by 2002:a1f:bf51:: with SMTP id p78mr14978788vkf.47.1584979917149;
        Mon, 23 Mar 2020 09:11:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584979917; cv=none;
        d=google.com; s=arc-20160816;
        b=oSvhLjd5OzR4ZKAG8VR+4GXNLX0IPiVWtCdZKmXD0QqwpZ6zH5d5UipcZfaR6aFUMD
         /PNIgn86wknAZjuY6G+vM+rMVKc8Uo9IqRDMbd1/xP0RJvTcJPcBnmpu3Hi6U2Ov/uSh
         /7O/oZjIscRYstXLvhYrVHD3rp7+X9M4Y6/gsqNC93zXVS9UclbeXKbi3ZOXZiBq2MAD
         1hDBrz7Nk1TDixT250Cap86vi5AURUeag8S23zeP3FkjVrd6bSW70CdrIDzCQf0DOd4d
         fKr3N1kWTYhL4Fa1GpyrZoqUA+/A6CkXp8LF/jn5/2fCBPNI0lmYaTMzXIHn/MvPo6xg
         tdvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Sd3q2Cs860/FW7FwDMFiJL8nhqfChAjkMUj760gzAN4=;
        b=EvIQ3PlF3acqmddTURilqznKaAYG1zVjV2YTsYUjkBKOhxeXAp38wnWyRZ8ZTv9BBz
         tGDs6fpuyq+NNROi07KJsrqEawJ77wzDdV1yFmqcupByEs5sQxXNkLusfDMGYp9PZTqj
         d07oaGKRVFv4oSNF5SP20YoMpUCke2HA2/Azp6lgN1VHG/7LiYVl35r/qchAmzzW9R79
         gSeGm2JSush4Ll4CpV7sW82YbdxoNluHNRKpLhM+LrUDmkIRkej05BG4Kt2heEqNaSYW
         W26XP376rVTdxQN8nFoGHnKrrEWVGdgmN38PvLgBaXDEUozeNuPN8iCceuATl7a4uwcE
         F0UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=U2C9OHrk;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c9si834215vsq.2.2020.03.23.09.11.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 09:11:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [122.178.205.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 22E7D20714;
	Mon, 23 Mar 2020 16:11:54 +0000 (UTC)
Date: Mon, 23 Mar 2020 21:41:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Mathias Nyman <mathias.nyman@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"linux-arm-msm@vger.kernel.org, Bjorn Andersson" <bjorn.andersson@linaro.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Christian Lamparter <chunkeey@googlemail.com>,
	John Stultz <john.stultz@linaro.org>,
	Andreas =?iso-8859-1?Q?B=F6hler?= <dev@aboehler.at>,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	Mathias Nyman <mathias.nyman@linux.intel.com>
Subject: Re: [PATCH v7 1/5] usb: hci: add hc_driver as argument for
 usb_hcd_pci_probe
Message-ID: <20200323161151.GT72691@vkoul-mobl>
References: <20200323153429.GR72691@vkoul-mobl>
 <Pine.LNX.4.44L0.2003231147190.24254-100000@netrider.rowland.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.44L0.2003231147190.24254-100000@netrider.rowland.org>
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=U2C9OHrk;       spf=pass
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

On 23-03-20, 11:48, Alan Stern wrote:
> On Mon, 23 Mar 2020, Vinod Koul wrote:
> 
> > On 23-03-20, 22:49, kbuild test robot wrote:
> > > Hi Vinod,
> > > 
> > > I love your patch! Yet something to improve:
> > 
> > Thanks for the report.
> > 
> > > [auto build test ERROR on v5.6-rc7]
> > > [also build test ERROR on next-20200323]
> > > [cannot apply to usb/usb-testing]
> > > [if your patch is applied to the wrong git tree, please drop us a note to help
> > > improve the system. BTW, we also suggest to use '--base' option to specify the
> > > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> > > 
> > > url:    https://github.com/0day-ci/linux/commits/Vinod-Koul/usb-xhci-Add-support-for-Renesas-USB-controllers/20200323-203447
> > > base:    16fbf79b0f83bc752cee8589279f1ebfe57b3b6e
> > > config: x86_64-defconfig (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 006244152d6c7dd6a390ff89b236cc7801834b46)
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # save the attached .config to linux build tree
> > >         COMPILER=clang make.cross ARCH=x86_64 
> > > 
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > > 
> > > All errors (new ones prefixed by >>):
> > > 
> > >    In file included from drivers/usb/host/uhci-hcd.c:847:
> > > >> drivers/usb/host/uhci-pci.c:297:36: error: passing 'const struct hc_driver *' to parameter of type 'struct hc_driver *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
> > >            return usb_hcd_pci_probe(dev, id, &uhci_driver);
> > >                                              ^~~~~~~~~~~~
> > >    include/linux/usb/hcd.h:483:27: note: passing argument to parameter 'driver' here
> > >                                 struct hc_driver *driver);
> > 
> > I need to drop the const qualifiers for uhci_driver, I have checked that
> > and will send v8 with this fix
> 
> No, don't remove the qualifier for uhci_driver.  Instead, change 
> usb_hcd_pci_probe(): make driver a pointer to const.

Thanks that is indeed a better idea.

Will send v8 shortly

-- 
~Vinod

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323161151.GT72691%40vkoul-mobl.
