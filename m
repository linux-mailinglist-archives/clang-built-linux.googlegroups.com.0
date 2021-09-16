Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBFVLR2FAMGQESRKNKNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 240C640EA99
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Sep 2021 21:05:59 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id w24-20020a056402071800b003cfc05329f8sf6487947edx.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Sep 2021 12:05:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631819159; cv=pass;
        d=google.com; s=arc-20160816;
        b=QrG8036mzivB6FPrCB8vndcqQ/cIRv4Xe5A9if/paHzyFEfoEoYfr9ixWndy9niIO9
         CVjAZi8xACK2UWV6tCdbWPBu8GPCTA5NQqHgMgdMH8PSYk5YRs7+ZL23g1pBYkKy7AHN
         e2rxw16Pc/HOb+HkFPe+7evgSQWUbCQ4aYbTJcQCBfbMznX3FmPDB9Z1yO97WUFDGlvk
         lBOPLnudN/zKczPMI7gGiig6xS1vCxEzw9fwUvrkyEp61mfOIuLGecsALiuH2YKjoLF/
         kQqUsY4VUqdVo905dlNWRfVoqGmVv1y1YWm9Uma6krZ1XBk22Bixgv6qp4WP5BpMe1d3
         0QKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lqMNStNjvh6+ksCpYUhiSdF2sVDEE2Q08PFDgNa7vL4=;
        b=MgcPC8Ql9m74fAmdrLvZR0T6JJr5U97HsmcwrmBDslbVgxW+9oJUXVeDYnWACTo5rs
         1g9FRakmCJA8eTnddjgoR64fkdmYFeEwi4U1Lak5IqQYvBAz3e9Nl2aCXorAg/A3Jt8t
         zmZHaKdEjxZKBsn+YE3eNTrcP/RfPnr3TYcoVP/agYlr1pNNVbwBDRvJovY7+5Vwpvp6
         knt39rbYPdfnCVyqyMInYQUUXsp/0dk8glkvMo1NlcpdgPBpinIkgumJ9xni9kP3MiPD
         f5JC28rQ0Qvj25XAVaDPQt26kWhgD+ct6zNZF+3kfPE2guoNLsUE1Yt98AgWB3a0Fw1I
         nGCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=KqdrJwPq;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lqMNStNjvh6+ksCpYUhiSdF2sVDEE2Q08PFDgNa7vL4=;
        b=f8u0wyoseMBqw06VFSWpl8GMzchCtQG3Qd07YdlJ2++XPWsJD6/uPym6XxR2jdULj8
         kUYqMMni6IJmpGUhUmBqLafMaM/geaGYF0Jae3vU86tVlFvMxS2+Bqk6lo7BrDL/tM3W
         FKUUbj4qWn6LMedjkrfP76yb/hAMJNVzkytHtJTmeEN0JNkjODKYKi0eSoj+7lcjvxWl
         xgj2I0xiNoGAizvuBrseFDmycbxQPmTF/+ZHIuuc/kZtb9mKXsf6xgsYAnw1+gtSsxMG
         +G+oPq0CSjm+/GthhWNpkoxVpuSehlTDaHOo9yoN5JYXmTpceKJp3rddcJZfVQut5YL3
         JSiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lqMNStNjvh6+ksCpYUhiSdF2sVDEE2Q08PFDgNa7vL4=;
        b=muR+fv+oUx1LkQT/D1YrtvHVuSaNXo7TBc364CS8opGbYvxQLSEb6rMSbfOUWUgGPM
         3RidNycEY5M8KER13VU3+Wj0ShcmXZsJprfFGARNmhO/K62IUmq6tceG5dAA8IXseiJt
         dePZO5EaAvwVx/4p+o6j564svKXWkYheqsAShsYIbGKkMcuYBfAFnmkiY2A0RUi8r4e5
         o2rnnchK810+zw/x/VA9sC5lx6iWxqhkFQcSo4Zc5knvy3zd6QYDvEJHMWgVvFlu1Qay
         IlAO7ZIKxa/rfS3Bt3zwZ3mkLxNSPgXcs2N4MK+DbayilsKx7N3Yww32ee0S6FeQGDnz
         LnVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NUmETNiBvoiOdD/AGaRk/FW51KVOJ2o8sz1M8SZhxXU/cJKuj
	GYujLQtkwttrawrHZC+u7hw=
