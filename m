Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB6UZ7KCAMGQEBV2BX7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD48380C1F
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 16:45:16 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id o19-20020a170902e293b02900ef869214f9sf5164014plc.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 07:45:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621003515; cv=pass;
        d=google.com; s=arc-20160816;
        b=D2uQn4J6PWKcWJqETxzsZSd9R6ZxdN0i5TDUkTaw4HmqIHcmNvCcPSN9ccneunTEtB
         0F5vMTcTSraEFxqplM3K5Qnn9MbbSl6gQbMCmmpnb2R5mHI6mkDoT91wok6dbp6CDnuL
         88p3qFvZJnW7XiufHbDdpDIuNUt1AxZ3ZQd2xrxezcDbf772Nh/vZ9tkhlaoRsQLNbA3
         m8EPczRoipCTs8enL9aAvgGJ6nqssKEXhirNPBFo++NiMv0yE50qqjxZzG11L1VfXP0R
         CZM+/hKvpD8SSaSI7F5TO7jncZn/FjiYxkbrT/1DO43BP5dv5P7ogwImMk+DGziX1Cjw
         JUUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eJToIVZauurkGqAzjUfr0Bw5BOXAD19BO0N08QsbKzg=;
        b=BwDnquhJqO5p5R+5BjDSZwmHnf1a7JzbrCsTqvEBt0Hmz8tx/MOQ6Qp/sVnkHek8UD
         veOGquOx6Ay9sGR7Pza8rFCStj+BktKxxvBlLaCJv+7RCi8y/YkgWeQswltKmg0XJm5f
         AUehdzWxKBKUkmFwJDMMA8znkpYxMaCuhk+zD4AyNNaIsRumTNc7BrQe4giNXraIACkI
         LbWilqzb9i+QkR5jFbFO0+sXpHMfrmAhb1VQhM0l0MTa+QIenlt5awrjzAJZofy4TZp9
         2tcrP3p/sQjM1SQbl4edT7BoCjyt4PBqQtxL0a6Tc5/KOtWvNSzQxYA3JfEhX1BjSYZY
         kn8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cCh4rJ+j;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eJToIVZauurkGqAzjUfr0Bw5BOXAD19BO0N08QsbKzg=;
        b=Y6iCrqcq3u/3RqGSA1Itv+VlPSdT6e1BCD1k3Djy5u/LmcjqppZsdRVEMfo1LlqbDY
         F6YWo5SBZkU8QdSuO5Twi6Wvc0MmWf9+YbfrMKmDywWvJ/SFSzuUJphzW8a1QqMffxJt
         RnTIAPCXn4BcBJZr5HQnjHH54g0J6cFKO1M010hwte6AxgG9T15Pt2msYaMcHf0LA7kb
         C49qoFVw4SbLjZFydoYXg67DOmxSHkYtcNcI/vNcnjqjiwAaRYl0CBamgBFGyGuRBS2y
         cEL8b28T8QFOs/rwQ3ruzKpS7EWXIHcH7D8w3v9JZ/o+4eZefi3wEpPQ4Uqar/sOapIi
         Al/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eJToIVZauurkGqAzjUfr0Bw5BOXAD19BO0N08QsbKzg=;
        b=hLWXA3IAXP3rPHf2y49uY/Nx8CdDf12Zn8pXRbuAktL+DDo7B9gDX7t7Fkrr23URhO
         tsWq2dynfLCPHm+15bJBX9ceeaUN5bV8GV7GOsFL61VRrdxRBwF4nJhxzy1jZ8mjN764
         mD5JILieoVNMKXp/DxOAp2PqmMRAs9d/J4ATPBF30I4ur3rpG6beTZf7U3jw3bmgxmTQ
         pMAzfSNIDAotMkN9R3aTLA92M/wZsRsxvGIaDq6Fuw6Orq9f3p40WKii4um9zFZtjZgL
         ZKez2Ptc1ysVsSvFcIstB3Sc/3muMMdIoBviGRhuWuGGqXK0hrc4N7tEg3GQ6pb5sCV9
         q0Tg==
X-Gm-Message-State: AOAM532fJ3nDOVDXnHLcEp3fRhqE4wyXjqU6lBDhVSbQPtBXCwt9WSGi
	np1r5tg6VLv5rLMDJNnR5eA=
X-Google-Smtp-Source: ABdhPJzOePnTnKmVndiSjiYy0/eLWlngSezBwec+wML/iRLgW7jhk3jwNG131VWT/vm/I+8oD5VgAQ==
X-Received: by 2002:a65:584d:: with SMTP id s13mr46935737pgr.97.1621003514929;
        Fri, 14 May 2021 07:45:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:fb0e:: with SMTP id x14ls3852887pfm.10.gmail; Fri, 14
 May 2021 07:45:14 -0700 (PDT)
