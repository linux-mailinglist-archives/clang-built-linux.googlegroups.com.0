Return-Path: <clang-built-linux+bncBCSPV64IYUKBBKGJV73QKGQEPCS6I7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f57.google.com (mail-wr1-f57.google.com [209.85.221.57])
	by mail.lfdr.de (Postfix) with ESMTPS id 800F11FFDA5
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 00:03:20 +0200 (CEST)
Received: by mail-wr1-f57.google.com with SMTP id t5sf3353789wro.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 15:03:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592517800; cv=pass;
        d=google.com; s=arc-20160816;
        b=L1Z+hI+IhwG+JC3U+72E+Yoixr4rhlQZX2WmfAjY+w9mlHHVawOevzx2MsSfY0Cvan
         r0InJyokdKdObbRng6qag5iWGX5RIOKdaQpcRo/jqaK5dcRNJwyub64DuU33UWW0k+Zx
         Yl3CPyrau2BNgvNOL1CC0PcSyqYe7OHWevWLy4FcYM+pOBwTXADJ7bwzNgEtF1LlIGDG
         EZjueuakIDBbArn4kmYpfDOEayN7qB+W8/fo+QyZKhAET+ysYq6QEgvBNOGDki86uQLq
         kJ5cVF1kB52/dqebOfZfqcCFk5ahZ2PAN0pcmo1Co2JiI6YoI1MkYRagTU8mZ+eqHk60
         kG8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=xx+66r3shNViRUE+tkw85JK2J4COAUr/xXqxxf+dtTc=;
        b=Kn0AgOCwnzZi5DxfRutV3bnhRdW6yxCj81FjC96hHbvrttRqy19xq7jM8Q2b8mjETS
         aKl1l3sfvqAs35SYfOnLi9tPfAYDhc2d/djd0ZHOM6cjpheHk1O46LIZUbP6S00Pf7td
         FSeiN0I7xNo2ATioTgrr8M/qJTJxzVWvRFKZ0ejB+8lmA40GyNug3HpBxNDZvgE0c7mf
         75e43wS3gibx/7UdZCtHSwjKYAsifSRJWSWXfYIrs9rczMCNER67yZWBnn9TdI9CBqEk
         h2rNkF7J+UfCE1rphFtY7kZPHcJKPclqE0BU5MyQxlRNVNYc0/zOKyMzMMRG6pS6d9Of
         T2Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=ncAx5x+1;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xx+66r3shNViRUE+tkw85JK2J4COAUr/xXqxxf+dtTc=;
        b=VQl8zK5ph09r7eTYTqy98qU1WHRMGfPbVx0Ktr3oY7meHR6RwMY9hQf1fTYphpioDQ
         y3yx/uBDcF2N0iraqZI+YepD/p5E3cAq+E5mELtRzMEKKCh3jxnYDpjCMJZBZb/Tt/LU
         wgYmtwzOePflBTQtypzhWIUJc7//zIsxkgwzGfu0qWJnPdxwbRzWplCdSQzl/MPvGSTE
         AuVb36NFwUqBdpV71IdXi3rtmWlbuGHhZV42yE1dYXmZOT4TzfkeS8mdXpWlqEibnezy
         NKlaHzDXShl8JDNVe7c0ABziaxdnk9HYri9AOb4AsS0NbmSwK7cHthgyHPOJU3bzAeKf
         NI0w==
X-Gm-Message-State: AOAM531O2FaRQzJNdHweBMPMGPaYvt3ykVY+l+fGDZaL0y1BWxu2ewRa
	0XtvV1iFdfr5GmhJ2f5pY5g=
X-Google-Smtp-Source: ABdhPJx2OJUm1N9W12cjv7OSq8oEW7EST/NjzyJckaJXg0cIHOEZQDwaynx8kuj8KUns8gpe7udrNQ==
X-Received: by 2002:adf:eacc:: with SMTP id o12mr593060wrn.139.1592517800221;
        Thu, 18 Jun 2020 15:03:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a7c9:: with SMTP id q192ls1920739wme.0.gmail; Thu, 18
 Jun 2020 15:03:19 -0700 (PDT)
