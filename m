Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHMEUXWAKGQES3RFLMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EF9BBE46
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 00:07:27 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id b2sf6409581oie.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Sep 2019 15:07:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569276446; cv=pass;
        d=google.com; s=arc-20160816;
        b=DuTagsjVAngQlZZt4CPI97MNtpcMNtficCMSJUbnM8wR76OX41WWUYheNfVWGoGKtw
         JPKi9UDR+KX+Trss8+WH2FfG4aAylMpxU3foV9OqiiR+uCb1+FU3Pacrx1AF1SZdO//1
         dpARXUoHRKGS00mZ6pX27kVUC7Sz5dF3vhX6QDTrJ1xetWqeDI/vvmkaMZvT3JfANO1y
         Tb5Kzlt5ac1u0qkF2zc0Q3lzHKkqJQ8bcK7Q9qlkZtu+PzInKixy50QcfCOsq3MNZf2N
         TflqVZWQmrBv8FbjT3gJJI8cUWasXCBz8ovYglPS8r3L3c2laqT00K8S5tqUmNeu34p0
         wlqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5z1U6960sIujHxLADD8OK65vMSI8M7IL8c50P9VXtK8=;
        b=ib1zFJQ0gwlN9i6Y8yl6P4MpYmN9r8ay/RmyguK4UCi79mO7xJNudMeZa/zKTCl313
         hZC71mE4g55X+Egzm8RyA4kS/ib75c9ED2OVe0JzP/S6/MidmxUaBy2JjO1YdFyHI9D2
         OS7fSPsdg8bZivsoMiCdDH/PC4QnJhaW52fxoR1HgG7hrISorGyNBzdUC1Xa+QKFZ5Qq
         uMn0qm03PBkqqz+iGOf5Q0niGOFuISc2+7oIWaWbeTnKya3QG/U9IjfAoernJlvDMX3p
         71nej4+mNvVzchB74tp3n7pznTuxJ0jLHyHlDo9lq6f/06T0rHAnRS2z8xdlX5lomkyz
         UBtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K+jaxj2X;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5z1U6960sIujHxLADD8OK65vMSI8M7IL8c50P9VXtK8=;
        b=C5QXdeqvZ8CYCec2/JuB+tbf44HDMaVCfNO4mT1R2td8ULMVPcg9v4u9d8gvOy/QqI
         g60wO7+PrpBJr1s5NYMU9YPV1r28V09nP7fZhjsxntUR4OnV7swqQKKalMOH7XGhDiZ2
         I28CIWHRaoQR9r+OUvHBrgmgp/JZ7GeG+vDrifTrUOMJ95Em7rrT6x2w0677FcgFboJE
         6X7LSnODLq4CdF8l64lRWxd0XP4WncTCzGFzhuPgyV49H5pAa6J4QwTTWdY3p/jZXOl/
         ePTzhKgR+J6hoW9vaHRhbe38nR9SO/TLrr02zIUI0Y2W+5PhlbiJGuyL9yhkEYtzfgMX
         j0Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5z1U6960sIujHxLADD8OK65vMSI8M7IL8c50P9VXtK8=;
        b=mcxpccNrkiKxK1AF2pgvGLkm2TiHgME6EhIFUyqhPEbmKq89qa2WKP4n6PBNvkeRLd
         aWZpR7gXlBghG0Lqz+9fIXerbWnYTj677UNz93uAsNSpTcEgC8i/0TcvMU58Jse6fPeA
         Vu5o9+W2EQ0tld9gEm2r7NmX7BQsWqeTC70YlKIr3hjZm/v/71orH3nJlDpDc008jifG
         YHEZ6Lhg1VGm4H2e+aV8lGN0gdRxwAreeY93ZPjxQKoqsILLXuXQ2nhX1o7IAE5f+3nJ
         YfA1YDOuhaSXKtNrQcKi7XCnXs92a21o4xjGRTNLlDcBVYNF82Tt8b7LGQz8cUrtXYyn
         g4Qw==
X-Gm-Message-State: APjAAAV7SOpKyebxLi33Sj6RMqP+7jCe2gEkTfISyVehmU9zFgeNHw1p
	i321fZL5gBlUy3bkZjAUw4U=
