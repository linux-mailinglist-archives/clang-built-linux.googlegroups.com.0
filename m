Return-Path: <clang-built-linux+bncBDSZXKXZ3MMRBCVXQ2BAMGQED25V75Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E576B32DFBE
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 03:46:34 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id m71sf236187lfa.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 18:46:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614912394; cv=pass;
        d=google.com; s=arc-20160816;
        b=HvNbmTM2ycSO6SiwPMlcPHfSKm00+0rH8mJuU6wsxMuweob6RViVNtoFjtRh8o9eNu
         VogQ+UA8kwmdu4kKsfRHbiOwsjG/DUFj//20FrDB5BFMHCzQaksKNxbQ6TZut8J27owJ
         t1KqWbIArT5eGwTqyJgZ4T4VXJKJKa1UjhE8jqI4sIuZ5Qe7wnUv32u5zf5s/AmDemY5
         EH+tUQ5LdyfJ2YsVzLohH5mcvXH2tsfirMKR4KcpkuqYGKmMN7f2bttV7s8xu9eG8KwV
         YxDp7+PdTLLZmY3Rdl7L95GFkjSwxnA/3GOsImQ3haJnl20qeRp38QQoqHEddKITa4Zf
         LHPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PUK4Q/cl9Wd0hFozckY3naacAyUbvK0fDoH9n300nvY=;
        b=IysLQXfvxFNALfYZhMQC63yNcLzKXsi0HMEriJXpgiXvEeRB29TBFl3cZ6CVDzLQPf
         ZgUERNWbVEAvw4qsi1tVH8jsVAKTvfjEDbFgR44LR+Uj2N/g7djtwYmkwxpfr7x7i+jf
         jPbTJie4lCGMxqFg8A16CrUMYd98DWBKSrl9gZM2hsZeVZbF2Wz6Dv1Ge0Kz7wSOiEuB
         EhxKA3suBNhbiQaiVa6+K/G1e69xYGW7+7hOiaKKfYdEG+PHZu+lSMo2eesVbI4hOVsr
         m60Nc2x55iOa5ocWm8hw+XqgpSwyU5wOf0Ae5A+TGOkikAALfGgeuCdkNkM3PCDWejnA
         6lsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@orcam.me.uk designates 157.25.102.26 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PUK4Q/cl9Wd0hFozckY3naacAyUbvK0fDoH9n300nvY=;
        b=pKq9LmH9okxquBq2NsTe2EtEThYatu5shq0KtTruDVRTJJzF/eup2u129qHU2MKyCJ
         vlsXhuOKUjtHrHg2IKBsWOvr46rGNfZPOMoqGgJmhSOC2QboQdi//EwlmBlxAei1KIED
         cjgVFKiIjZBVq7KotwDiiQO8MBvnCov37by6D0dC4lXzwDzCezsH5xk1Un41R3w3IT2X
         hmYpJj3KhLFmg1Ey+FSY3EJ5X7WtFzkdQnHK7U+IyHByNOOEc2gEzYOxMPlwQZAChyHg
         aB982N7zSbo+F3tTs33E3CtWAuNPzhHC/lfcmSTya3ueAVamFA/N8CtapSC3lWawt1op
         bInw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PUK4Q/cl9Wd0hFozckY3naacAyUbvK0fDoH9n300nvY=;
        b=YYri0zg/8InoUfIR5QsA2Cz3VWZfPtB4hgMT0H9SdBBpF/OyjMQRzB76VwvHODykt4
         i2nWQTYtyzzpuKUzvYZgP9YBXFlwV64cqFgpSuMIv3uMcA1d3rMPW65VdptYwX05BYqQ
         29fYOJAorFDvEW+sVr64cmOB7LG+cJsefpgzfQViaQpLCaO2/RK9dxorK4QFDQMPq8qg
         HNv1oW9Y4kgsc7v/nROCuHbj4V+NfjSO9WJv0hLcwyFkjvw0yV1k6oht/Onn3zhOXi+E
         Tpsu/JppnBGcKj+NJTUpTdT0wVhjMdw/LbwKS5CLkNscayQqjdjGNYQlMf7j0m0DGR4X
         Xv7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Tcuu+yWy2qUsOAGwFmpeP9v+8/BNsMIYmZNcWzpUI+Uj3ov1+
	F2tlb4rR5JPgnLuzKIgFyRM=
X-Google-Smtp-Source: ABdhPJwp5bxWfyth0XS3H2Nl2WPVqgdCP82TAJbhPw7OV7ohoHoSHbFhCaZpRkbzsAmCeo7hjAuHYg==
X-Received: by 2002:ac2:5144:: with SMTP id q4mr4269638lfd.145.1614912394469;
        Thu, 04 Mar 2021 18:46:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ac46:: with SMTP id r6ls2618724lfc.2.gmail; Thu, 04 Mar
 2021 18:46:33 -0800 (PST)
