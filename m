Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBYFG436AKGQEGVZ5D4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E3029D0D9
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 16:50:57 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id f3sf2481886ljc.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 08:50:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603900257; cv=pass;
        d=google.com; s=arc-20160816;
        b=kjhC7KhcEz7qWV7iJRJ0CvZ0uXba90cDRx1uX6WTYcVROMT4uIQ0lWmzwtB8/VO6rv
         F9yuDX+scQKV8dsKnE0O/N2X/k/5al9R2HYMwQcRS8gLc6UvO0bkvQJBvV3I/iWVkrAT
         Khbfi7cgDqkwZDyjXxron0KKphijaR9LvdmL1XtpokGVvE9vCO9zqN2jTZDYO+YRs8iz
         ARRsDhZvYZvzmeOuWltC1YsBAR/gf2Rv9k6nKl4LJv7/7kKbu1s17IxW0z5wROMWmJGM
         pCAL8OzbJmDSeZLDTCRyc4QWSh/Y2otBD+FPDODuazR330d0KZaJHc6UGuA2EpuFS30S
         cyAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=OWsXvaOM0RSLK3PtM8pNp9CZZB3O40yN8CgRZfxjwGY=;
        b=yeBDhp4fRNuqM1nyTD5sH3CnxKyjzg55po54ARLghxnDeIR1CGpykDRWoWo2RCJIWP
         MSZfeIrM0jtvNpoSlE1tOzAuajyxIydxn3yoYcrv7RCyfCxbSu8cVYq2kKYCNZCkXjNo
         jcr+43G8Gb2Dkficjy0dD6qYO6h4vZJs7/w/0jBolFi3zxAjnJoJLKK5mJOKls0KVyI3
         +jRdAfXdNAAMdF0Mnv5sGLO8ZenP69DgBX6X0Va6yKCM/aN/ILgzmlUtiTSjWMvzfpff
         +TXae2n+AQLplv1+kBb5NXbReuERdR2EOofQHr2IEcA5B49D1r6SDpZUAcJYfnU1TL6d
         iAjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hPhWjar2;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OWsXvaOM0RSLK3PtM8pNp9CZZB3O40yN8CgRZfxjwGY=;
        b=PxjHbmchHka2nmu4auQAtRVkZ+raFPjG2IqWJT4SdtQRq9A4v3MKiJbRUCKwsqfJBr
         5rjzamT/M/+Gm8ZA5aIJoVeY4H7saAkMABdFYaaGbMZg3hXoMEOe2pQnwZDgkEBYoDFM
         Uhf/DO1ErqAMOEpDYJQovDW4tOWwibsivoCxU5Zmg21e7yRxmnYp/dvgmCr0CMvhk3h5
         2yZ/jNr8ZQLYNN+FkhK/RrbVVonu1pReA5A9CV6lEeFzEP8yb5tSRfk30d0auWm9n6Kj
         atYAZDMMizpVxXCZDTfR65qBpAvM6TfJTJ0SO9n+gQOP3pZAWrNHNsCpgM5wn4OUSHrY
         J0Aw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OWsXvaOM0RSLK3PtM8pNp9CZZB3O40yN8CgRZfxjwGY=;
        b=FDQMLQhkXBuvZDeIsu5om1O+sJaINmBG3KVhbRNvIkzZERWF2yPbtOMuTIgO3DwaLu
         EFIR63yeVIqtima6UCSHpP3fFEh+HAKtvdvcp6knLHu58aDyx/K0wp+dS2iTaSbKYike
         KlTj5uVGLZP2iVJlGfG8nK9MYznqTotbN7Ps3xTHzmUHKLrgzqsefGHpPAeUceHMSEWb
         fIGjybMOovuoLNqHnFvt7k3sz7aSr8W3URPd61n6W1GXrajaO258L/O/O0pSYTNAPRaU
         mIslFTvUwy4RZFstxvl9vdCScBJPx0AUgrnDoWLdjH2bazMT70C8ZzBjiXbRMOJfLzR4
         2VCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OWsXvaOM0RSLK3PtM8pNp9CZZB3O40yN8CgRZfxjwGY=;
        b=Nifid0tFAv1zIfp06X9/xGdQyYz9FUgwC4PvHIBqS5CML8JHzaJxzsgnjn2M3Kz4Wb
         t8hfkXGKhsQ4pVtQ5ivzHV09uVsTasuiVnphYsPqONvVphAr1R67uN8QKKMlzVMeMBJG
         qCjDfRzxj/4tC5hvRfgbJI09nTiWjpvjYdQrNjYAJMPbJI0apI1MF58fHxkyhMdfLjDx
         eXSjGOCIjucgGbcRJEQdNFbkXF+nONjLqG+ri1mKcVMx5uQTUUn+4VrRH1inQvQ2N8a9
         Usol6r28dI/AJBcBoXBG2ozT55XMwqrlnUp3/q3E+TWs38p6uhXpRTxNdyg9V7RoZAFg
         vtOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Pnjkq67rZtOoBAStSPQRKh2KMNjgbKFDcWTeoyRutSdIkcYbk
	XyEnbq3pAEdG5jBLHjLwcXs=
