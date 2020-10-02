Return-Path: <clang-built-linux+bncBD4LX4523YGBBFOG3X5QKGQE4QVPEKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 883E7281935
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 19:27:52 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id j6sf1529742pjy.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 10:27:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601659671; cv=pass;
        d=google.com; s=arc-20160816;
        b=ad604jWBN6JyWetBS5hlan3+1YfC11TqQC64w4qB2eNR0jDPtkFVTecrxh24L/53Tp
         b/RJXyp3Qkk0bDWMfljEV7+hpKKgRtzDb4qgs+kS+5vkh5QLMA9XUyXpY9BZUi6p2xpL
         TSTrVJYX/Q2tPhL2ktEOjDgTt5jH8TfQ2Kj1a4jlDLSOsnTw9oZOax2u7CQdiQaS+ESN
         bBRJbSK6FUIjklwXY6Zw9p/MNCHdIN/BnDhOAqDfN9K0WFXvuQLWfSL19HgijPWNpcuk
         tFDUbKFaOHNKhPrphtoWCBixB0B58hEe4jBnKaLxpqXiJtJ5zloTyheXfwzzv+bSFHq4
         Fn3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=5pOmc703l/qRQ94afVFmJ4O83pVTlZ5T0kkwV5i7QIM=;
        b=CyOrHZ0MfdonN3frvnLOJp+ktcm8Alz5OSSKf4unYMonzt1N6BCcl/VOK38hR+XoI0
         7BlCePrAdIT4fPGQaEoRHYxIqlGVimVLYBdwx8ED9JKE4Ldos2/SENisrh1Qcp/nPhmN
         RihEPvBcoFA1qZ1CyfQSXBHhPucFxuDQflHnXuMZEmyKhs89++MK81nQMayS8M1/XcUx
         HTBWwjLJmQUYQdH7AlL8YE2JpnGvbMiPb4A6rik3IPKoJSHfZ4GPju/VSOggruw3bX+7
         CmGx2WiHO3Lx4xfXsBLv/5FbwZ64/RYF1QIOWlHlhpXjYH9iBM9chZXNSY4tAEFAJCP7
         PpKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5pOmc703l/qRQ94afVFmJ4O83pVTlZ5T0kkwV5i7QIM=;
        b=HQmCKi+qBX/8uDqpGuaX+H4Uat7wRpCuMeKUNqXfjQmQgd6c8y209Xo6OxBUAXHRwl
         fB7/w89Bnos3EwHyqmSBJdfx9D6Et0fyVECuKweqQfA9QoDyikb8KOqoS7DaaSiOB/Zc
         4pfKt/kFDt5srNv6JSQjY63CDZuAvLPXR15CaVVk87u3tGq1G0h4op4D7l94hEzIuR8h
         ZNaJakrWwnL/U2eqZ4S1Cv29rU8c26Pz86Zga82Ic2cT96oHZ5/4TROCEGeH8hf+/xeo
         wuy2725eaFtdZitdXw53aa6abv5HUI+hSOHO12SG48wtl2sOzwVO2KUkViO7ao0c4E61
         +iMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5pOmc703l/qRQ94afVFmJ4O83pVTlZ5T0kkwV5i7QIM=;
        b=fdYVh9Mak0FZwYRUDtTc68UKRtfNnJpTgXFhKhaVMMR0IZb9BU6CcmOxulk0WqtOTL
         RKP9idqMdbpTfJn9Q1NsvjvXDGdsV/tJOt40Rkfsk8Lzur/6E765c3y8rl/NN7eOyLKV
         qsMhh3DQRu9mNq51ylLlxTFCKqJ/B2sWpdSVXmNHaUqIfBVIjiRHW7B47flPD3Na4O8C
         YCpIuoPWRMsI/vJ54VZXowz4Qm9Y0sJ//D4oneQIFGNix1SZLwptwYa5q4rlq4TO3ivE
         /bdSbT2sMg+1RMgfmPNkmFSC1VFOlFkAQxJiD+tLFmNEcUaciZsM3a3Ik5RdwnkS6Gm8
         sSdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ydGPgD4fUlYFRYTVtqvM2oblwDcq+7b9TB1JRXq4sdczwGZsN
	NNue3OEFweAEO91SWBuavYY=
X-Google-Smtp-Source: ABdhPJxyMjZ8erv/aMdcSeW91r2LrTVJaDOd7zeK16kyIrbd2VQ7sv40ysT9gPrPnChfPhT8Uhg5Nw==
X-Received: by 2002:a17:90a:dc06:: with SMTP id i6mr3880833pjv.162.1601659671224;
        Fri, 02 Oct 2020 10:27:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:441d:: with SMTP id r29ls947043pga.4.gmail; Fri, 02 Oct
 2020 10:27:49 -0700 (PDT)
