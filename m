Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBD7Z6T6AKGQEWMOKQ7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id A319B2A152F
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Oct 2020 11:29:37 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id z125sf6466390pfc.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 31 Oct 2020 03:29:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604140176; cv=pass;
        d=google.com; s=arc-20160816;
        b=wMkLkBX0b3FSTF0b/Dx4mcwoWzkTo2EVIK8WJe1VslpVPeDGQIQOwTRJkhwsgl7QEY
         yNj9uA6LmP2ur7PfiRxCoMk1UwBpZJ+74QHejdDydhTDH86C3HI2WXY3i/gzYZjKNfEP
         AO3r3NnPqsWq5cbIwLOGbyQUYNSQMpUbeoF0K6zugomsvkECTEvhyFl34UMqV8Wq4zwC
         /19D2U/UjdzcAC/BZAGe9MJIuhtabIxnXn9SoJNQzxdiJ+XvYlS8rnuVngpvpZLsT7wH
         zqzD5p+L5zljdi/FZpz286QhvpwN6NKi/oodhgP/t/C/o/Vd8pbfqd4GkomQXDpB11fS
         cWmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6AlQfWwIaXKuTsYWFnvBBW8PG9bJZD0Z8P2QOpUY0Kw=;
        b=AE2GFbKLRGbqnlRpJfVSBh6J/nJz1qSTIiec1tDq23WYBY7gCHY0dvLbE90UVFO5Fd
         bAXZIzt1pxM+HQoCwzesgxeZP0N7Qx4kZ8J4PBEg3XUneov3zuNkrLR8oEwAcqQHsyhK
         o2KZcFsMDW4cXbIRhuNGdYQ9pwvaxdo5OswE+k/J63CxXGCOdBXO9ua9qmMZKjzs7OXS
         QNAcHoNRaKbnLE2cdhzKfeVe5dLDVGcPpCc4BdYK5J3BPn0c6vQQoyUewGFDwaAWZH6X
         qdV80k93MkZFM4ylXsbHGp78Zdq1MgW93mn8Y5ryWJTvwjw1QXvu1gEOc22TpcypN18D
         uSkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SunlFEtn;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6AlQfWwIaXKuTsYWFnvBBW8PG9bJZD0Z8P2QOpUY0Kw=;
        b=rFz/vVUl0Fcg1c3x+h6SwkCYpU3NBB4+lS5mq0G+K74p12w3w3S204qlLBQDaUQK31
         TumbE+/S/YWWve4aV3GclxV1Vs3Xjm1ZeJBO7CH4TIke1xYd3aXz+iLLnaPHZsKvDKz0
         UHvgSZKs5RTajiQEI8wiJlFnOIdYRjYrxMzpRfM0+OFgFkWhKprmVZ1CSMrP6cKZJgmH
         isjKyQG5/Ht6SZnV2aqVoSGqvoorXaA4pXV3G5mm4yDyC/Ts9bl8wNGpyHKftR5SzN6U
         dAIRyuIfbj8ogLbphONsM4EgJL8o7E4wQfQZw49ixqTupSu5wsYrInT12GZ6L7s2zzA2
         X/cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6AlQfWwIaXKuTsYWFnvBBW8PG9bJZD0Z8P2QOpUY0Kw=;
        b=Kg2txWjRzRKIaPphg+i9JU6XzMZo5SxgK7Af5jRy9ILACn9CAF4Nbpd3Vb7zEhQAau
         AiQd3aGlT1UXOvaVi43rRktEcXYH2YDHVb7IdtRSiTT7MpdxAfcCB55+NCGHUar4E4+D
         8Pvj6GcnH7FC8t8oqdbVjg4xmXUnLy7Wrwt6zFEEDqPEeZXV5x+imbWUMj/iq+h/HFZV
         f3VJLbgmBvN9blE6u7psyDXWx8UJLKHEfsjKr0plV5G9MG35B56fkZHDiu7bn/pZxSXk
         Zrf4q4PoPvBRZFl0UXsnGr7tvsCUjV5SJgL3692vjdPSKU/76VWDAof24PVkS4mh47r7
         K1Sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BoGix6DPepoH4xrLO7FDoDicdbDegUCzbX3d3ZFs+U+ejFNQ9
	IwU4seDllSMOaH6f67nPcpE=