X-Google-Smtp-Source: ABdhPJzWxS1mEGMYpcKCHoe7rVw0Cf/UgaE+PAEOfER+rYAhUg+LivE/3q8+CKOezk2ZQPED9yEpvQ==
X-Received: by 2002:a2e:8706:: with SMTP id m6mr3638740lji.129.1603900257189;
        Wed, 28 Oct 2020 08:50:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9bc1:: with SMTP id w1ls1098488ljj.4.gmail; Wed, 28 Oct
 2020 08:50:56 -0700 (PDT)
X-Received: by 2002:a2e:8e67:: with SMTP id t7mr3462035ljk.206.1603900256040;
        Wed, 28 Oct 2020 08:50:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603900256; cv=none;
        d=google.com; s=arc-20160816;
        b=ebQXp6EV741Do5TEfyppd1UpzVzCEM5ZR4e+5PZ5TpBFQ1L9FfMwOuzuEgubcrSOSO
         hD0qCGqMZfNPeLVZg0fUBN+kGieKMRAlzPcqCMdXhm5eYSGXStRHZkItvG32vXAENH1j
         M6AsCUf0tho7lB4PwssRajWsWrrWlk4QldtHu0CK6HmvaEb2378d4uFYoCUGPgH6AZ9k
         E63Og+qbPuCvPB1OBpT/mJkLCPcMFGwcgathwh4MPNKxBmjAaJVgZ1+2WuiUPIkTFAoc
         +DCB3/fMuywDWkb3BlcMXaaYuls74/PdZVmDF+FdoimKd6tfpYIO8mFIVN/ZUC2lDCGc
         K4xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=gSinsdGE53PZSUfpITJI0G/Gp3pGnKuptRZHm83+NWc=;
        b=cheS4sTxUjXkB+NKgwhtjI/8gVyEZufzIT0FcVQ9Dh294aGEF5yrWvSfQ4Lqvv2GMi
         u0MJWZAUu+3eErk9+ajyDsBGP6PTX++wU43xptcNhVhdMrgHQngETaFhAv/Rbgryxoop
         mCFz8ceAh3jUdWhoNmTFwhT0+XGJWxI4ym84GBFHWLwwrsp/Ssf/xkOmDYVxh9sJ+ZqC
         KxKIXhCkXzYObxLmbN+dN9jnioO0r7EbBZ5hREsRUU0axusyCbquAOGCBrG9GnooeWhZ
         75/1OKPsi5abZlrBgkuTtTq48ppg4TqmCYfmGkzIJthzEHePBxWNmgz2PWYQ4yZK6Yov
         wjZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hPhWjar2;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id l28si153760lfp.11.2020.10.28.08.50.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 08:50:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id l8so31166wmg.3
        for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 08:50:56 -0700 (PDT)
X-Received: by 2002:a7b:ce8f:: with SMTP id q15mr56820wmj.88.1603900255413;
        Wed, 28 Oct 2020 08:50:55 -0700 (PDT)
Received: from felia ([2001:16b8:2d7a:200:a915:6596:e9b0:4f60])
        by smtp.gmail.com with ESMTPSA id f5sm18509wmh.16.2020.10.28.08.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 08:50:54 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Wed, 28 Oct 2020 16:50:53 +0100 (CET)
X-X-Sender: lukas@felia
To: Tom Rix <trix@redhat.com>
cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
    Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>, 
    Jiri Pirko <jiri@resnulli.us>, "David S . Miller" <davem@davemloft.net>, 
    Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
    kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH] net: cls_api: remove unneeded local variable in
 tc_dump_chain()
