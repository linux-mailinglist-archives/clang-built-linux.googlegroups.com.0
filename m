Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMFKZWAAMGQEE4J6ZNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF4B308255
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 01:22:09 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id f127sf7945904ybf.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 16:22:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611879728; cv=pass;
        d=google.com; s=arc-20160816;
        b=ES/TUKbfnuGajKjBJDLQF6nDMB2Vs9aA8yHnIQeHzD1+WwQDAkdTB2iyaK6encJDfn
         BJeg2PDbdvXyWiLnhLes5729FeBE/Q3Cp2cK9Xa2Jx3olLXzaNbgx4gb1NNSD3lXPY7f
         tsgelWSsNbctLTV7+adVZkO0Sa21gH8tRL2O5gfRPvna/2xEKc7TF8aobTa+OwlFgr9r
         DqNSrbZ0TpRS/ib1c7J/lSOb+YuAN740ob65zUaospWqJqPJwEZEokZGtUkxuq1zxtEr
         FZ4lrYVg5kX98O61rlqqIW2QbAPrUBwFO+seqs/JxkRFnptZi5r3N3NQs+0Z8+PRxBSI
         NJAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ajnr3+gwaRoR8XRiIeMHR8qjXYZ6Bp7iqAK0y9MbDNk=;
        b=dtXtxHVXl8ieNCX2C2XZI73QCuUtQWPVdebMFNSM42ZmscVpF6clbpeOjqtoSDkiVt
         GskGpm5JUawO7h3sg9IySk5uKutIbgATli4RafdG1XxjSY7pp4Zv9Yfvn3ogieb6GZn+
         dUk+bsGxQcAtYBERR679iV8bwVy8w+4EJQ2H2Pcj4++90C6SjTQ7DVQ88Xu10Q+nEmBm
         7hAo4+aMvaGpUvuFN0iPTmcO/66721yKG5E19fhOYIjnePYHxtwR+75w5RPWDsjOsEIG
         7YxIB2vGqLt3gEXtt/frIyoQONWgsYq1zyfYitQYpnX7Pj5zSlQoHxpwX4V8vArKWXeA
         sHRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MK35RJy7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ajnr3+gwaRoR8XRiIeMHR8qjXYZ6Bp7iqAK0y9MbDNk=;
        b=ZGHzvzIdO0Ms+Bd0DGEcend+6wFqzlUCLSmvCUgO3Dc8rkgEMeDP0zY7HxLrw6MU3E
         C3+aCJ+emT4rVd6VIPnM0G3jnwiF2kc4n2Vu9dojNW9CnAjnCdwqDeP94NjDevz3eh+Y
         0oEU7SUH2ltyGtCiUQeaG3au/TotYOjarms4iSctWM1WvZqEeYHSuibRHA8lojNVkNyQ
         TwhFT0p9NGBa7+v75eBxxcNKLz/5hhh4HAt22YdcKxfCrgf+ipztyj067YaF4cwzLpHA
         dp9BsE65xNqwLyp6KvpRL1WkGLdxebG80/DlpC1hbqHuv+ooyl/UPCnH8DZF1Vv0RLA3
         guzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ajnr3+gwaRoR8XRiIeMHR8qjXYZ6Bp7iqAK0y9MbDNk=;
        b=NdxvVcMujgFwC0P9omXlQHt7161E62qEkgq4dteCx2UUZpXfBI8V19RvjRnsYscG1P
         CS8rKOWdtSmwZUubHrCMaj5m4sQQmwvZ3r5pYUViLl0/PFDWS5CEMw9obTyt5K/k9JxU
         gEpVqJKuTS1hnJA3DxCGwjum21taIoq2aAdbw/eut6qGwvElsRPQ+rweOdVdQbZHa5aA
         3I0punwsSs+5kzxXb6DbOBjKG7cwg7G+DV0eTR0F+rVPXM5Ov3whSWM/tl/pHPkSwibp
         saDqmb5paIX697Tr7n3S1695C8yXsPtwzSNBelfIftH3jjwmd0qAcWmWovgl1/fUOWI7
         2p4Q==
X-Gm-Message-State: AOAM532l3PhnrFpQPttSfAU8/4uDZdbTbDLWi0plXO4qM4I+nIwaOuTM
	dEV/UNu7Cs6yfWs72MDI3Pc=
X-Google-Smtp-Source: ABdhPJzJA85X3a4uIEhfF0ZAOFcxnsBIZm9WW8n4LuQgB7BnQmj5jKS72rSmezt2PTx0eF1Gq7WU4Q==
X-Received: by 2002:a25:bec2:: with SMTP id k2mr6220447ybm.42.1611879728319;
        Thu, 28 Jan 2021 16:22:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41c9:: with SMTP id o192ls3516373yba.10.gmail; Thu, 28
 Jan 2021 16:22:07 -0800 (PST)
