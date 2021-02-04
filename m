Return-Path: <clang-built-linux+bncBD52NTUX6UGBBUM656AAMGQE62VLARA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B33430F108
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 11:41:22 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id q8sf2322737ljj.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 02:41:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612435281; cv=pass;
        d=google.com; s=arc-20160816;
        b=gHeFgpoiNKfdA1t2aAr7JdH3Xa/JSpiRPKKq2LXK0dOUZq+TCfApwkxmSq2zJhEWkr
         vLz8/HYjcTPt8ityWaa1oOzhE5B/aAeX8TGvskLKb5GqU+wkyXe3hZ0U5dNFn78rd6Pn
         YGpPo4s3BlooKtfY1bpzOxKH3mnklmeKTGKwGRlsoFO6APoYT6lCN0Gjt57NNQW0VyGv
         99fisBJ60SAFj235xdGamBinfCdqcqw56BYV0SaMA+2PAAiwpbn+8BOty6HIQJJ9fGra
         ciOyxT2zOSCSCBmHCGQU8f/WywgAhJOCzyfKIQg0J5F73D977Mpuwn/pC15qKf6szy+0
         TDUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=qZt2i8EGwGHv8YhTy1HOnCmpsQX7FVAcA0NVmK63HPE=;
        b=jV5NUfx5PAbAR5BpfoOD4T40FsWRrb/hAz2pCIV3ks/z7UeAK+WB94t0+X3vgCFT2n
         wAK4wCDMkHRIe/m7Uun4aUqpWTkS9tsjsaAAOh+4/k0XjHjDPKB9rZHNcXATw8BMk5Bb
         ihhncAClBkgpQyQ/rDnHp0gnPGVdjTwDT8BO8uTcFyKmGKVH6YlKaSSTBKcw1MoUkvCi
         RtzYoXvHrdFL9HoR82ycJ6/cFoJaTki+6vR3Sw4f3DOQyD60QQNJICFKhwZ9euy8GTHS
         RvdKNZQhsFbZKKDJSU5GreMyQSqf1mN6SzY+HTUi7I9i/2yNPxEzan+Is9I63hjmLGof
         q6eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qZt2i8EGwGHv8YhTy1HOnCmpsQX7FVAcA0NVmK63HPE=;
        b=sXItZB5E82wm7zpqhch2j8p5q/91izyd5TIuMp3Y05P70PLoELQpZHDBPk4vBaayyH
         fSTrJ8Do7CyE8oaxZUEAG+V5kR5iym2iYWOq8KCYh0jZj7PltPUH7HHnDpbF7RYvTnk0
         c8xd7tm19uqZtzdGUs4WCGTmMB196VvDv+7OFQyhOp3vh2q23ztBiaKe3alwzjhdIJAM
         kb0L+PeuTvcDymqWVnmc+7D4M3GMDuKFU1s0TLTyF3j/m5cNuMFL/luzMLQOgoN1RgMX
         Mc0O+1tSiid9B3w8um3IFI3SimrVZkJZzcqdHCxTjUA0IIb3Gy4930p8xCWrSOtAg+2x
         9mjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qZt2i8EGwGHv8YhTy1HOnCmpsQX7FVAcA0NVmK63HPE=;
        b=WUwcuvf/e1GLcCy1n1XzluS7SVBhHx298xBkCJ8OiYLlQ+MHKODE4UXvqdsq9OZn0F
         Y2WudYyXtZyStFr+APkH+QUqytwmoIPfxM/HXeWEUY1+n0MOaP/JeNYIt1LgExjY1CRR
         OFGsnsPvhgv2dF1oDZZzrKRuuu9BzS/myy7k+oT7AQpZIZWoiK9f6O5B6Lo4HAC/t/j3
         6cSU27kay28ikNQh2ABlMdO38DaploxqIMq3u43ojYGnxwZFKchAlBJIaArzLJbCNmuD
         ROJdcwLhEaZ6xPf2AAyRFPquoBUORFCKWmjlaDV+dagGh2hoz842J3VyvsG9YMY2qhfY
         A1mQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+lWb42DL3ASJcSnbh6VqTTStt6LGzzSEPHFhUfRsNhEMfEjgo
	GN4r4xiE9iz2uW51CkEsKvw=
