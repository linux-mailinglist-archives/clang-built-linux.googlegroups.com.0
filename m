Return-Path: <clang-built-linux+bncBCDITI7XW4DRBWVJ2WAAMGQEICPULII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7B2309524
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 13:45:15 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id m9sf6372510ljp.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 04:45:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612010715; cv=pass;
        d=google.com; s=arc-20160816;
        b=CY4CDMBYDGiUmId7rP5+upBZIYTqdm5lGnasJbKbIhLt8Kvrz/LZmm3YnXlA9eH4L6
         FH1kyXgmP1QYvn37H7eyMxEwpBEWOErHkxDOBusbRHHtuv0e2UwblRITvFsi6p+LAiUm
         wHxkJScUehksZrU68sed0wq9bLuMxtSiVidwDWKRUBnSM7LD6IpL1iLbgGhhKnas//c6
         LyBaXhWE00cUYYi3ozsl0zXjbkzP1YS2jPSMEbgNpgBfer7EBpOR7fL/HTNLb6D+ODqF
         135MZgK9lM1fQDroHCY0WaibyUhaLJWIYg3hS2CegM/zEkpzkNk64HPwafEQNG8XvfdM
         isQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=D9OEMwa1GCQ6q4kNOUL2cVhUC8np8e4jKgDFPQIwseY=;
        b=aDGtBpdxB7Ar5j52P3AviW0AB45qMTy1gTY/2PMzziyUJjcUqxDx3hI9zh7YxBpAwp
         2cqoJdeRihFQDLmQnUbbYxW1xitr2hvfvizXkEcJQlMBaPgEgezSEFZZXKnYEm7CxByb
         K1WO/OZN9uwnaAiMC19W4HkLqRs4v+4hTwGDlkFUep3AfX4sxmy/zKZETQ6jChckqn+Q
         dv3IzR0mTEvMS8af/g1FdEhCryK9omHqlTz9XMqNmZolPV4wHLhQhGID7cFdv6q0uiTJ
         6bSWiq2uDBhhc0lQTy5J2ic9KNpsBF3ytl+ncvZuzfwuuKlwwmAqtmMAowTvGvr0lyro
         BNGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 77.68.26.236 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D9OEMwa1GCQ6q4kNOUL2cVhUC8np8e4jKgDFPQIwseY=;
        b=fiqkcnywAqnEH2n8LTu/rMRNEGRZdzRWl+Hx2Bw2T/VNJeNo6NtLWkpFKwnSMhT6tb
         mjBOrNzJKO3sR3FT0LKtUREVfkBZyRAiO4Abk6sxUqfAvERBpI+ygCDHBCI3d9hNIDuN
         FgXt+GryRnnB9uh0hBDdPzJ6UhI746Mtyqizg4BpLOu7NEJ5rT5VVtiaXFeOVZj8HhN+
         gDKY3kdIdl94nTd28d8/dL6bbI/pIypTvAZfhrwb86GWxOdb6j9P6JVB67Y5X0jgJgzS
         yk5a4P1CrHFcS4ZgXQRNu4GhUcv27r2K9+o5ZtEtpfwp7wkzjg54R2P0g6P8FBw9qYzC
         atVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D9OEMwa1GCQ6q4kNOUL2cVhUC8np8e4jKgDFPQIwseY=;
        b=Dd4kHswOpOHKc6firXO/Z4SRsSUjGl37JB7zTvfK8s2a5kZUi+bnsknTy8T47U8O3E
         pHN7Vxk2GY7BoVGFeKHfsZQGQn1wzmHOAcXGWU+GvkuSwCStBA2QnmvB0xN0ak885ovJ
         KUo4Sh3YOvwXqCNrap5viSOCqNyktJfjyYpXazFfN/i2GxodPLPj4kW75jq84+0h5KBq
         qDIKTvKMIa4BDbp7Wggjjoc4fKC1QJUVJTUj8PlqRysxv7IPURJLk3gh8Cgs0jhg6kCu
         UYK0ybgwLUiN54mF3hy53L6aGEd627KyaDAtwOqIkty4rPZpTTmmYr4gRCwFRWtz9HLJ
         aeBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533aIZ4clDOnc0qNx3TprNr67SB1nOCAMeyzgpWpinrGYQAJndZ6
	i2t2Gw3qvNOSxtza963kY0E=
X-Google-Smtp-Source: ABdhPJx4WF2E9fM1i7JrGPiOmppoKv6XCMr7JGPVgKc7nrDDl7PqGVRKuitXjfKFL0FwrbfiUn+CrQ==
X-Received: by 2002:a2e:b0ee:: with SMTP id h14mr5174403ljl.31.1612010715001;
        Sat, 30 Jan 2021 04:45:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3993:: with SMTP id j19ls1731091lfu.3.gmail; Sat,
 30 Jan 2021 04:45:14 -0800 (PST)
