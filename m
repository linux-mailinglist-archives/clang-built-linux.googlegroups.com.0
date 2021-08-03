Return-Path: <clang-built-linux+bncBCM2HQW3QYHRBA52UKEAMGQEWPXXTHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E0C3DE405
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 03:33:55 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id r17-20020adfda510000b02901526f76d738sf7024012wrl.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 18:33:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627954435; cv=pass;
        d=google.com; s=arc-20160816;
        b=VqUs6on5t/eCEI5nYttV+I7HMSQHGduP7nHSicb7/8hAt/GDmUhGrVitVwGwC+tYoW
         bVCUBMC5lv7d21Qw6pj86R8W3rcqUL3NbgNNiF3V3JLqicSEYHopQ/CvjOs2i2azpOXm
         9PY/lUjmDgFQKIgz/PQqX9oA+5kDJG4WTfWk831NhKosPdwzM39aCEe4YaVZZLBDoPU3
         anvmqWrSO03lTxzAB682DBHYWE1rASEPczhcrSNsZRT2pZxvlAHHwLN0C9Mn9H3x2EhE
         +1DaW3xVmNiPezZbCJ8ilC8x/zFbuz8OsKEJbxRFaJyy8z6PxEGEAtXTFOM09/c5sjPs
         ft2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hGf5j5o02Y36o6ZX327AkoB7FgHt2jh2hfoO0qBalhQ=;
        b=UTRrh4ZrE4r4X6ODz4DsoNOPvPjqewFtNaKEeRqGBfei2It/OaIdOiYC6v5vvuzB3O
         14I8fYFBeJtPioce5S4UsIiZUqdMWTU4J2aE/LihtXWIwvFWFzUxrOOymJYVQEooe166
         G+wT8mQob/kYUuJmrML/eIeQ8bNXLcUiJ2qDlSmL525nXT5NBCga5MdBEeQ284XQXWZU
         ec22IBXPjknf4/E481FaTtWFUbvYCCaawVDRDg9rdj9CmO656yJuLTr3Dh+zvSj601Yn
         egkdUmxPlehyw9ERnIu6/2pKTRUErtlHuTC2lg+TjlI1JiSjwXimZsrAa9Zxg7pRvhl1
         MBBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=iwraDYHa;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hGf5j5o02Y36o6ZX327AkoB7FgHt2jh2hfoO0qBalhQ=;
        b=Z6QwZbbB0hL75Fw5rOCpLrp85yeK5R/Vd2jQD8k3DqIRQB9pzfvdINg6i8NGJLQwqo
         0I/dQ5T6P93nPmFRXvqp4AlP9txTznxtGFRiREDYaqVrUMYr576YbuNahnuUqQJomi/o
         q2X1XtbHcs+mTozi5aAZ0ta+f4yLHv20biANA7Wp4n8OYHrpiTIv8orEYIEahEwdQ/9p
         el3KOz/svjlj5M/9w0zVgs5F6DtRcnVA3BEIATD2TvmHM9BprgYsP6p8VitE0rY0HVxr
         pAQUBwYEYpEvWqnVaPdiGxyaWHxda3OS81gcbEsZEAwIuGANrUMe5SE1bzq1VvmyQeXe
         wokA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hGf5j5o02Y36o6ZX327AkoB7FgHt2jh2hfoO0qBalhQ=;
        b=HbBLNO6kmez2eUjuft+Jm0H1uhj5VECBRzKwh/B1nWgNI0GpCVNNHpicJ/nknH4YgI
         Dcb4TNP581gElOSnob7+d00EacgpPMdngaCn9lDKJ1e8Ut5/5uCzpfcxxfFSD3LKX9qv
         WyAl/DkV0X0eafrAaLlg5PkG8a9+mf1YgSMV+5TaxZoevH3nGPQUdXXSnVfMLEKw+o2b
         ydBy1J916zinwSPXd2EeoAdXdpDpKsHPwZocsiHGh7U1jl9yTflsfA4fZs0+nnmHMOkx
         Zew0fViB0fdnfzGF1Gv4CdMVryxOc0NMagojfwPsq5M98f6aQJ4J1P7WW0GTmc/rzmEG
         tdqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UteE+HaoESpFc2ZupMtZE99cNNNRdfzhMxgSb/ynPxdHMNn+Q
	vRGwRcTqJElfzoLBeCM1C7s=
