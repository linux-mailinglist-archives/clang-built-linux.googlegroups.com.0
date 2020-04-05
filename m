Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBBVFVD2AKGQE5PA5FTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-f192.google.com (mail-lj1-f192.google.com [209.85.208.192])
	by mail.lfdr.de (Postfix) with ESMTPS id 6799319ECD0
	for <lists+clang-built-linux@lfdr.de>; Sun,  5 Apr 2020 19:16:55 +0200 (CEST)
Received: by mail-lj1-f192.google.com with SMTP id d8sf1521999ljg.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Apr 2020 10:16:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586107015; cv=pass;
        d=google.com; s=arc-20160816;
        b=MbAsBMde2ZSMgFS2KTt4BKjyFQK+CqdPst8NO8HDidUZdEaOvZuEtVkBSbwgOqseA5
         eWpWCsWLhmDaKegFTiAVM9gfFhSQUPyz3BaYch+VFZHJwCrAs+ppOgvMlaOWmAxQh/Fh
         o1DVfy/tzLd+uaQ63R9zqcWrVY1sy74DM3Gh4PfDXHL9/oKLhUCk7IOZ4J8PQ9hSDEqp
         tcLaXSWrujPE2Pwx8G3p6oCRt5jJNcoKyM9yPWGh4oMAcuUAodUgbAe3ZBYt+qGV1vPy
         V05RLygFKaq9v7DEgFMtWmxh0qdDp1FtZi+5nxfw2XKZIw+Cul5oFHtRb4DEM7UH38je
         VJpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:sender:date;
        bh=s83b9+lMXh+queb63ejQvIbI9OF8asBiW+gvQ/Jve/o=;
        b=eojfqLJvzjZYjwDHbiRrE/buyfqgArYlBJObjBvRHqSfW1HzDkrbIxTWpDzftqYL1d
         nYbHdDDdhniQgkAIjIcseLcJEQHcgIjmp6FE5iU8FaBe6FaVySxNRvYSVrwssYj71PQZ
         5MkJUan8nEjNmbUUeAvsRN87vE9LN8in/ogIvQetKQct/bR1cgyqY1bmst023jb2qzEl
         8UotH80lImvWQb25T4YODInfvwStMRStmV427yn/Lcb0PdnsAYfSHwe+w2LmBqV1pv9G
         e8PTcujChjUsNxbUF0IA+qnCjJsEToXwTDRUJ0zao1efNkI2pEmdCZXeo1tb+E7mtDIN
         xxDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s83b9+lMXh+queb63ejQvIbI9OF8asBiW+gvQ/Jve/o=;
        b=NzHLjwBKUT7X6NcEkq3iNfr7ufiTM7gV5G9FgcUeQHHhebb6M7JN//m829szthLUsK
         3AH2vJiqe0/bPLC0YOtEL8tYEfWnsZE6Y1f6j17Prvw1GQw20SF6GG3QVnKSgLs8FSsK
         mr/ok24EMH+o6rxkQATwC2/DFbGiktbnz/KTQ3YgYcAztRKNJ79PB/UTTejmTcnF27lU
         JoFPGC5Rtt+xX6I81wAqKsqrK8DqmJ+IK+WYeT4fy05UV7bwBvijxBL+g3UQtB1ZIis0
         3AcNUlZw8fjV6joMUfWmfyLu4TNksfuRYUO1d/Wo6lp6oDWYk5mz26dsTsyY8hEc/A4m
         C0Zw==
X-Gm-Message-State: AGi0PuYrLsgeyu/Wg7C1blfuDGUFQHHxFcsnUbrbLOE/IAgCWGQkwa6a
	w+7CgWxFffPj0EArmjUE9cE=
