Return-Path: <clang-built-linux+bncBC2ORX645YPRBM4B6D6QKGQEBY5XWUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5E12C133C
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 19:34:29 +0100 (CET)
Received: by mail-vs1-xe3c.google.com with SMTP id h190sf2037394vsc.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 10:34:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606156468; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ga18FyRYTPFzubIqXRLkzyQ/hUPnXptrVchCwsY+kgyTmYWQJd+1wqoR4tVk4C2WJO
         VgT4ubRcLMkm9GW54hs78r5r0A8sMIBm+qD80oMZRTJxpGwCXbsX8Wf0dr56u9We3IzN
         muil9Ux6HQHgpGYvKKzp2TNBxrcQV1BHZeI/EOrCBrGan2hC4nM4GORwOYsweq5toIyi
         XASMf1zneKM1GeHyFeGKlvao4fHB38CYOQ1TwYqFHiraZDgQ/9M4A9yJS/YTVlvExZWp
         Y6oFdk/VDCdMvvxx7Bvqy2/AZ0NCBJ2DWYfkzwMkxP2pajMiS7iYEknDI3nV3foVvasl
         2ZSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7lnCFGSaEw0FZ6dg0OdCTeEYtGWhG3bOPODsr1lggzE=;
        b=hT+UDJ11akviFmkCsZB9z05iosQ1bwiAGHEYAx6+m2xm+wjZvVvDJwtGPkwvljOOi7
         BYUjQ+oqHIPrdwunq5ZmmTEF83vAlFOJxh/dJrOHCpUItlZTrLFevuxgu6cF9J3WI0Jq
         I3e+zyHMq2xHkPCU8kR7xNR08PEKoJ0BmG7BzwxVDUxj5A/6yNZOp/62XAr+brM+EyQI
         kcyTnbHTT49tycg3dr5D4ldtlLr5XmE/t9EPqEsSgEV2aVJGdb1j2ku/sdFtErW98dn3
         66nDptnempQUdce87F4EKZT/QG9p5/f0K7TOFrzU/PG5eD3ope6EZjPRZubmQA1k6BX5
         LtoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a28npanX;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7lnCFGSaEw0FZ6dg0OdCTeEYtGWhG3bOPODsr1lggzE=;
        b=StCSKh19SJFpi6hFc6pE2UK7a7Mb71bwiKJ1gFuIM+MdPraQkX5GxaAlUSFEoyO8tW
         uQiuNQbGgu4wxxhYAfzuyaIcxTdbddseVaZ9O7gNSgneHNBoRVv5bqCLyCiv/U9dkjj1
         dkorsvovhGQV15luaHKGidJS/5H6JXQxFbqBttesZUj116/ybIc3fdVfjWCYkpv2XUna
         zyuGZpJkqXhAAqtwuBYNRS+nS8N37PGdJ8NVaeyaUl9xnUOuYCb2v2RBwueHvfc364wr
         rE+lLJNAsvF9nGv1E2tGHGIci4nhfkKC9VZp+iKQf6dogVm+XE7HWkwfCDYgfA5dsPzz
         IFbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7lnCFGSaEw0FZ6dg0OdCTeEYtGWhG3bOPODsr1lggzE=;
        b=g7Ax9qPNZt2mJKjololnZjzqMMreznh62btrQTA3rTpzEnkO5L0DaMf4MkgToK5+dO
         +VZ1MhxaxB55ulAX9c8kl6lFc5U4D/rdANUfVZfQG2rmAFkh/u845I+D2LZut03pb+Ex
         G8EacwKoU7zko64wFWdFqQCh2O3A2wuzwe5E5pwzqthLLAYA2k8jX6w3QzcHFpo673a/
         Kw3soQmk6bUnmudn22MO54mJrTNk5w+1LY4D9ezjCjOQWk88DZux/oRVp5LCWAdzu4TU
         H+j+pjsDJ7ag2cK9A405Z/0EGKpSIWIOtXgib/F/IH1Uwv8l/vtEbnh3a5ZyKs86TDsy
         hFRg==
X-Gm-Message-State: AOAM531pjzvZIxCnAv/4vH9qaqddI0lJEEyA+L50anGgCAa0r3H+yCeL
	YR0/Tcaso5dVnIaN90IPWBs=
