Return-Path: <clang-built-linux+bncBC7457HKSMPRBIUV4SCQMGQE3SIJKQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-f192.google.com (mail-qt1-f192.google.com [209.85.160.192])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2F539A68B
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 19:00:20 +0200 (CEST)
Received: by mail-qt1-f192.google.com with SMTP id v13-20020ac8578d0000b02901e4f5d48831sf3425533qta.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 10:00:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622739618; cv=pass;
        d=google.com; s=arc-20160816;
        b=eI93Xfh4pesQyHgYBpqH4/2JS3bnKN7lHowEVcMcV9cfu6GJttb3stIZy13PROkeRF
         48vwGNx6/og/ps/wy6PZ38r+9QVQhveQm+AIZK8xzwSrQLgOV3SXEND1ZlywXi/qEWVi
         bhqZNQYKXdz+MuwszsD5KBz4dr/seaaRGJWulsutzrMcACRHZDxyW22SUSqp/VsUQ4iS
         c0eZfHvv6nUgT31GJJrjjvrQ1UBV264irUg6rjLQTIffwkQk14MvgC0TAok6/gbrA7xM
         z46BkK5/5haYM7plda3mkpBlCShGE0beznqUyyFkMrHY4tniLZd/fZfL4S3RLgH6oRy2
         qsxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:content-language
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=NxuoElGtd2m49FQU8IncVx1eQqac6O+aqzbyH6iOsk0=;
        b=WCsVQFRFAxhu6ZT5gkzt2w7H+R+sYJZm87HGzS6HZKAZ0w6XL546FAUGbUwRD4zWgB
         8gBWOAsDzVCmdnHgTNKaHQ2hZLLsFdaV9oUZ9PGZXMOBz0TkA9kYHcZl7Vne5yiwNERi
         hlMjse1lLpB325yLvWBqmjKx7iYAD6RIwmkvpyX6Uw3RN7+eMOZd1qIhIamIQL26QgHm
         LTxC8N9MvNPk9WHkpckY1Atz/5Ai9TNte8RTXpMbIW0yAdhWeZnmRsuL8gadcRJ8Ko24
         nL9r6qQylf1RX7Ye4Rpt8PkTW/dQNT0Rugnh+IMZxaBdCYabxFQj+DUMuOB3YH5B3gjM
         1RPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=NoiY8Tg2;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :content-language:thread-index:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NxuoElGtd2m49FQU8IncVx1eQqac6O+aqzbyH6iOsk0=;
        b=h84r6pXd2Nwr+HajEgo+C7ZhtacevVqB9Vo59JV2A7fGbSTg6gqC09PHxVxkANJGIH
         7g7Y8sQkPOEetgnx5U+H7bK5L+BXWpPSSz++nH/heXCLy4QOtmp1bmY0y74TMri8rQw7
         FlkohujnX9mGA/38r4dHmZPhEdAYlnxbn/I5LJqHFDVaAH07XTguOfVIxwykkHMedF9O
         jAlv15InxtDjeogF6VnYPpAUGE9LXepFElEhJ0oztJ943feMxB7uQGc10sh6WK01j+sD
         uNctBIXRFnLxBKbWDA4O0EDWy84HPxkTaW4jaLfz1CXq+2jmsVqy96TGiPA2oX+uPeih
         Lzaw==
X-Gm-Message-State: AOAM533JKYYYiv5Jhw8Q2xY3Y2tdUrJy49gYjtDj79aquDuKdZhzUhr1
	bx3DJDyrLS9tyFKL3fmFek4=
X-Google-Smtp-Source: ABdhPJziDGB8m/ynqSucaEY2v3x+1eDlQBY1xudMnufqRvgsPhI3lF8fCVd6U3YW8LY2bpv+QK/M3g==
X-Received: by 2002:a37:91c2:: with SMTP id t185mr190081qkd.430.1622739618385;
        Thu, 03 Jun 2021 10:00:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:16c6:: with SMTP id d6ls1366502qvz.2.gmail; Thu, 03
 Jun 2021 10:00:17 -0700 (PDT)