X-Google-Smtp-Source: APiQypL6/LU548Mhyz2Y0JdhwL+VVl6HeDrjR1R/JmA94jBiuD2RlDoMPkso7P8ZgUr6zFmut59v/A==
X-Received: by 2002:a05:6512:46a:: with SMTP id x10mr11015432lfd.193.1586107014770;
        Sun, 05 Apr 2020 10:16:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b706:: with SMTP id j6ls1927305ljo.11.gmail; Sun, 05 Apr
 2020 10:16:54 -0700 (PDT)
X-Received: by 2002:a2e:9b54:: with SMTP id o20mr10249736ljj.189.1586107014196;
        Sun, 05 Apr 2020 10:16:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586107014; cv=none;
        d=google.com; s=arc-20160816;
        b=sU0jDf5VcASk4ZP8d/Mno1tCFfyEUV8Qsb4IMwAxTaeXXYehuS/frYijZMKAFS3eEO
         bIcoIM/CLFtq24t/Dcalx83klhutzmh9ejQmfWJT1y2X5v1NvBwmE4uPOkgVS6bf7gXG
         J61VN1UzLdOPh7gNYQnnqyFha6j0QBuPe7OJXSxk/S6/UItJnS5DDxldlc453uh0SKQU
         XG14G2P74ujnfSv5T78N69eCtJL3H01VN2BWDN/uoD1JZ6yCa1WMQK+2Ejx8OH0N3MrT
         aGNXOiC08lFCnpYSnL0C/j76r3Snvayo23F5apSMcOfyVMsdnejW3ITY1QVu359AzCSJ
         TdBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :sender:date;
        bh=ULxU9OQbABALQfrntGVvXtudgxD5xGwtih1+Wnbr480=;
        b=eK/yamBllpJq/jRjlGxR9pW9lkARA1AiPRsy6oM8WFFkN7UXCmOYVN7nDIRFJM+bZv
         /T7IkY1zKtQtTA5GpF6/PkdMBsljm23w0Mn6+gczLFtfLOG9jK7mRlxQlwm7Hf5NCTQz
         xGgsptJSq19iAZAjmUUeFg0DMbAWdWlUNDF9/AT72rIR5XYBd44XxYtWf2ZM5Nww76Id
         dYyxzdrmtpEit50EpqOb90QepM1Hs1HQoZ3v4HCVm0gg34kNRyeFG3eV82uuByOM3iHc
         ygwqdeaL3caA8xrsNAuyHfnfwuyn1plVGK+UUiyy34L/6jXC1e/C8rb4hpqgELJLCMkv
         8Rng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id f25si94203lfc.3.2020.04.05.10.16.54
        for <clang-built-linux@googlegroups.com>;
        Sun, 05 Apr 2020 10:16:54 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23991372AbgDERQvZEzH1 (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Sun, 5 Apr 2020 19:16:51 +0200
Date: Sun, 5 Apr 2020 18:16:51 +0100 (BST)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Masahiro Yamada <masahiroy@kernel.org>
cc: linux-kbuild@vger.kernel.org, linux-mips@linux-mips.org,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Paul Burton <paulburton@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-mips@vger.kernel.org
Subject: Re: [PATCH] MIPS: fw: arc: add __weak to prom_meminit and
 prom_free_prom_memory
In-Reply-To: <20200405163052.18942-1-masahiroy@kernel.org>
Message-ID: <alpine.LFD.2.21.2004051813150.4156324@eddie.linux-mips.org>
References: <20200405163052.18942-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Mon, 6 Apr 2020, Masahiro Yamada wrote:

> As far as I understood, prom_meminit() in arch/mips/fw/arc/memory.c
> is overridden by the one in arch/mips/sgi-ip32/ip32-memory.c if
> CONFIG_SGI_IP32 is enabled.
> 
> The use of EXPORT_SYMBOL in static libraries potentially causes a
> problem for the llvm linker [1]. So, I want to forcibly link lib-y
> objects to vmlinux when CONFIG_MODULES=y.

 It looks to me like a bug in the linker in the handling of the EXTERN 
command.  Why not fix the linker instead?

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2004051813150.4156324%40eddie.linux-mips.org.
