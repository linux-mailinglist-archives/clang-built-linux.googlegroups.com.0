Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJ4C66AAMGQENFU5C6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2F431142E
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 23:05:28 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id n15sf6241076ljg.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 14:05:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612562727; cv=pass;
        d=google.com; s=arc-20160816;
        b=KoyWNZ1jqQiHYqop5B0WS3qG3gWDN/PJ4i7qF773GEJvSSG1IUDN83rk8NoqR/zNiY
         b3MGPgi41Fs3UmIZ0DXGDrzSUNh76ovyfoTezGbpHwBTZw//r0KC489R2mCeJmY9hxII
         0Etvu/XwKwPKROKDiR7HbM7k8cDbtnm3ezhogy52GK/HYz7Lpc1t5HhcTtNHjzcpkxlK
         r81c/GBMF/It/4daMP26jiOHVX26fSNxMuMiqkCsCsuBES7+4a8ViiwuGUC2jBA/cvF3
         b3u9ZQGtJDnL8bisMFRbQrY/rgWbMx6BzOA+1tC0jnZePkYilN8kGn6XtY9bRxo1mXx9
         kFLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zCH2X4kD+Vl/YtE5F77wOFaNConYghAECb/C/4vlUCs=;
        b=s/2oce2JjZcTpiWvnbz0JGHtUTQzIa0Aad9YFq1oUk6v+sLSwpiZKcheaP7qZU62P0
         XxOreuNFZK63c/ihgnOlYjILe4Vcky7eDi3ODwgZYJZgCMsmSk4tAtyt3dBpVlbCA7X6
         FnCOByyQexunwavHrmFjXpvyrHHPTG1G6fRqSs5srs1EmWsu/fHFv8Dli4bZQNM0BB/3
         QG+xjVKIgfCN61WMlSRoHTxfn8O6199ODIXvB57npvyrFhO8Qt93UDDGPM4tQfEi6IGc
         kv3Wa+pEKcoh9WJZxh7Hh2olAs9e3ge3JHrlv6vNZlPuueaLtSNn9oIsYmk7kbvRwDIr
         S/uQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bqFTieNL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zCH2X4kD+Vl/YtE5F77wOFaNConYghAECb/C/4vlUCs=;
        b=sNBhIcXW9iEHugmffpB5BFRfprb9dZlVDRdD/RAz3SuEfTxW9GU4P356AlghbDUdn4
         3SWqTBQmbtFC8FCnUPeGdVUgtFbjWNSO8Pe2DC4HzoJpAvleQWk4f4NdAcZCOC28S0OU
         auf2suCsnnTP0ZlUZ9BfrZJkeFDHRjiYp9oA8+Wi/RpbOeFSV1fRjZ1z5NjoT94/8Bb/
         RJX4UgyOLcxvbXct3nIAaJ89QQMUnEU+6ypLb8M0XGtDKX28keL7sefdK7nLUhWabuHg
         35T2iorHTB2AR8I7paHlx9/YwzjdbaSmWYRp1m5tsHXtSKfNsiedWmi+s+L/9xvXC2Sd
         aRuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zCH2X4kD+Vl/YtE5F77wOFaNConYghAECb/C/4vlUCs=;
        b=HzfvTULd5ICIJ9ZdESwtEHhWrvGa57ey6Eh8ppdS3y1qahRRWjq5DzB0vYfvPCkX+N
         +VzIqiiblSk8nhw5nzBgHHyGyPKclcUXhJz9fpXA+yjfL6pq/NRcz/9noJtpheP+lC/j
         I+9B82Z4pVNkFaloEWxSfKndbUiKNRpggU3/CnOo+PM80lqU6tCrJGFnD0RPoJkAqK0o
         FMHDid4RmZR8/82PKM/ZHWijdBNFk/kluVwQLvbt9laTvorbIF06n/TL8sMZMqg6wcSn
         CdsHhTegnRrc0TOI0/jznoumHKk6OC7QtkvOHFGhwcaLJo3VYBrirmLwq3ueMdlhHZ+p
         pqiQ==
X-Gm-Message-State: AOAM530b1EIayVBr4AtcUQOLJVZQzHGJjgusyPVDN9LNrvI5Jnt6mUjw
	n5Z3XDayoNWnqJ0BeissN+M=
X-Google-Smtp-Source: ABdhPJxoMISAcfej67JlrTYmvOyI4fj45lZHG8ESvoBZly7YCOqOQnRjh+9D6PrFFNMkDkwpzy/PHA==
X-Received: by 2002:a05:6512:224f:: with SMTP id i15mr3629836lfu.545.1612562727767;
        Fri, 05 Feb 2021 14:05:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1314:: with SMTP id u20ls1937923lja.9.gmail; Fri,
 05 Feb 2021 14:05:26 -0800 (PST)
