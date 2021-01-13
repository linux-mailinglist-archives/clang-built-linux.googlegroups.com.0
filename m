Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBDPG7T7QKGQEAQXVIUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 421C72F516A
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 18:51:11 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id v5sf1743051pjt.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 09:51:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610560270; cv=pass;
        d=google.com; s=arc-20160816;
        b=dX/toplrt77Wcujb+7Bdx5euFP7/qU7jL2n37IMIRVsXeB6xRHzuDihh5nud/MA0FG
         qV68NmkAbHpKZqjx+uUdgNmzierdLhpJ/Pwl0ClTD1xUN5SvukQxG/2Wy9KB9Wny9MS9
         aE2hpRvUdh4xMFd/BUKCtTKT1G6jDv8w3kKBnBTyS9+5ZhGAxdvhJM/ImzIlcN5Rh/nH
         ml+PtiMadGcRM2mn/Lr/HGPZD6RJz74z7yaI6B0fGLtsB9c/lYjm2itcgzA8SJs675m+
         HBu+IHQcNZaekPwOLEAlm76WME7SnON8WmiVSIQx+pJk7LmyOcHwuNcBF/pS7hHR1zMf
         mewA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=n1kRExQS1DWJ/EajgJR6loYrnlEYwz+srG9ZPvWRg5Q=;
        b=t9OK1z+8kfoXK59iRCYnjopUxW8Qy3HchkrTkQ/ZqLYFeRVusLYFV6hc3NHAnJFGmh
         VCCYGzYZipwmP+YiINk70F+3T+On/wBlP6fU/rqoh3ZDWtZHeMXhiXGrkaMc+w0bExNn
         toHyA8gel9mUDMEtWAH4fY2T3uUrp0+V93+rG530Zc7yPlisU4lJGLZjGuU5/RsUpvZz
         8cLCAEy+3oe6Uq68Z4Rw4GNXgTIXsdyRy55ghHx3iR1fVXvkBe0jBwEwZM+1ddyz+xFy
         etu5c5Addm21fHJDMEO21c4K4Ti+ymciT85Am0loAGACuJw3oVXHdDQ/flW0i32Dk0ho
         iJSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BSVH9q3l;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n1kRExQS1DWJ/EajgJR6loYrnlEYwz+srG9ZPvWRg5Q=;
        b=jljytxgMZxrQRFDwomAjz12dPy+i/3ixzNZvzE0tjG/05pimExGRXIUP36icgE4pRs
         o/2X40e/arxwqrW9I2ZSf8BoTCX/IkX4shM+Cyojw/V1vp8y01kztFePLnAsqe9YvyjX
         SciqqHT2xMnvzKIwtvYhg5uzkRt5dKR/Lz9n6hBsewiZnVsOoGy2nIu36CTc/XrwacKl
         UNpifhTQOAzw7qFpTUn2+REEg1mtX8iupcIi9l8VUEqM/P+D/20EJFf7OuDlMT5W6ZL7
         gWx0bDPSTZowPx6S/nIb6xy9oH6OyDYO01KVa5KGo3U1LsRtMlrf9uh6lt0Vnx/0iJHP
         wwpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n1kRExQS1DWJ/EajgJR6loYrnlEYwz+srG9ZPvWRg5Q=;
        b=SGsJETe4fDBmAWxuQ4Yx0xZzy55KvEChtEGWVugBgQLZRE6D13eTPqGhaoh6AsZCZ8
         cY/yNqC7B/FJBgrnbZTuTUzeiMgZqL5CvE5EO1hoqS/sDp2+9gCYbjYz/GDWe3gv8Irs
         UtQ048c5pDXpIX5YNKP2kgkUr5yCs8KU1pllaGaKgIUsk3PsoK0Q/8qfqTdfi01v2ECk
         GvVqjJMRcPoCgyZhDURDpA6roQbw9viCqt9jgOfyWZvDnSmDeR+M0OMZrJqvfe02XGF6
         ufw+iVKBW/82gAG+01jEHp1FjKfXKcbV6joM72EEBQQxVnwKrEtrc5qiWuJgUEKkzsVm
         ZhJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+wFkTNsMQbjpHTuSvDzM8GtpvKcBHpRcpvqBxh8w11Nvx/a5j
	6G1jVy7PEk15JIhq4971ipU=