X-Received: by 2002:a19:6555:: with SMTP id c21mr4513875lfj.563.1612010714055;
        Sat, 30 Jan 2021 04:45:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612010714; cv=none;
        d=google.com; s=arc-20160816;
        b=CiXNj8829uUJQqFB+XxhrX2T5WyNgNFg14OElSGm3xN0eA27J7VmdeUtcuKYnVV364
         IVxbHg8+2s+hs+8C0pzDm+d7JOXzj32ICJTDTEfj99jbfP1MCobgwLGujOfOMEPgfEHA
         +P2xdawLpIdxBPR+2axLAKohhasTTCLja+w04NaVI8ycmqVJs+qSiklF8p/YsRtXpGmE
         fYWshtVzJ9MU5q7dKhmUfsZ/Fh53BSMTkCxt11P1baPFaZQUwXCSIw5aS9O2vvm8Puz9
         NvRgj0EirW5hM/rxlldyW8q8K1MpeV2Ds/eXVqSLfHxDCZm8TGJhgoo1ZqVI8u/GvIdw
         eVRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version;
        bh=NrTRuxTJOi2rHyyne2q6h7mekVLTt0m2TODTyVa07IU=;
        b=PN8q03w+v2VQxz8Yasww4ewWpKA3VI55KWI6iv4eUdLbpyAyEiaPoKYkVkjoprlulZ
         fds24GvjK8BPPv/JTfo7bzQijLNQ0Ueh08IaxRCHI4S9dhZehKzgR+qV1Ls+Edl2sISZ
         feU/i3DoeFTFqas/54v9/nfXRxjUrDtLV3AyHHAGYxgo+i3vsGUkI96CXyRk+ZaICvH8
         5T3OX9g6fETrcqGAQAwMfeqIO9l21vIjyKvI9LnXuEQd+gcyxpwdw74VG0VpLyKGFENF
         9Cwk4eraS7XqBVd8Twkz9AmSF03TBXv5Lyd0kZT2CwfCLrO76pblKCgyszpSd7VwwYyR
         yk3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 77.68.26.236 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
Received: from fireflyinternet.com ([77.68.26.236])
        by gmr-mx.google.com with ESMTPS id u25si482584lfd.11.2021.01.30.04.45.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Jan 2021 04:45:13 -0800 (PST)
Received-SPF: neutral (google.com: 77.68.26.236 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) client-ip=77.68.26.236;
X-Default-Received-SPF: pass (skip=forwardok (res=PASS)) x-ip-name=78.156.65.138;
Received: from localhost (unverified [78.156.65.138]) 
	by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id 23745921-1500050 
	for multiple; Sat, 30 Jan 2021 12:45:11 +0000
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20210130123411.GB1822@llvm-development.us-central1-a.c.llvm-285123.internal>
References: <20210129181519.69963-1-viniciustinti@gmail.com> <161195375417.17568.2762721732398065240@build.alporthouse.com> <20210130123411.GB1822@llvm-development.us-central1-a.c.llvm-285123.internal>
Subject: Re: [PATCH] drm/i915: Remove unreachable code
From: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
To: Vinicius Tinti <viniciustinti@gmail.com>
Date: Sat, 30 Jan 2021 12:45:10 +0000
Message-ID: <161201071009.32035.9188382145053741268@build.alporthouse.com>
User-Agent: alot/0.9
X-Original-Sender: chris@chris-wilson.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 77.68.26.236 is neither permitted nor denied by best guess
 record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
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

Quoting Vinicius Tinti (2021-01-30 12:34:11)
> On Fri, Jan 29, 2021 at 08:55:54PM +0000, Chris Wilson wrote:
> > Quoting Vinicius Tinti (2021-01-29 18:15:19)
> > > By enabling -Wunreachable-code-aggressive on Clang the following code
> > > paths are unreachable.
> > 
> > That code exists as commentary and, especially for sdvo, library
> > functions that we may need in future.
> 
> I would argue that this code could be removed since it is in git history.
> It can be restored when needed.
> 
> This will make the code cleaner.

It doesn't change the control flow, so no complexity argument. It
removes documentation from the code, so I have the opposite opinion.

> > The ivb-gt1 case => as we now set the gt level for ivb, should we not
> > enable the optimisation for ivb unaffected by the w/a? Just no one has
> > taken the time to see if it causes a regression.
> 
> I don't know. I just found out that the code is unreachable.
> 
> > For error state, the question remains whether we should revert to
> > uncompressed data if the compressed stream is larger than the original.
> 
> I don't know too.
> 
> In this last two cases the code could be commented and the decisions
> and problems explained in the comment section.

They already are, that is the point.
-Chris

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161201071009.32035.9188382145053741268%40build.alporthouse.com.