X-Received: by 2002:a67:878a:: with SMTP id j132mr219168vsd.18.1622739606396;
        Thu, 03 Jun 2021 10:00:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622739606; cv=none;
        d=google.com; s=arc-20160816;
        b=UkOXS3iqhgU/+fRnDLJgpu+vupXc4gFEaK7t6WCFFHKYWbbUIIMxJkzAH71k2GHy3R
         sks2yNf+0C4Fwt5RbPChjDnQIC4VeVl5To6A7LZq9eTF7Mc0j+Zx6S7cwyqWjfEnupaV
         E426ubafK1HG1LT7ibJAYM5WMhAmo3klvo+qCCLWJdHmSCBLGgTGjJ6gBlIxdJHLcAfY
         vA/UhArHoaUdVZHC8RupXBN1yB1A8TmOiwVCfXMW5rlXNiWy2Nn1qSwbMOkm3ANi0bZ/
         batFP9E+VaLmL/jSmtauE4OjxmT7xK4WSfkTG09lwGTbkh4Odk+8/nCLDG9JZ8+cjFIg
         aJwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=GpFa0F1nBiz7gXdJe/yKy7CwUy3wkvYy2FupJZqvlCY=;
        b=nW+TzM2ThlpQrdvXpb9twJJ8NfUfyecZH/0IL773jnE+FkPS3p+mjRhrVHJR0aU9YZ
         WklH+lQ8GO1FlCutt1H1okxHfG+LhInmW5atjkgqWcqPmVlsjxx1nOpxIjf4ON/c698k
         DnBFKKm7EBTQnqJRbzF6xzeuRTSs6OAvFGxtSd+HOGbSkXG8LgamKVl5+J+PccOaUMIi
         7MZ0ScL0QW5PtusUdVQ/iXAMBHU0KtUBy/FF1kdZjEKYWaQx6JZ9oOB7VE5EtBc3A1mo
         k7okyU8S4sImrNAWbfln7MYXuMS57F3WHbog759Qlu5HpK1hw/QN3WQkK5mq31BxyJTH
         GMXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=NoiY8Tg2;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id t1si214903vsr.1.2021.06.03.10.00.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 10:00:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-east-1.postgun.com with SMTP id
 60b90a8d265e7370f7d6e465 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 03 Jun 2021 16:59:57
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id E4095C433D3; Thu,  3 Jun 2021 16:59:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
	autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (i-global254.qualcomm.com [199.106.103.254])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id AC984C4338A;
	Thu,  3 Jun 2021 16:59:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org AC984C4338A
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nathan Chancellor'" <nathan@kernel.org>,
	"'Andrew Morton'" <akpm@linux-foundation.org>
Cc: "'Nick Desaulniers'" <ndesaulniers@google.com>,
	<linux-hexagon@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
References: <20210521011239.1332345-1-nathan@kernel.org> <20210521011239.1332345-4-nathan@kernel.org>
In-Reply-To: <20210521011239.1332345-4-nathan@kernel.org>
Subject: RE: [PATCH 3/3] hexagon: Select ARCH_WANT_LD_ORPHAN_WARN
Date: Thu, 3 Jun 2021 11:59:55 -0500
Message-ID: <09a701d75899$e116d710$a3448530$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQImhg45Cwtn7gWc92+5nwbl9gAFPwJJmOtsqlHauzA=
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=NoiY8Tg2;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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
> Subject: [PATCH 3/3] hexagon: Select ARCH_WANT_LD_ORPHAN_WARN
> 
> Now that we handle all of the sections in a Hexagon defconfig, select
> ARCH_WANT_LD_ORPHAN_WARN so that unhandled sections are warned
> about by
> default.
> 
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  arch/hexagon/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/hexagon/Kconfig b/arch/hexagon/Kconfig
> index 44a409967af1..e5a852080730 100644
> --- a/arch/hexagon/Kconfig
> +++ b/arch/hexagon/Kconfig
> @@ -30,6 +30,7 @@ config HEXAGON
>  	select MODULES_USE_ELF_RELA
>  	select GENERIC_CPU_DEVICES
>  	select SET_FS
> +	select ARCH_WANT_LD_ORPHAN_WARN
>  	help
>  	  Qualcomm Hexagon is a processor architecture designed for high
>  	  performance and low power across a wide variety of applications.
> --
> 2.32.0.rc0

Acked-by: Brian Cain <bcain@codeaurora.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/09a701d75899%24e116d710%24a3448530%24%40codeaurora.org.
