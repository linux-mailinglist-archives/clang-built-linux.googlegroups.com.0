Return-Path: <clang-built-linux+bncBCT4XGV33UIBB54UR6DAMGQEHLIDSPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E573A4A48
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 22:41:28 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id l3-20020a056a001403b02902ea25d3c7d4sf3876550pfu.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 13:41:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623444087; cv=pass;
        d=google.com; s=arc-20160816;
        b=bdrZ1Y+4SkPDRvMaY6nzfJltGV0ZAUfuNUN6XwEfx7EbLAOiT904vVbE3c/eAuWjr1
         VdYI9XC0NMXUWKjnUw0pZWkK/0CAM2hKdUSfvDCZXfz+0lvh5weLtjtaJe/PBVeOSyqq
         tH6BV8n9rK3oI1Z1kYqQtduptievcuXmsjHXN38yK/tmHsjB2QfDVLv41xUMhoimwYYq
         6NbZUKVCk80XefrO1sQboMIvAl8xfzW26uJnOCw7D36vI571vtHHc1SmqxjHTXFyS2KV
         ZAyto59/ZlnZdz70hzS1xcl8to4+3e9YdL1VOQzjXF5BJ2f+S3GUnLrmIc12HRTrEVsb
         S91Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=HFjHxnNn7g1SRxU5S6Sp0EHsiElpNwGqJCR8p++/i2I=;
        b=AS32XkKi6UMck7bLHTmEzPTRBqL3s1dbmj4tO9WHg2L5l6Ec8WzSHG4wwPwqvSPYBD
         CNVeHRMIzdMrfgDWQrnVYuHSEmvCqhvkBAPB8DwHB5usfMED383i0CvnZlCKu3HTGuVL
         gyAzdzjc6UcNktxvUzJAQKktVmWdkCbv2FVB0AAyVNpeUXf9kufma2yVOOxVeBdxALOn
         kIOprC5kunkR3zPaH0p1VKnHxpbMkvNhlA1X2XcWvbtli4aA9vG7t0nHjADEAuJizmUM
         y8vQzuVFRITBv4giX5TW9/yuD5NcCDAlRpw78o0qrUJe4l9y7ai+KJrOn5XgQQ+YWzvG
         9MdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=KHKN85mn;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HFjHxnNn7g1SRxU5S6Sp0EHsiElpNwGqJCR8p++/i2I=;
        b=fx3DAGXjwKAyv8GOheDqt1lV3+87zKxlQGiBYLo0I0wFtnzC5B766iUyyPum5jpn+i
         EhVbkU1/1nMMmofPJZzSRkvPMr+2G310LAQnahREoKgsE7IhZF2BXsddQ2H4c+8ma8Py
         LWI1N2g4fHuagVJ95cxZSh1f1a4rpDSM0pAV863YRyUq6lwexv3rQmiAbFb96fbgmpUs
         /i6BBdDsfdHKwMQcDSotuZ79FY2JGIJ/9t/FDcHtdGPdgAjMAI8y1ntIWIW+NbTh2xqD
         beUZcNP9gx9v7jYKjTIAj1JJjM2TLpL1Tu2feYxvnuA5qcEypzMmqmmGuHKk8q18AAV4
         rYRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HFjHxnNn7g1SRxU5S6Sp0EHsiElpNwGqJCR8p++/i2I=;
        b=GSzHslv6NhRpgMw11Ly9750yxPtksPnwL5slhscMcW9/EmB9IW2hqpHYhbu0L1R8Dp
         WiLXzEyXk9/K5uMqmSf386N2fG7o3QtlO7J53C5S6IpmCVhOCi30KORYsSwpmUNxCJNw
         WHGH7EgcgVeunC4vEiCruNFp3ZRRzn4diHkrN+7rxRPnwj2lN9MxytyHGAn0y98usGS3
         FFU1+sYxl3a+LkFkNKIfNgEsolmf8PRFnjOs2JVeKd+lHY0G/kRh3rHfPkSnL+J+TmI0
         n0gal8+P2Ac02xkrMfceo3pLCiGgilGK81MzqatzXGLvhBmbuT7F/5CXnDUkjWY/gdSd
         DObg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308DMtD5yp2PrZxNvY6UIAioCH4qAekR0hZOx4MlloxeTpsgy6H
	MVMeCfGULnAGwgjAf00duRc=
X-Google-Smtp-Source: ABdhPJy3koYNNcK6cw5fH4pUHPGmQ3CD1A0NSO7xOIus+Ay1+h/5tgsMSfshpMnIJILAXpFf6OqE4w==
X-Received: by 2002:a17:902:6a84:b029:f2:b1f1:a8c0 with SMTP id n4-20020a1709026a84b02900f2b1f1a8c0mr5613200plk.13.1623444087520;
        Fri, 11 Jun 2021 13:41:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:17a4:: with SMTP id s36ls3887550pfg.9.gmail; Fri,
 11 Jun 2021 13:41:26 -0700 (PDT)
