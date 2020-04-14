Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBIWP3T2AKGQEGNYIOXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CFD1AABD9
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 17:26:29 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id g8sf16125424qtq.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 08:26:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586964388; cv=pass;
        d=google.com; s=arc-20160816;
        b=I+iECnz8MXZqBuMXe7mz2EVG84YxP6uCl3ej9SQizVwgM1FeCgUhwtwepeJ59L1pSR
         uUk3dfdJl72UQzqUkw1AQNXy7Zh+LG/JCCfC3llAroqNjCRLM6B8pWw7ojFeojqvafAk
         typ90HUNilr5/vvhjrhqbXEUmo/0R1z/wTO+aNvzbHhPy7Y9Jcbb5n/FsfjDq82FU0Xf
         tQcAbvRXwSEIvrQmFQMq7vsPVzhJ+XPBP+ashfeAN17nxbJeQBldWT9dSp2DSe/GHvcy
         WN+0prJyvOorqjeDhyibPiORfd/hp4wD5ku9A8UaHZBD7cKNOpGgDOlrmOQu7dKreN6r
         fLzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:resent-to:resent-message-id:resent-date:resent-from
         :sender:dkim-signature;
        bh=yvuotb6d+bLLe7vLVGIjQOTWZknsl1exz/ixA8fG3Oc=;
        b=N1cPFh3Yt0JHzsEqqsPxqTfnNd1ugfKj+Lt+EuyGbBo6qc1DAg/VvcIbNQCZpZgo5D
         b8TKHQyE0ItmUV1FO3OxZqaVr6goaHXRZI6RZ+DJm37c3pXAnIDV5VaeeWPVESNIlrJS
         /jeqm5agdVNYDou1JtujgNHrGah2Qq0ekq96rNnk9eReA8Rzkqj1DEXUVDQ4ZS98b9Xz
         ym+96vEVnaqHFXijoqcOWpmwO+Gfax5j4yh7sBb2Lt5y48TRFHeX/NoZ+Z/4kNqYtjEQ
         d05Cx/EysWRjWRV7IPM1+oEmdFZaTjCbA2Nm5q5wPOIV6oSqSranwRRhBEPVsVrHVFvI
         YpQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:resent-from:resent-date:resent-message-id:resent-to:date
         :from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yvuotb6d+bLLe7vLVGIjQOTWZknsl1exz/ixA8fG3Oc=;
        b=pdaWGYawDJBe8dwoCx2Mdr2CvV5jOhrJBCjMHOXUzWRMZR+6mwNiAWqwvESguHHOmb
         R6Oy+UiBmfDavPR6hGHTa7R8ERZLjoI6QPS9mT307vroOQ92DPFRfXqbTTWdWLM1mZwH
         F3fa2y0u4pyiUNAZPv+/Jc1RHHUYxwnkDK1Y3/3ZSuiPjyT0SD8A72NA8uL4jnBFKKOb
         tqcHamwxqaaSEFhtT/A2DBhvc11B9He8l5ohnhBQG9yge4Bdx8qiS/MepN7zHmvDlpME
         mM4wLG+bZb0f3arl4p0BkVV/ErYeHI7Rw4C10bsCvnqFgwxjSSdaER7pbfRPyKIYww9G
         4UYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:resent-from:resent-date:resent-message-id
         :resent-to:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yvuotb6d+bLLe7vLVGIjQOTWZknsl1exz/ixA8fG3Oc=;
        b=iAw50vAQHpd2WlTevrm1QxLioSAnG69Z7cikrlqQdoWZ3YFnOZbf9jfS7PGorlHmNq
         st6ATH8bXrMe8WoIvHj5NIRiNgs2LcXFO67y60jQYljQuu85NneBHtHdlC77s/zn99qh
         8PxrdNMu85LUmhkCX1a8yPGc5x1E2PULUCzVY0UjUrUhWbS49dZ7RTlJ0CWoKjnIFAx+
         ZHsRRJZh6mCIgZWXn+PkwgskZ8orN/MK2lgh2Rait83RPMbA/WTZWLaAGENR8PYDFiFS
         yUjh3MeqPFm5pk9s50do4+hVKGMJg2oSNVM9CfTIuBjhKklKi8DbY3xcDZLkstpE+gYa
         Bdvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZmIopjBy/AoIxLkMYWyuru7UFdSnHHNKYzWz3fhpdvlwklt4+y
	jE7F8M4ZlH9MDyuZCVHpsGA=
