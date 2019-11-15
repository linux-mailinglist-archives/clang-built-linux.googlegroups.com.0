Return-Path: <clang-built-linux+bncBC2ORX645YPRBP67XPXAKGQEQO7RM4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 17138FE4F7
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 19:34:41 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id 66sf2546398uao.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 10:34:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573842880; cv=pass;
        d=google.com; s=arc-20160816;
        b=SsDvxRqQNKwFNtrwgJfMt9Sfo64FhaaUNZihaH3dkBZZRivxXU+5RdN7kn5XkuARyk
         qfgudMXbQAxbrPj+j4Cg10Ie2Y9ReP85PCIkd4ub/3LL24ClBN2dSJNvZBs8B7I5ZLlZ
         np4dc5cl3vLBufV8nf5EgPLdyptNYPdE0B95tgOPmCpN1KS0/JEEr66uD3yHJg7+Tvzw
         /JcvgIf1PVh/hCF4iNf2kKcTM4jHQIiguAHUtUggsJqo6wvtrOOtJ5Dy43J5HRYXKS/o
         BiA5cTUhE4mMPosGzjmNn/N7U7/EzUzHzzrnS4iEvZI2FIwYlt2PqIGtdco0Ux86mDzJ
         Lk7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HHPt+Ljz3UZ99Hvr7uf6ExurZ78DgpBz+ST+xU2rz0k=;
        b=WxpjmdfIFw+ntrSR7Ts8xc9Gg8tWYWCWNLSyvNQpV+ZriRTtRc28YUv3n14aDFxxaa
         aXPH6+WA3VGbngHoP6rIGtY4GSnYnknwzwllhsf/8JV2z7Fz43gfn9tfMrNDLeFl0P8A
         /vLu5qNB/NJlRAC/gXcoCXQ4JpQ+I+KolE+t+8zndXTubGBsMq5df/NErQqoKByDlGLi
         R5tbXeRoXHLKCfUj6PbksP1hVFILot345rQS5ZPBWKiAguFcJgmxGS66dl44+rXkzZph
         9+T/6sJgzuMj0phd3gtypzUUzG1X9ce8AR3oKAV/B7M0nwtdH1NhCGERNsFzHrPEhhJv
         zPYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DPVoi3lq;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HHPt+Ljz3UZ99Hvr7uf6ExurZ78DgpBz+ST+xU2rz0k=;
        b=YnnkRd+VjIClEdJyEzMHHpG0S6xNXtaVZetQ+gCCHq9M4ZpdmX4Wewx3LZsIOezi9t
         jjpl0PfgxqoCuW7mxplF0J/V8lj64xJootjNIrlSSMKJ3LkvqEIqFhzWAp8YNzKH4Dse
         x6zak9cPG+61PUrrUrGh8M/mqEsUT0vH+FyrCUhC2WZUcdko1ak7XU7Ve4aU+J5ZINLM
         3WJE9w3oSAnZD5mRax0uAH4jHWWqmf+h+nyaTe9RkGmIU7KHclgyCAuMi+REvHlp2kmU
         mj7mr/EiTcjcEArqPQVeHDXg3kWyYPCxQ4MTXR9Pj/PG+jOuHcz91rPxrbDlXbx05BsN
         yj5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HHPt+Ljz3UZ99Hvr7uf6ExurZ78DgpBz+ST+xU2rz0k=;
        b=odZSMjdkEEzo6P24PuyqzVjHby2X2rv4Nlv3nfnIERLSG0EtnUB27Oc8P3NfzhxXvw
         SCiBW+uOrpkJdSFcyWCrerT17ACXWhmTAQQhNU9cmRJf0qMV/HMKdc9CCZZaVo612Ig5
         ZM4wXF6eAhibC2mk3swl/Y/7y/rXTokg44kk5vp/sRaORdLCns7I4EWVxqh2sL81EOrd
         91elyvwEiRtZiqZlNlO7RB1Forr5um2wn/dV5Dpww5MBSOh5+cxEvYenwcpJrHGr3dm/
         Z8h8iBR/K2CF1wC4ZXk1Q0VHNu75wYCZK9x6epJpeu2Q+BXt0epQHNzDVTF5JBlMTT21
         JZQQ==
X-Gm-Message-State: APjAAAVSDRos/ywyADU3dDRCkay9DRUBo4uOXgSUEb48ejolh9rk6vdI
	XHHTKaS/iRk9Xm08e3I3U6Y=
