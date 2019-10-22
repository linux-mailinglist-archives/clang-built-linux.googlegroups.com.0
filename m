Return-Path: <clang-built-linux+bncBC2ORX645YPRBWFPXXWQKGQEXT2HBWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CCBE0C8C
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 21:26:17 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id a5sf14139420ybq.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 12:26:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571772376; cv=pass;
        d=google.com; s=arc-20160816;
        b=ANdgJtj/r2N9Wny7f1r89OZb4caCuC7GumuP469qF6mxDXrCMjYVGVRHaeghyfHQOV
         KXHDpqgI/7+I85zVRmWONMFbSbxugvYyMWqIzLIlUL2VTY9OVQqn/OjdyK5frfK0KdYk
         iqU5hYSbh6QDcMCrdrBfoYeFPmHxPBMuaXuo4Qn/pXZOJExKJxsKdH7N6PhTXVcb8XPN
         BwipwdYlA4SE5PqHq06k4R6xnMDSk5s0A+vT+8SU0faNe8GakEoj/9Ki5KbrBL6KUvHN
         HKGzDk3JVkPXrDq8as1vbXsFbveKExeW43vS7KV0haldB+wcxnbWiCOuJA8hGeMGHmh1
         m/eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nMdzNGurJvtDzHuWCq3DFPI7/WglUME/IxBr2M2xbOA=;
        b=xtpQ/4U8eXhsqgPSgTiajH3UdK02Vn2CIXt/XVTbHZsFBvBY0fLK8TpsKp2c6oNtA/
         Cd3pOjLeO3As1D1blsjFFHeWMGuggG1miLrGrsh11EmFKHWVAWQT4HIgri16rxlsyVLa
         DSGRPBiCaWbTGG33yAAtSy5PDyt/5HGic1Ko20fGlvb1bFHbn291yHKycr8s3Z6hpbd+
         awrXvq8Po9vkLLu94w0ieFlsBZ8aCtK++AkYPgGDi8LCopf5GbxRQN546fPi9oeC+nWR
         9lUWpNyYXd39oyijjM3kOCjgZDdqSgauFI2Q/BHB3/A+xRSfvdRI67Dnv8J+IGyQvpRZ
         8VYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BdV4+MNe;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nMdzNGurJvtDzHuWCq3DFPI7/WglUME/IxBr2M2xbOA=;
        b=gI7lljlcQ7SfcPJgozOt8ZELRgBzulfg7DiumjH1PWnmlCmG6c12/KMk6q7jWqgfTF
         LF3sShNxi6AYaItuKOw05h1mSdqDJrOkUBZ5Nrxc1uQK9qr9m2JM8XlcaxXHiFgH5hAN
         cXN0HAM3q69APBjdiOsrC1lwK2PurN44+qJXuR0Sav8nAbYZ9ityTib9GX+htKo7JyDz
         s9SDljMexD1vW6GY94MfvNLjiF+KYDLYtDPcLVS4sEYrTelwmyAHM82zlH82WpH8EDF4
         6jTestBSzgfjdU1SaPWkWHIX0/L0clJ0UgvzRlosx8rVRQU9WsV++ySOoMspzSLw6LWU
         ZTgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nMdzNGurJvtDzHuWCq3DFPI7/WglUME/IxBr2M2xbOA=;
        b=g4tcZzr7LZoVzf8Zh116Jp9mejmFGc6I1qocIWg4Yr/JFNO9K1TqJaGdCOYks8QGy+
         nrllfIYLEWKkDSa/kjY1m+UzkuIfCjMkIySCMwiUqzY94roQQZt5GluR53vYBUtwwZvJ
         3ejDo0CmkBF290sfHM2YbWJg8nBEAFIhqWG+REFi2fhd5KxOmIvVxTyu9patVepO657x
         FuM2XdepmBQ7b90kN8e0VvGC9WsJBIb6OWhTWjWgb09wnUuew6Gfu2qGRae1ct5BsZtl
         iiuCLZdW6OD1BToLphPq+BgCyulqBXmc+ITuRQh9wTMgXyIIT+sfq67CWyLhITI36jqp
         PXdg==
X-Gm-Message-State: APjAAAWPZWDQ8/niH8E3GYOx37Z443fco8m7eWJzOGHxYvlnNxBQCinR
	JY/Zb5F9TlzBT72Q2NGfBjs=
X-Google-Smtp-Source: APXvYqwut9dO0pGyWBZFZ9HG5XpYz6ITBomB29OFX94ty3z8/qbMjM0its0bE6zbe7cnOVkhDRn/fw==
X-Received: by 2002:a81:6288:: with SMTP id w130mr62815ywb.442.1571772376386;
        Tue, 22 Oct 2019 12:26:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d3cd:: with SMTP id e196ls2736881ybf.12.gmail; Tue, 22
 Oct 2019 12:26:15 -0700 (PDT)
