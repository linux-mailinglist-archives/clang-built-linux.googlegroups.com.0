Return-Path: <clang-built-linux+bncBC7457HKSMPRBD7ZTKCAMGQE4LC4YRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-f63.google.com (mail-oo1-f63.google.com [209.85.161.63])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E8D36B3E5
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Apr 2021 15:13:53 +0200 (CEST)
Received: by mail-oo1-f63.google.com with SMTP id k9-20020a4a43090000b02901cfd837f7basf14100726ooj.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Apr 2021 06:13:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619442832; cv=pass;
        d=google.com; s=arc-20160816;
        b=wK44TsRy2cnzvn2oGyaHHwPLpC5+cVPt6CGxm1FCacJUNWxE0h3DZL2AfcFaiDBlHy
         uNoXD9kkSXYPGBgM0/hfSSFFnWjhnh9GPNEEdLha1mGgIlQ3OMeOP6uJjF2Z4ta7zfla
         tjBM6ZmM+mqTmD2zp2AbkhS7qJxzWe2Cs+u2U9byglAERAyrfkxZvnR+t8AjOxeNhGUX
         nHlvmoNb/alEeOmJ8h+JM6vRUu64M7Jr7wGnYglbmEeO58x+e4LewuqLgzaqao2BEyQw
         w0a4e4cpN0ph5EQc1dYQ5f3qz/ZYgq9JNqg3882i4fBF9pDSIGQVLt83DglWrUZp624c
         d31g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:content-language
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=9jUO4q3yC0YSvz7LPlaWanKm5V9z12/Ic4YYAnaXOqg=;
        b=jyqddCMojXnHhIeeOsLFX7FfQqCstZiV4euTKXXvlyCNOnzeWbJVbGd+lTjo77YKKy
         ekcxDjG7rc4OiPyKWslJ1ZzgbnE/gHURZVVdNwcU2ywf8NRra+Vpa40a+MT2mxn5OIUA
         zwqazMoKUMRFXbMxSc0x6D6ygv3yHtGe/sjH2yK6gK/xx+xP+lvfbSIBPSRODWAv9m2P
         PMqNBvyPYb2kr12jcCnHDM5op0+fiTaKBawKt/ncwGs0Hi9nxHYsGC/cK7zc8OKxtX+p
         HvH9oEiSp36zA3XqZ+8sIBCma0870nxSc1oDltXog3ysM+9VFwWO8TAFS9CwwVMrB36G
         +FOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=p2dqhb0u;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :content-language:thread-index:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9jUO4q3yC0YSvz7LPlaWanKm5V9z12/Ic4YYAnaXOqg=;
        b=HSPzcm9lNq+oqgzHDQOsKL8JZyZkEx6ETp8QljAv1pEgwUl5wc5ZBy4DlGbSCOzYNr
         F19+9G2JMreNK31yTj1AQ6sYIeSqdgEKv56TSTiQ9JqFcdLZPduCzVpAr7swK/QLZuTs
         BkizB4OMN4LKwfU0nPwFZQS22kyV2VtNTU3ckeI1kdEmuqFOc2XNYRc/r0j/bXiBqquP
         ZXU7tIkIx4InMY0KVYsq6dLc4/H/C91AKCiP3haeH1xshBpaRg6bOpZAjnknM6cGaePq
         EYTZ2q2Fka3Ie4s8lMjKuFCy3j/xSgF/J+faO1pwJ05RvhMUjFLgfsQJeKIqd+Zthgu8
         onKw==
X-Gm-Message-State: AOAM530eiQ7YZxIJNafpHHMYmNTpdfqzOSGKlzfzZZSO5uTEXCwZTrKj
	PWBiuFsbRdaSW47TsExp1AI=
X-Google-Smtp-Source: ABdhPJy1bJqoYXpRU8geAdsjMz+Ki78lb71VEw9hVdtjAvENcCmPUrvRn1Nik+TR+GESToeGhDsQqQ==
X-Received: by 2002:aca:33d5:: with SMTP id z204mr13616636oiz.32.1619442831907;
        Mon, 26 Apr 2021 06:13:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:adc6:: with SMTP id w189ls4244403oie.2.gmail; Mon, 26
 Apr 2021 06:13:50 -0700 (PDT)
