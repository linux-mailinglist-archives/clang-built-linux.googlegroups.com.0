Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3WW2X5QKGQE66XV5GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB2427F91C
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 07:38:56 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id g1sf3547810iln.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 22:38:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601530735; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ijh6253pKOAFi1BQjpND/GBP+9xW5cELze6t6USTC/aDTPRT4UlNbfqJFH9qFvPf18
         gV/tkVmp3TN9AzqZ00KMnkoqmlgtulu+9YILC4QHe5gYkN6Mr6EAlTAMUW4YZ/T/fKde
         tK6ddyLZlp+JPy0eiGdWxRG9gRenyh3F4vk/y6Ngcubp0XIvvWxTkbJe9g9ZDtC+h7ZT
         wJSuiZqdvUdLIXObyCaSLckQZkaB7QTTAGcxxTUBo/SIWL4gg4eNG5SMBEDIO6IwTczj
         YOKpI7rXvhycPE6u+CEheNVqoiyAS7J4O6xrhid29ev99hqZmWBJ1YeV1YVQX5teYOPD
         DUIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=7bnk4GB5tOWgzlmkG2rwmDix15kBnVQgYNvWc/v1cOo=;
        b=z5TGDFiOb87UOzgpkGp+YLTbb1cujwHTyX5Bq/prCvVMAa61RqIC5rpevTlNUfDR2+
         ZFlmnhfSBxQXeGnhyQZly2B/7y0pJvWDG25vmkxVpusb8s8TnJKacWMXUmQ0DJjCbd5z
         ev7WCLLJhMzhpAz4g+6I+v5npb665us58Z+svtSeNhgXOAhLZm3Evxg1nQtmnJdyRGZH
         5YruAuxTD5nR4O0oW9RMnup3TICr/nIUtgkk7eROw1L97FSa8Ohetz0PMk/0MgrguitK
         ze2noT65LOY9ph5Mnbtii1BLB1mTtH17WjkzGtiVdCJjP2Ast58hSTs3SdJumUlk19IO
         cvdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vKUTcbzX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7bnk4GB5tOWgzlmkG2rwmDix15kBnVQgYNvWc/v1cOo=;
        b=KKkNjJlaHEEztwXuC8k+nCPYytZmNhxVCw8PMwvF/WltldX6Mkf4SHF0+DaAAqcqPV
         C8Ok7paPUXphoGmahHP1YCQlwREmNBj1NYaykbH1xIgcohhydU8aa0RCAF9L5TXhk0ES
         bJisiTjP72B/Fd9tU5st7K75jtSjUN+oEBjicDG7GI/T8HFsHNmdMyp5LCClfmjmRSiU
         FxpMhelq0wSEHZ+0M/tbnZQNIZAFrPEbbGLdtTBHbezXjtYylSIsj/GL4H0H4jq1+4Wk
         3hMqzdcFbZH+bgt+bm1oxAHRwd++XRFnuhJfV1YOp43m1GOFLvnT4Y7m+3DdMco2b4yl
         Syhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7bnk4GB5tOWgzlmkG2rwmDix15kBnVQgYNvWc/v1cOo=;
        b=SgOIl5Yqba22RBhgbNczmkcJ6zy+yumsynhNqDnPCPXDHZEOB1AHM5wTxGYLjcAiGs
         4cZOFlf9CPZedchekeHFmyqm6gfyVXSltPWevJbK1gyi1dT4x2CuIGJpLMWbhAOYx7q6
         Qw8KJAdqMIBRIvI7WXPB4lXSW732w3D6Q5lRHBgypKYPAhubq5/qG5OaAAvWTxw9yMYP
         cH3kqaRA2M+FJfsYDri/ujloFGhw26ey6vvppmk+NMBdkB2cB53prSI71HtIB08PsbBL
         15tjpqAwkPV/tzUVdlirckM1zB6v2PZO5MpPeTWk59pzSk6tBeqnnyGI+I4WzYefbz2N
         +l3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7bnk4GB5tOWgzlmkG2rwmDix15kBnVQgYNvWc/v1cOo=;
        b=N75fwTmMGG10dNHA7tYUEZ/Smcg7v2uXUrejhgcP9Q3+ah6baagOpByw4ya48Faal7
         /xeMYjdq6UnB4NDCyfb0vBBS8TCU4ExehPKedS8neXFrgCbiLQMOn6HPt/na5MkULDRk
         aFJ+Wx0PmFRU8WdfmGDc/qaFy3R4HN0qiHmvd36Ri0KcWunsFpWahx3bBBszPmY/pK3W
         iynEIooO7U5lzmfZ5Xa+3F5o0R2aI6Nc5mp+TgcniNB4K4DJNbrCRf8g1aqOJBkKEt80
         ZJi3zWGbu4isyq/YGOzvaE81evOAZAY/QLUH6fTakh2wfK2TSl4SgTubhAxW1skjfcx7
         FFXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ub6XU5bLxnwzOh3BVfFw0BURymbo445clRIqQ6PNCDywbABF/
	ROATPknPKGhQsz+fFILd8r0=
