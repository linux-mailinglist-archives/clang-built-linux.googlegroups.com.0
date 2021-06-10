Return-Path: <clang-built-linux+bncBDK73744WQBRBDFMR2DAMGQEPVJ772Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2F33A472A
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:57:49 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id 81-20020a370e540000b02903aacdbd70b7sf5406165qko.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:57:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623430668; cv=pass;
        d=google.com; s=arc-20160816;
        b=imBr10ZwJqXAwd9GS54PtMwCJmr1OfVE6R2uedAdMxUMzgbtDtV+UsXsSAZ0D7850x
         YQjRpPacv2KMsIaVoMsh4yNZPp/tO3LCbMYQsvINok4h/Nijbo9kcYhDLFX0az/RYfG0
         YALbFnZFdXWsEK513Zztuiis17NVIjOVtsuMtrpCxCxdb27QYOt0w32d8DEIPCSObDxg
         gasyYVze7b5/svDV7EhDdSnue/MkkIgT2MaKYWFx7QlQ9S8NU5c2kqQbwNWUY5IF/HPh
         rvk6CN+TLgzjStThSO/8drKpHitG+GSt6zL0k5x/7zP72YUh7xj6iVsn3yxGl6gAMZ+a
         RKuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MxEGCyLmHOYI8u122GYjKfFmtKqBEYH5j2lPZXyw7OQ=;
        b=huK9MDdJAkKtF5byhFFuKfPuwQ8uGoIz6VGA6PBKKapYmM+11ljrM9HZeDOpjrycGc
         EcMnO7J6X+7bI4HhGwX4remj2iLVBa5jKIPDKFqNO80nwhbmX/z6ehGKzY/1I54vLIOH
         6Cf43Uuvrhzh3z/yB1/gDx66Z/jAQ//xWddBHM2tpKiNltqC0nE04AE4ohGqAbc6bwW6
         +pf9GZyEC1EGaUCUOX5e6cuxg7qYb7CG0MPzd4ABdrgsvHgmhwhYJvoO4CyAUFc7I1SU
         HSCRQruHZg3FINmu3RuqvBCndd9x/GArOaz+hpYDoLLRtyjjSJefvMUH3aInMaRitZnV
         ucKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm1 header.b=IZFkCK0x;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=kYI4GDlQ;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.26 as permitted sender) smtp.mailfrom=greg@kroah.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MxEGCyLmHOYI8u122GYjKfFmtKqBEYH5j2lPZXyw7OQ=;
        b=L6ccBtSlLXNU9CJ/cQJDztoXugrPPq3tk2XzVRxQ00j8qmh91eZkXnI2cB8qwCLkWF
         QEdC3/zXkfpZkdAnmGrte2t4cto4Z9/Y/8mT38DKa99OahxqOCv/3oBpLQIvFvXtR456
         RBNljBNuIgpD0c1/+BspFzWvroB9izW59tfCq9Lkklw2I2yoAitjoYv6F5sKoCSy0HOM
         b59zNUjAZstdbKZns16j+IHZk+euceQqxU1aBjWwOq0vcJOIznc+2fn8J1QfIiGsxsw1
         cAnHEr6eahmBdH2Qe3Wd0LfypamQMK1Yj+c4gvanfFSchk6zBTtaM3jpAS1X2A/2Su1T
         1BrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MxEGCyLmHOYI8u122GYjKfFmtKqBEYH5j2lPZXyw7OQ=;
        b=eGOP+wt2ODXyOZ7/EmvHw4oMj3RZ9IUJELCvTdTMyELWPTLCfMUlECuA28YjDXBn4F
         MJGsN6du/LQdr6kmqNNGR4vYqAui/XQwz48BWLVI90jic1MRueMe8X48W9pt8oZPM+Sn
         Vt9BVM9qXWu8uUwK/Om44b38IHLnCCzFo6+aKDrPd+zNhCDk8+ERoz6kuEtEDfxoPm+f
         zZt5jLGIKu7jg9IURwB6AmQlNkZLI0YE1OrZIiQ1d9/NQpHq8fTJ23k/M7AfLvFUmbvr
         iu8LWsFQqEiHkvaAfQxnPgvCcQpPljw43w4Cpg+TH/5jTsqJqsUZjxg9CXCugE7GYvQg
         JNjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+XGoLgv25C9TlqS2Yj49GyNIdhD4v5aOQITH7hxruFHQB2jnj
	zLyoeLFUbqGXeo21lwqnuEU=
X-Google-Smtp-Source: ABdhPJz6BwV+pAGWjNI01kqEO5OEKNg4QCaw2iP9WU7t7NSvtL7iMUu1otOXkGTXqpqv61DCHXtTUA==
X-Received: by 2002:a05:620a:91a:: with SMTP id v26mr4721896qkv.297.1623430668413;
        Fri, 11 Jun 2021 09:57:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:80d:: with SMTP id 13ls5785931qki.4.gmail; Fri, 11 Jun
 2021 09:57:48 -0700 (PDT)
X-Received: by 2002:a37:2e83:: with SMTP id u125mr4922955qkh.168.1623430668091;
        Fri, 11 Jun 2021 09:57:48 -0700 (PDT)
Received: by 2002:a05:620a:14e:b029:3a9:1b7f:f9d with SMTP id af79cd13be357-3ab1d325ebdms85a;
        Thu, 10 Jun 2021 03:04:27 -0700 (PDT)
