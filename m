Return-Path: <clang-built-linux+bncBAABBG7ESWAAMGQEFNBADMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 294B12F9E36
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 12:33:48 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id u6sf5394381uaq.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 03:33:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610969627; cv=pass;
        d=google.com; s=arc-20160816;
        b=SXVenZ7QllA6lAIQmWC+tp742pXVS0K6/KlXO9PIy8hlI7/hA/gsGtlQMXDZgTDM8r
         irCti2No45+4NUFoHG/IRXADcGcbw6bPBxWuxD+87Hyn/honC508EdBFK+pgr8nkRsvp
         dGiNyK08yjVPUuBs/CCO9FqAR7xjByY5AD/FoU0c5IeGnpdp6HlKX4wJ2AX31VEv0PHn
         HAd5Omt80zbgVfqlOgH29rZm6Obx7NWaXoHnhqQRBRZBOpHITv0qdGdITzIga5P/Le+S
         rDG2gDy8NKfUndCaDispZbn/x1Rm/m7Lh9G/Qo2dtkeOHLbCdlPPMcuPleHwDZbADDuq
         ABFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=umcYVjLRBbo3ESjm08BfKpfPmJizqLAt/bkN5lLhxIs=;
        b=Q+mzyNtBNQHKGIblLvaX1bA+gEiL71g75bUBOwV+tB2Ch3ckIJom9YIAwdxCNHvm5U
         47+Do/vbscAHc9+ubjDOQDZwXuuqTO78aKNsu1nGG+ppgRkxUI+HuJCElONC8KseIJLn
         ewGHbLjrY6qXWXHxE7vTxjNisiwuWEytGK0Nx+s+CF5UQO19NzrRlUrXStcT7uX3Trht
         vQwEK2NwzoABYS4SVVIPyvrwOHjaDzILDx/ypMDqRq4kpJz37HiDg5mhfQfdLv6lQAd9
         FEuKHCbpT1RVe4L12L55SQWu+sct0KFwmlKBTn0GwnROtLQYuauHdJGRbMwa2JrDhN/R
         BNKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FuABfqlz;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=umcYVjLRBbo3ESjm08BfKpfPmJizqLAt/bkN5lLhxIs=;
        b=hfTRQIkfiDmbUy8mJ8RUfYZpFnsABz5sXq5Nn4Oo5NKxQk6vcUmMJnVxcpfp9n7s7V
         WEITIBnxDqlicShxWvoYkQ9ZVyTHTlQa841mbbYAFLntfcTmvmapVk+Id4/Tpo1gMbxk
         ZVp+e0mTQ9XyXFUp+1bxR4DtOhOGxO7sZvVYY5gq68eRH+vMYZ4zEwrYqCkXlzIPtsqe
         eXtZfhnXJah07EPnUdYUgQPzYv3OUHuQ6o1ozi2ugCHdz66YK7bv96VKZzER8Mq1tM60
         4dbSQnx+2rMJp9ttHZIh4rQJZsLnvHa+9A0HCsWgR0ZoxxtX2r3GdOoa0OycE4JO8LmC
         ZJEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=umcYVjLRBbo3ESjm08BfKpfPmJizqLAt/bkN5lLhxIs=;
        b=M/NkOfMgK09RQVKqoWe9nU08xhPKCzNx1Gbtw8AUPMT70kePyjTsSv/hd9x4DdgYvY
         NM/bOxDbrtiwjY0Y4ToMo/yNOL+mmmKw7nXga7Ur3JIqJStb7DXiedOVRERzBY31Gs6G
         /l0BU1JgVg8HxpACpa7uEdDF1mQ5A1cujBY7PPRP27o1DFM5bdhtgz/3mXnAj8dK2Z6h
         T1GRLPvcLSvt90MMn0iWdFPNqfdYqKZ6phiaXe0CrDJK8nuTdrSg0VlvQwyMHpxXXhrj
         VeOlvhplJVXiyfnTTCcQQC07lbpJKOdUyMNbwioD9MhT+IO+I5bdLr5ymAoLh5YH2dXo
         pZPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JFejg4Rfw2GZw55hwEP8BPrXTXaDUspQ9yrjMk2QgLB0vRJ6D
	+VJwFdOWkDieZsaVuMD8MrE=
X-Google-Smtp-Source: ABdhPJzCYI7lRbe79OoSLjGRW/ZqWlIl+SnLDMkGw7WxY/Bk2BbpVoU28zjkS9q8sBdot4c8Q1fjHQ==
X-Received: by 2002:a67:ca0d:: with SMTP id z13mr17124742vsk.32.1610969627272;
        Mon, 18 Jan 2021 03:33:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc4d:: with SMTP id p13ls2302795vsq.7.gmail; Mon, 18 Jan
 2021 03:33:47 -0800 (PST)
