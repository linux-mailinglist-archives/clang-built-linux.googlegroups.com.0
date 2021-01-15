Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBW6CQWAAMGQE54CK6XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9362D2F7579
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 10:33:16 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id 44sf870558otc.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 01:33:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610703195; cv=pass;
        d=google.com; s=arc-20160816;
        b=JEAXW8Rl++OJfOtkv8ajuGx0mtLT6nRCXcFZwgXT9S+gIR/e8oMa3HjRipyYtISTBW
         2Q2ger4P6a6RHByjzO/2ACNG65rjhi2Nx5uROc3VPYCsDfhL+FuYonQVGSdNbBUk8Qcj
         Iod3yhpv8JktRtEntG/QqQyyTBEo2/QBvCjIbi0bY363i2ZpPV1seWQWifyrnB536asw
         X4HFwoUm1ZFOF4oTkUwQBBn++osjB3dYuqNX6vQk4OAB0hWw4Y8LBxtDYr0DtHoMVpbI
         DkbdYekmub+lRBI8yDvfMVyaXqGE+LC9DrfdEeFB7Vh9NwE9mgYr1N+0V3aCkVd5rk5V
         Udcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=eRnEr58B94q47LegoQaK6WJvWEJEV0ciK+2ALkUXP48=;
        b=EKMrnZa7IXQjZ4k+CiAdSftr+4gtslxHGbAodyIdpqxkSAZJfPy03yr7ZaMS5sUXuC
         lBFfK4P7qumnJMJ5JTWdgUsp67q9S9FO4dbtdXNVQb6Lx25giY9gDA8WfQUbtDnFcl5q
         KR5dUEDJPdHdj7VZiWLWkxpCm9AbgS2SY1KAXmU1xHJ0GNmaTPDzaPCy++DmjdaKft4d
         B6OHvOECJ3KhQEhFMO2l2KBa6+EyVu2O2qV4b6jBxQaSc/8AjhX5cdkwOagIDsHQD2IY
         XZt3uP1WgVyIFTXYvYV0S7emk6v8vquG5DOd6SQl6Bpc3LwSCNBqJifMGobwEV7HKqk9
         265g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=a28NGhTA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eRnEr58B94q47LegoQaK6WJvWEJEV0ciK+2ALkUXP48=;
        b=akx4/zIgAHHpBl97g7Q0/RN1DJUd546EMHG4DH+hBDNvj4fNn1alzq/Yuh5zD8mplS
         oYl+svI3gYyhUYJGuUIfkKe6u+ovhpm6Pn5mEg/0DV5LhI/WGCS4MC78JnPNkRsiC5BA
         0solzF0IYmvcEsGn2e9Fw0eK9f9VfV5TwzhujWS6fqrzPfBBL/Meo1H5+w43o6uoPelY
         yJPMXK0p4IvkdlY0oL4VWB7jDvHSdcCZ6JbNOLO3RDY4BIvg/MIlLAG3KH4LO0RQSXe9
         s+oybAybm16FiIlnZ1P1iyaw2n4ALZVF4mZyw4uMWGfeLhBtbeK6YvuSKeyoFXbwx/Ok
         5Npg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eRnEr58B94q47LegoQaK6WJvWEJEV0ciK+2ALkUXP48=;
        b=FqGvjCTA+3Wjz4QpNbBNOKb7UE9fCkeZC+RV+fMm4ImvJayPFxcMEZoKOwgrc3YYm7
         jFbW75OXXPD+BWkX8qUwG7JjtMOG+BLOmSopBLRpxoqFcYxHTdeVQ2nfmY5dDoFZsTen
         CKNEB6vSxq+vR8vGReGBNVbdwqWg9B0cipGb3CH452YZ6tDzaEQBJB8oq8HQnwnIYCcA
         w5KOpmplxBROS+7iyFPRg1Z1uZhlHHgc4EmjDAm6Pc8/nktYSRoY3Giw6k3dHzY3dMWV
         sm4GRotEDrDT92Fan4pwKA7t8P8xoq1jGDA6Z7S/RHiPlqthYi93Ay5Hjv0+NGGJe1ZJ
         jDPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531U7r0G/y+roF75esZ+XlzmsoCfceiLduMLNUYpoF+mZDp+1oLv
	KuIrzG9+A+eEFuZulwFN9ZU=