X-Received: by 2002:a17:906:b41:: with SMTP id v1mr3668285ejg.246.1623319466658;
        Thu, 10 Jun 2021 03:04:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623319466; cv=none;
        d=google.com; s=arc-20160816;
        b=KYAr+8J31IU5iTktQCGVoa9UnGXxI7Srt2huCrns79lUV7LzN3czZ+8mvQdjo0cSGL
         GYsQOcB5+Lxlh/SKAUOhzW0WGP/WPGm3klB0MIv5TbMN2uJSbI7FIMBgqHSvjQuP5xBo
         8PTzpoxhcz/t3a8DmaKvPYIKUob6FhdygCp2nVOFPy0VttTscdPNGoDV/Wb3UDRPJgo6
         TALiKfSZohuEPoU/zjNVM7pDat1yNn5aNME+mO1hLEK1t6YSNpgQPgoxmxAMqq1zrj7a
         Q49GDsr8zVgDo/11l3Swu5PzA8XVSnhjo3Wio9Y5TTlZTTsaanyczwmuvG/q6WY6I0LS
         mJTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=9WI5xCILPDtfU2J23fyUihMeujsp3+nvIZghW3iHRHc=;
        b=PSS9e3P7iuOUlPvKJUl5Ueve6Sorx83kuZ1wC2+7GiSZvF3CulvhfN4PPmXGcpfFes
         gfcampe5GNfyU0LOGY4s7abSMY1kr2WAcqiNXB2rPWHXplV2wJmPoQim/AgcJwfybfmW
         iIaAV6q9AVmw2nUiJ8OwqpJbHYwDm3rCFVFhcv4BDxDU5K20uCpCOqX1wM+tmLTIe6N/
         rWFCGoEUe1zslmW5nfE20hBdEiIaIGuYn7EXG9X8usWQS/T1jyxSna32rPxxf/DyBslT
         gwouxf9bzKFnDCXblV8F4jaIS3i7XIDzpb/FK/CeXOC6qYfbCcAKF6Q8avLo0lY2r2fz
         OfNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm1 header.b=IZFkCK0x;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=kYI4GDlQ;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com. [64.147.123.26])
        by gmr-mx.google.com with ESMTPS id w2si147357edi.2.2021.06.10.03.04.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 03:04:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 64.147.123.26 as permitted sender) client-ip=64.147.123.26;
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailnew.west.internal (Postfix) with ESMTP id 554BD2333;
	Thu, 10 Jun 2021 06:04:23 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 10 Jun 2021 06:04:24 -0400
X-ME-Sender: <xms:puPBYJ2rGiTcw9mMPSndnojwvdYaaCYxBghmU_yaN9aR_y6ArQYszQ>
    <xme:puPBYAE8PPhPseYkhU_FgqbUfaNYLuKO-9lLrSDD6esFZDuM9kqEJPgx_qNz5ZCgE
    jbXPuh5Eyy2cw>
X-ME-Received: <xmr:puPBYJ7K2vWRG4-AqXQmW7ulfdhwodtDwf2umovs1sCb-gOQtOdvc3D-IyRJ1eO92LHiLV04HQCcAdtZl4tJdAFwVmdF8Qks>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfedufedgvdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepueelledtheekleethfeludduvdfhffeuvdffudevgeehke
    egieffveehgeeftefgnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhh
    drtghomh
X-ME-Proxy: <xmx:puPBYG2lvVJlbkqWJV-UJ9vbc3V8jdN9r7rm1IXwGYW-8KtQH05ASg>
    <xmx:puPBYMEhH-DERttWqIZe3P0gl_s6dYWjidWIXHsvWf79rsxbsLKdrw>
    <xmx:puPBYH9hZ2K9zTjDDwleNARCz25DoYgVmik1fmW77Z2SN2Z9SpfwEw>
    <xmx:puPBYKXv0Wz-Zjxi2H81HdSOEsEumRk85e_FaBgRlmFW1TJ0RQC50EMzKd4>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 10 Jun 2021 06:04:21 -0400 (EDT)
Date: Thu, 10 Jun 2021 12:04:18 +0200
From: Greg KH <greg@kroah.com>
To: torvic9@mailbox.org
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"nathan@kernel.org" <nathan@kernel.org>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	"tglx@linutronix.de" <tglx@linutronix.de>,
	"mingo@redhat.com" <mingo@redhat.com>,
	"stable@vger.kernel.org" <stable@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"x86@kernel.org" <x86@kernel.org>
Subject: Re: [PATCH] x86/Makefile: make -stack-alignment conditional on LLD <
 13.0.0
Message-ID: <YMHjomyjH/RwrHKQ@kroah.com>
References: <214134496.67043.1623317284090@office.mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <214134496.67043.1623317284090@office.mailbox.org>
X-Original-Sender: greg@kroah.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kroah.com header.s=fm1 header.b=IZFkCK0x;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=kYI4GDlQ;       spf=pass
 (google.com: domain of greg@kroah.com designates 64.147.123.26 as permitted
 sender) smtp.mailfrom=greg@kroah.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Thu, Jun 10, 2021 at 11:28:04AM +0200, torvic9@mailbox.org wrote:
> Since LLVM commit 3787ee4, the '-stack-alignment' flag has been dropped [1],
> leading to the following error message when building a LTO kernel with
> Clang-13 and LLD-13:
> 
>     ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument 
>     '-stack-alignment=8'.  Try 'ld.lld --help'
>     ld.lld: Did you mean '--stackrealign=8'?
> 
> It also appears that the '-code-model' flag is not necessary anymore starting
> with LLVM-9 [2].
> 
> Drop '-code-model' and make '-stack-alignment' conditional on LLD < 13.0.0.
> 
> This is for linux-stable 5.12.
> Another patch will be submitted for 5.13 shortly (unless there are objections).


<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMHjomyjH/RwrHKQ%40kroah.com.