In-Reply-To: <d956a5a5-c064-3fd4-5e78-809638ba14ef@redhat.com>
Message-ID: <alpine.DEB.2.21.2010281629030.13040@felia>
References: <20201028113533.26160-1-lukas.bulwahn@gmail.com> <d956a5a5-c064-3fd4-5e78-809638ba14ef@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hPhWjar2;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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



On Wed, 28 Oct 2020, Tom Rix wrote:

> 
> On 10/28/20 4:35 AM, Lukas Bulwahn wrote:
> > make clang-analyzer on x86_64 defconfig caught my attention with:
> >
> > net/sched/cls_api.c:2964:3: warning: Value stored to 'parent' is never read
> >   [clang-analyzer-deadcode.DeadStores]
> >                 parent = 0;
> >                 ^
> >
> > net/sched/cls_api.c:2977:4: warning: Value stored to 'parent' is never read
> >   [clang-analyzer-deadcode.DeadStores]
> >                         parent = q->handle;
> >                         ^
> >
> > Commit 32a4f5ecd738 ("net: sched: introduce chain object to uapi")
> > introduced tc_dump_chain() and this initial implementation already
> > contained these unneeded dead stores.
> >
> > Simplify the code to make clang-analyzer happy.
> >
> > As compilers will detect these unneeded assignments and optimize this
> > anyway, the resulting binary is identical before and after this change.
> >
> > No functional change. No change in object code.
> >
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> > ---
> > applies cleanly on current master and next-20201028
> >
> > Jamal, Cong, Jiri, please ack.
> > David, Jakub, please pick this minor non-urgent clean-up patch.
> >
> >  net/sched/cls_api.c | 16 +++-------------
> >  1 file changed, 3 insertions(+), 13 deletions(-)
> >
> > diff --git a/net/sched/cls_api.c b/net/sched/cls_api.c
> > index faeabff283a2..8ce830ca5f92 100644
> > --- a/net/sched/cls_api.c
> > +++ b/net/sched/cls_api.c
> > @@ -2940,7 +2940,6 @@ static int tc_dump_chain(struct sk_buff *skb, struct netlink_callback *cb)
> >  	struct tcf_chain *chain;
> >  	long index_start;
> >  	long index;
> > -	u32 parent;
> >  	int err;
> >  
> >  	if (nlmsg_len(cb->nlh) < sizeof(*tcm))
> > @@ -2955,13 +2954,6 @@ static int tc_dump_chain(struct sk_buff *skb, struct netlink_callback *cb)
> >  		block = tcf_block_refcnt_get(net, tcm->tcm_block_index);
> >  		if (!block)
> >  			goto out;
> > -		/* If we work with block index, q is NULL and parent value
> > -		 * will never be used in the following code. The check
> > -		 * in tcf_fill_node prevents it. However, compiler does not
> > -		 * see that far, so set parent to zero to silence the warning
> > -		 * about parent being uninitialized.
> > -		 */
> > -		parent = 0;
> >  	} else {
> >  		const struct Qdisc_class_ops *cops;
> >  		struct net_device *dev;
> > @@ -2971,13 +2963,11 @@ static int tc_dump_chain(struct sk_buff *skb, struct netlink_callback *cb)
> >  		if (!dev)
> >  			return skb->len;
> >  
> > -		parent = tcm->tcm_parent;
> > -		if (!parent) {
> > +		if (!tcm->tcm_parent)
> >  			q = dev->qdisc;
> > -			parent = q->handle;
> 
> This looks like a an unused error handler.
> 
> and the later call to
> 
> if (TC_H_MIN(tcm->tcm_parent)
> 
> maybe should be
> 
> if (TC_H_MIN(parent))
> 
> so I am skeptical that this change is ok because the code around it looks buggy.
>

Maybe that is the case.

Certainly the comment above about being uninitialized is outdated as 
parent is not used in tc_chain_fill_node().

I had another look and I noticed a copy of this same pattern (with the 
same comment) in tc_dump_tfilter(), but it seems that the two copies have 
somehow diverged over time. Certainly, something is fishy here.

I guess it needs some more digging in the code...

Lukas

> Tom
> 
> > -		} else {
> > +		else
> >  			q = qdisc_lookup(dev, TC_H_MAJ(tcm->tcm_parent));
> > -		}
> > +
> >  		if (!q)
> >  			goto out;
> >  		cops = q->ops->cl_ops;
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2010281629030.13040%40felia.
