Return-Path: <clang-built-linux+bncBC2ORX645YPRBDVXVD6QKGQEUIXPQCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 463732ACEA1
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 05:48:15 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id z18sf7388347ioz.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 20:48:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604983694; cv=pass;
        d=google.com; s=arc-20160816;
        b=CJmECYMnz1hhQrsTNq0x9hi/Os0crRR6pKlnAIMHGQCx5A0lE/ZhJHETtnFmsQV48p
         6ZGpzxlO90X/40bcfDYP1GprfyDAgD9cEFdrHsIpFckb4UVStybur+NqpE0ogpljX6BY
         nnACCLZpsRxw0jMOhFUv2ljj5sgmKf5caF2knhFCViDNkmPfEVSpLcsqldJLtSnJ7n/7
         ga7td5Ak4xEat3Dl04i39xMCHSKKHQI9rh9KTqRRCKxN5B8QYDRJfMf2rirPaXJSuMvD
         39bLF4WTPcglcvfKHW5uepq7h/g+oZHYG5BkId52ihFrpBpfdCL6RsvIxyeZEQ4ec7j+
         wmQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mWPAF271ywiYwRIbj7KL2kqC7aqU56YmjlQNkDWsBp8=;
        b=b96qXlCNbmDNl5r+iHRTwvVosk1nuQXXd7x51aHGuSxqpppiF/L5tNF1TOdCPTC58V
         FKzn8nPUGv5vQeqYcox2hi1vq1oYCnC3EkpMQI65AajM+AGMDOKTtFEuUcwfh6viSbt7
         tkGxVc/Lq9S0D/CzMPQYcPQgWofLIyOTvBsGX9M9ow2XI24XSIbb258opp/WFb+G5/ky
         iqd0hOo8Vc97mysMOgQRBFmGnItw8umg2cFXyntSxzfNZXKnkDEe34VpKJC7vGzKmf7u
         gckaVYOhBszT040wAiZeyW7Zpvhw3BTrbiXPHI66tzepn7U6jwDOZRAlVT/ChrafjFM3
         q1Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=efHLQUtV;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mWPAF271ywiYwRIbj7KL2kqC7aqU56YmjlQNkDWsBp8=;
        b=Slwni/9LpxCnAF19HuUN7tMHqpnSmxNgMcWjNMFm52TKqAnes+0kewt8fSzJ8xmMJM
         gIw6LcyctndVpON32dL+xFB3mrpqV44KRC6kvZ2eUz4fJrl8LkzOIVHa9cLI9j16KXIV
         tAMxPoQgy+HspEPo0zutU7Mchd0zWlBijrKH+6tlJhvNV1NyYn9Mb7dw5dtTqsk/nfi0
         gAHylWnn5pqqEP0KpexTe9MVqRAD9BqaYzAzVDdVrNOirEA+O8es+dZJYkcW92W54ccv
         0L1qQ9if7bDJwZ77AdijclQKufK0GVQXP7JGGT2zEAAMfTVN+C5/ywirNwaBXXDhMjf8
         tWZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mWPAF271ywiYwRIbj7KL2kqC7aqU56YmjlQNkDWsBp8=;
        b=NUvI0tFdFH+/EwHrMh4FDo97JMnHoi9y3ikl65/0jq+oUJEgY7DH1IEk3mYgsiTncD
         QIZTKgMGcaoKNf4yBd03mYYTW+yW5plreKnlE8kAt5zOHPayNkg9RrLQ9LN0FFvkDe31
         KZZ/yJdnG2eyBNJGhEAiSWWy2zxeT5boQS6GG256Wa4c6qGi96Paq5dBYH/meovQESic
         aLe+T54/sUGfjknvirj921zVpX0MugTFK4S1uo/+rSiZ0EeTZeROBySOfFzfW2EUBSIr
         w+52utWFFjo0bD9PTE7Cm0LUKMlbmMpoVQB12loDhF/C43XNceJHfaeKdd0tkkCuk3q0
         GocQ==
X-Gm-Message-State: AOAM5327EQCzvCQL+OABvRzZWQLcZ/OlnuGLdo6YTrf+/6AELOAWHjdD
	tTr4G5qyY8X/XycYx5ZFTNI=
