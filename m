Return-Path: <clang-built-linux+bncBDAMN6NI5EERBWON2L5QKGQE7UBF7DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id CED9227ED6A
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 17:40:10 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id a25sf620044wmb.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 08:40:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480410; cv=pass;
        d=google.com; s=arc-20160816;
        b=SQHK0a0SR1wfq1M5kEUWFSunIVuna+N5KzfO8LEJSgk1DEWIo1kOFDMF6T+iaX7ISQ
         UB97gnrwuXr7mfTf2trWdYspEAim57Zxfa1SaV2nFrnLQ9KfxE+/2kbukZHE38Ui+zrh
         Z22dGw6lf8FidPFrk6yhuZlsS7NCdxUPXEqdg8y2x7jeHmoZ5w02iSeI1EG8bmm9DyZZ
         R40HH6uMB7d84SHXwEz3lTpgoe5ADkXZjE+TP653H8omNCZ/JYWyAAIotG+kel+3wlPa
         L6W4oYxabXJtmdarIVklAK7NYjE3kE4AP3ljupQm8hL93ktTXzaHAMrp84Jenj98uHhe
         nBkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=iS98+zUCwX1uDtkrFj+ofOuXPSNYZ9Qk8fgpK7ugMCI=;
        b=DtN6pFwQofVpvNvz6zu1BaQfZP20B5nlL5w9wCQIEqUHmp9uvyK2AgnveBG0Uaxc1X
         XirfvPg+bURSkyTY7tbKwanxIoYCI0JBGZblV9a+DfuZcUJkv9fnR4/JgArZzg2JTTEN
         GBgvNLK5YRK72ao7UN7Dp+iAF0pGWTUWqGxRZR6VrBrqlTf3Yme+bSv6WHj8iioooRrQ
         lCD2v+zfqkAuuva6dxYAgVxBVttyuoag3rXi6HMcEPW69NaPeOHnj2/LpvwQURBYYW7e
         R81/4kXCK6VfMGp4XSKNCewQmHnC6kMwWi0gbb+ytIt30OCUzK2Fm+gLS+yMkIzIQijG
         P8Fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=0VyOEBUA;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iS98+zUCwX1uDtkrFj+ofOuXPSNYZ9Qk8fgpK7ugMCI=;
        b=N3v4ykyxntV/RXt81CetkOiJSa84+o0HP8xJj3f+TnTLfCQTq4vHs1fH8U0mRjeOi6
         eWM4rkMkeffG99tOTQGv530CqLUsHo8polF7EFFjR4SNk++3nXKiX/oCHASMOJi43AUe
         0l042OXInLTN6TuiD4w8yDlvEp9xuJc1v/0Tijsi+cqhq4fovCT038caWuOg1fl3t9XU
         p8/4E3Ohqiz0sXhd81nCWEySzeQ5JKEjRqsNfnFqgLz3m0A/uLchDLiTd7gHEWmu/60V
         KbSRSXVwfCQf21Hga0WceccW+y+VuZB/EoZ/1Uz8hAGExtpvPwZf1pD9SQeKpqn8Gxm1
         8gHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iS98+zUCwX1uDtkrFj+ofOuXPSNYZ9Qk8fgpK7ugMCI=;
        b=lF6/nARD7RCZ/vEYMG7rj+GM4sUk0P6zxcHZjwH9Xvp/p/8RaMFNHl7bOO4U89+ajr
         BNssQJC7twdEGC8JxZLq10Lh9EZrWDMiRDcvbFuBl9RFqSME3CIjZu00aTflVJXMvLAv
         1+QWAKgqgjN6UvvfaA8+2GWMF6N5L5lpQZf5r0kpO6KSQXq+YFO5jluEzOFLeO1O67sv
         tAkwZzanEAPHI1c8ZNhOAc+rK3/nte0K/xnxmNqaSFXsia7sDaarXjysBm4z1/rFCYMn
         /mwn4UeeOUtzcj1mCnbJIeJcknLPcHJYMnQVyI5rTn/bN+EnKvtO+sCA/ap0lIPqeyKm
         xAow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LpJWxv0mmA6bZKFIOdAjcIpE2Cytz7ydhLnhVdMd3WqUHWoCL
	N1gitmv0S8FyJ5pEH0hd1tw=
