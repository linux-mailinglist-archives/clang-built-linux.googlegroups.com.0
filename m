Return-Path: <clang-built-linux+bncBC2ORX645YPRBN6UYX5AKGQEUNU3N4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D2E25CD3A
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:12:07 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id n11sf1412471ljc.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:12:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599171127; cv=pass;
        d=google.com; s=arc-20160816;
        b=CDJ+PUu7uJEag5Tt+o9xbgDlQESquziMwNFiFwBaeq0hvtGouGtB1E7DNIOjf0o8gI
         xZppOH5ZZd37zRuxccY1YTVImTSKzllQDJapSXGp4ZcOVfM5DBB7ByTD/jrAD++l4TkT
         wTkPWuWpGSWqEa4lN/B4hODkqQu/rqhZDeZMgLrOlb7WubpoUnE2p8aXSr/+55lcVQpr
         0wCliBL1WiCjfWEJPQi8eRGXjzvEHCRKNwrAKz3at9WtTF/obkbGWWvrhAqyNMCIzEFD
         CjrpuKZYKVvKczahnrLrutL9o13om4y5My7Yc4JzPgamffxCBwQYB+5RNiiMvavyGquP
         OS+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xj6qmk6a5bB4TGoYQjqs6bU03m+o0xVD3NDbsV8IcS8=;
        b=U4LRLdMg9ON0QCXr0EPjOSRfKvKAZc1hwOxkBj9H5EApLg36VRu65wZr9bxo6ZuCfO
         BvLexLtYugY3ab6y7y5rQ8NG5ULKDn43Cqiu3tuLTaHsZk+JZ6xcc2ooR/jOGNQLVkxo
         lb1vHakLG3JdKmn7VMZtuV8HeskgO3Qi+2EIEzs4mwJ/9ayYpeiyfnaqHt5hvGZOCKZE
         rqYS4SpdrtRha08FJD2TRkcVMfEtDaNKIRmb1vJQ8RyQkkqDlqwU9yfh6xkrDDhEESdv
         ipYgRV4z7cmee9ZiVX0RDblTKeWDHR1YuC3NpvwLS4wkeR3UYKkUEvt9fa7agqk/2jyZ
         j13Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bCIKEXnT;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xj6qmk6a5bB4TGoYQjqs6bU03m+o0xVD3NDbsV8IcS8=;
        b=LxWjaORpv75ZqAjsW+cSoZzO8EKYpATCzqnaNwikHhBZ4WaDzpfRpOgeho5V07u4Qs
         LyAhtCMv17WNJVARkvSTNTqYsyrBk5/1VzdxV3JuuL7qxSdhsIjX6Io01X8pKyJlwyma
         7agg2lZY0cM/IKZtox0BD8BForOZdFTNS2kNorE4OS50iNMW0xq0UdfbrW5cmz8eUneQ
         nGVDMlYL+p/s+GdMbWAmMfnXX/tQtfx73BGvZ0FxmbV08qd4A/Uu8eqMx6aAVz5A+ZoC
         QBAEtAXG9AbThCKQrm2ILhvLAwy4DB62+pm10qZBlPH6pwpP2wGKnsa+jfTn4KOK4iDC
         tJSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xj6qmk6a5bB4TGoYQjqs6bU03m+o0xVD3NDbsV8IcS8=;
        b=n7NDNWQqi/dwEiPRDVrHIaC7gO1M/oUgdmBT+AtS1GPPDrT3QibTCrnRI98P/nln9H
         DjXgLMqCRrfHOm4mLxx760ahVm5fW3gX0bcha06i4P9PbAkugDPqejbwpuIIl94xO4+E
         DlWczLuP0VmczLGezXGjxWkbNefnLKAs8A3P0wARtsTNEqj3kfGyAsz5F2QGpFskLDAr
         7W/4Ekb968Pilan1WRwLEKIR0m/MqugrX/no8T5gHAvd9jZtg7kQsWLcib9kzxa/kRHw
         2ItFDKLAuCCH31cw7kfV9SebOwwB/+jQzZO/xzDweZnNEv2/lB2pezT/hnyUBxnVJ46y
         IS6A==
X-Gm-Message-State: AOAM533kdUpsF+rrx/fqUjbDu9guCCQ+VIdRs4zPNGexLSpeqX10FlU0
	mbKUfsLluNdNLUZn/tSVYrc=
