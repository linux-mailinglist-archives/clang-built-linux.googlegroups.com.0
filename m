Return-Path: <clang-built-linux+bncBCR5PSMFZYORBVWO2X2AKGQEQXH4OAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 699461A74D5
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 09:33:44 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id u1sf14591042ybm.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 00:33:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586849623; cv=pass;
        d=google.com; s=arc-20160816;
        b=meL0dvoyQbZUmd3KJVC2iecRGeYEnpEaYYx3cc0eAUNuou/ajUj6P9rpdpyXWMrfod
         68lFRLWFYE12aBcks0hRLnWL/0P2lYsNPLSBwpQAXu/H1LpyoSwbj5ik0z9HN8+YHjLU
         4H85HeqvhbhgXJ2pJkm5fh0iz8myrKCdT2EuaYEcp+jDnlk8OPHfyoU6xIqXVhdMVZB5
         EX1pm5yPJp5feY3TMKlMyL7rWV9eX0lHz485UaE972tfmnBnwXzVh+/Wfi7jJ7NLfeGD
         fYZA+nM6ARp3+0ujZTVfMIwZfQyjQPLJ0RZPTzMPBCacPR6zDWjdCr2qurVMcOzrIkwg
         B7nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=i2OrCOc5fy20+ICb++ET8LEk8AgjaoS6b/c1ouaFNwM=;
        b=Uz6J/Z3HANREAkR0wd5QZU78Kv8edVg4Rk/v9YV8IDVaMr79rybh7sVV6EyUB/g7W/
         DTDyJ2bNab3nTwQlgZo10qwkSNdt8qOTEDugQiTlVUUDLRquzv3MiLr3tVIJn8wQZHdS
         1m22194bpZBRlvnjHy2Ii1f066LrNYzWTwkftCsJMwGqa9vJz1BGl1Lkkw8ElIkvrfDA
         QLjCrWBOT8ZI66jSU8MR5vOeuooquT1Y1nYnCcTih1h6VP8e57ZrYF3QqnKu9kB+1ZYC
         8+z+KrEzfGCzogrVTwdDhT27Q5J9SHrrM+ct4/YofSxaex5n7YYGOlc0pFdisQc0oKGL
         NlVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=NBRHikNC;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i2OrCOc5fy20+ICb++ET8LEk8AgjaoS6b/c1ouaFNwM=;
        b=mI72MAjBSDL0zDrxqa+qUx2S3ftpzwmLjUKDFGIBDYRtFskrTcOXa1t5RSfWqO1GdG
         WGGXzxWGtYMXIrBsodckf3KDFaoY8y9MGLlyRrZnSCRMTovfSHTRrm15oQtvsqH+qIXw
         yf3mJuagUAlTblj6ByJOgFQqy+AjcL9h96ALWBcUC/5btD0ePUxnAPLnvMRtJduDj1+S
         yx51kWKeX+XTOEpuqNIHKwzVI3n4cS6izMr925etvMr7d+Yz3g/2zCgzLuejLZ0TUETa
         5giSPJxJ1S+gS8/2+TgQEet5pl8W9ooUa8re8U21+cxqy4IOAi3TQZfxTHVEWgQSUl/a
         gsHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i2OrCOc5fy20+ICb++ET8LEk8AgjaoS6b/c1ouaFNwM=;
        b=eawnGUUThvj77t6U/zBeLAQkvXbrh3BQfDGopZdKRlNDZhAoMgiwxjAa0WH4XxGkpo
         nieni2Ui1iCoH4vlzRftwHgBCPetNVbsf4MXtJADWY8hamLKttDeJ8se1sgGKvFSkBRI
         jgoWA6mo0kITSlJ2tYIP7UTO0/+tIkvG8OVklp/DEG+CayTo1s8LSE9AbVucU5GJZ9Ad
         8mL29WPxXPNeQZYplJHzVY5jXXdciseNECCaAI01mtiUKAbBI7Le5aRI1/dvpmc2ZzAi
         U0Df/o9vAlhcI+ner5p7FK5zXGBjyzbvqXoGvAbarhXkoCfb829VRjoNSXw7/pqONYTY
         XM1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZlBx0xM3OYPPyQGnUiKFTjujx/55l9wTi3zkFzbXQhc5Pa5R04
	oroKBScUuxwCkiR9F2ibwBg=
X-Google-Smtp-Source: APiQypL74j8gL5L4uFYES1gfPmcAr5d6dUi7JUcS9WZ4rrIKIgRs4CX1Q2eAplLA5OKQRCLakRSHlg==
X-Received: by 2002:a25:b88b:: with SMTP id w11mr34981954ybj.420.1586849623220;
        Tue, 14 Apr 2020 00:33:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:15c9:: with SMTP id 192ls1024932ybv.6.gmail; Tue, 14 Apr
 2020 00:33:41 -0700 (PDT)
