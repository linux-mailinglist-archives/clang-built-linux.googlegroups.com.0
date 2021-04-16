Return-Path: <clang-built-linux+bncBAABBY5V42BQMGQEPVMCCDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5543621D6
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 16:10:44 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id l25-20020a6357190000b02901f6df0d646esf3026823pgb.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 07:10:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618582243; cv=pass;
        d=google.com; s=arc-20160816;
        b=WiJyeRvdThodd5F0/n7n5B4nWJnBl673ytISd6Jj3hQ06DVm9x7VGQCH14wZxCYj5i
         7i9LRCWVPqNfj0AG9dECWRzzq3SNHkCSVoahZm5YgPkraDwteuG7HOc0ZdIX6wd7+N0a
         6y7/yuMwJUbh4PYw2x0lh6nEC8H5RtChWz7DbxWVN910OGNFqLL+uV+zTly+K6zuSgS/
         tFRC3Gmti1LgTNZzPN4Eih88SMqZ40B45QGwiZYZXBfB2M1640ms14VD/dlq9So0dPcD
         l473OwbinraxFRJ7brhRi/X8Z/nkQwywC9ZIT4Gzp/QLOmvTpVUnWDLi4IqffrW4jG0v
         tYzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=jGbi+bcnLl9Y0auQP4Pigxe2a5PjAZPJ89FMZnJyg4I=;
        b=MVQQmu12Sp0yHq/Mxtt5xLm+lm3LnNK7oX6ylYtHVnTEogjfGP57t10hbNXILoXblf
         5aGWMhTZDCFCnC4DF5ZkJj+rFtlFcC6jezS2boydr/BRyBn1PaPbfrZYF/kQx1DdFMzp
         /b0PhhGxCGYeBYmWWDXmZDUrAxJ9ulA0Yz7J8jP67yF6vQWFr64N1zM5LEgRL4XHBExO
         ZrPJs2PUY9p3s5EEIKlMlWlRPeX+Vs6YGIpeGLm2zhu0725lxLbANeBtLazw/1hrYnwA
         8WEBvpV40dg40Sun2pr159TUUqRm+txGh0rsBWGcpCr0q03cE4oj9iufNsePDkdsda57
         yasQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="bWtljR/0";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jGbi+bcnLl9Y0auQP4Pigxe2a5PjAZPJ89FMZnJyg4I=;
        b=Kd37hTaB5Rk9DvX6zH6zX3ef7uRInI+2oH25IehtiPxIB219U4mrny3VoHopGKxNNb
         xmKBWBnYJukNha4WV4FrCa3Ms/e7ltKKax5uPIcKTvjK99FW0+oQ3OJQ9p0v418cyQCi
         gL30MvSu03TJcEfw5KAeYIqKD2ZUWxC4kSnX9CD2Z49n5qJIUlFmpiBuSbz7gMtfNVQS
         Jl10ME/nwRTzeRg2UAFQDp4GNZltC0SfKAaHL1fiFGrbtwjlMfYkn5N9bwbV1oLM6n0L
         ZT0TgOMM+mwbgSOc5dG71292Q+TGZCQm8KLVOsWnoYmr6Q4BHgJdo+mumb0HynSQX8BR
         yqjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jGbi+bcnLl9Y0auQP4Pigxe2a5PjAZPJ89FMZnJyg4I=;
        b=tJ58zNPYeRHXDXDy5Kl/ixkyrb5mPyRwbtXDNSTkqYLZjFqn06EP5O0eacKSsBSiFi
         drARbG/GyqDX7yO76h6TqDPGxYcurfM3inlItaZY2eem9wICf/rWzBY5NuxqrSzGVToP
         JzZ1FbzAvws+lXzsrkCO40PQm20qeN0jL3x684RcIde5mOz9Y4czqW5UvhaCOSNdVFfy
         wXtrR6bpZrePx4BCu8v7C/He3Gzt9TbVn1AzTscpxH5NUJWsW4m2i3Uhvq0xC1Sm90JD
         CS9DYu+u32DXv44QnjemNFTJZ1Cyl8prp60s4f0p+cA5iwUu+tUAwqDe76BcAeB+XQQv
         UApg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZeMv07qxGVJlSs28qlS4inMndKCk0QXsOK4irNqzGJc8WZdQQ
	2UvmzVbo/Hdxvdqr3kLQJUQ=
X-Google-Smtp-Source: ABdhPJxaCZHQ1XDjPJMJ5fQj4HdidEcDyDpDLVRTjgjiuKPSXAleCYNd5Sx0uTGF4qhvxfJbS7DceA==
X-Received: by 2002:a17:902:d507:b029:e7:370d:b3c2 with SMTP id b7-20020a170902d507b02900e7370db3c2mr9957647plg.73.1618582243471;
        Fri, 16 Apr 2021 07:10:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:860c:: with SMTP id f12ls5161251plo.5.gmail; Fri, 16
 Apr 2021 07:10:43 -0700 (PDT)