X-Received: by 2002:a05:6102:2c4:: with SMTP id h4mr17323373vsh.57.1610969626979;
        Mon, 18 Jan 2021 03:33:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610969626; cv=none;
        d=google.com; s=arc-20160816;
        b=oTpu1Qm4zrzJLN1HfLlY0wLWu1AV2VPQFMmSPsta5thGrh/05g2/QmjN1+dxdACKT1
         d8InZ69xXoYKkjsUHiz7kKQ5LYTjELW1hmJLvjx1dsJDeGBGLUKYWk6qOnZavzXn0KK/
         ycr7Oun/03yGTouGEPKijQTd9JlYWZi2CLKIXAj5rSlQdl9+TMUwcFJAdHs229bgMRB/
         pgI3+UnNFAMNBJTjzZsIeaprmyCGS7fDx1MP5AC5507h2iYvKZE3Zvyed4pTpsSDiF5w
         2x3w5DacVQSpXpyxSc294p9QLB/ywI3IA51u+C2DuNxGLohR8Uak1bEzuY8t0nCvqI6v
         44Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9pbHhR8gyxPsQNeLyb1LDLE8KnlfETrDOSsphuY5KBE=;
        b=iNJvrw1nB33Zs/1++FLOMy06mRFfmipD9bR/OlltmxijaOV+7IdlBYEwLMd61zq6My
         jfuCNdVHzf8l16qab38awKNWVoRDUC6TbZUOOpSTXDgzlbKIumRl/ghxSq8wzBgPDdZ9
         VmZPW6FRN//8frIULZ6Be+M3hJxNfqPVkTIiQ+2Cg9UGqJzskCnD9W9GKvh0em21woO2
         dTyfaZ0jbZo1PS/grYffSX2zHt1v10d/uttGm0sSopDi8esDmVpxx9W4Xo8cJWAcwoyr
         HHP3Xq8jCMbMBxrci8v8o9gNObDp+EeJA6hFslia3if1x+SSj4wAK9aG18v98z+q8566
         rCtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FuABfqlz;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r13si1286638vka.3.2021.01.18.03.33.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jan 2021 03:33:46 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AEFC6229C6
	for <clang-built-linux@googlegroups.com>; Mon, 18 Jan 2021 11:33:45 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id i30so2990014ota.6
        for <clang-built-linux@googlegroups.com>; Mon, 18 Jan 2021 03:33:45 -0800 (PST)
X-Received: by 2002:a9d:741a:: with SMTP id n26mr9868986otk.210.1610969625042;
 Mon, 18 Jan 2021 03:33:45 -0800 (PST)
MIME-Version: 1.0
References: <20210118105557.186614-1-adrian.ratiu@collabora.com>
 <20210118105557.186614-2-adrian.ratiu@collabora.com> <CAK8P3a3dDgbppAB3Bm2iJA7LOqRvHZew1_e-yE1R=9mS4W4xjQ@mail.gmail.com>
 <87wnwafprh.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
In-Reply-To: <87wnwafprh.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 18 Jan 2021 12:33:29 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1wxZH_sX9eeTGecvDYGTcniF7_ZoSj8LSOFhCTo_CB=A@mail.gmail.com>
Message-ID: <CAK8P3a1wxZH_sX9eeTGecvDYGTcniF7_ZoSj8LSOFhCTo_CB=A@mail.gmail.com>
Subject: Re: [PATCH v3 RESEND 1/2] arm: lib: xor-neon: remove unnecessary GCC
 < 4.6 warning
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Collabora kernel ML <kernel@collabora.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=FuABfqlz;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Jan 18, 2021 at 12:28 PM Adrian Ratiu
<adrian.ratiu@collabora.com> wrote:
> On Mon, 18 Jan 2021, Arnd Bergmann <arnd@kernel.org> wrote:
> > On Mon, Jan 18, 2021 at 11:56 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> No, clang does not produce vectorized code by default, not even
> with the -ftree-vectorize flag explicitely added like in the next
> patch in this series (that flag is enabled by default in clang
> anyway, so no effect).
>
> Clang needs more investigation and testing because with additional
> code changes it can be "forced" to output vectorized code, but
> that is outside the scope of this series.
>
> If you think it's a good idea I can add a warning only for Clang
> which makes more sense than telling clang users to upgrade their
> GCC, since now Clang is officially supported. What do you think?

Yes, either a warning or a Kconfig check seems better to me than
just trying to build code that ends up not doing what it is meant to.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1wxZH_sX9eeTGecvDYGTcniF7_ZoSj8LSOFhCTo_CB%3DA%40mail.gmail.com.
