Return-Path: <clang-built-linux+bncBD5ILEFM24ERB5UWYXZQKGQEBIHC7AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C6818911E
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 23:13:11 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id t19sf784002pfq.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 15:13:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584483190; cv=pass;
        d=google.com; s=arc-20160816;
        b=ccXgIt05nmSUK5+J9qT9F14mn/OscnYnUOFBvurEKRYjpYgPL9foOFmzQYatgYBUoM
         3ZCVpdmsASpx2OakBSLReX54+689HWIKxjx+tsajhsJIedwXnYl683+6/fesLibaNYqw
         gvlAIRxS0KszwvaN3DJSyjwzNngwbkRkpGE/OL58+p3KYv4QWMbqhEwJu8P8lNtOkCAf
         DG3i0kLLBE2wMJcuq4HM+J5w5MPpfDT+/nKIXE1WnbQ4vtAEz/dNDHFffzWvIIoDHEug
         ZwJumWP/Rv02jLA5RKtlUmPFDJm3OLLwVhcs6TKEmCEsuVhme1q1+LsycxxLmgSnJqWN
         EaBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=x8U/ywR8WrfFrYyAv1uvp1sAGttSN+F7RMXXnNWXLAs=;
        b=AwZLHmSb2+7sxdzcY0OxnNl85Fbgi5WxCNfzayLfcI5Z3czJy40sQW2lb+EqOBfcX7
         IymN5BwpeQdJJ+qXvSNCsnWQSGdtHj/YE9EMgu5BMlua1lipXslTBlN8xdSJg+m2TCZr
         zcixiuTSZOHiORI19LYxkzsJP9xUvWRvzKcaMNsgpQERz5gvyPB7TEDMQ4JvoCJk1ZuI
         gscdMNT/q3gr2modQbrLgAbzzxqkGsSaUxyH/GARZyfaYt/yAcLTrHED0aaMSDEdmWrl
         6lYUC/vE64EpS19qRSNaJ688B6UmWwYRG43aMJMlhPAjRKtKDYL2GNcliJoI98pmcd1f
         X29Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=syoS5BFM;
       spf=pass (google.com: domain of sdf@google.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=sdf@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x8U/ywR8WrfFrYyAv1uvp1sAGttSN+F7RMXXnNWXLAs=;
        b=Ldf+U7QfSA08GUyRfu3uMSVBl8xhJ/vnpm5rgSWPRfuiZ8/fxuDPsuA4RlzyiVLKvT
         n5Hsf4J224PGD0iiYfff3KXIeW9vrMUSR8IHWx6CbXScAlhcNFv336UiAu88OdPRt8c3
         vYA92AB/UPWI71m6pCLz9HB3iBn2geaigjj4Uy4e3Yhb36foj5dCOLwYWWWDkvg9QZrO
         1DfboOLfq+dAYRYk2+uEK7l5K3w1B0aCrNM+5I+i5+W0JIY7NZBwbDdvA6Tq/ep98uhO
         FsIYBVy3Hu8cM8V7qo560rR2QlDFVYdz0p3Zta/trnmvP8oguNgNebDzuSg66Fzer9V3
         KUqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x8U/ywR8WrfFrYyAv1uvp1sAGttSN+F7RMXXnNWXLAs=;
        b=Obxmx7BW/Yd+oFWPZnDpedrDC6Esae8zLAwJz8KFZ9dfaSKgGMRLcUQiJuomVSneGo
         hcDH8sWg/yQekbsJr9BP97Ri8c1b1PDs6Txyp2qFuyeibr9fJTUT2tq+lwhk8V7+f+t9
         5D33pqX1ysQJfyh2mHQSHilSzCbpsS/sZiIO1/hGtRb4yO3t9Rx4ctZ+6CTg52Z8YKLV
         CjWA2Wqqy1DrNfpY4gkMWKHhbtsk0gur4DHTdq5IEbTALoeC6++8UHxHafLvhMVaczgL
         kzA7NscHyredc+1MsbXCo1tZ9YFI7G961LYwODJVGhS02ckCLv6ndFannuxm5v8f1J35
         Er9Q==
X-Gm-Message-State: ANhLgQ1pt6YTSkVTKc8tEn6SUyupVr7HCIX2Y9fXmxDLsdKjZ9WNgHnJ
	+LvIW+t2Lh6hvqeeb1tkzVQ=
X-Google-Smtp-Source: ADFU+vsCA0zj8jws8vZFNZEdQEIm7KhqSGO4Phx7D98dJ3zDb33RiNVV9wx33gaOWqall0SyEV4hZg==
X-Received: by 2002:a63:309:: with SMTP id 9mr1308861pgd.193.1584483190393;
        Tue, 17 Mar 2020 15:13:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:982:: with SMTP id 2ls789019pjo.1.gmail; Tue, 17 Mar
 2020 15:13:09 -0700 (PDT)
X-Received: by 2002:a17:902:464:: with SMTP id 91mr810638ple.261.1584483189857;
        Tue, 17 Mar 2020 15:13:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584483189; cv=none;
        d=google.com; s=arc-20160816;
        b=dDqPdX99250ZvVprC61h5hE3Zdtnn+yLvzbLsLLdp1+cobaEO+DW6MtVWHcOUrPgZU
         LNx86oVptNmDGYQpiCkFDG2ufH9B4fyJkAnoTjrot6kgWxEKI0H71xNEyd+L0xE7ujJ5
         d5t0MZjKXRfJbafo3rU3nCdN3qDINV2+WdC8tpRAFErMaLjETFlMF/9KkqkVlgUF3A+K
         So+BntO1RNS3jLTr1udAXLRWRC3KH4NUnM8r445Q2c3FfcgEw3SOh38YIFEaQexhAUcI
         mlrDglRebeSniCvk+LGmQfoyOKDwPDUZHapJTRhGNUZzjws8lyTzieoN49R+34MMzF4C
         2DfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jYtKM+AJEiNhxjCPl+CECY47VWbqHsYvJIkeymeA3KI=;
        b=fUQYAs+8ZYhw55kbklnU2QYv/LpfOjBpyWlYdR3DRSH63IpVcCilgA3+Q7ub2uC/xr
         s5h3CbZaf8EppchOrzby3639vkxCeyN3rfYCQNjUDt3bhRwXKV6t5FLDW2DS4gvlr3g4
         vh80R+yzZ9zXtvlbjwczhWXGWbzXycry19jeOkhbp5vHxub0ZwaF7YfEudpKOyKUUlgF
         hyGMcnFxXC2H9aGcpUpV+vo2PjgJX7tknS0btmjZGp8KXwDD3NRoWqMRqaB80SQskNns
         FLAnzPbeJRVrxMh7fSX/7sXj5jOAEKgduh6BHylV2zb/RbydhAGrFDoVZILaim/yWLWH
         1ANw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=syoS5BFM;
       spf=pass (google.com: domain of sdf@google.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=sdf@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com. [2607:f8b0:4864:20::f41])
        by gmr-mx.google.com with ESMTPS id 74si269803pfy.0.2020.03.17.15.13.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 15:13:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sdf@google.com designates 2607:f8b0:4864:20::f41 as permitted sender) client-ip=2607:f8b0:4864:20::f41;
