Return-Path: <clang-built-linux+bncBCQPVKWLVAIRB2WDRWCQMGQENMRPVOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 851F8387218
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 08:42:51 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id b3-20020a05620a0cc3b02902e9d5ca06f2sf6452274qkj.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 23:42:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621320170; cv=pass;
        d=google.com; s=arc-20160816;
        b=g9UeAec8ckUXdd3FRw2Ofc7HJ2eljCN/f3WSrXjIAZNKw9wwf1FUwFOBYXYDbIr0qZ
         SN/pFslxf77LfeezgS+hRdlt53c2sYxzm55mybAK9nNUYDwl3bj5Op2REJ87IZ/GL49F
         DQ8+94x2fwP3pJCWh9rMyZptiZC//Fpod10/KHodnP0IvZkD1S+u7UVFuQMXeCLuJ0Hn
         sA1n6/MlXb0WIaZYn3YHp2NN9fVI4Lg5KzkwfJW2UWju5czHzqGk/YIQuIqACGkD/qnI
         +6dJ7UE8jqIwHIsLJtPX3sx3S8PCOOmqjfd9CHDoZ7WCU73wyASGlNEFtAufxPM2eYlM
         gVZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HiKS2OT6PzszuycC/x6IXU0yE0FLH4HXzz5RsOXFH+Q=;
        b=gkF3kyVEdYkBY9pdSSl4b+fU+uLjnjDxy5OPSJ5JTaaBsT+R26RccayYzLbtHndh3V
         0/keUxenI2owgtdSL+k+ZJGtLlcWrS1Ri+i/Up1jYWCDU+OTQJIEwMxI4H8FQQRmOACU
         dfGhxnS1PfFPTm+oLKEVmurwBM6cJuYlDd2CVVppeeUxHhnFqed/JS/8P7BUqg8F4YTS
         buXlatJg/cr2Kc3h2NNjxVo19KFRIAlc7nQt+faNOQj14LG+wTwhwqYKOIKt4HdG5KBk
         70sMSGgEqE14OPuMmlzOuB5UHJW3gTBdo7p3iHvEVvvgk6NeSKDzw8BB16G/WZoYbq7z
         J4Pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HiKS2OT6PzszuycC/x6IXU0yE0FLH4HXzz5RsOXFH+Q=;
        b=dY71QxPAUFpGWmAqyYgihdCkJncQ4atK2bCmz3BnSJEiUagoSNFQ811RfPtgHgK2Ls
         T7OYWaWGWPrRPqIA0rh378/prfYLUCMzKlKMuwYKAxc2KTPCRKxkPgk6V87WqzNDX/5/
         TIjSWn/2m+tISTWra9H1sbYOKfBjYujR4YLss19YqbhzRzk4jo/YWTBfHRgmOj0A32zX
         iVtqmsJa1ZZj3qjUH5ldVDszs02Xn7LoDxVUJc8YwKi34zXsvSnfPGupMQBQZelbJROB
         KawJh1tGrV7fcY20tG2S1rf6ohmk+HpX+PWelQBcLITaoBaEQItS0Xondsa6jYQ/IL0T
         dZHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HiKS2OT6PzszuycC/x6IXU0yE0FLH4HXzz5RsOXFH+Q=;
        b=qWfv1aQnmU5VBpKhFGK9Y/CIOZy9CpzSkhsF3AEKO021icxNmVdvOxoposFJi/ZH8z
         XEinxz0Bfmq34Rbmrv9qpv2fWGHhgPbhWRHieHynAB4Zs32I/NPzJqj6/GV+cSUewbYS
         KOTikWhd+DAwavOPrDiapevLpZb3zzONQJSVZbOfyg1wr6wetftKw061n9txrco3N/gM
         EWE/lffik+vnHNl5V7UPBgEQXvsizkgDsIw3vLeYmkgUdaIM5Lc9EOmmV44y4KeYZNqv
         VH8AZr3h30Wlon6gPD0+AnP3Gzxuv6fjPu78KNetf6Hfx95m9CORzHngpv9q5e81NO4x
         zqpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IcI5j6HgdLg0caZ3H2xMJBx8ts4hUblnlY4KHF7703YvHR0eb
	AtF1eeP/eJzh/KgjvuHIw38=
