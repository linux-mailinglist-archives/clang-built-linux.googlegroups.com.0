Return-Path: <clang-built-linux+bncBD4LX4523YGBBCM6X75AKGQEVFTUT7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA9A25B23A
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 18:57:46 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id 107sf1251596uah.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 09:57:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599065865; cv=pass;
        d=google.com; s=arc-20160816;
        b=gDLxCG4ozB74PTUF8eLwFrYM+Ibec37rdPn+eAFgpxAO9L5MWeDyTWXGYNY5HxkEPl
         XPoGJ3KnQhmt6H8LFtJP8/QQURgIxHJv0OF0WUav56N3dZWswUmthddNvGSU98lwXcPa
         3mIzExhimPQyYVOMEusr6vgbOpRid/TQ+waoOli2WPKxiq0uLnbSnzSiQ15/BB2w23wG
         /2z/flGELGkQ5aHZ7PLbxYjrDYhBtsq/vnBnpk+9Jgzg1s4GvQoo9y9ppJ+fxNEOec4H
         SMsJ6WkggnagehRpoUCK5jYxItaxa+hGIPHpBE0GLvSsqMoa2p7mp8nQ2Y/5VNyMKPgz
         lrpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Z2ssgossnmxzEd6jpVEIAAB0AwNHPTnvz9imOWVEV9U=;
        b=gHQO5pPfyIsr+rkX0PL1+kjbW2nW1vLzql1NMo/72OFX+pp2xXGBezh+jl5/guQ1tk
         SA8tmptToeZM6GAnRGWXe8QnYy2w4skQX2UNWVHWFe8hUxI1Ls9fwxCU1MhjQJ7WVe+U
         v7P5JvIYuzcQDWJGMI9+oiX9S2SX53ot9rpsTXMZW1dUOSPlDAaiJguvL+/WioGjXSKn
         zeGGXXZz7VhAeSoXguoYByDyiZ/PiJJ1UC1ZSIkYXHEqhRQkncDBhxQPMcBU4QHop5kD
         9LbwTd/+LRrnNU/FGfn239YwqpFIiVVCZvNFGlc02++FpsbM/9xABSA759DMBpai19Et
         H0Bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z2ssgossnmxzEd6jpVEIAAB0AwNHPTnvz9imOWVEV9U=;
        b=lKGoacgOpDIi0YpkWoMIIaXjGHYRh9hNnf2TzdXto2UMV0yCWzH94f72aZ6mzH+aIK
         GgZJTGjXLd6b+4QAcAWWt9+9mk1RIjW8CPdX7u13rAZTqy1HLExjnwwrIYZolWCXOEOC
         X3+VKf5XfIrDm36p5kSbDk2S5J2TYzo/+n8OSi+5KgCZ7+hVHR2sCyiUTr/UQJvZV0zh
         LtcbCbDvprvDREWkze2y9qIbIETABdlDbwj7YAns82wZofRACmT48VDVGHW7InUiVyvI
         1ze63s1I5N7BfUcEOTNOK3bTXK7uhkzk4iniHhOXKfNxHZWV02XYfm/Lwdd0TT2rtafP
         +JBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z2ssgossnmxzEd6jpVEIAAB0AwNHPTnvz9imOWVEV9U=;
        b=SOnAde+GgFq9xP+S5a5aA6fgg3y+ckVIbOLtm+5dlzze0IYVQY9uBSmEkpiw9jCaNB
         hfhbtIegRecly4QIeLgyPwKbod/oC7unGjq2lFogCRhoMhVZlnpCEGc7PPeoYUFNq9NY
         w6UTYwcu4kV0Dh9lHgOuTWqvPneoL2qpPjPid7cqcsDvH2MbP23JZMmP4GfDCVFd9R5W
         eYcSZs+AJ5WieomOgpzzwHEmf5kzyFj/dvzPEaFKwXlNTNRxUGOC93Ga/IlXdLOeo3vN
         7vKAeR4dPtez+eeCqf112o7zOALd0UHonrJ1QKMQGfZ0PH1U1ZCP4smO3w/WMxThIYPj
         TQHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PGWSOQMKrZjDxG5oAmtowawg5rQ3TCwDFiAT5zTcnwtu+9lZU
	3Jc4cAHc3m5U3MbQGnhUJqw=
