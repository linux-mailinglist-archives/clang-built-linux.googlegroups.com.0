Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBZMMVT6AKGQEOMSLG5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id E302929128D
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 16:57:42 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id i21sf2519083lfo.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 07:57:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602946662; cv=pass;
        d=google.com; s=arc-20160816;
        b=bXFnpdG5lxJPXiw0ctG3DOqPJm+VOxG7dlBp4nPxdOgpNrCgEzYKCu3GJmAhnBv/oX
         hX1sQqdWn8FlIhcZHaWOf/VpSZQhmirHZududnlQl/YkBsjVzgoIyqzMI4+va+rZrnv2
         dDbmUSbgvpACesFX3/qubdoP0Mgw5Ac3wzPNyLk9H8Yq13SI/A2atMVGdUPyMckMoSiJ
         DeNQxNeE4/i4zbvaM15qZMYsO/UxbD97rAFL6kK2+5JqTh6wqJEatnI9RvHG6EgR22ba
         +7Ggk+qeezsbC1G90lBiJKn4lVjjpOZ70rLGuaWnLqa1L4EVptsMlvq72lkihYkTjyG0
         LUPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=QYydxwfa7lQuGAEUraLCZGrocPrzue1NdIk4ufTk8Xo=;
        b=r1kPFKCa63CfjXYhzjuHFKY+2GKRa/iKkD6BgGhRczJiiUEkMbuxczvI8a/wB5DZ7s
         4bqgjgKXo+Y/Q1B760TL0ve/8wIp+qsicL+Kl/HyEjEx4ki7YHocdjzGN42vwq6jlm1K
         Rc2t0oaEFTqIV5UPQ5WBkAWwK2X5L1zfeeto1Bjmu0+c0Y5f9cG6KTl9PdQWdJhUbb2X
         kPXwCao0NnSLyHNNSXrVvHuBl2SqY2Ngn9L41YfQh2FJpm/zIwpM5DwehbZ8yozP7+M/
         j9ASA4kok98Qu4u7LaRCjwYLrhUbHTUqvLJ3O/q+JGNSveVdOFKfRWL/h5WrSkDWWXDL
         1zoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QYydxwfa7lQuGAEUraLCZGrocPrzue1NdIk4ufTk8Xo=;
        b=kTqu1GgPk7hysiUgvbZsJm5SicKFYRmhK22dENPHIl2xx7SQvz/2e18WWtpvk/BBZ0
         OTk7WzVVwiJowFCCrKV/OHuuMK0W3BI9sXpc1CbLHzGr9TJ/iGA23bmeRDOSurNYkN0m
         E+QfbsTz4om3bupfLP/01Rtz0ElbU4fIBBZw2YmqMVo1mldpNdAjmMiTdNLa0EGiSLOo
         azY65530lyAgDxuxaRGKWK7EuXAZUSFVMJgHl9bQ7/uStHzuz3NVaDOJCsdPj/EP0yxp
         EGw44tOijCPJu1Fx2s1A5yQPPvdz7XnWT66ao31ddia7pNsd+KWElYhfCDMNzi7RnNpv
         jW6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QYydxwfa7lQuGAEUraLCZGrocPrzue1NdIk4ufTk8Xo=;
        b=RmafJtbF6mbGn/gnd7lKAPzm49n8T6UMOL1D4cTtK58/oIOQrnENxOfUSLjZUeyryb
         CKAO8vnxbakLCgHi8ZKuoRw8edhePTZaU5tNseGTL7unZHrVn5/yI5TnWJNRkanXlS9B
         KnoLyIixKBY81i13Mzjxr8+5tE5YuaDdpNI/MNpQWlF+gd9EaGe9suENLWqCTDrVPHp4
         rqkXj8upIPbh4phi4QRms/8/Ybg+ELG9nu0pM5Hhwjt+8TJq+gbokHdZPt0P96EcDbo8
         A9Jdlh9k/W9JXakaIG9Bba2YGELv7viNYw2lTd/SYv2yTFCDLkUpnHF9cLSXdCxmk9xE
         ke4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333pBpHXjKUT6ZewxisnW+JNzbusDRTAkCEhqjvfuXJXUpJttpt
	nhN6MMJ17XisLWmzPxtLRwc=
X-Google-Smtp-Source: ABdhPJzgs4Nj6DgQ1u6tntYD0DojC86Z1/S0RTj9HGTxIddZbA538pr/jjS+gD1+N61iA8Ak8wdZYw==
X-Received: by 2002:a05:651c:336:: with SMTP id b22mr3581188ljp.75.1602946662376;
        Sat, 17 Oct 2020 07:57:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls1869181lff.1.gmail; Sat, 17 Oct
 2020 07:57:40 -0700 (PDT)
