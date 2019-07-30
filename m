Return-Path: <clang-built-linux+bncBD4LX4523YGBBYUVQHVAKGQEWIXKBDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id C98BF7AA19
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 15:49:23 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id h12sf35796186otn.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 06:49:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564494562; cv=pass;
        d=google.com; s=arc-20160816;
        b=WNvAW/nlThEkvTIqPKGsnqGfUY63i+DwH8UVsb2M701lDG4qhP60XxRl/BEEtKEbbg
         WDFpqK2Oydvp4itC/5b+VIO83GQYUrWEcd3pWc6QZ3eu3PCncqMGVFUEqb34W3lctYh2
         dgbjv+loL62fO+aqL9AE4NewPRt19UrLI5TliIWiRFhn7BCdU7aAtuY+TAVM08owi8hG
         yURiGKBvwjfNfiRxqsYuKGywAEod9JRr6or6jEZAO1LfLr04Z1Dw3/ocbuXijh3GOHvY
         ILP59c7OPEo4055qAwlOxpC/N1/OY0W95RUBNxFd6m6eFq7sw47D4TzYVmrEUPLfChGp
         vIXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=M6tTz4ylPNO/HXC9BsKkcRU3kXcnoOmwOddp/bgAyPU=;
        b=DcN9YL/gPrG9oZHFvyxHDgCSAa5+rcpTlEJnK8Jh9Bi8+Azz2zaboKFXGG4IImfZvp
         C6mRRghQ2F8IUMnGqRB8lVt9zrRs9sH11VQsNDnU6oHmROI3pO1qAlKaZOONg2Fe5Rlw
         LmSC5H0brzeirHdhuEAz39HhnYA+YAlPEDzzpipRSwvW5tZtrwiyEpMHdVi0RZncgSS3
         vSxtUEr/O+MmjJYfquedfmKszeF346xrBTlzHFWlnfH8j8t9fCzbICAXcIhrAi2MDrWE
         AlDZV12MfrZ5e3x1xOWxyOMAJhKtQKKaqeVI05Cw0gf19emfMBrgr3z6SQXwi8huB+7y
         OXjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M6tTz4ylPNO/HXC9BsKkcRU3kXcnoOmwOddp/bgAyPU=;
        b=gPTOqapmA+oitkod0QWzOVlqX0aZvYYWEaAmvRWERij0MN2ybRjyfAmQ9FYjKPWqwQ
         wHWB3mEs05PuWdZMIIbkNviOTVWNo/5l0BmUriu2jGD3vyqqF5xKCHP8RsEWv6PyxHWU
         ThnMDTze73Ty41nL/9YRlfAcr3Q0s51ST1BK1IrgvHr3CTTRKhOUnWSDDUzpjefXoROQ
         iQVJRfhIw54LpmuIK+pm2mWIYFomoD9CBcTfsbW4U3UwEFDTn6HjMthIICxWjJ+edYjD
         CkMKLDujyH/zLNoE8M/q1MBID99DbukZA/86mRF4HmckLU5bgY+HL6W8PjxLN/zp+Dn6
         xaPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=M6tTz4ylPNO/HXC9BsKkcRU3kXcnoOmwOddp/bgAyPU=;
        b=X+ijCWm5deVlkM1/ae0BFqWxK5r+ezuL8oMQRCUNYHDYQySfyHCNptTZ4s/nkm1bni
         TbWaBS1sQXwvF7yObOIYgIgVoETsGb4izWV5+p+e+DWhK/t2mTwUUXvqil6I6mFJsR3z
         yjQ4J+9D95QIXu3vnQzF52Cp1XZ50nGooGb8Feq6pQsOld4VQAf4zk+L6v7plp2uXLRd
         11I7bmc2+gz2a9GsDCQVF5ajVwLK4lXmEjNqSrbShs8aicZuPpN45nWGoGixHcGWLDjs
         OIlqq+gQV+ckBttiP0/CKKTbDODnbGoTHdUHvAe7FFYGqbql9yiTZGY5C0Rw8E0+GWpo
         bzgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUVhQnAfx9jBMTwokvfvRHhZhqI1ibYJqfDhLEYN2iCyaeGZDeT
	uek4pOaVW3c+g+qBZg7su5c=
X-Google-Smtp-Source: APXvYqwMAZvavtVubcrFa1vceUuGWntZpdxT0Ufy3F5pU/Mm1a/J67+Zur92F0sshYZ+M3eLFJBOsQ==
X-Received: by 2002:aca:4256:: with SMTP id p83mr1120434oia.125.1564494562712;
        Tue, 30 Jul 2019 06:49:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3db7:: with SMTP id l52ls12481399otc.15.gmail; Tue, 30
 Jul 2019 06:49:22 -0700 (PDT)
