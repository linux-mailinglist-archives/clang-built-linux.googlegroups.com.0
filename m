Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBOOZV74AKGQEGNLDZRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 1110221CE9E
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 07:10:19 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id m1sf2347325oom.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 22:10:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594617018; cv=pass;
        d=google.com; s=arc-20160816;
        b=msA8w79e2HatwdQR7Sc4kq+VqDN0lTq24zJFdQhIpxhbhF+GmJiAj3nZgn8oIUsrNy
         Fh+5OhLPTjZgPCEUF6FSRT8Nvr9xuqm2yqgpdkhjBbi6vaESIyn8Tep8T8XckIYq29ht
         4UrbgThmvGje95/kq7aRPz6tlhgx4wLQN6HGIzmsOVeRyqlbmi454DIjjx23M9KXBQf3
         W1frmPcv74On5Y932b5wMI/a5j/TDBXu9hXoO5dWam0ODreH+v9BxSvKvR5a73BxCX+G
         SyQsOpleOYyMOWdsbPqVJ3HjFdiH0mEtSDc/33yaOXcEFHEH1ZjijPSjIcpEMPrkuf1N
         TbvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=pbOPReyFawrll7VBcoxfu5JB1cgsm/BnEOkc/Ws37Zo=;
        b=unXHG0Dh3V8CSfJkYNFUqwKt+vtFaRTFnUWuId2+kujM9ySMrvS67+tC5Y/8dDXsg0
         ERKxXA7O8WcnyIIlx9+uMTp+nA3Ju1HuOoi+TvkDaei0INuHuWSmMrwimUGANatNYW79
         HGwiz8TQ32DIF0I8XfO9MbtbLoCxByPR9ppbrpmdi9HrP8iIO7ZWyiSakD6w53iioYZ2
         sd+fvuOQMflzY9q28lbPvnCHhMb6Fp50EczP/S+lSKq90Sk0FUBXxzViPBdS+7dAOFVs
         A+VbanrJy9q2lO5owlSK5wRR7fVorCJ4lyqQuUXB80F6b16kipKDcRR3GsFc1DGR07gJ
         amwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IR0rPtaO;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pbOPReyFawrll7VBcoxfu5JB1cgsm/BnEOkc/Ws37Zo=;
        b=Fi+H9mBzhhRQl6aIV50jMGpFAttHF9A0il96L6KDybq7jloFp4c4UwPPDdSBrYYgUH
         xl5HHxEBkMac9MGjZWrCMQ/AV1D50OvU7K+vQK3qj07G5Z6lvQCZ8eNQKv5ijbHuE87W
         LEoWqE619A3nEp+92dscSHsMCDo8xWzW3upIyUSTlk+TQHZRz2dO0fR0g7z7kfAOxrii
         nXFAzN+9dJB5X9L9lGRY6Tm7bQ2dkXiVgpQdrhHgnuuHAWq6MOydU4RF0XzbV894inxy
         qvKHdrdkG0OaGR/N9iVGZq51g8aHxp32lvarjhjQZwUFG0V1wUq9LqsIMmSLO3oqo94s
         2Qeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pbOPReyFawrll7VBcoxfu5JB1cgsm/BnEOkc/Ws37Zo=;
        b=vTF+mgjFt49kY4/STy/8a6YLrkcaIpfaHCn6OZVc8EuWMFZartk2PMzsdpLBGNcfP/
         ZFpW1EdFEDZo2KrSPerUaCwN81rvhjEGSKRh6oBXyt9Q9mnFiEBqBtByhvwfcUp0QuA8
         1Dymd/NOmeJHr0BTDJMgqyOMAmd3sveHVztlbZpGHYZsTW40GyCR5h6+jD6++qOJxqJj
         0x7t4lVQ7Vv9tYaCE098Wru5Uy9QjyxjdRkcE+ehwLgi8JgRNrqw1JK2tnj65Aa05cAW
         OETxlH1lVn7RzlgCD5s2MJngvN6TzQo13z+MYaxCM14e24211bvOpIlZtJ64sV39s1cI
         ET4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pbOPReyFawrll7VBcoxfu5JB1cgsm/BnEOkc/Ws37Zo=;
        b=A7bpnZgWcKfxGUNNqCzPK6rK/YUGxenQ+wTog+oCIuwpts0RmwfpzkgUtDZujUWXA3
         Cx7LCzRwP5t+ML4xczunAhX51Mck7mnu4KVhELvtSpZiqYC8Ke2oxUAo8UORZRXTeJNT
         sw+26cGZ8vW+rNyEfx3eTqfMqmw7RcC65+A23KO2HB0Lzy2TOFEjZ5SBe47Cg0mztFOZ
         kkEn9PiIo3vnrTofA/0idP+ZfEuspQf6PdGnzti1cfc+2r/9DNp3hMCfKjv8XPKMN+iw
         6BB0EIWYb0JmcnuKqzRSWvZRle7Rr/tXYsHRJ7Bmfc+PxHQcY7XVOgKQaqHqNI22EcKW
         0yLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531EQz7tNUgeQssDqiEj6oqnGdP+bnThA+wi3h4ZBzKDKBr2fEAb
	efUVZyCtvXZNZfuE3ZeysdQ=
