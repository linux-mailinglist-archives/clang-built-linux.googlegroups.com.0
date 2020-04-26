Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBSXSS32QKGQE2VY6WHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C80D1B91CF
	for <lists+clang-built-linux@lfdr.de>; Sun, 26 Apr 2020 18:39:39 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id f2sf8697555wrm.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 26 Apr 2020 09:39:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587919179; cv=pass;
        d=google.com; s=arc-20160816;
        b=uKsY0hKni81IZbKu8AKrp1PAzjanZ8Q2eRVCRXwjyX/9sH+HXLwuSdaNEfOofNDFkE
         5MLM2Yd8OJo9QlOyTkgrKrDCxhZIdh5cRiEPLx5PwtkGlhcoJnjZL8Vp17lzn2dhNne2
         vGgrFFvXBHwkxTrEetRj+ROK3JpztOPFP7cW4vIa+5lhTEyLKjSqqtG0//71YUHXhjPp
         4dEsxMCEPkGbrgsMzlImjs/TerPnvrgUrgELc4mI4yACPgjEbpakkDtPHTdHpZ93fxUH
         sJMPzuD1YJCftzCNb1dm8biiY6Te0BuR/y+O0IiMeAIgJqVJ3XJDsVT7MrmIR4wN8jBg
         gDCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=6z1KGIPAc7LNhVZuVcJAdK3JNcHrdXJwCnrVQSxY9es=;
        b=s4HY9t5qKgrhsPFnl30sjmZzMtxMeSTJSE1tXwZ6hpl6+PHpKo63sk5dlE0sNTNPrb
         hVit7hG74+5SMVJWqzI3grFmFfWUESQ5dfeoiyktDH+uJWZUrlJMpCFFu7LJPw0s3TUA
         KbLp4Z98VbYMxz/QnNs1ei0ILadrESXaaXz8vnN2NsFvhLgU34QKD0v2NsmArvCISLpe
         JsU0gJ+TlinjA55H7fiRvQys8Ykb0pIyBNCk+Hx6jFVxpYQFGMGHmU/ICpxfTa56Jrcb
         62qw1Cw2kNEEF94s2/l1i9IQdI6/sHJiZ5rCO6DscEe50uPEynJF2NABfE4jiN7nZ7HU
         hpUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6z1KGIPAc7LNhVZuVcJAdK3JNcHrdXJwCnrVQSxY9es=;
        b=G1E+5yd0WFxXjR3PiAvHsAvAiOY59Yqex3POJpVcYwiZUEcbnvGrG1dlEN43YVrNUZ
         veLIMgJk8uoX2HR/tm3nuhJJKSFtGdW7RXqYRfXQ1GP+BqlzhLgLD7HgMsle8bD4prno
         rIPWYo732MnfF6KHUqI+dMYS2YRyWG5bbCqBjMCKUzu96NH1pUhHSHFn/SfbNUM4q3Wm
         1FqPA1N66CbsswHlBH77oIOvEhUYolvE0yZ+mcPuL+8w+ue+P2zafB5DClERjDyzWDv8
         13geaEA1AtirNLnAsxck4dE+lmNv3gV4Z90BWPCua/ya9Pq3chpXTbcmXxJovG7s9wi7
         rt8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6z1KGIPAc7LNhVZuVcJAdK3JNcHrdXJwCnrVQSxY9es=;
        b=qsiU/c4z1AzaMMmDwgUTEIQXIaA6RZChRpRphsYJ4/MnI9fPPoDv1X3EgyBVselfiO
         kDLQFkxO7FPtS5SJLsg/74xBRIRbpj6ADgIFd/49uDpruPixCudQGGNDPB8U3v3gBZpt
         AF2SfY3VkZV9oTd2E6rEIEC3FcFcuC5noUWNg9STQ7ELjnMX+7JROcT3IvqEhtxhwtiM
         J8jxbDAZsHdpi6i4ESaReULD9I0HQL7sXYZI+QwD0yuUyyfGe77SD8eRKhKbgF5P0sTN
         2SbYI9C5pTX//FdIP3tjPGg3E3uZlxZLw6xcLQ70qHxHGNnNQCzENid1sduzce2H9uyL
         fp1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua1LrKWBfgYzfgt3pYfh+ZyRZSpCktLRFCDAYX7KNYE3LdZnNFi
	x1fVIitpBwlBnftz6thHFAg=
