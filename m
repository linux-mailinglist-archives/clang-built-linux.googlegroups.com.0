Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWN45SAAMGQE7CWPV6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5990830E596
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 23:06:18 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id b4sf1062040ilj.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 14:06:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612389977; cv=pass;
        d=google.com; s=arc-20160816;
        b=zvLkcNMboLPMrfI+94FTWtU7Kke//xxxC6LoxvwdfyocCMG+zb1qIF3gFwzXkiyCco
         1CgddHQ400UOdlAwyyCG5Nrz+KuA0UoucvoFiEYkh70V1ZjDkdaRWKMzWmSCjGaoWf/a
         RoZuqlZtzPVbuWhE5Gvl2duYqBDmIessKcIvcOgO8ZBij9ZHCQH7EM+dpQchv+sk1pao
         tnWR6cGPRE8Ds1QSoyNCuU1BXW6yNA/hI68wGZsomstwdsGHTytgQSplt5+IismIFM9x
         Sf0xdRnIpdUBZtFWt8UBJkh64cYW1fYjwG+iUe8dI6LI1wc/2LQbYOBaAARbQNOFYrry
         7ZtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wQiJQFzxqMgyGNQCS/fIkcse9z6cgOyWGB5Fv8XHZtE=;
        b=svmVETXWfvN0qmiFyIvyfoHgRb9Bm76jCj7AuUFCWF4vERMkcFHinWVst6Uy6jwbqb
         To9PzGcMZJOxuwkhHCqosIVjs21noODOXSPrclwr5chVfdotobWJyeYmI29ePTliR64N
         ngScf5f7N3E4qGYSsiV/+O7CwSdCx5pxmRuqe/T6g7JSkjeIqL7sK/pgEAVP11ly+zrO
         +9kzZY+MD30lxuj7pI87IRWIQzkv1Gnu/Af7dB3L1qFyUfNrnfrT164f37CgAk9Q7Jw9
         BR/IEzWcwihD7xve3we5rWlJYQE62K6bEQR9Ije+g+OY/ctL1sQunIVyALLEzTPBfTpF
         nJmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=K4hBhIt0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wQiJQFzxqMgyGNQCS/fIkcse9z6cgOyWGB5Fv8XHZtE=;
        b=frrCVqFcFhrgaA4swRt25SvVkNaxlwy3vXVcRolA+fgCvMCNQTvsovhlDJQ/ZwvPYS
         9r5kBDXUTSUAxjF3wt+2SqBDtxMJv3hljd/1xo9Z1YUr/R1O0p1ApQfLeso3XMq9iQ8I
         eAavYrEV8HcrCJG4RKN3aparqEI0wBR54xgyqOruSxHQ2WFrA0u74v7kqUPnt4xAbJvd
         FZHsCpSF5a5meF9tzRJSvW5qAo2z5B52Oru7cgwSgFOUUIdscpi/Ct8/F3H+6vIEFc3k
         8Bcfg4ELyzAeJKCnCj2OjTmqIh4xqZ9TctUSIdcq8to3HR8EvvIGxiPs/i0aPLvuPpV6
         L6TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wQiJQFzxqMgyGNQCS/fIkcse9z6cgOyWGB5Fv8XHZtE=;
        b=ShIE/beLKTpm8TjM1YTQM7uc5vn54aXfmRjf1AIwgRNlpwOTWNXahdbtbWirtuPcqE
         Z/1Zap/sDyme48X63DOUSHn4OiEAQjFNvbBrJQ+TpbKO+l2KCY0xlDHV5Rb8qrBfLnKE
         Au/Y2QX0lKCznmnEemW6G8OiHBUM5aEr0vT7HmOnS5pw8GFhv1T0QXsEmwOKQh/HzQ0S
         KXNNd+Oh8945zyJ4FEfvC9wSg/T8Cg47FyfKSE1N0GRre25ewVY5P/kJwFZzrbdYsl0y
         0uwF0VtIFe4yNf0ZlxFYU65tgKZ+3QVL8zJ0FL42Vw2nOojnT62H6pttgiY3/qelIpOf
         /Qeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pLVaPpteawXL4pAL+OGSa0KxilafpHhlVIO4f0lIldxYsbvi8
	gzJPozokohJrEqSpVDiVsT8=
