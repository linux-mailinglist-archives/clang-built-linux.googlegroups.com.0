Return-Path: <clang-built-linux+bncBD6LRVPZ6YGRBX5U4PZQKGQEPS26WZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6779818F8EC
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 16:48:49 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id p25sf9725368pli.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 08:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O9DwG23j+ymNdNeUl3KaFUCArpl2YE64/+JaVhnD7SQ=;
        b=MCVWPQdORrAZ0x7k1Es3HUS0xErDUjOr0F97kb4gahhdFkbM4Sfa/sFz1beh7SSpo8
         DbpZSYR2RYXH1R1C0micjQPSb1uEfJeCld1rFXCSF2XvPOACDInVpIp9Ht3Pj+4dwBZo
         AHRQhRkGR7Cj/8xj44XEUokGLk3S/E0gfxJLCQoHnvoabi76+62zvn/H9mv3C464xyJS
         cvK7hn+Hz0+BhEtT3ljgjddDirYffxOMknbZEUR5NqDPlFfkNQBU+Q47xKnxg9n2D5Se
         ek7URhUno2jPnnsIBnrXlNBkdyY67zKOSNwQ2RxJ5M4VG5Dqxfamr4+TM8ClI9V5NmUB
         I3UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O9DwG23j+ymNdNeUl3KaFUCArpl2YE64/+JaVhnD7SQ=;
        b=hmxqMqZUbDNwTPGPNkNVj9zl0dAYXGQCz2rPuGoIgfbH7O+ueZsLe9vZvQ05VnMmdY
         lmxdS5JsnNFN3MSAVVNjDLWJiBXQGdHrcP5nFIUV7V1BF9rdrFiCb1w3WZIOllVq8eKS
         83UhUh5MT/D1LLhm7kxk0544GsQ2QUqFHpxJewxZX+d4tNIk/0ux6kESzCIgf/D4JQWb
         Uh5ePP0p5p7hYNaHucSxPhN2uFS+OVlQZW6pzMN/Cua/vJE8HSwmns3Ej5ffhUfZQ3dH
         BeAyA35omKR9P4jxRgPORIzqI3jIe7FvrTEI2TfvmEPb2JJ+BA9/6VD94Y0wgx5sjVqh
         7XEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0rMh5frwE19btmyLXUhSJsLOKVycF6g9w6pPCOrjXKh9T2NX/e
	Gx17sLb4hJgQpkWLPz/+bvw=
X-Google-Smtp-Source: ADFU+vvmPpgsAAcmEHEh6gceJXq+4lGH++jeFwSgCUk3is8pMQmX2NwznyyLnlXH900jQtZR11FRng==
X-Received: by 2002:a17:902:a407:: with SMTP id p7mr15118976plq.257.1584978528100;
        Mon, 23 Mar 2020 08:48:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c8e:: with SMTP id t14ls4819248plo.9.gmail; Mon, 23
 Mar 2020 08:48:47 -0700 (PDT)