X-Google-Smtp-Source: ABdhPJwJFA7B4HffzHcMDZpH2arSIhyqIRb6G3IsuaIJDZClLFfn7dwKZBz+NQAM6cor2NlU2/LrDQ==
X-Received: by 2002:a05:6102:3d7:: with SMTP id n23mr2446940vsq.57.1599065865532;
        Wed, 02 Sep 2020 09:57:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:3211:: with SMTP id y17ls174508vky.2.gmail; Wed, 02 Sep
 2020 09:57:45 -0700 (PDT)
X-Received: by 2002:a1f:1b4a:: with SMTP id b71mr6543362vkb.42.1599065865187;
        Wed, 02 Sep 2020 09:57:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599065865; cv=none;
        d=google.com; s=arc-20160816;
        b=p47kuhm5bnv0v1ksDSGd7AOUKRZDZPAcFqvnI0SHcdYML/VbkP7OBna4/VOg8qCmeN
         VjTqQ0kUDSJKieq42plHcVE2PmOTvabUWr+8AmlscBhFME1J6Tettk9J0T3fgyiKes+D
         6if+2TjV7uEDi4LfbJJls/A0d0oH34NIas/p+QFc98X9VgwtufwxVe1f84WjmMevJ3rS
         GAUeJbt+G/bJUxZ2cOwWojNnMYDPepGCSxTmNMuvvotFGVYwcIBsR+71ywTiNx+N3VLj
         ZS88jwXua2Qxc9D8XCAznOaE5KSsaGGHeZZb8/7vwuTI0dsY3D3zTqlTalJii2fvnaW5
         nN3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=QvMfcrWbkSbWvH6Dldpz/mdXe7CieyLRbbBn7yA+eSU=;
        b=FLMU/4zw8E2pFmiwt6pwyHxczsH/4Qikv0jIh3HYvG/44cg5sfzWRdIZQqpie1tql5
         fcExqlKTX0tCOC1+E5z/HCGv9YBXzj9hvcKrMPpvmHX1qruQ+qnnC/9aiqVpW+QQifkM
         40uR9tLZFvREL+m1ErepJeqZikf4d9Qu8EgbSc31p9v3br2cHMDL9yjZud5Ba7jU98S/
         EZ4TT5pY3aChL8OntNVR+NmFmhVZ5HvYNGF+1XpBJo2K5zV4y1+ZjJscfMrRp2pU+Ys2
         PKEfmItMjFnCFJntZ9ysJ09H7h8GEWNn2Wz1A/cMTgKiDRYpKCEbzXIwJitqfrhrHifH
         PMxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id 134si19578vkx.0.2020.09.02.09.57.44
        for <clang-built-linux@googlegroups.com>;
        Wed, 02 Sep 2020 09:57:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 082GvO7I007572;
	Wed, 2 Sep 2020 11:57:24 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 082GvMJB007567;
	Wed, 2 Sep 2020 11:57:22 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Wed, 2 Sep 2020 11:57:22 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nicholas Piggin <npiggin@gmail.com>,
        Christophe Leroy <christophe.leroy@c-s.fr>,
        Joe Lawrence <joe.lawrence@redhat.com>,
        Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
        Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH 2/2] powerpc/vdso32: link vdso64 with linker
Message-ID: <20200902165722.GW28786@gate.crashing.org>
References: <20200901222523.1941988-1-ndesaulniers@google.com> <20200901222523.1941988-3-ndesaulniers@google.com> <b2066ccd-2b81-6032-08e3-41105b400f75@csgroup.eu> <20200902141431.GV28786@gate.crashing.org> <0c895acf-b6d7-baaf-d613-236f8be8e1fe@csgroup.eu>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <0c895acf-b6d7-baaf-d613-236f8be8e1fe@csgroup.eu>
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

On Wed, Sep 02, 2020 at 05:43:03PM +0200, Christophe Leroy wrote:
> >Try with a newer ld?  If it still happens with current versions, please
> >open a bug report?  https://sourceware.org/bugzilla
> 
> Yes it works with 2.30 and 2.34

Ah okay, I missed this part.

> But minimum for building kernel is supposed to be 2.23

Sure.  Tthat could be upgraded to 2.24 -- you should use a binutils at
least as new as your GCC, and that requires 4.9 now -- but that
probably doesn't help you here).


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902165722.GW28786%40gate.crashing.org.