X-Google-Smtp-Source: ABdhPJyS+0w67rEZaEmagw2JUmvRovXQ3WylAKZra+oM59YwGyKWq1MTd6rqiJ6QD+71f3WTzLoqOQ==
X-Received: by 2002:a92:41cd:: with SMTP id o196mr4549213ila.31.1612389977349;
        Wed, 03 Feb 2021 14:06:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1212:: with SMTP id a18ls796670ilq.11.gmail; Wed,
 03 Feb 2021 14:06:16 -0800 (PST)
X-Received: by 2002:a92:cf08:: with SMTP id c8mr4205572ilo.106.1612389976769;
        Wed, 03 Feb 2021 14:06:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612389976; cv=none;
        d=google.com; s=arc-20160816;
        b=X6QC43DMuYH6NAkeqLPgh/iSPuv+M5RYQHkge1m3VravqSctdzTCfmwdgODC/SdHto
         SU2JyeOZcS8VjZwuzmOwjhGTbQIQWnNOSO3ULd61cFkw0AtN+mrG9VjBuV5iEcSrEDE3
         mWrZCtKqfX9qW01vbe/UcSzoBE2TcAGwwwqCbCvtAKUcw10Z5Kditc518ezI1KPh5YYt
         iX37daY4PEacRJto9uuzOc94vkSBzul5oUCdC6kft0zzAg8ffREwyT3IxVa1mVjAIhVt
         fFbmpPCBBHNr9tRRFfIWDITOuTcKq13gJZ3UBvQkXtDO0+FLEyC/k5XCWgKsuWAwvlGF
         bMXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LfvLw9cZwunhTZRf1voY+eMMK5zR6f2Sdr6DJUlHrgM=;
        b=RXytDP15RwYlwblqVfJ+OJiswI1tkaIFGg/Y+d75Nx1wwPjxvvkEUF4JUXdi0kPdMq
         a1XOLZ7r7cA52HJLYCEEFj0Fgq3CyH17aLiwPFh3O7JCimDxSaWoRr7pNBHO4Qla9/Ep
         StVFjNn0ZoFLizj7uR7jK2fqMObZsztm41nVhsfNwD3JDKftsxQtC8AG3iESfekQ1H/x
         KQAcztbiACIeo2kDeGuim97GeVR06CN8bZHUXRmhR3s3hzWdh0HadJDE51+h9To1Kum3
         hdumfO4dTqwP6w3+3QkbmVLQn7a0Rb7KzZnNFQluD75+/CeIqxlH9WP/qECBEZd8QOtw
         ufwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=K4hBhIt0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d13si152164iow.0.2021.02.03.14.06.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 14:06:16 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E6B2160234;
	Wed,  3 Feb 2021 22:06:14 +0000 (UTC)
Date: Wed, 3 Feb 2021 15:06:12 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Rachel Sibley <rasibley@redhat.com>,
	CKI Project <cki-project@redhat.com>,
	Milos Malik <mmalik@redhat.com>, Yi Zhang <yi.zhang@redhat.com>,
	Filip Suba <fsuba@redhat.com>, Memory Management <mm-qe@redhat.com>,
	Ondrej Mosnacek <omosnace@redhat.com>,
	skt-results-master@redhat.com,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Jan Stancek <jstancek@redhat.com>
Subject: Re: =?utf-8?B?8J+SpSBQQU5JQ0tFRDogVGVz?= =?utf-8?Q?t?= report for
 kernel 5.11.0-rc6 (mainline.kernel.org-clang)
Message-ID: <20210203220612.GA1738694@localhost>
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com>
 <20210203180333.GA765672@localhost>
 <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com>
 <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=K4hBhIt0;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Feb 03, 2021 at 10:36:32PM +0100, Sedat Dilek wrote:
> On Wed, Feb 3, 2021 at 9:45 PM Rachel Sibley <rasibley@redhat.com> wrote:

[snip]

> > As far as the panic, it was was triggered on our upstream LTP test, I
> > don't have a corresponding x86_64/LTP mainline(GCC) job since there is a BPF
> > bug which is causing our jobs to abort while updating the kernel for x86.
> > You will see the following in the logs:
> >
> > 'failed to validate module [something] BTF: -22 '
> >
> 
> Guess this is with CONFIG_DEBUG_INFO_BTF=y and LLVM/Clang?

I read that sentence as there are issues with BPF issues with GCC, not
LLVM/Clang.

CONFIG_DEBUG_INFO_BTF is already disabled for the LLVM jobs:

https://gitlab.com/cki-project/pipeline-definition/-/commit/7d138e9a3aede46f7674476fa1b3ca02a391767b#90e1e97a102a5713d6a68df323738846b425341a_1358_1369

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210203220612.GA1738694%40localhost.