X-Received: by 2002:aa7:8186:0:b029:27d:edb:c65a with SMTP id g6-20020aa781860000b029027d0edbc65amr45589742pfi.68.1621003514172;
        Fri, 14 May 2021 07:45:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621003514; cv=none;
        d=google.com; s=arc-20160816;
        b=zhCoiN4Lvfv7g3w7mcbVhiM0zfatM2fTK2VL67K0BYxbeCCmFJXkZBHlL/TJBMLnT/
         DzXZmL4ExIr/WdRMoaEJZoINSaav/kJmS3VE5gJ8l8R/ACM77BlImnY1M9sAWnYlpRhw
         f1uAtyZWFA0fiC/55fuDUfPrxtX3rObVxcIQM1KzOFfayxc6lO+5DUjxOPt2hfGr5q0Y
         pUi7/N6+IaDShO9rmVVoIrqaQHXpMgmdD1MYYUiFx03g+Ru9ZBlhgu655G/QPg7SoTeI
         ndS8rchwohu9jFsL1WlSZ3fS6W9bjOs0WRQ4Wq0qqQ1A+mZnD9EJ+VltBqwpw88iXH96
         7ffg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a4ec9HrK4exLNdFoaRuR+1/fBbQJf79OPKrfXFd1y+Q=;
        b=HRoEOPJybqd05FaiNHXGKPg1JIog1a37iJwJI7p6ZOLN1jFo6vLr8Cl3CRkIM5jBUP
         EvrJi0ocLyzCD5tZlPxdx0MN2z1A7VUo1iMVdgvQNOHIC+8VfQ2mF3qWwL8I+ad9rS61
         ug5TfDYddn/87gG6nnJJhC3Q0oztNFqCjzSzi4H1g76aABK6VulJ4BOFAhlKUGlwHCnw
         vImgfFn3p9l2mGXIWsfEr1ONGywZSdjuBFE+1bCT+Oi/lj6N6JQf7TL99+G7aeXoUY3m
         OSI/NltfJUOVwQ/4ZdOoyUvGZtta8UWa5Ev0DLslwhmGupy/vJbd2ogGYhh3D321dzHG
         VAYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cCh4rJ+j;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com. [2607:f8b0:4864:20::233])
        by gmr-mx.google.com with ESMTPS id b9si732288pfd.3.2021.05.14.07.45.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 07:45:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::233 as permitted sender) client-ip=2607:f8b0:4864:20::233;
Received: by mail-oi1-x233.google.com with SMTP id j75so28604868oih.10
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 07:45:14 -0700 (PDT)
X-Received: by 2002:aca:408a:: with SMTP id n132mr34789902oia.70.1621003513688;
 Fri, 14 May 2021 07:45:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210514140015.2944744-1-arnd@kernel.org> <YJ6E1scEoTATEJav@kroah.com>
In-Reply-To: <YJ6E1scEoTATEJav@kroah.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 14 May 2021 16:45:01 +0200
Message-ID: <CANpmjNMgiVwNovVDASz1jrUFXOCaUY9SvC7hzbv2ix_CaaSvJA@mail.gmail.com>
Subject: Re: [PATCH] kcsan: fix debugfs initcall return type
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Dmitry Vyukov <dvyukov@google.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cCh4rJ+j;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::233 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Fri, 14 May 2021 at 16:10, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Fri, May 14, 2021 at 04:00:08PM +0200, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > clang points out that an initcall funciton should return an 'int':
> >
> > kernel/kcsan/debugfs.c:274:15: error: returning 'void' from a function with incompatible result type 'int'
> > late_initcall(kcsan_debugfs_init);
> > ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
> > include/linux/init.h:292:46: note: expanded from macro 'late_initcall'
> >  #define late_initcall(fn)               __define_initcall(fn, 7)
> >
> > Fixes: e36299efe7d7 ("kcsan, debugfs: Move debugfs file creation out of early init")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
[...]
> >
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Reviewed-by: Marco Elver <elver@google.com>

Thanks for catching this -- it boggles my mind why gcc nor clang
wouldn't warn about this by default...
Is this a new clang?

Paul, please also add a "Cc: stable <stable@vger.kernel.org>" because
e36299efe7d7 is, too.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMgiVwNovVDASz1jrUFXOCaUY9SvC7hzbv2ix_CaaSvJA%40mail.gmail.com.
