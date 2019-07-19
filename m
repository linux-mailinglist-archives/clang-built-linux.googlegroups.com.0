Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBBWRYXUQKGQEVCOR6XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id E74A26E130
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 08:51:51 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id q16sf16651766otn.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 23:51:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563519110; cv=pass;
        d=google.com; s=arc-20160816;
        b=MAc7B6/wS3LzUMGv9Wp2uCCohfkRJ0pNhJlmExLK//NljoWFtyKe7BvjryLMxgnV2D
         rmH+jwaUhuHZFIE+jJQZw4umFHwShWcA/+gzyHrhHT5IYEd2WggQZg2+JC20j4nCJigL
         IEf0zb3fUyqAW3xRlfxWpXNxqR+AeTg9Ta2DvG9UsyYJ3LkJr2Bt1r3Rc+Eu5snNI11h
         q99JPUN3bmrLktjyUqNMZ9dF4HRI+ZMfE4CDgwm9yjbBWSpWJuC7YLciNTW86/ph5Eoy
         +QDPLXNpCT6vim00aanqd4YjP93bcYE581FBIQKfPvs1piA2XWGG7yNGZrDEdZ0PPN3q
         bBaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=A4l/UchuY2ACsM2KHK54SQh6QVSjL4DgnKzw6JGwky0=;
        b=UmRlgG+GSXskLWsdS+z1jpRuS639oQWBeGlLwXtkVwfOrLxuxxQHI3YXLdM/m95vRg
         WSCzbtVeZuRsmjOBgMpLE3a8PKak20lsNfyOjFOSrF1aXmZBZkCXudSgbC2n1U6Eaapa
         mLjVO74doN6z4Iv1G+We2Id6q/9NljMq6cf7vB8uJM45/YWd1iBE68meSNRGzfcaxyWf
         NpPLejS5EipZ1nWhHwd8iaeQb62s/0VvpE9A8rcRAF6xMJbniY7da8B64/kdrZ7tq/kr
         TpMojLamFyQ/CnHBEoUrc8J5Ije+RalMQ6u9hxcGCLQ8fjDpoOwnicqdWOv86L9U0OgP
         9umw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A4l/UchuY2ACsM2KHK54SQh6QVSjL4DgnKzw6JGwky0=;
        b=mYiDCUlVbeC8EHZDRmDA8rkHMUG3wLBPaN0w7bSJCFpN6fM7rhX4sEhkPadbcjTYc9
         qWz9BTA9H5nKbSXxbSspY1rpf79X/jDPMAouxVnK6BKtg9CEJw7Y/8hWlBWB8hjfArM3
         hVqf7GIX4wyC0Puu2gkKLKcH+wzc445E9v3Bv4rQPNpoVjcI1yFePK59Koeip+Q5lHKp
         deYoXCbD8TZOc8IH8eZfvco0zKUXWGdu4J/A7K+gA/iqWKihyD5qRigLoxqhIRsV+j6t
         Pn9XNGT8gJ7cx/m4tZQK58Z/XE67fiu9xahY6etmM7IxdRSzCEHOnQrKonptp0z2OYpO
         xsIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A4l/UchuY2ACsM2KHK54SQh6QVSjL4DgnKzw6JGwky0=;
        b=NB6Ecs3uPxXQbc/SlV5r8mGUK+vUvwduEc2K1eC5saNSM3eIPJGSbta6sSi0XlrIXC
         fARrT34USR8Xg6NZMcWLRZFrvTYH8uoQzPwXiyPxzlPIXfD2ZJqfLGmZHmO4EZ8g7mOI
         lgr3iOCl8fIXVNf3lZVGyAtHlnCZ2rYGmMNOHBTL9DnPFuE/xzjaX5z991KbJOV/aYPQ
         kh07xtowR6uNfa0aHBwBQ24ZMOHqCVbIQ0ZjBYLp+AczsmyE6VaL9myXTAMk0N7Ecp91
         SZHHplcjtlIX2VhxUT/eWjmUR/Flm2yNqsO6SpYuok2i4QWnkzwfsGPF2gFXVuu6t3l6
         XS4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUSu7qM1Nv2ri7eogeeP7b9ghgtARECBnqiJ6kKJAHsCjzOSkul
	kS1xgw7G2BDkvhFW8FcvBGA=