X-Google-Smtp-Source: APiQypIn963igX2nsk0UDghuTPfa3Aiqu8bsnT9npXMtOk2AAlP/gyI9H0L8LOYB85LPrnjMqTk+Kw==
X-Received: by 2002:a05:620a:1649:: with SMTP id c9mr6405783qko.396.1586964388142;
        Wed, 15 Apr 2020 08:26:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6491:: with SMTP id y139ls2820368qkb.0.gmail; Wed, 15
 Apr 2020 08:26:26 -0700 (PDT)
X-Received: by 2002:a05:620a:1649:: with SMTP id c9mr6405659qko.396.1586964386515;
        Wed, 15 Apr 2020 08:26:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586964386; cv=none;
        d=google.com; s=arc-20160816;
        b=Sk1MbX0TnJuKZ0cR4l/jIy8Rm21Q/IlS5zwN5x6ChUgXDxpKs7phdHddza9YsZf1Fh
         bF66dClfO41gskIyMUWMB/VzBrxoi/RZd2mEJbqIbwH8pobm2WtfxUdt+NH4zYTaqdhg
         ZFlE/U2LJFi6Ae65OZ4FZUCAI9DReYVp3e0tayNyLYsCOpQRl4wvEtnWBi96SVyYdao3
         3gZen46vFlXtlVF+G711kVMyW1I0nwFsa90nYyHKzQKUvTkjHLvA6zzsguIFHwoOmQc1
         mtt343/H1dlLZc0QDHk+SOpvYkpJoqjnhodUgpMJZ0AP65wBfdOu+EuNM+QyHaUM1+Co
         CnXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:resent-to:resent-message-id
         :resent-date:resent-from;
        bh=EluUrB07iD2kOUrgm5NDhQs9qsZ56TXyTRRTuWz1Id4=;
        b=TmqjSrBq+jr/U97UMgMKijTAkQMKliisyybkDAG3XuxbHwjRb6QsdnD4izSmzuAU4M
         PLsWqGLgEjjgP4UwtosVu2/TFojuf4LoTN7q+9uE48tEaaHZVTITGJN6yPBOvsJzALzu
         EzwQxDDore+YG6kZMuSL5CcoqzcOrfHlwEwbDu+DZm0Y2wkEjrIxz+1lpUldMoYUhmTR
         ZkJXIBLNI+9xBGlwrMMTcDOvgyAr3Z3uchGLfCyKCnSH8NWAIJMnEB30ks8r6Tk/PS1u
         teR/HHZhbOLs3wu89ojq42UCjNgC9yti+LQ3BbIRIdq2x7G5/Cj+ylNFtAkS6fodRkxh
         Yp4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com ([216.24.177.18])
        by gmr-mx.google.com with ESMTPS id o3si936986qtm.0.2020.04.15.08.26.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 15 Apr 2020 08:26:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.me.apana.org.au ([192.168.0.7] helo=gwarestrin.arnor.me.apana.org.au)
	by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
	id 1jOjuy-0006EH-RF; Thu, 16 Apr 2020 01:25:37 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Thu, 16 Apr 2020 01:25:36 +1000
Resent-From: Herbert Xu <herbert@gondor.apana.org.au>
Resent-Date: Thu, 16 Apr 2020 01:25:36 +1000
Resent-Message-ID: <20200415152536.GA16067@gondor.apana.org.au>
Resent-To: Nathan Chancellor <natechancellor@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linux-crypto@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Date: Tue, 14 Apr 2020 23:57:31 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linux-crypto@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH] lib/mpi: Fix building for powerpc with clang
Message-ID: <20200414135731.GA8766@gondor.apana.org.au>
References: <20200413195041.24064-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200413195041.24064-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Mon, Apr 13, 2020 at 12:50:42PM -0700, Nathan Chancellor wrote:
> 0day reports over and over on an powerpc randconfig with clang:
> 
> lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast in a
> inline asm context requiring an l-value: remove the cast or build with
> -fheinous-gnu-extensions
> 
> Remove the superfluous casts, which have been done previously for x86
> and arm32 in commit dea632cadd12 ("lib/mpi: fix build with clang") and
> commit 7b7c1df2883d ("lib/mpi/longlong.h: fix building with 32-bit
> x86").
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/991
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Herbert Xu <herbert@gondor.apana.org.au>
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200414135731.GA8766%40gondor.apana.org.au.