X-Received: by 2002:a25:afd2:: with SMTP id d18mr3934330ybj.490.1571772375928;
        Tue, 22 Oct 2019 12:26:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571772375; cv=none;
        d=google.com; s=arc-20160816;
        b=YE6+sLtofo8nLayPzfZaF5AzO+vPmeDWtz8EHqccJDdKWd/o4vRUK0qs2UNE82tE9n
         LV2FIELaz7DT5OzThdkkRUDSoM3iHKCX1JDdCA/axPwFG9wWHRpX7e5gSuh48Ln/ScB2
         ZuNeWDFlM12brBOvhro+Rbo5+cI854injNRWhYytkQoF84tsSAkIYlIa+FlqOA5Up4Ly
         qNKPV3T0ZMg0ISztnypUF0VEWw0cHcLaoO7a2vuuXwTyclANRFKOk24JPsOlBGCst20E
         zMgxmuzY9T+8tx4ROwuTGK9/uO5wJDvEfo1tPbGZQKAaNXHWGpU6hfnizCYu4SyVma4h
         //dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NTGK4hML4ErU1yKOstvLOpiuT4DQy76v/C1+bofd9Cw=;
        b=yKXFkQ2pQuHKjCpO/xT3CfF+lTzBLhp6fzpN/SuChT6GFGqjIjQrIp191BFgRtVgiM
         WPDflPHMokOygAX9PRk9f45HDh2YWIXj2iO+zKXD4iAR7togaYiOk6+hXNUj4mkx7qXD
         CJxEZ5EiSuI7X5bgll3ILtQ+jrZpnCX0g/Hz+S2Gc8tjT2hV0GmJEW2JrM33wdfrDj0Z
         tBz7cTLUdODxD32xy6EB+IZYW1gp2FrK85kULYFYetsso308esVPfaZnDIUj5t1DQmqC
         oKiXeYb0jpk2tqG5oAUUC1RspBv9WwSTC3TbC5wT/7fOgS/1okfqBfinAbem4Vnud+rd
         v+8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BdV4+MNe;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id v135si754528ywa.0.2019.10.22.12.26.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 12:26:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Received: by mail-ua1-x942.google.com with SMTP id m21so5255072ual.13
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 12:26:15 -0700 (PDT)
X-Received: by 2002:ab0:5981:: with SMTP id g1mr2987226uad.98.1571772374889;
 Tue, 22 Oct 2019 12:26:14 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com> <20191022162826.GC699@lakrids.cambridge.arm.com>
In-Reply-To: <20191022162826.GC699@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 22 Oct 2019 12:26:02 -0700
Message-ID: <CABCJKudxvS9Eehr0dEFUR4H44K-PUULbjrh0i=pP_r5MGrKptA@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BdV4+MNe;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Oct 22, 2019 at 9:28 AM Mark Rutland <mark.rutland@arm.com> wrote:
> I think it would be preferable to follow the example of CC_FLAGS_FTRACE
> so that this can be filtered out, e.g.
>
> ifdef CONFIG_SHADOW_CALL_STACK
> CFLAGS_SCS := -fsanitize=shadow-call-stack
> KBUILD_CFLAGS += $(CFLAGS_SCS)
> export CC_FLAGS_SCS
> endif

Sure, SGTM.

> > +choice
> > +     prompt "Return-oriented programming (ROP) protection"
> > +     default ROP_PROTECTION_NONE
> > +     help
> > +       This option controls kernel protections against return-oriented
> > +       programming (ROP) attacks.
>
> Are we expecting more options here in future?

Yes, I believe we'd be interested in seeing PAC support too once
hardware is more readily available.

> I think it would be better to ./make that depend on !SHADOW_CALL_STACK, as
> it's plausible that we can add a different ROP protection mechanism that
> is compatible with kretprobes.

OK, I can change that and remove the choice. We can always add it back
when other alternatives are added.

> > +config SHADOW_CALL_STACK
> > +     bool "Clang Shadow Call Stack"
> > +     depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> > +     depends on CC_IS_CLANG && CLANG_VERSION >= 70000
>
> Is there a reason for an explicit version check rather than a
> CC_HAS_<feature> check? e.g. was this available but broken in prior
> versions of clang?

No, this feature was added in Clang 7. However,
-fsanitize=shadow-call-stack might require architecture-specific
flags, so a simple $(cc-option, -fsanitize=shadow-call-stack) in
arch/Kconfig is not going to work. I could add something like this to
arch/arm64/Kconfig though:

select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
...
config CC_HAVE_SHADOW_CALL_STACK
       def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)

And then drop CC_IS_CLANG and version check entirely. Thoughts?

> > +#define SCS_GFP                      (GFP_KERNEL | __GFP_ZERO)
>
> Normally GFP_ is a prefix. For consistency, GFP_SCS would be preferable.

Ack.

> > +extern unsigned long init_shadow_call_stack[];
>
> Do we need this exposed here? IIUC this is only assigned by assembly in
> arch code.

True, it's not needed.

> [...]
>
> > +void scs_set_init_magic(struct task_struct *tsk)
> > +{
> > +     scs_save(tsk);
> > +     scs_set_magic(tsk);
> > +     scs_load(tsk);
> > +}
>
> Can we initialize this at compile time instead?

We can. I'll change this and drop the function.


Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudxvS9Eehr0dEFUR4H44K-PUULbjrh0i%3DpP_r5MGrKptA%40mail.gmail.com.