X-Google-Smtp-Source: ABdhPJxEk2ynK7sBInP9zemmxHp8mCfKOBhQyP6gmJix7QUMx1hVGGpx9ZkCeIkibqLz2B9N6dDRvA==
X-Received: by 2002:a17:902:ea94:b029:da:a547:b6a6 with SMTP id x20-20020a170902ea94b02900daa547b6a6mr3550293plb.78.1610560269998;
        Wed, 13 Jan 2021 09:51:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4704:: with SMTP id u4ls1120489pga.0.gmail; Wed, 13 Jan
 2021 09:51:09 -0800 (PST)
X-Received: by 2002:a62:bd05:0:b029:1ab:6d2:5edf with SMTP id a5-20020a62bd050000b02901ab06d25edfmr3271928pff.32.1610560269332;
        Wed, 13 Jan 2021 09:51:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610560269; cv=none;
        d=google.com; s=arc-20160816;
        b=VgHPhjBVuXs5kuQH+JqkZ7tovxAA+w3ufZLjRc7WC+d8U90FF4n8Bf2OLpjsPboyj/
         e2VLT50D2uleTXjc4nLQ9h5XF0mHvglM2GAQcP4o2s+kikmUnsOZIuvLqVd8pOL1jDqs
         n7p3gR119K6h3GZqMVEM8X5oQN+fajcpXQMQgUvlcyYW0VK5KKFZH07ZggsOW0Rzn2T5
         WH3I7IgJagK8+yTeAA8K2/NHpy8z+jwNDkJc/2BQf1ROXehvRisTYTRhZyXEWvnuWmlZ
         VI0qE4wXXtrkUkVY7cMZvRQDt6GL6YDmCeNLSXHpSuuMXW3Od8Jplgqc6F+N1DrOwI9A
         o/DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gWrTZtferi/tL7b0maa7TlVLca1c/CCsj4LEQxQrQAs=;
        b=yBHqMPzPnYTVzTaAlOb70nrxbh9m0awD+hv4uQSCfXG0eOU4rXPMWHBE83v5K0PJ1K
         2iAaI8ne1LM10Wu9ZdDUXfc870CKpmO03Bu6GOgzzoixTpXl/jWfmIBfGt6wdVEbq4DV
         Nb/xO6lwDvGp5vX2bm0glxLi1vM/I1iWlwCMlswiO0NN+bPXwfXRn2+jPTPjorNH05LQ
         EQQFkyxpXo559NUyflcuW56svZxUTOTj3IVG8HprCBkSpM3N0RcHMJAFhwmUknvtjlqP
         +p6p2znFUpFKFHGtYaU/ABnOUBlcfOtM9yHLL0cYEev6hoX+OtlOunnJ2SM+jVcFLMhV
         MWkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BSVH9q3l;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t22si218380pjg.2.2021.01.13.09.51.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Jan 2021 09:51:09 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B5B7821534;
	Wed, 13 Jan 2021 17:51:08 +0000 (UTC)
Date: Wed, 13 Jan 2021 12:51:07 -0500
From: Sasha Levin <sashal@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Borislav Petkov <bp@suse.de>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Alistair Delva <adelva@google.com>
Subject: Re: 78762b0e79bc for linux-5.4.y
Message-ID: <20210113175107.GT4035784@sasha-vm>
References: <CAKwvOd=F_wWLxhnV3J8jx1L3SXPd8NFYyOKzAh7rL0iRb_aNyA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOd=F_wWLxhnV3J8jx1L3SXPd8NFYyOKzAh7rL0iRb_aNyA@mail.gmail.com>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BSVH9q3l;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Jan 11, 2021 at 03:41:37PM -0800, Nick Desaulniers wrote:
>Please consider applying the following patch for LLVM_IAS=1 support
>for Android's i386 cuttlefish virtual device:
>commit 78762b0e79bc ("x86/asm/32: Add ENDs to some functions and
>relabel with SYM_CODE_*")
>which first landed in v5.5-rc1.
>
>There was a small conflict in arch/x86/xen/xen-asm_32.S due to the
>order of backports that was trivial to resolve.  You can see the list
>of commits to it in linux-5.7.y:
>https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/log/arch/x86/xen/xen-asm_32.S?h=linux-5.7.y
>as arch/x86/xen/xen-asm_32.S was removed in
>commit a13f2ef168cb ("x86/xen: remove 32-bit Xen PV guest support") in v5.9-rc1.

Queued up, thanks!

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113175107.GT4035784%40sasha-vm.