X-Received: by 2002:a19:548:: with SMTP id 69mr4046763lff.465.1614912393409;
        Thu, 04 Mar 2021 18:46:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614912393; cv=none;
        d=google.com; s=arc-20160816;
        b=usIqChgFb71qC7IKcDxF5IJGXI23srKV6gRTXhhUXi9MF9To3RMiPe0ze0hgH06K2z
         jdUSP9UJ4kRU+m/se02K5a/kG902S8b0fIh5U2IEXJHfQ7GuLWT8VbKdOatBes63LJS9
         JZ8dKRfQQHEMrvt4yT6yZ7i4Lq0ePtTv8V7G4IfJrbDxq+PE1M+EDzUhjqarwIUsa2wi
         wsseIELUln2JG22WrFCq7Vh+LqfagBX24DxRY/iFL8etvivQypgWSDf3tmXcxdOFcX0Y
         OCNbi6cCMlmy5EhqCPz7x/T3moM04G3XkXXtBAzJ8n4tbYmgHQzurK1Iw3APK03e2j/9
         EPyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=tQ45I8gARg2pvYgbufs4Vn/iGSScr6tplVUhYau0QPA=;
        b=YiN6jHjBDEeQGLG+hvPH+9ApcFVue/tD4XQfoZ5Hf/UsC/iq3AbVQjgyJsDF+uYnE3
         JTvzMcG/ZPvGihVw2hShcWW6PuVHW48D4exBeYtYngoxUXLmJ/sKhbnaku3ubAikqbHz
         vJiBxveVLO6BR5O0Dv1M/ljPl66VPc3EWY1eVLHo9+QmYv2LMuOQ9CV3AlyDh5Im1Oi5
         eFHUwN9oJNbpM+0LztbaTo/VwfPY0UghyhbyBD65cry4YjkFWek1/6OFbVZfvWHAV/JT
         dbR8Y3OncYxlv0nzcyitF1OlhfMmoAUf90tNx5iCsZArJj0JmYH/9XkNkJHzWHHfN3mM
         8F9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@orcam.me.uk designates 157.25.102.26 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
Received: from angie.orcam.me.uk (angie.orcam.me.uk. [157.25.102.26])
        by gmr-mx.google.com with ESMTP id j12si49702lfg.8.2021.03.04.18.46.33
        for <clang-built-linux@googlegroups.com>;
        Thu, 04 Mar 2021 18:46:33 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of macro@orcam.me.uk designates 157.25.102.26 as permitted sender) client-ip=157.25.102.26;
Received: by angie.orcam.me.uk (Postfix, from userid 500)
	id 9FBF692009C; Fri,  5 Mar 2021 03:46:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by angie.orcam.me.uk (Postfix) with ESMTP id 9AAB592009B;
	Fri,  5 Mar 2021 03:46:31 +0100 (CET)
Date: Fri, 5 Mar 2021 03:46:31 +0100 (CET)
From: "Maciej W. Rozycki" <macro@orcam.me.uk>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
cc: Tiezhu Yang <yangtiezhu@loongson.cn>, 
    Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
    Nathan Chancellor <nathan@kernel.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, linux-mips@vger.kernel.org, 
    linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
    Xuefeng Li <lixuefeng@loongson.cn>
Subject: Re: [PATCH] MIPS: Add comment about CONFIG_MIPS32_O32 in
 loongson3_defconfig when build with Clang
In-Reply-To: <d4802e65-52a0-f927-3e7c-80044c5bba80@flygoat.com>
Message-ID: <alpine.DEB.2.21.2103050324151.51127@angie.orcam.me.uk>
References: <1614820544-10686-1-git-send-email-yangtiezhu@loongson.cn> <alpine.DEB.2.21.2103042356150.51127@angie.orcam.me.uk> <d4802e65-52a0-f927-3e7c-80044c5bba80@flygoat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@orcam.me.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@orcam.me.uk designates
 157.25.102.26 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
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

On Fri, 5 Mar 2021, Jiaxun Yang wrote:

> >   Huh?  Is that a joke?  From the o32 psABI's point of view a MIPS64 CPU is
> > exactly the same as a MIPS32 one (for whatever ISA revision), so there's
> > nothing to support there really other than the CPU/ISA name.
> 
> Clang treat MIPS32 as a different backend so we may need some extra effort....
> 
> TBH it is a toolchain issue and kernel workaround seems bogus.
> 
> From my point view we can "s/mips64r2/mips32r2" when doing syscall checks
> to workaround clang issue instead of disable it for kernel.

 I had something like this in mind, but obviously that has to be done in a 
consistent manner across all the possible 64-bit `-march=...' selections, 
as I suppose that is where the problem comes from.  So we'd have to handle 
things like say `octeon'.  But I'd like to see the invocation line to be 
sure (I could try and check that myself, but I don't have Clang and it's 
the patch submitter's job anyway to explain things and not the reviewer's 
to chase them).

 Maybe we could cheat and wire everything to a single setting so as to 
keep the hack to the minimum, but we need to know what the right setting 
is from the Clang people.

 NB only MIPS IV is special in that it has 32-bit extensions beyond MIPS 
III but not a corresponding 32-bit ISA.  The corresponding 32-bit ISA for 
MIPS III is MIPS II, and obviously all the modern MIPS ISAs come in pairs.  
So it's only MIPS IV where o32 may want special support (at the hardware 
level the ISA had the CP0.Status.XX bit to control the ISA extensions), 
and I guess only a few people care at this point, though some are present 
on this mailing list.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2103050324151.51127%40angie.orcam.me.uk.