X-Google-Smtp-Source: APXvYqwadjFXA5FXJKtCwAf5bPY971NsFu0Szw/tb9U92o0v1J3yoHHkyNbt/NKedgwe02c0TTm50A==
X-Received: by 2002:a05:6102:309a:: with SMTP id l26mr9914053vsb.176.1573842880020;
        Fri, 15 Nov 2019 10:34:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2261:: with SMTP id v1ls685411vsd.11.gmail; Fri, 15
 Nov 2019 10:34:39 -0800 (PST)
X-Received: by 2002:a67:f98a:: with SMTP id b10mr4306576vsq.203.1573842879650;
        Fri, 15 Nov 2019 10:34:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573842879; cv=none;
        d=google.com; s=arc-20160816;
        b=NqHCT1zYqy3Xhaf9wNiQeOl3CrxuWa/dHOFa6nrl9p0Vz3pb21rc5zzO5AK7/HDw6F
         C4VoigulMzPHB1mI2PAH1ShrLCk+gYwDovvrRHPGCwqrwecx9aq+lidU9NJTXeJ3zPNz
         9Z80vw2L4Ze0n8jtpHnhXLol9wqSXpiJ2WmkDWfAe7/M1LRtDStPJEffQbzt3hClFoGU
         VdFpt2gxYp+D82zlbUeS6p98vGQUuh/qowdrx/w5dJBm3iXDmA1fY+alzhEKBmC3Q8kM
         FLaUtiOxjNrrP35bqSeMSwBQnaNY7IGE6xNlHEKHbabyJs3dQx3oS6uaL+NON0vXYpVc
         w3nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z/RQj5FqYPBFFb/BHpJq3oq0/JIX3F5mcr3Ic1KDLoA=;
        b=efZeH8Jf40P1K/Blqb6IWTkO2GifJ+2Y5kVyllOBmAw5fpbN2apEkxIjfnxyYqXLO4
         IK21LUwaJnzcVGVoLm9nqQxQEfNF52LRBZoewjmYvdSy8XDuf5YND6zvhXt4CokDj0pL
         EzKdOvfMxVSMcH2yUqfbHA/cX8znB/6BUUX5WkbBPu45RoV5SdoyJJ+EF54CQCkfppXI
         00c/iJyHcvQPMEKl3R89Cojtqx4gylwXBTAh4X6Ptt60Sd3bXJCPKgDTv3idm8Hp9CMi
         W2OBTbNdcxsrP5y1JeLVZkT+mCkWSBnCe3HbwJd5cwzYoJtEJSCltzUR04OQktizse6q
         fB7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DPVoi3lq;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id p195si658840vkp.1.2019.11.15.10.34.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2019 10:34:39 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id k15so6977611vsp.2
        for <clang-built-linux@googlegroups.com>; Fri, 15 Nov 2019 10:34:39 -0800 (PST)
X-Received: by 2002:a67:e951:: with SMTP id p17mr5243152vso.112.1573842878866;
 Fri, 15 Nov 2019 10:34:38 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com> <20191105235608.107702-6-samitolvanen@google.com>
 <20191115153705.GJ41572@lakrids.cambridge.arm.com>
In-Reply-To: <20191115153705.GJ41572@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 15 Nov 2019 10:34:25 -0800
Message-ID: <CABCJKucsJxXJ6tBYSify-2FS-P1rC=vEKTo+HdhN2e0K9fcBow@mail.gmail.com>
Subject: Re: [PATCH v5 05/14] add support for Clang's Shadow Call Stack (SCS)
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
 header.i=@google.com header.s=20161025 header.b=DPVoi3lq;       spf=pass
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

On Fri, Nov 15, 2019 at 7:37 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > +config SHADOW_CALL_STACK_VMAP
> > +     bool
> > +     depends on SHADOW_CALL_STACK
> > +     help
> > +       Use virtually mapped shadow call stacks. Selecting this option
> > +       provides better stack exhaustion protection, but increases per-thread
> > +       memory consumption as a full page is allocated for each shadow stack.
>
> The bool needs some display text to make it selectable.
>
> This should probably be below SHADOW_CALL_STACK so that when it shows up
> in menuconfig it's where you'd expect it to be.
>
> I locally hacked that in, but when building defconfig +
> SHADOW_CALL_STACK + SHADOW_CALL_STACK_VMAP, the build explodes as below:

Ugh, thanks for pointing this out. I'll fix this in v6.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucsJxXJ6tBYSify-2FS-P1rC%3DvEKTo%2BHdhN2e0K9fcBow%40mail.gmail.com.
