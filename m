Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5EHQ72QKGQEQZBX3IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8B81B6111
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 18:36:06 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id h33sf4324647oth.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 09:36:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587659765; cv=pass;
        d=google.com; s=arc-20160816;
        b=cYkG4IWOqc9OOSHiwsRGhYh+LW+44TO7uIplTb1Mb7tPwOVfe+K/pzhWcDxomt39Yl
         CuvOwjkVRfiM7FAk6KJUhQzKiiDzIkUSgp7kQl+2F/tzidVcBCucMWMBKlYEOWIEeGPa
         0ZdFOmthDHm8YfkSfkhfx19ANzsxxSUsCPhxIU11HNElOXtCgoTTMmMp3iEmY3vg0It2
         6SOn7NjEOAodmXweoNWQPBaCO/yLkCJZGVqY2iFLuP8a6n9guM4on19YjfmzdC9YYz/+
         cpusnXuBywjHA2mrkhnXZpNopEN7SEaPmREWE0Bhk2YHHikntipJlt8mSjU6vmP+iiok
         hyiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=fPJ47uTRYPzS25Am/VQrroaY7byMSxSEBAWkLcpDcR0=;
        b=hVbAWM1ZNwE3xQbdpT8aMoerrPMcC/2QgZmpFMRaRMltxGXJvr8RiamDRMUu2QW3ET
         rRvo5qzYh8zMarBTft2zWOqWgkRyoTcD2oJh2MoOlp/bdRCkPZKqFlL8DnGKII+vzuPb
         +IodO7eoLTHvrB2Tho2wnkthkZsgt8vjn3dYw3vGkH6ozCv6hr9tra02ZNugCuP6zttO
         n9/C/fb9j5YufRScFe5az8Ds4fzC23dWzFnwh2LNAX8IWv/Ec+DFHOyHxskt0C7G374o
         Ebf2n4yPz8YhBtIBoCjrlUGzj5GcNRKu/md4T3+QYk7Y3owo4y25W//OvUiTozTS/f3f
         201Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mrzi5atR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fPJ47uTRYPzS25Am/VQrroaY7byMSxSEBAWkLcpDcR0=;
        b=k3exLGY9b3yYsuJF7yDFGJIlZWfHQmciPfwv3C7V53AG5/RRdhu26dYCWt/AGvVeup
         F2IYKVAHA7k6PxVEN6DiJEeLwebyES/92viLlGG93GautQeZ61co9Vq73AH7P03ZlZwk
         GXO9hnoCnzDdMoadNDidU591Uq/99k+JXBdZwcgcU9VOzYYP+I3JykjAGebScVsMDeMO
         cCzdstPIcRGqyFgF3c+u5kvTJ5IXW3+iVisF7b+9vH3GMMuAYI8kxAf5fjYS9dXBBbh8
         pdkKyJcTkNdJPX4YmmcWV+2mecRQTB53RBiRQQ3LIbJ++fXsZJkNFiEm9ML+kdsNMZnR
         Kl1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fPJ47uTRYPzS25Am/VQrroaY7byMSxSEBAWkLcpDcR0=;
        b=SCuuYGoBFtlYY3mZ/VX7KRG41ikjkHEULUf+1x98srkshp1s/j1zKVNerqG8xzj/+j
         ppB2aLqqXIQqCudfXfAn8XVMsLxCUGk3E//id6tLgXNvThK4lKMPbsmTqwU7R1TFgJ2u
         rXZ7afqogUkvdDyWWk36TRRax3gY5TsglXqFlwZEao/lW6HI0unTUrA+vcaZObFIyg9Y
         cwXDCJ3DPpFEsukSIbsq15n1xqbPXK3olEIk1UM6PADVZrutzz9Px6aTErZBF/XoQYen
         aCyC27gkVP0YKXhaXt883XhYBWE65VrVZ0G4fjgA+TpFjcrQfc4Ozn9KP6sJgdq1SwYO
         bVjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fPJ47uTRYPzS25Am/VQrroaY7byMSxSEBAWkLcpDcR0=;
        b=oDCKf0lPksWTchANgpiwllvfC46BDwmGXE7hAVv5svRLOhkm6R+r33OUwu14oM86og
         fm97pLS2Oq8jfbwKEAqLkhwjFHBV0isMB7C8QXTtvu+8Z1PrIwApxVp+UyKIjr5tR4Oc
         7Umrpodoc8oyt7ZWzOA2miYaeY1usG2JFmaA3u4xH5dThW9JIqyri/+cio8vepRavPXw
         fz5Md6VEqVv3v+toDFFOCJsBaCXeaSsZ2usgA7JOIMEH3NPd3cbv3ICxQGyrbynBirtL
         lwabF0iLLnlsSR0chWSt557xtu49rGgKTFZFTrJKrMH3Rd5DwOUgIGa5YglFDJt9cPm7
         FnKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubvo0qsGuvk1GuBNXyiVPMm/Q5puD0PhQhHZr4dHbgtfmP6XRLA
	7LixtY0q+rPmApKU3p7Hy4Y=