X-Google-Smtp-Source: ABdhPJwAhQXuvqgVbfPNkEp+/f/BSGe+QGMOkj4/dBRIhvHPeN/e+W5gfy3y+o6P2Y12F7e4DxeL+w==
X-Received: by 2002:a05:6830:22f9:: with SMTP id t25mr7689323otc.14.1610703195526;
        Fri, 15 Jan 2021 01:33:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:a97:: with SMTP id q23ls2031044oij.1.gmail; Fri, 15
 Jan 2021 01:33:15 -0800 (PST)
X-Received: by 2002:aca:5786:: with SMTP id l128mr5147199oib.145.1610703195126;
        Fri, 15 Jan 2021 01:33:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610703195; cv=none;
        d=google.com; s=arc-20160816;
        b=tHrsLb3J+s7LpZyLBaB8yKscDFFUPZbZoWCQ+eozOzJ95lRnB52Yxrb1NbA+tvNgOb
         /KJBr322vSFHO7Q0ujkxjIqDaX/lYNDGqw2TTXB6ZN5beLEx44dk19nvtwE2eiG3OeLf
         ioBN3UJnTUlvpLqDIhuMWZtxrdur3DPHWPWxmsS9ud7R0h3fg+oOwc8YJfvjhs2zDJpQ
         qOC+CyKLyfqqpEV9bNNgtdWF5bmadHU9L0lrqVQD3j2JFCYthNrOAGAiGFESeRkvidV6
         CxpM2fGbETwo2MbXUTFWIIBn+4lsWYAFd1HHmvc0fNiDJesYbtJdRoUm6F4hW8D9VaCg
         rJAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tpLtmmukjEE/icVdzwt6n9rD8lmIujMdnBNd3/ZLDnk=;
        b=UOQx5PrF9u/MKxpL2iw7EfZwkAyeXTY+ZrQu2RrZeVFhuZU13r+FDkkf9362LL7+RR
         wewIYG1HzbLgPSawK5YsK4gd+rQS2QCM4x0zS1OUQ9GF7E219I05rmq8oHF6XZXKu+Xu
         YFlsUZQ3mWzMF2gryQFeD28SEhvK/XXPizXCHZwlPi97uO7+/2Jg6KHDJULpoNKrIwl4
         fhEeCd6bz5wXGNjQUYMTSGivjHOx3oEBrG651XpSZCnPkJ/jUeJbmIXHO+kWIW9dbu7x
         TNKiKQcG3r4WGF6b+4oEORwLQfEWO7TPq0frxcNNu5nB9A2gu049cwQFJE6/JMEEmhZe
         Dv6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=a28NGhTA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r27si505680oth.2.2021.01.15.01.33.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 01:33:14 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B2D3723436;
	Fri, 15 Jan 2021 09:33:13 +0000 (UTC)
Date: Fri, 15 Jan 2021 10:33:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sasha Levin <sashal@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	"# 3.4.x" <stable@vger.kernel.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Borislav Petkov <bp@suse.de>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Alistair Delva <adelva@google.com>
Subject: Re: 78762b0e79bc for linux-5.4.y
Message-ID: <YAFhV8w2Ynl8oYBz@kroah.com>
References: <CAKwvOd=F_wWLxhnV3J8jx1L3SXPd8NFYyOKzAh7rL0iRb_aNyA@mail.gmail.com>
 <20210113175107.GT4035784@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210113175107.GT4035784@sasha-vm>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=a28NGhTA;       spf=pass
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

On Wed, Jan 13, 2021 at 12:51:07PM -0500, Sasha Levin wrote:
> On Mon, Jan 11, 2021 at 03:41:37PM -0800, Nick Desaulniers wrote:
> > Please consider applying the following patch for LLVM_IAS=1 support
> > for Android's i386 cuttlefish virtual device:
> > commit 78762b0e79bc ("x86/asm/32: Add ENDs to some functions and
> > relabel with SYM_CODE_*")
> > which first landed in v5.5-rc1.
> > 
> > There was a small conflict in arch/x86/xen/xen-asm_32.S due to the
> > order of backports that was trivial to resolve.  You can see the list
> > of commits to it in linux-5.7.y:
> > https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/log/arch/x86/xen/xen-asm_32.S?h=linux-5.7.y
> > as arch/x86/xen/xen-asm_32.S was removed in
> > commit a13f2ef168cb ("x86/xen: remove 32-bit Xen PV guest support") in v5.9-rc1.
> 
> Queued up, thanks!

You stripped out the "commit XXX upstream" line from the patch :(

I've fixed that up now.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAFhV8w2Ynl8oYBz%40kroah.com.
