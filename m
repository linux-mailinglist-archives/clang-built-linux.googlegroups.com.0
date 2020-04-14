Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU6X2X2AKGQE5JREWFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C631A7538
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 09:52:53 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id 18sf7891585pfu.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 00:52:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586850772; cv=pass;
        d=google.com; s=arc-20160816;
        b=VT44j/6WXagBHPW2zip1qRTw60ypS/uVQSzJ4vpJXNF556X2SviFl0meLZELsy0QsV
         R70uUSuE3FAGtAA5uPvoce5m1hrA6soKGsX8R902A0ub6r0ETQjulJnFYUV86Q8louso
         kGiy9jzIjWgjLbobsgykFVS+MH9PKHWt5V3M4V2aHfRLX8srvbdztfYaQYMtGZF5PxDi
         7sjsGYOCep0I8swE7hPrN9cTbCyZGNaUvSrAxMRWefr4QJB26Dp5PXJ+YYCaqtTQUQta
         sKotvfGAPniHrT7z8ZidhPN5L0VpAogCMPX3rUFFOlqyh9udVQIzEIToUNHe+GqCFPnD
         JyWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=v3V36VXWA8eCeZiT7kz7BLnsnZN1ZO+wGCHLk1iM+GI=;
        b=HAcXnmrHbg5RAvPpKTl9y1AiT/rhymyumax+YY7GBvpL5U1o22KsSedebXaTGk4eHE
         /XMH1jrNisC34oxlW1JKDrvrd46dzpcbYziXHEiDZUj3oNEYNw1iRMDS3axsZ6MQAdF4
         35pDsRFu3TKCd3Y1r9Dkd7ekVRmAjIOtEcOG8dv7xA/AzZPCZqHG2lgJ6Z5V8547O2Jy
         h+ztxMWm/zS65SEgCcsrb0oFPemgEIyE7N9XU5O/mCkxETTXHUq9eOUggnHeEd9RR3ml
         FZubm4sHE7PGt8d5bSRw6CLKnb1UHrZn6qih+yloEkwjQRBDMegL2lrt6pPsf8e0z+m6
         WMEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kTF+QJAp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v3V36VXWA8eCeZiT7kz7BLnsnZN1ZO+wGCHLk1iM+GI=;
        b=Kz8FJXy6zyoi4r3JKPDsb79jx8fJrau4TiXjCIR62gIdKnMXHGYZUbO/nw37FylCPQ
         X3g9m11/69kPL+XluWsvrlEUl3aiAiAp+EO+Lqx+3q2pn+nL7Q20kgECv5FHqS6KgS5j
         xHNNOeT+epWmoRSwtHJg7cHzOEhR2HB2l1grd0MfisBj0E803aYGDh8SVo+fui8teFWq
         mA2J7W4S8+Th3dpyRLgLUrDB+VuwMkTyh2P/ztZRjZj5dpBRV1vTe6K/C11LJlQqvs9C
         k1iw5DHtxNVihoX8ZKrP/5dFWBkpP2uNQYhESv/FLN9eHsGkOxTUYZwcJn4gnZGSlzpO
         hYsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v3V36VXWA8eCeZiT7kz7BLnsnZN1ZO+wGCHLk1iM+GI=;
        b=vYRzwaI4AYA3IHCB/P/ldGCjxzrrKzPjd+FpAgDaFx4gjl2dYxhXnrCKmQYkuce/1v
         WQOsffS3I1OeBUt5+GeBpgAvxDSsfBnQMa4aG9uxUAZuqsKFcFTVjv3i8qN5YHKK95HO
         MjQ9zhOsH7a6QwfPTMomznah4amAGg9XMOBIBgBiFl0FHHHv9q+7A8gyVf25d1IkbaLX
         TH35yPxCvHr22dAQUUxI5Y8BQ7lrwKVI908GzypzHwY5DjfqMtG8q+L1/dTENxhRzJxf
         6f6g85zjQaHkT3DxO9KdvzuH5Z4i2b1jXgJcoykUmjtPdBWDQDQNrozKFYcbaMagXNPd
         V6cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v3V36VXWA8eCeZiT7kz7BLnsnZN1ZO+wGCHLk1iM+GI=;
        b=jcs9LxMN0aFNBGKeUEGUz0FQu5E1JLrHbjECnQTOkPVoCechyoTOjmdQ33+h7XErr8
         zWCSyfi8e/WvsIjOPnRCD5B538E39YzPsGIGQg/YlyBY97jpIpCVERJZxdj5djDUUOx4
         BN6nj7ZNUH59XYBs/MjwCEhTeS51LnpnTTKxC6iGBJgfLQsvtHkDWgwoTs65XrLyqg1X
         JmuOV/REEWkRYvdG8064lbJb929w6IKKPoQEBIACQZ+NmK1lrVjNIEUqjAx3uk+35K2t
         V+JhMF1Uo6GF5tbdywwYCFlZ34+S29J0Qj+GDmlvxuhIAw4LZLfftZYVolEnGhFuspsM
         i8fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubzJ4SEj/j6pAL81osR06uRP5zkBOADKADi2TNruIbxZApi9hXs
	iSuOd1li/V9UcHtw+x/Hu3g=
