Return-Path: <clang-built-linux+bncBCSPV64IYUKBBKP6SP7AKGQE5P6DLCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-f192.google.com (mail-lj1-f192.google.com [209.85.208.192])
	by mail.lfdr.de (Postfix) with ESMTPS id DA99E2C866D
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 15:18:17 +0100 (CET)
Received: by mail-lj1-f192.google.com with SMTP id o13sf6956880ljp.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 06:18:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606745897; cv=pass;
        d=google.com; s=arc-20160816;
        b=sJOlUozhKwszwzsSuudvVwk5iEOJShO8+6fDN3nj99koOMyaxuE1HJ+IqBihuOTowZ
         rIHCRK+tftYO333XyL4VF0xevp3jpg+W/ke9Vws5YqpygVN7XAXkKEviDPaNGSOwK5gB
         Xdj1rptPd/fhhPRxG7z4BDUHzqgOBrQqld5w71DBSTF4mM/rgy9f+o4E41mBNkXRsOvP
         DuvYWviA/tbFDlmPNMdVcb+tasAYvYQy4VuTgwEtO09uIxdA8X1eizqasyDMezDlGeTl
         pmUrDx6lxcgFcQaGwHPbCZxplS3DDDTUMuvaneenUGgiWFk7PT+7YXS0UeZNZMO4z4gX
         8mzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=4TnYcwPNXoT+Ip3nGoZ/dSDucls/6MDvcHrqqV0AGBE=;
        b=0/G4uPJwuPBhe9EpPXYWU16sVU4kAa4PFuXnYXYSVba8RSCHhqPCK8DzZQMUbgykxS
         nn44rRBrIBZRFxf6ePVGoqhEPxwfBXV0rH+uwhqTMk4OdLdKWDwoUkb5h/0hJjcaIehL
         BH8XUYRKlQofATqOKZJgWho5a1fgzNf8MGuYx074el1niV6Rq0QsP5mDr87MsVxjyB8s
         61vl6pmdKge9gGn2i+9LepSoMYCipA/wLVTZQNn8Nl5mfg9xOGfcJ9QSF8vdYCqUoP/R
         Rn73EEUhk9w0hZmRvm/i58RC7xIqvUxuoCirxHunoi4iOpTZECZlhCjq9FVO++AUeCk4
         y8zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=xnZMQ0V1;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4TnYcwPNXoT+Ip3nGoZ/dSDucls/6MDvcHrqqV0AGBE=;
        b=ZAMUM02OvrQE/P04gtjK2+fsfHVQiOz2yfIabieN2slAAnpsM8KGLeFqWutr4O35ma
         gKChCh0TiVAaEwfsWSy1lBFv6ES60Z3xI8foRz+u5oqGCiGF/etzjNjDhdNq+IJSq8oV
         u956KW6lWRHA4Af29UPjzT+aZbZLCsUb/n70nQSq5rIPL+ZLM0OCVfQfzlvtO9rj0AA/
         KnvPJ/fJhwy/Os9DZORw85ntubPTWfSUN9SpVNjK8qOzO70unfII2HrsLyF/Yt2/Jwcf
         xZiA0eVB4g3Cklft9lAPzYuyoBI+oB5SvP1Bu0Jl2ZgtGq9TGg2Zkt0RVpyZxP3OL4u/
         FFiA==
X-Gm-Message-State: AOAM530ZItsK9vDYKN7N8aBZCHldQ5BCp3f0P6AJD48QqKFCXljEF0rU
	mOmDE4VqbqcOzJaS5zubGME=
X-Google-Smtp-Source: ABdhPJxJG7jHfZT3thTwpjb8q1LB3ZfJl9meKVkncnH4t1qoj2WtyRg2SJobXGYgMkd6TVQShrP1Gw==
X-Received: by 2002:a2e:580d:: with SMTP id m13mr10307689ljb.141.1606745897370;
        Mon, 30 Nov 2020 06:18:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ccc2:: with SMTP id c185ls3440803lfg.3.gmail; Mon, 30
 Nov 2020 06:18:16 -0800 (PST)
