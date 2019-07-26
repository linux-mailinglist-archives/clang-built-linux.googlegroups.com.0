Return-Path: <clang-built-linux+bncBDAMN6NI5EERBVH75LUQKGQEMTDL6ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id D310A7615C
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 10:54:44 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id u17sf10526707wmd.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 01:54:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564131284; cv=pass;
        d=google.com; s=arc-20160816;
        b=note252fKEqV59+yofAyFQtqjDkBuPE68E0pBkkJTztjXAgm4XhKNNbh9m92mPGg8u
         0tBzR3Oq4epwMfGZ5KqK7pOONvAAQqQSMLWzcCgkw0GraQwGe9DbSUTCBPsn+OatqKCG
         RhRAsTzKKgAwLiIq2N4nu/rMu0fusqTc62QbzXC8C6zs8+9NGA8sbpMbmjRcjbkj9MnG
         pXXUPtes+kfus21BbNBW53qT5GjTL84Z0eecpSmQe6spjeHUBP0TpClG/pczB+oGyZ2P
         nyGfbx60pRulMtuvYk8ShMjL693ggjYLRdetuUZ/WZ1Om4Fyiwin3BlbAhG+R7u8F/sp
         GRcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=B8++vfhnN8QFUETjaGJdoNLUYdiBuL0t78L8pgVCqdE=;
        b=B/0g+IQ5co7D5+uN52Pm2KD7iJYYPMPpVO/SxToECmjX0rIthEWpyosKmUojL4fooU
         k14k4WPx1yiY01a25Q6ymMespZRmPafattNQH/SkFlMT2+IKu737IdU4bx+utwynNn05
         XJX9abqsN18SNrgkYbhyp+U/YcUoK0xMRVjRL5niSm4qNIiuduHxk/DTOA9ANN6Vebix
         /a8VArKv7joz2FssQi9jnyOesA+Kdj86wumYrF+HsR9AMRa+Ryio9tDqxOAFAgUW9WXf
         q9Oi0XHuL+M2x9YTdgiDtUbY5w/ZMexjbcc8Sq+DVh5eLIFvhJRYbZgvf05A3sMkxmhP
         7Z5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B8++vfhnN8QFUETjaGJdoNLUYdiBuL0t78L8pgVCqdE=;
        b=tMAvEPMCjzoStSxT1NG1ZwXLQtUYuSO8NsAPsDGvIHkXHFeGhUQj6EtFCazugjTXeA
         Njb9NpbMsmdIrMEo53KGVilfX8JqN3rxqyuQNpAXrZe5traARmCsoaovfQnyxpdJZvWy
         1Bdy517ydOIXYke08Kl/bjX0/HfB3QFutPy29jyMKgRuV7Z9x9YxjfOrCEK7I67MbehW
         oZipM54CUHvHv/JX0VqmVn0jHYQn+TUBv8/B0xHSDAV1ftuErAHFO9emYO+saCt9ou5z
         BaoXBhTj573pxD4RBdG42LV6WCWW3rVqzHIBDJSGPggIDXbhNBJwE9Dgo7OLfs6761b4
         XsOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B8++vfhnN8QFUETjaGJdoNLUYdiBuL0t78L8pgVCqdE=;
        b=L5LaGZbtNAeZ/nVnTwsyzfFiFcdUyy/1CaguJeQ8oL67bAU5nTncKL4z2vMINoowY3
         fy4xdq4d8yKhqT6ZTsmEk3NLesbWHLilvlbklszc1ub2hnOas/Zgxxbx+rJp+8LiGo3b
         IW47wjO3Y8bSDi3ABdUQQh1YXHwnWRxfCKrdhN0ghDOvXRJKajDVucraPi2Sd2Lhh0Qa
         aGOz1Clogij/hhutmMmWkLdmYMPVcoAZVIKy6hXUrU8ZWb8LnIxZCQGBA1BGVMJXMYDU
         f5pYddUbDXQfbbDoqt19m+j7CDYIOsz5QELZjw13oLLYCKtpqjDp21+T8jkRU293tDnP
         gtdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUBHMvGXrilXFxu34w88vqXqxnUGx2n4iPn0EzL14kj92R80Tym
	CVILV5TnIGbe360xHhMpLZc=
X-Google-Smtp-Source: APXvYqyE4hTTg/pSEM+XldcJDMYHQ4SXouk/cwgA5DL7TiBs3vF+NOv1V50JJKuj/pDSZKtuSDEibw==
X-Received: by 2002:a1c:a481:: with SMTP id n123mr78512233wme.123.1564131284570;
        Fri, 26 Jul 2019 01:54:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:97de:: with SMTP id t30ls13145153wrb.11.gmail; Fri, 26
 Jul 2019 01:54:44 -0700 (PDT)