X-Google-Smtp-Source: ABdhPJyzqe1RgRoZJAKK3Tle9RvxA9E49tYQHEV5wYDyVq8532t0KB2Qcqu6ct7N2ZdjXSAsioNC7w==
X-Received: by 2002:a92:7713:: with SMTP id s19mr1181553ilc.161.1601530734511;
        Wed, 30 Sep 2020 22:38:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c805:: with SMTP id v5ls1255221iln.1.gmail; Wed, 30 Sep
 2020 22:38:54 -0700 (PDT)
X-Received: by 2002:a92:260f:: with SMTP id n15mr1131217ile.217.1601530734115;
        Wed, 30 Sep 2020 22:38:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601530734; cv=none;
        d=google.com; s=arc-20160816;
        b=ArZ9Pxe6aPzNA94bJRQVMeqySvFWKilFTPVuAuldwMCni6VGgaTveaMJDN0Vz9YcCp
         e1/fv7dU5Gnma0qb2KzggssWRJ472glIbLzeUN7/7gb6SeLU/DGpnfjMQNoqhtVQRVxM
         4eQI1eGDIJDaFjn49JfnAqU5BdYE1+SOC25j2vpajJ4wD8mBV8vezHJUTDgZ/vytIDcn
         2adoaWw9VFReriLem5v9ZeFVisJtLWAdCfTwEwrtgHIgXFntkD5SkTR6Bez7JcqL83Ob
         jGJF5mN38+VRvtcamKbyg44NiMope9OmWlUMd0QNi97pa7YunAqmzd+wSII6nE/IjcgS
         Oyqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tcgrKUTNj8u30FUAyH5LC8rzi4Ma450hg4xdiXjxjMk=;
        b=LF7QlOfMUVOuweC0ncCjXy4N5tNL0m/1eZqgvxDABYHqN+dhd+8uQzNqjBEkhQQl6D
         QgeYVjfT16xWf4o51F/2K1o2a83RJyq1NnUnsjfAbOfD4l29ukuVAygoahMpyf8YsEt9
         pVv2cNiuhJcejmEjLv0TMKdiMwH0DyoWcRIAhDkfQw3f4tB6PdtWVQKt4flrj0qNcVAd
         JKkpTfLrPUVQ8SXMryU8s20YpufkDg7jz8MylHSvThgSxHh+9uMSbpbd2L2JgC7hR+E0
         SqOrNMfG+UbhL1eXPpsPEFxi/g3/Sr3e0s48pAHryUZS7koTKiHdTpmFwnp49HdmOoKQ
         /IYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vKUTcbzX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c10si42071iow.3.2020.09.30.22.38.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 22:38:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id w7so3444056pfi.4
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 22:38:54 -0700 (PDT)
X-Received: by 2002:a63:1c26:: with SMTP id c38mr4891534pgc.105.1601530733430;
        Wed, 30 Sep 2020 22:38:53 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id 70sm782257pfu.203.2020.09.30.22.38.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 22:38:52 -0700 (PDT)
