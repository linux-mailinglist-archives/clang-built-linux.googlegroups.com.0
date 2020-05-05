Return-Path: <clang-built-linux+bncBCSPV64IYUKBBZPLYX2QKGQEULCFWMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f64.google.com (mail-ed1-f64.google.com [209.85.208.64])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CAA1C58D3
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:19:18 +0200 (CEST)
Received: by mail-ed1-f64.google.com with SMTP id y66sf961566ede.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:19:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588688357; cv=pass;
        d=google.com; s=arc-20160816;
        b=LE0aOFPV8Fp0F0+6n7sPrc9JmrM8y85M9I7ny2fzpujp8ncNh1Pmx8jb9V9UfkfOKa
         sPqHfd/sDXnAdfTRpAwXI0ISGFWe8RQAxmNU763U7KBzScTSXQXDGcCuhriM1f8qNDXK
         RvdrzeiVTAV5XtR493cgvkQ7NAsOmeijw2BeH0svusDUs6rEKN/uzwQMsEqMbJgILeNm
         d7mg9e0keq5dMrT5QmqQ0RRW4eDp/HAXTpkLjLiZZdNxhLpf9L2LKabivI8zI3SQiPUp
         4no2oEMgWtN2zwlfUDmxJPGIR5Ev1/m2WGecCCURjGl5vsDGFAqPO6PbHALBh9gX4aap
         a5wA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=Q8azYPHt5/ENYpS06Vaa0My0wiy0WT8dp4VNZBzjdwU=;
        b=AhrFiF83SKB+0/3/rEHz41w78aYGc8nZFgwSGwI44qfCv6PtSO2B0G4v2sGX7BoTC1
         n2jNvLi04gaiB/XSWfCunD0DJ9jw1Txv57UIBSZgXgjJ424Idam2gPjcjffPniEpdFZd
         eEIFPXMPYhOwO91CtCn85RzG1/UeAxe0DdDk5syQibmPgMiz2vc8t1ukcKinfSRVQxEs
         Z3xpEIMMtmpEK0dT/86QC74tvchevzr9tWHUw5kSBkGozbGAelQSPOJ2t/OTO+GEEJuP
         FgobBHiT4rvpLraH/93dSbt68HRrR9QEy5mz7YwSu1e600qvHTT6u1cqT1RF/zK6tXlz
         fvcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=Ouq0b8PO;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q8azYPHt5/ENYpS06Vaa0My0wiy0WT8dp4VNZBzjdwU=;
        b=eCkcgIyINqB486vDn/I4k3e5AgNOWegKhvCcPwiG3rk6QcuX25Q+mYTr98ipNGZYJo
         cd30pzLCC6rUAyNz/kVDsHhgV5oorQgEibkhKQrn+TpHlUSAgfPCst6N3DmFiXFyGZdt
         DaUOeeHzNe+pw+aQbbFuz381PKg3ccTrl9lL9+w7gDImi2ErJkKgRnAu2622feLeFvtB
         VGOdkzgw/mhFsBsMGOZx6JAxYhfqoD42Nj82rthqjTIxuupe/g8o0avBDnT7TQlZKsCG
         Mhdk2wV6sUv8TIFcAJT8P/+Ht3Wa/S3b41TpWf+eYcwmnyrtgHObEHCMAvUFbOWlDu04
         MS/w==
X-Gm-Message-State: AGi0PuZz6Rbz8s2AFaqj3wVlkGGQsYO+8PrfugbIDhpJazkjPy5dky0R
	WwXpdeLRWenn5vkekZwuoQA=
X-Google-Smtp-Source: APiQypJRusv89heXi+3B1J9EbCqs5Y827Sy0njhbEMivMbD+HVM86somNNXexi/4HhFYA4L7OfY3KA==
X-Received: by 2002:aa7:dcd7:: with SMTP id w23mr2917728edu.300.1588688357860;
        Tue, 05 May 2020 07:19:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1a58:: with SMTP id bf24ls1336522edb.2.gmail; Tue,
 05 May 2020 07:19:17 -0700 (PDT)