X-Google-Smtp-Source: APXvYqwjPt69LS1333TbE8ie0RG5ZDy3xs6aRUQY850KuEsI+2lW8NsZdKM6aF0ZGZ79KG3Qg3TVfw==
X-Received: by 2002:a9d:313:: with SMTP id 19mr422654otv.316.1569276445863;
        Mon, 23 Sep 2019 15:07:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4f98:: with SMTP id g24ls2138405oiy.12.gmail; Mon, 23
 Sep 2019 15:07:25 -0700 (PDT)
X-Received: by 2002:aca:b309:: with SMTP id c9mr2066826oif.12.1569276445655;
        Mon, 23 Sep 2019 15:07:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569276445; cv=none;
        d=google.com; s=arc-20160816;
        b=T/er0bm1U3uVlo8bsyoOKg+YkAsuVVDkAGKjZwoAIH9n2x1unV7VIK3uXdHk6ABkaN
         +65jZuExhdCP0wAbs34N0icNZkma/e5uFK5+8KV4nOXGh3ZTxmKrqx927DaAzvpKykyB
         r/XQSqkKC70ZRWtcvX8hSZZIDmP/UrtLq7hF8iyywzEjwV8eFeS5YLSdx/OanfWEjKLg
         UueGuxxrHt8xQaRMfqSlUitR//br50H0pcVSYaWcfn6zkWclgr2bc8ZDxHC9TWGmcv20
         /zD6r4jqH6oCKQHKEMiNGAE6ph5iRXnF/LXRycwWqeSNv9CZPERw8zuuVhTet4a6Vfdg
         cG2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2diU/S3ttsPJL07skRAlLasheuTaJLyuG6UizryUnNw=;
        b=Ij1wsU/NkmT6HKjANK1d5blAOKZqgTJtThZWDiY/djYWV7Fn9MLplWKlJRZ4OAyKxm
         9Ci1tMYHqm1FMv+mTd9MWX/bbjRFsj5dZSkR3Vm+/HwFZgs+eKj4+zAaFz33fcHnRfQ6
         HX5B4KA4HNJAQqaIcNsCs70x74cLdOxBPgqYu288akCZVgdQ91M6HORvJLQY2TjoviAI
         RiwdocT/Yb5vTS/wDPvLlWdQWtLFNQvvyrULARmbTkJNGuvGRv8mGX+lThudI3yIVt1Z
         9Y1et3b+vizJ9TX9R5yl03C5Y7HnLthpqsPLcPxchsyhafXffFWhM0qK/7ep6WpgWdTW
         GW1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K+jaxj2X;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id c67si608663oig.1.2019.09.23.15.07.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2019 15:07:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id y22so10038484pfr.3
        for <clang-built-linux@googlegroups.com>; Mon, 23 Sep 2019 15:07:25 -0700 (PDT)
X-Received: by 2002:a62:258:: with SMTP id 85mr1969618pfc.165.1569276444993;
 Mon, 23 Sep 2019 15:07:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190712085908.4146364-1-arnd@arndb.de> <20190712174142.GB127917@archlinux-threadripper>
 <CAKwvOdkhe=WMMTevMd7m_URjuOcjAkHc8zBibUD2_gX79U+p3g@mail.gmail.com>
In-Reply-To: <CAKwvOdkhe=WMMTevMd7m_URjuOcjAkHc8zBibUD2_gX79U+p3g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Sep 2019 15:07:13 -0700
Message-ID: <CAKwvOdka1bSOrS6t-L=J8AYWe-NzpxqvrpSiXPqRwnM9mBEL5w@mail.gmail.com>
Subject: Re: [PATCH] xen/trace: avoid clang warning on function pointers
To: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Jeremy Fitzhardinge <jeremy.fitzhardinge@citrix.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Mike Rapoport <rppt@linux.ibm.com>, 
	Petr Mladek <pmladek@suse.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=K+jaxj2X;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Mon, Sep 23, 2019 at 3:06 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> Steven, Ingo, would one of you mind picking up this fix, please?  See
> for multiple reports:
> https://github.com/ClangBuiltLinux/linux/issues/216

Sorry, https://github.com/ClangBuiltLinux/linux/issues/97 is the link.
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdka1bSOrS6t-L%3DJ8AYWe-NzpxqvrpSiXPqRwnM9mBEL5w%40mail.gmail.com.