Date: Wed, 30 Sep 2020 22:38:51 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: kernel test robot <lkp@intel.com>,
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [linux-next:master 8414/12330]
 drivers/net/dsa/ocelot/seville_vsc9953.c:1107:34: warning: unused variable
 'seville_of_match'
Message-ID: <20201001053851.GA964517@ubuntu-m3-large-x86>
References: <202010010203.vu4bFxHO-lkp@intel.com>
 <20200930215835.siv2bx6g2yotkm5o@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200930215835.siv2bx6g2yotkm5o@skbuf>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vKUTcbzX;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Sep 30, 2020 at 09:58:35PM +0000, Vladimir Oltean wrote:
> On Thu, Oct 01, 2020 at 02:51:06AM +0800, kernel test robot wrote:
> > Hi Vladimir,
> > 
> > First bad commit (maybe != root cause):
> > 
> > tree:   (URL mangled by my smart and secure company)
> > head:   de69ee6df1cfbf3c67787d8504fd21b59da39572
> > commit: d60bc62de4ae068ed4b215c24cdfdd5035aa986e [8414/12330] net: dsa: seville: build as separate module
> > config: x86_64-randconfig-r002-20200930 (attached as .config)
> > compiler: clang version 12.0.0 (URL mangled by my smart and secure company)
> > reproduce (this is a W=1 build):
> >         wget (URL mangled by my smart and secure company) -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # (URL mangled by my smart and secure company)
> >         git remote add linux-next (URL mangled by my smart and secure company)
> >         git fetch --no-tags linux-next master
> >         git checkout d60bc62de4ae068ed4b215c24cdfdd5035aa986e
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> drivers/net/dsa/ocelot/seville_vsc9953.c:1107:34: warning: unused variable 'seville_of_match' [-Wunused-const-variable]
> >    static const struct of_device_id seville_of_match[] = {
> >                                     ^
> >    1 warning generated.
> > 
> > vim +/seville_of_match +1107 drivers/net/dsa/ocelot/seville_vsc9953.c
> > 
> > 84705fc165526e8 Maxim Kochetkov 2020-07-13  1106  
> > 84705fc165526e8 Maxim Kochetkov 2020-07-13 @1107  static const struct of_device_id seville_of_match[] = {
> > 84705fc165526e8 Maxim Kochetkov 2020-07-13  1108  	{ .compatible = "mscc,vsc9953-switch" },
> > 84705fc165526e8 Maxim Kochetkov 2020-07-13  1109  	{ },
> > 84705fc165526e8 Maxim Kochetkov 2020-07-13  1110  };
> > 84705fc165526e8 Maxim Kochetkov 2020-07-13  1111  MODULE_DEVICE_TABLE(of, seville_of_match);
> > 84705fc165526e8 Maxim Kochetkov 2020-07-13  1112  
> > 
> > :::::: The code at line 1107 was first introduced by commit
> > :::::: 84705fc165526e8e55d208b2b10a48cc720a106a net: dsa: felix: introduce support for Seville VSC9953 switch
> > 
> > :::::: TO: Maxim Kochetkov <fido_max@inbox.ru>
> > :::::: CC: David S. Miller <davem@davemloft.net>
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > (URL mangled by my smart and secure company)
> 
> Can a human explain to me what's the problem here? Is it because struct
> of_device_id is not used on non-device tree platforms? And if so, what
> is the "fix"?
> 

I think that the problem is this config has the driver built in so
MODULE_DEVICE_TABLE evaluates to nothing and CONFIG_OF is unset so
of_match_ptr evaluates to NULL, leaving the variable completely unused.

I believe that most people are solving this by just gating these
variables with an '#ifdef CONFIG_OF':

https://lore.kernel.org/lkml/20200925163552.20717-2-srinivas.kandagatla@linaro.org/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201001053851.GA964517%40ubuntu-m3-large-x86.
