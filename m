Return-Path: <clang-built-linux+bncBDXJDZXNUMORB34SZD4AKGQE6XKIQXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD12224526
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 22:26:24 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id x37sf6262882qvf.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 13:26:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595017583; cv=pass;
        d=google.com; s=arc-20160816;
        b=x2n+nuKELyp/KLRXRaucMS9QjpS/ZNAN8xohaEnVE6F0/Kq8A5xyCS9M3EQCOxds8W
         W1r79AGALkSP+qbNqHs3lkQDbVnuCrvNcNS9NXXnLzw1/uRz8e8toE1aI5Dy9mP9Xhl4
         jcC44bSb28D9Qvnwt538fz802ZjoNmQBc917BgTY6yA9VUCJPCpX4TAwq0Ezjc+ZGWwK
         GvVBHVZZJAFHIZiCVyrKhT3tFt/+SlYxV9uNevL+Rh0JV2IZB1ZbcRCfWoG6/B0xnFlX
         MK6hghHC11K4QQNxr8orv5CylzwsYPxp2xXC3D/XubsgB+XPCLkG3nA6Zbu5h5BdLaga
         Un/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=i8r9akvejYERHU4tyz5309Efjai8LgrcCktgCCDbQns=;
        b=WOLstzCt9ht2Rd3V7IiSgHB0NppNWT+gfz4H2C8/QV8BW++pF0ovje06kzWm5opPbW
         mp8FZeqiW/IwCFDfRds6Lewb7gF3LKzF2KohdQQkbaAQM+t0uNlgH+g3bn+YJjr+5Nkc
         Dd0N8YC+P9GigvsVVqwCZDr+Biat/x7hysh7SvVyc6YmvLQhVZQ6z1WQd09GpkQ5+Wzf
         YO/zgiyxgwNhg0FtwPXi1M5oq6XX65a+uGAxZnfElz4/hlh4Wrlr0PnkSoOD5oxlnDkd
         ykDWmwOx3VBTrtto4fVhqSxOoRYE1mbh7W5KyIxGGAZQBH5AB4WSGqt5XYx9BlA6N4n5
         z92Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="s3QH/t9o";
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i8r9akvejYERHU4tyz5309Efjai8LgrcCktgCCDbQns=;
        b=FgKow887kP/8MF5Huad6swNobDqGhG9JZpW7YV3L+NpgaSqgTJnORBY+Yu+IiJUJgA
         8Krkp4n0CI652wWyuWPjUp5QxhfwW0YB4LYxFO4ZVSAuZUPL4of3OPvbCllEg54SdEWe
         iaShzNRQ9ccXlKqaCXnFBsbOHfP85vB8uR6hplZ5o4RmxeF/ZI9B/Ew306xmN6ZZqTCs
         H/pNDJBTmgx5MK3G1PB/Hnjssuki+LubJWqu0xmPje0+h6PPtzzoeX4t/i06+io4kZRI
         qyimd5wz0hke41zA2rzRF7K+Bi5I8CyvrACpUjGtqeN9Z7agmsUdZlPnakwSX2cKdHLn
         6J3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i8r9akvejYERHU4tyz5309Efjai8LgrcCktgCCDbQns=;
        b=ixV1aIrkzkT8PW9Yn0kZ/6aYl2cjuMirjIYZdpkcNNHjUaW0WfuOKHntxMApB2YiQv
         sDCxOpGx/d9VeJ4hplCJ6RvyYwOKMaZQN6QDNyKCVsTrLlt3kzO6HhEM3tgJ/GM6YM4D
         MtOkvC+knLYXSj0nB67wlvl/2808F6r61D0PreTSGOQCgt/melZyaImTLLnwQ8kUL4h8
         830J9+KTIbU003xT3VKXRJoiDWujfZ1CoRwSVzbHHj11Wlu83oPXyW63n9oPaylteNot
         6Hk2KzGozA6UZ/B2YBso4V6f0YfDext35hErXw+3+4ZYUncwD8nBnzG6N06508LPKL/b
         FZtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/HlXNvqMA0zdDfFOjCMBINLGdLbL1VjJh6Xor1j6xr3wXzkKv
	KD0voc+/B/QKSETjRSvbodk=
X-Google-Smtp-Source: ABdhPJxpNaYwH9UhCQ6K6t5DTm9bHUDhPfN2fXs+qgfKCwuUQRXdgB+1EXxUfo4jlfxlde4eFMm6TA==
X-Received: by 2002:a37:a711:: with SMTP id q17mr10608031qke.257.1595017583395;
        Fri, 17 Jul 2020 13:26:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:507:: with SMTP id u7ls424610qtg.10.gmail; Fri, 17 Jul
 2020 13:26:23 -0700 (PDT)
