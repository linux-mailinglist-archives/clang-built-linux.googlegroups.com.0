Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB4MR47ZQKGQEQTLZHYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E081907F4
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:46:42 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id e10sf7122897wru.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:46:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039602; cv=pass;
        d=google.com; s=arc-20160816;
        b=hcjKUXuC2apRFX/TaywBDE6pEx3Sxm1EgxCM3dmyd3BbcrBBci/CQhOKr7KROqdF1F
         OWeYNMQekyphyDGfrtcQaaznbxZ8SdEoSggNQCo1HIMVxCPm7/G3S92P/G2+Yn+v97Iz
         23UTVAGJHMNUx94PsAniJrOvLiibcw75WBXMhGa0kiKkc9bbT7XjldkFfBT+F5Xljcxp
         9jz6bNaxGbP6nbVKSMcnyHmIB2rKnN7BQJvvxdeQwNWMDkJZhh0oOnpnMnlkjT7AEtzo
         4fMRhs9hWXpYMKK6KbcdHs+F4LQIp/F2O+DXHRnhDWPrjS97gN4hlONkapc8JcdNth6M
         wd5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=NqZlEhU875QPajEgHwGXOPUepQfQQBj8ekngDKHJbv0=;
        b=VMZpKuBbodlWf/wFJjI7QwlFWpXz/CjHMcCwWs4POwGZ6Ws67YOXuZg4B3gxqbYe8i
         SiJFM2VqqNFLIvXA0dAPNxkpE92DDwozM6XAtpqWzJiz3QCeDKJiY8Kd5oSWsysMHP3P
         RTMi5PaFnCgrIMwJk4FAlkBKlznXSr6ZfpV2I+hRke4GCJcQqj4tbTctq4WfZsJXeFOH
         3vWY2uA7DAKxdhGgK6D/DXDnc8ucVm33nyQyDnf8b3TEQi4bm4rL2iWqnwwwvBkdRt3T
         IhbEkKqs6p4lrpaXSbHV97fl30g1KAqWOTHZnovlvUiCTA8w/JxYPxoU1x41bD2mYc4P
         imUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iB9wbzaX;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NqZlEhU875QPajEgHwGXOPUepQfQQBj8ekngDKHJbv0=;
        b=QyYz/u5/C/tknElae8c0898o1XwylKu1fBNOWMwfBPGaJ36r6O0lCUDJUir38zg46J
         IwpzZdrnrmfWXCRm3+tNfWUqV3VKBlqaVb5mQDdFsZojB5W50za3Z3lmFvqWim6T2oEe
         OxNNKqJxQ7xpSMEChJIeXpOLDPTpVsqfj2M6FLmXiCFq1BgF5y8VAF4V5rpNoR+D+ixV
         R3hUCIojArnB/PPAc+MjB0YdB9JuR7vvWdG1K9DDKauh0x7GODERLuo9GNQO4uijVqgd
         9qXHDjMqphrcfMY4ABQ3MUAqGtEb/qD5Dbegw85H09tRY97Z03BklwyGgai3/CXTJ/gY
         8txg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NqZlEhU875QPajEgHwGXOPUepQfQQBj8ekngDKHJbv0=;
        b=I7Rm7Z7yHyGuxfJye8K0w7EGQ7uZgMB5hBrmG+gRmTdSlkGs3ME5MefjV+gi6SS43L
         20cRM5GclD1RMi+X3nxouOfU6iufmZCzHrL/nQLE9749GpfX0sbq1LzTjkideHV+xj9b
         jMojVmgxfvphvh0uNd7x9QccIOPk8o2WY94bSSQMGYxCkbUBdGYDBnMJjtB7vACcL29b
         Is8xnRuhWp9WCwJWpoppBQ1qRYscS6U4pTHAKVZ+uSByYo1VxyQbCbH9GtIYaeJOp3aY
         xIY9pxSgXCmzAYY5fR/shIzAZ/qUZI5aDSqqy5Mn+FgwHcLUvi1VvzzfyS5sdGpE77oS
         V88g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NqZlEhU875QPajEgHwGXOPUepQfQQBj8ekngDKHJbv0=;
        b=TIbvApcUR5RTx5oTROg9jvF5Gf3HwgNIG616BOEsQQC0Angd8Ob1a3wdwmgTm7jPQv
         nSYxOOLD2TrX9bf0er8GMUMDCLaDT8NdQBsC3LWaC+RLTLXcUCRVo0kkS0JhP8jYU6cs
         xHQUQhqa0lTu8axwt3fGiSpXeHVDpckZNetxTIBRgBkDRQ5BsNhfaHpVy9C7KjfcueIm
         novymRwA9C6UDb8xVM8cK0szBDUM1H5TON/9XlH2ydts/XnXZ9H2lWXUXu/Hcm0gbaQa
         8kSIFjdJiE7LCBiMxajr+uF20UtdaU2QAbMa+TKOZlZck4NB9j6wzTjEz0qy/wBFauMX
         yC+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0miv3rOIWciE2EgRg5adnhTu0FEl0z4duAJ9Rc1NOaC0QXRf1L
	z3sOKaUBW6XF5cqWA6Zmk3I=
X-Google-Smtp-Source: ADFU+vvqrbAyURf/r0GFwjpiU59MNDLIIxvkWreK2d/XDkvfJ+Z0mNGccMFsXNAeuOprle4ot/1lng==
X-Received: by 2002:a1c:9693:: with SMTP id y141mr4129167wmd.23.1585039601964;
        Tue, 24 Mar 2020 01:46:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls3472291wrr.4.gmail; Tue, 24 Mar
 2020 01:46:41 -0700 (PDT)
