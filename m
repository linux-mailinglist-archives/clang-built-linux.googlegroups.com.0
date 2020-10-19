Return-Path: <clang-built-linux+bncBCUO3AHUWUIRBTNXXD6AKGQEPVBBQ3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id AC47C2931B0
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 01:05:50 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id t11sf1443185ilm.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 16:05:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603148749; cv=pass;
        d=google.com; s=arc-20160816;
        b=uyFoqW1F/SHTzViOBv6ECHhPIQ89McAds8paao4jo0zkalH9QQUP9R0zEJwcGa7DAp
         nBxF3ycEjbS7YIGPd+oukldD5uASdD8RxGZOhNFut7VGF+gyYfCfueTzxgxTSOUbfZMo
         lO/KXSef2d0iFNT0XtGxcmFOvzl3oZRr0gS1El8VMlVKC6Nx7Aafs18IsheJJR6YtO0J
         BtkkCUgDhCdNj4tkJXpcwLnQtrd/l+lmFLekE096jj3u4yCMPwdWk2zS8Uji9kPnhd0V
         1YcjFFAgrffrrvbp5PuSBzuwlLRZEYXjPSVmcgY8Jm2pdYLtFISmKKgz5OAW9WFgmso5
         zrkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qvMkmwmh9vmm7L2Ws4xAJ3XP2+Za/eOZ2vabGbr45WE=;
        b=dapdnzCQbv5P3Er9dcmwlH4RAKelhOmpfTG0mVfnwR31KGUtelx3Bf+trD3AkbHrDR
         F7gEmXshhYVJyY4Yvv3ArQY14wUlZZRJJOGiXyrAVul3EzJFhwK7sHCi84kuLIXFtENK
         quwBkVKTAEy7N2aZK//+DWXXCfncxB3MtShP3+JXSBafAwoav4usP3bv+6kexXCoFaKa
         LY/CTTGvZBZ0Qbf+8dpKbV0QABehAQ/abwWR7uDEYyffM3zd/d///K2bUDSgV8w7b5Aw
         8zlGgg2lO4oyQDZmopO6+lpyqSWARSm2m/m8haA1OaYSo6mYIA1z+vmIO/+zPZUrsSJe
         twbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=R0THCPfe;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qvMkmwmh9vmm7L2Ws4xAJ3XP2+Za/eOZ2vabGbr45WE=;
        b=NEhhaGm01wo8ASB+ihKn5qxszmnpd8nXtPx4YEdWtTgzpgCwRtEQfJnO5+01pF8Gzk
         HOJpxv4vlWrtsWGSs4u/pXq8cLVdN2zxTuS93EMkgM1vdUCHEFm4dLI5fng3iGiDubqx
         /ogAY95fRmNzj7c/u7JxlLokZm2bENAxU6veJuINSrPQlBR12JWJf1lMkLvavkbBs1S6
         K9c6d574+y2cAlcKp8llRoLWkQRlk9byrnsmic6LHOgoMWpQKJbEWI8RvEZ3WUONRTi3
         /q0m/WDvE5JbRvSXDh9/go/8Bkn/fJ5GPoaBimo036bAdPfmNH4dco/5inu3uo7i8a+X
         nRow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qvMkmwmh9vmm7L2Ws4xAJ3XP2+Za/eOZ2vabGbr45WE=;
        b=VlyKxRzZtaxEtdNd3/Zmt76+agCchYFb+WcJEHUrvE77/uD6Byp+hFYN8MrsugWKOl
         HYQR604oeyeVjzXQOCxbpOeg0wy72Cqf5yepsgBpugQCYObkQQqJcvHFP7kzMRckTEBV
         TJ67fgwCyUiK/ua1JteQZyo7uJw6kpLFZgAp0B87L/q1Z9pocHmE9zyNRZZEeZJ3pZHU
         B7EUa84EBRwyZ06y+0uYrpBjfD7s+GswOxir+Sxv5c+WzNhHRSTRwIDsrzDNZDsvOmMy
         bMUKpLXTWa3Zk8Pjy5/tA6tLNl57zWukpThtUw1X4sMDxdorB2kh1iXXn0cHo47xP1j8
         5f7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337GMnuM9syH71TeHwsQbhI7pJd85TKSWHKCDcxdxXhuUwL2sps
	hI2z+RqXDnFnVlO3/eSQbTs=
X-Google-Smtp-Source: ABdhPJz/9nNJIPgYHEkMYYN0vfx27WBExEm/05vWdu/PpCPatEWxVJ7qotYxBFJrxXLFtqpGPY1R3A==
X-Received: by 2002:a5e:9e02:: with SMTP id i2mr60365ioq.154.1603148749505;
        Mon, 19 Oct 2020 16:05:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1805:: with SMTP id t5ls228204ioh.0.gmail; Mon, 19
 Oct 2020 16:05:49 -0700 (PDT)