X-Google-Smtp-Source: APiQypIlcrMe0n9BIyw6o+WRzqjiA/gSwh0K8h/ITYV7xNDgLAEzzBM2cpXov5pjJ/DQBJrre1mqsw==
X-Received: by 2002:a05:6000:10:: with SMTP id h16mr22621191wrx.295.1587919178935;
        Sun, 26 Apr 2020 09:39:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4605:: with SMTP id t5ls18949658wrq.6.gmail; Sun, 26 Apr
 2020 09:39:38 -0700 (PDT)
X-Received: by 2002:a5d:6584:: with SMTP id q4mr24669380wru.403.1587919178338;
        Sun, 26 Apr 2020 09:39:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587919178; cv=none;
        d=google.com; s=arc-20160816;
        b=WVmPCW1zfX9gh/8RkgwcKc9WqHnP9g/vufkY4igPBDCtH6qjhWY144/Igsxd+28LR0
         ruoKhRAkfKH3mAyuSGCRpnheiwJq30M7whRaE2uR59DlZ8Mer/7jC3e6REDsfqG3cIKq
         0Lmo32Py3NRNb8ISPVZ2IxayXxN0QWjeOYxOEFOZDaVHxOu+ezytlFT/a0zNZ5WLO39N
         fAywkTpCHpzf5j67pRkYVMSyoNXKH1MoMLalQq9NEEyJJwu+gSM5vbap8l6+T0wM4G1W
         fctY+fXM83ln6gIUVlOOX3QpY+KLt54p6HMTDgP67pVm1wkuRZQxARzi/ki6aCI4XIyz
         MAKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=zJL5Ee3jgRXmcSGoUW+L4u2SRzIQGhfa/lYRQ1jbNlk=;
        b=gdhmVsjwZSvYZdiIxIw+8LmY7iSPVoM2Gi+r76q5SvpLdR9HxJleOT9USHx5Qc1I2D
         T8dovAjlcQral+6n6upysdbn6b3C9wQBReM1uFlXZkcgM6gnzdg848QZEramkBSKgI7j
         d9pCoOI1TJVXpfAApMJEJCPNZ9lWURZ8dr9RYURdD05Xl6kIZ2fB4vTPqyy8f0Z4MHcc
         zXy8h1RbBgBkphLFOdJasKw756R5YZDnHyaVQCq1NnBjYgt/A/aPHkJT+EBh++jqkZIE
         hRuZbrKCfhuBbYoTi4YuAfzfDFJlImNc81BkhshEQ1FPYYFWhr9ij5S3i+Xakm42yNFH
         Xm5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id o136si433675wme.0.2020.04.26.09.39.38
        for <clang-built-linux@googlegroups.com>;
        Sun, 26 Apr 2020 09:39:38 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1jSkJd-0001xo-00; Sun, 26 Apr 2020 18:39:37 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 7EA99C0301; Sun, 26 Apr 2020 18:27:37 +0200 (CEST)
Date: Sun, 26 Apr 2020 18:27:37 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v3 3/4] MIPS: VDSO: Use $(LD) instead of $(CC) to link
 VDSO
Message-ID: <20200426162737.GA9322@alpha.franken.de>
References: <20200419202128.20571-1-natechancellor@gmail.com>
 <20200423171807.29713-1-natechancellor@gmail.com>
 <20200423171807.29713-3-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200423171807.29713-3-natechancellor@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Thu, Apr 23, 2020 at 10:18:06AM -0700, Nathan Chancellor wrote:
> Currently, the VDSO is being linked through $(CC). This does not match
> how the rest of the kernel links objects, which is through the $(LD)
> variable.

this causes build errors for me when (cross) compiling a big endian target:

target is little endian
mips64-linux-gnu-ld: arch/mips/vdso/elf.o: endianness incompatible with that of the selected emulation
mips64-linux-gnu-ld: failed to merge target specific data of file arch/mips/vdso/elf.o

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200426162737.GA9322%40alpha.franken.de.