X-Received: by 2002:a25:198b:: with SMTP id 133mr2179191ybz.65.1611879727914;
        Thu, 28 Jan 2021 16:22:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611879727; cv=none;
        d=google.com; s=arc-20160816;
        b=vPD9RF7r0dqexsb1e45mZOPG63TAoEn7zY63bHS01OPLUP+zTDRuj/NA8cuIv/S2Xf
         VR8IzmSWbr44+EBTwi+QpJ2EMsMKauI1+2TBEJUQqlje8WeqdWNz1sfmB0nIHuLdhLcB
         yi8LCJKZ8Al8FzHTGmR0s02mU9CICp2TqB9jUIwp/1y1BLM8CZ5Zr1rrhOIrdqJhVXt6
         B5JDxZ/c2xLeI3z3EEuiJFMo39bZLQWYiMuazoOxLxX6DkGviupUeXGwVqKkk+zK2cMl
         2k41Cs2P4WanT8sdxeA3F5gp/PzrkXSxe6R3NFUmMy7vsIczQwiG+RUXRF8paLnl2kzl
         Hjjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kKL+JHPG3PhegsC2eNNTIj8bjTzjEUN9jv1phV2bHXI=;
        b=J6IoVybtlczF3A1maymdWQvvJrHHz+5ZZRGLvdEQpkcLigRN9MVcWCREghtsEGKkvk
         t2bFznoZjqeNQQON/xk3Lut0eqpGPc2u3yMmj+F2G93cr3O4to0Y06NbfJ7VvFPE2ZfB
         lw23IbFWVs7DBQyExM1WnJ9XPEgf2brVBA/R+JEQsckevC3iw/Fx+YREvz5kfNLIgHxU
         EZaY/oBWPI1Aqjv1spoWHRR4IPSkSuTF/hKfwcc/myHL631wRiocv6MTlm9qDW0zaG2B
         s84ta4il2TKt6KYQK5xfYG/FqYyzJFf1GZbTHqt47kEx0PkDYnc5NhnDJShLYez0+rBZ
         w+Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MK35RJy7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id b16si142210ybq.0.2021.01.28.16.22.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 16:22:07 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id my11so5566029pjb.1
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 16:22:07 -0800 (PST)
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id
 97-20020a170902026ab02900daaf4777c7mr1917873plc.10.1611879726950; Thu, 28 Jan
 2021 16:22:06 -0800 (PST)
MIME-Version: 1.0
References: <CAK8P3a0MbxMC9iLe0NGR0ttLY7sZDjsrgKvfRZOXVJLjzDNKmA@mail.gmail.com>
 <20210128193422.241155-1-ndesaulniers@google.com> <CAMj1kXE5uw4+zV3JVpfA2drOD5TZVMs5a_E5wrrnzjEYc=E_fA@mail.gmail.com>
In-Reply-To: <CAMj1kXE5uw4+zV3JVpfA2drOD5TZVMs5a_E5wrrnzjEYc=E_fA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 28 Jan 2021 16:21:55 -0800
Message-ID: <CAKwvOdneTwx8LwKyAA+iMELEBWBxu2nkr9dVuQ=+hgsZROu-tw@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: kprobes: rewrite test-[arm|thumb].c in UAL
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MK35RJy7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102f
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

> On Thu, 28 Jan 2021 at 20:34, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > +       TEST_RX("tbh    [pc, r",7, (9f-(1f+4))>>1,", lsl #1]",
> >
> On Thu, Jan 28, 2021 at 1:03 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> Why is this change needed? Are the resulting opcodes equivalent? Does
> GAS infer the lsl #1 but Clang doesn't?

Yes; it seems if you serialize/deserialize this using GNU `as` and
objdump, that's the canonical form (GNU objdump seems to print in UAL
form, IIUC).  I didn't see anything specifically about `tbh` in
https://developer.arm.com/documentation/dui0473/c/writing-arm-assembly-language/assembly-language-changes-after-rvctv2-1?lang=en
but it's what GNU objdump produces and what clang's integrated
assembler accepts.

> >
> >  #define _DATA_PROCESSING32_DNM(op,s,val)                                       \
> > -       TEST_RR(op s".w r0,  r",1, VAL1,", r",2, val, "")                       \
> > +       TEST_RR(op s"   r0,  r",1, VAL1,", r",2, val, "")                       \
>
> What is wrong with these .w suffixes? Shouldn't the assembler accept
> these even on instructions that only exist in a wide encoding?

Yeah, I'm not sure these have anything to do with UAL.  Looking at
LLVM's sources and IIRC, LLVM has "InstAlias"es it uses for .w
suffixes. I think I need to fix those in LLVM for a couple
instructions, rather than modify these in kernel sources.  I'll split
off the arm-test.c and thumb-test.c into separate patches, fix LLVM,
and drop the .w suffix changes to thumb-test.c.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdneTwx8LwKyAA%2BiMELEBWBxu2nkr9dVuQ%3D%2BhgsZROu-tw%40mail.gmail.com.