X-Google-Smtp-Source: ABdhPJxmqNf7PKYS7vbGqrsF/uD8F9fRxQxorFyHGfm3vBiVTBA0CbaTnGwH7lV1DkmaG8oCcNV0yQ==
X-Received: by 2002:a17:906:25d4:: with SMTP id n20mr7826009ejb.399.1631819158848;
        Thu, 16 Sep 2021 12:05:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:254d:: with SMTP id l13ls243614edb.3.gmail; Thu, 16
 Sep 2021 12:05:58 -0700 (PDT)
X-Received: by 2002:a05:6402:1490:: with SMTP id e16mr8263706edv.369.1631819157975;
        Thu, 16 Sep 2021 12:05:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631819157; cv=none;
        d=google.com; s=arc-20160816;
        b=CQggRqQiqdUPPfPIU2TfaLGCyfwaRRgiC/0AW2WoEdF35g7rsN5lv2FTxzgf2aH4da
         7ri/ongUiYLx58vyHOSvHx48qQ3Pk2P1EQNJdbhAueQ2vEt6mlZ533ECo0n3uJJP127I
         cr3vedmn394CjdQ/VqDEYTWQBiymU2sSFJGsXbspDI6f1MhLZTxCz/tVL6GOsylBmet1
         jXl40AGcX9O4ZNPUa3M/CCwmDBZfjkUdYdQDHYd3uhqhNAEU8Z8oOXATwTuekHQQg/Qt
         u062fCrB55TZGqj0DP5OcPDhyJ8RBJVRxUfVKchiak/8lt3rIr/bsFyT9jPAezF5zM9h
         XtZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GPHrZA8eT90xnNQWKOPWxTxqG3zYBZeppwwDINVeVlk=;
        b=XHrG1dxx+/GxAyOVkIgHNyKr+DfVMDlJ5Df5UkmXYz1D27pAOfu7yXjt+MvOh3dZFz
         WMtWubZ9xjSC+XbkTpt1C5teU2+T3kkFrFz23GSSVB9+9WmGzHH8NtB+HtoBzyLsEmTL
         aeQ7xeKBekdA0WS1vERPvxoL6qVUpfY5AAXLeSuTZDPpwCKFSECx03oYLt2feofPtR4B
         S803hyKpF9HhakPFuOfUQNGBygF641STwK7laF5fSQycM6VNrTvWciz3kb61GPJsc9e+
         Z2NrqI57ceAIAf8KYvqE9sdUTCaJW1bkYBsj19DmhZWomGZM018W4UARRjEm2zJrVXeI
         fElg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=KqdrJwPq;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id p21si499891edx.1.2021.09.16.12.05.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Sep 2021 12:05:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f11c600a255bc81368aa6d8.dip0.t-ipconnect.de [IPv6:2003:ec:2f11:c600:a255:bc81:368a:a6d8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 547CF1EC02DD;
	Thu, 16 Sep 2021 21:05:53 +0200 (CEST)
Date: Thu, 16 Sep 2021 21:05:47 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	x86@kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com, llvm@lists.linux.dev,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 1/2] x86: Do not add -falign flags unconditionally for
 clang
Message-ID: <YUOVi6dDqR20qsmx@zn.tnic>
References: <20210824022640.2170859-1-nathan@kernel.org>
 <20210824022640.2170859-2-nathan@kernel.org>
 <YUN8coiEx3JZQytc@zn.tnic>
 <4d88e0ed-422d-447a-ea8f-36e54b38fac1@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <4d88e0ed-422d-447a-ea8f-36e54b38fac1@kernel.org>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=KqdrJwPq;       spf=pass
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

On Thu, Sep 16, 2021 at 11:42:19AM -0700, Nathan Chancellor wrote:
> Done, I'll be sure to keep that prefix in mind for future flag-based
> changes.

Yeah, what you could do in the future is

git log <filename>

and see the previous prefixes. But not that important - we fix those
usually before applying.

> Sure thing, kind of hard to do that on the initial submission but I will do
> it for the v2 shortly :)

Haha, very hard. :-)

> Thank you for the ack. The conflicting changes that I mentioned in the cover
> letter have been merged in 5.15-rc1 so if you guys want to take these
> changes via -tip, just holler for an ack from Masahiro on the second patch
> on v2 (but I am going with the assumption this will be merged via the kbuild
> tree).

I'm fine either way. So whatever Masahiro prefers.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YUOVi6dDqR20qsmx%40zn.tnic.