X-Google-Smtp-Source: APiQypJyLx/JtEO1/F9bAccDGP4GufMsAdBtlWhRMWz4F85iaVWjFChnHcAFWbytIrx7H7hrU8g2Hg==
X-Received: by 2002:a63:5c1c:: with SMTP id q28mr20749601pgb.125.1586850771868;
        Tue, 14 Apr 2020 00:52:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8c0e:: with SMTP id m14ls2280857pfd.8.gmail; Tue, 14 Apr
 2020 00:52:51 -0700 (PDT)
X-Received: by 2002:a63:741a:: with SMTP id p26mr21885599pgc.40.1586850771407;
        Tue, 14 Apr 2020 00:52:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586850771; cv=none;
        d=google.com; s=arc-20160816;
        b=Fw0iwk4oejgASWF/jM6A0TQbCJLzP0Ry0a7Pgi+Uh0uGEsEkQURYuNbCyuwJWy4iWb
         mp/SXPp5jxdvH1Z8I4hwR3SoUEpwYbysEyV1WyeDuZuqtxq5qhYvgaI/bcSQHdxyU5KN
         2N0oh7s+kgS+TXRZI/gZPP/tmbf+TGX3uF89hOXAqowkq/7vzm6P/oAN/Id157oLQ20V
         G8knLHSx9LilvW5zdGfAqPkbEz5ptPfmUIU2o4zshUUwhAoXBwJqECkDLnfp7ZC6opAr
         qcR5t5aM/DT+UtX8DT6aBQ8TezubFINsFYzzR2/Kph2AmKi6SsWM4Ykx2lZ+NramXq2v
         W1sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=D6QT/rm13y/hSPEdiFNRQzoj//hI3QF0DgCdL+Hvi3s=;
        b=Ff6zr0gQ+e0LDZSJ2kN/iEF7QKj/k6Sr67TgnuIG7JRskmnj4rCiLmevkH/aWSRSip
         FZap52ta7UsnWZej1QQ1eEuqj+tvb8rzr4DihSY+s83/nH9GjgljJmoyN/IznBTMmcpc
         Rf0oRZFH0kyTMieWk35MFPokQwr6EAfArkbQupPbRYPnH01+ZliprQOuRyCjAq3BSOFO
         hi8wyX1CKiotww8EKeWuRxrIbRgL8DG5ePbaAIqRchbiAW3u8Dj/n1F4q6biIXFmRg8D
         vmWMoJsKblJ9RCsRhZZCN/kJNNXHKF5lB6EmtfNmpfxbRsMldPHSVMzsRWHQUdlirPzS
         5Mtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kTF+QJAp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id a3si418512pjw.3.2020.04.14.00.52.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Apr 2020 00:52:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id g14so3680200otg.10
        for <clang-built-linux@googlegroups.com>; Tue, 14 Apr 2020 00:52:51 -0700 (PDT)
X-Received: by 2002:a4a:b489:: with SMTP id b9mr13563ooo.71.1586850770598;
        Tue, 14 Apr 2020 00:52:50 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id v2sm3016355oiv.56.2020.04.14.00.52.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 Apr 2020 00:52:48 -0700 (PDT)
Date: Tue, 14 Apr 2020 00:52:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com,
	Scott Wood <oss@buserror.net>
