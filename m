Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYFTYXZQKGQEREI2H4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0E41891D5
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 00:14:41 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id v198sf14323153oia.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 16:14:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584486880; cv=pass;
        d=google.com; s=arc-20160816;
        b=LOlbu4cgxGVLlzKTT/4i0eAqcJzbnuQL9vYx5dz1uRANEsako6dtIoTK9SXQA49Am7
         N9jkD3wZ83u99PaWGN8ylOJzgiht6TAnSzmuDxKwnHcXtTBn5O8zGotRW55HRJsivd9Y
         GGQA7/FqtSrYu6SpjuJO+qF03UK/fl9B/Ix+3ov41AeGWnnB2gXZDD4M13zAOZs52lud
         sHSogNvdoy8+LsmDac3+0j9iap0a1F6AVm7RIjdBX8GpmCI0rElXplP9gV4SJNoZKafS
         Qg/gZRU6eksc1WPDmFbvkla3kYumTyhXuTOi/TjLPD1Hz59DIRgnqbLRHMIkYGe18nGg
         O8bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=kYmMcv80XhOtCh3ZLPSYztspbjnsyV6Vrtu63SHfWTA=;
        b=pIIpPl5tor8shCEmCzNdWLUZDrI3QRWBpNDmjd0GYPxRWuhWUUkpYNODAujdkH05NN
         xZZ2Rb81FVnQF9Im7eLkbaI34Aw1Z63YfLDoShKXqo996HBzU3mGtcfw9D4ZG7lmSoFZ
         yUlP6zgqzHwr4BDyXXrWkdJnQsc9QyuGLG4VCSqK0bQuPqmXIeXLFW7qGn9a/GlHi/KR
         u8n1zQaGhpa1FjNedaVJuZDu8OZLbHuvE+XVCgM0dSzdZdXVo+wpnAM21A3t925XyEi9
         wocfk8mvXKWE+sem+ggSQt7e6bOFJCNSbGljI+UPLaZpnpEVKCVuJapTuU21evkh/wIC
         aEPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k1BsSflZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kYmMcv80XhOtCh3ZLPSYztspbjnsyV6Vrtu63SHfWTA=;
        b=kjV6sN/YPe1w0HiP/LVoQSR1fu0famekUv+gGIY89+8zsiiNY5qKjdvqOoAbvYwTo8
         4Txwh1UnU45aGLdmOSZ3xus0uY5yp2H/HwTVJYQMKynKahO81k1RddXwGdl/+qXWa/8e
         gPcoboHxJE0Lt//P04Nt0apNKRKmXh0ijyuX2ub2x9sDoK/q1bThcx2BygA6+ugAaP2d
         IEd9Hpfmjswz6iTSUpnouN+fuaoOj5mip3sojXwsVdqEUDZVeEvSCUe0M7N47obQ+sVN
         f0CD8R3VcU2j9BUf6mWGj0yxfA9aUuu/a3RemhCwTdaW+NDYzyB47BJdbItsMrFaOkQj
         Zh5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kYmMcv80XhOtCh3ZLPSYztspbjnsyV6Vrtu63SHfWTA=;
        b=MjaRdGOAmSFzraXOdp3tJ37nPX7uU0uqsXSYjkvQyKBnOeMDSiIGjxsAWf6e696cHm
         SYXvSTOQw+ccdheos1kpfa72nCXgZc24jHSsk+VMERPvzuJSFSHpJIhUXGTCgAnPDzF2
         qII8byTPUdvEvUBVoFadx4VsqGxj3/x1GYWK9sMquocoKfvixiOs9s1C/D7f5wMCSfBX
         /uqB9lFiAjelT/+jrVINt34HkKlsm6dqCX9bvsImP3eLD9wVEHtpIyJ/X5c9AeiyJg+c
         zMsHL7Zm/Woj91gHgMh/EOED2Ul7aBPBYGyEg998MO+mXn3XS/uKttUGi7MW/Eg3IUHl
         pzbg==
X-Gm-Message-State: ANhLgQ0hktwU2/D7uoVndDEKZ2WBCJmJj0hJrlPNyRXhWscFXW0QPBe1
	yq+nhNW16t5p+GOye8tRcpQ=
X-Google-Smtp-Source: ADFU+vsfNv+goNL9o2sECqHeVbbUpzL5akuQ106DbmmpmnMNiIOArP1lwdzIUjVal/s0HbHv2LbcjA==
X-Received: by 2002:a9d:6457:: with SMTP id m23mr1531828otl.162.1584486880099;
        Tue, 17 Mar 2020 16:14:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:51c6:: with SMTP id d6ls6710421oth.4.gmail; Tue, 17 Mar
 2020 16:14:39 -0700 (PDT)