X-Google-Smtp-Source: ABdhPJwXrLwaGWt37QUpkW4BwhwUvSAUiB5HRCGzELhKdDDI87bss0kDo7DnqVTqUeKXdNvmDSK7Hw==
X-Received: by 2002:a63:cd45:: with SMTP id a5mr1501117pgj.106.1604140175854;
        Sat, 31 Oct 2020 03:29:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a107:: with SMTP id s7ls3346419pjp.1.canary-gmail;
 Sat, 31 Oct 2020 03:29:35 -0700 (PDT)
X-Received: by 2002:a17:902:b410:b029:d6:614b:679c with SMTP id x16-20020a170902b410b02900d6614b679cmr13397879plr.79.1604140175298;
        Sat, 31 Oct 2020 03:29:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604140175; cv=none;
        d=google.com; s=arc-20160816;
        b=HAcrbn2253d2LEFcRZm+HAw/lqaQin9BmLAAGsLSaZpWx+r8yQovdN7hj1Z2/BI2RT
         +IPM22E3iJAOiruMtdAyORxcFP/N2Ng5d+HwvCSFXLyQ+LzXXDAU1VBCMfUZvup/PIpw
         sfdJmjEek7DIjgzQeVSwmEQXgT7QNh4a1o1Ej0dYUSWvgyezS8O8m61ek2zf++d50AA/
         eW6mgXFHDv1+ABoEDFr4BQZ55D2+AUQT6iRPKCVBfBZg1QsCvluf/OhqPWItUOZSxBkR
         cGQFHoL94l85GVgSCOR/GMiUIKlM2MZYSNcgJukRf/4yTbVSnFZWAwguvNALawATx9az
         8e8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=D9Oyl8ki2Ke4FtHDdwhcJSzWrbrJz575cezudUs+VWs=;
        b=sJaWMoGyKp7Wlzi2MOD94sNwXO4yBCq2buqrW707KfvVLfoL/0B554I2qdqrtYWYfe
         SGxdIPFrj+Kd2pUq1gVSd5vv1yeNjJl/HwqKYNDefenC3EaArmUqtiHKE8d+5fl6kZYc
         qDUlfJnKKsQa2kDtSr7JDaSfb7gdhTM+vzSItGkhtZDKrTApa8GLLNZFcLcaVJ4XeG8Y
         Sxpbs+2dNy1AF5hbo5hckUfX/4+pe5DkF0s9pnvz3RL/lbXFjVQEO6etxR9YHxtZoScr
         lCGtFsbzxo5JUPiFFeBF8j6yu4yF2gR4LbDE1F1Xp8tUMjpZD+qo3xYDtlp5LDQw/rhy
         LHyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SunlFEtn;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j63si499332pfd.1.2020.10.31.03.29.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2020 03:29:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 805FA20885;
	Sat, 31 Oct 2020 10:29:34 +0000 (UTC)
Date: Sat, 31 Oct 2020 11:30:20 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "# 3.4.x" <stable@vger.kernel.org>, Sasha Levin <sashal@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>, Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Jian Cai <jiancai@google.com>
Subject: Re: [PATCH] crypto: x86/crc32c - fix building with clang ias
Message-ID: <20201031103020.GA961225@kroah.com>
References: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
 <20201030190245.92967-1-jiancai@google.com>
 <CAKwvOdmduyqjn7d6mG6CrSqCJC3ikJRphjWfKnqxvC2P=yoU2g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmduyqjn7d6mG6CrSqCJC3ikJRphjWfKnqxvC2P=yoU2g@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SunlFEtn;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Oct 30, 2020 at 12:06:28PM -0700, Nick Desaulniers wrote:
> + stable
> 
> On Fri, Oct 30, 2020 at 12:04 PM Jian Cai <caij2003@gmail.com> wrote:
> >
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > commit 44623b2818f4 ("crypto: x86/crc32c - fix building with clang ias")
> > upstream
> >
> > The clang integrated assembler complains about movzxw:
> >
> > arch/x86/crypto/crc32c-pcl-intel-asm_64.S:173:2: error: invalid instruction mnemonic 'movzxw'
> >
> > It seems that movzwq is the mnemonic that it expects instead,
> > and this is what objdump prints when disassembling the file.
> >
> > Fixes: 6a8ce1ef3940 ("crypto: crc32c - Optimize CRC32C calculation with PCLMULQDQ instruction")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
> > [jc: Fixed conflicts due to lack of 34fdce6981b969]

Nit, please spell out commit ids as the documentation asks you to.  I've
edited it and done that now...

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201031103020.GA961225%40kroah.com.