X-Received: by 2002:a17:90b:4d05:: with SMTP id mw5mr9951229pjb.236.1618582243062;
        Fri, 16 Apr 2021 07:10:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618582243; cv=none;
        d=google.com; s=arc-20160816;
        b=sUjxS19STvaEyrhmVg+h1IKYU/nIJimbjFRK5olbk7Oxpps70/hn7ofAtmE2uc/ybf
         kkHcQRm296+iQHRiZ4uIiH+zDxqNvK0qy5EvkTuyDXkt8j2eSPXk7aHBUSz3/Xs3O47C
         gYyJRqKurh3t9kpHs7Bi30e0a9AYMOw+tCIyFFdw5AK7lGz32WOEdWoPv096o+Gg4fdN
         fk7BEwOTOTk7ut3r2As0JCmIfGLq8Ij2BmdyEQuVGQGFi99RPsKEqt2D9fkT3D72/LZV
         A3Mw2fFDgBtTLR5kjsXGZLMe3UzwGI06fteZDanj3R84nO3q+wprVTgC5egzYOZqRvtk
         ol0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xBCP/g8wCu0DO7eDhYVbzqfgptXdXdUtIAsYTHxltHc=;
        b=OebfjDNSShE30PONUo178mff1otooK1k9qUYeMO0uzSNPKhaomSeQBxhxnC5rzuFNa
         y1OLu2A+h+Er6UNmct6L2ImseKsUInzMRoUEe6ef9knaniv+t6P0oQSg0Tg7UqwanQ86
         +ZGJgajSeZojCbBQoT3PkhNOFUiCoUK40CuKSKTV0L6F8hT0YAxXWuQhynUF+OUyA/w9
         Z+bP+Tbmcgbs8OriNYh3KfsFGbLnj6UEh/GHUeFI64kilPXj2E41oqG1gAlvwvm3hv06
         +PUDL74r5S0UTHU72qL8XuMD2EyShmiierQATftb9tLmvf+4MztG+zrTP7Zp0dr5TFzw
         0wgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="bWtljR/0";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id fy20si297444pjb.2.2021.04.16.07.10.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 07:10:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B6BF9611ED
	for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 14:10:42 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id y5-20020a05600c3645b0290132b13aaa3bso2551274wmq.1
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 07:10:42 -0700 (PDT)
X-Received: by 2002:a7b:c14a:: with SMTP id z10mr8250595wmi.75.1618582241293;
 Fri, 16 Apr 2021 07:10:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210409185105.188284-3-willy@infradead.org> <202104100656.N7EVvkNZ-lkp@intel.com>
 <20210410024313.GX2531743@casper.infradead.org> <20210410082158.79ad09a6@carbon>
 <CAC_iWjLXZ6-hhvmvee6r4R_N64u-hrnLqE_CSS1nQk+YaMQQnA@mail.gmail.com> <ab9f1a6c-4099-2b59-457d-fcc45d2396f4@ti.com>
In-Reply-To: <ab9f1a6c-4099-2b59-457d-fcc45d2396f4@ti.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 16 Apr 2021 16:10:37 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1+Dpu3ef+VYA+owTVGoGqfK6APbYbLSH1_ZKT0aMYQCw@mail.gmail.com>
Message-ID: <CAK8P3a1+Dpu3ef+VYA+owTVGoGqfK6APbYbLSH1_ZKT0aMYQCw@mail.gmail.com>
Subject: Re: Bogus struct page layout on 32-bit
To: Grygorii Strashko <grygorii.strashko@ti.com>
Cc: Ilias Apalodimas <ilias.apalodimas@linaro.org>, Jesper Dangaard Brouer <brouer@redhat.com>, 
	Christoph Hellwig <hch@lst.de>, Matthew Wilcox <willy@infradead.org>, kernel test robot <lkp@intel.com>, 
	Linux-MM <linux-mm@kvack.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, open list <linux-kernel@vger.kernel.org>, 
	linux-fsdevel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	linuxppc-dev@lists.ozlabs.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"David S. Miller" <davem@davemloft.net>, Matteo Croce <mcroce@linux.microsoft.com>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="bWtljR/0";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Apr 16, 2021 at 11:27 AM 'Grygorii Strashko' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> On 10/04/2021 11:52, Ilias Apalodimas wrote:
> > +CC Grygorii for the cpsw part as Ivan's email is not valid anymore
> The TI platforms am3/4/5 (cpsw) and Keystone 2 (netcp) can do only 32bit DMA even in case of LPAE (dma-ranges are used).
> Originally, as I remember, CONFIG_ARCH_DMA_ADDR_T_64BIT has not been selected for the LPAE case
> on TI platforms and the fact that it became set is the result of multi-paltform/allXXXconfig/DMA
> optimizations and unification.
> (just checked - not set in 4.14)
>
> Probable commit 4965a68780c5 ("arch: define the ARCH_DMA_ADDR_T_64BIT config symbol in lib/Kconfig").

I completely missed this change in the past, and I don't really agree
with it either.

Most 32-bit Arm platforms are in fact limited to 32-bit DMA, even when they have
MMIO or RAM areas above the 4GB boundary that require LPAE.

> The TI drivers have been updated, finally to accept ARCH_DMA_ADDR_T_64BIT=y by using
> things like (__force u32) for example.
>
> Honestly, I've done sanity check of CPSW with LPAE=y (ARCH_DMA_ADDR_T_64BIT=y) very long time ago.

This is of course a good idea, drivers should work with any
combination of 32-bit
or 64-bit phys_addr_t and dma_addr_t.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1%2BDpu3ef%2BVYA%2BowTVGoGqfK6APbYbLSH1_ZKT0aMYQCw%40mail.gmail.com.
