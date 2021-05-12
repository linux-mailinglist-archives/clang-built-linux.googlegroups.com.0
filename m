Return-Path: <clang-built-linux+bncBD4LX4523YGBBG6452CAMGQEHQ23GPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 9206237BA85
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 12:29:48 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id c5-20020a0ca9c50000b02901aede9b5061sf18425487qvb.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 03:29:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620815387; cv=pass;
        d=google.com; s=arc-20160816;
        b=sn0CuEeuREWfpPyQS6v9YM649fDdm7e6OncQ/QOWJ/+Nj76vT7AMSq1I5eSzOGQE25
         FHpV2xBDQaaH1x/a1gWCzmERPlakmkBsYrSsbt8PwpqYZveoYB1qfOX97Y/yVZlMXE33
         E8WaFH5AgWZQwt8dtvLAS+tA/IOrCtWrf9Cg8yVTsbkOh1p/LomX7L04WWb2A9o487vl
         w7NJ1rCB2DWmWKkhx8uUBcpsuGE240Nika0LiwJjy2Yt4gN/+mD+mFkVgQogXX8RbF5a
         3ADa9Ai4dpr0obfJOmWB9ALpTKKlU8o94YUfVnRYNa8Am4tOGlwJAwUzSDzvlZyqXi48
         AXTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wFMp7GfIdmqPkXN5jbQGEEE8KX5xCZanGv4/4qsh4rs=;
        b=FJnXrwcRzmuHLqk0uXS2Gk7dl7gx3d9XgJE4gdJxyqrTJbYbqYlGo6YakdqURBVnHs
         N0skKCrpU7N18dSElHqIyTVi71e7V5TrsoiZVLhXqXsZCDghftPvhSBU4pk1B8qwCm+7
         KBkVSZhPkf9/hZOkpkC6lvTVuf1UrixlTE+yGsB14T0SSOmJfZwhwUlUMiORNH2vbJMJ
         gNRww59W8HzDGWDTnAYSbV7z6hOnK0bOp8Ot5Wz4YvFLTOOeVuVV56J4D6/ZdupEhVr+
         ohc9orNitAp86k3SfDh2Q3xbihVEzuMrztBqL2if7DNhrdqJJTiwI2QPmNpAJBi5bNPf
         HhvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wFMp7GfIdmqPkXN5jbQGEEE8KX5xCZanGv4/4qsh4rs=;
        b=k7QPTpP2k8N1XvKAnECmFyJ0ocZfiTTcLwmsoJjNNmf3MR2IkjzML9pTq7sCWIA2Xz
         pJzWG59ecmdia3Q6oVDZwCFtzsENuzeKDYwPpmoHznRTJ8ODtGFP1jBzlv1+j1Q1yQw7
         O5DWwYrAFJrAGoXwRLisxU9BWma+dN0O5M4VaR2A73NOsa/EF6OLWrzUEDFo5v/lJ6jc
         MWrvTz9DaJJLWqSrJK8RprfX9S78BtX4n9rmFVjsAWRAfeCqTJCI8otBlLye0AxrzmdL
         acjcV+tmHYlFSCvGPl1ECn4qqDAjbQ6XOBzitPnWpxDn88Cvdzf2YALc0gQUOs6y3UJ5
         KlPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wFMp7GfIdmqPkXN5jbQGEEE8KX5xCZanGv4/4qsh4rs=;
        b=KRcK/svKJknTX+zmW0aSxAGx7ajJi3SIAee+4YUMJltJLYWYI0is7MprfwNVs5EDRi
         zB+TffqaSUjPcGtutX8n8DVe8rHseGhiccrcMxaGvi5gIUNKuiOjlGFIjSSjcUSKwixg
         7fjsqQrZS7fV6yv/IKfGqzn0dwxVgfwhqj5BY/R0xXnUFfjkmIAt8VriYhaafjXg53O5
         1Ughk6gXanGyuZmD1eTCd69suB130/mALwkaTkEmWV52ojkNblRiMX7Xl68qAMHu1akE
         D5l15vF9j4NmRZDOVQpIaEAsao3XdLDof/W6TQrcuhtFfdTLHS1uF++GjH+QaJhJi47Y
         BuYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324dDjqJ1ZKFPCFpHuSgRX3eM3H1ene23oCFOIrAa07YTO3WrFI
	DijkvbcpBRsoM++pBfh0N3Y=
