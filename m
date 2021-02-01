Return-Path: <clang-built-linux+bncBCYYJNMLYYMRBIO44GAAMGQERIGYABQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id CA45430B1E4
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 22:09:54 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id o24sf5820053uap.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 13:09:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612213794; cv=pass;
        d=google.com; s=arc-20160816;
        b=aMgmLxUPeDy7Yixo/5PKBSNvvkQJzZNjjDajfmnLL6LSplUEY7Eh7gNML2jfnOAGg+
         Jwbfa9AzFWCcINX7DaE13OQ+PtKU0FWbG12bS2OkpthM0+4dPlhtYgab5VN/PpVeZCLZ
         KNgc5aEnatNJ9+UHe/+VQ0TRdZYBAC4Ipsd+ovq/kQEmWfdIAmL1i7HtZeX30jY9PYvU
         bYeTUkHsb1bEmIF/dHlfH+bgrf5gqrVItJosZ1DBWcbmqSGFoQKP28qk1EjbOCsyq60W
         sRNSR2WwMCpSl0momJOKS8Kbl9EV+rOy6PuLzU+RhQt/IKwh4xBrS17emiX50Hqm4FWD
         lakQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/XMkxSxRGDJi+i91MjElG8IFTSpac5/mUnWBbIGGknM=;
        b=vfusqFZ4aoQhZZ+U2Wnv1V3oSuKmJHhqtoxy73ZgUGtf6owqIveknemShEu7Ct9Qlm
         ClOXTs5+4I/whbcNWTqECMf5WXN+RWT2LciG+8dRPpeUvUdVX5//1HygmBPmIkeZP1xv
         uxhAzULpyZbfLt9y8j8cFr2vIRz+0iEcJhTvQfPCFK3YQ/LIgUl3C6kUpTr+FwM49FVq
         QF+/OwWQENdaDltw/Nkw84lJeXaMGk1YprIuVvETB1VZxhSpCpR/mte/UKEJb5tX4NDg
         BS64GCSQSlP0M2nVGlZPNGVtzyAeIFrT6MyUSbWPPR1I978m93fGqRRFzchyzWSCJK+H
         K7xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/XMkxSxRGDJi+i91MjElG8IFTSpac5/mUnWBbIGGknM=;
        b=BTS7jbU9chWlHFzfMOX9fr3JPlaRO3gU+y1bEf/+red1y8PziBWdJzJbjI8BJbLUqR
         0K8F3DTMsjyUBi9oXgAuiqO2Iu12tPCyACoRJ2RVNS0TGU15B75BM4EfMuFnpe49Zn6I
         SFB5692v2JQGeLTACmd08RTd2jwhS8B0AHe6Nj+f3F672fylD5TddiFVATm2xvm3uR8J
         LaNlvzGjKmfbfoZTyQYzo7WUho5VgA6Qgq5Br1qPFiUI3cC6Fcow75muaxM4O4gKPWmy
         mvD6FZwuiJnJZw6XZlArljnk0RfcyPbsh2s1XE5YcZl5BtkM3YXGOmG7fut83IIBKXxC
         c4bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/XMkxSxRGDJi+i91MjElG8IFTSpac5/mUnWBbIGGknM=;
        b=NahW4SZ5uw1E+ze5bzRr8fVvT/oRFoKuELcAFubCQDr2M4WdkrMmS9mEwq1c0o182s
         YU+3x4QdxSr9vpSH5RWyn9j8W7CF86alB9DZEsEuJxFlwPE6VaSwM3TUWclTPcuo/Bjg
         4HsIq93Qc3+mGTn+dpk5UeUOyAm/hfLed/MKubKdK4H3/lspNAOfTXtM918EkvujWB1P
         VxqxkTWsiJW4PNZMakN1VDSYosgkEQfg1ptdq6f077tRHHanwhQsFx7/uT1BTTCCd6A3
         3RKYasNCvZ9dkFP5rQSAvGksocEka/yuggU+0eGLHBUI2PBexvrlvx3sFYnFoVo8XhqX
         tnlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xqw0ueT9yBNf3gavFnd3/BIO5Rw+9gfQNY5LiLYAYYaE0a/UC
	LpxXtCkgThwyIMBx4BmWY3E=
X-Google-Smtp-Source: ABdhPJzZ8SGV7STn9naOZiGCNgXgIc1PowdlhWI6lCIdj1G3dTzcBuNjuh7GGmlrFIzwGHoUweDMZw==
X-Received: by 2002:a67:ee0a:: with SMTP id f10mr982242vsp.40.1612213793867;
        Mon, 01 Feb 2021 13:09:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fa8a:: with SMTP id f10ls473768vsq.0.gmail; Mon, 01 Feb
 2021 13:09:53 -0800 (PST)
