Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBHWMWCDQMGQENA6OI5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FDC3C5B38
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 13:23:12 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id i24-20020a9d62580000b0290464ba1bb21esf13036654otk.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 04:23:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626088991; cv=pass;
        d=google.com; s=arc-20160816;
        b=nhzFfoyrqXkzigFBUigj/hLAId6bJsPyrPmqAJQjTOLcFbsrFrP4mUD7CD7B24eETp
         Fisj4A+UgP3FV+ESGYaZGfaMunlmb5/TPlcu1ytoH7nlxhqeYamBXHsSK8cXT3Z/Yw9h
         mANdy/y876iNMckMX95lHks4bS02ZgdveEVe8mFmUpqYvVBjhfxB4u7elpTew2H/7qxY
         lg9pLEO64aa0TE1b/Hf1hyB3AIYE8vv8Ie/NycLuc7lkK+nUe9cj0k1CfVxoFy7ssf7H
         ijpqeqF77XG5tSipvTWgiT086Wmo6D0nouANqYVcCOF2+t/BvvF0JuKqjpz2tro4NODM
         IElQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=6YZ2LzefnQZNszzaUBybJEXq4xLRfwvLpfi2R0HYo2s=;
        b=SwjDF3deniVY4/LaOhHvgQJxcrnfpzbSc6AkkJJFB8wIejNaPQXDtWRW05RX2JcwgJ
         kR1kHmsMfyTng8etuOSYQTcKUMmPlLnX1sTug+ElCo95++r2FMsJaW65dZHl4I1LVHlw
         INTfxUprl+U0lE8JD+f935irRMiUdXDfS88YvBplVYM/O1HFSa1nlstLVSd6sTx8R14Z
         8QmelWfGgVNX2tKrq686SALkTD72iqNiR56rv6ZCmaKncSDhT8KPYtGhmRG2d/XghWP5
         y4pMY0A3fLZd+lScIEXgdWFaWy1kHFIuc4KvpkDeDYUqXBixniEi1lBnGtHXaF/QyCEx
         AVWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s1ps5tGe;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6YZ2LzefnQZNszzaUBybJEXq4xLRfwvLpfi2R0HYo2s=;
        b=PFElSR2RkyMwuyo/4i//mCG6TnmIzEa9B/HvgLLOqBu/vcLSast4ojL9vFqy8Ed76H
         tzupVFf5RdCPPM7R4nBkNqN2wz3TFDJqFKPQ0SMWgqGEiynjdt71uoo7XrjlZreVCJgG
         22VRobqPs2jw9GNLLlRVeCqkw6WtaJEicMw6qMd7JpOhAP2GrAIVlsir4kFOZs+7lRjw
         BqqYnaDBgpF5WoF1LO0oBDI4AihsIAteqdoNC0laKcJhvHhf20348d7zrTZvtt98J4pt
         eXLaJokWRehT6qhrdO3m5c39VkVo8S6/WNhLKRuoit2MY44AshyNqacMG4m4Jm1QQeVm
         xTMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6YZ2LzefnQZNszzaUBybJEXq4xLRfwvLpfi2R0HYo2s=;
        b=qrDpCQdlo2Z5k30O06CfihdGPt4SO/y+5H8Hlfqu8kBnjaTY1V4qVYmrZpPFzzi/wv
         9nCRScRzh0+AF6gyNwkDFvmwOPLvI61Ux3gpLs1LYdRwdAqemol/poljqVVOtyleKzJb
         RN/bZN+EI4cNIyrQJAMO0LWW4f1WYh0HCWF+Ql4PiXjdVIKgaZlGzWjEONzKNxKm/oyN
         ISqPjoich/DkUxsfnYcwGU2f9LKDdtuXcLfN+II8UqID5+rxxfj8oHDvjBczZaMqk/L4
         vLq3s4L/IdrF+m7QgT///pxu0YAqdnvsljAY0ISt+7eMsyyvrzRVy60ngiZwhc4fbabZ
         oPvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6YZ2LzefnQZNszzaUBybJEXq4xLRfwvLpfi2R0HYo2s=;
        b=BPSau2Am46yoHgIrZg6KXUVNBSbDWgvI20yLge/0l7u2R42JEabx04RU6/gZmgj7Zx
         lXPpOjyh3SF3uVav8icrIqUf3h7nHmeHdLQcjALxx3Igig/Rh0IUMziaRWohGPxmW17U
         4xhvhFShJMPYpYKIS1aB2QgjFzb9/ZS/Zr2T+nrHOp1vk9oe/65/ZMINQtftIBBz6YQL
         iFMK+mvt8zS8Jh0bh6kMNe1BA+A9NnqrZtGLg4y/8SXgY6R5hQUV8G6DrKoC/yVKTxKi
         F/rmimd74/12vgu3r8VJlc+QsyMilispuZeJQUG+MqZbXyzKZRj8vHOZ8OgWghPqPg2e
         VgmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530p3Z/uj5dsKbV52Hn2G/cMReEFxBOG4tRMGKYaz26i6deuWp2e
	qnLAe7vqbrLnsxuDzn/U/7Y=
X-Google-Smtp-Source: ABdhPJzOD+SCC2b6OSUYi+pXIbyib2A3h5y0Sxzx5x7pQIYQlHzt4l5ApqmuugxGKAVPCM0Ld4RDYA==
X-Received: by 2002:a05:6830:1f2b:: with SMTP id e11mr40732737oth.336.1626088990743;
        Mon, 12 Jul 2021 04:23:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:edd2:: with SMTP id l201ls3107187oih.5.gmail; Mon, 12
 Jul 2021 04:23:10 -0700 (PDT)
