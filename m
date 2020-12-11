Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZUYZ77AKGQEJWEGX5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 772C52D7F92
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 20:45:43 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id b35sf7228189pgl.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 11:45:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607715942; cv=pass;
        d=google.com; s=arc-20160816;
        b=zBN/RbkzPXmZ/9PWFx1PL4yZZ55EGDgB3ovFdzclyU+rcxIKFhFfA7hxu122Nkjggd
         mQ2e4zxuBGLiA1P0NXfJ+X6o18DixqgfXlKlhizvDgsFS+ZOsDLRHx/ZPeAfEPIPkGuv
         e66jXibDSGwVaWhZaX72cHop8f59uSmvwuVZvEs1NHklR/tgkFfgxxG26pXuyMDuyLeF
         jD+F2oOdabUq0835Ey+/35UhbKug0A89dukcaeSe2c5L2oFYfL/4ySUOPJ8XMwMzfVp9
         fTH7CEzA/+0nFDbDPw0Vp+wsooteVXIW9M+xuwU34eDuuPcNwaPpjbrLr3UYEx2UvTxn
         jD+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=XZk+A05HQ0jJH7WDOMo4hIsSYftjKX0bFx47lJqdReM=;
        b=B2SmdmrJgD06VcQzRmBYknb2+olaxl3dXeU6WG8zrFuksO6cacInW2BytIzzaQvin0
         sCv5a5dD2E6XS0DfKiNLV2o3PDhI3zG924jr7H+5yUozC1kL5W2klmjzlXIIl2IIJ+MU
         AqS09U6mee1zI6Agq8IKaA7HM95JVCywv/ZfmkpwYWJrroI0cVt0vdwwdTfSNSzx4aGM
         sRcrvY67J8EgUU/qPix2ckqEgkgBjDsX+ysZTugPy3/hyaLq4Tk2sx695dJlkFlPmjVR
         Yy1xeK2R72TDaPdxf1Kbs8IVtNrwccieQn0dEdhHXk5rPT+kI4pdVFTC+icxGklLFz+L
         RZHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j6wtErhe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XZk+A05HQ0jJH7WDOMo4hIsSYftjKX0bFx47lJqdReM=;
        b=SQo4AjSIygvaHyFLmni/iJ22FMsnBbztigCYWY17VMQJctQUa83Oa7/nX7RTnWyux4
         k338obXGf54jupV92ueqe2zS4s6q1doSycz/OOKXMmECI0i4oAVveJ8Cyq6Qh8r+e9uN
         XHE108eU62ilVWgo3ILSfQ5Lc6w7fksc5rA1jgKWnE2gTLbfQihA2oy7aM5s2SVOFWjF
         Il25DSTKVyMSZHQ+LOx3d2WBHvT4IvZqa2A0C78ByETkNaH6wSgEZfcMJERueRmatRH0
         4IgER7Qj6o4lCPSnbRzQg0TBIJa8PJYfjyq9AgVlrsMgZWInmWb0kZphYG8CdcmsCIMu
         4zow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XZk+A05HQ0jJH7WDOMo4hIsSYftjKX0bFx47lJqdReM=;
        b=cDShHeNVhbJVKicDMijBu87x554okalPgkuF1ZjfFnJ8rEaOR35SJtR2OvEj+W9xQz
         rKEqxCSjVZ5X86KUx9ttV2LYP7GrvUuYAlqpQz52T2rVt9g3Huno9DnzFpiRnK9V1+YP
         Asx2tdVluiIEkLUVPzpObfrJ9wfj/37cXOrvIMfCTxud9ME2WOmaPcHfn7a6HMJDa2PS
         xf6Y0NkaiwG7/m6067TzhpTBDXgV8A7n/xZ7+F0yEa5yK5+JYlPbJiTPe0gBg/cN+sKJ
         V3nVxExiW8UfD4LfDUzNoVbnclCKowUXDzeoRtTkqq70GYyBheUyB+TW5BHUBdPXCW3Q
         Smag==
X-Gm-Message-State: AOAM530wBIIsrJpqpbRS9qZiNv/Qbyw0ApN6s72rdiRBVl3V94ByJAWu
	2McJydd1ADIHtwnQlxWBO3U=
