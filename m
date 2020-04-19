Return-Path: <clang-built-linux+bncBCSPV64IYUKBBXNY6H2AKGQE4TSHLIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f61.google.com (mail-wr1-f61.google.com [209.85.221.61])
	by mail.lfdr.de (Postfix) with ESMTPS id 823F31AFB3F
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 16:12:45 +0200 (CEST)
Received: by mail-wr1-f61.google.com with SMTP id j16sf4110351wrw.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 07:12:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587305565; cv=pass;
        d=google.com; s=arc-20160816;
        b=j3Puk5cGL81SCgd3LCLgg8rr1E2/QQmIu/+vilqKy/lnBlTs+F4In5PA9Vljqd5eF2
         8/NJ1o5ZbjvJskcNH/GI3QDMKcIqb+DBbD5wQCfmpmWmnjqie5hR+0DkUzlwaV+hu/ej
         DfGA4wkoR3Zx1zb4XqFP/fULGEYeic0iPAQZimsnWG+yF/UsfKsVOjIh817C8kFBpdfR
         CTbjkMep+ciXzjMgWHbAky5qaZtQcFcXAZpasqg9K/cfPwR06Zy9x4y+yGFmbzo0xnwQ
         6qE+jbFH9Hloi0PUKboMagWIoe3vV4jzmiyUgBoVZgnP5JSovUZ1r72ikFV7+5PkVZHu
         Zw5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=wzpLfGS5Ikpe2zp0TM3O5AkqfatQ+ZU2x2fA2kv0l0g=;
        b=mN3jDXodyfVmEETvwASOtjqlroZ/12XiOkxEl+UGawAlqpHF+YBkklMNjQitCeA9YF
         N+SviHTnHAw4mA9zj911nidmuSCRvNcY44jYo4C8zFCuY7mnDBX9TX6NP2tUcBYpCOro
         DRRRHfFOUgNYMwIBYHlOmv7yqdMs7f9oAr2knL/SPAbI9QPFOWtsx9qvfIH1WO+HF5Mg
         PuTdVm1/JskQ49OcvwUqrMIKnG8yEtpRwcnHtD32I646k0u/tTpCm+8jhEa6Z43V6nLB
         c6PX4IOXLyVLyje98dH4mAnnzzx31K7HvUYgtvurQ/z0ysbtS23bJoC3phN8vG2oJ0mi
         G5aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=mQ1sT2hP;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wzpLfGS5Ikpe2zp0TM3O5AkqfatQ+ZU2x2fA2kv0l0g=;
        b=FaJDqrSX6QFbBKvXdkwzTZ7FpEjPsdMbkrWXefqW3lpa60Cuu7cwV5tLecYZOEmyGQ
         jWRqRHCqvuLGDyLozhLVflkiB0Cb7vhBlly8X2EiQ6akl7x+lX8fZodLpLj4I10mJlzH
         tvSN5d9jqUsDML4oyPvUcq+rE37COPhEZDCCyXzZvL/tm2iNCXK6sxmTV6JCTFjK6g8D
         kE2hbAk8//cNkJ3iGQgb2skmDxlKGPaKy+3vPtKCG955w1hOXcJPCy9Q8UjsQKhiWTzP
         vRphXcngCurAbxdMrJiO7qNLQMcTeFb/bmMjviPW2Q+zaVlUlyy5CMV4iF8XGk2toYRe
         pgMw==
X-Gm-Message-State: AGi0PuZ7rvDHGa/VgNE7mkOiUuqpuZor4+qVVRWs9yqV3MWUyMQ7GVJ5
	oHoyaD444U6YMGr6GKs6QFo=
X-Google-Smtp-Source: APiQypKJGSHtwgCYZEau2A/5jYuhNjDZVho8K5A7omSmAy0rIW/9HJiT7C1hc4HeoEmc/iCu7JdGOQ==
X-Received: by 2002:a5d:6887:: with SMTP id h7mr7939554wru.365.1587305565258;
        Sun, 19 Apr 2020 07:12:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4605:: with SMTP id t5ls606768wrq.6.gmail; Sun, 19 Apr
 2020 07:12:44 -0700 (PDT)