X-Received: by 2002:adf:f646:: with SMTP id x6mr19682976wrp.19.1585039601223;
        Tue, 24 Mar 2020 01:46:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039601; cv=none;
        d=google.com; s=arc-20160816;
        b=ASVR1MfueviUMapxUvZ6SmZi+6WyQbwVOKoSnbNRk4fS/Vif8+JZtBBbBytfOsymnh
         x2eVV7NCMo1BwaCyjpXasufI4mseeW2n3AX1aRJucm1MAiVMJzeMUmdcRkIrzYWrJ91A
         TMtVYZ49dcJhebNP/v6PNeweIdr9BB2af4vSlfYeRu8UOGRSuZzQuAz8ijfT4nQ3V1ZL
         z5fkQKIua+cLNo7a1qv8On253Z1kAUxkYVDn4TwcUdY+zjRdZeThiJ30uucVVsIXiZM7
         YOc9wXYWQPuTp/AdZVrSKB0cfYTTgDWPXN2ffWudKscQAOIoFx3wXEMH5WMO4cg7u3L8
         wc7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vqE7J9avKRSB75CS08tA1XMoBisXuxlVqJUICDm2RMc=;
        b=CEGP8sGF+nxRAPd0VY9qiQ4ZX/+QaPCBrNWoSr/gFJxvVqPWp5LJZJGmV1sJV9JlAL
         qJMnlO2vC/rznth/MdtOnuKrosTljXb6UiorcktZy77Va9/P7ZciZYoWCpSUqKWbXjDV
         Dh3O5PpWJqlBQjzr1n2PuTatrlBWfqTrzpA3f+3h/E0uZvn0pvQ4xKSzD5v+OST7R7zb
         PgVtq+extHtD6dQHdV2dAbKk77ez3PeL5NCmV++gXfRt3HHkqSIgrukou0KVtYvaY/93
         3yiPXVGGCtR+tOxfecdrLFl0TsMWpCOR/V8znWDzV53hBULo/AI0k8UDUfURt0Kj4YWF
         m4EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iB9wbzaX;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id d16si849687wrv.4.2020.03.24.01.46.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:46:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id v25so406583wmh.5
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 01:46:41 -0700 (PDT)
X-Received: by 2002:a1c:41d6:: with SMTP id o205mr4183235wma.122.1585039600829;
 Tue, 24 Mar 2020 01:46:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org> <CAHmME9p=ECJ15uyPH79bF0tuzEksdxoUsjGQSyz74FfdEJxTpQ@mail.gmail.com>
 <CAHmME9q4egN7_KeYB-ZHCFPfXs-virgTv4iz9jW2SVOM7dTnLw@mail.gmail.com>
 <CAK7LNAR07vZFzh1Bbpq4CoJ4zmsc+p5rxpkO1Zv8QVfqhfvr2w@mail.gmail.com>
 <CAHmME9qCjo4kOQM3Dw6PDjEebmb6rvXajqhK-m-=vKcHWqNhAw@mail.gmail.com>
 <CA+icZUUjP7e2zgrVCFenO_YJfpcOQWV++kuU5UWGKN_5udZXSw@mail.gmail.com> <CAHmME9quSMLwLacntdhvLKVDVtg6QVGhOQxADzz_4kVZYOJxNA@mail.gmail.com>
In-Reply-To: <CAHmME9quSMLwLacntdhvLKVDVtg6QVGhOQxADzz_4kVZYOJxNA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 24 Mar 2020 09:46:29 +0100
Message-ID: <CA+icZUVCftYBYzxe+YJkN1WRGX+nQkHVaFxvW-S64k6WtdB64g@mail.gmail.com>
Subject: Re: [PATCH 0/7] x86: remove always-defined CONFIG_AS_* options
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, X86 ML <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	LKML <linux-kernel@vger.kernel.org>, Allison Randal <allison@lohutok.net>, 
	Armijn Hemel <armijn@tjaldur.nl>, "David S. Miller" <davem@davemloft.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@redhat.com>, Kate Stewart <kstewart@linuxfoundation.org>, 
	Song Liu <songliubraving@fb.com>, Zhengyuan Liu <liuzhengyuan@kylinos.cn>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iB9wbzaX;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342
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

On Mon, Mar 23, 2020 at 8:50 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:

> > I would have expected your arch/x86/Kconfig.assembler file as
> > arch/x86/crypto/Kconfig (source include needs to be adapted in
> > arch/x86/Kconfig).
>
> CONFIG_AS_* is required for more than just the crypto.
>

OK. I was not aware of this.

> > What about a commit subject like "x86: crypto: Probe assembler options
> > via Kconfig instead of makefile"?
>
> Thanks. Will fix silly verbiage and update branch.
>

Just looked to what I see new in [0].

Would you mind to add the patch

   "Documentation/changes: Raise minimum supported binutils version to 2.23"

from [1] to your series, please?

For the meantime and clarification - you can drop it later (with
adding Link-tag to [1]) when it landed in tip Git [2] where I am not
seeing it.

Thanks for taking care to you an Masah*e*ro :-).

- Sedat -

[0] https://git.zx2c4.com/linux-dev/log/?h=jd/kconfig-assembler-support
[1] https://lore.kernel.org/lkml/20200316160259.GN26126@zn.tnic/
[2] https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVCftYBYzxe%2BYJkN1WRGX%2BnQkHVaFxvW-S64k6WtdB64g%40mail.gmail.com.