X-Google-Smtp-Source: ABdhPJwJH6YOB9hDT5TMRyLMTdNCZs4w06Py0C/QCYAauJ6+QYWJU46z5BxDv1sJl8OFG+h8ADJBfA==
X-Received: by 2002:a05:6602:5cd:: with SMTP id w13mr12388512iox.147.1604983694287;
        Mon, 09 Nov 2020 20:48:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:a981:: with SMTP id q1ls1210287jam.4.gmail; Mon, 09 Nov
 2020 20:48:13 -0800 (PST)
X-Received: by 2002:a02:c8c3:: with SMTP id q3mr3215349jao.81.1604983693892;
        Mon, 09 Nov 2020 20:48:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604983693; cv=none;
        d=google.com; s=arc-20160816;
        b=LCpD5kz7hxF4KB1Kw/jXWm90bHqvPuQDwn+JFBpDahuvqBBmGb2HGIyfBkAaM1/gSR
         cG9FiDlFUviARuFJyoMCi+7OR2pz0Y353Nnzrs1pLY3H8fFWAPYsFzdkIi1G+zoSACYs
         nEOM851NU7YO1rBNiLH9uIbXzt3M/gLi/3IiGaTTtB+yiKNHH3HFVJpQbowOVJcYliH6
         K/YtA1jjk/PC2OJIabC4tbUBrzHDMAOYvqP52YvfkmnsYT3TjAiEpGwNaWmwV1J6uwJm
         wp/HezbX5GbqJ8s5wt0SUAOsGZSVtmNKlBlZ+7Q5rHwfxl7wvEXJCG5Jip4sYeKe0vpi
         DoHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1LG6AI05ymINBvkr43QJrWhW6+Oh0OuOMO1LRwJumoQ=;
        b=CiKF8NHy+hKj5ReBvXRneJI/q6m0EIARudNgyXLtRlruusybi1jVD70ZCFPLs6FCQl
         HGU+7gjDeQeDIcysiFUTq8ir+7eGaeTbxzkFwzMteFB1rnMrOv5LO4YnBzAspcf9Sofu
         fGXRzB1jeA6QAOsjUC3z8fsE4OS8WBr66dWRcyg+2UXMRxMly4ZXRtpTJBQIJ/fY/cHn
         gOG5P6zrs+5WU9OLrTtUBNGtf/zcpY5SeP/HMdNBc3xruMs6Qgq1k96zsoSVGuuOiBow
         ZmGJp3FMuhpJ2TfgiylMYWbL2Zx9bUgNwDZbSURCo8KqFqZKU/AB+MYjVb0mGbNjbrMX
         H9HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=efHLQUtV;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com. [2607:f8b0:4864:20::943])
        by gmr-mx.google.com with ESMTPS id r20si740912ilg.1.2020.11.09.20.48.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 20:48:13 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) client-ip=2607:f8b0:4864:20::943;
Received: by mail-ua1-x943.google.com with SMTP id v16so3558428uat.9
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 20:48:13 -0800 (PST)
X-Received: by 2002:ab0:424:: with SMTP id 33mr8354135uav.33.1604983692991;
 Mon, 09 Nov 2020 20:48:12 -0800 (PST)
MIME-Version: 1.0
References: <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net> <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble> <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net> <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
 <20201023173617.GA3021099@google.com> <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
 <20201110022924.tekltjo25wtrao7z@treble>
In-Reply-To: <20201110022924.tekltjo25wtrao7z@treble>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Nov 2020 20:48:01 -0800
Message-ID: <CABCJKuc_-Sxj8HLajx4pKuBpU3AUdBtPv4uzQfMWqVHWwHS1iQ@mail.gmail.com>
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Jann Horn <jannh@google.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, kernel list <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=efHLQUtV;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943
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

On Mon, Nov 9, 2020 at 6:29 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> How would I recreate all these warnings?

You can reproduce all of these using a normal gcc build without any of
the LTO patches by running objtool check -arfld vmlinux.o. However,
with gcc you'll see even more warnings due to duplicate symbol names,
as Peter pointed out elsewhere in the thread, so I looked at only the
warnings that objtool also prints with LTO.

Note that the LTO series contains a patch to split noinstr validation
from --vmlinux, as we need to run objtool here even if
CONFIG_VMLINUX_VALIDATION isn't selected, so I have not looked at the
noinstr warnings. The latest LTO tree is available here:

https://github.com/samitolvanen/linux/commits/clang-lto

> Here's the patch for hopefully making the warnings more helpful:

Thanks, I'll give it a try.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuc_-Sxj8HLajx4pKuBpU3AUdBtPv4uzQfMWqVHWwHS1iQ%40mail.gmail.com.