X-Received: by 2002:aca:abd0:: with SMTP id u199mr33621010oie.125.1626088990402;
        Mon, 12 Jul 2021 04:23:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626088990; cv=none;
        d=google.com; s=arc-20160816;
        b=fim72ZQ+QPBfGahXqKgaohT5hMpWsTR9Z2EfIV/UF8LkdM5fPTsoNt5X2O2JrOxH26
         ASaiTnbPt/p9tYmdO2Rtt1EtlMDEHD1z4WObE+PfxXWwPWUtt0H0XmGMoUEnwPLT0yy6
         DG8w4aEpSXJSx9LGmTH5VsTZ4yWjStAv6o3vnF6Ft6Ayo9/omT+oDxjuIAosSBe1Phqp
         /PgRKCoaGcExtGWeymvRnxGdrLAQZFFMJhIzw/yHDxzrROm5xIkautQNSynxT6mNqtJX
         p08SJwiEddPekI9lwAb5eWvsi6lQOUZu0RxbAoGNbYIJ/gaQ7exbqgdODVab46XdgluA
         WW4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kt2AGmYUjTDZkmm8PzAzZyi3di7YXnW8FBFskgtoS3g=;
        b=A0lRrRndlAphiDoWhjGQe+O/YWuVWUtKZQqzaEyw/LsRPUOda1LeYfFcAyOAhWJ29o
         t4VvXiiP96gsnKhnRAJnDBJllntHYMu5zZ62Y7La63Chke9zGcTNV5E6PLXN7I0a1CxM
         3m1xXC+soEODKn5ELxzDsxHaw/7e6J3IIh8ODvrwlyIYmxsYAkhsKGH46p5kPADIGOyH
         IjZdjsF1Klr9s+fYc0HT26yhaLke4M0gsYFt12P5efxg8TJuzUqxedANMh8eR2kUdmMW
         vpeegor1vtis41KJODW19jYV2tP8VgwO/eXI4WfXReswTIbRsCetiwl8n2Q6UJghHweq
         afyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s1ps5tGe;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id h17si950764otl.0.2021.07.12.04.23.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jul 2021 04:23:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id v18-20020a17090ac912b0290173b9578f1cso1457306pjt.0
        for <clang-built-linux@googlegroups.com>; Mon, 12 Jul 2021 04:23:10 -0700 (PDT)
X-Received: by 2002:a17:902:b08e:b029:129:a9a8:6dbb with SMTP id
 p14-20020a170902b08eb0290129a9a86dbbmr29438350plr.21.1626088989908; Mon, 12
 Jul 2021 04:23:09 -0700 (PDT)
MIME-Version: 1.0
References: <202107121816.wo6I99CS-lkp@intel.com>
In-Reply-To: <202107121816.wo6I99CS-lkp@intel.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 12 Jul 2021 14:22:30 +0300
Message-ID: <CAHp75Vc53u=Rgawnwn3nGCBn9Vqd24Z7fSkBiC35rzbC=VGKiQ@mail.gmail.com>
Subject: Re: [gustavoars-linux:for-next/kspp 5/5] kernel/debug/gdbstub.c:1049:4:
 warning: fallthrough annotation in unreachable code
To: kernel test robot <lkp@intel.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>, LKML <linux-kernel@vger.kernel.org>, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=s1ps5tGe;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jul 12, 2021 at 2:11 PM kernel test robot <lkp@intel.com> wrote:


> All warnings (new ones prefixed by >>):
>
> >> kernel/debug/gdbstub.c:1049:4: warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]
>                            fallthrough;
>                            ^
>    include/linux/compiler_attributes.h:210:41: note: expanded from macro 'fallthrough'
>    # define fallthrough                    __attribute__((__fallthrough__))
>                                            ^
>    1 warning generated.

> 53197fc4954924 Jason Wessel        2010-04-02  1039             case 'Z': /* Break point set */
> 53197fc4954924 Jason Wessel        2010-04-02  1040                     gdb_cmd_break(ks);
> 53197fc4954924 Jason Wessel        2010-04-02  1041                     break;
> dcc7871128e994 Jason Wessel        2010-05-20  1042  #ifdef CONFIG_KGDB_KDB
> dcc7871128e994 Jason Wessel        2010-05-20  1043             case '3': /* Escape into back into kdb */
> dcc7871128e994 Jason Wessel        2010-05-20  1044                     if (remcom_in_buffer[1] == '\0') {
> dcc7871128e994 Jason Wessel        2010-05-20  1045                             gdb_cmd_detachkill(ks);
> dcc7871128e994 Jason Wessel        2010-05-20  1046                             return DBG_PASS_EVENT;
> dcc7871128e994 Jason Wessel        2010-05-20  1047                     }
> dcc7871128e994 Jason Wessel        2010-05-20  1048  #endif
> df561f6688fef7 Gustavo A. R. Silva 2020-08-23 @1049                     fallthrough;

Obviously this should be inside ifdeffery. Easy to fix cases.

-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75Vc53u%3DRgawnwn3nGCBn9Vqd24Z7fSkBiC35rzbC%3DVGKiQ%40mail.gmail.com.