X-Google-Smtp-Source: ABdhPJww2IOte295+jZIvMhRf2vS6bWOsKFf4rkmzvZCUEn5Wh+TcZgjytK1R+8puvWETR2thw9YtQ==
X-Received: by 2002:a19:6c3:: with SMTP id 186mr4233528lfg.500.1612435281643;
        Thu, 04 Feb 2021 02:41:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8850:: with SMTP id z16ls950673ljj.4.gmail; Thu, 04 Feb
 2021 02:41:20 -0800 (PST)
X-Received: by 2002:a2e:90c8:: with SMTP id o8mr4415340ljg.43.1612435280515;
        Thu, 04 Feb 2021 02:41:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612435280; cv=none;
        d=google.com; s=arc-20160816;
        b=jxqgfFXrRapmBZwme8DwkDUxhFCgyTPtfmoduB3S+6NxO8SJF2Pryf3ODxCKb9DlwD
         lF7eh9zm2wpzipRxCijwtPKc77YTB4evOKSy6ghvJh7acEiU+tUXC6lDgsB0pJX5JU6P
         3dvfVTUj7ElxF4XK0aipZt5CynJnq0+xelQNQn1/5c1/OkfSLgPW58W4Uxh7xxY9Nm1y
         W57SrE5dLH9B5b7ed59JKHN6syVBD+d20P2Z7M0BhYv7BAqOQuGjUE3EZppurfKhvG95
         h4R5bR8WeMsjIZneWoaZD+ZVN21Z4MWo00tPVBd4ST2JI3F45MXLuZUZYuXGS5jFadJq
         jH4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=2bff/hv7HuWtQTLn+bX7ooxGli6jRZcOqV7n0yceHwg=;
        b=vHEJAzsO86NG07YZOdr8EBqUlyeP1zX23WyrE1Pe3duyk+pgJ5EHLeeYpjr4W4nux2
         7nYlyUcwVB5X09dtr+xEtV9Ng3m8/syyS01QDs49GXv+pIqOJDcjWuwFrn3CJaAkcBjj
         3X1uDbj/V5gY/DoxPDrye3WA6lN5VtDBtt9/o69WD68oJibjsIzbsPz+RovpdNFOT3Mb
         FHCgxSejrkwLdxaYqCifKmh/tzjbfVLxCWBUJIy0gTEWWmnzM61k/2ND6V7N6rqsOxGb
         1kT0MHe3AAMEg/EjY/LRCUxWFxHK1YsbHDdSdMXPGMuxtA5jVGMmfNv6iqHi9vtoajBS
         K/hA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
Received: from gnu.wildebeest.org (wildebeest.demon.nl. [212.238.236.112])
        by gmr-mx.google.com with ESMTPS id z4si236360lfh.1.2021.02.04.02.41.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 02:41:19 -0800 (PST)
Received-SPF: pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) client-ip=212.238.236.112;
Received: from librem (ip-213-127-54-204.ip.prioritytelecom.net [213.127.54.204])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by gnu.wildebeest.org (Postfix) with ESMTPSA id 0B649300097B;
	Thu,  4 Feb 2021 11:40:54 +0100 (CET)
Received: by librem (Postfix, from userid 1000)
	id 13BE3C14A7; Thu,  4 Feb 2021 11:39:46 +0100 (CET)
Date: Thu, 4 Feb 2021 11:39:46 +0100
From: Mark Wielaard <mark@klomp.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>,
	Fangrui Song <maskray@google.com>,
	Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <nathan@kernel.org>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
Message-ID: <20210204103946.GA14802@wildebeest.org>
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-2-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210130004401.2528717-2-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Flag: NO
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.0
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on gnu.wildebeest.org
X-Original-Sender: mark@klomp.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted
 sender) smtp.mailfrom=mark@klomp.org
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

Hi Nick,

On Fri, Jan 29, 2021 at 04:44:00PM -0800, Nick Desaulniers wrote:
> Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice which is
> the default. Does so in a way that's forward compatible with existing
> configs, and makes adding future versions more straightforward.
> 
> GCC since ~4.8 has defaulted to this DWARF version implicitly.

And since GCC 11 it defaults to DWARF version 5.

It would be better to set the default to the DWARF version that the
compiler generates. So if the user doesn't select any version then it
should default to just -g (or -gdwarf).

Thanks,

Mark

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204103946.GA14802%40wildebeest.org.