X-Received: by 2002:a05:6830:204c:: with SMTP id f12mr1504250otp.356.1584486879655;
        Tue, 17 Mar 2020 16:14:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584486879; cv=none;
        d=google.com; s=arc-20160816;
        b=MSiBYxo39wJTZ5fJHpHxpr5e1mNW7n0wcYP/v9w0xLNzEUjXEgv2n6JSthsdL+M9yQ
         LmhJNM8bMQakDMT1BIKiRPcIfks2yT+WwJ54rZ+AZlkooDx9JkoeIFaRel7wf8EZ9Lq7
         BUe/eh62ITQHSdaaEsb8E12ATIvMyqMCbtKjz3VEFyDGE7BhaHrfsIsn3AASXN7O4rYN
         Qv/kJa+M38mp6SSKyIi7y3JsA58ii5Ocbxtqtq8vzQ7l/vl71WZc25Sk6iD3LnqbY3J1
         mOVywgsqfVmJmWeLlEPFYn3oS0CEzOx6ivcAwOIZXJDWLpMPmK5Eq1QDrDQT+wJJmFA3
         PA1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/rWQP1Yg51797tjo4yZXnukRdpjSAiEDIrzmWPJBcG8=;
        b=YgWQZL5NqHqMz7tJA0QG+P39iZO0uOXf9s4YIbR+1KUVwpZGGQ3y541KGyFg/aClLg
         m3fHd8vsxwl/a/8MqYuIVzVzGsccqsQNKtg88N0Dq9xZYdBxoLCeiLItlKWmR8RKgAsI
         9c1GPf4BtSgOtHjjq+TmbnKa53aGZQQqpHhYEcd+nPP1S6P5IkU/X7uFiP2tmeYecZgn
         N/tUhBL3WY0AwBG+8ub/t5gKNi2PZEcKND2Ei1lV7tEDQsRvSuy4JidTEZLLBRMEfVV6
         b0F92oGDTtN8XTK5wWqPXuJq+2sdW5AMQgR+zQPFcxC51h2CfFW8/Dn2KH3p8x6uAb32
         mcOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k1BsSflZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id o10si334001oic.1.2020.03.17.16.14.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 16:14:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id z65so12787481pfz.8
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 16:14:39 -0700 (PDT)
X-Received: by 2002:a63:4d6:: with SMTP id 205mr1575391pge.10.1584486878738;
 Tue, 17 Mar 2020 16:14:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200317211649.o4fzaxrzy6qxvz4f@google.com> <20200317215100.GC2459609@mini-arch.hsd1.ca.comcast.net>
 <20200317220136.srrt6rpxdjhptu23@google.com> <CAKwvOd=gaX1CBTirziwK8MxQuERTqH65xMBHNzRXHR4uOTY4bw@mail.gmail.com>
 <CAKH8qBteBDQp_Jw2RhM5u6x2q75+PtRwX6jZZQggjpeohWQEzg@mail.gmail.com>
In-Reply-To: <CAKH8qBteBDQp_Jw2RhM5u6x2q75+PtRwX6jZZQggjpeohWQEzg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Mar 2020 16:14:27 -0700
Message-ID: <CAKwvOdkVtDjXNM1pA=sZvrGhxK3amYbLmsQvQWKnTtXyvxaR3w@mail.gmail.com>
Subject: Re: [PATCH bpf-next v5] bpf: Support llvm-objcopy and llvm-objdump
 for vmlinux BTF
To: Stanislav Fomichev <sdf@google.com>
Cc: Fangrui Song <maskray@google.com>, Stanislav Fomichev <sdf@fomichev.me>, bpf <bpf@vger.kernel.org>, 
	Networking <netdev@vger.kernel.org>, Andrii Nakryiko <andrii.nakryiko@gmail.com>, 
	Daniel Borkmann <daniel@iogearbox.net>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"David S. Miller" <davem@davemloft.net>, Alexei Starovoitov <ast@kernel.org>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=k1BsSflZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Mar 17, 2020 at 3:13 PM Stanislav Fomichev <sdf@google.com> wrote:
>
> On Tue, Mar 17, 2020 at 3:08 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Tue, Mar 17, 2020 at 3:01 PM Fangrui Song <maskray@google.com> wrote:
> > >
> > > On 2020-03-17, Stanislav Fomichev wrote:
> > > >Please keep small changelog here, for example:
> > > >
> > > >v5:
> > > >* rebased on top of bpfnext
> > >
> > > Thanks for the tip. Add them at the bottom?
> >
> > "Below the fold" see this patch I just sent out:
> > https://lore.kernel.org/lkml/20200317215515.226917-1-ndesaulniers@google.com/T/#u
> > grep "Changes"
> >
> > $ git format-patch -v2 HEAD~
> > $ vim 0001-...patch
> > <manually add changelog "below the fold">
> BPF subtree prefers the changelog in the commit body, not the comments
> (iow, before ---).
> Add them at the end of you message, see, for example:
> https://lore.kernel.org/bpf/a428fb88-9b53-27dd-a195-497755944921@iogearbox.net/T/

Sigh, every maintainer is a special snowflake.  In our tree, you're
only allowed to commit on Thursdays under a blood moon. /s

But thanks for the note.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkVtDjXNM1pA%3DsZvrGhxK3amYbLmsQvQWKnTtXyvxaR3w%40mail.gmail.com.
