Return-Path: <clang-built-linux+bncBC7457HKSMPRBD4V4SCQMGQESVMTKIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-f58.google.com (mail-oo1-f58.google.com [209.85.161.58])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA0939A684
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 19:00:01 +0200 (CEST)
Received: by mail-oo1-f58.google.com with SMTP id d12-20020a4aeb8c0000b029023bbaaddcbbsf3890050ooj.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 10:00:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622739600; cv=pass;
        d=google.com; s=arc-20160816;
        b=lw0FprBfHTE/RtuP5sIO+TNIidQ78+f9aaJaEwvEgw2/kjROiE6WPfX/lfxJru91qR
         rpmW9LUqucgyY7Mwm6rsgj5s5HD9qHhANURqvl9QVbgNA+FGhlFEoZlebCI7MvXtGngN
         KPm0npbIW5AtGi7Wu0lmG7Iu46Fa3PjMfUV4KkzNbNRBhrt08Fmof3OBw+HfK4/D03Dy
         JgxeyYzvVqFJ3/T5WrTYLx8xlIxWfNDG8o3sI88I2cKwR5X/dXSDC4NI0VxK+UpaI1gS
         HG+hD6qKWSmHETAhDbq6DINv4FrN9jsKRDQyTBkC9DE1yXggYtGhuVUi/3miNbjyPqeF
         8zvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:content-language
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=JHKNYvMWMT0ld781ak4+yj2AkYQ9LHO7k/QZTHkvZKk=;
        b=ZJ/S9/rYCo8qw5HWhRQe3mcBWUtVdiUw70dxoIHtv0zp3tdEkAA8pUMi4gpii++crj
         AUxjoXHAJDofnwfATelk9hBXvtqGEb3epz6+sQDch7xPFYDWsb/cFuf+qsJOiYhWg13I
         8d8ZdlDnZemwu74rZfFJfPHuEjoyPyXmUtbHTtOCFKHH416hM1kgDRzemAtIuX87NQEQ
         VjNvZhbqUa/7e7M7sSbSXsT/iUtU77D+rPv2+EQeQTSdA5BnEwLCbUIuKRNip2rW5+Eh
         2SBoU7WdQ5WVwFaxtMNaU4AEEI9GeFEb1DuachJ4/gRy1IO+jqOr7MZw9LfxG+Cv//k3
         WDdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b="o/HEjX+Q";
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :content-language:thread-index:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JHKNYvMWMT0ld781ak4+yj2AkYQ9LHO7k/QZTHkvZKk=;
        b=El+HPSXlJtb0+Q3orMrfhp3wcfH+4U5pi8IGw2zi2w6o/HhqVjKOH/a8MYJJG4sAU3
         eR0yDv/BqiCiIqoEWMDHosUe1LYsa1gx20cyg+lx9xcX/I3jUEjeNbyzD5SVQ6Vx3cdp
         K7lhyI3WyKm+TCcXi0LelvSViynSHY6cf7y/E8hGfpE18nUb5dSnNlY1n5mQSpHAV1VM
         bQbhsvbaiHshR0eL5AexPq4xQiEVmQZi1UeK5+wdy+1bDYCufNH6KBT4OQq1FSPas0Ge
         FKxZ1vn/48QQCnhy4AxOUZdR5iODo6J0I90kE8k9hZZrF4p5E69+x+uHB8qU7hCZM6os
         GODQ==
X-Gm-Message-State: AOAM531rSVK54oye4ApM3aQgo2v9fPusDWSuy9qXclseTdDiyOEs9pLw
	z4BHoz+y4voZKJQl4wLKnhc=
X-Google-Smtp-Source: ABdhPJyKfpz9UcFNl3GMRoT3b4gpm8KuOj46e0TtcoM4fWRpLZIy8DQ2umWvIJ3KkNfDziqFPLoK9A==
X-Received: by 2002:a9d:798c:: with SMTP id h12mr202091otm.253.1622739599917;
        Thu, 03 Jun 2021 09:59:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7b46:: with SMTP id f6ls1359388oto.2.gmail; Thu, 03 Jun
 2021 09:59:59 -0700 (PDT)
