Return-Path: <clang-built-linux+bncBC27X66SWQMBBVXKUD7AKGQEQNPTHXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AC52CCB21
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 01:46:15 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id r15sf241239pfg.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 16:46:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606956374; cv=pass;
        d=google.com; s=arc-20160816;
        b=rGnFjKBsHS8tBbl2NBd1J8qa5ROr2sUgSyJdWGr8HX2YvwF50HNCSVGgMwUzG7H4SS
         fdl+WHMu4n3/vJDu8GxZuNR2saUXeZ055AQNi1KmfK0sj9auEhk5w4GzOcelN6hyVrj5
         q2kSyHzjnsVPpNkvb2qIMOU4AXPsaoH+pjdy4ZQjOSdfP3+08+zL++RDGC8+5v0a2yg3
         hPXYg1v6dHcEPYB+Ie2zB/MUmp58m5DNS4UgWu7tHAWg0RhH6hps9+N4zg611Gfepin9
         WysiEbTdrcdmfpv8KB0D7y+1Ks30mgJsBprMTm8AmFODyeKzDzGIjXT219mkknu3odVt
         H60Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=j1eErgGKo033ikZmeq9IQ3ZsaWHLbZNwbms8J2S5Ezo=;
        b=WIuV/EDJ6Li+G6VKMxvqz+B/PLMTeL2NNuJUxGmzxRZEbMa7EfpNAKl4pYoo1HdgtB
         uZc63jJHLRKK5p8apgCkxIJEjYWD3KZMYRAyz0Xp9R37cOLWDP7JECRtqcRA+W8KQO2f
         9lSSQ1Qhblwx9aw73xotNR4RymJgwUZmNKtUq5XQ01tY6tP+h19HipJBa+oeShmPahpG
         +cc9rGtniVjN0mwZd/espNiIU3tjuvWbV5xXgeIrGfOkluwZH3wcHJHqWPFNQacLxIGI
         cPpq1LUEvoANNleF988asZ87PbtaEZSO9wr1zVDzpGZP1o3/4Ln3Qyrbv8HVDtjeEgjP
         xAVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=P4RwmPgn;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j1eErgGKo033ikZmeq9IQ3ZsaWHLbZNwbms8J2S5Ezo=;
        b=bkOPmmKUMSEHfqVbUr1Gq+9iuedhhRLQYkZNWN0mNGME/bI6PIP/JaODJ/Loosf6yt
         3T9+2y1wr0+DyBVtVy0SYi/aw4C2EI9VtfyiKLxNoQ6TjtxTs5xXEssJCOy13NhV9nKI
         ApgAdi8obw170rL5QLLKeF/S2V/OtlSDJM2RU/uGzfuFAQWGMLgzf5dPEdmtUfzrB6BL
         V6jpvHpKxTQ+2seJmeJLnFAl3Lm518dX8XlwEVRW6rxDeeB41FN/RyPT6W3xbMs8waDU
         I9P68iKBXhtNvMrQwJNslhhU71qUL/pO30P553aHgk/YSLVuomEzOb04IjiUmj81eW92
         kz7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j1eErgGKo033ikZmeq9IQ3ZsaWHLbZNwbms8J2S5Ezo=;
        b=SmOPV5aoSqALKUgyoB4DwyBGAqUkmcOhJHOSYYgw+reMGWkjaA8BBn5QARx3+RfBzi
         is5e+kBRm9EXBB7sHUF/ScntwYUDsPgnPMf54VK1+DjMj3mvOvXTIH0aVv+NGmTxOXrb
         SIJFqulZDjoZKXX1us4FTW9eD2KuEAC5Hseyg+PklcmjcF2kI0RJuTjitxcEATGjtthS
         yG9PB36SAO7MOt5HxGRFAPwPb07zXMXqMuHVhE8KOK/XiFKJee/27PgAHZSA/lj1CeNh
         R4G7v6BzVtHvM9yP7jEP8itbVeG81npHaXdNtP25AiY7mCCJmQensmqC0A/AIU1i+9PY
         DNHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533O3iiLi0bHzgqOggnMakFbVMy7/HRS1mzjN6eYZ86g5/4C68BW
	5QJyo6QFAA+EiyALM96+erM=
X-Google-Smtp-Source: ABdhPJyfXAQBD33XaCaOVWuPCd27d/N+Wvg3OFi5PirokH/LfTm6xp8nzmjmJoBYFXkJb/HdC0ti8g==
X-Received: by 2002:a17:90a:ff15:: with SMTP id ce21mr567849pjb.178.1606956374324;
        Wed, 02 Dec 2020 16:46:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:989e:: with SMTP id r30ls1499344pfl.2.gmail; Wed, 02 Dec
 2020 16:46:13 -0800 (PST)
