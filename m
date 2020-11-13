Return-Path: <clang-built-linux+bncBCT4XGV33UIBBZN5W76QKGQEN3JCF7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4342B13C0
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 02:18:30 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id cu18sf4275787qvb.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 17:18:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605230310; cv=pass;
        d=google.com; s=arc-20160816;
        b=UEH6LHtlBCHYrOh5PToeJYcZ9JV/LruuGOI8tJa6ydvmWwKWlXcv5HBNzc9vCuoE8N
         0/gDO3EGR336dnyL9f6sJI3mKMKbYn/EwZVIB2KWIncXSjDw6OhPSwg02bncY2EfVJjf
         rhamKKXgsAR85zfKX7Ph1cCYRTu+8LlknmwKlenfB24MA1TZ1gCuHxYM9yrh38o4PbXq
         7RPPm2SXnju5VgTCee0k+k0mw4JNJ0rVATllq6WvdWIm8GXsiVqbUhiG5RlHdyL3+Mj8
         MGlSBzDFYearZnhOJNNWHmuE33rwMzRdVFitfLpotjvErtPVlE8RV2ESY//l3QUzBLBn
         GtZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=9WYc8Gz93ZrG2x2I1+3xuU6Toc5B6zsxevaWwyCM9qQ=;
        b=Aw5oHWLyAJpI4OQz9Fb1rddCqKCSEtFl6LdjgU+YuZ14XRNwyi79iDP9ZCyfpwbSK1
         ExbXvWFuRy7ozrqPu0hdwacee9nAR8K9nWaZplgbPAbGazqa8WQiO9pPxY/6jRHTC3TT
         QKzGv63wrZ/1LyifzeSt5a1pLjk0Kcq0J/MZbDX0riuQ5RyoNbb/6qWN6EcFs7Rey+Fd
         UwsHMy6FRmJA0CvVXIJqbi/1f7dJttrhKxEsvyCzLP8/ijj0nqM2CNik6zXqfhyIiQ/9
         L65nkDzmjeQaf8870S15bDDTTZnyRb5t5m0wz8hTOAap/b7kT73xrqbp2Lj84bsSPkYx
         dUXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=M8uOspxh;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9WYc8Gz93ZrG2x2I1+3xuU6Toc5B6zsxevaWwyCM9qQ=;
        b=Co9i+1bnVRIEC4qYhhuThgwr/wIizPsVKE6cm6+F5A8lJvQ7t6oM/UG6t+BEQ+RKGx
         KbVJvbT7TCXhQn44QTV5et88YPSWi7XpUjKueFZK689fAgSN3coVfcaMyCOPFInAkaNz
         sq9y3CEswZv/0eL+c9eKSpW2Nwc9PN123r5D8mEaytUfUbsvmqOtuS3OPPvuCMA9NSOE
         u5quFUosQTCnLuOu6+Ana7JyxMuoLtbaMP6O5g3TNhwqkfHcMaq1nYkMqIFZG1vq+12P
         fciPHV+QLHFMrLiBaUIBoDe/Icaj3b/N6anroN9jcj7tdPUbsXJ4oT5YROggL6IiKPDu
         Gn3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9WYc8Gz93ZrG2x2I1+3xuU6Toc5B6zsxevaWwyCM9qQ=;
        b=DQ3n4+twV8BcHdZRGqVFxtVQpbclbL0UyZ51K8Q8qHGGtsneoAbie0EeGafnEQZvuM
         jKLgykUtFAwhcegEi+XpLiI70a6DS4A6xKsxDvFGUY6ZyMrBCsx0QYRGPywjxuGk9oNi
         30hfB3Auid5NTQh7IOMNv2lMxLBS3rWL8nOnGzQtsd77djLB/Wt7jH8TT9mrN1tDvmzU
         BUO44d5t//PGrOrmd/uqAQVwhYWhrLhYSHICbB/qgfF6bGP7AbOriLendyLqCSnTHsPp
         9axCIt4Ct3fRcUyBNRrydOcddywZ4x1sskN+fy/dyWDrYdIEoSaR78jxSkGwRCH6IaeF
         klMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WJMIv99CRV0se/iPUT0G+bzIPtKRLjdqg4rMltAMw2D7B02/v
	ONjJsSoq4evkM/gByyh/+2Y=
X-Google-Smtp-Source: ABdhPJwlKnGkiGkMxlzzMrf8rLhXLBxy0hWByYMQPakkr3XD0TOYo0Nrn+MWbH0B9ChmofrNSf0DvA==
X-Received: by 2002:a37:7b85:: with SMTP id w127mr2681034qkc.59.1605230309986;
        Thu, 12 Nov 2020 17:18:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4b69:: with SMTP id g9ls1644909qts.11.gmail; Thu, 12 Nov
 2020 17:18:29 -0800 (PST)