X-Received: by 2002:a25:dd03:: with SMTP id u3mr32930077ybg.322.1586849621368;
        Tue, 14 Apr 2020 00:33:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586849621; cv=none;
        d=google.com; s=arc-20160816;
        b=BmHCrcauK24pzj16RbrfuuxJZz8gG7KW/sq19Ghb9ZiK4wTGoSgAOz3GFNEJW1tzuF
         hV0il9A03JwX8sYw14VWS5d233KoBFND04kMbscdWmE/hc0mjfnNSzpZEh93+bqvUgA/
         UVA7CAl7Cp5tEEas3OeMbQkLPJiE4A6X944VaSIFSZX8L2cgXaSGsnFwOKB+MGkL/Zn7
         53FxycAeiO2hteSBSJqUIkNcuZK+6aFUNaJRuHlA3U03Nm7H57wUWWKQkYIIHLV6aQ95
         r5PfIfLUswYXXQGygekcmmeOsBh4FHg+0OXznHepGQxrBIphlW+2qZsWjqIAh0g77ERx
         Fv4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=k4N0EaenxcfMdWG5ryv4rpx2eQELj0cjiEvvwsmT5Nk=;
        b=Z4T0s4UdfZCy/tMoyCDuODFHMiCOiOvdZMjyDC3yY7Drv1r4cn0QQD/qIGB6cIuA2i
         ANzJW0vEKD3ruypoJF6U59sxQbwGAVxUXf0PhRNL0U3x+NcRuwb6WEANvCoBoFdRcOuS
         YW/1Hqjn5kTaH8wBVL7n+wwhcplH5jKU25Ycxnf9P4BC6KOoBE8yXToAdh6UlkfrvA1Z
         01ONdnQWFqqVVUyLJ2wG+G0G/aIKtwoQoLOY8hQC0c0FdTIeXm9YqVJWuWc4XkEF8qRd
         DF3sp7GYsv/hvC2hGd329H8xwX0fF7Nvn+9/rSD/hvzJVpDbCA4XAIvRL5zHeKQlRIhv
         KAEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=NBRHikNC;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id d72si813625ybh.5.2020.04.14.00.33.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 00:33:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 491cfl01C5z9sSG;
	Tue, 14 Apr 2020 17:33:34 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>, linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com
Cc: Scott Wood <oss@buserror.net>
Subject: Re: -Wincompatible-pointer-types in arch/powerpc/platforms/embedded6xx/mvme5100.c
In-Reply-To: <20200413201034.GA18373@ubuntu-s3-xlarge-x86>
References: <20200413201034.GA18373@ubuntu-s3-xlarge-x86>
Date: Tue, 14 Apr 2020 17:33:45 +1000
Message-ID: <87eesqjzc6.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=NBRHikNC;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Hi Nathan,

Thanks for the report.

Nathan Chancellor <natechancellor@gmail.com> writes:
> Hi all,
>
> 0day reported a build error in arch/powerpc/platforms/embedded6xx/mvme5100.c
> when building with clang [1]. This is not a clang specific issue since
> it also happens with gcc:
>
> $ curl -LSs https://lore.kernel.org/lkml/202004131704.6MH1jcq3%25lkp@intel.com/2-a.bin | gzip -d > .config
> $ make -j$(nproc) -s ARCH=powerpc CROSS_COMPILE=powerpc-linux- olddefconfig arch/powerpc/platforms/embedded6xx/mvme5100.o
> arch/powerpc/platforms/embedded6xx/mvme5100.c: In function 'mvme5100_add_bridge':
> arch/powerpc/platforms/embedded6xx/mvme5100.c:135:58: error: passing argument 5 of 'early_read_config_dword' from incompatible pointer type [-Werror=incompatible-pointer-types]
>   135 |  early_read_config_dword(hose, 0, 0, PCI_BASE_ADDRESS_1, &pci_membase);
>       |                                                          ^~~~~~~~~~~~
>       |                                                          |
>       |                                                          phys_addr_t * {aka long long unsigned int *}


Yuck.

> ...
> I am not sure how exactly this should be fixed. Should this driver just
> not be selectable when CONFIG_PHYS_ADDR_T_64BIT is selected or is there
> something else that I am missing?

I'm not sure TBH. This is all ancient history as far as I can tell, none
of it's been touched for ~7 years.

Your config has:

CONFIG_EMBEDDED6xx=y
CONFIG_PPC_BOOK3S_32=y
CONFIG_PPC_BOOK3S_6xx=y
CONFIG_PPC_MPC52xx=y
CONFIG_PPC_86xx=y


Which I'm not sure really makes sense at all, ie. it's trying to build a
kernel for multiple platforms at once (EMBEDDED6xx, MPC52xx, 86xx), but
the Kconfig doesn't exclude that so I guess we have to live with it for
now.

Then Kconfig has:

config PHYS_64BIT
	bool 'Large physical address support' if E500 || PPC_86xx
	depends on (44x || E500 || PPC_86xx) && !PPC_83xx && !PPC_82xx
	select PHYS_ADDR_T_64BIT


So it's PPC_86xx that allows 64-bit phys_addr_t.

That was added in:

  4ee7084eb11e ("POWERPC: Allow 32-bit hashed pgtable code to support 36-bit physical")

Which did:

config PHYS_64BIT
-	bool 'Large physical address support' if E500
-	depends on 44x || E500
+	bool 'Large physical address support' if E500 || PPC_86xx
+	depends on (44x || E500 || PPC_86xx) && !PPC_83xx && !PPC_82xx


ie. it wanted to add support for PPC_86xx but had to deliberately
exclude some of the other BOOK3S_32 based platforms.

So I'm going to guess it should have also excluded embedded6xx, and this
seems to fix it:

diff --git a/arch/powerpc/platforms/Kconfig.cputype b/arch/powerpc/platforms/Kconfig.cputype
index 0c3c1902135c..134fc383daf7 100644
--- a/arch/powerpc/platforms/Kconfig.cputype
+++ b/arch/powerpc/platforms/Kconfig.cputype
@@ -278,7 +278,7 @@ config PTE_64BIT
 
 config PHYS_64BIT
 	bool 'Large physical address support' if E500 || PPC_86xx
-	depends on (44x || E500 || PPC_86xx) && !PPC_83xx && !PPC_82xx
+	depends on (44x || E500 || PPC_86xx) && !PPC_83xx && !PPC_82xx && !EMBEDDED6xx
 	select PHYS_ADDR_T_64BIT
 	---help---
 	  This option enables kernel support for larger than 32-bit physical


So unless anyone can tell me otherwise I'm inclined to commit that ^

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87eesqjzc6.fsf%40mpe.ellerman.id.au.