Subject: Re: -Wincompatible-pointer-types in
 arch/powerpc/platforms/embedded6xx/mvme5100.c
Message-ID: <20200414075247.GA23026@ubuntu-s3-xlarge-x86>
References: <20200413201034.GA18373@ubuntu-s3-xlarge-x86>
 <87eesqjzc6.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87eesqjzc6.fsf@mpe.ellerman.id.au>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kTF+QJAp;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Michael,

On Tue, Apr 14, 2020 at 05:33:45PM +1000, Michael Ellerman wrote:
> Hi Nathan,
> 
> Thanks for the report.
> 
> Nathan Chancellor <natechancellor@gmail.com> writes:
> > Hi all,
> >
> > 0day reported a build error in arch/powerpc/platforms/embedded6xx/mvme5100.c
> > when building with clang [1]. This is not a clang specific issue since
> > it also happens with gcc:
> >
> > $ curl -LSs https://lore.kernel.org/lkml/202004131704.6MH1jcq3%25lkp@intel.com/2-a.bin | gzip -d > .config
> > $ make -j$(nproc) -s ARCH=powerpc CROSS_COMPILE=powerpc-linux- olddefconfig arch/powerpc/platforms/embedded6xx/mvme5100.o
> > arch/powerpc/platforms/embedded6xx/mvme5100.c: In function 'mvme5100_add_bridge':
> > arch/powerpc/platforms/embedded6xx/mvme5100.c:135:58: error: passing argument 5 of 'early_read_config_dword' from incompatible pointer type [-Werror=incompatible-pointer-types]
> >   135 |  early_read_config_dword(hose, 0, 0, PCI_BASE_ADDRESS_1, &pci_membase);
> >       |                                                          ^~~~~~~~~~~~
> >       |                                                          |
> >       |                                                          phys_addr_t * {aka long long unsigned int *}
> 
> 
> Yuck.
> 
> > ...
> > I am not sure how exactly this should be fixed. Should this driver just
> > not be selectable when CONFIG_PHYS_ADDR_T_64BIT is selected or is there
> > something else that I am missing?
> 
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

c'est la randconfig :)

> Then Kconfig has:
> 
> config PHYS_64BIT
> 	bool 'Large physical address support' if E500 || PPC_86xx
> 	depends on (44x || E500 || PPC_86xx) && !PPC_83xx && !PPC_82xx
> 	select PHYS_ADDR_T_64BIT
> 
> 
> So it's PPC_86xx that allows 64-bit phys_addr_t.
> 
> That was added in:
> 
>   4ee7084eb11e ("POWERPC: Allow 32-bit hashed pgtable code to support 36-bit physical")
> 
> Which did:
> 
> config PHYS_64BIT
> -	bool 'Large physical address support' if E500
> -	depends on 44x || E500
> +	bool 'Large physical address support' if E500 || PPC_86xx
> +	depends on (44x || E500 || PPC_86xx) && !PPC_83xx && !PPC_82xx
> 
> 
> ie. it wanted to add support for PPC_86xx but had to deliberately
> exclude some of the other BOOK3S_32 based platforms.
> 
> So I'm going to guess it should have also excluded embedded6xx, and this
> seems to fix it:

This is what I was thinking as well; I agree with your analysis. Feel
free to slap the following tags on:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build

> diff --git a/arch/powerpc/platforms/Kconfig.cputype b/arch/powerpc/platforms/Kconfig.cputype
> index 0c3c1902135c..134fc383daf7 100644
> --- a/arch/powerpc/platforms/Kconfig.cputype
> +++ b/arch/powerpc/platforms/Kconfig.cputype
> @@ -278,7 +278,7 @@ config PTE_64BIT
>  
>  config PHYS_64BIT
>  	bool 'Large physical address support' if E500 || PPC_86xx
> -	depends on (44x || E500 || PPC_86xx) && !PPC_83xx && !PPC_82xx
> +	depends on (44x || E500 || PPC_86xx) && !PPC_83xx && !PPC_82xx && !EMBEDDED6xx
>  	select PHYS_ADDR_T_64BIT
>  	---help---
>  	  This option enables kernel support for larger than 32-bit physical
> 
> 
> So unless anyone can tell me otherwise I'm inclined to commit that ^
> 
> cheers

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200414075247.GA23026%40ubuntu-s3-xlarge-x86.
