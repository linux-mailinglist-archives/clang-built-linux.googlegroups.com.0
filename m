Return-Path: <clang-built-linux+bncBD2INDP3VMPBB3MC7TUQKGQEBTCIA5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BFB78DBB
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 16:23:43 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id 91sf33180743pla.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 07:23:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564410221; cv=pass;
        d=google.com; s=arc-20160816;
        b=PzRoWH+oHLRg4OnVk4cdwevmjopgyRxVk/hS/n/QbFUyyAGmJTFYj3tTIsiSnqamxm
         diWQVeaVxggNqKKWEWZ+krOxsf70Gi9aTi3OkDqTnWW/pKpY69KXzbZh4gvNrvEhKKZP
         Oxq/UbSGR3ouIyEZae5IxkjQ1UtKAnjjZuOGTx4F7v6wDRkuFC/+fiKixq0iBXRN4oQc
         sd8dIqsqA4MLUROcAtJItZ3WgUeqArorg6S17qLA5YhFVsi2KD2Qkp33C5fEyS/eE/iH
         PVeJIzHEP+v5RanrwLP8K70snqUl32H0S1H9T3fH7bng6yXbX9GtWaz6y58iPMHt/A4P
         p8Xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:user-agent:cc:subject:to:from
         :references:in-reply-to:mime-version:message-id:sender
         :dkim-signature;
        bh=0SrFK/lAYydNaVeG0s4R8WtXyu3DLsyJqPS+FPkaSqE=;
        b=nHZ4nsUQwkGRR3jz/bDF7tckzTTUIj1PKirfaFSduhSmugZ+gb6HAUp8UtaIKOUHGm
         wFajnqq2aD+/lFdJeudAyQPM4PBXm8tJyF01cwhD6bN8Ni5p0ovcl4TTvw1io0iKCR6/
         g10lqA+rMEHjpqxYSndndgwvAdPE5/CRDIKHwRxu8pInVBf/XWEpX3eJ7PGa+UIk/C9m
         eQBn307Cfa9MgayEzsxlWABz85I+BgqpJJXYu5I9b0vTCtDIsN8QeWaIX/JJEyC2WYaP
         uUmziDRuej3KVzHu9HWzrE8HiqTCMSJKWIV1z0ji4sKoJWkHvznxHLvXxUjjiTLGHKFg
         OKfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=k86W0aoh;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:mime-version:in-reply-to:references:from:to
         :subject:cc:user-agent:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0SrFK/lAYydNaVeG0s4R8WtXyu3DLsyJqPS+FPkaSqE=;
        b=Hr179rnzK2ah47pB39V3MBomp4taheSnZOrmFd9hsHjsTXr9nSk3OxbmALau/gyLT/
         63HaPjUb2v/SBSyWD2I/gRGvE14HtfvRN+w9x45Hr+yzw7+k+G0PPqiEzWC+ldX/Mo+K
         fAww+1zHQ0VY2psCW+nF8Q8hHNG5niojXUJlrgdzvyegZl50X+UOnGLozQsMkEPIyAzL
         DrzrlE7RAg1y22UfPeDMbH5dVnjpenl/FQbIDSMRHQSJkaZIRzSrMgyCiESigkZd6mtn
         EOwZdOIfdk8t3VQRsw7806UW9ecsIHJbR+cKaSnfhhqimg2DMpgt1+yHEHhKf51R5nS/
         pcjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:mime-version:in-reply-to
         :references:from:to:subject:cc:user-agent:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0SrFK/lAYydNaVeG0s4R8WtXyu3DLsyJqPS+FPkaSqE=;
        b=s9eLrHOZ9zkBPLjJxLcnqnOem9Li0Rh5GD53fzOC21UGMXq3SwXWbZlqKgyDuT+Bcm
         3HSP3zZ3hS55FUT0doBThno7F4WWyVKFsCink3NVcZHAbjt8xEyyxFwZWfFB9090Du4N
         j9FU/aZ/ODy9aql7BSP2uCNG4RXhcoImReJiHWxFbkn4Vnnq57F0CpsbjLCEkfoeKSRR
         emRjRN1FDxxX8B0rbtHVT7sv117qunyflUDk0ZpriaLgbll7ZVGyMYQs8qErTeQuYbBY
         Q98kkA0KsCYOaV0XX6S3GGPu74pT0XpB6Q6/MMNWt/KdV/oTNBOHK/KA7WdXbjgGsbr7
         Dqkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV+/k6P8zQc2rUD3rrZ/PLyZaSFuHmaL/lZETeNWT81ZqN54PgU
	GeY4FCKzKaQRbcMjuzC2IWA=
X-Google-Smtp-Source: APXvYqyBvaqd0grgAYBaDMxuTp/M1iwHPOwQeYMnacsoiEZcfGUqn410I+hHBz8y0HWzkmq8OWZkmw==
X-Received: by 2002:a63:7d49:: with SMTP id m9mr96273276pgn.161.1564410221767;
        Mon, 29 Jul 2019 07:23:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:740a:: with SMTP id g10ls17143678pll.0.gmail; Mon,
 29 Jul 2019 07:23:41 -0700 (PDT)
