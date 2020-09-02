Return-Path: <clang-built-linux+bncBD4LX4523YGBB75GX75AKGQETRZQUAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CF225B2CD
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 19:16:48 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id q19sf281375qtp.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 10:16:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599067008; cv=pass;
        d=google.com; s=arc-20160816;
        b=FwliMVYHNl1vcq9+Hrxz8DEgG2U6YdDb/KzdtPVbMPQMBLRkfmjOMvY0hQBKtH5/s+
         KF1Pt4GqBPe5RQc3+M49ITF309SaukB34qt17fvVuzltJVxwGxNGx2g06W9sb/f3NbLd
         PJKHvxWJ1/BYmv7PlGu4dhDiO9bpwNw5xow1J2zDEcupBTLWoL2FIfijICta7f6Hnubu
         S29YohBsz0rBwcWa/cwC137OUZOioW7HSQizMj/s3GWXqKxbBFFY+AQ+SCyeS91xUCOj
         sCP5Fr8i6/R/KnoHMs2Vh7VBv1ygUutYw863d6ffiaACcA48DSqzKGWUlq67lHeuAN0J
         NeHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=2snDaQi/yRt//lynw26MECC+5DTEEweJq37096lAMGU=;
        b=noRAOiJt6WOFyJdMJ6BghsBb0inQM2f6svyMfnDct62nGflnI455ySseYqCwUowBNl
         YubVBE2HfVEJwDNeSWjDJsHofHRav29mC9x3o4Pqw33kq0sk/ObiDPKPT+I4rGMkAQCW
         fWJmmhqkmXQAB40j+gdW7OBbSnqq/AyogmeGXO/4jQjD4dAkr5O3DjC/J4WaVi9XzQQ+
         oQIEeb/cGrMkFwjiZQtAZRZniFjAP7fEDTFwlQKltbKciSXwxNv0sCYCwWZMZ+pvaKm9
         7Jbrwbz72LwV7pLWC5xiF7MtB879RHZPzTa7cS8RT1oQPPeyBDEYspfg0RXvd14581fx
         PPQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2snDaQi/yRt//lynw26MECC+5DTEEweJq37096lAMGU=;
        b=NLBSI2p3O+iYDRp2DICzQnvCGN5LansBCpxskn0flzn8DNxi0WK7Yvjt3EuyMVbYIi
         0oUj6NJfkE2/ILTN8kJoEplpiwf3qtyKecPvN1mSxPOvwFJ80jhlfBu5g2OtKHSD454G
         IBSYkHTCT+hH0qGMu+pZc4LrHkQX0YnTVkM6dAcvIQuq9W861d5WIA3xR8JACsSAUOEN
         MEiBRzyzqvtb4+LgBxPpw9YiXIeNd4InQH8X8q8yYUY/zNBl1N6aO8JsHVxEhMno/5LR
         lNJL1wDQVZbmJvk3cGypWdR8SWO4HpH90dnrQFmQK+v1g79VbtCYCfWsqLmYSV+Tq1WN
         SRQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2snDaQi/yRt//lynw26MECC+5DTEEweJq37096lAMGU=;
        b=pc79MvCcyLnOiJfcvBkJJEGnhrBsAgPgk0BJFRvkpEp1d4CxnP2SNsw04/RjGffxE6
         YV4zwUKOPLk/f4tq39KhrkENBZV7DpFlxzZ+Qs6TFjvJ9vR5UZGLYbbgqLoNovNeHpzM
         1PC8nITbI67DD/mLw/jBfrBB+isgEwC2tSD9UbxYKvqVr/WL2W2Z8ZH5+zZzhifLM0a8
         ZM+imFL/HiRxhIWB+KyM5ewXmujqZTjRp0SabObllPUm2w+pmfjcMSKVmDNmigSimSU7
         x9GX76PJl37ZPCxZUTsMmmy2Tj2sOZnF3yCHnjQZKDwsj2/dW59QPiVLY+x/LzS+zbYW
         xX8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532svY4uVYU3ow8R+7WBNVfkWbSPiUiolNHvTStiHjfC603L9MS8
	QrBF82fG1y+v8+G0I633Q54=