X-Google-Smtp-Source: ABdhPJyQHw/++KVek+f3zLihPk/OVujoEtq0EUy4m/HTw2mEBr5b47m2OrL/1+mdbl0UWjTIKKA0Pg==
X-Received: by 2002:adf:8405:: with SMTP id 5mr3972210wrf.143.1601480410556;
        Wed, 30 Sep 2020 08:40:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c958:: with SMTP id i24ls77196wml.0.experimental-gmail;
 Wed, 30 Sep 2020 08:40:09 -0700 (PDT)
X-Received: by 2002:a1c:b388:: with SMTP id c130mr3706695wmf.175.1601480409230;
        Wed, 30 Sep 2020 08:40:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480409; cv=none;
        d=google.com; s=arc-20160816;
        b=nnml8JhlQMen1AvVt6C5IyYMbsyhrsZewFyFNx8TiYji8J1bYZx4zsrr7lbSwonlbG
         DoxZmFsUGTeoLA9xH9P2y67bnHpAUu+glVWwPO3aUP7lvxZ13AW5gPfzd73YdaFmO1To
         Zja3/qtBUI6VC9upuiv1gGJwZe1XJmIDpjZPJYsxs/aaaAuaeUYpyI9wss8j4Qu11Upr
         IAG2a/strUGXZoVe/FN+8CROwZQ9ymrkZSkhx54111KmxqQhpCFMKlQIKaC0jZsa36PQ
         6WlOO+M2zPZwNTaW9iLey7HmPY6YAkE+BerXtj4Ad9vLDhDFGBGJP1/bA3QxidoFJAPB
         21HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=M7YqpSi/gchlZo1XYn2OS8SQwqgY1vMmSsPWUH7WJOQ=;
        b=cffwXwr9rSlkR8+VTjtJk0xNCg4k7JypWBWXEWjdebrLg/zq0TAncD3WgYCF3nd059
         XkYuVD4OneP0Y8f7EjtLzYKsQG7vYbTxkRFop9efwO0KBEvhXFpGmNYukoTnpsM8ttiL
         8SxKCY3vHw9800TjuwDujinSl3Obv2iYPzkUXF+T2bm7uFcuv6UGbGVUvCfRqnXQrirU
         hekH8buIVirCTxE3TLJUMCzhkw9pgsdID/D3+tBqO2PecL6b3zuWhyaGtYKkFvJI2Dx8
         rDQiqS5drzAYMJOBTfxXekjOxGgy2iTUmIMnh5+qAHkkDZ7IxNoM/wXOKWICiA21CL5b
         XIuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=0VyOEBUA;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id h2si75006wml.4.2020.09.30.08.40.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 08:40:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Peter Zijlstra <peterz@infradead.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Balbir Singh <sblbir@amazon.com>, Dave Hansen <dave.hansen@linux.intel.com>, Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH -next for tip:x86/pti] x86/tlb: drop unneeded local vars in enable_l1d_flush_for_task()
In-Reply-To: <20200929083709.GC2651@hirez.programming.kicks-ass.net>
References: <20200928124457.27289-1-lukas.bulwahn@gmail.com> <20200929071211.GJ2628@hirez.programming.kicks-ass.net> <20200929083709.GC2651@hirez.programming.kicks-ass.net>
Date: Wed, 30 Sep 2020 17:40:08 +0200
Message-ID: <87eemji887.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=0VyOEBUA;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On Tue, Sep 29 2020 at 10:37, Peter Zijlstra wrote:
> Here, I fixed it..

Well, no. What Balbir is trying to do here is to establish whether a
task runs on a !SMT core. sched_smt_active() is system wide, but their
setup is to have a bunch of SMT enabled cores and cores where SMT is off
because the sibling is offlined. They affine these processes to non SMT
cores and the check there validates that before it enabled that flush
thingy.

Of course this is best effort voodoo because if all CPUs in the mask are
offlined then the task is moved to a SMT enabled one where L1D flush is
useless. Though offlining their workhorse CPUs is probably not the daily
business for obvious raisins.

Thanks,

        tglx


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87eemji887.fsf%40nanos.tec.linutronix.de.
