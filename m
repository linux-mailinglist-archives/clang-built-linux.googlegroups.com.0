Return-Path: <clang-built-linux+bncBCSPV64IYUKBBSXYYL2AKGQERUXV7EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f62.google.com (mail-wr1-f62.google.com [209.85.221.62])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F81C1A49E9
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 20:34:51 +0200 (CEST)
Received: by mail-wr1-f62.google.com with SMTP id n7sf1726197wru.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 11:34:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586543691; cv=pass;
        d=google.com; s=arc-20160816;
        b=ugZX9XyD+URtXwgVOnaLUSta1VsbmM0/WGU17xYtF18aK4S/Asc+ZKLFaD6QcVSneo
         PFBH/X8eu6exNIu6oeVDInsGx0bgM+YQF04r9TPsKA8OhdRMwTwgddsiHK6V3qVK9vU3
         AEmzQ9ljkl5GGk1gGlzG96KESUYwM1pcZuH1wQcRTPlmesi3EJnwQZlcRnVcg0m0qXxM
         JLQW2NE/orX0u20CoYXwXBJILkYYgyum2eYUYVTP+7QErdC19De/dQVk60KRH2DLrY0K
         9QiQkWfAldCZ0VwY499l/g0wK077KRRshWO2RHKhr3qIgbDIGTpyMchsNEsBpABxpNjw
         uQCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=J0onaUwEVhl5EnBeT9LSFmjeVNMw2kf0P6ZcTFpdGzY=;
        b=WnTgxTzOGQDYiIx/Q9M36mdq5kC4SyC/DdXzGC7JMoWEG8l6XIpUwQn3cWiAWHSIm/
         1PQSVh9uy7zawHpbPPRAnc8gkzObTA/6qfL7O+nNLNbCoc5sTmQSNuGpxz2ubo13IcZ1
         9YaSfWvNgzeNGcf0eefnbmQ92fmTjfrxC/rjtCJXZ+KagKJ/x5SSqgg3J0PU2jdLNt+O
         5ELjd2RV8G0FhrvwYsobMjrCi74RXlquF6FTZMEoojC7taaEEz2QXHK+TNOwqCD5j9mQ
         ehjhIoulKAE7f8beFXTALy+xxtA+FueEwOicGLe9tfjtAc5yBbVoui1axQmnDQupU8WW
         Xv0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=TKMLGyc4;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J0onaUwEVhl5EnBeT9LSFmjeVNMw2kf0P6ZcTFpdGzY=;
        b=TJdMK1PqfWgH8gXpSszaHCoD2FHgRlRmiCi/6IOMSitzmOuCvjoGT+dMjhzz3OfxDC
         0xzgVrW2dAz19JkT+VeQswHEA/AVTleN1w+PQT1AVxpuh64YS6SsMOL7oO1iFBMl4Edy
         nOKdk3efK95yhIUcCjzJQOZki2h8jetLWB7LFGbu/8HsW/WctcE8Zj3XTcwz5YeF5g7v
         0FPGTUp/4kZInF2P7lAHAJphYt/2FefA+zX3bGhaIbBwcTcR4uJkzPvvaCi8IKX+8g5Z
         ATEV9SisB9lDn12J8ZYe29aq5VoCoSA5TpyM/JBtnBy7zbTzduBVqog4iC8tasednEG9
         73AA==
X-Gm-Message-State: AGi0PuZRngPlP3q2OaiRjkoo4h5x9hZZxywlHNmpY/eL9fALuTZxda+U
	FVp7rgrHBU6HdSvL/AZte90=
X-Google-Smtp-Source: APiQypJI2tyQmdQCRlGer0lyyydKB2asChfQj2n/J4zBwew7F0lFVwwq2xE0GA4mSiM/pZMNioJ+Dg==
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr6167012wml.120.1586543690820;
        Fri, 10 Apr 2020 11:34:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f2cf:: with SMTP id d15ls11391819wrp.8.gmail; Fri, 10
 Apr 2020 11:34:50 -0700 (PDT)
