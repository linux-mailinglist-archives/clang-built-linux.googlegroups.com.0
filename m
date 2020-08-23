Return-Path: <clang-built-linux+bncBCDJ7PUVRQGRB7NSRP5AKGQETZ5F77I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2400124EFC7
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 23:02:54 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id y22sf2410383ljn.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 14:02:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598216573; cv=pass;
        d=google.com; s=arc-20160816;
        b=wwXrm+Ef15V/N6KOal/xmjHk2yRhhuYWynWvhdRmudd1Lz7+4DDDl4v/XJnUxT35+b
         WyWX808EZWj2KMMaRElcVKJDiaYCYsGPueTz6/gZMTN/RAhH+RiOD+LdFWQSMaLR47u7
         1+FiBmhHv5DgKHY9eTZcuqHrombDmM60OyySIRnW0UeBBnr5wOdOSYHd+BW9RIkW1MuZ
         K9f3Ju5y+lTZOxETyVeOiG+8num5IobZLBxATUlBtKZGaq0MJ8WgxNNUIDEzdXNxMkPR
         rSgEnJLBaxzIhASbVd7+sgJ/ataHoJUdODbJ5cXBPQVIocR1jO88wyZwKd8rzaP9xj9b
         MLjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=uXwlS/HMOa/l8BPK/U/t3Yjp2DgR1rKQ93UaSKILPh0=;
        b=psmZdgHdi3QplvlQ4iTmG77vk0mFKlbF3iFRsRiMNcBVNTAgy0Bidwu7Rk7LuFN7kk
         EINq6HFxclWSLvTzEHERc8oKdA282uLLWBHwT93pMN5Q9PwfYiQnBXf15+edCP2FTyfS
         iVFTHgY8iYJD/v356aR56ChWB1EPLf3zNX6G62MPvMVXuSVUWYOwXP40Uq+gwnpyGZmX
         Ei7dGfOl54AEZRK6zXcDJbwhe9uMmQq9+cN5OmFzags8uudr/DGgUccQwkkPfTv+WCPw
         Nn1YO0N+13Yp57xf/ZYAQ7Pu/nokqCXvwWhWGa7THNaG18rhyGsV1kqtSSE9d8zKNR29
         sX8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=x5pr=cb=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=X5PR=CB=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uXwlS/HMOa/l8BPK/U/t3Yjp2DgR1rKQ93UaSKILPh0=;
        b=FeJ2jCwG+PzaKrGbhaIHqtqOhpW9fUSmLWIhH0d4pWTEZkPBs6hT2fk7cZNUlF9pTT
         4jYf98Fz2h/RUtl/1bkcONrJz/4rRhsTH94eyTpt3dLCEDImQB4JJ2Fgjm3K/DqKPR3w
         wifWrBJ4qIFWp+3ehKCVU9XEb7pwNEMBuyltJFOhUYhGGiqmX0sHeLECA6jyBrT0IrCw
         RuYcOjJwWIx+3zcJ1kIwzQ/lHhc5mIF6g+K1GE13kgqBfMTGND1i1o0WgeiCwPeXtrVA
         WAkhCuW6Rvve7tBpfK+GDB55iDqnnR77akwPjYDW5DcAzSn8KHkO/R3dnGrgsQ+vmzQP
         ehrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uXwlS/HMOa/l8BPK/U/t3Yjp2DgR1rKQ93UaSKILPh0=;
        b=P3D5V6xLzLs2ghOO6ScsCS1Ysb1chvVuUu5qvuadmFmqBM8KgkoRsQoyNcf/gg4WTg
         6NH5hYIQE79iOderu+FfzTSIoWl0ToZBn7cx/BgYtNYgKFXqYUQ9kKDJb7vrt37tFDLj
         Z5YDmtq398m91tKm0fj6vN8eyDjDwHfjc0hEaVfxVQdJaYBNuU36gpcgGmp0oNp2UcfK
         NOT8MoBBKEEZHl/5kMvDpmL0KMNsFKdveM7K8sudaU3sMG2O5LHO3Z8PBMnUyu1b02Cy
         bkK/jbphUS9RuwUnkBtwY5XqjBy5kqRtjwXlKCHeMR1pHCpm4kwo/p0/kyp9y69rfn5W
         9DoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325Kqs8BfMv+hm1ZgJKTJS+AGz4m/I9xLPqxWQuJL8DbCxWvCOt
	JP25ouyxKVGgZd3hRwc8kFA=
