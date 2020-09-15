Return-Path: <clang-built-linux+bncBD66FMGZA4IKRZME7MCRUBCDBK2GU@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B4926AF99
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 23:31:21 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id 207sf4789608ybd.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 14:31:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600205480; cv=pass;
        d=google.com; s=arc-20160816;
        b=eDTqWuByHnRxBw/uvjbSmFV0rbSswlFc+Zh23yh+0qB86sVz193FFXBtHY8SDe7RCY
         NJGv157PaBwE7/S6LVBJGzyrQVtXGJJF4tf7vDm09S2q9rkw9B6LUsFXkQaWRyS6AwNE
         GPqoOzE8iPEfal7RfDFsGTvPv6qgUoQhaJE935FAb2ZLgc+348p38IFCG7TXi786A7Rm
         XSEOTTrVFG8G8V0D1343RBa2edsflUYqcpaO+hUzM2O4ca52W8oqXQVBvws9RCIWXmy8
         GBMQdJKl4kBaLyXmEamAWWI2AvKwfxkVD3QciuD80fKFinzkWLiwUb2XvMHAG+acJn/X
         08pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Lyjb4XpowHvo3lvP9Vl+rqETB8+9d0ZK+D0ChmHnOXQ=;
        b=092MPILUrbOfBT25dNeX4fpmZQzKGWpS6djC+ys2GjPVMCp/YA3zEyHDhvIu1Ivdxz
         yRaj/MlFQueIGs5bjafXVBz1Luc4j1TRHarbcDwgXt3CpFImJyRvA3ZhFfXloSraxe0i
         lPcob4hIFrnobqzwgknK2/cyn4P6H2sNuGT3P+ZJFxlzPudyDBIjNMmPC7j92snPF/pc
         4YvLeV1pXPBRBofxyrjVfvPdid2oiUme1kzPsvbkL4bEHx9rSEQmFxZRSqtwCiKYkX4t
         Ycy+Jtv3l6qsT2kBmr8ySwIm6D4Au4ZkgJIIxI7bs+k6F3DHEI1tiCpY7QxajRACFbVd
         Dm7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J6c70s4f;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lyjb4XpowHvo3lvP9Vl+rqETB8+9d0ZK+D0ChmHnOXQ=;
        b=Qw2VHrScpDZcGQRkvPzgWDRkrKS7m8abUbQRiLk2gAjLnYUt+4ul7i05IJa/tBUFYR
         eegWt1z4KvClCnbc6fPtHEOmKE0dFQZKTekxVi7iA/0AijqCCnsdWL7QIHCbRgeNjNk4
         9ooJKDXRTcRv3F1h+yVNbAA+i/V9v13wFfLlKE1s01JmNeHBxrC1KGJC/nDWyeHaQyZY
         WqBK4D9D0H4BfWrPU7/b0Gf98jDH271CZwXq4wWn5UgPqIUA24FST+y1BBWdG3XVcdiK
         +iMQHZCT78gBqp+x7x/5CO5sgEEe7dD5D/xqK4Ngl7dUkbWuTsI1RbJ/brmCLhPueRWC
         bjoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lyjb4XpowHvo3lvP9Vl+rqETB8+9d0ZK+D0ChmHnOXQ=;
        b=L6GXClgACdLHnDcy9MDjH9WBKSxfZH8pfru8B67XP8I5zz6ZM9U3F7sXFkgN+2YXkY
         HBUqMQLv+66xOWDNzJcxttCcNWPna4XiM8WRP0+U0fM364vf2Hu3ohEtvJK45/BKZIPQ
         sGdSFtCfvi3J2i2J+gQTNXvoIXvOCU/XUSEQMw/oMmw385TzwubIbKT7+8qVEjqbkR30
         nmODA4a9Bl2esjBqdhhi7AzoyhOT+xDl28S+aiPhmZQT2ohlhn8QPs1G4787ARdvkopC
         FzXmH1P9je37hoALsEQvJRlca5C6a+6T1NY/mt6XKqMfw7njz7pwe9WK1LW+9dE4sQyb
         IFUg==
X-Gm-Message-State: AOAM531gFzDR+luo2OBsv82zk4Ntiwnc3VO30xGYJ+qd3DyjgarEhBkD
	nmMB0ri0+JmrJ0mEpdtTAJs=