X-Google-Smtp-Source: ABdhPJxL3215aN/ZfUvm8by4Dd4uycfsiYmi91nE8/i2gHEfGFETrc8olcx/zxvIqygjFjbwWaZy7g==
X-Received: by 2002:a05:620a:b:: with SMTP id j11mr3992277qki.159.1621320170420;
        Mon, 17 May 2021 23:42:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:af04:: with SMTP id y4ls11971247qke.8.gmail; Mon, 17 May
 2021 23:42:50 -0700 (PDT)
X-Received: by 2002:a37:9ec4:: with SMTP id h187mr4017781qke.200.1621320169947;
        Mon, 17 May 2021 23:42:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621320169; cv=none;
        d=google.com; s=arc-20160816;
        b=vPiNfHOFzfyoMM0pGeF9GQb5qL/KhaZ3pbY+1e7ZLoUFOZZT9hLwkrxDuI+4bjGueA
         lQHcUIaPCFwx/3h421dc7Z9iNumvW3jvHivwp32lzN2TPqmd4uHTGOGZiKj8bFnBi0cP
         hUlYg6v1oDdPEhXLALQxeuUmDJuRu47MkLNGAOa09N9nZuTF8aFQh0ost7B+r14Td1R8
         feOj1XuUqu9XtoaCQQcubxCOdiLN+eeA7BnTGbzjQEkir9hWcTFNqaB4YMRebN8ZdLMO
         1uuyaXpBbA4bSX48c8QwUI3jh9ymNFq6lsM9SVpI+T5YJurOXiqREyEMR1pne2baP8gt
         9Rrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=3Zj5dtFRQiLjbyt/L/jN/QsPAhGELH9v5NuklmAMZxs=;
        b=EUJSRndktKaAXsJlcIxRx+ywzr/qrSUNKDRmi1uh93aoeW0iWWkB49aQEZ7rdR3ET5
         AwqCq+r389hySEr8sp0IjEUSJc2BIosRAEIRc6LHcUZa4nOxRhKcnSNuE3Ak7w4EgJ3b
         A39Swf23F+eGClsWoQ8Z5HlWIsMyvOZmGEjMD2SmgpU54p9mOLWjL/Hpbs5Ntpo99h5Y
         OmdFN8QfxqCE4YDF5+FVh0s89EASbYpVtJXVDhZoJvN0rmPopHem8jj4Ny2M62uH2IV2
         Tx3PGzYQUJC3zfNxiK7hvUm2b1mJfBJoX50xKol7skB4Uc5EdBtQGAIPs6xgOfVl45bX
         ph8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
Received: from muru.com (muru.com. [72.249.23.125])
        by gmr-mx.google.com with ESMTP id q5si1753559qke.0.2021.05.17.23.42.49
        for <clang-built-linux@googlegroups.com>;
        Mon, 17 May 2021 23:42:49 -0700 (PDT)
Received-SPF: neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) client-ip=72.249.23.125;
Received: from atomide.com (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id F1DCF80F5;
	Tue, 18 May 2021 06:42:52 +0000 (UTC)
Date: Tue, 18 May 2021 09:42:45 +0300
From: Tony Lindgren <tony@atomide.com>
To: Maciej Falkowski <maciej.falkowski9@gmail.com>
Cc: aaro.koskinen@iki.fi, linux@armlinux.org.uk, linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] usb: isp1301-omap: Add missing gpiod_add_lookup_table
 function
Message-ID: <YKNh5ekJ1ffBZ+xd@atomide.com>
References: <20210401162032.10150-1-maciej.falkowski9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401162032.10150-1-maciej.falkowski9@gmail.com>
X-Original-Sender: tony@atomide.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 72.249.23.125 is neither permitted nor denied by best guess
 record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
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

* Maciej Falkowski <maciej.falkowski9@gmail.com> [210401 19:22]:
> The gpiod table was added without any usage making it unused
> as reported by Clang compilation from omap1_defconfig on linux-next:
> 
> arch/arm/mach-omap1/board-h2.c:347:34: warning: unused variable 'isp1301_gpiod_table' [-Wunused-variable]
> static struct gpiod_lookup_table isp1301_gpiod_table = {
>                                  ^
> 1 warning generated.
> 
> The patch adds the missing gpiod_add_lookup_table() function.

Applying into fixes thanks.

Tony

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YKNh5ekJ1ffBZ%2Bxd%40atomide.com.