X-Google-Smtp-Source: ABdhPJy7gkpBrkqJbLi+Ii9KW+dOAdfzc8HV+BiQXPsZ4BdY4u2Ff0pWyEry/Z7KGyiBcqjjMq8a/A==
X-Received: by 2002:a2e:b8c8:: with SMTP id s8mr2425650ljp.127.1599171127489;
        Thu, 03 Sep 2020 15:12:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9a58:: with SMTP id k24ls1494243ljj.4.gmail; Thu, 03 Sep
 2020 15:12:06 -0700 (PDT)
X-Received: by 2002:a2e:8197:: with SMTP id e23mr2527241ljg.406.1599171126574;
        Thu, 03 Sep 2020 15:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599171126; cv=none;
        d=google.com; s=arc-20160816;
        b=FIUyd2EMH0yme4fEvOFsYeLqoCgYzipHUmZZ78mDQ4KhxgISbW5FuZ7Khea9e/0SKX
         +cqe1qqJC1cEKtJur1/OTbKgiVhWykbHE08gRcUJQCFppubgjBdOWEDzGK6V5x7wV906
         UaRmdA5UomPkZQImhN4j9GmFWXhLJcxhAyngC4tnN4/JyBL6gzY4Ezr0bqK2PmmYuR36
         k9K58jkE61mLTTgKcSr9OHXfjUOWZjrSjkhtPm1iL0BnFuOAHE+wjdcMM53qZGWvxeC6
         yUxsvktC+/CHxIbb3ycq7MFed68WoeHJIa2DddDAhO/fJ/R4eg5AFhnADQn9hLYdBNz1
         ufKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BwuEtmyXe7F2cR0q4/BzPn1A0ke23BiGgvDQhdo0WMU=;
        b=1FTFKYKFmdK1BCcpV14lBQ1C+2UFv/NRXhRQ4PrZy7xW/evpig36iPEYsKnbkCGt7I
         Q9FsvMpn7ye8XFV0QnSc0UcKfVhtJV6nBAzzlHKe0hrnM3fSYFynXqWFRCFJfNaRNRO+
         MlRYQOdX9qNfNFhpZhCnelmu97mLJ5fzZ/BlJ7NTlhK2Ckig8jXRvlKBnGcckeaRzKYe
         zkhqAAyTqH1xZx3WngQzDg7knaa8kKJ6QSBNjRReNwm6rCZ0j/vftqayHUNAH9Y0SWgl
         0vigHHrym8fu8f/+l3N9f6uESms8CwEHRSvyRdv3tu11x69Qi/7Jy+dQRxusWRxb/sDG
         +EPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bCIKEXnT;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id f12si186595lfs.1.2020.09.03.15.12.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:12:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id i26so5920283ejb.12
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:12:06 -0700 (PDT)
X-Received: by 2002:a17:906:7492:: with SMTP id e18mr4301672ejl.375.1599171125797;
 Thu, 03 Sep 2020 15:12:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com> <20200903203053.3411268-9-samitolvanen@google.com>
 <202009031456.C058EC4@keescook>
In-Reply-To: <202009031456.C058EC4@keescook>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Sep 2020 15:11:54 -0700
Message-ID: <CABCJKufxq2b0854MBA_Kkb0B1k5D1Z431a=m=w2zoOVUh2c==Q@mail.gmail.com>
Subject: Re: [PATCH v2 08/28] x86, build: use objtool mcount
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bCIKEXnT;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::644
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

On Thu, Sep 3, 2020 at 2:58 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Sep 03, 2020 at 01:30:33PM -0700, Sami Tolvanen wrote:
> > Select HAVE_OBJTOOL_MCOUNT if STACK_VALIDATION is selected to use
> > objtool to generate __mcount_loc sections for dynamic ftrace with
> > Clang and gcc <5.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
>
> Am I right to understand that this fixes mcount for Clang generally
> (i.e. it's not _strictly_ related to LTO, though LTO depends on this
> change)?

No, this works fine with Clang when LTO is disabled, because
recordmcount ignores files named "ftrace.o". However, with LTO, we
process vmlinux.o instead, so we need a different method of ignoring
__fentry__ relocations that are not calls.

In v1, I used a function attribute to whitelist functions that refer
to __fentry__, but as Peter pointed out back then, objtool already
knows where the call sites are, so using it to generate __mcount_loc
is cleaner.

> And does this mean mcount was working for gcc < 5?

Yes. I should have been clearer in the commit message. The reason I
mentioned gcc <5 is that later gcc versions support -mrecord-mcount,
which means they don't need an external tool for generating
__mcount_loc anymore.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufxq2b0854MBA_Kkb0B1k5D1Z431a%3Dm%3Dw2zoOVUh2c%3D%3DQ%40mail.gmail.com.
