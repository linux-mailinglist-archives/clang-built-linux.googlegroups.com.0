Return-Path: <clang-built-linux+bncBD4LX4523YGBBO5FSKEAMGQETACARCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 207883DC1C2
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 02:01:01 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id b32-20020a4a98e30000b029026222bb0380sf4113112ooj.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 17:01:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627689660; cv=pass;
        d=google.com; s=arc-20160816;
        b=oiR7lbMK2IynYsdN/V/R3R5pPqDN2z/xGHkPS7XGu5qByOmcb0ehJ9nKJNtK+9Kqn5
         PMyyJBYc/EpF7Yec+3KCPAkbprxkhrH1mSLezRaLq2xZ/H2JOzTjAKaXZF02FpkFUf03
         PQ+bq2A1F98n7Sp8Yf8/kS/jCC24HslcsXpRT/95YVqlFUUjABKC3oVostzfXh3s/bXA
         fXtf2Xymux8VzZujXaGTJBSQFwbDo7ivk8QYtKynyFTSPWFaktj23/+uEDxHButWlJcg
         NLbgbpBYI6vVXXPIDDHkskERT/lldIxW80PL9jbZivFiMxTSyyNvavlB52Y4tACVLyiA
         Dl9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=tV6c7ZfN+M3f910amIlr727Cst9+Hgcu78RYJgQcJrE=;
        b=GqXCm+dIhYrAT2zPQwkbDzQ4fNck6rxqp9oSa1KnWYmYP2D8W2hJ1XaeloqMWsXE1J
         qgfw5dxqkJSZtdAQsqrN6W1drcs9zYkxnxaF099K33fxFzMkbmYB6xHICZ1LN46Mbn8W
         nQBWXxpWZ5d3sXMHNhBefqkRuCGHSLwDTjgHpmSKFZXEz9nqh+Uh1ftswlXNGyhyuMpW
         OMrASI0j7VIgZbVMbFhdUOXAYS/KYwjJBYPRtMf4NfHH2i+FAohqTb1NXe5QxiPzvIKc
         TGkH3au1T/uhPYCasAqltr5URPjb65OMTsxwtUAQmbQ0Vg54xPm6kdF06Zw/PXD/wx5R
         GNrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tV6c7ZfN+M3f910amIlr727Cst9+Hgcu78RYJgQcJrE=;
        b=QqIsHOD5x+eDuKutSj+IKLx0QwEV/PVjv2ey2golRnTSu5uXuXwZYDffRbIo3BbNFW
         bOVFPETx5efsLh+80CiNeHIVwzQ1itjnlR+xKc6gC2JbeQqANjKmw7DHSAkFSTGH5gHt
         /wrTez3zrZkCeVhMNMVCwfkRA86YNOWsoUW9x1em0nYUy12RJ8Led+FkbnvNxqpHupdi
         Do0h4gf4Vm2LqX/i3rXr3xN+uVHU8a7UYofe9YzFxgwyzRh7W9jGWKUTJkVgwdkPmFYS
         naruZ/P3w+nCEIM6eCe9e9NEwKjrS6A6LFaE6fUYYaMG5D4jz0crzLBc03WFJ8w1WD2N
         WkTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tV6c7ZfN+M3f910amIlr727Cst9+Hgcu78RYJgQcJrE=;
        b=YXXLCFbBXpU5ZSu72PZnqn+WxtaAMJjqaay8sAQ2Cg9T41LQidAi9eXWwL9p3onSfK
         THM8RJpAMdySh/GEk12BwC3WDWG/4xLJ7saX9FFjZBATjQAmb+0Ia9t+pUVmJ6FKAzXJ
         vNy04jlUyoIpFt8sDjxF9aEajCC2PpV9Ld9r777xW4rv8IyU4c7xEAapMjSHF6zT0B3l
         H8oK/efJsax6G8mdCToMFLgesIpd6npfJE3ik3UMiP0lhH8k8V79IYk9ENTCymwnXSvS
         8k0RsRDBRbCaDUU+YWRb5QdWXI3F/NQgrG3cs0RMwHfQplZwOh/Amj8GExTMtPOJDLGU
         IaZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lgtZT1kCzq1dxnJWTNFa9i/A07rHTbiKHudiTrprvtjOH86z6
	hdaZb0ocpfQMzggvoUAIzec=
X-Google-Smtp-Source: ABdhPJwdJH3OpCQtvraHvT8Je+pX4Gt60JC/hUhkUTc433H2n+m25u/Mh9XhZgKgqLL9O2rbeLmzxg==
X-Received: by 2002:a05:6820:444:: with SMTP id p4mr3556613oou.75.1627689659977;
        Fri, 30 Jul 2021 17:00:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4101:: with SMTP id w1ls803749ott.11.gmail; Fri, 30
 Jul 2021 17:00:59 -0700 (PDT)