X-Google-Smtp-Source: ABdhPJwKsJmxUqZOLBCbQAdAXXYaxyfICAvtA71rtGh6IM0tvigpPsbHh8/dVXVunPpARGRXyWrz5A==
X-Received: by 2002:a63:4d12:: with SMTP id a18mr13273878pgb.17.1607715942146;
        Fri, 11 Dec 2020 11:45:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4947:: with SMTP id y7ls3922968pgk.3.gmail; Fri, 11 Dec
 2020 11:45:41 -0800 (PST)
X-Received: by 2002:a65:6109:: with SMTP id z9mr13449013pgu.190.1607715941562;
        Fri, 11 Dec 2020 11:45:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607715941; cv=none;
        d=google.com; s=arc-20160816;
        b=sInpnHQhDXyLS2VqRVtnEoogLo4lx7p6QYup6r8wKY3LTyccy0FbW8SW1zymypY9iP
         MVQ3T7fbxPt1MZ+DENP2J4AfoNODJOelgeAIFRTDGqa19tBXhEfuCSdRb3YDaO5vrzpI
         pKiJGFnOEZ8EjEuvzszwMBc24st5hV+iCTevVwO+rEigrew7C2CRitDQIS2GvhUMWIhL
         2WZEXKGAAfC9W52OCs+2gLnwZ5rGGre8q50MBubMr7WU5BB9sUVzdO+gE2pdBkXQoFyk
         0b914xL9+mwK62NWj3ornm0Uw1es2D39wA0uL4ibM5rR+a2gQq9ygXbZDBtywRHbSZBX
         kzOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/GVocl/rVAcj1v7+L3CkLflCJiE2AVxirIhrJAn4j9I=;
        b=b26Eqxz98WMfBTiHmLYLT1SNNAAhtdafCG9Y75eQD2Bc8nrAFhUybjEOflZciv8CEt
         /fBTbzKgbY9sv3pSCHuRGYa/FedBgWukGy7mBSEymElG5fth8WqWGvcPVhdBkVeycr11
         wfSu9nLSwkKUAi22ztXfv4pgKuKVRXsNvUOXfqBVKh9DMtXpOHvIBc7Ig+OUHyZIep+O
         pS6tSBnFBGkG33Pb4sf1uVinuaRCd4PHpEpVUblds404BOGfKCmN/bSRjoYgZVszhA/a
         m+DFZHaEQ1UNIvCwas+nvkYQlw3zz1BbaYt5Ls+1cJa6iJ1QQ3U/jCK4ohOFDaBOac4H
         Hf2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j6wtErhe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id t126si798561pgc.0.2020.12.11.11.45.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 11:45:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id w16so7819649pga.9
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 11:45:41 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id
 144-20020a6218960000b0290197491cbe38mr13208868pfy.15.1607715941064; Fri, 11
 Dec 2020 11:45:41 -0800 (PST)
MIME-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <20201211184633.3213045-7-samitolvanen@google.com> <202012111131.E41AFFCDB@keescook>
 <CABCJKueCJhwRL1T1k6EYpUy_-Rj85K98iz5FO6K+dZLY25z8_Q@mail.gmail.com>
In-Reply-To: <CABCJKueCJhwRL1T1k6EYpUy_-Rj85K98iz5FO6K+dZLY25z8_Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 11 Dec 2020 11:45:30 -0800
Message-ID: <CAKwvOdnBQiUeXCH9U9Cc3_4-UtC+jepV_-yD6usJRSMYjpNFrQ@mail.gmail.com>
Subject: Re: [PATCH v9 06/16] kbuild: lto: add a default list of used symbols
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=j6wtErhe;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Fri, Dec 11, 2020 at 11:40 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Fri, Dec 11, 2020 at 11:32 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Fri, Dec 11, 2020 at 10:46:23AM -0800, Sami Tolvanen wrote:
> > > --- /dev/null
> > > +++ b/scripts/lto-used-symbollist
> > > @@ -0,0 +1,5 @@
> > > +memcpy
> > > +memmove
> > > +memset
> > > +__stack_chk_fail
> > > +__stack_chk_guard
> > > --
> > > 2.29.2.576.ga3fc446d84-goog
> > >
> >
> > bikeshed: Should this filename use some kind of extension, like
> > lto-user-symbols.txt or .list, to make it more human-friendly?
>
> Sure, I can rename this in the next version. Does anyone have strong
> opinions about the name and/or extension?

.txt extension would be fine.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnBQiUeXCH9U9Cc3_4-UtC%2BjepV_-yD6usJRSMYjpNFrQ%40mail.gmail.com.