X-Google-Smtp-Source: ABdhPJw+wjMyxT/7K2xumfnuzHilUs5z88URE6X2+AH8HJlXWBHOh22r1RB4CoWDpEB9/kzfU3GI1g==
X-Received: by 2002:a25:868c:: with SMTP id z12mr15540449ybk.195.1600205480182;
        Tue, 15 Sep 2020 14:31:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5:: with SMTP id 5ls8019yba.1.gmail; Tue, 15 Sep 2020
 14:31:19 -0700 (PDT)
X-Received: by 2002:a5b:501:: with SMTP id o1mr32420871ybp.447.1600205479698;
        Tue, 15 Sep 2020 14:31:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600205479; cv=none;
        d=google.com; s=arc-20160816;
        b=0h7bZr3IWB6Kms5CXdL2ayKrGtRE91pYWAVaOGhQMswOqy/DFU1r86pWq5oH4FS6bE
         fz7F5r6ZKbEv8tzO7od//Pj/33XomkkDmG/efdHMm0ts2SJpVtbc4YQRElJn9+96PsAW
         XlpC3PGuWuVM51ZmBlfZS8xGSQkL+Q00zZDGL1poLumcP1l4BzeveW9bbvwjY7Ht7uNg
         htyujAMQXqWd6CigpImp2cV1qUpIajOUQ2d5I4eW+aCn9LzDLDv67oNpYctqv2NTcnxc
         xoNmVNkgilLbE/wyOWmK2jlfFvdW4eLyynSSAaXc9PIXTKntvQluQwZBPVnLEe7hiVDe
         Yk4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dFv9Gx6tvlxqa0/RzOqnD6QC+ix0oiRzcNzkhnH/umg=;
        b=a174TDRI56vBk2f8wUXmeTW8d45WtZcbm7aV8uaoKoh9OooEGC3wQxYeJQhbno+aox
         GIpoG5F3P/+joeBwhi+xOgRz1+SY1aG6FlbD+n2TNSvTvDj6Y8Zi243eyl7PjVyF1mOC
         VfbqY8EwPDlCiF+zzB4XA4bWEv2C2JEi2dPCvEgVxZXeZvQa5CEI9fp9gijQAb+Woy0g
         XOnX91Y4OK/4c3Ezzfaz+QMx8+s7xRWT0HZ3MUDFYvIFJAHdpH7yFHj4aHz9QZvPvbgY
         iPhVz58YJDpBf0qEVpe3emVdKV/KbqnpYYzdqa9tfv+UPG7OB53aPxkVxQkqygvTfv7/
         ATfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J6c70s4f;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id s69si438312ybc.4.2020.09.15.14.31.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 14:31:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id e14so2766025vsa.9
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 14:31:19 -0700 (PDT)
X-Received: by 2002:a67:e248:: with SMTP id w8mr2932477vse.40.1600205479121;
 Tue, 15 Sep 2020 14:31:19 -0700 (PDT)
MIME-Version: 1.0
References: <9f513eef618b6e72a088cc8b2787496f190d1c2d.1600203307.git.luto@kernel.org>
 <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 14:31:07 -0700
Message-ID: <CAGG=3QUfqup=Uv1mdwe6qecsZFAqfZUxXX+a+CnJLvfufWUykA@mail.gmail.com>
Subject: Re: [PATCH] x86/smap: Fix the smap_save() asm
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andy Lutomirski <luto@kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Greg Thelen <gthelen@google.com>, John Sperbeck <jsperbeck@google.com>, 
	"# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=J6c70s4f;       spf=pass
 (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e42 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Tue, Sep 15, 2020 at 2:24 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> On Tue, Sep 15, 2020 at 1:56 PM Andy Lutomirski <luto@kernel.org> wrote:
> > Fixes: e74deb11931f ("x86/uaccess: Introduce user_access_{save,restore}()")
> > Cc: stable@vger.kernel.org
> > Reported-by: Bill Wendling <morbo@google.com> # I think
>
> LOL, yes, the comment can be dropped...though I guess someone else may
> have reported the problem to Bill?
>
I found this instance, but not the general issue. :-)

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QUfqup%3DUv1mdwe6qecsZFAqfZUxXX%2Ba%2BCnJLvfufWUykA%40mail.gmail.com.
