Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBUWRQT5QKGQEUZIL2KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A05826AEDE
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 22:49:22 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id 33sf1672924wrk.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 13:49:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600202962; cv=pass;
        d=google.com; s=arc-20160816;
        b=yM2Tf8anZiUMRFa+tWF/fUubqLutRjBSz6Wmxvz9on/7KpzwZ74XvClvkxymtLEkP8
         ad6H7ycCpuaU2bPl/t1cGARcU2iQmPHcRvJmUI9fz0Xteruadt0HKto6tceMvuxl8P1S
         jEzGeLcB0bcT2DRHvNMG4aoDdcS962/skpQq520f5MxDygly0kcUHdOAz+Zd7I+4bDuE
         4rWJt4c773adMsYIxcTDPt+lIz7YtCwoYwUqSCs2DwldQxUv3HtplR73sFYUD15Xjc2k
         unpK0pcq/IMnVUM5sscdsprg4zXqQtnA2548//M3/lQ5qnmySBogmdnzU7XmrWoBXQ4w
         E0iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=A/oIi6DEFCaTOL56Hof8SB8sdeROSbA7RR6GZ8FPTmM=;
        b=YPdRMaynzd+DyNaxGWfPhQs2E4C4W5ejTX7Ssn5uZ2vtph0++HtkDdwvcOdAFWCu/9
         ta0tMmGafNswh4NDL5dGHtjoism8bKjB6P/839mRFZsv/47Fk4ySxFJ400enwUh6gfic
         qCF2Fzh6zg/t/amF3hd6wTqjIGLRj9NwAdeLHoXnI+euCEt1AslkBY8Yiy3/1IYKBv7L
         P2+2C87nRk3QKgSPPOcfEZ3ouU6Rj95kXlz/jM2jXgXnxNxY28td/5L78qnDExaiNhpq
         lj4feLTdz8dIQ+6dNvAkNB1HNJHn+RaNVvC7l3S6y01OYdPB27WtefJYjUJq+kW9WLWB
         2srg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=DENOFQtQ;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A/oIi6DEFCaTOL56Hof8SB8sdeROSbA7RR6GZ8FPTmM=;
        b=fiZXqNAbLkruELVZJebQZ1i/p5IPFC2J5mlRWMm5k4u6rIFb09hVC32hFmWfSngs6y
         8ZrQFNBnj+ka0ZT2nXBFW+ntoTAkBIffQBH8x8Fxz57LILIcKo7kRZij7pZClwfMfxFt
         yPfcSg6NjvhAghg10Aemv/BbcojVS2uMbj8W8S2SJKUymQvsJJ2Bqulg/Q9UUZg312K0
         LOyQQskcPPvTycUfGJsSGSjq+3xnzpF5Nz8R8Z76RI5QSP4I/+wPvI8GOps2ko8z2oPs
         /JQFbvhKsDY66n2cYIZGud0cd/Elss49RqDZxmcPDPccCQ+py1V8qN+/M2zbpMBWWeXi
         CtPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A/oIi6DEFCaTOL56Hof8SB8sdeROSbA7RR6GZ8FPTmM=;
        b=GP3h9HTDBq4QOR7VS9P+zg8eiu7mz6VROqBYU87/Zj+rqV6ME1T394MJTpZa+EMxtT
         Bhu53XPJjQBZJxvGn9VfdlmbaiM+7J0R1lhuK2QjWEtcMpwPxOe5jAsTCdx9WF1eWL7T
         NvZ8mUjwyelReANTTwj49SUfQIZP58nqG9nEJfmSvAuCfkE0TVW99wze1ndZvsZhc2zf
         DVPSDlsRXUef6xl2lK8dbk132Lj8boMthW1vX6DnFCdPkElDEO5gJSKlGoCxL1eNHBOK
         4nqBAsjUN8ZGW6zCkUKKSNT2kWhHPuO/94nsn4b8uDk7LWlEUt7ajHuaFqO1N2DoOEav
         3Meg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EF7W5ELWXJH5kHgeC09yObThz6W6rILIyLNxmKAy1fh06xtm1
	9Vn0k+4fm9Le71GjtlqCHLM=
X-Google-Smtp-Source: ABdhPJwSjAHLHtyt5GjgeBxwM8sxKFLjTdk+ig0M1Cd8s4LN6iEYOhaoevA1v5HGAYpFh+KyQ6pYOw==
X-Received: by 2002:a05:600c:ce:: with SMTP id u14mr1161832wmm.137.1600202962193;
        Tue, 15 Sep 2020 13:49:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:80d7:: with SMTP id b206ls73778wmd.1.canary-gmail; Tue,
 15 Sep 2020 13:49:21 -0700 (PDT)
