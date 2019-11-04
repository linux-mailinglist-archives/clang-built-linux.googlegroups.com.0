Return-Path: <clang-built-linux+bncBC2ORX645YPRBBNLQHXAKGQEST7ZGNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 69744EE4FD
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 17:44:54 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id o2sf13388132ioa.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 08:44:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572885893; cv=pass;
        d=google.com; s=arc-20160816;
        b=xD9cXzbAXP9RJmU0KiSaqgUrs8ySdVQvBYaoOlnq8EVTb3VBRyFeUD6BTwS0At7q7Q
         dBSApGKzAiC3m1IKQuhPw4q3hHcLXn9tgNXiNKMMpauYwAHRKFZSW9TLWTIahoihAwI/
         PFOx3Z0NUG1NuIB46ZcfRsIE9PKLDuMKZsN7el9cfgcw69enUP5/rNEPDKBTUQn5LFV2
         MOdbztaJNoceAAB5h4D+elPL3+YTfKphCb4zK/etbZQaTO+PNl4GPP/DDm2wNzGzdqTd
         FSQ2CE9+9XNXZxO4hjkO6jrrOXUAOqSzx3RttY9XXqnNVi6svxv0G+5T7/NZdrhrSbsi
         Y6Ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5H198V2H2JhLnidBt0lme05qmpQ8C87gp1gLaueesQk=;
        b=d0ybxG39YrgS1urYax53vp905xS3+Aor5VdXjxSuW2uGZOhJxLcsJrsSiLPCkCjl06
         xnwoi6q7LH6ZsqFQmTjTvOPzm4mwMdRAJcAUWpoh/cBYsQBghsm/lCk+DAbtPCY1QuT9
         PGS6NL/J4XCTykaOdM5Ar097eIGE3u04VG+TEbPv2sQES2Um63isSIh6/K1AaCYxaR4E
         5IJ/XbGel+WXf27MgP0KWG04ta2A1xnycY2TcPgNQD/cutC+68gJViD2bXgEYK3FHN4Z
         AoyuHQ2PyIZns45uNN4beYapHBoBupBYBDk+ZNuronhIwYSnXP7Dgjk6WmRnzX7VBgPx
         3Pvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qEkD0RxP;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5H198V2H2JhLnidBt0lme05qmpQ8C87gp1gLaueesQk=;
        b=fmzKrUxYrFW9OLKS8fncoxwCfUcbXzI+0ruKzSwIaX4x+B4zxT6zcXemFTgZWq3gw5
         LU0a/5leEM8UcUYwNccm88CK/09VNF3Nwg8HEjIAcm02gn0f2geB07UZcj1kiKET4ycw
         HABf0d9uuA8RGAszb30No4lyCMLgkI/XqG5AWZipwlHgJDkyJFSU1sW1INByTkicrLgP
         Iwwl68ZJyZSaymQYbjnIKcNhL54+3degrd5RKIDMnARU3qpiTxmJFSI1rmf3ecYH5LIA
         ziKGyDjMwEkpOZGdKa9zICGQKQRhqapvVN/g6lFRRUMmtifYe1rHdj49iPk+IwOOhA72
         dzDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5H198V2H2JhLnidBt0lme05qmpQ8C87gp1gLaueesQk=;
        b=gfl3CMAEhTZ3FUFBIdaOFR+T5nn4T4lxptA/N3x2rqh47jbAYHUS8a3gTKC+cUGp3F
         DVcAI4GG3mJtSj9PlNEUPfKYMIASlqNiYbyBt6lyyBM0DS2NDDKNWtmankKPqg0D4vkb
         xzgTWv7yXHPWJtP/DYVwJsBSkiltJfjquBU1x7DNugngBJ6O3d0KGqhEUyBx/lZ4zZYo
         GvzA7DHyB5cdeQRVeNn95geeI8Ueyo8xyMorj2XssnggeqqrUJHCQTaszzHmYyErroEu
         15N6hQLHdP7hGKB922wHVAm3LF5t6bg/VAlTtkFF3UlujaafeAhhoZ6UKDQ8supG+PWl
         IQLg==