X-Received: by 2002:a17:902:e512:: with SMTP id ck18mr104737498plb.53.1564410221507;
        Mon, 29 Jul 2019 07:23:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564410221; cv=none;
        d=google.com; s=arc-20160816;
        b=xX5EE7dWyp4NVf1QkCJ0t84YRmZvK8Cl6+iERNfRvhJRD7e0iicJ2nyc1aa8s5V+b+
         zpUz7atj7H0D+CbEHzlXQRrbX8FYBqYaCaq1qBAu1I1kBb8L4S/o6MJ2kT1KFzw+rPIu
         jxPtlkdGh5rEGrTKqdxi+0MreWJ80gAmv/buKn8Ih0No6HIUp9KKfxe+nGOnBU3UQ0Dt
         oCnlxm18Fh3Sm2luwJ6GLyiKRSseiKY52gVN7MOycMYBQl+BJ+1knToFDD0fygHDZBSh
         25Xr0iUsThN8tJfn+5OcqCQZTQKC+yPdU5SlxwvzyGijdLVSHZTQfm4pPLSHpFI8PXqU
         7dCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:user-agent:cc:subject:to:from:references:in-reply-to
         :content-transfer-encoding:mime-version:message-id:dkim-signature;
        bh=kqUnPKiz6VvTqc0+3BE84kZ35KLnOhXxMY+yopDUPhY=;
        b=0IgZhwnBX21pJJQPfJIWLvSw8nfbZzjJ0mU5n1w/DQAKWJ6JauzrjpSeEGHSbME94G
         TpyXwV87oJYAUaD0rKqMBdoA+AVdAzrEuE8TMW4emOh+/fH+pOkLJIsTYdwuYbkxZzcr
         ffj7XF8OtTo00X5Vghrn9XQfgvBEYMXD3ZnbilFkSUgVmVTOaZsmPU8PpS7/CwzfsDwE
         7hQ8t8f+C0b6+odi/7ckB0G2vXyWpApjXyzKVZ9po0PyK4RoMuUBm8Sz0ah1lQmdffya
         vYEdFm00hF1p4ALA2D7gLp9EuHfIZ20BxuAZF1jb2xI20mKMrNqGDS1n6y9Eo5CSI8U4
         sD7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=k86W0aoh;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id cl17si2349029plb.3.2019.07.29.07.23.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 07:23:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id u14so28146985pfn.2
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 07:23:41 -0700 (PDT)
X-Received: by 2002:a63:5c07:: with SMTP id q7mr52206048pgb.436.1564410221179;
        Mon, 29 Jul 2019 07:23:41 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id y14sm11289667pge.7.2019.07.29.07.23.40
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 29 Jul 2019 07:23:40 -0700 (PDT)
Message-ID: <5d3f016c.1c69fb81.b4775.c7d0@mx.google.com>
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <CAK7LNAQZJgkx-yEwgHcTapKFayExgUCb3=zLBpJmVMJMeEA_WA@mail.gmail.com>
References: <20190725154730.80169-1-swboyd@chromium.org> <CAK7LNAQZJgkx-yEwgHcTapKFayExgUCb3=zLBpJmVMJMeEA_WA@mail.gmail.com>
From: Stephen Boyd <swboyd@chromium.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH v2] kbuild: Check for unknown options with cc-option usage in Kconfig and clang
Cc: Michal Marek <michal.lkml@markovi.net>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, Peter Smith <peter.smith@linaro.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Douglas Anderson <dianders@chromium.org>
User-Agent: alot/0.8.1
Date: Mon, 29 Jul 2019 07:23:39 -0700
X-Original-Sender: swboyd@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=k86W0aoh;       spf=pass
 (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=swboyd@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Quoting Masahiro Yamada (2019-07-29 03:02:40)
> 
> Thanks for catching this.
> 
> I wonder if we could fix this issue
> by one-liner, like this:
> 
> 
> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> index 8a5c4d645eb1..4bbf4fc163a2 100644
> --- a/scripts/Kconfig.include
> +++ b/scripts/Kconfig.include
> @@ -25,7 +25,7 @@ failure = $(if-success,$(1),n,y)
> 
>  # $(cc-option,<flag>)
>  # Return y if the compiler supports <flag>, n otherwise
> -cc-option = $(success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null)
> +cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -E -x c
> /dev/null -o /dev/null)
> 
>  # $(ld-option,<flag>)
>  # Return y if the linker supports <flag>, n otherwise
> 
> 
> 
> This propagates not only -Werror=unknown-warning-option
> but also other clang flags to Kconfig.
> 
> 
> Currently, we do not pass the target triplet to Kconfig.
> This means, cc-option in Kconfig evaluates the given flags
> against host-arch instead of target-arch.
> The compiler flags are mostly independent of the architecture,
> and this is not a big deal, I think.
> But, maybe, would it make more sense to pass the other
> basic clang flags as well?
> 

Yes that also works and I had that earlier. I wanted to mirror what was
done in scripts/Kbuild.include where there's a CC_OPTION_CFLAGS
variable. I'm happy either way, so it's up to you.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5d3f016c.1c69fb81.b4775.c7d0%40mx.google.com.