X-Google-Smtp-Source: APiQypJGHLwdyY9oKUm/O52zBTkFctmm5OPprg/1wi9+tlEMS0Az3bHbIJAEGzX66SpL2X77ipVQbw==
X-Received: by 2002:a54:4187:: with SMTP id 7mr3756969oiy.40.1587659764980;
        Thu, 23 Apr 2020 09:36:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:363:: with SMTP id 90ls1562133otv.6.gmail; Thu, 23 Apr
 2020 09:36:04 -0700 (PDT)
X-Received: by 2002:a9d:564:: with SMTP id 91mr4173945otw.250.1587659764588;
        Thu, 23 Apr 2020 09:36:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587659764; cv=none;
        d=google.com; s=arc-20160816;
        b=R3Atz9Ozs0qLh1cgt3zGFbqxBMe/EiUMBqEZMOVHCvsMvITlQURUbAV/is/dGoysoo
         cHeOLf8VjcEH6+kGTGMgJOKG+WWyl2q6Ld6gdTy7KrvpwmD+XJMP4sL7VXDcDlhSTvck
         a0cXlnbihxovRkcE32HpkffU6gwTNMR8qEqkJvR5qHC2yTEL8orrOrVFQsZuCh2Li4Tb
         fudK9XwDtelKpz8/woWUb0IqmwYliqVmnpTFuw+2ZXw1NfG6X/6QNFzjFTR+EOwpcMO4
         CfGXQS5zTOPSLxFt0rW89QofgLNe1UhK0lbsUfx7uwYWQmBoQOzR0rzE/FJYKIG2UcgO
         885g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZD5R6FmUjPmeYL4MRpYo2rDAvGPliTwTgGLA+RltUqk=;
        b=Bkus2pxlxjhQLnmfIXygSO3xH5ZWMqWRQ237jy2ENSiKXAZSVqgWGxxO32zWAVdRJ/
         PPjio7Boq3yDGjZp6EJa1e+BE+h7ZF8Ajp70K2cJLBzLW3fOqe3rb1ZuhrapwWWVUraW
         4ThUW07/pMIZt0bBR5/3JcVofyN7/dMNxR5mQ3iGUw5f6OxzdMTDO6nsdr8r+yhsvdLp
         jPm/8FCtb7oN+PDSmjjZAEe9y7n6M3FOZryub0YrEW+Grn01f6ZUq77OqTOH1UCNg54L
         FRrhNJWytC2OgJBVHAWoV1r4Ee4Ig3WRlkKeYdW8xFzbZFPaixkr22hLWUClaoefNQyJ
         Xeag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mrzi5atR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id k65si336095oih.1.2020.04.23.09.36.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 09:36:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id m18so7113100otq.9
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 09:36:04 -0700 (PDT)
X-Received: by 2002:aca:f254:: with SMTP id q81mr3723853oih.12.1587659764320;
        Thu, 23 Apr 2020 09:36:04 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id b19sm791382oii.1.2020.04.23.09.36.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 Apr 2020 09:36:03 -0700 (PDT)
Date: Thu, 23 Apr 2020 09:36:02 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linux-crypto@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH] lib/mpi: Fix building for powerpc with clang
Message-ID: <20200423163602.GA18872@ubuntu-s3-xlarge-x86>
References: <20200413195041.24064-1-natechancellor@gmail.com>
 <20200414135731.GA8766@gondor.apana.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200414135731.GA8766@gondor.apana.org.au>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mrzi5atR;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Apr 14, 2020 at 11:57:31PM +1000, Herbert Xu wrote:
> On Mon, Apr 13, 2020 at 12:50:42PM -0700, Nathan Chancellor wrote:
> > 0day reports over and over on an powerpc randconfig with clang:
> > 
> > lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast in a
> > inline asm context requiring an l-value: remove the cast or build with
> > -fheinous-gnu-extensions
> > 
> > Remove the superfluous casts, which have been done previously for x86
> > and arm32 in commit dea632cadd12 ("lib/mpi: fix build with clang") and
> > commit 7b7c1df2883d ("lib/mpi/longlong.h: fix building with 32-bit
> > x86").
> > 
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/991
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Acked-by: Herbert Xu <herbert@gondor.apana.org.au>
> -- 
> Email: Herbert Xu <herbert@gondor.apana.org.au>
> Home Page: http://gondor.apana.org.au/~herbert/
> PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

Might be better for you to take this instead. 0day just tripped over
this again.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200423163602.GA18872%40ubuntu-s3-xlarge-x86.