X-Google-Smtp-Source: ABdhPJyx6xyZOMsqYQITqNmzenLEA7hoNZa0FA+qs0lzUZSwsci7RB7VFb+88ZMCLvO9BdPSs29zrw==
X-Received: by 2002:adf:eecf:: with SMTP id a15mr61986wrp.269.1627954435646;
        Mon, 02 Aug 2021 18:33:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db90:: with SMTP id u16ls2598339wri.2.gmail; Mon, 02 Aug
 2021 18:33:54 -0700 (PDT)
X-Received: by 2002:adf:f351:: with SMTP id e17mr20447044wrp.360.1627954434733;
        Mon, 02 Aug 2021 18:33:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627954434; cv=none;
        d=google.com; s=arc-20160816;
        b=sOWJcx/Tc6lHkPqtrLsizEs3OYHL4JvbhSHClqSqTdBkd0ESfbZ9a1hsfOroYbS1dS
         E5gWsitc9zppfoKHN0w8f/spovA+a6bd7RNrRRQjHXOzBuhJ94/UXK6N6IziOmMNsSkq
         +PAuoYPMLSetHEkLNKHRGEV8pb62R0mEoZtuxVvHiqwoScuQcgu9FKGQVU+JKmZlrkeH
         /NHp51mZGb6iGMNmQ0e6BGE1RM/WCiOzp+uyNLdvRCFITDrAvfIpymbq77cEyAaDtM4i
         ln/a8j2CJzHNCDFev48vccH7fnUFHYteifAzxU8T6EnUOrdQaChkzpP1Z8F1IUwQgAyU
         JrQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6binG8ap9CTuGzImVmNqLKbVkvaarZSfoUBW8rg2IY4=;
        b=v++6Nl5MEbExkK+QMV+p1CUuh1iRKgGZ3McJ+gYLtSIXU5uLu5uyO8YT6QLi1depAa
         E5bI3Qlwtf5xECHZD7HcBFDPOQnuyAhM04CHrpfjv0nzJp4PT7CA8XOeodTveGTx9aE9
         B5bqcWUb1WmHC2zYsrnfUoZV3M1V9mJa7fsMMB7ohKh5P/wBjiZbS3KHjScvHBuN9Hsv
         pkY54pYebICXvb6H5CAbHMi2sRbwOjzcBSYpeVnUIVSJfuTsGIHEw10/Wl5zKcacYgRN
         l7skV1GasTnpx6WrjjdxQzl9pEGr6MZ+2TUJxZMHGRwErFKCgxyMCuBU/4Vx9EpnA+Lc
         2dJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=iwraDYHa;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id l16si764906wrp.2.2021.08.02.18.33.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Aug 2021 18:33:54 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAjIQ-0045Vd-RY; Tue, 03 Aug 2021 01:32:51 +0000
Date: Tue, 3 Aug 2021 02:32:42 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Khem Raj <raj.khem@gmail.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH] scripts/Makefile.clang: default to LLVM_IAS=1
Message-ID: <YQicuh/Qtj0AfxdK@casper.infradead.org>
References: <20210802234304.3519577-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210802234304.3519577-1-ndesaulniers@google.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=iwraDYHa;
       spf=pass (google.com: best guess record for domain of
 willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
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

On Mon, Aug 02, 2021 at 04:43:03PM -0700, Nick Desaulniers wrote:
> +++ b/Documentation/kbuild/llvm.rst
> @@ -60,17 +60,14 @@ They can be enabled individually. The full list of the parameters: ::
>  	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf \
>  	  HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
>  
> -Currently, the integrated assembler is disabled by default. You can pass
> -``LLVM_IAS=1`` to enable it.
> +Currently, the integrated assembler is enabled by default. You can pass
> +``LLVM_IAS=0`` to disable it.

I'd drop the "Currently,".  This is presumably going to be the default
going forward unless there's some horrible unforeseen problem.  The
"Currently," implies that we're planning on changing it.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQicuh/Qtj0AfxdK%40casper.infradead.org.