X-Google-Smtp-Source: ABdhPJypkppZb9L9E4oq3XxlCFKu1JfW0+r6i7xxCHDSORiufLaIbawS7KoOd+7cxGzeyQReBmMAdQ==
X-Received: by 2002:a9d:7a44:: with SMTP id z4mr3310416otm.21.1594617017733;
        Sun, 12 Jul 2020 22:10:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:544a:: with SMTP id i71ls3083643oib.9.gmail; Sun, 12 Jul
 2020 22:10:17 -0700 (PDT)
X-Received: by 2002:aca:d5d0:: with SMTP id m199mr13165948oig.176.1594617017340;
        Sun, 12 Jul 2020 22:10:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594617017; cv=none;
        d=google.com; s=arc-20160816;
        b=BXvFPt1eHdimmKQ5oRu4TzdnWYseesMcZChciML9askmG4wAlSaMWa0ABn3jnvuIQ4
         B0qcTBdsqn50x809DKVebnpt+/4ClLUY4QiMdlhQXdwISSHsgnSHmzixojytEqmxc0uX
         Iioihy6w/xAEL9yy51ooRYJSDaIGSlqJHOtK7bPJbnINUtVH/L6p1ZYB3ALP1AAUEq4A
         O/VY7Xr97+h181zXlkjKoWIXMeaPLWoHe4QXWN71Upbb5nj7tl1aiscWpR5uLK/a1bug
         B+Rnbascizw5XTGHDKogR31oqdqRjr/9y7OMR8mxQJ99v8o8rg+puF2DsciWUTZV91SA
         9bIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=u7V5THkrB6yzF4MUKuL2FvUyzEqNXVmvsb51ktC+rUc=;
        b=SjcZA5ZWD92WQL497c+YMfMIkoG8NJ64QD/ZFiPdrwWHz5v/4cVdGkM1m4zC5LPSVg
         nHQUJOGgACf9XIZIz5Ua7kmNzne8eW58UiqN0FTpSpEn3CGRsiCatQ3GXou9V0UqM2Kt
         hno1oPz7P39MIcuPB+Zu4t+v+m12ddgFCInr9Fwnqchrp56kydNr7S20RoaCSBV6W8b3
         moPIAOzN2on3bysS3OBI2jV3tEwJ3iReOLBRiYdOPSRs6OGtuMIjhqbqrowmUr8W83y2
         d5AXdxyBN1lX6s8J9oX3b55f3IUP5QvuStuQEG/GwQint/57+tMI00+7kz2JIjAEHoHA
         IUCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IR0rPtaO;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id b128si563204oii.3.2020.07.12.22.10.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jul 2020 22:10:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id q74so12156824iod.1
        for <clang-built-linux@googlegroups.com>; Sun, 12 Jul 2020 22:10:17 -0700 (PDT)
X-Received: by 2002:a05:6602:1616:: with SMTP id x22mr60923903iow.70.1594617016973;
 Sun, 12 Jul 2020 22:10:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200712231050.5147-1-sedat.dilek@gmail.com>
In-Reply-To: <20200712231050.5147-1-sedat.dilek@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 13 Jul 2020 07:10:05 +0200
Message-ID: <CA+icZUUYxbfKz2VnkUVL5ZwT7XcwGKJFzbDyoy9cg2h3vr+hkw@mail.gmail.com>
Subject: Re: [PATCH] x86/entry: Fix vectors to IDTENTRY_SYSVEC for CONFIG_HYPERV
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Alexandre Chartre <alexandre.chartre@oracle.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Wei Liu <wei.liu@kernel.org>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Cc: Jian Cai <caij2003@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IR0rPtaO;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jul 13, 2020 at 1:11 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> When using Clang's Integrated Assembler (LLVM_IAS=1) we fell over
> ClangBuiltLinux (CBL) issue #1043 where Jian Cai provided a fix.
>

Just FYI: Patch submitted by Jian.

- Sedat -

[1] https://lore.kernel.org/patchwork/patch/1271455/
[2] https://lore.kernel.org/lkml/20200713012428.1039487-1-caij2003@gmail.com/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUYxbfKz2VnkUVL5ZwT7XcwGKJFzbDyoy9cg2h3vr%2Bhkw%40mail.gmail.com.