X-Received: by 2002:aed:2f26:: with SMTP id l35mr12463037qtd.79.1595017583080;
        Fri, 17 Jul 2020 13:26:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595017583; cv=none;
        d=google.com; s=arc-20160816;
        b=YnqS3myb9xHeODA0gL0VVoZ+PyjGXWjTKJaQtgsVBNlaqex8qOhE+BCn9b9VOfae4o
         WEf5AjFqTs6pZOjhGeGUphHBCkPwx2oGywIdipCs14vanEMESrbz2ntB8Z66DENpnNqC
         nSQcUUHMQDWQzFyoTWSE5pzGvq34VV4vgF/5BleyG4pW2NXgaP4NzNGaNgozas1Pzq2/
         D1q3z3Q+IF0MmA/oH4SPAheoXiv34mUqhavVUkavIeQrvpU95qAzSa89By602cOq3sUN
         v1lAVcxphjlRhnqa3/Zf2Amg29Z01OPH9nhnKd24h9nIBdjZTjX/VgFhYKwcbnUbTdxx
         xuuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ZeWYikZRZ4/ILnJpoE0SEfTW30ZOC4tgAVPk3LEeH2E=;
        b=KWCkW6eFBbKD+VzjSgU/kcMzYMPWltGGHA1UpKUfLqH9vrF5Pxt+1rjrNjC1JrjhAR
         64JYoWh+VLNLKThWkAS1FdbuzNJqK+sc3Ts1y4fMhh2S6NVQS9ab4zQ+2SbMpsG6qfh3
         fHHgMIuHrE3/r0mXWQARjW19iIGFnStPvpn5iTDZV6IzywMQgIngzI3C1+ZHBGTScZ4Y
         sYurAQfe/jXfszFhVj4ObMxlXf2ijVjENrx7+1nNlvW61/55/np31hEq5eCE04gDBDU6
         q8MUgeh7abJESe6B9bcqm65S9dN755hLPsWkpuPn9odyNzTluAR94x+j15GmLvD2Xlnp
         AjOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="s3QH/t9o";
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f2si540065qkk.3.2020.07.17.13.26.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jul 2020 13:26:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (mobile-166-175-191-139.mycingular.net [166.175.191.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9C36A20684;
	Fri, 17 Jul 2020 20:26:21 +0000 (UTC)
Date: Fri, 17 Jul 2020 15:26:20 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH 11/22] pci: lto: fix PREL32 relocations
Message-ID: <20200717202620.GA768846@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624203200.78870-12-samitolvanen@google.com>
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="s3QH/t9o";       spf=pass
 (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=helgaas@kernel.org;       dmarc=pass (p=NONE
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

OK by me, but please update the subject to match convention:

  PCI: Fix PREL32 relocations for LTO

and include a hint in the commit log about what LTO is.  At least
expand the initialism once.  Googling for "LTO" isn't very useful.

  With Clang's Link Time Optimization (LTO), the compiler ... ?

On Wed, Jun 24, 2020 at 01:31:49PM -0700, Sami Tolvanen wrote:
> With LTO, the compiler can rename static functions to avoid global
> naming collisions. As PCI fixup functions are typically static,
> renaming can break references to them in inline assembly. This
> change adds a global stub to DECLARE_PCI_FIXUP_SECTION to fix the
> issue when PREL32 relocations are used.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  include/linux/pci.h | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index c79d83304e52..1e65e16f165a 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -1909,19 +1909,24 @@ enum pci_fixup_pass {
>  };
>  
>  #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
> -#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
> -				    class_shift, hook)			\
> -	__ADDRESSABLE(hook)						\
> +#define ___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
> +				    class_shift, hook, stub)		\
> +	void stub(struct pci_dev *dev) { hook(dev); }			\
>  	asm(".section "	#sec ", \"a\"				\n"	\
>  	    ".balign	16					\n"	\
>  	    ".short "	#vendor ", " #device "			\n"	\
>  	    ".long "	#class ", " #class_shift "		\n"	\
> -	    ".long "	#hook " - .				\n"	\
> +	    ".long "	#stub " - .				\n"	\
>  	    ".previous						\n");
> +
> +#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
> +				  class_shift, hook, stub)		\
> +	___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
> +				  class_shift, hook, stub)
>  #define DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
>  				  class_shift, hook)			\
>  	__DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
> -				  class_shift, hook)
> +				  class_shift, hook, __UNIQUE_ID(hook))
>  #else
>  /* Anonymous variables would be nice... */
>  #define DECLARE_PCI_FIXUP_SECTION(section, name, vendor, device, class,	\
> -- 
> 2.27.0.212.ge8ba1cc988-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200717202620.GA768846%40bjorn-Precision-5520.