X-Received: by 2002:a5e:9411:: with SMTP id q17mr37441ioj.157.1603148749127;
        Mon, 19 Oct 2020 16:05:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603148749; cv=none;
        d=google.com; s=arc-20160816;
        b=SCLc8yPbAf8OuMPOkGBZWozBHDi1sWHqitxcu/d1nf7CvoIE9uo0sasm8sdMVJrv/v
         9ljzP1Zy8AtsECYOiVyHXS88nFLQMpDmjyJeIhn0k0GpGVI5XCZ40wN5xSX6Gn/F70BW
         gfsk5Ja0ezpJNwDlVYUdIkMtN5G6LsCQL2ZOSMUQaBT4S6ER+LnMarcmP8lJwXEhmouS
         /3rvQtB6OiOzgFaB5io5GmN8FvTDWhIti15R0usBy9QizpK/IkgN05aQ4BP3wcnaioGR
         uyB2xqHD03qOmUyIzjHiRLpn6VAPbtXmC5HlplzR3Zk7CRbo5OrW4EisceqnhLvoT3Ux
         7MHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KZcwJitFojA7RhzeD/UU8gbzehCBdvf6g5ia0ZYCrq4=;
        b=ChN/k2fjGFY0pIFzWsbYp2tWjRes+hVb8O/uEbyIARL5VhFqNaMcYefovJEbGf4L8Q
         mXegZk6TDxtwe7C3sIn2uBJAZyrcQSMXiVQoIzpErP8vJzRUg8tmZWn21DQ6KTs76F8h
         ei1hu69T/46/e4/f66mzP1DfMa7aJ1KKIhf0wtweOil9fqPRJIbDKCbB41cX9r8f6cBl
         u5QtJQMFfuJNcfcUqcRHi/tU+bJ9w/veS4y7bHnDSKY0FbAK6LuL2kgZjRuogCQCgDfR
         R0gZnjt34C45XgD6H4nV2WAf7U0yFgrBvLvX/A5wy8iQtgJ/SlmMjGkazgwHSiHFuova
         RY8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=R0THCPfe;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id e1si3873ilm.0.2020.10.19.16.05.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 16:05:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id k21so36639ioa.9
        for <clang-built-linux@googlegroups.com>; Mon, 19 Oct 2020 16:05:49 -0700 (PDT)
X-Received: by 2002:a6b:5019:: with SMTP id e25mr44377iob.123.1603148748578;
        Mon, 19 Oct 2020 16:05:48 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net. [156.34.48.30])
        by smtp.gmail.com with ESMTPSA id u8sm7938ilm.36.2020.10.19.16.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 16:05:47 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94)
	(envelope-from <jgg@ziepe.ca>)
	id 1kUeDq-002hRf-LL; Mon, 19 Oct 2020 20:05:46 -0300
Date: Mon, 19 Oct 2020 20:05:46 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Tom Rix <trix@redhat.com>, LKML <linux-kernel@vger.kernel.org>,
	linux-edac@vger.kernel.org, linux-acpi@vger.kernel.org,
	linux-pm@vger.kernel.org, xen-devel@lists.xenproject.org,
	linux-block@vger.kernel.org,
	openipmi-developer@lists.sourceforge.net,
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-power@fi.rohmeurope.com, linux-gpio@vger.kernel.org,
	amd-gfx list <amd-gfx@lists.freedesktop.org>,
	dri-devel <dri-devel@lists.freedesktop.org>,
	nouveau@lists.freedesktop.org,
	virtualization@lists.linux-foundation.org,
	spice-devel@lists.freedesktop.org, linux-iio@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	industrypack-devel@lists.sourceforge.net,
	linux-media@vger.kernel.org, MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org, linux-mtd@lists.infradead.org,
	linux-can@vger.kernel.org,
	Network Development <netdev@vger.kernel.org>,
	intel-wired-lan@lists.osuosl.org, ath10k@lists.infradead.org,
	linux-wireless <linux-wireless@vger.kernel.org>,
	linux-stm32@st-md-mailman.stormreply.com, linux-nfc@lists.01.org,
	linux-nvdimm <linux-nvdimm@lists.01.org>, linux-pci@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	platform-driver-x86@vger.kernel.org, patches@opensource.cirrus.com,
	storagedev@microchip.com, devel@driverdev.osuosl.org,
	linux-serial@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-watchdog@vger.kernel.org, ocfs2-devel@oss.oracle.com,
	bpf <bpf@vger.kernel.org>, linux-integrity@vger.kernel.org,
	linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
	alsa-devel@alsa-project.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	George Burgess <gbiv@google.com>
Subject: Re: [RFC] treewide: cleanup unreachable breaks
Message-ID: <20201019230546.GH36674@ziepe.ca>
References: <20201017160928.12698-1-trix@redhat.com>
 <20201018054332.GB593954@kroah.com>
 <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=R0THCPfe;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::d44 as
 permitted sender) smtp.mailfrom=jgg@ziepe.ca
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

On Mon, Oct 19, 2020 at 12:42:15PM -0700, Nick Desaulniers wrote:
> On Sat, Oct 17, 2020 at 10:43 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > > From: Tom Rix <trix@redhat.com>
> > >
> > > This is a upcoming change to clean up a new warning treewide.
> > > I am wondering if the change could be one mega patch (see below) or
> > > normal patch per file about 100 patches or somewhere half way by collecting
> > > early acks.
> >
> > Please break it up into one-patch-per-subsystem, like normal, and get it
> > merged that way.
> >
> > Sending us a patch, without even a diffstat to review, isn't going to
> > get you very far...
> 
> Tom,
> If you're able to automate this cleanup, I suggest checking in a
> script that can be run on a directory.  Then for each subsystem you
> can say in your commit "I ran scripts/fix_whatever.py on this subdir."
>  Then others can help you drive the tree wide cleanup.  Then we can
> enable -Wunreachable-code-break either by default, or W=2 right now
> might be a good idea.

I remember using clang-modernize in the past to fix issues very
similar to this, if clang machinery can generate the warning, can't
something like clang-tidy directly generate the patch?

You can send me a patch for drivers/infiniband/* as well

Thanks,
Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201019230546.GH36674%40ziepe.ca.