X-Received: by 2002:ac8:934:: with SMTP id t49mr2145923qth.129.1605230309493;
        Thu, 12 Nov 2020 17:18:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605230309; cv=none;
        d=google.com; s=arc-20160816;
        b=y66I7ri36xiw6IHgXy6aEq7Un5wrGCztUJ08dxlwZ94WeRgiDvBH3IfRFbeR+ars4e
         j8Lj0AVBDtT+3/MLEka4POo3ZTKm3gg1eSec9YwML6cMqf51OmWT9I95LQ0T3Ls30j+T
         3yoIUYgUCm2U8VRB/rSWfBZ5ETByf88LJ3gyLTF3495Irjstz7dGJM+KNBcf320vAvgR
         QkM5LRRM6wRLXvJsH0ZKiHlIXubhV2BF+6atiV5cLzdFqO/zI+T+asrS9ocsttp5gfss
         fUJEeagzmqSbAuG8fCJ0wuzR8RBH0XCqiqWKkKFBohuqvN4OjM7oxjGIy6VOmL4SsYVV
         nd0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1/Jomktyw9D+msl3Rk0iZvncmBBF7ZzLeTa/uIS1Xzg=;
        b=UQuTq6EcozJe5tK913OddOEO/is0Ve+hJdRIFBx5dFt5F3aB+3ZHLpIOqj8HGbMZm9
         anuyxmMT9QKvx7fxht0P0hrK5cJC5QgUTA78d6nKPPE4L6q1eaUchxpa6P4/jDFqG0aN
         ABVhWQ5Pu3WBQyM7gyU5L74Z4OhnTFykFzzmb88UvjFUbSrP4gF0Agg6TtdWetVb/X4l
         RDTzLF4Fkwsh7gA2wNCv6UTTxHA9RvkycKjWiziNtbUL5/rOOf+qFSD9/PvNMp65etlV
         rMFB/DTHy4tNwybotRY390kMQ7Lx5qyfNYUWPdMDR7WbB8zKbXswJnGmFGatJsHFU1BD
         fM9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=M8uOspxh;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w30si495314qkw.2.2020.11.12.17.18.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 17:18:29 -0800 (PST)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9B6FD216C4;
	Fri, 13 Nov 2020 01:18:27 +0000 (UTC)
Date: Thu, 12 Nov 2020 17:18:26 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Matteo Croce <mcroce@linux.microsoft.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann
 <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
 linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>, Pavel
 Tatashin <pasha.tatashin@soleen.com>, Petr Mladek <pmladek@suse.com>, Mike
 Rapoport <rppt@kernel.org>, Tyler Hicks <tyhicks@linux.microsoft.com>, Nick
 Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] reboot: Fix variable assignments in type_store
Message-Id: <20201112171826.0fa3c6158f3c2780f90faafe@linux-foundation.org>
In-Reply-To: <CAFnufp1j6ZzxLJA2x28BdxbTtnN_KtnXB49ibPcbze=B2ru3aA@mail.gmail.com>
References: <20201110202746.9690-1-mcroce@linux.microsoft.com>
	<20201112035023.974748-1-natechancellor@gmail.com>
	<20201112151320.e0153ace2f2eb5b59eabbdcb@linux-foundation.org>
	<CAFnufp1j6ZzxLJA2x28BdxbTtnN_KtnXB49ibPcbze=B2ru3aA@mail.gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=M8uOspxh;       spf=pass
 (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Fri, 13 Nov 2020 01:20:29 +0100 Matteo Croce <mcroce@linux.microsoft.com> wrote:

> While writing the script I found that in the documentation I left for
> 'type' the values from
> Documentation/admin-guide/kernel-parameters.txt, which is 'pci' for
> cf9_force reboot.
> While at it, should we update the doc with the values 'cf9_force' and
> 'cf9_safe', or rename to 'pci' and 'pci_safe' to be coherent with the
> kernel cmdline?

I looked at Documentation/admin-guide/kernel-parameters.txt's "reboot="
section and decided that I don't understand your above words :( Can you
please expand on all of this?  Simple akpm-compatible words ;)

> In any case, kernel-parameters.txt doesn't mention that reboot=q does
> the 'cf9_safe' reboot type, so it must be fixed anyway.

Thanks for noticing.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112171826.0fa3c6158f3c2780f90faafe%40linux-foundation.org.