X-Google-Smtp-Source: ABdhPJzeKTv5i2wL6+qKrHT82TywZn9UF/E6EIPuPcSYn8Ans/hx6IQLrLx+XNvflr17TIBgu2tp7Q==
X-Received: by 2002:a37:a414:: with SMTP id n20mr8053228qke.332.1599067007815;
        Wed, 02 Sep 2020 10:16:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:24ba:: with SMTP id t55ls1126506qtc.8.gmail; Wed, 02 Sep
 2020 10:16:47 -0700 (PDT)
X-Received: by 2002:ac8:3714:: with SMTP id o20mr7939001qtb.0.1599067007487;
        Wed, 02 Sep 2020 10:16:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599067007; cv=none;
        d=google.com; s=arc-20160816;
        b=j5Cv27Xs9hi9VDIe5lv2uRoekadpfOfINmnYYR5AIrYNswOojZZAXOraVoewHSWcit
         Hg3GUU/tpN+gtptrCiqxQBLxLzhdrFdYzI3wA38ZYXFABtKZfD1hDsusrYAgqB3tIZyY
         X+yHhY3KhgqWLm/KnFXXwBv2mtgLWEV8ytMyGmh29uH26srty3l+I6n5NcpAGihBe8+M
         FptHBbUpoks2zc6pgyQvGnXLRhzkjGs99B/Oztv2RVpXGKyQZbDy10M6qg+qcrbTPG4B
         n2nkdPn8PHwNvQIMdv34EdDV0jrhH/1d+HKHr3X+gdPK2GNSt0GOfagEm4ZslZuaJW++
         OLUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ejQ7//gwy4OkJCMMLUHFFaWNycF6qfVy+K6zD1peZOY=;
        b=oAG8veu/py6mMzkuqIt0fiFjBIRtno1lL1DWkaslWZjt+cKB/MaHwnbcgRQfg093QN
         qJkGdF28TYijD1GNEAXlciuld9pZ8yAIp35C8I4HI5jMEHpvUjEARhI7Jbsd0jtR3d9E
         LBxA2QnVDGLizYk6/pZCE8eO94hShXHdioo53LkFwqJLgZLbzNf+TWwvcNkH5NILfBRz
         VLbGm9Iv/2YMB5INjxOBuZyMV9APUsu/KCZdaaHSjChHRrBr3EharBP/cidMfxdH9d2G
         eNzbP/GVISnoDm0l1zwNJGVreULlpoLCzWGbdSrOdkF2NKK18Id8i1AJVBnH6gVjjOM+
         KLIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id j6si4103qko.1.2020.09.02.10.16.47
        for <clang-built-linux@googlegroups.com>;
        Wed, 02 Sep 2020 10:16:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 082HGQgb008950;
	Wed, 2 Sep 2020 12:16:26 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 082HGOr8008949;
	Wed, 2 Sep 2020 12:16:24 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Wed, 2 Sep 2020 12:16:24 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
        Borislav Petkov <bp@alien8.de>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>,
        "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
        Kees Cook <keescook@chromium.org>,
        Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>,
        Andy Lutomirski <luto@kernel.org>,
        Andrew Cooper <andrew.cooper3@citrix.com>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Will Deacon <will@kernel.org>, nadav.amit@gmail.com,
        Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v2] x86/asm: Replace __force_order with memory clobber
Message-ID: <20200902171624.GX28786@gate.crashing.org>
References: <20200823212550.3377591-1-nivedita@alum.mit.edu> <20200902153346.3296117-1-nivedita@alum.mit.edu>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200902153346.3296117-1-nivedita@alum.mit.edu>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Wed, Sep 02, 2020 at 11:33:46AM -0400, Arvind Sankar wrote:
> The CRn accessor functions use __force_order as a dummy operand to
> prevent the compiler from reordering the inline asm.
> 
> The fact that the asm is volatile should be enough to prevent this
> already, however older versions of GCC had a bug that could sometimes
> result in reordering. This was fixed in 8.1, 7.3 and 6.5. Versions prior
> to these, including 5.x and 4.9.x, may reorder volatile asm.

Reordering them amongst themselves.  Yes, that is bad.  Reordering them
with "random" code is Just Fine.

Volatile asm should be executed on the real machine exactly as often as
on the C abstract machine, and in the same order.  That is all.

> + * The compiler should not reorder volatile asm,

So, this comment needs work.  And perhaps the rest of the patch as well?


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902171624.GX28786%40gate.crashing.org.