X-Received: by 2002:a63:7e56:: with SMTP id o22mr5382732pgn.278.1623444086836;
        Fri, 11 Jun 2021 13:41:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623444086; cv=none;
        d=google.com; s=arc-20160816;
        b=wFVsl/bY9X74p2O80n7TyefwRf1EunEz98s+LGUVW8qAYCuMXS6pogJV3av4K2cKbs
         zhZOPtDpG63VQ6UywbRDhUrldONvcc4Ik61L1wrZAWjwjVl80AoXL34oc1REkX4+s/2r
         TdQMx09hHa3LtpuRGApgE2iT20pnRYaeLTpqtJSIFnStw0AtwAxY+owa1XIumV/GxV2d
         fZ4T9w6iRy88bMQ+gQLNErWXdj95/+4pTVlCED1qLllQSRDvkmeh1meHwPLK3CGd/d3V
         4aFZaCbM0U2spPIzgT78M7PZi2apPz2qLGN4CIphSynvWYvfrwMs1TzOVPJSjOOMx+Vr
         jLtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=C9uakjVmDnJ3z3035DaZYjfH8bAjVY18EQGGRo09wS4=;
        b=j+XPlNn7HSQ3rLid3hGy4pgz1ieScqOfPKThqS5EYTgLG2ALKVtHpk8hbgyvDmoc0i
         6mtTBOVQuVOpYXTQpcND3T5/aIr0PLaPdwPskVPSQtufTW8r/rfofzJaMK0xu/nOSTGS
         SHxSayEkXXhoqi+IBPHG+ViIkRXwygFnp1vVCDXlM7kjbyfYAP5GmuFv9oP54VhRBN89
         QJi5rYIvRYXV5oEIylSHhdKNXIwEZ8Ch7xTMwiGHvSPAp8yn79Fbm0oIayajrptgliZ5
         jFJ7Gz3lNlmLQ1y/gczhpEm2a8zEW7pr1CKo6JtvYP3t4bCLu9Veu/ABWm9UsM84Ms0q
         yU4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=KHKN85mn;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a6si724869pgk.0.2021.06.11.13.41.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 13:41:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 241BC613C3;
	Fri, 11 Jun 2021 20:41:26 +0000 (UTC)
Date: Fri, 11 Jun 2021 13:41:25 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Petr Mladek <pmladek@suse.com>
Cc: Martin Liu <liumartin@google.com>, Oleg Nesterov <oleg@redhat.com>,
 Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Tejun Heo <tj@kernel.org>, minchan@google.com,
 davidchao@google.com, jenhaochen@google.com,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] kthread: Prevent deadlock when
 kthread_mod_delayed_work() races with kthread_cancel_delayed_work_sync()
Message-Id: <20210611134125.bdb08ba0d2b6b87dc60d446d@linux-foundation.org>
In-Reply-To: <YMMN5IoXyXqoRsBX@alley>
References: <20210610133051.15337-1-pmladek@suse.com>
	<20210610133051.15337-3-pmladek@suse.com>
	<20210610143030.f599946ec11e1eccde6af4f0@linux-foundation.org>
	<YMMN5IoXyXqoRsBX@alley>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=KHKN85mn;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Fri, 11 Jun 2021 09:16:52 +0200 Petr Mladek <pmladek@suse.com> wrote:

> On Thu 2021-06-10 14:30:30, Andrew Morton wrote:
> > On Thu, 10 Jun 2021 15:30:50 +0200 Petr Mladek <pmladek@suse.com> wrote:
> > 
> > > The system might hang with the following backtrace:
> > 
> > Well that's not good.
> 
> Fortunately, the API users normally synchronize these operations
> another way. The race should never happen when the API is used
> a reasonable way,
> see https://lore.kernel.org/lkml/YKZLnTNOlUQ85F2s@alley/
> 
> > > Fixes: 9a6b06c8d9a220860468a ("kthread: allow to modify delayed kthread work")
> > > Reported-by: Martin Liu <liumartin@google.com>
> > > Signed-off-by: Petr Mladek <pmladek@suse.com>
> > 
> > Was a -stable backport considered?
> 
> Good point! It would make sense to backport it. System hang is never
> good.
> 
> Could you please add Cc: stable@vger.kernel.org or should I resend the
> patchset?

I made that change to patches 1&2.  I don't think patch 3 need be
backported?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210611134125.bdb08ba0d2b6b87dc60d446d%40linux-foundation.org.
