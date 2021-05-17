Return-Path: <clang-built-linux+bncBD4LX4523YGBBJUAROCQMGQE7C5ACNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBF0383D01
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 21:12:39 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id e6-20020aca23060000b02901e5d6b96789sf1921212oie.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 12:12:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621278759; cv=pass;
        d=google.com; s=arc-20160816;
        b=lSLHBFZWMafJSQjK7gDv/gvo0jZPXJ3gG6XTQp7vrP/DpTzTNz5SF0GEmyvQVYIg4S
         NUwEoCkcaq24ceOc8yyAcOYvh5KBwjOa456pg0vmR7G6zDWJsSiuKnjKmuca8zcikw5t
         9XODvEmQPCesC5rIodacmyBZhQhKyPrXmSPWOK+wFmypi92pDWnI4/A6eh9grsa6mIeB
         kj6gAsvlDBn+2Zxdh19GEwokxQ4xwSEvQbut2bSBobek9npUB1IH6sG/caLVwnWE1L+K
         PordnktA2PMdTxySRpLbM9r9Nnvi8yTYv6eSom48j93iDbsJVHNZNc9yiZL0+CNv581S
         vHjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Up77uTakG7/iLTHS3unSRUipUArCp8Cb5zUBp/kMtHA=;
        b=zPxvRb/2pQqyIV05qyfBDRJntMjEPBE8OJvP87TtvNSENVf/F2zPRQPfMjTONSgvm1
         5J6wzDX2HoXxWXW3EbhDqDAdmtIB8jRnqh/GbL2efiIRO3d/ugeukxsNRsMvXYy4G+aA
         Wixqk9IUFzmvQU9m5HMcA8CKpIfZyBXu8Qr2V/6+d+zRAcoSvFW0aCWjUT3RWefS4lME
         Kq30YjkvQgqiQqe8tiCEOtQcshQH9kBa0aFaw1xEAvTsGtgxaQjB5UyeIo88X5LqA2Az
         ss4HYoXm0xtHnoy4gBF2LCkiNwUYPPWiDTyPxen+B0pMX26xv3O2Q3zbKTrbcJosfMUW
         5rHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Up77uTakG7/iLTHS3unSRUipUArCp8Cb5zUBp/kMtHA=;
        b=LRY4MVroxe4QP7UQsKTctg2+Y0P5E1JghDqL596tbVbhFKj85D2DkXqlO67lecjlEO
         5Yw65OLfKzdaRO8CdaMTN8NQZHvl07MdxpisdkwAs4NILfuuFxg3gORiiTR1QSf73+Ja
         WrmHzAF3fLINxmJz/vTy58m09kbaavXeJxr30fumg5WZcsUE5l2vXjFZzjJGuUTQV9vZ
         PwUFkxz2tH+XGSbDUh/XiY+/KFlkQKJVfG8wDsMpd9k9zwy83TU3AhE1CKNqj/Q2XijX
         DjnGq6aQMzzoLct4cQ/Kk7k2LkngFxDsMcQC23yW6W/sPjtz0b8BpbDS8s1h+0OTryYW
         OJIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Up77uTakG7/iLTHS3unSRUipUArCp8Cb5zUBp/kMtHA=;
        b=q0cpouaHhsh7K/mTQD4DRvzY4zdlv0ot/3pZh/hFhk5NulLZdF/PF/wL1Ax6EbqfJb
         YlhsNYz6UBDFIsc12swH/wmsiVGHjPeUhrzzhnhYLeIsCltb98QDZ8eQyhTMAa9N4D2k
         Zvc5hkBQkmVvwclYJskm/ZrO/mw+cowfwzbCVpEyb6Ga6QV5CnA1f5CP9HsSJ68lDmH+
         OdoEVHj2SOxHTdG5XAq1VMYz5O4LMcUtUARveyS8JeuhfLwNfzR5mC7XdxvPHRuYhmZ3
         KGmyBXc95jPRTRXyXYWCIAynlqiFDzvlv4pGRigOP83+fG4qvRJjhhFsQ16F1NfQmeDZ
         FI1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TTHO5+Eb74zLDAju+6tB1xfd7wLN55mXxFKVR+omgNwlJppRb
	QjXNohTyiIjjnEukLTMf4N0=
X-Google-Smtp-Source: ABdhPJx3OIo3Etol1SUyTpZUdzWDTaOdicI3q4E+Gk5w8mfo1L9bEqtD2sN9xv3F9mZPuTLLdwGdPQ==
X-Received: by 2002:a9d:7348:: with SMTP id l8mr948501otk.240.1621278758797;
        Mon, 17 May 2021 12:12:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7b46:: with SMTP id f6ls4976633oto.2.gmail; Mon, 17 May
 2021 12:12:38 -0700 (PDT)
