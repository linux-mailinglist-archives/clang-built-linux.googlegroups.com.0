Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDEDWTVAKGQEHPYHWOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9468714B
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 07:15:57 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id l4sf19007323lja.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 22:15:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565327757; cv=pass;
        d=google.com; s=arc-20160816;
        b=kyP4KoVUvXqkFiAO7eEACxybs4/qWtGC/zvFEMQp61lEzZTF3M1jvMXgGf6f9lnY3Y
         N7XdJMcNtVm15WkT8Ia1Wkc/Jklh2tCl7hwjxSc9M4wY63V118nM7WCy4a8Jp95+6ymh
         oClwWmKhJZpQClTMJbXL+Rs1znni1pTA7l/ebf5SfhlHAoIV5j1noeRM8zDWnxd4u3VT
         78G4a+a6S+ktKx8QRDODivGyosiyLZCyyBBVhi27f9dMVX4jxHNwZnBAN26m9K31yeU2
         ZRKLndtjIQI8EskAi4aKAvT7jQ+Zcv4N916chtypgg/fh6BY+svd7F9M1d2nbTCdWLqJ
         I06Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=OAcp+hVXGrVg6S12w7irLJta0bqWn/lwD3QDVECQugE=;
        b=DbMNjkZHUqw/B/urH/rj+jcVwjn1klDBRWB/baDLTsTNXA5ShL3Bsg/5Sz5MWF0/oS
         Gue/rCO/H2+LQhFf091Hc7TX8obJcn89s/uRzy54tSJBfa6Grg8QNgmyFNxpB+lamRSH
         AK+xNIA2KKaUg3XLxC2tZg9h69R4AGevFoX+bDg2vdHq9eoVwfzC43m+C3yh51kNE5Sh
         4ptHJLadNJiT+nOX/abY6qBISMcjmDlUtvuANFttX4E8RvT5fSRGUdjxraapwPFt9k3r
         HpGInRwUHwN3MvQFH0yd10kOvDXT3Z/509MJnI/9YYV/l96U3lNmmSFLb8ORWKom9gKV
         /JdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="K/DQWIcW";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OAcp+hVXGrVg6S12w7irLJta0bqWn/lwD3QDVECQugE=;
        b=gt0MG+kYtPh73puPo3OPaoIsLzG3bPCUXjG6XGlroRlnQhdRvNqUgZeW18HtNifGvF
         snYyIm/CKorDbm2TD5v/ifcExgWwVWEXC061zX2tRnjI6qA4kagdPVGZnL3Iyucn59R9
         s7srbD295LGTAQhA3Ga5KC2ML0vx6pRrgMedtvdxwYxCEW+RRp2hOvzaaFTmsQHPCJtg
         35N3OZeGIROexe4sctnleiLzsc0SpNxoI2Rip0+FD1uEfzE1uOe1jdqDMv9j4cboqHNY
         oh4+DKEpzLL8v/tko1+pxB9fpQ0nnYMgv30C9wky2PAfB+Dv2MgN9CwkEm80QpNBySBS
         YMNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OAcp+hVXGrVg6S12w7irLJta0bqWn/lwD3QDVECQugE=;
        b=c0LsX5+7Yuc/1g1dWnMr71qbIsbffr67iZSUEDeFJUhOMsmKFQ6edmD8Yas1XamL7t
         a4sXWto66hjMhdBx+MP/VRKIS+ngTDrs47MOPOuwgOXPfBL3Qq8etSkalaX05+Zw6j41
         VqGl1TNelBCHNrsEJ9KjDjtUr+eUygdfdFwCHE+bkYujsfw0w7yv1eB5lBOYWwLbu5Cd
         jHz6sLUWtkyghJJMwpWxJSLXugj1wDT2ena8ioaK5URfRvbbXFFVis61ZTO97GBb2WSl
         OocAVvaASpW4lwoB3R6Xo5ymScic3EHSO17SEP+/h11bc64vBoSbuyQIOMEy5JGCqqR2
         SE+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OAcp+hVXGrVg6S12w7irLJta0bqWn/lwD3QDVECQugE=;
        b=YwXF9ED/6YHMPtNvzqJmZzPfDp5+aKmH18ngtM0zovJ284Z4VZfYgaN8N0lddXWPa4
         9Aw0Wn1oVPpkbwtiedlz/F65RuRdyMXCjBNeD5ex1COisTl2VBTwGFQltzLRGTf6ROCV
         SpMxnBwOF/pFa9K7+0eWBAAxtxv5VVOaFWsKsF8KXeTgx8fR7qVqqaLI/RJWvq/5oPIJ
         87gHZqRq1rb2/XMQyYegnULUW2HvMtYDDLXi7LW4UMEm90uX4ipQNlP459xYQ2H4ZZ6n
         L6EVKNeRuP0AlhfPbtMJe5x+0fgVkCFOnNyGskg8TvR8MxiPAs5GZCXGKpubz3B3qpAC
         x+aQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWQ6Yx1hYYx/UM7FxTZRMtFBszaTpV/mmYq/2Eze6q7xZoskz8g
	Tc+dTVnLSjEIP4y+RmvfG1k=
X-Google-Smtp-Source: APXvYqws9dPgzOr94BmDQDFSNFajTNjr+sLkEk4OH/VQDprrCI4JEheIT2GD40hlSN9ETkR1xS7IFA==
X-Received: by 2002:ac2:5097:: with SMTP id f23mr11606663lfm.130.1565327756679;
        Thu, 08 Aug 2019 22:15:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:5053:: with SMTP id z19ls1108207lfj.7.gmail; Thu, 08 Aug
 2019 22:15:56 -0700 (PDT)
