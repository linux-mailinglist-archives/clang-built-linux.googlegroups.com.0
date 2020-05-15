Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBEGJ7P2QKGQESRWEZTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6471D5976
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 20:50:59 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id 125sf1216549lfk.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 11:50:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589568658; cv=pass;
        d=google.com; s=arc-20160816;
        b=BHtlXfHtmcDJAXeHG3LuZVulUocUpTt1kwbq9eZQX0zskSdW4Ft84E9HJCDS+FULnm
         iwNgJ9LbMcp2FhFioP3IQbERLXsn+ueCXbDmK8s54/tDSrvoDAAj6bnsXdlwqRalqBc+
         pv9QT+SSjRH14vlVZD5BRQkLA7pFgd9N8caty+ViuEo0gUMM26F26cgtWG5MXBQNhLFl
         QrBvTsi9bOTaIVCrhIZEwSo5UJwqmuBIggYltID8GwQ11ElZKDiq2CKdiyHlN/pOd1Wm
         M5buDfWv1ud3t8rrZrmPR8gnAtQBxzFwHf8WrMtMtjaHZzoqQRfwobZAIXSjzVMgqnRL
         NQFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=syqODDK9oVOQnXH3l74q/elaUEXiqrNcWmWCudjjypw=;
        b=v4I7p2TgjIgDyfzqneqhxMByMtS9CRNw+Apyztf8OP9IEdazUCjzL/DlmqbRSQTE2g
         7M9/aJS6XQ49f4qRgHC+KLkGIRSMSMlsFxtDPDUBdiPw/HGE65syfZthcSnYwAy+mFJU
         UpOQ/oTcMmrFi9B3aJtSPJMio3tDYrqjbgWbbtY0l/Ihjbs6GZgp/r14rCGmWQz/QLI3
         ZGSM3gbg46XpPOA129nFXHrl/kGiuPtgU+eVLjN3HgiWe4RElv7NX9ozPYNZ4W2JNpzp
         qUe/IIOvlwIq8WjAor84AfVRF8ZsZMZnwCyMnLfpsK/LXEuzgQvz5xNuxG3V+NDjKNGf
         goPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Hup5ZOpB;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=syqODDK9oVOQnXH3l74q/elaUEXiqrNcWmWCudjjypw=;
        b=sqVTAqPRSVwyGN5NlzqfE7Gt5H1rd0Cgcku6Y59qm/ExxSe8+/OBVQXZpBP2WY+vTG
         rWrBNmvYKTliXMA6eBoO6/50TJagiZECNb5SpmiWHRmOZ33AQBB9oT7byzPaAx7K8DNR
         yGSh+jjFMFZFLgtKqGXV2MC6qwsyY0dsf4CbIVl1mUg9R8cZjtoJio3idYpKLBCBdTyY
         lusg5K/Z7KSPyosl1R8gnUpV8YeOVANoRdWQF5m23CBqyKKm3H5oBKW2VePKudqX6WCC
         wT0bxdyE/j1nCJMG0VZsn7pE9rEFTEgf84ogoW7rnv7h5Z0mLOgxAokP6LASsPYriY9y
         wp6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=syqODDK9oVOQnXH3l74q/elaUEXiqrNcWmWCudjjypw=;
        b=S4gZaAOeGXDa30poFd7C1wsSKRX2sL0cIuAaKq2qWdWHMcWWp7SeHE74dPeJFzuafh
         +dqIUlpgH6UAHb1uOg8g4pCX0Ylmhp96/XMJ7ogYhdPd/cfaLO+PH3pGukDP0kId4F0r
         9xPCQ62Yn1J9AApWrnu+8joYipco031f3dWSzAwv7bVU59Qv5uhXvJCRgXyvQOSOcM+X
         lk1/UK3KJgrvd7Cxac/uI3TpacsRlLnJqRanh5jxSLwFILq9buA1mZTa1fj7SGymt5wo
         +sF4x8dAl8K7Cd5wt7upBQNQnoZlN4rtNo62KMijd5xNjWnAratDhm12zpdtmM6sbhdZ
         goJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531s4lveh8r9lbgAlE5z0q7o2dJpSdlmHhH12nfJc3GrRdm7hcfF
	rsVPzkRmiHVg3LPrTIpdwvY=
X-Google-Smtp-Source: ABdhPJyWQW3ZmxzRbdK3YQo8hmL5XbNEkRSoFEXz45N/GtY2FgXfK9tBRmESACS+8QQFwJiI7xPjpg==
X-Received: by 2002:a2e:8999:: with SMTP id c25mr3168058lji.73.1589568656648;
        Fri, 15 May 2020 11:50:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1121:: with SMTP id e1ls558215ljo.2.gmail; Fri, 15
 May 2020 11:50:56 -0700 (PDT)