X-Received: by 2002:ac2:46cd:: with SMTP id p13mr9529065lfo.517.1606745896359;
        Mon, 30 Nov 2020 06:18:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606745896; cv=none;
        d=google.com; s=arc-20160816;
        b=MlO5Ba0Tl8PeE9AKZ/4faA24aR/F8gb0lfAchCQat0jaNdG76oPoFgcu17A43kGLQ7
         x5zVXh60wdY+nRzhJ4V49oRxDRUs47cOVcusJjdEp7xw0tGQZZ1UB5/266MeIkPxWA8R
         ZNNuLE8GKolnyH/A22hXFK4nXO63/dkHMy7MlWDrKDB9q14nqvFKOl8srAW+iKPZISwd
         ETnX9PcG3qDl0fqOcce91MFiVju8pimGy0fOjHs6jIOS44Piqtt9sZNc57t/lFrw6wzo
         pwsqGypkx9vA+yCaybp/ijmxC6hD6XsCqkcHwFibP6Ra7BscR42CKnE6o6oYDGrZhZGV
         w3zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=sJ+ka9ehbBMVNS8y8pzP5FQoENz2n/b9KCNAkBAxDhQ=;
        b=lghUEPnZGekuCGLvjtbLzGREkhIB7HsEW1HGfjXaSZe+ILac0edPN1JbGD/wxzcPPc
         Djs67ljxc//ltSPyZ2cN2O7QUmqTaV/yAFEiwef1cpHj6BxFpMVcaY8lsRkxLq/t0KZ6
         7+lDFcALD6xuH/1o1bwLeYRU/bZX2zagDclRNGfviZxqTLTniNLGSnxogb58dB4V64ka
         W8jeNXkdioUQs4+swRzgPXgb5bb01Tv7eD5oSr/NjGra/trlPJAOdkLVrKolbfZfwZVd
         /3UTHEdPM2hLo/TNFnTXIy2YhW2SHDpNDGViZ/Obm1i26AxbWp0zLBWPn+VKzjSuJdfO
         dufg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=xnZMQ0V1;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id s15si575275ljo.2.2020.11.30.06.18.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 06:18:16 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:38012)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1kjk0G-0006sS-IF; Mon, 30 Nov 2020 14:18:08 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1kjk0C-00054X-SR; Mon, 30 Nov 2020 14:18:04 +0000
Date: Mon, 30 Nov 2020 14:18:04 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: David Laight <David.Laight@ACULAB.COM>
Cc: 'Ard Biesheuvel' <ardb@kernel.org>, Antony Yu <swpenim@gmail.com>,
	Nicolas Pitre <nico@fluxnic.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [RESEND,PATCH] ARM: fix __div64_32() error when compiling with
 clang
Message-ID: <20201130141804.GV1551@shell.armlinux.org.uk>
References: <20201123073634.6854-1-swpenim@gmail.com>
 <CAMj1kXGsQ9K57SvZ74pmD+_=338sGXjc_t+hCXMh-9BPanXnhA@mail.gmail.com>
 <CAMj1kXGs-woGGnM2QkhY5NbRRKP8_N4BY9ScBtga8mcyHoK2+A@mail.gmail.com>
 <20201130102122.GT1551@shell.armlinux.org.uk>
 <CAMj1kXHuERnB01sNrpY9w3C0ECOry7jCK=A2H0D4-_cBXbOmcw@mail.gmail.com>
 <ca83a5acdf514169b2fde3ec12ea59fd@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ca83a5acdf514169b2fde3ec12ea59fd@AcuMS.aculab.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=xnZMQ0V1;
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

On Mon, Nov 30, 2020 at 01:58:27PM +0000, David Laight wrote:
> > And actually, the same applies on BE, but the other way around. So we
> > should mark __xl as an output register as well, as __xl will assume
> > the right value depending on the endianness.
> 
> Why not use "+r" to indicate than an 'output' parameter is also
> used as an input.
> 
> Rather cleaner than specifying the same C variable as both
> input and output.

You have an incorrect understanding. "__n" is the input operand in r0.
"__rem" is the output operand in r0/r1.

No single C variable is used as both an input and an output.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201130141804.GV1551%40shell.armlinux.org.uk.