X-Google-Smtp-Source: ABdhPJzYim4CJ6Uc7EBIxOhSVdr4odbQe4arGUmGUxtANs/6BSs2je+B4ExwDv9EKYvLuSMKk2V39g==
X-Received: by 2002:ac2:44d4:: with SMTP id d20mr1114300lfm.137.1598216573571;
        Sun, 23 Aug 2020 14:02:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7c03:: with SMTP id x3ls1241671ljc.5.gmail; Sun, 23 Aug
 2020 14:02:52 -0700 (PDT)
X-Received: by 2002:a2e:b5b3:: with SMTP id f19mr1148833ljn.210.1598216572727;
        Sun, 23 Aug 2020 14:02:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598216572; cv=none;
        d=google.com; s=arc-20160816;
        b=LFIq4R19dfXgrNpSYN7NGxFuA7wEG5xbP2NFxVpHEawVdxSu4N2X4dYa53+iG1SBrq
         JvQKZ4w0IumwZH8SDwcShfVTwbPiKS/g8IIj38wT2BeJdSpkVdSJ2a+LJvcV1WZ0m4kV
         Ds4eTgkTFhg2hDT8BIpmXK+wQ7RR3ixiWS33qIRaOPryzuQ7sLXUpMYjtrZ/ZJF+bw0u
         uvsdkLiHYARyOb/ckpntxcM3SoEqoI/QAffmucQCsXbHwrFr4drljU8V7chSCupsMyHj
         cRX1eWhSXNqRzY3Q/iXnjH4OUG86Jp9mv67+zkfCDwGj/yMwPWwW+q1CMHSM6Wiq9KET
         McVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=bOq5BjNHyH59a9rppEVkuWNMRiK1gpHhyxBaWwlbtfY=;
        b=DwBQMWjylq4Tr9ODIwkhPZAhny0u0KkQA7XEiDrhDjzb3eeTGh7UMmynxR8E90wgsn
         /0sZNarw3+y8+r/T4PbpSnrmFKQ97G9NoEoTfDaXJrNmWVzY2AKq/tx2No8/zOHJUwyJ
         Oijngb1nafa8GUaQfuQL7JvFTudyv+rh0GmXoNuUeRxTLc7kYGl0H21auKl+jSSF5aMW
         hEMBnA7FaB8j/23tV0mhAwzhcH0JdurNCIo1OXWhAs40Z5Is5aO/Y7MTMBZD2YapqCKd
         u/90LCJ8Fxsuv7tO4u1smnnVqHOjLgNOqXnk+CYvKrJmC5p5zbRnoZeBpcnusfU2rE6e
         6Syg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=x5pr=cb=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=X5PR=CB=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de. [2001:4ca0:200:3:200:5efe:8d54:4505])
        by gmr-mx.google.com with ESMTPS id u9si358910ljg.8.2020.08.23.14.02.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Aug 2020 14:02:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=x5pr=cb=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) client-ip=2001:4ca0:200:3:200:5efe:8d54:4505;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 4BZSQ04x3mz3Q;
	Sun, 23 Aug 2020 23:02:48 +0200 (CEST)
Date: Mon, 24 Aug 2020 00:02:46 +0300
From: Adrian Bunk <bunk@kernel.org>
To: Josh Triplett <josh@joshtriplett.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com,
	geofft@ldpreload.com, jbaublitz@redhat.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <20200823210246.GA1811@localhost>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200712123151.GB25970@localhost>
 <20200712193944.GA81641@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200712193944.GA81641@localhost>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bunk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=x5pr=cb=stusta.de=bunk@stusta.mhn.de designates
 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=X5PR=CB=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, Jul 12, 2020 at 12:39:44PM -0700, Josh Triplett wrote:
>...
> Rust has hard stability guarantees when upgrading from one stable
> version to the next. If code compiles with a given stable version of
> Rust, it'll compile with a newer stable version of Rust.
>...

In librsvg, breakages with more recent Rust versions in the past year
required updates of two vendored crates:
https://gitlab.gnome.org/GNOME/librsvg/-/commit/de26c4d8b192ed0224e6d38f54e429838608b902
https://gitlab.gnome.org/GNOME/librsvg/-/commit/696e4a6be2aeb00ea27945f94da066757431684d

For updating Rust in Debian stable for the next Firefox ESR update it 
would actually be useful if these violations of the "hard stability 
guarantee" in Rust get fixed, so that the old librsvg 2.44.10 builds 
again with the latest Rust.

It also makes me wonder how such regressions slip into Rust releases.

cu
Adrian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200823210246.GA1811%40localhost.