X-Received: by 2002:a05:6402:2208:: with SMTP id cq8mr2888889edb.293.1588688357377;
        Tue, 05 May 2020 07:19:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588688357; cv=none;
        d=google.com; s=arc-20160816;
        b=gAzDKcXrLI39XUiuqRFYWAAFZc47esb4GurQg7WSfPmS8vqbPCLJlbZYYyzNv6p7vc
         etEvld50hW7+D4VgIUdp01d/waXPlbyYa2jo5XVS0Yz+Br8x5RQajFTIP7uXWq53008d
         3MYWyDxCYZhkbn8QrKn+5ULtzBYpuSt8Z/7uTwjc3NDaiHx7poOtSehszdjYVYp1soNo
         sou/IXCmouTmwvi75rIJV3rHJlmMuKb/30V/lU3Tzd4iw3XO5euCxCUOBFVoqcqVL3wv
         fxldnls2VkB0DmmI5gSaz1DzgAc0bGsPy6i5pMmqwbgdiEYgjhw5qINkLxaJ4p+ziVlh
         OF9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=R8fDfWX4P2yPJD6o/XlgPtCXLkbf9HDss4RsKImeIag=;
        b=NzCqpSgLXerSfvQii+8bJV9xwaQAUrJfRe6/63IsXY42SjtWShSNLKtT2GcRSB0KAa
         YN2WxJHpqK9HzAdYtlRZGAGIl4L177eDiFb08bCmKGG29A8YH/wg+xVncqzIZ9cWdRd3
         +Grurtf39QypinTAVCz17frRchjG+nXhyItB3fDOOwt4Sp75C5X/JpaBEYdHWYc+O6aF
         KwBbNszHnP15nwOJp3d9eT1pO8ybHKqtcew+tS3qNmCLe1MhRx8wMrHV/kA4c25IlbQi
         xQ23p3VB+kOq+bDIYzoAs1EzZJCuF56plZqa3RJlTqv5aJ5cUOGtBdOSNA2+wKA142uk
         hb5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=Ouq0b8PO;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id a3si132143edn.1.2020.05.05.07.19.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:19:17 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:54052)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1jVyPd-0002rZ-5d; Tue, 05 May 2020 15:19:09 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1jVyPc-0007DZ-9d; Tue, 05 May 2020 15:19:08 +0100
Date: Tue, 5 May 2020 15:19:08 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Huckleberry <nhuck15@gmail.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: use ARM unwinder for gcov
Message-ID: <20200505141908.GH1551@shell.armlinux.org.uk>
References: <20200505141218.684079-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200505141218.684079-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=Ouq0b8PO;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender)
 smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Tue, May 05, 2020 at 04:11:56PM +0200, Arnd Bergmann wrote:
> Using gcov on ARM fails when the frame pointer unwinder is used:
> 
> arm-linux-gnueabi-ld: kernel/softirq.o:(.ARM.exidx+0x120): undefined reference to `__aeabi_unwind_cpp_pr0'
> arm-linux-gnueabi-ld: init/main.o:(.ARM.exidx+0x98): undefined reference to `__aeabi_unwind_cpp_pr0'
> arm-linux-gnueabi-ld: init/version.o:(.ARM.exidx+0x0): undefined reference to `__aeabi_unwind_cpp_pr0'
> arm-linux-gnueabi-ld: init/do_mounts.o:(.ARM.exidx+0x28): undefined reference to `__aeabi_unwind_cpp_pr0'
> arm-linux-gnueabi-ld: init/do_mounts_initrd.o:(.ARM.exidx+0x0): undefined reference to `__aeabi_unwind_cpp_pr0'
> arm-linux-gnueabi-ld: init/initramfs.o:(.ARM.exidx+0x8): more undefined references to `__aeabi_unwind_cpp_pr0' follow
> 
> This is likely a bug in clang that should be fixed in the compiler.
> Forcing the use of the ARM unwinder in this configuration however
> works around the problem.

Or should the stub functions in arch/arm/kernel/unwind.c be moved out?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505141908.GH1551%40shell.armlinux.org.uk.