X-Received: by 2002:a54:4396:: with SMTP id u22mr13381919oiv.118.1619442830155;
        Mon, 26 Apr 2021 06:13:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619442830; cv=none;
        d=google.com; s=arc-20160816;
        b=GZOCBDHVbaLLbyxY+wduanbT/kr1xbZMSV7VaDl1Oe48uPFGSelyQyydc7J50r2goU
         zkPmN+51gnF3zNZxNXeJSGORJ3UePoS3pojaDJn4YpU8HLGiSbCZfq32fkn+YGxxCrzT
         M3PIqyCTslx2Tin9cgNzx2MdKi5oApehIaO9KqHl2nfSkKbVP0YfScX31dp04lQtlnng
         vfG/VxOmrKemOzSAOvA4yWTcMkmm9aJ3Wp1RiFiOS2dze4YKBa4/h4sF1iYM/uybqFpJ
         8n3KlFNCycoNa/bLWArId8KifKFFkdHyCbjnwg8raVMY4knVtuuNcJJOrYwRHsNAEKT8
         8oJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=2aasOBDfVeKKukuy1LhKC7ZOGD0SUDLdz1bz/6bTWp8=;
        b=ZBh7hVPIxDZaTKN5es4qiX0MpcXnqolr9+MsVpToot9ygUIqW3d9+h7GQCgk1WQ2uh
         P+WFYTcM1uS/805H4+ytmonovL9MO6EzSi1Bmnp7hzMhXw0q13/CV1HLg7mU5vspEQ+E
         S36FnrblKboakx7zlLa5Fl08t3joG3Y3WKgOQfzkHzV5lU1pfeqRARL+I/1i0fPeT/6y
         BePkw8w4msk3Qit4yE8+yC2Lbpfwe1ttrd/hACx3r7j8PI9CoNTImV0dNrzuFG4ql6AV
         cbhceQwyKjZDvTN8eiyMMMlW8LTAJRswhVgz7Dh0t3x9V/yXGg4E8MAYuO4q+eJPPYMo
         TSYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=p2dqhb0u;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id d12si1299729oib.0.2021.04.26.06.13.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 06:13:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-west-2.postgun.com with SMTP id
 6086bc892cc44d3aeaf437c5 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 26 Apr 2021 13:13:45
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id AE08DC4338A; Mon, 26 Apr 2021 13:13:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	PDS_BAD_THREAD_QP_64,SPF_FAIL autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (104-54-226-75.lightspeed.austtx.sbcglobal.net [104.54.226.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 40E3FC433D3;
	Mon, 26 Apr 2021 13:13:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 40E3FC433D3
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nick Desaulniers'" <ndesaulniers@google.com>
Cc: "'Arnd Bergmann'" <arnd@kernel.org>,
	"'open list:QUALCOMM HEXAGON...'" <linux-hexagon@vger.kernel.org>,
	"'clang-built-linux'" <clang-built-linux@googlegroups.com>,
	"'linux-arch'" <linux-arch@vger.kernel.org>,
	"'Guenter Roeck'" <linux@roeck-us.net>,
	"'Randy Dunlap'" <rdunlap@infradead.org>,
	"'Miguel Ojeda'" <miguel.ojeda.sandonis@gmail.com>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com> <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com> <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com>
In-Reply-To: <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com>
Subject: RE: ARCH=hexagon unsupported?
Date: Mon, 26 Apr 2021 08:13:43 -0500
Message-ID: <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQHA6GaHPKlqiI34kZpdCyOyqmKBQAItWAQVAr2ClWoDAPOEXKq0DBKw
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=p2dqhb0u;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Friday, April 23, 2021 4:40 PM
> To: Brian Cain <bcain@codeaurora.org>
> Cc: Arnd Bergmann <arnd@kernel.org>; open list:QUALCOMM HEXAGON...
> <linux-hexagon@vger.kernel.org>; clang-built-linux <clang-built-
> linux@googlegroups.com>; linux-arch <linux-arch@vger.kernel.org>; Guenter
> Roeck <linux@roeck-us.net>; Randy Dunlap <rdunlap@infradead.org>; Miguel
> Ojeda <miguel.ojeda.sandonis@gmail.com>
> Subject: Re: ARCH=hexagon unsupported?
> 
> On Fri, Apr 23, 2021 at 11:35 AM Brian Cain <bcain@codeaurora.org> wrote:
> >
> > > -----Original Message-----
> > > From: Arnd Bergmann <arnd@kernel.org>
> > > Sent: Friday, April 23, 2021 4:37 AM
> > > To: Nick Desaulniers <ndesaulniers@google.com>
> > > Cc: open list:QUALCOMM HEXAGON... <linux-hexagon@vger.kernel.org>;
> > > clang-built-linux <clang-built-linux@googlegroups.com>; Brian Cain
> > > <bcain@codeaurora.org>; linux-arch <linux-arch@vger.kernel.org>;
> > > Guenter Roeck <linux@roeck-us.net>
> > > Subject: Re: ARCH=hexagon unsupported?
> > >
> > > On Fri, Apr 23, 2021 at 12:12 AM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > Arnd,
> > > > No one can build ARCH=hexagon and
> > > > https://github.com/ClangBuiltLinux/linux/issues/759 has been open
> > > > for
> > > > 2 years.
> > > >
> > > > Trying to build
> > > > $ ARCH=hexagon CROSS_COMPILE=hexagon-linux-gnu make LLVM=1
> > > LLVM_IAS=1
> > > > -j71
> > > >
> > > > shows numerous issues, the latest of which commit 8320514c91bea
> > > > ("hexagon: switch to ->regset_get()") has a very obvious typo
> > > > which misspells the `struct` keyword and has been in the tree for
> > > > almost 1 year.
> > >
> > > Thank you for looking into it.
> > >
> > > > Why is arch/hexagon/ in the tree if no one can build it?
> > >
> > > Removing it sounds reasonable to me, it's been broken for too long,
> > > and we did the same thing for unicore32 that was in the same
> > > situation where the gcc port was too old to build the kernel and the
> > > clang port never quite work in mainline.
> > >
> > > Guenter also brought up the issue a year ago, and nothing happened.
> > > I see Brian still occasionally sends an Ack to a patch that gets
> > > merged through another tree, but he has not send any patches or pull
> > > requests himself after taking over maintainership from Richard Kuo
> > > in 2019, and the four hexagon pull requests after 2014 only
> > > contained build fixes from developers that don't have access to the
> > > hardware (Randy Dunlap, Viresh Kumar, Mike Frysinger and me).
> >
> > Nick, Arnd,
> >
> > I can appreciate your frustration, I can see that I have let the community
> down here.  I would like to keep hexagon in-tree and I am committed to
> making the changes necessary to do so.
> 
> I'm very happy to hear that.
> 
> > I have a patch under internal review to address the cited build issues and
> libgcc/compiler-rt content.
> 
> We'd be first in line to help build test such a patch. Please consider cc'ing
> myself and clang-built-linux@googlegroups.com when such a patch is
> available externally.  Further, we have the CI ready and waiting to add new
> architectures, even if it's just build testing. That would have caught
> regressions like 8320514c91bea; we were down to 1 build failure with
> https://github.com/ClangBuiltLinux/linux/issues/759 last I looked which was
> preventing us from adding Hexagon to any CI, but we must now dig ourselves
> out of a slightly deeper hole now.
> 
> Is this patch something you suspect will take quite some time to work through
> internal review?

I don't think it should take long, no.  I should have a better idea today of about how long it will take.  We will share it ASAP.

> > In addition, my team has been focusing on developing QEMU system mode
> support that would mitigate some of the need for having hardware access.
> We have landed support for userspace hexagon-linux in upstream QEMU.
> 
> That's also great to hear. QEMU is a critical part of our CI for boot testing; if
> there's more info on timelines or what's involved with booting a hexagon
> kernel in QEMU, we'd be very happy to know how or when that's available.
> 
> > My team and I want to make hexagon's open source footprint larger, not
> smaller.  I realize that not being a good steward of the hexagon kernel has not
> helped, and we will do what we can to fix it.
> 
> A worthwhile and appreciated sentiment. I believe you.
> 
> Hexagon could be an interesting case for LLVM support in general for the
> Linux kernel; a case where each target or driver need not necessarily have a
> GCC backend to be acceptable.  But barring anyone from being able to actually
> build it (let alone run it), it's not that; it's less than that. It's dead code that bit
> rots further and burdens maintainers who are maintaining something that's
> already broken. I'm not sure who derives any benefit.
> 
> I think it's in everyone's best interest to see Linux support more targets than
> fewer, and 2020 has been a hard year, but I'm curious how long something
> has to be broken before folks say "enough." Please let's support this properly
> or recognize the situation for what it is.

I don't think the special circumstances of 2020 are to blame, it's just my failure to give this work the priority it deserves.  Agreed: we will support the target properly.

-Brian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/034f01d73a9d%24fc4ed420%24f4ec7c60%24%40codeaurora.org.