X-Received: by 2002:a17:902:8d93:: with SMTP id v19mr22527336plo.327.1584978527503;
        Mon, 23 Mar 2020 08:48:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584978527; cv=none;
        d=google.com; s=arc-20160816;
        b=ccbS4sAtahSq3+UJ8FlEk1cVTu7bJjJS/Ai7lKVJT9V1NhqxYe+CUVYwSxseBBx2db
         uQOh4Y7fLzChQP7CEYZNv+VlvDbXBKHfB0IxaMhq9at+hQEoY/stZC3DOJovApQmIk4H
         n2F15BKxAHyMzLR2d6uf8RiClVIPY2iW0eUB0RAiwwSgmoZbhN9fosSq5yPrHOzxv5Ld
         +fmpa40CYXNMQ5yupBvy5aV7rHKc5Bz/xxslCrB7RhfeIwqWkjpAJviisolUBoRYAptn
         OvcHUPajKThFBJ5SFixGd9B7j0B7HVgeMzfkH8EKyJbP3lWg/8pBStyVSQiNfiHynJKZ
         vj4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=O9DwG23j+ymNdNeUl3KaFUCArpl2YE64/+JaVhnD7SQ=;
        b=qrraZ5e0Jzcez3YhgZmDrhdaTA2MvEzyO6U31C+qdKCLc4hdlxPYhfVReEQWi00d+Q
         /ryUKHTosRA3jaa5rXb3XqfrwNvCuL3ewnY7ug9Wy5uBHda8pH/p8B7UUx+fZeptzaD2
         7XeEPytDwFSDLvOI2srSTIrifFkQ4wn7KV6UjItkOfqG4JLd40SC4lOo6aMwdbO+yhB7
         JMQMuxGPMn/9lA+H4XnNtCoQ6DTUamHCcKW20Xor+qXnSIGLliq8Mjfv+TAIpNVgL/IB
         8IFxH1Xc2+qKZaNsdc3poV/Sts9PzA8t1a5O5a2+LN717i5zHbugs79/v/xpWe7qNbIC
         hgqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of stern+5e7153fc@rowland.harvard.edu designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5e7153fc@rowland.harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by gmr-mx.google.com with SMTP id y1si380851pjv.2.2020.03.23.08.48.46
        for <clang-built-linux@googlegroups.com>;
        Mon, 23 Mar 2020 08:48:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5e7153fc@rowland.harvard.edu designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 27447 invoked by uid 500); 23 Mar 2020 11:48:45 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 23 Mar 2020 11:48:45 -0400
Date: Mon, 23 Mar 2020 11:48:45 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@netrider.rowland.org
To: Vinod Koul <vkoul@kernel.org>
cc: kbuild test robot <lkp@intel.com>,  <kbuild-all@lists.01.org>, 
     <clang-built-linux@googlegroups.com>, 
    Mathias Nyman <mathias.nyman@intel.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    "linux-arm-msm@vger.kernel.org, Bjorn Andersson" <bjorn.andersson@linaro.org>, 
    Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
    Christian Lamparter <chunkeey@googlemail.com>, 
    John Stultz <john.stultz@linaro.org>, 
    Andreas =?iso-8859-1?Q?B=F6hler?= <dev@aboehler.at>, 
     <linux-usb@vger.kernel.org>,  <linux-kernel@vger.kernel.org>, 
    Mathias Nyman <mathias.nyman@linux.intel.com>
Subject: Re: [PATCH v7 1/5] usb: hci: add hc_driver as argument for
 usb_hcd_pci_probe
In-Reply-To: <20200323153429.GR72691@vkoul-mobl>
Message-ID: <Pine.LNX.4.44L0.2003231147190.24254-100000@netrider.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of stern+5e7153fc@rowland.harvard.edu designates
 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5e7153fc@rowland.harvard.edu
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

On Mon, 23 Mar 2020, Vinod Koul wrote:

> On 23-03-20, 22:49, kbuild test robot wrote:
> > Hi Vinod,
> > 
> > I love your patch! Yet something to improve:
> 
> Thanks for the report.
> 
> > [auto build test ERROR on v5.6-rc7]
> > [also build test ERROR on next-20200323]
> > [cannot apply to usb/usb-testing]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> > 
> > url:    https://github.com/0day-ci/linux/commits/Vinod-Koul/usb-xhci-Add-support-for-Renesas-USB-controllers/20200323-203447
> > base:    16fbf79b0f83bc752cee8589279f1ebfe57b3b6e
> > config: x86_64-defconfig (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 006244152d6c7dd6a390ff89b236cc7801834b46)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         COMPILER=clang make.cross ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> > 
> >    In file included from drivers/usb/host/uhci-hcd.c:847:
> > >> drivers/usb/host/uhci-pci.c:297:36: error: passing 'const struct hc_driver *' to parameter of type 'struct hc_driver *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
> >            return usb_hcd_pci_probe(dev, id, &uhci_driver);
> >                                              ^~~~~~~~~~~~
> >    include/linux/usb/hcd.h:483:27: note: passing argument to parameter 'driver' here
> >                                 struct hc_driver *driver);
> 
> I need to drop the const qualifiers for uhci_driver, I have checked that
> and will send v8 with this fix

No, don't remove the qualifier for uhci_driver.  Instead, change 
usb_hcd_pci_probe(): make driver a pointer to const.

Alan Stern

