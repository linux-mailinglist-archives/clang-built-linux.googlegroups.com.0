Return-Path: <clang-built-linux+bncBDMK7YOGWYHRBQ64272AKGQEQ3LBWQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B58B1A8707
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 19:09:24 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id k3sf4116349oig.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 10:09:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586884163; cv=pass;
        d=google.com; s=arc-20160816;
        b=O0fgp7g0xL9RXKw+YMwx2V7iAlqzTkHW3d2JnG3wXJqzJ8sjNU/YQ/jcvIfzAmk+RW
         oqErCNqalgFQhP5nJ4ule62IZMq/LpVyCbjTWYuLHXIDdtxWAuHM/ZI0HRnsqNXZqbAJ
         o+Q3ojnI56dqaqQAqhgAP+c2MwZilH7BzRnoJkglRDTDjkyEQCprhP84QANYFt2/mcq7
         WQT5LfDI2czpbZWqoX2CWuYS65Ob6v0xSXZc33SW3tIaN5wuM1l9gthTRzhtGnTz4Keq
         GjKahxkFJ2da2BZzPbns1/NP8lr56qSkYxIv+x2I0IiS2kViQfKOS3vY+NKKTC6s3Q5p
         pANg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:organization
         :references:in-reply-to:date:to:from:message-id:sender
         :dkim-signature;
        bh=8ziZPSoz8adIQ+IbOjOoheW6NItRvvKiKPuRoMPdWtU=;
        b=xdq3xUTaPmMXJYvODaYhEs7zQDISfxdhw+kl+/YI50NyNMugUCn8276CHP80Z57csx
         yWoZvxhbKwoJSHRB+/DE1j63VvCV225LoeFZaAl6by3BCzHIbJRHCtS77X7O1N8nEtSC
         I9oW2HQfPKB2GEg6MqjQt7JePVI6mN8Ukpg6jXKtJJ4Vq/onpzznb/hk+u+sVNORAmS9
         hT5hL3nUnARAN7JOA8lDpnS4Xh1clvRuWuyRAqwvZzXZIrKlAxbmfK0ifw063b2OBnoU
         fZCuqwOAFiLQAvogjLwmt/yuVpbpDfgIG6dMHjhIpo6YpM2fQMkkKFJ2EQdHndxQE05b
         wRcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of oss@buserror.net designates 165.227.176.147 as permitted sender) smtp.mailfrom=oss@buserror.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:from:to:date:in-reply-to:references:organization
         :mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8ziZPSoz8adIQ+IbOjOoheW6NItRvvKiKPuRoMPdWtU=;
        b=mdkuVHqoGV7OEu1XnDZnqqtrvIVAH2HxHbIBalyUIMga4j535jP778bRMv/W0ynQ2Y
         M/nUklLKay+Z3qD7IZNoXlITf2K+nS14byRc21+aVCMf2gmBK8Uj4sSE/E718Zei+TZb
         g1K1bChthVP1YRNUhBxto3qHhMoOY+BYImqrfiViZ2YOOclQKAFWzXAwKAzREL9ZLcIU
         z0m5uCEW+2ovMNC3p/xb5f5NQQa5BetniNAvl2TLrhvMGCcz4SyzgsrtzfoqQ17BJ2aI
         OqFP8MeP2TRJAh+udE9gbemIMJP2ZpvyL7asrEzCLo97B1q9+hQd0NqU0+nqVi+pFfTz
         +yRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:from:to:date:in-reply-to
         :references:organization:mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8ziZPSoz8adIQ+IbOjOoheW6NItRvvKiKPuRoMPdWtU=;
        b=Nnyi3T3qHOzp5Leg/pv8GAqvl0Y/rO71vOd7/rXghgNVg7mfqKrgtn7KadkBQyT0n1
         c+TdztnO/u8TBHjaG9Sa6G4w78P6EdbGlybB6NIzKQaUCbmljWaemSvhV9A+qdGkDBoj
         37if8YmC2Kabt4eQmbJoIFfw3YthZ5b9P+JXbr+hIQ4qclUwIeGTuqfto97nlLt6TXFJ
         rrHqPjZI1fF2wucW6OiJ3WBQ/Kaz/Kye97gjhDIKvJ4+a3HzjgMsW/yTaas7h4nSV8L2
         PgUzh0IzhZ46DNx/iTP5bQ8EBS8c4wa7+JCx4kY+gli8Jmh9bMFlIyqVVEfSkd0aR90Z
         6dRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY7frHAnQ+k9ur/uOcnq7tKPII63+HgSicUYpzhoPLa9D/mPsqB
	IeACF7o+215s/1AAi9IIK9Y=