X-Google-Smtp-Source: ABdhPJxKGzR+BT62XbAw16Me6RplBr8/lHD2YeTbWbxAAsndX99rCK9p6ZoDyyB8OyiRV0+Vm55wIA==
X-Received: by 2002:a67:f1c7:: with SMTP id v7mr1252173vsm.40.1606156468034;
        Mon, 23 Nov 2020 10:34:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fe4a:: with SMTP id m10ls1988757vsr.8.gmail; Mon, 23 Nov
 2020 10:34:27 -0800 (PST)
X-Received: by 2002:a67:af0d:: with SMTP id v13mr1179917vsl.11.1606156467570;
        Mon, 23 Nov 2020 10:34:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606156467; cv=none;
        d=google.com; s=arc-20160816;
        b=lboNPC6T6IeehCg3pHonDgZSRhOJVADgsVV9KxoTT1PEjSjROhZpCGmWLyhBf3xuxi
         IN03enj5DNqix3AhkuCTqMKKT4UbMqS0vYju7FBCcH4tNowxaBKQJ6KJ8l9U4NgAzA4m
         a3U1ykp/aQ1hlgjlZISSqwpT7dOrihA9Urk35OVCmTCPYNBDRWA+P8Xq9T6eA5XSNWya
         LXV9W6vD+2MLykLgjM+x57STybarFiQY3oJZruo2ZDnaxnHuWFYwLOerNeitlLEIaKdg
         kVm9RFsGtwfTx4HrGpPPnavkLit6hZSD/VPvRO/yen6zlDHMLHfDB0yk62B4SuvMTdum
         vrhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ducm/uE+sMkPK2UOgkqYMUQ4ilvqi+LJ419ruam/qFs=;
        b=kDyPZkCSoYfQDvVQN4edVnEdmB+AKacS/9ryJ1jTqpeSeF/Zp4xIaRPL/H3QEWP9k6
         ypYnoIM5Dgej5vVdXnOjq9XG6OEfT68N8t5/urWZZ8jxaqyqKqZHRTNTXhIeDr31mUiQ
         6qpKvBDXtrcXzy4Xl/dKWAon8uwmqoa6IwdlG9E3HneH4R5GNuyJcTASPPvYcbhB/ZV8
         AwyXRexfjSQWomRcc4Xlk49b2l1MKxq6mDmd2ZRH+9NLKXmgOUiBA6Sf0s0wSdyOzUjy
         BbrdooscS8EraEn30LW4bnJpHLmaWtTp4E2Ok/FkKl1e5Cb1cnD8Y5E9cQ379Wm3DvAX
         JE5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a28npanX;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com. [2607:f8b0:4864:20::a44])
        by gmr-mx.google.com with ESMTPS id r18si733229vsk.1.2020.11.23.10.34.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 10:34:27 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a44 as permitted sender) client-ip=2607:f8b0:4864:20::a44;
Received: by mail-vk1-xa44.google.com with SMTP id s135so4176196vkh.6
        for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 10:34:27 -0800 (PST)
X-Received: by 2002:a1f:b245:: with SMTP id b66mr1161485vkf.3.1606156467081;
 Mon, 23 Nov 2020 10:34:27 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201118220731.925424-16-samitolvanen@google.com> <20201123102149.ogl642tw234qod62@google.com>
In-Reply-To: <20201123102149.ogl642tw234qod62@google.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Nov 2020 10:34:16 -0800
Message-ID: <CABCJKudwt6xDUMADRjXU04bxZFFWOFOs_26TJGHV_vnP8Qs5Jw@mail.gmail.com>
Subject: Re: [PATCH v7 15/17] KVM: arm64: disable LTO for the nVHE directory
To: David Brazdil <dbrazdil@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=a28npanX;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a44
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

On Mon, Nov 23, 2020 at 2:21 AM David Brazdil <dbrazdil@google.com> wrote:
>
> Hey Sami,
>
> On Wed, Nov 18, 2020 at 02:07:29PM -0800, Sami Tolvanen wrote:
> > We use objcopy to manipulate ELF binaries for the nVHE code,
> > which fails with LTO as the compiler produces LLVM bitcode
> > instead. Disable LTO for this code to allow objcopy to be used.
>
> We now partially link the nVHE code (generating machine code) before objcopy,
> so I think you should be able to drop this patch now. Tried building your
> branch without it, ran a couple of unit tests and all seems fine.

Great, thanks for testing this, David! I'll drop this patch from v8.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudwt6xDUMADRjXU04bxZFFWOFOs_26TJGHV_vnP8Qs5Jw%40mail.gmail.com.