X-Received: by 2002:adf:f5ce:: with SMTP id k14mr14940637wrp.39.1587305564767;
        Sun, 19 Apr 2020 07:12:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587305564; cv=none;
        d=google.com; s=arc-20160816;
        b=E1B+Hprvl2grASS+GkM6ZaZIrWJlpUh3+H9Z0cTNzME83aMwbFisXuV7wPhlQiTXkB
         w06jKV0lgyefrEHoKnH2EXX8ArnyHai5eb+eH4GevKkv+BhF+gsZsUh0DxX8ClF2+SA2
         c7bgykfPET5vxna+ZMT9TMN+3G5mxWBZ3nE7tTfdEVXJFp1yhhePhVqK96MBTBvySW9Q
         4oomCqtZbDElRNYW+gK87CnKz24Nw2nNI4POskIg/zFuXLV2lGEaoVWVmsCCeeYiVEb1
         RF6DCdPNgrKzslzl0pULhBzw4GfemddTqItMA/F6I7fbvYItGqFfKX/U3xv5ZkWFsjwy
         l/Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=iPI9+C0OmqfHPSjDQhvBPW39Tw6U8V5gfT1X3EF41SM=;
        b=dOGquvwQo8jAGG4z7KTA9vAteMoqFXlDlJsMYf9/fLs7LGD9Pyi1Ob9ZEyv6uZ1ZWb
         ZjkF09YeU8k9NNWaGC2YETH+0aD5QaOMKdxaa2DKQ8oKA+PoUfaisPdYCexHZLWc8Ktx
         tNrEYSataNmCib/ECjdykt5lTdiVM1WicFzQA6JjSAtHJyQoFwkWI/r4OJke2ziBfI2t
         VSAVW53dc5Gkq+jfDCQ6Yw+Ty517qIfLLlYh+gGWSLwGnw1D5an7iclAE3gNbTjGHOYa
         kGfY+WaK/MCqx3EitjpdrdL5x4Xun0ebYoo9vPBj62dimlLzPvKNNjhMg7KOkuKDjBCM
         w15g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=mQ1sT2hP;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id x11si693347wmi.1.2020.04.19.07.12.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Apr 2020 07:12:44 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:40538)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1jQAgZ-0005zm-NF; Sun, 19 Apr 2020 15:12:39 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1jQAgP-0004uU-GD; Sun, 19 Apr 2020 15:12:29 +0100
Date: Sun, 19 Apr 2020 15:12:29 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Agner <stefan@agner.ch>
Cc: clang-built-linux@googlegroups.com, arnd@arndb.de,
	ard.biesheuvel@linaro.org, ndesaulniers@google.com,
	linux-kernel@vger.kernel.org, jiancai@google.com,
	yamada.masahiro@socionext.com, manojgupta@google.com,
	robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/3] ARM: make use of UAL VFP mnemonics when possible
Message-ID: <20200419141229.GX25745@shell.armlinux.org.uk>
References: <cover.1587299429.git.stefan@agner.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cover.1587299429.git.stefan@agner.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=mQ1sT2hP;
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

On Sun, Apr 19, 2020 at 02:35:48PM +0200, Stefan Agner wrote:
> To build the kernel with Clang's integrated assembler the VFP code needs
> to make use of the unified assembler language (UAL) VFP mnemonics.
> 
> At first I tried to get rid of the co-processor instructions to access
> the floating point unit along with the macros completely. However, due
> to missing FPINST/FPINST2 argument support in older binutils versions we
> have to keep them around. Once we drop support for binutils 2.24 and
> older, the move to UAL VFP mnemonics will be straight forward with this
> changes applied.
> 
> Tested using Clang with integrated assembler as well as external
> (binutils assembler), various gcc/binutils version down to 4.7/2.23.
> Disassembled and compared the object files in arch/arm/vfp/ to make
> sure this changes leads to the same code. Besides different inlining
> behavior I was not able to spot a difference.
> 
> In v2 the check for FPINST argument support is now made in Kconfig.

Given what I said in the other thread, Clang really _should_ allow
the MCR/MRC et.al. instructions to access the VFP registers.  There
is no reason to specifically block them.

As we have seen with FPA, having that ability when iWMMXT comes along
is very useful.  In any case:

1. The ARM ARM (DDI0406) states that "These instructions are MRC and MCR
instructions for coprocessors 10 and 11." in section A7.8.

2. The ARM ARM (DDI0406) describes the MRC and MCR instructions as
being able to access _any_ co-processor.

So, Clang deciding that it's going to block access to coprocessor 10
and 11 because some version of the architecture _also_ defines these
as VFP instructions is really not on, and Clang needs to be fixed
irrespective of these patches - and I want to know that *is* going to
get fixed before I take these patches into the kernel.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200419141229.GX25745%40shell.armlinux.org.uk.
