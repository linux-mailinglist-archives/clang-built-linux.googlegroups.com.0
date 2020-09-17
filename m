Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBIPKRX5QKGQESBJMMCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FC426DE68
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 16:39:30 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id b17sf1015297lji.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 07:39:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600353569; cv=pass;
        d=google.com; s=arc-20160816;
        b=PsBNFo0I3HKTp2DSTH3GNz2eGnDW0pXuLSHqgGBunxVz0bDq9KPq/G/qI1v9BdrOy8
         /yUsHzi3GANH6OMarwwBvnAQb3IFex5w8XcMBUQsizLVnPjnURe3sbsay92eVkVPJwIl
         leCjDprlDLqf8l66rFLg0Sr+XF2Cl5RUoqTDqzPQkKnXquT/cAmGHXuxCrvGmyY6vg6F
         FSeH8jnePe8xtwV1uSxLP5YdhD3GWPHUFOTLIDB9Ooy9nY271l0ofeE0n5W1s7VakxHn
         sBwgPROb7HD33Spc/yl3NHthm8QBzsLGVRT4fWvxOxnfjvUm2+RwOvpuWGOyXtivL0lL
         6Urg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iliNfZT+mg2Q/AZ26lkvRGq+hpPbf7itiXcn3BbzqMw=;
        b=KRzy+S3f9S1Lbb+SVXytUDnSyiPujjesLcq9T3rna3X0flMwJu+rp/W4vJDnAo3YSi
         9FIYJ0nToua4X8KlUynXSp26YDEN0TA1D1WbGHd0nXIXva8QktAWyR/+a+Zzff/NJEls
         y+p2r+Y4E0Ll3DhGJQszv2VGHFKEXLtgYzCDhc2/qrh3CGgiL0Kjing998YuBjOOdKVE
         /PRaRtY3+tGkHhZ95HXwiDvlxjR0DFooShnO9eecverdNV99/bhBoolQTAXrGikkpmsX
         tkMD2pWW0EUyRySaH9/t/PsKn35ZFHN16gA1UkC+b+70vexsIbVbyOmjPK4M7lJQIzXu
         U7Lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=fnDxZUej;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iliNfZT+mg2Q/AZ26lkvRGq+hpPbf7itiXcn3BbzqMw=;
        b=INhk6e5wLpbJlgLWP03fq960VIy/e1LsHN8INzVDdi3RuLXb/1UB8pECxtsYRyK/XU
         P8Gs3KngQKRGlnWHefar6YGRxnHcmmTjZcKnOJJNT8f9cypGdrr8unyxaZ1TrjE2oA6j
         BzvVQS4UT7DBN/VqaQPYCudbISnZN1zvLCFc7r78oRJTlW1Rhm+2dH2q0iRzLF4qwqhK
         aemQllWJVdvoTpVSLfds27l7kz7TnPBBBu2y/+ljJ0ZO7yvirC57/Vcyl88KKKKbTM3k
         fecUwaMfrOLtOmSJyQNboY+CEl9BLjdGf1Cq69qq8IkRjBC0QQl+dbmw4DSXqzaFf9+/
         bwaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iliNfZT+mg2Q/AZ26lkvRGq+hpPbf7itiXcn3BbzqMw=;
        b=aCg9U5V5GyZAFvYRu7Y2vgRVzBdbYHbsdWAdN0Bt71amzTWNbYMjbohG7Yax8vnDZj
         YWblBg8ZEMY6r8v6jRLvQNG1QZ8vwAjrANwb4KvPFAIlp0g3Lm3/1wGo3GhcLoaER5oU
         b2TSHV0nTyJStP3v09oETkZCNlpcN8Oq7bxWssew4zoUZNoIF1lRxbthrSSM+d4F44JA
         bSvtK2cDSA9m5oLjdaqsxoF1dOu3tX+y5AuROIt6T+Tfdrau9kOslMYL/Cz8BmfTwEeL
         dgFjJL7NR9o28p9uWsAyJp/wMmq3sXQlvTtcjsAyT9RdBoYgHbPR1Ph6Zxpk72d1e7GF
         JfEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IbfD70PXxzRaAyFekdG3AsXPlNjG5oToB0/No36rn6JYGo/+W
	FjCvnWJYq4ccpVogkNIyaOQ=
X-Google-Smtp-Source: ABdhPJzigtaKgiCvQakTxte5g31H5lWtRdVmDFpSHC4hWQVUG7UGs/nIg8qWCXzw83zDCEj1X0+p1Q==
X-Received: by 2002:a2e:4b12:: with SMTP id y18mr7130167lja.330.1600353569788;
        Thu, 17 Sep 2020 07:39:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a556:: with SMTP id e22ls366895ljn.9.gmail; Thu, 17 Sep
 2020 07:39:28 -0700 (PDT)