X-Google-Smtp-Source: APiQypL0f/YlOCbRV3yeqlPZvrUQ58uV30IBRRRacAWXaMBxkOZytOcpn7dusqMsvSjyuzs9MPDYUg==
X-Received: by 2002:aca:54d6:: with SMTP id i205mr11069623oib.109.1586884163433;
        Tue, 14 Apr 2020 10:09:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3b23:: with SMTP id z32ls950336otb.1.gmail; Tue, 14 Apr
 2020 10:09:23 -0700 (PDT)
X-Received: by 2002:a9d:7a98:: with SMTP id l24mr2058347otn.79.1586884163049;
        Tue, 14 Apr 2020 10:09:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586884163; cv=none;
        d=google.com; s=arc-20160816;
        b=MhkTYQQbxbsOnsKS+5AAqT/5t4MFaayXxsZ9uXBsz5hDKnwFIq1sGEux3mVPK+/+EP
         rHewXMAvlmnWcwvzquZJaen5g2M6t06QDL2DJSFax8W5sJk+sVTfNClimzfUaDh3wmHF
         hpcjEp37GxZJnt4lJSXcMoFE5YXHc15dooXWECMlbvx5IBZForSexYY31ISJUt4aKuRr
         GvOz3WpS0lOO6EowG6GOgtCY/u3l6H4c32Io1gXTwYHEPj9KEmvBk2dEHQ9jvLir6G4+
         ewl0ELD98rNU82NSC1rSo0YTNcvqibmddswocEqwNPwCpC9CCRyKiu4baI/i4BY1b3d5
         3Fgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:mime-version:organization
         :references:in-reply-to:date:to:from:message-id;
        bh=ub6IELY2e9Pw+UsAk1mQ4+lFP6/3QSF5xnDHyU/UGJQ=;
        b=tJCfi7Gim4HTQNY627o6iCGW8IrDjmpmephXIhRV397Hs83ekvy6kFzdROnIxJ5NMW
         01ImRsvuYP/IJvVqLD8IeMoR+S1nQgaVr0qv59x9iRHAMXv69WMl5/lJupSJKhIECTeS
         oZ4yibDhIifTamRpymE0mq7IpUd5pm7jalqJpgwrk7b4O4ehmSFe8uqyiGn+rCFYkWY3
         AGC6sd+yMv4OMVi0qWs19bugVPqVUs1gYQTqW9NNq1VhXCsocxZ1LmIMO+CKHZlLVw83
         iiizT3u1T8VTRpc2gyvS8UIM89C4uXjVKtEw97o4A6gHv4KCbPafcqZNDwnL08FlbvPD
         qY5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of oss@buserror.net designates 165.227.176.147 as permitted sender) smtp.mailfrom=oss@buserror.net
Received: from baldur.buserror.net (baldur.buserror.net. [165.227.176.147])
        by gmr-mx.google.com with ESMTPS id q18si541521otg.4.2020.04.14.10.09.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 Apr 2020 10:09:22 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of oss@buserror.net designates 165.227.176.147 as permitted sender) client-ip=165.227.176.147;