Received: by mail-qv1-xf41.google.com with SMTP id n1so8065428qvz.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 15:13:09 -0700 (PDT)
X-Received: by 2002:a0c:f60e:: with SMTP id r14mr1384288qvm.43.1584483188748;
 Tue, 17 Mar 2020 15:13:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200317211649.o4fzaxrzy6qxvz4f@google.com> <20200317215100.GC2459609@mini-arch.hsd1.ca.comcast.net>
 <20200317220136.srrt6rpxdjhptu23@google.com> <CAKwvOd=gaX1CBTirziwK8MxQuERTqH65xMBHNzRXHR4uOTY4bw@mail.gmail.com>
In-Reply-To: <CAKwvOd=gaX1CBTirziwK8MxQuERTqH65xMBHNzRXHR4uOTY4bw@mail.gmail.com>
From: "'Stanislav Fomichev' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Mar 2020 15:12:56 -0700
Message-ID: <CAKH8qBteBDQp_Jw2RhM5u6x2q75+PtRwX6jZZQggjpeohWQEzg@mail.gmail.com>
Subject: Re: [PATCH bpf-next v5] bpf: Support llvm-objcopy and llvm-objdump
 for vmlinux BTF
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Fangrui Song <maskray@google.com>, Stanislav Fomichev <sdf@fomichev.me>, bpf <bpf@vger.kernel.org>, 
	Networking <netdev@vger.kernel.org>, Andrii Nakryiko <andrii.nakryiko@gmail.com>, 
	Daniel Borkmann <daniel@iogearbox.net>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"David S. Miller" <davem@davemloft.net>, Alexei Starovoitov <ast@kernel.org>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sdf@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=syoS5BFM;       spf=pass
 (google.com: domain of sdf@google.com designates 2607:f8b0:4864:20::f41 as
 permitted sender) smtp.mailfrom=sdf@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Stanislav Fomichev <sdf@google.com>
Reply-To: Stanislav Fomichev <sdf@google.com>
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

On Tue, Mar 17, 2020 at 3:08 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Mar 17, 2020 at 3:01 PM Fangrui Song <maskray@google.com> wrote:
> >
> > On 2020-03-17, Stanislav Fomichev wrote:
> > >Please keep small changelog here, for example:
> > >
> > >v5:
> > >* rebased on top of bpfnext
> >
> > Thanks for the tip. Add them at the bottom?
>
> "Below the fold" see this patch I just sent out:
> https://lore.kernel.org/lkml/20200317215515.226917-1-ndesaulniers@google.com/T/#u
> grep "Changes"
>
> $ git format-patch -v2 HEAD~
> $ vim 0001-...patch
> <manually add changelog "below the fold">
BPF subtree prefers the changelog in the commit body, not the comments
(iow, before ---).
Add them at the end of you message, see, for example:
https://lore.kernel.org/bpf/a428fb88-9b53-27dd-a195-497755944921@iogearbox.net/T/

> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKH8qBteBDQp_Jw2RhM5u6x2q75%2BPtRwX6jZZQggjpeohWQEzg%40mail.gmail.com.