X-Received: by 2002:a7b:c761:: with SMTP id x1mr435742wmk.90.1592517799775;
        Thu, 18 Jun 2020 15:03:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592517799; cv=none;
        d=google.com; s=arc-20160816;
        b=wwG1DaB1ZkHJNl5oF4RxgrpQ+2VehsWGJbY1hOD/QYhEV9wSmQgrzrNAEW8mfm2RRG
         xmsrJpT9WXGR7HpserGi+yNlfgACVr2tiJczQ+rmZv26+HFLFGmM1CIDReITp52kC6Ly
         7AzDcolCIgOkjLjQrjvPt2IXRHjcJnhSMpvDo5B+bikNohpGZefdTY2mVvOjr4qgH9qz
         T4CWfSiNRS8i0mbqsVzWyKpxoiCr0wSbZmF5Qg8S/AJWZ2yCbPlQPC1hEb9GUAIGNavH
         d+0jgRCrlvIqz8hd7Xrf3Z94x1vhVHVQGCMIjYEWirozzG+cvJhMLal/BL1mrk99Hi34
         S1MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=UYTpKINys5q7UogH0MrXFzt2ML29Bof5pSVpOvGOBQ8=;
        b=Oq/5fbuGlPHLfWa8maf6WGAa3S6wfgLKtN/ORaHibYZrApAn+Z/JCzG0Jk/ffxqtoV
         FjwQDMabRzYLDQHlLJeN0qa5bixvgM9WRYNlf5y6uooiL1B1rt1SDMu5T5dleK3XfBwi
         gtonyCVAGmhIRhZJefTSpw/NoymIGXMx3RNKrdYSkDBSbmDZKIar82XrqvyptBTv+Bt1
         ZRe/NJFdcUGSSbIq2QjLrq030exL8+Cz1+gtjAXOYixlI7Q/iltnkq8J3J8VPiZQVGUC
         yhCv+ov+s4VzVkRoRKbp9XE2flx2epzoT189l/JJKmfVPoReJn3L0//JsUJRsWXTBFjx
         gRaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=ncAx5x+1;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id q72si271377wme.1.2020.06.18.15.03.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2020 15:03:19 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:58806)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1jm2cs-0005cS-G5; Thu, 18 Jun 2020 23:03:14 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1jm2cq-00052r-7D; Thu, 18 Jun 2020 23:03:12 +0100
Date: Thu, 18 Jun 2020 23:03:12 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nathan Huckleberry <nhuck@google.com>, vincent.whitchurch@axis.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] Fix unwind_frame for clang-built kernels
Message-ID: <20200618220312.GK1551@shell.armlinux.org.uk>
References: <20200616223633.73971-1-nhuck@google.com>
 <CA+icZUW4Jv7589yCU55+C-P0=B0ztzvsOZ9TEMcTt4vKjFU1dA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUW4Jv7589yCU55+C-P0=B0ztzvsOZ9TEMcTt4vKjFU1dA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=ncAx5x+1;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
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

On Wed, Jun 17, 2020 at 06:23:48AM +0200, Sedat Dilek wrote:
> On Wed, Jun 17, 2020 at 12:36 AM 'Nathan Huckleberry' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > Since clang does not push pc and sp in function prologues, the current
> > implementation of unwind_frame does not work. By using the previous
> > frame's lr/fp instead of saved pc/sp we get valid unwinds on clang-built
> > kernels.
> >
> > The bounds check on next frame pointer must be changed as well since
> > there are 8 less bytes between frames.
> >
> > This fixes /proc/<pid>/stack.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/912
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> 
> Just a small nit.
> 
> Please label your patch with: "arm/stacktrace: ..." or "arm: stacktrace: ..."

Convention is to use "ARM: ..." for arch/arm.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618220312.GK1551%40shell.armlinux.org.uk.