X-Google-Smtp-Source: ABdhPJyEOuTnNtqRQkHWZy1SCvEU/HIztAuWIN5A2/kBfDabt0N/HKIl2mYYcRaRTPBYLJPX/5QAbw==
X-Received: by 2002:ac8:6d31:: with SMTP id r17mr31721781qtu.295.1620815387565;
        Wed, 12 May 2021 03:29:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5f44:: with SMTP id t65ls1489860qkb.0.gmail; Wed, 12 May
 2021 03:29:47 -0700 (PDT)
X-Received: by 2002:a05:620a:127b:: with SMTP id b27mr31606682qkl.104.1620815386983;
        Wed, 12 May 2021 03:29:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620815386; cv=none;
        d=google.com; s=arc-20160816;
        b=PhKTuTiz40E3wyJuPSeu6dnEfF/rsBHxRz2n+f6oXHzteZjOdDLlmrWqxnYWpX/Ymn
         xVk2zX2xeAXoJHNHbm5lnQJKVbrpQ5Vvu4FGoPyXWXnbNWB8IxlMR0p+A7g4hz9jthAl
         rBUbqJqnbDtpOdiRIWXegtXRY8XcYZhYoBUIUupJ6FWT5Qpm0vUbdNMcjcooRInCOi2d
         TB0t9QN4jdnztIQHbB+ZUCgimKqPfUQnJwylkcUlY4pEKCwRWpVCz+EU4zE/AV93lSHu
         W4J3d4lA/+qWck+4Crl+FqSxVKp43g1YNYrgK9buP8d63xMGpGqkyYWB70TMgxE7HNMx
         nvvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=2Iyop68t1LSY5jGl3l/nICIntITWXNWFoUq6fRHo8W4=;
        b=IB1o0lkep5mfTkZ+DNzcXNoDxjrkvtqe8en8FXiaMDaAygyBGwqT3Qgw94t72EXPNv
         0vnCJTq5MvrGwZIS1+yuv+Fss+1EY3WaMIcGF9dSN44iprHH23C/Sus/9em9Kyf7DQ2O
         AKOKjJ8fTVTsAep/PcodlhPGHpfef7rrndyTlMCZX/zdrtmwyTHqB24Pi9Xe9Q7BIvNK
         6AE3qgfAtrrWC+sYJz6YXgFirog/dJs7FORYWJ6U0HuskEcGIpYtyrrSI/PmeQe5GpdU
         Q/NAeRbZg57hQamXX7PTnjAMpuIoOG1mkPFxrYhKcnYXW+2ay7g2nHts3WsWkGPNKDSv
         KRDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id 22si2272084qkb.5.2021.05.12.03.29.46
        for <clang-built-linux@googlegroups.com>;
        Wed, 12 May 2021 03:29:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 14CAQgOQ001475;
	Wed, 12 May 2021 05:26:42 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 14CAQe4i001474;
	Wed, 12 May 2021 05:26:40 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Wed, 12 May 2021 05:26:40 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Alexey Kardashevskiy <aik@ozlabs.ru>
Cc: Michal Marek <michal.lkml@markovi.net>, linux-kbuild@vger.kernel.org,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        linux-kernel@vger.kernel.org, Nicholas Piggin <npiggin@gmail.com>,
        Nathan Chancellor <nathan@kernel.org>,
        clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH kernel v2] powerpc/makefile: Do not redefine $(CPP) for preprocessor
Message-ID: <20210512102640.GT10366@gate.crashing.org>
References: <20210511044812.267965-1-aik@ozlabs.ru> <20210511112019.GK10366@gate.crashing.org> <1795b9efa40.27bb.1ca38dd7e845b990cd13d431eb58563d@ozlabs.ru> <20210511231635.GR10366@gate.crashing.org> <80ae1561-ed8d-cf3a-f3bb-d89cd07bfc24@ozlabs.ru>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <80ae1561-ed8d-cf3a-f3bb-d89cd07bfc24@ozlabs.ru>
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

On Wed, May 12, 2021 at 01:48:53PM +1000, Alexey Kardashevskiy wrote:
> >Oh!  I completely missed those few lines.  Sorry for that :-(
> 
> Well, I probably should have made it a separate patch anyway, I'll 
> repost separately.

Thanks.

> >To compensate a bit:
> >
> >>It still puzzles me why we need -C
> >>(preserve comments in the preprocessor output) flag here.
> >
> >It is so that a human can look at the output and read it.  Comments are
> >very significant to human readers :-)
> 
> I seriously doubt anyone ever read those :)

I am pretty sure whoever wrote it did!

> I suspect this is to pull 
> all the licenses in one place and do some checking but I did not dig deep.

I don't see the point in that, but :-)


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210512102640.GT10366%40gate.crashing.org.
