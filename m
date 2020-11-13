Return-Path: <clang-built-linux+bncBAABBL6HW76QKGQED5XL4HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E302B13EB
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 02:38:57 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id v10sf1288853pjg.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 17:38:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605231536; cv=pass;
        d=google.com; s=arc-20160816;
        b=qAFNFtqrcH38i6VaL7seYz2+hAYBrd4gy/Nd+714y+jdBKFC4K+tBGYSStJzlhFnf8
         zxuDKURiDNKMh99yiYIpcEfLlKB5A6TtwWvElhFRyT5FHzsjv7PNq2VUXy/PE+QFFsQI
         vU09pAvZqBnN8H6rcENanCyB2eyF8Kbs4zGmzEyKJ8T/NcgDGBvfFrkfSUxIGPofxtPF
         aXIvfrzJpd8eQAIabF3dryF7UeoFePkE5Po1VSz8Iq52XDeLu1YkViDbXAeigGC7+fZF
         jcxh+UqAKjXdkA1anniHPbsGXFCX8kFRaUgUVD4Di8P1t2Dxz0eGk4RhNU/H2mAcuIcG
         xs9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=EYXi76qLHAkixohpdKIfxxle24yiDiB5nLHzhXN1zIM=;
        b=Qlis36p2eqybd8j7JWh9wV9TpWWfIBPo5jCugai4kWHvbLWF/WJJWpqvs03MJ2CcZs
         PRubn/m5DHaFkiZGFRzcw+UBuKLw4gki6DCVUJP74UN1b3DZHYxAf/wXLdPsTF+1jMaq
         Q82Y4W0hlEnD3S8SIIh9Y4iWxdKe6DzFaq0JsGPRuxJfh/NJtGkOFFG7NeyEAn8666CE
         PYwuGhXlv7gF6i1LF/ESBuSIaZrcg9DbhiAmpHekTtYVWuII1Ya8JXaoU/T3ey7EKcAt
         fI/ECUj0O4wbSG+y8fJtziH9YT8p9eOBtIWyAU2VPHF3TbCulQlgAOd8hivQ7Qtw/Rkp
         lLGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=Dr1IhRvv;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EYXi76qLHAkixohpdKIfxxle24yiDiB5nLHzhXN1zIM=;
        b=Cu6Vm8Oext5UOu3wa+wbNbXI5xT1u3xARYvYZjeZdrJo45zIsgu+9lZ/Q3Mh0bSDvM
         yywv0KdSlDO1D6NvrO7VVhfb3dUgjqy0acIPFvyNW/4wpesFhNsOwfYaR+eQfgsMgIYA
         KcGg1s2olqgzPV+MFpVLXIuEIjBdLIYIkZkC1cnqZF2GKN09ZEWPCHqFrVYzsdiqFBd3
         AmS3RML9iq/c59Ax7GsoDNJoV3DA9Ex/wiJAboYUl/MqXHuYasJxDj584rWUySsvGzpK
         QGOkJJl/MZpFVGM/k3cGlah3+D0JGiALsxipoKKJE2YIoe/Ax3nJxFIaGxc5dbgMmOXQ
         2M3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EYXi76qLHAkixohpdKIfxxle24yiDiB5nLHzhXN1zIM=;
        b=Ny6A4LPrHqRrlu27rCM8fUpSC4pLROYnm/Gdp5fVyeHG5HKhUsoyECtIgOyUYuj3mK
         e0JkPMlsDt/FPbNboqY0j8sW22nSBashzDL051cF+xP26OwE9aVuCWXdIxlZJ26Yu1wL
         wKFhzOTmE7dXwnnI7MBtoTPxVoLrUeFD6qDl+VJx/NyG1+vnlrZAY7OERC2xksUynVfo
         AefbEwVXEMsgcL+lSVZu0VaVbbydoBS203Uv/vdQYX4uE6p4a4hlz+QONRfxiqbcy7kw
         574Gmy6+9wwd7WG6n6j6p9K6QdIQVVTKrxb+pj+lIEL1geeXptQIHyaDSGenxPxUcd06
         aepA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CiBzbdjSNP8sQPdg2IkfjPWLNXCAW11z1dn+e6OPVW0e1KsxL
	ZGiMiKox2P+Aqq0cgdXwOUo=
X-Google-Smtp-Source: ABdhPJzPpunkWyo23yT8X/q67djNAwQt21YZa7yByhwaQd+Cpa0CxbtVdpaEZVQaWb7qZllUBlj28A==
X-Received: by 2002:a62:2c16:0:b029:15d:8d2:2e6d with SMTP id s22-20020a622c160000b029015d08d22e6dmr2078371pfs.52.1605231536098;
        Thu, 12 Nov 2020 17:38:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d98:: with SMTP id v24ls2249275plo.4.gmail; Thu, 12
 Nov 2020 17:38:55 -0800 (PST)