X-Received: by 2002:a65:5341:: with SMTP id w1mr3076001pgr.404.1601659669552;
        Fri, 02 Oct 2020 10:27:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601659669; cv=none;
        d=google.com; s=arc-20160816;
        b=eMrvYZkefCzc2Z9fuxUKVOjHsTaGH8O3vIitGSg3s9CEKUgop14gAWxTLEyrPBcOSG
         2NboBKDpYfqYT46JQUubMZ8LUedNrOMPdSl/guRmqti/sKEG2dNCZlwq9jLdz5Vn9L/H
         nF6Ot1xObLBSHzsar6KluGdpmbi1aWJl+KVB5D5XvPeKLvEUAkH83qqmiHRUmVvk9Or8
         eYwqOzNuy4Omfp5b3W0QyaDzbZiYnzHn2RUkHwhFc6XMF9Hg7q82k4zRZWNHnlXHsNHm
         pzddMWYHjuw6KHz/UfBQGPQGDEPsHm2r12Sh9IQnTh3Olj9rbw2Y+amUQPMscYuPRpah
         utGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=/eBm120YJ7diQWNOoZDpPhaIf/g78k+kwg542CB2z0A=;
        b=lYcKm5K6B+P94RVES9ZdFEQRHdhQC54u19LcBNFgJxoIr68g6o2+uqslQvaBXfVeOK
         JYnVXP57VEQf/I5diwqoz/8YnaAZkT9Egukk+COEifgv3u6/y8dc81R83bKFPJSquFWI
         vmwNceqKfA+f5NOMFLirFZIM28/1fVPPjLfKvR/w4gZDTH6NwxPhfdy4hbl0Pkoc8ATF
         xbgDSlx1YQkRaC1hZOHw5kgRagfM7f4Gmki9rXZjxX42OQNL/JmZWvjNWbOGVZo0j+Ms
         NiYUOHcWl5kK8FvnizAH7VvrhAaSsfbwyq48J5lsNzmQKeVYXedEqeDI0J6lxcSUKkJA
         XAmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id mm16si179469pjb.2.2020.10.02.10.27.48
        for <clang-built-linux@googlegroups.com>;
        Fri, 02 Oct 2020 10:27:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 092HMeh0016363;
	Fri, 2 Oct 2020 12:22:40 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 092HMdAU016362;
	Fri, 2 Oct 2020 12:22:39 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 2 Oct 2020 12:22:38 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: David Miller <davem@davemloft.net>,
        Nick Desaulniers <ndesaulniers@google.com>, nickc@redhat.com,
        maskray@google.com, linux@rasmusvillemoes.dk,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        linux-kernel@vger.kernel.org, postmaster@vger.kernel.org,
        peterz@infradead.org, behanw@converseincode.com
Subject: Re: linux tooling mailing list
Message-ID: <20201002172238.GT28786@gate.crashing.org>
References: <CAKwvOdmFm9-FPrqt42NsusWRbDzNx6NF1GeSJhz_9kaAGV8eOA@mail.gmail.com> <20200930173719.GE2628@hirez.programming.kicks-ass.net> <CAKwvOdk+Rp0QGJmX07XxD8L7WVgco98LHFTu-R_2R22+UMVerQ@mail.gmail.com> <20200930.152652.1530458864962753844.davem@davemloft.net> <CA+icZUXjYTJO4cC1EAhbdqnd19HjAwyFM+iSTW37xJM5dFHQuA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUXjYTJO4cC1EAhbdqnd19HjAwyFM+iSTW37xJM5dFHQuA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Fri, Oct 02, 2020 at 02:01:13PM +0200, Sedat Dilek wrote:
> On Thu, Oct 1, 2020 at 12:26 AM David Miller <davem@davemloft.net> wrote:
> > From: Nick Desaulniers <ndesaulniers@google.com>
> > Date: Wed, 30 Sep 2020 12:29:38 -0700
> > > linux-toolchains@vger.kernel.org
> >
> > Created.
> 
> I am subscribed, too.
> 
> Will there be a(n)...?
> 
> * archive (for example marc.info)

A lore archive would be good?

> * patchwork url

We do not have any repositories associated with this list, and there
won't be many patches anyway, so patchwork will only be useful as a kind
of mail archive.  I can ask to set one up though, if people want that?


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201002172238.GT28786%40gate.crashing.org.