X-Received: by 2002:a67:1d81:: with SMTP id d123mr6495538vsd.21.1612213793499;
        Mon, 01 Feb 2021 13:09:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612213793; cv=none;
        d=google.com; s=arc-20160816;
        b=gbq+J886SDiVkxu2bIMfGC0IuZpSauhfyTD+fNPKPijSikrENxnTcxAb9cjHwWSVni
         THNlX0kmROvdMcn/c6s1ZxgYjyu4eigMJ9nyQANFpsJhU+mbBOkgYnj7lfL0lBWLLE6T
         xundHjoXmUJUrc1h4Hup4burJUcloBFsMAYGRGezq0wUEqkdCsjd1HY6QgNtWgMhYzZI
         dBAYiT9lV4I0ltRWLh/PdZaJg3PHZwCmCjdlB4vgCjjamqxYR3FqNtlFQrtEwERW1lbV
         h9ojVlcoCNCyVvuTNUGauE9OvNjg1Lm5SRPsXXPmDIFSgH1h+22bCZUdztyOJldKsQu9
         IDIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=wvdjku1jU3apltEWVwsSxTU3erYxBwg3twWjnZTS+mk=;
        b=C2AdEPSCaTsnC730mSmCdautpmv6fN+0GL3aDON5XjwiyFIlLwC/jY+2xcsi7tQx9i
         TQZIO/L5qvpBTYuG+9bUR0XeDXPuAFTTF7auqDK/V1SDWTrxlEMFhwQHDPtAg25vFXoa
         m4kgpOssoZMpV7qAGXlpMik5NByx/H5R5UO+01lVZ4wNCmDiGU/OQjHJkPWdb0TWHlAe
         rvizM0HNhDOWS7kI1FX7Xy9zvZEgE/7o4guHqo7cDcZS0HzolX+dYooqYA8JPFKu+bcN
         KcX+TjEVQvTascFCAueKM3Oo6MnmOtyAInznZh6MlEck681wgbYzo+WDoaaz0cl7E4kX
         IT4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id n3si829371uad.0.2021.02.01.13.09.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 13:09:53 -0800 (PST)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net [72.74.133.215])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 111L9m86014210
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 1 Feb 2021 16:09:49 -0500
Received: by cwcc.thunk.org (Postfix, from userid 15806)
	id B1BCD15C39E2; Mon,  1 Feb 2021 16:09:48 -0500 (EST)
Date: Mon, 1 Feb 2021 16:09:48 -0500
From: "Theodore Ts'o" <tytso@mit.edu>
To: Vinicius Tinti <viniciustinti@gmail.com>
Cc: Christoph Hellwig <hch@infradead.org>,
        Andreas Dilger <adilger.kernel@dilger.ca>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>, linux-ext4@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
Message-ID: <YBhuHJgZ3QPqHheV@mit.edu>
References: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
 <20210201003125.90257-1-viniciustinti@gmail.com>
 <20210201124924.GA3284018@infradead.org>
 <CALD9WKxc0kMPCHSoikko+qYk2+ZLUy73+ryKGW9qMSpyzAobLA@mail.gmail.com>
 <YBg20AuSC3/9w2zz@mit.edu>
 <CALD9WKzO53AXQW-qQ82VZ41H5=cGdLTUiEoz3X6BmPkb6XaTag@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CALD9WKzO53AXQW-qQ82VZ41H5=cGdLTUiEoz3X6BmPkb6XaTag@mail.gmail.com>
X-Original-Sender: tytso@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted
 sender) smtp.mailfrom=tytso@mit.edu
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

On Mon, Feb 01, 2021 at 03:41:50PM -0300, Vinicius Tinti wrote:
> 
> My goal is to avoid having a dead code. Three options come to mind.
> 
> The first would be to add another #ifdef SOMETHING (suggest a name).
> But this doesn't remove the code and someone could enable it by accident.

I *really* don't see the point of having the compiler whine about
"dead code", so I'm not terribly fond of
-Wunreachable-code-aggressive.  There may be times where depending on
how things are compiled, we *want* the compiler to remove code block,
and it makes the code less ugly than having #ifdef ... #endif breaking
up the code.

If turning that on requires uglifying many places in the kernel code,
maybe the right answer is... don't.

That being said, I have no problem of replacing

	if (0) {
		...
	}

with

#ifdef DX_DEBUG
	...
#endif

In this particular place.

But before we go there, I want to register my extreme skepticsm about
-Wunreachable-code-aggressive.  How much other places where it is
***obvious*** that the maintainer really knew what they are doing, and
it's just the compiler whining about a false positive?

> > However, if there *is* a bug, having an early detection that the
> > representation invariant of the data structure has been violated can
> > be useful in root causing a bug.  This would probably be clearer if
> > the code was pulled out into a separate function with comments
> > explaining that this is a rep invariant check.
> 
> Good idea. I will do that too.

If you want to do that, and do something like

#ifdef DX_DEBUG
static inline htree_rep_invariant_Check(...)
{
	...
}
#else
static inline htree_rep_invariant_check(...) { }
#endif

I'm not going to complain.  That's actually a better way to go, since
there may be other places in the code where a developer might want to
introduce a rep invariant check.  So that's actually improving the
code, as opposed to making a pointless change just to suppress a
compiler warning.

Of course, then someone will try enabling a -W flag which causes the
compiler to whine about empty function bodies....

					- Ted

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YBhuHJgZ3QPqHheV%40mit.edu.