X-Received: by 2002:a17:90b:3595:: with SMTP id mm21mr108611pjb.204.1605231535618;
        Thu, 12 Nov 2020 17:38:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605231535; cv=none;
        d=google.com; s=arc-20160816;
        b=lG7CvjI2wzNZQncbPwhn1xd/T0e2QHec9GTSsuIy0hdzOaw3doOEtJN/H/lJyY1ySB
         R0LsqCA+KNjaqjukrHVjNQLwFhQ6IjnljUBfBe5mE6TrACFEL05S3PVwpbJl3JlbvX/i
         Hfm8ePbwmM0UOGEVikS7VgGuH4WFMHyELGQ9edIzZWJ1X6Rhj/GUJp7y5ZcpSxpSGzgz
         tgSstrheNnhLAB8EFVD4cmAQF6RhWGS1oDGIXPq24FnkxZ5Y/BcNpfDkxU4txxVYQB59
         ndVB5QLkrxo6L/Dn5rEKkJ4PYz/sDgttkigbLHZ2AzCiQKcdjkXND1HwyQciwqeLXaf2
         oKtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=LHDRWxltoY9Yzek2U2YM/IJ9PiLbIoLYK2g+Xufu3xQ=;
        b=PGZotf6Wix8H7ol4gwbpFbnnr4IncXY3O2+KI/TMbSrDHNRfVM3yG/Q6yQiyOn6qgp
         YeS+mcfVE8pzXq3Ox6ppjv1tctzcxURba746oS9y/dDA5mrz/Ce9kDb9SFC2Nh8vZ6zA
         X7eOTG7Wmo9K0oeCxWe3scLhZ2ZzqfvXnFCbSXLR4/amHKLo6HQs8RiwCOEB2wdikgXH
         hdApfawjlWFBVv85ElpeLg87CVJLVqDSKcd30oycpiScrYaauSGJLSTAYo0ysRWE88Ts
         /lhTXLudM/RBii5slOFDlR8Kh1vlhrWYEjWTr93iUR3zr4cNfOtRbJS18M6LhAomIfnN
         rAaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=Dr1IhRvv;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id i5si1023850pjz.1.2020.11.12.17.38.55
        for <clang-built-linux@googlegroups.com>;
        Thu, 12 Nov 2020 17:38:55 -0800 (PST)
Received-SPF: pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by linux.microsoft.com (Postfix) with ESMTPSA id EA16020C2887
	for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 17:38:54 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com EA16020C2887
Received: by mail-qk1-f180.google.com with SMTP id d28so7504355qka.11
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 17:38:54 -0800 (PST)
X-Received: by 2002:a05:620a:2106:: with SMTP id l6mr2787457qkl.302.1605231533991;
 Thu, 12 Nov 2020 17:38:53 -0800 (PST)
MIME-Version: 1.0
References: <20201110202746.9690-1-mcroce@linux.microsoft.com>
 <20201112035023.974748-1-natechancellor@gmail.com> <20201112151320.e0153ace2f2eb5b59eabbdcb@linux-foundation.org>
 <CAFnufp1j6ZzxLJA2x28BdxbTtnN_KtnXB49ibPcbze=B2ru3aA@mail.gmail.com> <20201112171826.0fa3c6158f3c2780f90faafe@linux-foundation.org>
In-Reply-To: <20201112171826.0fa3c6158f3c2780f90faafe@linux-foundation.org>
From: Matteo Croce <mcroce@linux.microsoft.com>
Date: Fri, 13 Nov 2020 02:38:18 +0100
X-Gmail-Original-Message-ID: <CAFnufp1OrGeGgUn9_2V9HMtfb-7GwuEwz4+Co_W8ehcVOQVscw@mail.gmail.com>
Message-ID: <CAFnufp1OrGeGgUn9_2V9HMtfb-7GwuEwz4+Co_W8ehcVOQVscw@mail.gmail.com>
Subject: Re: [PATCH] reboot: Fix variable assignments in type_store
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org, 
	Guenter Roeck <linux@roeck-us.net>, Pavel Tatashin <pasha.tatashin@soleen.com>, 
	Petr Mladek <pmladek@suse.com>, Mike Rapoport <rppt@kernel.org>, 
	Tyler Hicks <tyhicks@linux.microsoft.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mcroce@linux.microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux.microsoft.com header.s=default header.b=Dr1IhRvv;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates
 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
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

On Fri, Nov 13, 2020 at 2:18 AM Andrew Morton <akpm@linux-foundation.org> wrote:
>
> On Fri, 13 Nov 2020 01:20:29 +0100 Matteo Croce <mcroce@linux.microsoft.com> wrote:
>
> > While writing the script I found that in the documentation I left for
> > 'type' the values from
> > Documentation/admin-guide/kernel-parameters.txt, which is 'pci' for
> > cf9_force reboot.
> > While at it, should we update the doc with the values 'cf9_force' and
> > 'cf9_safe', or rename to 'pci' and 'pci_safe' to be coherent with the
> > kernel cmdline?
>
> I looked at Documentation/admin-guide/kernel-parameters.txt's "reboot="
> section and decided that I don't understand your above words :( Can you
> please expand on all of this?  Simple akpm-compatible words ;)
>

Heh sorry :)

I misread the code, I thought that BOOT_CF9_SAFE was user selectable
because of the enum value:

enum reboot_type {
...
BOOT_CF9_FORCE = 'p',
BOOT_CF9_SAFE = 'q',
};

But when parsing the cmdline, 'q' is simply ignored, so it's just an
internal flag.
It's used only by arch/x86/kernel/reboot.c in the loop which tries to
reboot in different modes until it succeeds.

The doc is right, never mind.

At this point, since 'pci' enables BOOT_CF9_FORCE type and
BOOT_CF9_SAFE is not user selectable, should I simply leave only
'pci'?
This way, we'll have the same set of options for both sysfs and kernel cmdline.

-- 
per aspera ad upstream

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFnufp1OrGeGgUn9_2V9HMtfb-7GwuEwz4%2BCo_W8ehcVOQVscw%40mail.gmail.com.