X-Received: by 2002:a9d:7643:: with SMTP id o3mr55101000otl.49.1564494562437;
        Tue, 30 Jul 2019 06:49:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564494562; cv=none;
        d=google.com; s=arc-20160816;
        b=A2xkR81mxvvbYtwToD02esxSuXilvMnL7+d8kzktCn2Jgx2Kx4XKl7eM2FPydcxLc/
         pDc3dszIhRPuvuZMnLI87x2TptmeodLjJFxNUjC0hcXgAOw5brV3ro6Gv0IDDby/XEaZ
         28iTYFBzyua47WB4j/1BxtC+7mwrtoi/5h+vnWP5PxGY+Z7GMYlFfCF82xz/RRdskV5F
         kTXzWrzx8v/lxgmDQ4bHBsoDDHRkn2G7wzjLN/nGond1jsCfCNXv52GyhZX5uyU8R4B/
         NooisJzsR9CPqqtjOYFoIEioSqKNaPYA1hzjd/LiKBMO36v65VHvatmv+Z4ZH1xWMh1a
         SgPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=OlG6XRFI+KKRN+NFzLQV6U2fRslRWhDuWUpHJLDqM58=;
        b=qlJQDs6P3XJ1yqrYT+9CjbvP5MrQgh4RzysYRYe6miSwAFbw0mPEK6F3pcHchUwjDL
         X2HQe0+rjOEV3t+ejRO6PRJA8NYytq1BZPDe+PEjhLDDS9Ru1eX6HVx1r9Z+sOqxyySb
         2gfJv8cu7w3Jz5yjSHc3+5/+N6/ltqBEo1It213gjg+KC0iriUANNt7EyW3baLnTfBb/
         sDajbvKm7w4G+N57YGdDmeW50ZYluH6KGDmcoisk6Xx47jERd+pGroTWSzSVS8KFHrZi
         IkADZ9riot7gyY9SHFaFCsGKpUvtUOcj68kVZjN3KsJGIxCRcUrPY5mkXAZxxwRGY96/
         2wyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id u26si2901563otj.3.2019.07.30.06.49.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 30 Jul 2019 06:49:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6UDmwB5006744;
	Tue, 30 Jul 2019 08:48:58 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x6UDmu7O006742;
	Tue, 30 Jul 2019 08:48:56 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 30 Jul 2019 08:48:56 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        christophe leroy <christophe.leroy@c-s.fr>,
        kbuild test robot <lkp@intel.com>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] powerpc: workaround clang codegen bug in dcbz
Message-ID: <20190730134856.GO31406@gate.crashing.org>
References: <20190729202542.205309-1-ndesaulniers@google.com> <20190729203246.GA117371@archlinux-threadripper> <20190729215200.GN31406@gate.crashing.org> <CAK8P3a1GQSyCj1L8fFG4Pah8dr5Lanw=1yuimX1o+53ARzOX+Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1GQSyCj1L8fFG4Pah8dr5Lanw=1yuimX1o+53ARzOX+Q@mail.gmail.com>
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

On Tue, Jul 30, 2019 at 09:34:28AM +0200, Arnd Bergmann wrote:
> Upon a second look, I think the issue is that the "Z" is an input argument
> when it should be an output. clang decides that it can make a copy of the
> input and pass that into the inline asm. This is not the most efficient
> way, but it seems entirely correct according to the constraints.

Most dcb* (and all icb*) do not change the memory pointed to.  The
memory is an input here, logically as well, and that is obvious.

> Changing it to an output "=Z" constraint seems to make it work:
> 
> https://godbolt.org/z/FwEqHf
> 
> Clang still doesn't use the optimum form, but it passes the correct pointer.

As I said many times already, LLVM does not seem to treat all asm
operands as lvalues.  That is a bug.  And it is critical for memory
operands for example, as should be obvious if you look at at for a few
seconds (you pass *that* memory, not a copy of it).  The thing you pass
has an identity.  It's an lvalue.  This is true for *all* inline asm
operands, not just output operands and memory operands, but it is most
obvious there.

Or, LLVM might have a bug elsewhere.

Either way, the asm is fine, and it has worked fine in GCC since
forever.  Changing this constraint to be an output constraint would
just be obfuscation (we could change *all* operands to *everything* to
be inout ("+") constraints, and it won't affect correctness, just the
reader's sanity).


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190730134856.GO31406%40gate.crashing.org.