X-Gm-Message-State: APjAAAWnmnOQH65ov0BwX8d/8xEi4044XoXjLQPc7LZp7xfTzrumsvK+
	22B77RBPUIArda1AnlawHAE=
X-Google-Smtp-Source: APXvYqw14j1Ur62Z9rkwNqGmodlIdCr8551PjBG0wJ8HjN4c2K9Yt97gJKhyYq7DOgG7i/S4IQ1F7g==
X-Received: by 2002:a92:108f:: with SMTP id 15mr29462920ilq.250.1572885893297;
        Mon, 04 Nov 2019 08:44:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:76b:: with SMTP id y11ls1045934jad.0.gmail; Mon, 04
 Nov 2019 08:44:52 -0800 (PST)
X-Received: by 2002:a02:5e48:: with SMTP id h69mr3344448jab.97.1572885892914;
        Mon, 04 Nov 2019 08:44:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572885892; cv=none;
        d=google.com; s=arc-20160816;
        b=JlC811+wKylUkWg131jYyjbFgWCBfk3xwSPaTAGVl3X64ri8/JGU23CU5epijihhzJ
         I8f3/fCtfOdABx43tct3RZd/Q5eZy+0bZ8kP6rzVrorsDY9QEE5COgL5vfsFRiQtG6oM
         VxxeMW8NNdeSf8B2rV3dfu03FX+FCzHLUSyT7TAPR0vgP05GEy9tyqTcMiVTem+IOfWC
         nVUFJYWada+G6emPx1n8pKqEUmajwzLvnMt6VKMi3VFtmGvjWuqx+VeWO9HUfzJgEkD7
         q7NxG1nSKXK8GOME3oSrdcqUqgWMcVI179PkmGkhCVDfAcxDPyZKEu0Yjeyu8ErZ7p9t
         Cq4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q70jm26u9XZ544CMir5SgVhhn3tMv2fVqzMb9N7sOwo=;
        b=rdpGx7pNQKDfIcWeY6P/SIfpqBJg7emJ7EBhhhg3zypH4uSem/ZZchHYr6NmR9ng1Q
         EGveQEhNneS4xa7G6kzw2RiX9KGKnqgpn/YH6dequLnifeyDG4GjXjvOea3/ENs0TXZt
         bT5sULJWsuFocGn+QUjhIG9SdsoyIy/7qMRl5d9LH11JV8u1M3YHOAQEywlrHCbLXLle
         ad+rv3svIp2EYPS4P6k3vU6WwFUu/4HlcTpMvznnyKn6kpwaO70qJ4Bx/vU+mggPhktk
         0jtuV0hHg/Ui2vYmUzcTxdgC6YfOszQl6YMIHwJnoKeQKf4iFNrbW2M0dYCxOECuWd+G
         Uysw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qEkD0RxP;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id x18si1064433ill.2.2019.11.04.08.44.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 08:44:52 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id q21so11427621vsg.3
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 08:44:52 -0800 (PST)
X-Received: by 2002:a05:6102:2041:: with SMTP id q1mr13051687vsr.15.1572885891823;
 Mon, 04 Nov 2019 08:44:51 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com> <20191101221150.116536-5-samitolvanen@google.com>
 <20191104113929.GA45140@lakrids.cambridge.arm.com>
In-Reply-To: <20191104113929.GA45140@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 08:44:40 -0800
Message-ID: <CABCJKueiLpJTB3Vv7EpuQc5mn-n5k2x12dyXsuBdvbp7dDYm=Q@mail.gmail.com>
Subject: Re: [PATCH v4 04/17] arm64: kernel: avoid x18 __cpu_soft_restart
To: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Marc Zyngier <maz@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qEkD0RxP;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42
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

On Mon, Nov 4, 2019 at 3:39 AM Mark Rutland <mark.rutland@arm.com> wrote:
> Trivial nit, but the commit title is missing "in" between x18 and
> __cpu_soft_restart.

Oops, thanks for pointing that out. I'll fix this in v5.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueiLpJTB3Vv7EpuQc5mn-n5k2x12dyXsuBdvbp7dDYm%3DQ%40mail.gmail.com.
