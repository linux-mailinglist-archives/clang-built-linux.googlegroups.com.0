Return-Path: <clang-built-linux+bncBCU2BBWH4IORBWF55X5QKGQEFYBKEJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 135E6283DE2
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 19:58:49 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id c204sf123303wmd.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 10:58:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601920728; cv=pass;
        d=google.com; s=arc-20160816;
        b=eO1epvZOYBx2r7Ap2uG9GrG7LnhzzgPuQFOrKWby61qdz/+W+RFiVryrACLkjV8qwf
         Z3wCNGVygeLaRPEbPr7zjaEknXukJUJrWO6Gy2MSKZmdJw4uMELp1aHC00mkWwRhXPJp
         pR7QdrPfGrHlEGvLaDZ/hpMpnA/jByUhn0SDPCyZPc220aqRKC2xMVU3dLA6bYM/UqRX
         Q/es3XpZK01WdRna9PG4IYY0FlzyQXo7l0MEYPFffIbc4D2FG4MkFltsF4UOCGZ6++Lm
         YsepUiGFFYIJ2ecmZibHZw+z2fxZo/7Rdf/VgcvHOhgN4qC05RscTpgiRIbnc117XzSm
         v5NQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=qX/xY3sVhH6uKb3XQBtb9zkxBhz7vyi4KM3L+SmZGQg=;
        b=qxocFqea3v3km2lwJmj4455SGrx4yS8EcBRXgCvoMnVWQziC54E78/kT6p7nZfh5UB
         bW1GVTkU01Xp7TpAhCtxLdaIoN+NZslT4LUaOIV8TE9yj53m+185hHluMtVRe5n2mp05
         +KR8vNHiQyXqh8+ySIPSJRnJNKyXcPGM3HBvnWq++s2QCDrmFWY0pCtGNzw6tRerJ3SA
         yw0OP5dBADfPt7cfOjy06N17egmw7ToB2ykgJvtUX4n/nt51hTU1V7iLIhdmSEY+YzR3
         fGf+i0KSazzjqArb9t/MLLCx53VzdYdgsqu7Eu0UqqYPrxnnE4+rydZ80afr53TKLUD/
         OmCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OXKb2fbf;
       spf=pass (google.com: domain of briannorris@chromium.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=briannorris@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qX/xY3sVhH6uKb3XQBtb9zkxBhz7vyi4KM3L+SmZGQg=;
        b=srxFIZlYEyuYJb10gGT9xG3lO3BbZn+l1m4mMM4N/jQswv5EWmiW1SnRudlZCZRR6W
         wjbYrDh2JT29nrJCT4c9XYi2FcosqytdkEwKHsQM8Ew8TMGkg+o+YilTV+PiszubqnSx
         dDsBiQZr/pvoI1N4FvFQJ0ZM7WunDiu2VDIY/KAS1bBQPnA9bdtaSJSXomq0CROIFu15
         c+40sOBwWpgr5zNqBWB8b3cozV82kSpYjDO7inrTRuKNVGQ/LpjMg5pGU9kvYCFcb827
         P30H2zO8a2H++fmIjGTOGbPOtnfhZxPIUuGT1hI3AtvAInOsMVsOcxuPM6tTkIwBoo7o
         LVXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qX/xY3sVhH6uKb3XQBtb9zkxBhz7vyi4KM3L+SmZGQg=;
        b=PU1NhuN9LShSGlaq8T6cMBDhjXHUhtoZ5cVKBrOmv/ilJIZ3e3N1PZrKRyTKr+H0hZ
         k6BNVU4a7Ni8qOMzwm80vjJf3Zb77kkbQ2j8Rh0V+CPLeSid9TCDz1kN/zM4e1g806m1
         eW+w+j/NjvGXCZh+kKPYnlfZLq2l+xDyYACGyeigcPzhe/y58WFWyUwwiLvL+HBny072
         2EmSTq31hqeYYtZxzLiz0Ihr55RFNefHqjRdsXavFhPWlLV1MTjofULXP5YYSPPm3F2P
         XLgXM982YEkYvYVqwAP1X4wIdf6qZ0oJiG7QrRmPwkzBzf54Y0lkYxisdC3KEnaJa8LY
         F0xg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338Do4PnplzeyMgi9m8AEi6rfw1SD3d7AQJO/C2Sgsr7E4KX8Br
	r6n9nnYEnWvzNJ46aqiBCaA=
X-Google-Smtp-Source: ABdhPJwXHiPEP8sfEGJZEGBTGTG4pnk3jehJ3ssD4BLzBSD6GB5XbAjaYIr4lWmzEEtbGJtBZuH9Hw==
X-Received: by 2002:a7b:c14f:: with SMTP id z15mr579445wmi.73.1601920728832;
        Mon, 05 Oct 2020 10:58:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dd0a:: with SMTP id a10ls1387253wrm.2.gmail; Mon, 05 Oct
 2020 10:58:48 -0700 (PDT)
X-Received: by 2002:adf:dd49:: with SMTP id u9mr634653wrm.392.1601920727926;
        Mon, 05 Oct 2020 10:58:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601920727; cv=none;
        d=google.com; s=arc-20160816;
        b=kssCMZX3F6i9804tq9B3Ic/RwacUdCw1uYNws0cKjsa4eeKDu7qPJYCUsuwBIhLFkB
         cEaeWFPT5LGWwQGo6+hRDcEp0SWd5yM5M3pYrTGQ5WvZTyM2YBrRVHOp9Y5yR7lAHM9Y
         PF8yfMQkCR6aRD7Zax85F+WFvz64+XmYd3H8jxiVGuKhiHNN4aVacx68fCKGfK8U8Yn6
         MYrgWfGb3bVqmctS//XUOoqVzDPJeNtpLcQiQALnGoeSMzMbb6AhEDLXXB3/dNJDqqPm
         DiHp6X3FhABT6sPIYyM230LQEojcmISmlUbn47ipCaZr9WRk6VNXB5VtO1JykzVUqVAf
         0SZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VQapKerqEPOfWjuVkuWjhpBPHOAY0WMdQww5oZQ+egs=;
        b=sP0b3A4iILDxeG5qkAUXraNDvdmrqB4DNvenAkRLUiJWqYgIJ6U2sM0TbX6TZKtk7k
         qbWgiWRiMcXW3wl0PtWcrmWyMghKh0OsTjIwWPC8ZZOJ4mG7JXC9WbQimuhq3pT6PO9x
         MqDUdnAop3tRDeDwSEqO8JIAq+UUsnsbMFhkdLr2ffhim5t2EpOJISuKJmnVwHYt/00U
         xzhWDQ8/d6QhsodGtari/8GmXXmFUJFOekUkl/Ky3C4n0CD+96ZhJf5jHYj8SKfPU2jp
         0tG+2HIEDqnZzARIlfdr3Nu5kQaPQG13LlKF8aL6DqrfXNouOSN6V4EwGCTA7/ZrMkN0
         /6GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OXKb2fbf;
       spf=pass (google.com: domain of briannorris@chromium.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=briannorris@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id p17si13192wre.2.2020.10.05.10.58.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 10:58:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of briannorris@chromium.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id y11so11956851lfl.5
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 10:58:47 -0700 (PDT)
X-Received: by 2002:ac2:5df3:: with SMTP id z19mr182439lfq.567.1601920726667;
        Mon, 05 Oct 2020 10:58:46 -0700 (PDT)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com. [209.85.167.43])
        by smtp.gmail.com with ESMTPSA id q23sm103703ljj.12.2020.10.05.10.58.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 10:58:44 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id 197so11919627lfo.11
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 10:58:43 -0700 (PDT)
X-Received: by 2002:a19:414b:: with SMTP id o72mr224618lfa.23.1601920723274;
 Mon, 05 Oct 2020 10:58:43 -0700 (PDT)
MIME-Version: 1.0
References: <20201004131931.29782-1-trix@redhat.com>
In-Reply-To: <20201004131931.29782-1-trix@redhat.com>
From: Brian Norris <briannorris@chromium.org>
Date: Mon, 5 Oct 2020 10:58:31 -0700
X-Gmail-Original-Message-ID: <CA+ASDXOrr7k73mOizNGxPxXQ=bHEMUbTtCnoEusj2vRAaRPufA@mail.gmail.com>
Message-ID: <CA+ASDXOrr7k73mOizNGxPxXQ=bHEMUbTtCnoEusj2vRAaRPufA@mail.gmail.com>
Subject: Re: [PATCH] wireless: mwifiex: fix double free
To: trix@redhat.com
Cc: amit karwar <amitkarwar@gmail.com>, Ganapathi Bhat <ganapathi.bhat@nxp.com>, 
	Xinming Hu <huxinming820@gmail.com>, Kalle Valo <kvalo@codeaurora.org>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, ndesaulniers@google.com, linville@tuxdriver.com, 
	Nishant Sarmukadam <nishants@marvell.com>, rramesh@marvell.com, bzhao@marvell.com, 
	Frank Huang <frankh@marvell.com>, linux-wireless <linux-wireless@vger.kernel.org>, 
	"<netdev@vger.kernel.org>" <netdev@vger.kernel.org>, Linux Kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: briannorris@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OXKb2fbf;       spf=pass
 (google.com: domain of briannorris@chromium.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=briannorris@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Sun, Oct 4, 2020 at 6:19 AM <trix@redhat.com> wrote:
>
> From: Tom Rix <trix@redhat.com>
>
> clang static analysis reports this problem:
>
> sdio.c:2403:3: warning: Attempt to free released memory
>         kfree(card->mpa_rx.buf);
>         ^~~~~~~~~~~~~~~~~~~~~~~

That's some interesting static analysis for a compiler.

> When mwifiex_init_sdio() fails in its first call to
> mwifiex_alloc_sdio_mpa_buffer, it falls back to calling it
> again.  If the second alloc of mpa_tx.buf fails, the error
> handler will try to free the old, previously freed mpa_rx.buf.
> Reviewing the code, it looks like a second double free would
> happen with mwifiex_cleanup_sdio().
>
> So set both pointers to NULL when they are freed.
>
> Fixes: 5e6e3a92b9a4 ("wireless: mwifiex: initial commit for Marvell mwifiex driver")
> Signed-off-by: Tom Rix <trix@redhat.com>

For whatever it's worth:

Reviewed-by: Brian Norris <briannorris@chromium.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BASDXOrr7k73mOizNGxPxXQ%3DbHEMUbTtCnoEusj2vRAaRPufA%40mail.gmail.com.