X-Received: by 2002:adf:db0a:: with SMTP id s10mr5880037wri.361.1586543690342;
        Fri, 10 Apr 2020 11:34:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586543690; cv=none;
        d=google.com; s=arc-20160816;
        b=VmzPl9TKnhDg0HzmcpDtuoZ43jnzOsdT5h1tW93Fx8tlvuqJ7qSwVYQCzxgnkYEfuq
         Xvy2qT9dHkMGZ6W9eInHtiS8S99wpAMxCeR0DY5/hhpvpk7i0WnJ2gkaGKDP+dW27FUh
         6bbw3NM3Id6C2oKzw+bEepeh1Cb5Lrw5q39KC0uoCTI2BECs4uENtldQT09nKdMNG6bk
         SyIoGJFfyCphvKUIOrgJXizXtQ1aqRLES42cNqsYrWDfLYwayc/1ltdxR+6aGr4Ljkih
         VX6drEowj/D+FRV6094snGT076NiZV6hdlFpBli+B7DCv4YHyz5Q9Sb3jUOZWUbGo+/6
         zBGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=iE3hzL/9X7rG7H3ZLH0Kx2JNDMI6UfSi0bHUIshctfk=;
        b=oaT6WsWTHijtTTvRj2PswV9fgf9zxjikBgXwh1lSja/4ZAgDNyTug2YhCKliqBvXSg
         n3D95RFm/1qVHcadcYFj9C9owhNyt1fFNS0ua7IYHwwiFdCnBv0I7L8cLseYh/SBKoDh
         31Pbe4HGalPUgAB05/sTjUYjscWByfnUgqsISaYIYNFaFw4TnRkTjKpQIVECeBRIKajV
         l50df5Ev+nuv0R3uxesHvI4uaNl56sMb+h9BJT4f3KoJcqNQJAFr2oWMkILw4yo4OSOX
         /LBIRW8mjBexhsioFCI8Am8jfqcUwBUHh84CRqLe5q0EtSteOM2cJtcpIqCw2MiQRpKm
         g1VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=TKMLGyc4;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id v12si135816wrp.5.2020.04.10.11.34.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Apr 2020 11:34:50 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:48304)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1jMyU0-0002yv-1a; Fri, 10 Apr 2020 19:34:28 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1jMyTs-0004Fo-Dw; Fri, 10 Apr 2020 19:34:20 +0100
Date: Fri, 10 Apr 2020 19:34:20 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Jian Cai <caij2003@gmail.com>, Linus Walleij <linus.walleij@linaro.org>,
	Peter.Smith@arm.com, stefan@agner.ch,
	David Howells <dhowells@redhat.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	manojgupta@google.com,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	clang-built-linux@googlegroups.com, ilie.halip@gmail.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	samitolvanen@google.com,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>, jiancai@google.com,
	Doug Anderson <armlinux@m.disordat.com>,
	Dan Williams <dan.j.williams@intel.com>,
	linux-arm-kernel@lists.infradead.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ndesaulniers@google.com, linux-kernel@vger.kernel.org,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200410183420.GE25745@shell.armlinux.org.uk>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <20200410165948.GD448831@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200410165948.GD448831@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=TKMLGyc4;
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

On Fri, Apr 10, 2020 at 06:59:48PM +0200, Andrew Lunn wrote:
> On Thu, Apr 09, 2020 at 04:27:26PM -0700, Jian Cai wrote:
> > iwmmxt.S contains XScale instructions
> 
> Dumb question....
> 
> Are these Xscale instructions? My understanding is that they are an
> instruction set of their own, implementing something similar to IA-32
> MMX. 
> 
> Would it be more accurate to say CLANG does not support the iwmmxt
> instruction set?

Yes, because the XScale core on its own (otherwise known as 80200)
doesn't support iWMMXT.

It's worth pointing out that the iWMMXT instruction set uses the
co-processor #1 instruction space as defined by the ARMv5 ARM ARM,
which is also the FPA (floating point accelerator) instruction
space - which is the FP instruction set prior to VFP.

The LDFP and similar instructions that binutils decodes the opcodes
as are FPA instructions, and the LDC2 instructions are their "generic
co-processor" versions where there's no FPA instruction that matches
the op-code.

I'll also point out that the reason the iWMMXT code has never been
ported to Thumb2 is because there are no equivalents for the
co-processor instructions in the Thumb2 instruction set defined in
ARMv5.  Hence why the file has a .arm.  So, the fact the file hasn't
changed for a long time and hasn't been updated with "improvements"
such as Thumb2 kernels is because that's completely irrelevent to
the ISA.

It is an example of code that has become stable and mature, and
requires no maintanence with GNU toolchains.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200410183420.GE25745%40shell.armlinux.org.uk.