X-Received: by 2002:a19:7006:: with SMTP id h6mr11479833lfc.5.1565327756232;
        Thu, 08 Aug 2019 22:15:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565327756; cv=none;
        d=google.com; s=arc-20160816;
        b=EAUQ6A7RV3IwycOfBcjOMMNbCzSGSczHStN0wxu+KMuAvUD2cUDL3GFlBV9mCQLwBw
         0LYvG3w93Uqnpt0JRJdwAMPWyg1K75POg/LSdnnbiCI+HbCkmeIJPBT+U66vTemwnIto
         a4UdNuL8vOb/OxIyJdgJwLueMpkaZx3nkE2GIgncCenaNK+jyfO0oY5oogrzoYN4F8kO
         sKW8ow2q6qYtZmfY7mG56x9rHqLJotG0xoFTkCsP4hOe4OMyMobl8+eJvqlQ8b10UvYV
         5G03ZumxoqDaELbtAn5oX79pLUJa71Ml008RHUJRUTNrVZguqKrS4EGS6AwJdr9Blnk4
         HXpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mo9jl2fTO7MrBL73jImyv4V27EVzM5w8yQ4jscK8cvY=;
        b=qW4oGW4Z2U6brCMs+G15qTu4tQPxUM+DjbDl0/D6+59mz1jeO3dnJ/U6DLQ2gd9YYY
         Hle4MMntw8jpr/Cgf7oLOnbtt8bnStb4vGju9f6elL1JDG0L9qhWRwTZZSeKreKNI0wi
         JWRnxeo64iUCQnBT3WVhUYO9ADHOZA6IOWHqcHGENscF1svGt2ksu0O57odVXGAJhSeo
         RtxgvkWsm5npcpkPt6iBvOuFjLfntonDmjd9AemmSVAg210DWOKIA/aTtZE7zBkXkcXy
         azeXdkxPZ+plq3eQiW3h3I5Q6TxQ1jUSeDR8IE2n9ug6p7pv8T2S6Z2Zux6A5B6rudJV
         U2vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="K/DQWIcW";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id f26si4661532lfp.5.2019.08.08.22.15.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Aug 2019 22:15:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id s3so4394086wms.2
        for <clang-built-linux@googlegroups.com>; Thu, 08 Aug 2019 22:15:56 -0700 (PDT)
X-Received: by 2002:a7b:c155:: with SMTP id z21mr923969wmi.137.1565327755405;
        Thu, 08 Aug 2019 22:15:55 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id y16sm207953394wrg.85.2019.08.08.22.15.53
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 22:15:54 -0700 (PDT)
Date: Thu, 8 Aug 2019 22:15:52 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Guillaume Tucker <guillaume.tucker@collabora.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Mark Brown <broonie@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	kernel@collabora.com
Subject: Re: [PATCH RFC 1/1] kbuild: enable overriding the compiler using the
 environment
Message-ID: <20190809051552.GA44466@archlinux-threadripper>
References: <cover.1565297255.git.guillaume.tucker@collabora.com>
 <3885ccdcbdbe83eb367e8344584df944adc76e34.1565297255.git.guillaume.tucker@collabora.com>
 <CAKwvOdmOdJspcO8jqUhqR63-MOWkV3ZrVcCO6u=HG6peov8Htw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmOdJspcO8jqUhqR63-MOWkV3ZrVcCO6u=HG6peov8Htw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="K/DQWIcW";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 08, 2019 at 03:42:32PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Thu, Aug 8, 2019 at 2:07 PM Guillaume Tucker
> <guillaume.tucker@collabora.com> wrote:
> >
> > Only use gcc/g++ for HOSTCC, HOSTCXX and CC by default if they are not
> > already defined in the environment.  This fixes cases such as building
> > host tools with clang without having gcc installed.
> >
> > The issue was initially hit when running merge_config.sh with clang
> > only as it failed to build "HOSTCC scripts/basic/fixdep".
> 
> Thanks for the patch.  I don't quite follow the exact error.
> 
> When building with Clang, I usually do:
> 
> $ make CC=clang HOSTCC=clang ...
> 
> are you trying to fix the case where you do:
> 
> $ make CC=clang ...
> <no HOSTCC set>
> when GCC is not installed?  Because if so, I think it would be easier
> to just specify HOSTCC=clang, but maybe I'm misunderstanding the
> issue?

As I understand it,

$ make CC=clang HOSTCC=clang

works fine. What doesn't currently work is:

$ export CC=clang
$ export HOSTCC=clang
$ make

This is problematic because there is no way for CC, HOSTCC, and HOSTCXX
to be passed to make within scripts/kconfig/merge_config.sh.

A quick test before and after the patch:

$ ( export HOSTCC=clang; make -j$(nproc) O=out defconfig V=1 )
...
  gcc -Wp,-MD,scripts/kconfig/.conf.o.d -Wall -Wmissing-prototypes...
  gcc -Wp,-MD,scripts/kconfig/.confdata.o.d -Wall -Wmissing-prototypes...
...
$ ( export HOSTCC=clang; make -j$(nproc) O=out defconfig V=1 )
...
  clang -Wp,-MD,scripts/kconfig/.conf.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes...
  clang -Wp,-MD,scripts/kconfig/.confdata.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes...
...

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

I wonder if all variable should be converted to that scheme or just the
ones that are needed in this instance. I also wonder if this will cause
any issues with people who define these variables in their environment
already; if so, maybe merge_config.sh should be updated to support
passing CC, HOSTCC, and HOSTCXX to make.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190809051552.GA44466%40archlinux-threadripper.