X-Received: by 2002:a9d:67cf:: with SMTP id c15mr192662otn.285.1622739599548;
        Thu, 03 Jun 2021 09:59:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622739599; cv=none;
        d=google.com; s=arc-20160816;
        b=TNkG251IwI2h3E7kCAMr4D5kT9hpFp3b6EUQweoPLvTml0/+5o2ITEeV/VUGbmMW2v
         h32UCXGrCAotafW4NrImt4h7QeZOMW+8o7s8QM6yq6Mc6Tm2Dlj0/eT4upGP5pjACO5z
         3L+GJwqAVqrMwSik/QuweLymrJjsUX25W81hvMQzDYpWOseXOv3Z3M14nNSEDutwyNey
         /eoWWX3TLh+X3ak+bDqrmUhCOFtR9YzT40/ZJryu26Rb8cUjKec4XWFxKodCHqTAUDVz
         zPEkyJosviuH3PJbWR3V0+T3EeK4I3AMRVcqkAia8Wrvu+XD/sEkrO0AhS3Nk3LubAxj
         hbCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=/pHlYIqIuh+eZ1QKQJtdnJ5xmRU/hum2lRn0qX6Gm0U=;
        b=i35rSyxCMdFYjbo8KN0XBOos0LdAQ/ZLV0LDiX9vmgd76o/yJNmgAiAh7OwCM10J7f
         bgGHvLgt/8cp6VpL5yP4Y3BAiehUTsTHIPhpBm3K82o/MrK99cuVgOSMFfLa00CxRcty
         Xu0pe3XEpHDuzcGJ1zO+fybPjp0EbESG+o3htlRkzYi7N9OHdB+nILushZyFKS0Y+DEk
         +utBv+3E49M08e0NS23Ou5l0hyZWOwWLpUothAWCaz4RhuY1/vlR3shMOHDD8pCBEtaC
         7yR2MaH9Y1kxbptjosfbZj6W/PjM/TZvoGkG9JWGU3bba7CjKynsQ9w5evanO1y0d0q/
         ZOSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b="o/HEjX+Q";
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id a25si460419otp.1.2021.06.03.09.59.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 09:59:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-west-2.postgun.com with SMTP id
 60b90a8f81efe91cda2c65b0 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 03 Jun 2021 16:59:59
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 28410C43217; Thu,  3 Jun 2021 16:59:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
	autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (i-global254.qualcomm.com [199.106.103.254])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id B4F76C4338A;
	Thu,  3 Jun 2021 16:59:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B4F76C4338A
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nathan Chancellor'" <nathan@kernel.org>,
	"'Andrew Morton'" <akpm@linux-foundation.org>
Cc: "'Nick Desaulniers'" <ndesaulniers@google.com>,
	<linux-hexagon@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
References: <20210521011239.1332345-1-nathan@kernel.org> <20210521011239.1332345-3-nathan@kernel.org>
In-Reply-To: <20210521011239.1332345-3-nathan@kernel.org>
Subject: RE: [PATCH 2/3] hexagon: Use common DISCARDS macro
Date: Thu, 3 Jun 2021 11:59:57 -0500
Message-ID: <09a801d75899$e24c97f0$a6e5c7d0$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQImhg45Cwtn7gWc92+5nwbl9gAFPwIEvSIiqlQBjtA=
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b="o/HEjX+Q";       spf=pass
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
> From: Nathan Chancellor <nathan@kernel.org>
> Sent: Thursday, May 20, 2021 8:13 PM
> To: Brian Cain <bcain@codeaurora.org>; Andrew Morton <akpm@linux-
> foundation.org>
> Cc: Nick Desaulniers <ndesaulniers@google.com>; linux-
> hexagon@vger.kernel.org; linux-kernel@vger.kernel.org; clang-built-
> linux@googlegroups.com; Nathan Chancellor <nathan@kernel.org>
> Subject: [PATCH 2/3] hexagon: Use common DISCARDS macro
> 
> ld.lld warns that the '.modinfo' section is not currently handled:
> 
> ld.lld: warning: kernel/built-in.a(workqueue.o):(.modinfo) is being placed
in
> '.modinfo'
> ld.lld: warning: kernel/built-in.a(printk/printk.o):(.modinfo) is being
placed in
> '.modinfo'
> ld.lld: warning: kernel/built-in.a(irq/spurious.o):(.modinfo) is being
placed in
> '.modinfo'
> ld.lld: warning: kernel/built-in.a(rcu/update.o):(.modinfo) is being
placed in
> '.modinfo'
> 
> The '.modinfo' section was added in commit 898490c010b5 ("moduleparam:
> Save information about built-in modules in separate file") to the
> DISCARDS macro but Hexagon has never used that macro. The unification of
> DISCARDS happened in commit 023bf6f1b8bf ("linker script: unify usage of
> discard definition") in 2009, prior to Hexagon being added in 2011.
> 
> Switch Hexagon over to the DISCARDS macro so that anything that is
> expected to be discarded gets discarded.
> 
> Fixes: e95bf452a9e2 ("Hexagon: Add configuration and makefiles for the
> Hexagon architecture.")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  arch/hexagon/kernel/vmlinux.lds.S | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/arch/hexagon/kernel/vmlinux.lds.S
> b/arch/hexagon/kernel/vmlinux.lds.S
> index 20f19539c5fc..57465bff1fe4 100644
> --- a/arch/hexagon/kernel/vmlinux.lds.S
> +++ b/arch/hexagon/kernel/vmlinux.lds.S
> @@ -61,14 +61,9 @@ SECTIONS
> 
>  	_end = .;
> 
> -	/DISCARD/ : {
> -		EXIT_TEXT
> -		EXIT_DATA
> -		EXIT_CALL
> -	}
> -
>  	STABS_DEBUG
>  	DWARF_DEBUG
>  	ELF_DETAILS
> 
> +	DISCARDS
>  }
> --
> 2.32.0.rc0

Acked-by: Brian Cain <bcain@codeaurora.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/09a801d75899%24e24c97f0%24a6e5c7d0%24%40codeaurora.org.