X-Received: by 2002:a7b:c938:: with SMTP id h24mr1201154wml.142.1600202961329;
        Tue, 15 Sep 2020 13:49:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600202961; cv=none;
        d=google.com; s=arc-20160816;
        b=ArBRz2BXOJiTAGQTp4s/yZ1B1JsRHkxa1okdjEegqbsLWY7MjduVbpmC+/AQiQz0xp
         NdNsVXpSoVsp9u20qZSApMBbpkog+b7wMvUm5M7O6a7U0c4GOVZ+unImxR84PYzZA+N5
         O0HYBZiT4pdwPyV1iwD9TpdLo4yxbikA/NciiIK6k6gl5eb41OCx3w6FRf/7v2CbsrH1
         yx2LGPwHEH7Nu0f2KDI+L/A3Vqi2SXcjaBaqLV82IF1qceaVfe/W1Xy0r8uA3+yEWXuk
         RU+xqR6fkaZbVCIflnUsIyXbune4H9c1+5/SjYRjx1zdYkM9WKlNHSw4lSbG2tjpXOUy
         rioQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vH46LhzdOZ1oCzajIbFfe30UVDSp308nP3FSPhHESeg=;
        b=GnVoU+Oif8t1aA98BCzxg+8K9gC2VnQrtHIg1Nhn3bd7Kljdtr9zmQtzZtW86Waevm
         8cFWyF31sReP1DNOF1TTKlb+GmdlkMX74jyRH3SpxmA7h/1BXL4wZ2xP2WqqaviQP8ls
         3zTeCyFE02HJQ3VfQqaFyYpA2lR9gOjg+/XWNXHdeja4ldDEpqm7ttQeTTL/7iIXwTU0
         uiiMGJuviLHtqXPmUD/qwFM0/rO6twMmATu1bWeExvkLMBTDlKAL3ZI1fuk0Zn32UJcH
         uYj7/H7QxTBbPpesdlGdUmYenUeMNb/35gV302as44oExfjobPARJF0gE3PxstroH3je
         slWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=DENOFQtQ;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id k14si405609wrx.1.2020.09.15.13.49.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 13:49:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0e42002ec71013b50744b4.dip0.t-ipconnect.de [IPv6:2003:ec:2f0e:4200:2ec7:1013:b507:44b4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id C1D641EC0268;
	Tue, 15 Sep 2020 22:49:20 +0200 (CEST)
Date: Tue, 15 Sep 2020 22:49:12 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Rong Chen <rong.a.chen@intel.com>,
	kernel test robot <lkp@intel.com>,
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Marco Elver <elver@google.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Message-ID: <20200915204912.GA14436@zn.tnic>
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com>
 <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian>
 <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble>
 <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=DENOFQtQ;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Tue, Sep 15, 2020 at 01:12:24PM -0700, Nick Desaulniers wrote:
>       1 warning: objtool: ist_exc_vmm_communication()+0x12: unreachable instruction

That looks interesting. So your .o has:

00000000000004c0 <ist_exc_vmm_communication>:
 4c0:   55                      push   %rbp
 4c1:   48 89 e5                mov    %rsp,%rbp
 4c4:   48 c7 c7 00 00 00 00    mov    $0x0,%rdi
 4cb:   31 c0                   xor    %eax,%eax
 4cd:   e8 00 00 00 00          callq  4d2 <ist_exc_vmm_communication+0x12>
 4d2:   0f 0b                   ud2    
 4d4:   66 66 2e 0f 1f 84 00    data16 nopw %cs:0x0(%rax,%rax,1)
 4db:   00 00 00 00 
 4df:   90                      nop

 And the unreachable insn is at 0x4d2. The version I got when building with
 clang12 built from git of today is:

00000000000003e0 <ist_exc_vmm_communication>:
 3e0:   55                      push   %rbp
 3e1:   48 89 e5                mov    %rsp,%rbp
 3e4:   48 c7 c7 00 00 00 00    mov    $0x0,%rdi
 3eb:   31 c0                   xor    %eax,%eax
 3ed:   e8 00 00 00 00          callq  3f2 <ist_exc_vmm_communication+0x12>
 3f2:   66 66 2e 0f 1f 84 00    data16 nopw %cs:0x0(%rax,%rax,1)
 3f9:   00 00 00 00 
 3fd:   0f 1f 00                nopl   (%rax)

and that version is calling a bunch of NOPs.

gcc produces:

00000000000002aa <ist_exc_vmm_communication>:
 2aa:   55                      push   %rbp
 2ab:   48 c7 c7 00 00 00 00    mov    $0x0,%rdi
 2b2:   48 89 e5                mov    %rsp,%rbp
 2b5:   e8 00 00 00 00          callq  2ba <ist_exc_vmm_communication+0x10>
 2ba:   66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)

(Btw, clang doesn't need to add that "xor %eax,%eax" - panic() should not be
 returning, ever. :-))

So what that call actually is, is:

# arch/x86/kernel/sev-es.c:1342:        panic("Can't handle #VC exception from unsupported context\n");
        call    panic   #

and the address of panic() gets fixed up by the linker into:

ffffffff83066dca <ist_exc_vmm_communication>:
ffffffff83066dca:       55                      push   %rbp
ffffffff83066dcb:       48 c7 c7 08 4f e2 83    mov    $0xffffffff83e24f08,%rdi
ffffffff83066dd2:       48 89 e5                mov    %rsp,%rbp
ffffffff83066dd5:       e8 52 23 ff ff          callq  ffffffff8305912c <panic>
ffffffff83066dda:       66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)

But your compiler generates a call to UD2.

Interesting.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915204912.GA14436%40zn.tnic.