X-Received: by 2002:a2e:3009:: with SMTP id w9mr3204063ljw.71.1589568656117;
        Fri, 15 May 2020 11:50:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589568656; cv=none;
        d=google.com; s=arc-20160816;
        b=tTKrQnkQH4BmeDnzQOgi54bJ35qFJAbHSNxVRq+qdnVeEJ3dQ2LwleRgjhoeEJQ615
         1uTEF1Zc3LYfx3Eycl4hcFb0vQT7LjQr9/uTFLNIdxzcEmE78GAB89EWgtjaEjlwUEDL
         4pNzY2EbHvUlacrqCInVRrUVziXFWq5HjpQD+JXY8QkvYifu8IRBfdOfsd6NXBdzjqug
         C0wERR8Mc1KES//mhFMc/ISUDbeQhDUaKanJOa4TqdXjrhfYg6Gv/EyBwygVsSzF0tvB
         hiKvq5Uezl2aLabcNpLHOfb7yTdSSXOq5rHzBdQwEVELBxg8MMiZOJ6KCYL1VQG+HrIJ
         hJQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=YP9RZMqjeJZdVRtJI2gZU8UCFpzgV4mlHCpsx0w8oyQ=;
        b=upknm4no72RacuEbBSi3M/c9aVXsBL+KZLsmz9qu5FpUtOPSYEOqOzSQWNw7we617A
         SNiwtQY+NP0FpWWvzkgVhSw+p2Ml6ImT7hu0QUNcSgLwx+Z6qW9Hj6Qhs21+r6N1j1M7
         nGONcaLmy4lrQgjKt7NlmgqzB1UZteY30IXO+Z3INChPNOr57ZPdN5oB2j2Tzv13wwd0
         N89yil2JH65owCe2URaqbKlELCAMxzkGUkxuIhgAbw0OWU9lfx25K8m3gK7+DWgi/LtI
         QGj7SMfoaHsFTQsW0C8pUs/B5z7jRdWLb4l1pWiZS5F903JOmBcBjENWjo/ApiDT94mW
         Of7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Hup5ZOpB;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id c24si247419lff.2.2020.05.15.11.50.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 May 2020 11:50:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0d67004cd1c8a6a574a4fa.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:6700:4cd1:c8a6:a574:a4fa])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 27A941EC02DD;
	Fri, 15 May 2020 20:50:55 +0200 (CEST)
Date: Fri, 15 May 2020 20:50:51 +0200
From: Borislav Petkov <bp@alien8.de>
To: Dmitry Golovin <dima@golovin.in>
Cc: clang-built-linux@googlegroups.com,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] x86/boot: allow a relocatable kernel to be linked with
 lld
Message-ID: <20200515185051.GC19017@zn.tnic>
References: <20200501084215.242-1-dima@golovin.in>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200501084215.242-1-dima@golovin.in>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=Hup5ZOpB;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Fri, May 01, 2020 at 08:42:13AM +0000, Dmitry Golovin wrote:
> LLD by default disallows relocations in read-only segments. For a

I need more info here about which segment is read-only?

Is this something LLD does by default or what's happening?

Because my BFD-linked vmlinux has:

Program Headers:
  Type           Offset             VirtAddr           PhysAddr
                 FileSiz            MemSiz              Flags  Align
  LOAD           0x0000000000001000 0x0000000000000000 0x0000000000000000
                 0x000000000070fa28 0x0000000000726b00  RWE    0x1000
  LOAD           0x0000000000000000 0x0000000000727000 0x0000000000727000
                 0x0000000000000000 0x0000000000007000  RW     0x1000
  DYNAMIC        0x00000000007108f8 0x000000000070f8f8 0x000000000070f8f8
                 0x0000000000000130 0x0000000000000130  RW     0x8
  GNU_STACK      0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000000 0x0000000000000000  RWE    0x10

so what's up?

> relocatable kernel, we pass -z notext to the linker to explicitly
> allow relocations. This behavior is the default for BFD.

Or are you saying that ld.bfd makes the text segment by default RW while
ld.lld makes it read-only like the elf manpage says:

"p_flags
              This member holds a bit mask of flags relevant to the segment:

              PF_X   An executable segment.
              PF_W   A writable segment.
              PF_R   A readable segment.

              A text segment commonly has the flags PF_X and PF_R."

IOW, don't be afraid to be more verbose in the commit message. :)

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515185051.GC19017%40zn.tnic.