X-Received: by 2002:a63:4:: with SMTP id 4mr745275pga.443.1606956373745;
        Wed, 02 Dec 2020 16:46:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606956373; cv=none;
        d=google.com; s=arc-20160816;
        b=y4PPV1W8yW/pKHJlX9KZRJfaXYlQuN9ryEiFW7pIPhtYMa4lgq9eXI473v6f1DDm5L
         NmXsGVBgHMIPrqHlNAlQAaQzbFEAxErsKGEcbHjnBsz/TyW0WFDX7U5N63h/8kOvRv0c
         +ymnWQ6p5MSAHb8YMcXsk1fe6kqUNGiCfn4VaAcMwScoju6lHqQlenHgbOtWZFU4zE/0
         NXwCJPN5X+mVI2hVcjuh8cbn0qImKRN+jdoANkK3b25pM1QWQzHjrZZKGbBEkxqfP0v9
         1YNCAzQXTMOQNOOfDTpkE76QMbEoUJnhEDOwR9EH83n96nIcDlj/6TC6R2kx8cXaubFW
         Urrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=tn3Df7eygk6Izda6RvZQkxxok8dSHVZu45DeLEEIxTY=;
        b=KQbN1Lep3MVQS6Pe9ZvcYAFjmdn/nrI7bHkTfJefdimxbAJyMNoaX6RL68cIzAnTsh
         ZLnStli3DKZVHZ2Ixs+QGfc9t9zQpLWb6ht240fVFkSkukzhuq7em+OYe0m9rmG2Q/oJ
         1JjJSrZsIdvgx5CDVQ47Vc961Egg0A4Z0CC7zc3znTH06bpr1r4uTiCkZvrqf2HQ4y1y
         Wf/EomuY14EZPJpIzbs5V4IBT1gBKYg0hUi8DLdgqUTOpzcdIGUhbJqll7OiPEQFxJI2
         YwT32pC2QIPJBce5MTS/vLxlPSUFE2Mr+RK5RVn78ovHc3Lr0Hr9yPAB9fdTGgjQk1Gx
         8L2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=P4RwmPgn;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id o2si17583pjq.0.2020.12.02.16.46.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Dec 2020 16:46:13 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-515-EtZWs3avPoqEcDFU_hOrrw-1; Wed, 02 Dec 2020 19:46:10 -0500
X-MC-Unique: EtZWs3avPoqEcDFU_hOrrw-1
Received: by mail-qk1-f199.google.com with SMTP id x196so552277qkb.12
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 16:46:10 -0800 (PST)
X-Received: by 2002:a37:7145:: with SMTP id m66mr516140qkc.396.1606956369650;
        Wed, 02 Dec 2020 16:46:09 -0800 (PST)
X-Received: by 2002:a37:7145:: with SMTP id m66mr515968qkc.396.1606956367260;
        Wed, 02 Dec 2020 16:46:07 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id a6sm347081qkg.136.2020.12.02.16.46.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 16:46:06 -0800 (PST)
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
To: Nick Desaulniers <ndesaulniers@google.com>, Joe Perches <joe@perches.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, Florian Westphal <fw@strlen.de>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
 Network Development <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20201107075550.2244055-1-ndesaulniers@google.com>
 <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
 <CAKwvOdn50VP4h7tidMnnFeMA1M-FevykP+Y0ozieisS7Nn4yoQ@mail.gmail.com>
 <26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel@perches.com>
 <CAKwvOdkv6W_dTLVowEBu0uV6oSxwW8F+U__qAsmk7vop6U8tpw@mail.gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <7ca84085-f8e1-6792-7d1c-455815986572@redhat.com>
Date: Wed, 2 Dec 2020 16:46:04 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkv6W_dTLVowEBu0uV6oSxwW8F+U__qAsmk7vop6U8tpw@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=P4RwmPgn;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 12/2/20 2:34 PM, Nick Desaulniers wrote:
> On Tue, Nov 10, 2020 at 2:04 PM Joe Perches <joe@perches.com> wrote:
>> On Tue, 2020-11-10 at 14:00 -0800, Nick Desaulniers wrote:
>>
>>> Yeah, we could go through and remove %h and %hh to solve this, too, right?
>> Yup.
>>
>> I think one of the checkpatch improvement mentees is adding
>> some suggestion and I hope an automated fix mechanism for that.
>>
>> https://lore.kernel.org/lkml/5e3265c241602bb54286fbaae9222070daa4768e.camel@perches.com/
> + Tom, who's been looking at leveraging clang-tidy to automate such
> treewide mechanical changes.
> ex. https://reviews.llvm.org/D91789

This looks like a good one to automate.

If you don't mind, I'll give it a try next.

Need a break from semicolons ;)

Tom

>
> See also commit cbacb5ab0aa0 ("docs: printk-formats: Stop encouraging
> use of unnecessary %h[xudi] and %hh[xudi]") for a concise summary of
> related context.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7ca84085-f8e1-6792-7d1c-455815986572%40redhat.com.