Received: from [2601:449:8480:af0:12bf:48ff:fe84:c9a0]
	by baldur.buserror.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <oss@buserror.net>)
	id 1jOOzY-0006Mp-5p; Tue, 14 Apr 2020 12:04:56 -0500
Message-ID: <9796bef636f2aabab6eaf44237b63bd94c01d26f.camel@buserror.net>
From: Scott Wood <oss@buserror.net>
To: Michael Ellerman <mpe@ellerman.id.au>, Nathan Chancellor
	 <natechancellor@gmail.com>, linuxppc-dev@lists.ozlabs.org, 
	clang-built-linux@googlegroups.com
Date: Tue, 14 Apr 2020 12:04:52 -0500
In-Reply-To: <87eesqjzc6.fsf@mpe.ellerman.id.au>
References: <20200413201034.GA18373@ubuntu-s3-xlarge-x86>
	 <87eesqjzc6.fsf@mpe.ellerman.id.au>
Organization: Red Hat
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2601:449:8480:af0:12bf:48ff:fe84:c9a0
X-SA-Exim-Rcpt-To: mpe@ellerman.id.au, natechancellor@gmail.com, linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com
X-SA-Exim-Mail-From: oss@buserror.net
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on baldur.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	*  -15 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Subject: Re: -Wincompatible-pointer-types in
 arch/powerpc/platforms/embedded6xx/mvme5100.c
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on baldur.buserror.net)
X-Original-Sender: oss@buserror.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of oss@buserror.net designates
 165.227.176.147 as permitted sender) smtp.mailfrom=oss@buserror.net
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

On Tue, 2020-04-14 at 17:33 +1000, Michael Ellerman wrote:
> I'm not sure TBH. This is all ancient history as far as I can tell, none
> of it's been touched for ~7 years.
> 
> Your config has:
> 
> CONFIG_EMBEDDED6xx=y
> CONFIG_PPC_BOOK3S_32=y
> CONFIG_PPC_BOOK3S_6xx=y
> CONFIG_PPC_MPC52xx=y
> CONFIG_PPC_86xx=y
> 
> 
> Which I'm not sure really makes sense at all, ie. it's trying to build a
> kernel for multiple platforms at once (EMBEDDED6xx, MPC52xx, 86xx), but
> the Kconfig doesn't exclude that so I guess we have to live with it for
> now.

I thought supporting multiple platforms in a kernel was something we tried to
support when practical?

> So I'm going to guess it should have also excluded embedded6xx, and this
> seems to fix it:
> 
> diff --git a/arch/powerpc/platforms/Kconfig.cputype
> b/arch/powerpc/platforms/Kconfig.cputype
> index 0c3c1902135c..134fc383daf7 100644
> --- a/arch/powerpc/platforms/Kconfig.cputype
> +++ b/arch/powerpc/platforms/Kconfig.cputype
> @@ -278,7 +278,7 @@ config PTE_64BIT
>  
>  config PHYS_64BIT
>  	bool 'Large physical address support' if E500 || PPC_86xx
> -	depends on (44x || E500 || PPC_86xx) && !PPC_83xx && !PPC_82xx
> +	depends on (44x || E500 || PPC_86xx) && !PPC_83xx && !PPC_82xx &&
> !EMBEDDED6xx
>  	select PHYS_ADDR_T_64BIT
>  	---help---
>  	  This option enables kernel support for larger than 32-bit physical
> 
> 
> So unless anyone can tell me otherwise I'm inclined to commit that ^

This could silently break someone's config who's depending on PHYS_64BIT (e.g.
an 86xx kernel that happens to include an embedded6xx target as well, even if
just by accident).  It'd be better to have the MVME500 depend on
!CONFIG_PHYS_ADDR_T_64BIT as Nathan suggested (if there's nobody around to
test a fix to the actual bug), which shouldn't break anyone since it already
didn't build.

-Scott


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9796bef636f2aabab6eaf44237b63bd94c01d26f.camel%40buserror.net.