X-Received: by 2002:adf:d4c1:: with SMTP id w1mr28060370wrk.229.1564131284166;
        Fri, 26 Jul 2019 01:54:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564131284; cv=none;
        d=google.com; s=arc-20160816;
        b=yM54BMxS5adwU3/0AH/YgpbsEB0qtOdzyTWE/Huv7nmt6IaikzkUlsVmvdkquJb7MH
         +OVDs0KygNnO/yPD3QLwIzibNb6ANqLcWlCPS/CVRFtw8WEtJ3wX+6FJFu7d/Ne16ayC
         msEO1IAcWIayT1soPJm7YaU3GW/oQhlrNnDjPUjdhcEs/LjnJSwbixcgoVUSDp341cb6
         08sQzRC5DVrIHgzr3I3Cd4hx+d/2E5Lb+4XC5PNpxAAviocmhG4LVTEO7lVvGoB6w3Vf
         H0X+kX2OR1gXW07VQ8rgmJuweUFTI2G0JmRCJ6+m/4F36WZI4gAlTDzU+C9N4Fi94V4Q
         wY9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=i0vBC52/WN8GQvckG1Vh+REO33Gp32YibcLM0Y8ALpA=;
        b=R6K+9GMLyf/dsCM7udT43smaK654MCZAwVfTXGLD0C5pGNBoYv3dFNeAGiKzI3q7YO
         Htf6/GYmHpdaKhxa2iBFsU2bwJJJQAZxgzHWS6NMpRMwuWgig/fqsfgfAPHx1CDc8wXL
         BZugOpSrPzv95YU2vpWFLdn/TnRkfOOeX6qi5xwklUt7ZdzYXo4QMnNihRa5Xg0Eo/H8
         oM5pYwsbKRcpEaZpHNbtzwvTmPU93FpZFnVH0AZ804DXwWk/rqw2q83QcxRRCl0BZcgw
         nII0rBHWIcdZq0n326CgqbxGxa2tUcMR8FKhbELriJ+nOBGtFam9rbrcRcWpYUuY0OiP
         HNWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id s13si3091786wra.1.2019.07.26.01.54.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 26 Jul 2019 01:54:44 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1hqvzp-0005Xo-N2; Fri, 26 Jul 2019 10:54:37 +0200
Date: Fri, 26 Jul 2019 10:54:36 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: mingo@redhat.com, bp@alien8.de, peterz@infradead.org, 
    clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
    yamada.masahiro@socionext.com, Vaibhav Rustagi <vaibhavrustagi@google.com>, 
    "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org
Subject: Re: [PATCH v4 2/2] x86/purgatory: use CFLAGS_REMOVE rather than
 reset KBUILD_CFLAGS
In-Reply-To: <20190725200625.174838-2-ndesaulniers@google.com>
Message-ID: <alpine.DEB.2.21.1907261012140.1791@nanos.tec.linutronix.de>
References: <20190725200625.174838-1-ndesaulniers@google.com> <20190725200625.174838-2-ndesaulniers@google.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
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

On Thu, 25 Jul 2019, Nick Desaulniers wrote:

> KBUILD_CFLAGS is very carefully built up in the top level Makefile,
> particularly when cross compiling or using different build tools.
> Resetting KBUILD_CFLAGS via := assignment is an antipattern.
> 
> The comment above the reset mentions that -pg is problematic.  Other
> Makefiles use `CFLAGS_REMOVE_file.o = $(CC_FLAGS_FTRACE)` when
> CONFIG_FUNCTION_TRACER is set. Prefer that pattern to wiping out all of
> the important KBUILD_CFLAGS then manually having to re-add them. Seems
> also that __stack_chk_fail references are generated when using
> CONFIG_STACKPROTECTOR or CONFIG_STACKPROTECTOR_STRONG.

Looking at the resulting build flags. Most stuff looks correct but there
are a few which need to be looked at twice.

removes:

 -ffreestanding
 -fno-builtin
 -fno-zero-initialized-in-bss

changes:

 -mcmodel=large to -mcmodel=kernel

adds:

  -mindirect-branch-register
  -mindirect-branch=thunk-extern

The latter makes me nervous. That probably wants to have retpoline disabled
as well. It's not having an instance right now, but ...

Thanks,

	tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.1907261012140.1791%40nanos.tec.linutronix.de.