X-Received: by 2002:a05:651c:28b:: with SMTP id b11mr10360826ljo.228.1600353568755;
        Thu, 17 Sep 2020 07:39:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600353568; cv=none;
        d=google.com; s=arc-20160816;
        b=jRuXILx94JWrZFe23FnJXscBQM4EpievG26dUbnJpq8Y0GSWXIPGW9jke6L57pxpQ7
         arxiACjug124PREf+ZQFwRk2G0aEnX3J984G6RYuRjg35h9P/r0K3Nz8E/kVHJPQO9wK
         cbK4wGAM9KnONg/zrstsCth3KElYhdl377CmwPoxsELWUzSF74xgr2C6rIdEp2iU9glH
         Gmq5f33nuecbODR8nkXmgvQ6UFVsSXOhi17ZfyBjDVJ33RjP2O/+fT1c+iGnpTOtwlpz
         Js4oqVmpTtb6j2uveAOReW7aqEgE7WZ7naPtgiyUaEo7ve2EiOActeeNeawdyfJKwH/r
         cb7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kTdpctjr26+hadEPAalxUdZ4IHHCvTX0roS3TMkt6bQ=;
        b=Cy5KEkzp6+iGc5W92sSxatgHkZnfZypZAl08v4HK2Nr3L6Ny8R7ud+MLVRVQSZ3iCG
         dmiREoqpx5ASylJe6BLZieeMWeLVmb1L+6CJ3ad1gNL/IUDISt6va9cx3OpkXU9vqdI+
         ZKAjGIv6t/Wfu5EWfIsXUG06imGYcXxI9Rh9Y83ogyDXBixY05y3YUggYZH12E52J48Z
         q/NEueJUaAgyGz3GR8aBjcRic4WautWjLM1ZJPfYX6Acdm8wKBTj8OdhCQG3ja/zSU4F
         7zQieEahvITadcRWntetKwgYKwtS0UrOj2WO69+zI2h3mVetPctt+LwzUXLVuSEeEBCW
         ipJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=fnDxZUej;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id c20si213036lfb.7.2020.09.17.07.39.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 07:39:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f1053001db76021617d6ec9.dip0.t-ipconnect.de [IPv6:2003:ec:2f10:5300:1db7:6021:617d:6ec9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id C42331EC0260;
	Thu, 17 Sep 2020 16:39:27 +0200 (CEST)
Date: Thu, 17 Sep 2020 16:39:20 +0200
From: Borislav Petkov <bp@alien8.de>
To: David Laight <David.Laight@ACULAB.COM>
Cc: Andrew Cooper <andrew.cooper3@citrix.com>,
	Andy Lutomirski <luto@amacapital.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Lutomirski <luto@kernel.org>, Bill Wendling <morbo@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Greg Thelen <gthelen@google.com>,
	John Sperbeck <jsperbeck@google.com>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] x86/smap: Fix the smap_save() asm
Message-ID: <20200917143920.GJ31960@zn.tnic>
References: <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
 <441AA771-A859-4145-9425-E9D041580FE4@amacapital.net>
 <7233f4cf-5b1d-0fca-0880-f1cf2e6e765b@citrix.com>
 <20200916082621.GB2643@zn.tnic>
 <be498e49-b467-e04c-d833-372f7d83cb1f@citrix.com>
 <20200917060432.GA31960@zn.tnic>
 <ec617df229514fbaa9897683ac88dfda@AcuMS.aculab.com>
 <20200917115733.GH31960@zn.tnic>
 <823af5fadd464c48ade635498d07ba4e@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <823af5fadd464c48ade635498d07ba4e@AcuMS.aculab.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=fnDxZUej;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Thu, Sep 17, 2020 at 02:25:50PM +0000, David Laight wrote:
> I actually wonder if there is any code that really benefits from
> the red-zone.

The kernel has been without a red zone since 2002 at least:

  commit 47f16da277d10ef9494f3e9da2a9113bb22bcd75
  Author: Andi Kleen <ak@muc.de>
  Date:   Tue Feb 12 20:17:35 2002 -0800

      [PATCH] x86_64 merge: arch + asm

      This adds the x86_64 arch and asm directories and a Documentation/x86_64.

  ...
  +CFLAGS += $(shell if $(CC) -mno-red-zone -S -o /dev/null -xc /dev/null >/dev/null 2>&1; then echo "-mno-red-zone"; fi )


Also, from the ABI doc:

"A.2.2 Stack Layout

The Linux kernel may align the end of the input argument area to a
8, instead of 16, byte boundary. It does not honor the red zone (see
section 3.2.2) and therefore this area is not allowed to be used by
kernel code. Kernel code should be compiled by GCC with the option
-mno-red-zone."

so forget the red zone.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917143920.GJ31960%40zn.tnic.