X-Received: by 2002:a19:3d1:: with SMTP id 200mr3468631lfd.241.1602946660137;
        Sat, 17 Oct 2020 07:57:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602946660; cv=none;
        d=google.com; s=arc-20160816;
        b=tDcx+FYytutAtdjG8w/6pC8YIENW7nHAj0P1JhQVu+Bl7AI5BAh+MFm2jXOfT06CEx
         05PhF3HQEzwCurnDFpF19D6BYfHfqxbmDzHjpTf0PNagQChAsHsAmLnNy1fVfa+3zehk
         wvL/cOWXtPDcsZVZ47xXUguFVYwnvAr6P5PdejCMdXie7JdojH/FjB/JeYwzbNAX+3LP
         ocYD7O0nB1f4Pm06DCOmDl3Tw9eW01dVHjZTgTG8O7yygh9EU6XpzP8A93/FzpZYkOyl
         T2nJN/JLUFXkX21bKNp5/csNvs/LAjIHy/28F5Pg9xlxwCN3bHsgD8T3ujJyX1MlZrk1
         jNoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=vseEtYCV6OhF+MUGeGds/M9gyRPGYrH5/Ln93s2od/Q=;
        b=E2uYhlYQ2fXhEMse/cxtE3UH7aJv6nVHTNYUxHW9aOYfbfJMud1rUfq3YSP9z2uUDS
         +kp+NgkFMfFMHH5+1NM6N9Eu2w4P771CAyrAmY1PerL04REvVTOBNzUQ2rSgKFGR5e0P
         QOduYkBs9qVR8pc9kqR1w7Ub/lEvDsvhA3BFP9S4NVXrd44Vo74wz0WlTKHCFVQ65ojG
         ZqDuWAmaRW9lDq/HzFrgwLIk6oSd1lUZ/fO5hjrnasKSpkNHQiATEEslXVPnsxxBbmXM
         1Bn3IcDvEl8blh/qvkVnJZhD8kF/TrP4/L4ZB2kU2FcovcetY6nScep4Y6xrBxgt7D+P
         h+5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id x19si183625ljh.2.2020.10.17.07.57.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 07:57:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kTne6-0029vG-5U; Sat, 17 Oct 2020 16:57:22 +0200
Date: Sat, 17 Oct 2020 16:57:22 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Rohit Maheshwari <rohitm@chelsio.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
Message-ID: <20201017145722.GJ456889@lunn.ch>
References: <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
 <20201002014411.GG4067422@lunn.ch>
 <CAKwvOdmdfwWsRtJHtJ16B0RMyoxUi1587OKnyunQd5gfwmnGsA@mail.gmail.com>
 <20201005194913.GC56634@lunn.ch>
 <CAK8P3a1qS8kaXNqAtqMKpWGx05DHVHMYwKBD_j-Zs+DHbL5CNw@mail.gmail.com>
 <20201005210808.GE56634@lunn.ch>
 <CAK7LNASB6ashOzmL5XntkPSq9a+8VoWCowP5CAt+oX0o=0y=dA@mail.gmail.com>
 <20201016141237.GD456889@lunn.ch>
 <CAK8P3a1nBhmf1PQwHHbEjiVgRTXi4UuJAbwuK92CKEbR=yKGWw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1nBhmf1PQwHHbEjiVgRTXi4UuJAbwuK92CKEbR=yKGWw@mail.gmail.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

On Sat, Oct 17, 2020 at 02:48:56PM +0200, Arnd Bergmann wrote:
> On Fri, Oct 16, 2020 at 4:12 PM Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > > One drawback of your approach is that
> > > you cannot set KBUILD_CFLAGS_W1_20200930
> > > until you eliminate all the warnings in the
> > > sub-directory in interest.
> > > (i.e. all or nothing approach)
> >
> > Hi Mashiro
> >
> > That actual works well for my use case. drivers/net/ethernet is W=1
> > clean. So is drivers/net/phy, drivers/net/mdio. Developers generally
> > clean up a subsystem by adding W=1 to the command line because that is
> > the simple tool they have.
> >
> > And my aim here is to keep those subsystem W=1 clean. I don't care
> > about individual warnings within W=1, because those subsystems are
> > passed that stage already.
> 
> I tried to get a better grasp of what kind of warnings we are actually talking
> about and looked at the x86 allmodconfig W=1 output on today's linux-next.

Hi Arnd

The work done to cleanup drivers/net/ethernet was mostly done by an
Intel team. When built for ARM there are few warnings left, mostly due
to missing COMPILE_TEST. I have fixes for that.

But this raises the question, can we be a bit more tolerant of
warnings for not x86 to start with? 0-day should help us weed out the
remaining warnings on other architectures.

As for the plan, it looks O.K. to me. I can definitely help with
driver/net and net.

	   Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201017145722.GJ456889%40lunn.ch.