X-Received: by 2002:a2e:585:: with SMTP id 127mr3822968ljf.131.1612562726850;
        Fri, 05 Feb 2021 14:05:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612562726; cv=none;
        d=google.com; s=arc-20160816;
        b=l3j2jVN2ALYYis+WTYxup0QgJcMIcywfmqrRuUvnuCHyPfBqTsAldpwCsXvDr5YQvO
         wfwcgQ2X/X6fcNaqbmliwbdkzm7oYG6t9io7PaUOZe4XHXNaaTC3KHNlIwk9xMjQXh1l
         PGj6WO0P5MwM5N2mg3PJgNqzcPbarK8qIndKSZzIElceMNZU40p56Mfc4tqayVTHXf7S
         4iKVN+BX4z8bpUXaCwh+Gz+Qp3uPb+ldmrNCjz8y+yD60etuR7XfOynkhJ54XKDSMDGF
         G0fyAIUaaZMyleHmSShqN6/JihIkfXODAdZqSSiU/ZuvzLvoC6p7G7swdFX1WJeLJYKF
         Yozw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zeFCuwPyZrQo30fqoMpBAnSm+mAPzDuy2Hx9cst86mA=;
        b=EBPRe+FKK8y0n26BrYOQQSVlLQwTJ1HOS/G1mQK4beSy6MI80rY50R7oXkEUCcOOxe
         KKoh/gMv7WlDKEFQH3pdPa4XNrYGovyXX5RUBGdOQST/6PRZGA+47a39GTCsCi9CPPsI
         UHfr15KUeAi96m9VbInxvaOEQpDbalJpjeIhigmggQQEzw+GpXrt8ifPmYWV7Nm0b38e
         RkWzxgtLA4TAWOdMWy8my7NmEQsO7960PteZHmHxdEcn7LVTa0OzYsnrpD7rLOYEjMyA
         5T0QCv2MUMCuiCkdLxKo3QBBJrxyMOCPF8cjnhuD/3gl30Vl2ijTx8tn+teJTHByZESC
         I01g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bqFTieNL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id l22si367512ljh.4.2021.02.05.14.05.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 14:05:26 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id v5so9843661lft.13
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 14:05:26 -0800 (PST)
X-Received: by 2002:ac2:5e90:: with SMTP id b16mr3477340lfq.122.1612562726417;
 Fri, 05 Feb 2021 14:05:26 -0800 (PST)
MIME-Version: 1.0
References: <CA+icZUUjb_71mWwWFMYN_OPZir2vStLq1kDY1O+JCFjtmEEBjA@mail.gmail.com>
 <20210205213651.GA16907@Ryzen-5-4500U.localdomain> <CAKwvOdk8vp5z71pQHG04REENSy15Z3DvY1MehS_GGVxnhXx_cg@mail.gmail.com>
 <20210205215531.GA8294@ubuntu-m3-large-x86>
In-Reply-To: <20210205215531.GA8294@ubuntu-m3-large-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Feb 2021 14:05:13 -0800
Message-ID: <CAKwvOdk51GZ9HtBCNUCKX4mp7NSHvKv_4i_DgtdKciHU6CfiSw@mail.gmail.com>
Subject: Re: Using GNU AS from a selfmade binutils v2.35.2
To: Nathan Chancellor <nathan@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bqFTieNL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
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

On Fri, Feb 5, 2021 at 1:55 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Fri, Feb 05, 2021 at 01:44:44PM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> > On Fri, Feb 5, 2021 at 1:37 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > >
> > > It is entirely possible that '--prefix=' should always be present though:
> > >
> > > diff --git a/Makefile b/Makefile
> > > index f5842126e89d..409822f45bfd 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -562,10 +562,10 @@ endif
> > >  ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
> > >  ifneq ($(CROSS_COMPILE),)
> > >  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> > > +endif
> > >  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> > >  CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> > >  GCC_TOOLCHAIN  := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
> > > -endif
> > >  ifneq ($(GCC_TOOLCHAIN),)
> > >  CLANG_FLAGS    += --gcc-toolchain=$(GCC_TOOLCHAIN)
> > >  endif
> >
> > I'm unsure. Consider the case where I'm building with `LLVM=1
> > LLVM_IAS=1 CROSS_COMPILE=aarch64-linux-gnu`, ie. no GNU binutils and
> > am cross compiling.  In that case, we should not be setting any
> > --prefix or --gcc-toolchain, and yet today we are.  Perhaps that is
> > orthogonal though?
>
> Yes, we could probably move the 'ifneq ($(LLVM_IAS),1)' block up because
> all other build tools should be called directly (really, just "$(LD)")
> but I do think that is orthogonal to the issue that is going on here.
>
> I am happy to send patches if you feel this is worthwhile.

It would be the capstone to hermetic builds, I suspect.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk51GZ9HtBCNUCKX4mp7NSHvKv_4i_DgtdKciHU6CfiSw%40mail.gmail.com.