X-Google-Smtp-Source: APXvYqxbKb+4Bky99kmaA4D6hj7kLMdLAnovSNmDiaeo2+S4dR7RoUBLfeQASnRdhzrI7gRrgnuxng==
X-Received: by 2002:aca:f08a:: with SMTP id o132mr25204385oih.101.1563519110669;
        Thu, 18 Jul 2019 23:51:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3e45:: with SMTP id h5ls5799498otg.11.gmail; Thu, 18 Jul
 2019 23:51:50 -0700 (PDT)
X-Received: by 2002:a05:6830:108d:: with SMTP id y13mr32228836oto.255.1563519110434;
        Thu, 18 Jul 2019 23:51:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563519110; cv=none;
        d=google.com; s=arc-20160816;
        b=O3bnd4qTBTLlzxpER09rN9W87VW6CVrBFR98KfR5MdO4N7/YZ8WUhUVwwBQIh8nEkd
         opYYoEJXmNeDdr9ZqptduT3zY/cfYZ/TCf6iRFtVz0EyFFtC5puWssowMTLWiu69NS8I
         kjscWkUoh8sjLKch8W5o/y8FacgGcp8tmzogBWwVVZE1Y5AEg0i9YXoKy7sdgivkIz11
         i+bx5sNsitXSqbDvb+EJwKEg4KwetEuZxOiuYTcRm/ZrhI1sHNrz0V1dAMuB/V17VaZX
         5iFhRVacHxtqTgvVw6GX8ofBwFGZetN7mD+ueJpRlzvEoqEZt1/hc9v5wJKL88jgEbnJ
         cpaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=B6pVkHoM9zYOJWO3sG9HTZxpM7QAoYB/MD0csvlC6pM=;
        b=JagRUxNVx+JF7YRT8peQDJSz0nWfB+a9RnnuFTCtdo7Dr2gcYdQvaHy61vciB7i3LA
         3KA3//ooq20cXLq4bVQl10V6m95rUB7jtlv6RZHc9FqFkngSpfh6EEzUXHVv0ypWada2
         PN4W0xAeEh/ke++peYDE/pUkOeX/5R5zDo2G3tgkU2WZz33pAxkTgZltxUMcCvjgReqs
         73cdCfJiW2FuaF4zQUFwk/HW0ECtQz9I2vT+O9sgB4YK48lF7d4ZsYE7axHl8AbpJMgH
         Cq2mgPgIHUlxate9MRwdLNtHy99XMEm9oYyfgAY6nNng4VzPQcsU8WzUwkrUNuuqep+V
         MtUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com. [209.85.160.196])
        by gmr-mx.google.com with ESMTPS id q82si1616886oic.1.2019.07.18.23.51.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 23:51:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) client-ip=209.85.160.196;
Received: by mail-qt1-f196.google.com with SMTP id k10so29973484qtq.1
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jul 2019 23:51:50 -0700 (PDT)
X-Received: by 2002:a0c:dd86:: with SMTP id v6mr36463964qvk.176.1563519109822;
 Thu, 18 Jul 2019 23:51:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190718134928.2472465-1-arnd@arndb.de> <cedfd2fb31d943564e19c1652bc8983a18de45d4.camel@perches.com>
In-Reply-To: <cedfd2fb31d943564e19c1652bc8983a18de45d4.camel@perches.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 19 Jul 2019 08:51:33 +0200
Message-ID: <CAK8P3a2nL0Ji2NmDvVcqyO4Rp_N9FN0OSZHRnUb+BpTdneuVMQ@mail.gmail.com>
Subject: Re: [PATCH] reiserfs: fix code unwinding with clang
To: Joe Perches <joe@perches.com>
Cc: Jan Kara <jack@suse.cz>, Andrew Morton <akpm@linux-foundation.org>, 
	reiserfs-devel@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Thu, Jul 18, 2019 at 5:20 PM Joe Perches <joe@perches.com> wrote:
> On Thu, 2019-07-18 at 15:49 +0200, Arnd Bergmann wrote:
> > This will likely get fixed in a future clang release, but in the meantime
> > the workaround helps us build cleanly with existing releases.
>
> The original code read better.
>
> This is kinda a gross solution that should probably be
> commented on in the code rather than just the commit message.

I'll just wait for the fix in llvm then and filter out the objtool warnings
from my build logs.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2nL0Ji2NmDvVcqyO4Rp_N9FN0OSZHRnUb%2BBpTdneuVMQ%40mail.gmail.com.