X-Received: by 2002:a9d:798d:: with SMTP id h13mr4043226otm.210.1627689659392;
        Fri, 30 Jul 2021 17:00:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627689659; cv=none;
        d=google.com; s=arc-20160816;
        b=w9FX/Gagu3VsBzOMIsW05zzytypqxL9JBLyeWObJb/U3zoU699Ss4K5+eQo3nQEZK2
         e8du3Nf/Ht7hgi8+8kuUUwdl4Ors073IGkzfCOQoZG1bNdNXMmtHp4QySzrZ2UNj46x1
         SCeQQLda/KVZ+XWwrAWYvydCnabhRhMyQVks/QWWmyYS2sH5tDI7y7+ejG3EXLV1N+An
         7pAjWtp1xVk5fOM9yElrK8tM6y9Pbw/LWJtt12jn+K/W00YR4PcE+Cswg7VYD9KVWlgA
         rkK4zkENNYeyZM2goDveZ/XRURMOk42z2QBaqiiwmZf8WdH/mN2dM5XlfgljTaMRg0AE
         da7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=HrWSKbLo2wo+KrRwviqZxgV2WBtGP85Q0yTCLzKWydI=;
        b=ZwG9fzPjL4ZBRdLYZq4sYhxBPP3UUX2pIWm4D1KsPmGhKx688X8woFm23GRoJAJguW
         ZtvmOfTIYjOaShCRBuyc38HCuOnMSCsjEBbWDetDJk6uLBKsnQXUsFGYVocMQE5uYpZf
         G4UQUy/ebDUA0DNqGitPDBVMMvzgC35oDYznkQsnW8DNCLfjG81fPz2IYuGnC+cKwdhY
         3rFJmS51XJlAyuXB/qRjBcEpAhi39pvyEngjmco1bDIrzPKZQDx9ZXO2Xq1gUdy1RxZd
         9EDz2WKGwwmv1GAY3Xbn67cyvKQFM7DO5Med3rULV2xFneftco0zPPJgAOYvikfNiydG
         jimQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id u9si90349oiw.4.2021.07.30.17.00.58
        for <clang-built-linux@googlegroups.com>;
        Fri, 30 Jul 2021 17:00:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 16UNtuUP004776;
	Fri, 30 Jul 2021 18:55:56 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 16UNtsHB004775;
	Fri, 30 Jul 2021 18:55:54 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 30 Jul 2021 18:55:54 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, Nathan Chancellor <nathan@kernel.org>,
        linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] powerpc/vdso: Don't use r30 to avoid breaking Go lang
Message-ID: <20210730235554.GJ1583@gate.crashing.org>
References: <20210729131244.2595519-1-mpe@ellerman.id.au> <392b3b47-1878-d27a-9656-4596fdc7c343@molgen.mpg.de> <CAKwvOdmR9nB3T-PLNSGea3=9qbZuOoLs5D22UPRBbvw_+aOO7A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmR9nB3T-PLNSGea3=9qbZuOoLs5D22UPRBbvw_+aOO7A@mail.gmail.com>
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

On Thu, Jul 29, 2021 at 09:25:43AM -0700, Nick Desaulniers wrote:
> On Thu, Jul 29, 2021 at 6:42 AM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
> > Am 29.07.21 um 15:12 schrieb Michael Ellerman:
> > > Note this only works with GCC, clang does not support -ffixed-rN.
> >
> > Maybe the clang/LLVM build support folks (in CC) have an idea.
> 
> Right, we've had issues with these in the past.  Generally, we need to
> teach clang about which registers are valid for `N` so that it can
> diagnose invalid values ASAP.  This has to be done on a per arch basis
> in LLVM to steal the register from the register allocator.  For
> example, this was used previously for aarch64 (but removed from use in
> the kernel) and IIRC is used for m68k (which we're working to get
> builds online for).

In GCC, it is -ffixed-* (note: no "r").  The string is stripped of the
standard prefix for the target (for Power, none), and possibly of one
"%" or "#".  If the string is a recognised register name (or alternative
register name) for the target, that is used.  If not, and it is a
decimal number, then the internal GCC register of that number is used
(these numbers can differ from one GCC release to another, and in fact
we have changed the numbering for Power before -- but 0..31 have always
been the GPRs, and 32..63 have always been the FPRs).

The names for the Power registers are:
GPRs:
  0..31, or alternatively
  r0..r31
FPRs:
  0..31, or alternatively
  fr0..fr31, or alternatively
  vs0..vs31
VRs:
  0..31, or alternatively
  v0..v31, or alternatively
  vs32..vs63
CR fields:
  0..7, or alternatively
  cr0..cr7

(There are more, but changing the default calling convention for those
will not work anyway.  Also, some non-Linux configurations use different
names.)


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210730235554.GJ1583%40gate.crashing.org.
