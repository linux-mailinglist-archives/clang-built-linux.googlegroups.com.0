Return-Path: <clang-built-linux+bncBDRLVLXLTULBBYENST6QKGQECLCW3AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C732A911B
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 09:18:41 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id 8sf139375wmg.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 00:18:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604650721; cv=pass;
        d=google.com; s=arc-20160816;
        b=acKl6yCyrux+Xd3nKGosZiBS7FKGGWGKdaUwIW/yeJPNFIfQc70X8fOGLqLqDPmoDK
         dTsJjeG4Ro8t2COHAm+1UCcE1Y7QRnx4fMLO5cl0AGY3somEifm0HY7Z6eZFTLiAGY/p
         E01S6xQNav7Rp1RQ5YBz9gJkX9unbNc1KjaufyS/VYgm6hl2F+2YfJjcY6kD09Px8mZ3
         9y1nmXQjF1yUDctPaZriXpi/phPqhuSuuQaRE4kdcFZJVLciiPS04VIUeCHL6NE4PCf1
         z3dXG8aOjHB/0AIYWMkSlYMjnRQ2UhR6GxDauzS5uyV5HL0j6RO+plsVi6uIBGCCf2Gr
         SX+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=iic4SpNsjGBhz6ieetwbxmJdr2QYDQtcvuCqzQZF1t0=;
        b=jUJqubSI5UGHh7ZiVIaDA2o/woSQ1jYPGgWWXvqdX3JoPI9b6qwbwprnHOCQuosiY1
         AEMpWO5+pXYt363Nxktx4on7Vr1LH7/X4eVD86SHmGuJ25A9clM1hHSn1pxhCtc1D/3n
         HMtpMUV4GkJh/kNjziPy3qtZLrB2zc3BvnKuFXiFnqXFV9OYEMD1yT7UIO/53FRdHTAm
         CW6Ai7eDSt6NvNlcCkNaOLdsRW7oO6yjcuA3E+VtGO7Pw54pDry1orMTRc2TM8FSTlDY
         fvNzvkKwBdAfeMU1xeLfuNHupugx0IP5bhz1pCM45RQ6AzDVaFx6RmhuZplZwAhMSdtH
         QZCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=yhXy6gcG;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=U8exzy41;
       spf=pass (google.com: domain of john.ogness@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=john.ogness@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iic4SpNsjGBhz6ieetwbxmJdr2QYDQtcvuCqzQZF1t0=;
        b=d2ZK8UWKSutSP1/6QcVaycZNJeRYK/ejMNl3HmSt7YIJWANU9y3saHnuKJ0VmaOMXu
         feh7pRw1d+sp/6/X65ZslT5q2wJNf0Lzlz1967b1UhzpsARSXhqJFjpexfVJnIb2wh5U
         xd2xJb2J/J9H2Dl5Gl/XZ3WqxCs9MKbwIarbkjfYZJMtQrRV2Fvko3XrqD0gJ6tEb1b1
         PpSn4Zr+4044qWa4D5W2H/D8+biBuKJv5PmTH97/TYK5Xj8v78QrwweBdFohLNAYN8cT
         Wckj6hB4MsMFsR9NpfGitI7AcASCoGZWsfj4HFuMJNQtPLbvrudzTr5bTLQe8oNIw14E
         hRpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iic4SpNsjGBhz6ieetwbxmJdr2QYDQtcvuCqzQZF1t0=;
        b=boqJbW1E4wm+l1MJXFieAkwKyxO6xgHUhaw6YnGJTpXju6MFwJq8JD2hYDfOVOCnIY
         cBB/TVskdWU2uB7/WdOtul4I1l3HGPQtqywx2y6YK+RY/N64BrK/NIM/yJhPgD+81Jj+
         UswqwBESCW4BZPj8vxXDEipagJsy6tXu5f85gOdoqvu5NZJhWgNbxqck87kslj8LdSrK
         Z6nLBzWS1Kq6WWYn2zPWmgX9lUnoLZskg1pqLQbwamh9KFlNmB+aXEe5AKcgWPaSFMNn
         5pvipN0s/xAZ+v2DAQCoCVYYegNh7bT4St6m0xtMllpm5E2zrl8YwCw1w34nNGBnZAUf
         F5iA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Bl5dreRnB8Stwak4myEwso4QqiHDnKA9PJ9e7vVNhNoHVem+g
	OtW3o0+v/DIIxEJ4e8bHBUk=
X-Google-Smtp-Source: ABdhPJy2Z8dIGpW8edCCSSo7J4VbjjbB6S2mr66zoCz+jSJ2fIG2Qv6JqweMT4uAPnVn5uc7t8lhlQ==
X-Received: by 2002:adf:ce91:: with SMTP id r17mr1351562wrn.326.1604650721140;
        Fri, 06 Nov 2020 00:18:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:cd8c:: with SMTP id q12ls267372wrj.0.gmail; Fri, 06 Nov
 2020 00:18:40 -0800 (PST)
X-Received: by 2002:a5d:69d1:: with SMTP id s17mr1346555wrw.77.1604650720325;
        Fri, 06 Nov 2020 00:18:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604650720; cv=none;
        d=google.com; s=arc-20160816;
        b=wj32vTDCjP2NINOv0mBkIMLMT3sZb2tH4LalEaB9wbKEC7S6cAX9e0Jww1YH5+nhRH
         Lhig05BRZrGUg4+fVakuXLIhK7917vbQz0fk+Srli/9o8JBhsKMxJONm4d6KSsZMcH2V
         2AQgKDxpigiqCifN0gEe4H5yvsfXaRJfaGP9WK8wnD2e5P3C+61P0WLAlTZ/rSuM/bDU
         zb8PQNppmpyW2JdswIHDqICNRPa1ECbiHWuSUwn1QOny8RfWek94ZfN0BURenxsfXmkf
         O2CCwDcElzh8VA1nok5k7uKRACIYgFSoKs2JwQYVw8sygQbvaQAg4ydl4uT8iMdvj30c
         SeGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=QGCORwOg18faQgRDXRDoAOZ5EtYvujQ10ImekmNwcQs=;
        b=sIHZaOeFbuDJlle9UyK/cB0oGgNecxDsc85o36SP95Uwt4GZYeGOJRLJsLLxLY4+QL
         zmi/cDSUyGirxSa2YmlMcGlO/SOnNPXGljMZitK/+V7j0+jQr7MXHcoDuHsffI1lGuow
         bGtTuaId00opUgFlok97jqA+YVe8SSG9XgpQiLI57p5xN0TxKLlSyXqxazENwq27HlM/
         yzpSuESvgpeLLEGDikiobr17phdfbTWF4TJBNnAAmBcMIdZSMoAw83C8oFCNZu6kQFTr
         3asgoorfcvFuybznS1TFUZ7/PXWyFmoWfcJxRU6c5qOWRtUcAtn7b7cuQtxEcy0ihaEt
         G2bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=yhXy6gcG;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=U8exzy41;
       spf=pass (google.com: domain of john.ogness@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=john.ogness@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id c20si19796wmd.2.2020.11.06.00.18.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 00:18:40 -0800 (PST)
Received-SPF: pass (google.com: domain of john.ogness@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: John Ogness <john.ogness@linutronix.de>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Petr Mladek <pmladek@suse.com>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Steven Rostedt <rostedt@goodmis.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech, Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: Re: [PATCH] printk: remove unneeded dead-store assignment
In-Reply-To: <20201106034005.18822-1-lukas.bulwahn@gmail.com>
References: <20201106034005.18822-1-lukas.bulwahn@gmail.com>
Date: Fri, 06 Nov 2020 09:24:38 +0106
Message-ID: <87h7q2j3tt.fsf@jogness.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: john.ogness@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=yhXy6gcG;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=U8exzy41;
       spf=pass (google.com: domain of john.ogness@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=john.ogness@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On 2020-11-06, Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
> make clang-analyzer on x86_64 defconfig caught my attention with:
>
>   kernel/printk/printk_ringbuffer.c:885:3: warning:
>   Value stored to 'desc' is never read [clang-analyzer-deadcode.DeadStores]
>                 desc = to_desc(desc_ring, head_id);
>                 ^
>
> Commit b6cf8b3f3312 ("printk: add lockless ringbuffer") introduced
> desc_reserve() with this unneeded dead-store assignment.
>
> As discussed with John Ogness privately, this is probably just some minor
> left-over from previous iterations of the ringbuffer implementation. So,
> simply remove this unneeded dead assignment to make clang-analyzer happy.
>
> As compilers will detect this unneeded assignment and optimize this anyway,
> the resulting object code is identical before and after this change.
>
> No functional change. No change to object code.
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Reviewed-by: John Ogness <john.ogness@linutronix.de>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87h7q2j3tt.fsf%40jogness.linutronix.de.