X-Received: by 2002:a05:6830:1ac7:: with SMTP id r7mr889283otc.167.1621278758464;
        Mon, 17 May 2021 12:12:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621278758; cv=none;
        d=google.com; s=arc-20160816;
        b=OPbBfVzlJkhdatCIryUNYGt6MxivdcoirmKlQTGH8Bgk2srTjObVV3lxz84t0ctuhU
         UQXz3RXoeoqwdkt2ZSKplVmXaE4U+nmYuviZ6g7IxLF9p8WhwHd2t6S1OcNvREEdNgw5
         /VTlZjpcHgJf9oYNAAlbBIW32D7XG8Cn1EztD7mV4sK4LZJcs4Oa9EaJbw0wfG1ALtbu
         C/8NmukDm2mENyzlLHgg15/ijdq/dG+dFNlS9hE0dyaIRMh/f1Uzmd2gk0lOXgmHqYX4
         iR2VU8Dgz8lFllI1AFTalAj9TA3aWeGCqny8Dk+4LUnYDY3Sm1UuOP9MhXV9pbhTZBqB
         z9UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=kwE5bAcmQyudzzAT9lc3kEAbWfEC6/ZrSlirdJKpSsQ=;
        b=j3/BW7FirSaNrB54Yc5MpgD+aEcwQ56xckmC+G1S86vRIiGGOhsTgCSaqryZc7yLlt
         H9Gtb1edW2+VO1I5fGdDS7IbMZxjdnJNYRauG44CyOy5ShobiqAw4DvSXvcHtfm1AiMf
         /ms6qdH5KrsVglS3ldFdLxwCb9PEOY/zuNxRPFqAjkWXhUM1AGRVp251FR1uZbu+4qv8
         M1M3xGZQ40PaOf/Mo2PIKzCjNCESoU7uRfuoWBOPOGV35aEpWo6Qr04bn4iVOGe5Pd4s
         xpmFzPbZUlsRSFZvY34eidQzLFpvrVBa5qOt1vOGTGuI4JCVz1xUYKDK0Db3b0NAsVTQ
         ZjAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id f4si2112158otc.2.2021.05.17.12.12.37
        for <clang-built-linux@googlegroups.com>;
        Mon, 17 May 2021 12:12:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 14HJAYe3010889;
	Mon, 17 May 2021 14:10:34 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 14HJAXEs010888;
	Mon, 17 May 2021 14:10:33 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 17 May 2021 14:10:32 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Alexey Kardashevskiy <aik@ozlabs.ru>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [PATCH kernel v3] powerpc/makefile: Do not redefine $(CPP) for preprocessor
Message-ID: <20210517191032.GU10366@gate.crashing.org>
References: <20210513115904.519912-1-aik@ozlabs.ru> <dedc7262-2956-37b2-ebfd-ae8eb9b56716@kernel.org> <CAK7LNASFhRE=1EBj9AoTMMEd2YJdu7bCxARAGJfZ7aXcBrMAUw@mail.gmail.com> <20210514084649.GI10366@gate.crashing.org> <f8d64d7d-cd2b-342a-de6a-c14a5df9462c@ozlabs.ru>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <f8d64d7d-cd2b-342a-de6a-c14a5df9462c@ozlabs.ru>
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

Hi!

On Mon, May 17, 2021 at 01:23:11PM +1000, Alexey Kardashevskiy wrote:
> On 5/14/21 18:46, Segher Boessenkool wrote:
> >On Fri, May 14, 2021 at 11:42:32AM +0900, Masahiro Yamada wrote:
> >>In my best guess, the reason why powerpc adding the endian flag to CPP
> >>is this line in arch/powerpc/kernel/vdso64/vdso64.lds.S
> >>
> >>#ifdef __LITTLE_ENDIAN__
> >>OUTPUT_FORMAT("elf64-powerpcle", "elf64-powerpcle", "elf64-powerpcle")
> >>#else
> >>OUTPUT_FORMAT("elf64-powerpc", "elf64-powerpc", "elf64-powerpc")
> >>#endif
> >
> >Which is equivalent to
> >
> >#ifdef __LITTLE_ENDIAN__
> >OUTPUT_FORMAT("elf64-powerpcle")
> >#else
> >OUTPUT_FORMAT("elf64-powerpc")
> >#endif
> >
> >so please change that at the same time if you touch this :-)
> 
> "If you touch this" approach did not work well with this patch so sorry 
> but no ;)
> 
> and for a separate patch, I'll have to dig since when it is equal, do 
> you know?

Since 1994, when the three-arg version was introduced (the one-arg
version is from 1992).

> >>__LITTLE_ENDIAN__  is defined by powerpc gcc and clang.
> >
> >This predefined macro is required by the newer ABIs, but all older
> 
> That's good so I'll stick to it.

Great.

> >You can just write -mbig and -mlittle btw.  Those aren't available on
> >all targets, but neither are the long-winded -m{big,little}-endian
> >option names.  Pet peeve, I know :-)
> 
> I am looking the same guarantees across modern enough gcc and clang and 
> I am not sure all of the above is valid for clang 10.0.something (or 
> whatever we say we support) ;)

-mbig/-mlittle is supported in GCC since times immemorial.  Whether LLVM
supports it as well just depends on how good their emulation is, I have
no idea.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210517191032.GU10366%40gate.crashing.org.
