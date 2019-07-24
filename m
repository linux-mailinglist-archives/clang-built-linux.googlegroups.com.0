Return-Path: <clang-built-linux+bncBCLY5BP6XMFRBX4L4PUQKGQEEFGWYRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0DC74079
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 22:56:00 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id n3sf19247446pgh.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 13:56:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564001759; cv=pass;
        d=google.com; s=arc-20160816;
        b=hfOnsP95rpwhsgpYvr1bbs2NB/PYJ/27tH9iqEKxtgW2iQXop1V8A+PRZwn+Hcwe/H
         iD9LiMMB2aO5dqXsvGcbdYNVqsV2njc457/vHcgx09edlj2HPbP3MsLNUqgiyn/2+lTM
         rE7ERvR9dWBrfS54e2WCjgVE3G1YQ37O52AAlwpbkjKoxHQhyGEjZL+PiFx9ynvsI36+
         IfuIMM/Gz9EF2x+SyQe7jhL3fhRrTAddiequt2L5jZPyj1fvM0gn4/LQfcOcAlq19XYz
         HsxaKis0rvcEndqc68T80BJ7Iqlji4JzLSGliA7cOcabBOPhNepRVxEo1HNArjbahAd3
         2DUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=e3Rogn4TsxFNkNKRyFzICS8SDlOP/jcEJwvrsA+uy8w=;
        b=LNNUXg2NrCHCTVB354G5jR/1RkOuxMUAbRFK5jFxVC1lrs4wF0MjdsuIhDXh+j6hr7
         o8qGqh5dSr7HAxiil5OK2xkaDroZWJh5aWK2936wa6T3YBVP0FfIeKawT6AOVYSv+UbI
         yGOrziL3K8jYOBMlwOqIetZC2DH8s9iIkJSu62EzHaclWImlEmMH0Nvj+lNCgmWydtUA
         R91UVsAEQjNUUlQYb6JlF+ttx2WzwipO7mJTmTycE9SI02Hji1j2Z73ik6qxi/De4iZf
         d1GV/nDXKB9/KR+9adrbO9aNBb1XaJfrr1Y39sa0qTCikPoa8Muqyv+dS0U433q5RptI
         q5MA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v1fdWobT;
       spf=pass (google.com: domain of vaibhavrustagi@google.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=vaibhavrustagi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e3Rogn4TsxFNkNKRyFzICS8SDlOP/jcEJwvrsA+uy8w=;
        b=RQe22tMnB5v6WhncbfnM+xATi52qI5etyiL7z4Pd8VeqPdrz98ORsQjTfZpza8kZrn
         uENOw/1LcfGgCNuMV7Af9Xpod0oxXrv3ZIyeo59HnSKoH+kKDlC5653lT/kEiHv1Mucc
         vLKuk+tBIx1wtqShzc4Xx0rAbHJerpivCDHiachK3lk7Prb1jv11R2pzB7Qp2uFNCNtk
         Eervo0c42VxAfFX0SHMzFEK8qjD452prx/X+L0kpojl7/hF2cxP8Yt3sBDD6RBjuJC96
         hQnJYlbAwhqLb28ygDLBsKTTEEZ9uRFVDJ3JCWcY0NiUubtIdd/mM3Ut9dp8wVGa2qbt
         X/aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e3Rogn4TsxFNkNKRyFzICS8SDlOP/jcEJwvrsA+uy8w=;
        b=Z6JUt92f7O6QwnjK37dstrTVFJxXTgwdfw8VT0mM+K+yWD7GDQC/8WDnOJknbSeuLq
         a0gIyCC+fZDC7asN/qmoEftdtFufc72+1NKe6vxF42s/5p38Ivhyfv3OZTPE4fxRvJ4A
         osRgAOWWzB9y5o0/p4nlRgqZdRfqVCLsTv3H1XMoDz7+fxmVFrVOfy3mnmMyDG4Nobag
         cAeO/+fo8Igr1dHlwkrffgZgCK43kfWVAaBzoSCc5mnCRqmA9AnGD42cSM1+/vTXt/rv
         lZgEHe7/v2g5I3KsRFuDcMcYBPKA5Lp0LUjvfJ/7CBlqXWLmkI1rr8Iivo7QQHFNO3sQ
         9S1A==
X-Gm-Message-State: APjAAAWpR69Ppo49jmtrlh+CmhoUF0HCR4eWt1+cr3Up9OFqeXn5qo/L
	N0AP5biBt4o4NbfaCWXXjoQ=
X-Google-Smtp-Source: APXvYqxZ6/D5eQDr9iD1SB8Z3zpTIxIIxeiZpMv5b7/QNZC8TSpcG8uo8Ewg6MX7x4Ie8nRygjO0BA==
X-Received: by 2002:a63:8c0e:: with SMTP id m14mr67841024pgd.219.1564001759198;
        Wed, 24 Jul 2019 13:55:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:372f:: with SMTP id u44ls15784680pjb.5.canary-gmail;
 Wed, 24 Jul 2019 13:55:58 -0700 (PDT)
X-Received: by 2002:a17:902:8ec7:: with SMTP id x7mr86404111plo.224.1564001758916;
        Wed, 24 Jul 2019 13:55:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564001758; cv=none;
        d=google.com; s=arc-20160816;
        b=bh9joEjn9IqlzFTPqBYcvu1oD/CEmRileZxCbHSi/LY+3nMzZBoQjzZoOKabvIJT44
         4WUcfAB5CxswXm5j5gFb5ZQutk1yqXKKSjWDtGI5w3DqRIDYnM9VlqPRTJ/u5AtCE3rQ
         38X6dPFPQrbdQ85rQl8Tuwy8NYRqSP8hnlAVocbqm1bgEwhRLZTtc3a2SZhi83Oj+xOc
         +GRNu0OcGv0RLPB5CaVNuC8AruNG1uYBO23DEtbCgO0okGKt4RQRVs0IC3m7puuDIQsh
         ctpNEwAMPaXWt+JsEpNYVGr3Z1tyqtxpH2p5OyGu4AV7MUmXOkNZTDIhu1KrsMUI83+C
         uDQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uKJBy2iaUBCua8Sau5lsnnlge7l0Cz16fffzcwsA5cs=;
        b=zHTu6ZONRLjN/T/ni1CVU+36VtN3XxZ4F/WC/H7cCzGg3EyOWOMxvRBSE6dMZuLczb
         mjKQrOqY33qYmxctAvRxppoWQXKRjfHVnPqNedLzxImWT1Iq+9Waf1lWxLc4DzMebqt4
         2qzJgyXBkDLK/PSDixb76xmAffcoilvg9kB7OH08q0fOkd8tez+XEZOCgrqlGiQpsjYe
         ed9mGVGfaB8qBo9FtIqs/s6L5t5WtLlAYzMQqUSYEHDeR3SgnlDnb6Om+rIVZto9//Fr
         GBQZ3WK8TqjbHPaqWWeWoIgfNGWNX1/Gd1fC4S/s81+mSH85q3qxbnZ/oyV81qBHtq+T
         SGAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v1fdWobT;
       spf=pass (google.com: domain of vaibhavrustagi@google.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=vaibhavrustagi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id y13si1873491pfl.3.2019.07.24.13.55.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 13:55:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of vaibhavrustagi@google.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id i10so92491074iol.13
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 13:55:58 -0700 (PDT)
X-Received: by 2002:a6b:ec06:: with SMTP id c6mr79740045ioh.198.1564001758141;
 Wed, 24 Jul 2019 13:55:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190723212418.36379-1-ndesaulniers@google.com> <alpine.DEB.2.21.1907241231480.1972@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1907241231480.1972@nanos.tec.linutronix.de>
From: "'Vaibhav Rustagi' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jul 2019 13:55:47 -0700
Message-ID: <CAMVonLgwzj2vjKtgXJG2=U04-w+29TZhgykeNYRbWTT55wtNMg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] x86/purgatory: do not use __builtin_memcpy and __builtin_memset
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	yamada.masahiro@socionext.com, stable@vger.kernel.org, 
	Manoj Gupta <manojgupta@google.com>, Alistair Delva <adelva@google.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Enrico Weigelt <info@metux.net>, Allison Randal <allison@lohutok.net>, 
	Uros Bizjak <ubizjak@gmail.com>, Chao Fan <fanc.fnst@cn.fujitsu.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alexios Zavras <alexios.zavras@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: vaibhavrustagi@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=v1fdWobT;       spf=pass
 (google.com: domain of vaibhavrustagi@google.com designates
 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=vaibhavrustagi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Vaibhav Rustagi <vaibhavrustagi@google.com>
Reply-To: Vaibhav Rustagi <vaibhavrustagi@google.com>
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

On Wed, Jul 24, 2019 at 3:33 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Tue, 23 Jul 2019, Nick Desaulniers wrote:
> > Instead, reuse an implementation from arch/x86/boot/compressed/string.c
> > if we define warn as a symbol. Also, Clang may lower memcmp's that
> > compare against 0 to bcmp's, so add a small definition, too. See also:
> > commit 5f074f3e192f ("lib/string.c: implement a basic bcmp")
> >
> > Cc: stable@vger.kernel.org
> > Fixes: 8fc5b4d4121c ("purgatory: core purgatory functionality")
> > Link: https://bugs.chromium.org/p/chromium/issues/detail?id=984056
> > Reported-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
> > Debugged-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
> > Debugged-by: Manoj Gupta <manojgupta@google.com>
> > Suggested-by: Alistair Delva <adelva@google.com>
> > Signed-off-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> That SOB chain is weird. Is Vaibhav the author?
>
No, Nick Desaulniers is the author of v3.

> > +/*
> > + * Clang may lower `memcmp == 0` to `bcmp == 0`.
> > + */
> > +int bcmp(const void *s1, const void *s2, size_t len) {
> > +     return memcmp(s1, s2, len);
> > +}
>
> foo()
> {
> }
>
> please.
>
> Thanks,
>
>         tglx
Thanks,
Vaibhav

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMVonLgwzj2vjKtgXJG2%3DU04-w%2B29TZhgykeNYRbWTT55wtNMg%40mail.gmail.com.
