Return-Path: <clang-built-linux+bncBAABBH5L32AQMGQEZEZBXSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E4F324FC6
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 13:18:40 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id x26sf4100501ior.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 04:18:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614255519; cv=pass;
        d=google.com; s=arc-20160816;
        b=zpl7gguCJ+4/hnEPQfkL1eufapgiLEqPtVjk+goYlJPlbp/rGb+mc1wzf+4UR73pKH
         bf7hBUtdyOcn8jPD2UAK0//2pc9puURAXn1wYcb5rljfygioviyvbxHfIWwfCtr6yUsW
         xSVeWo0qHlxZxrlnO+QaDx3cidHlkFZcWUd8y5Wifc1yWAkwbZYn3UjGULLqZSdAL3O+
         Zh6T93K6kmMr1q0dUfnw0VMD2nBhhfJJfW65ddqLNRp975OavU5kBwlzxJgKR/s7CoFb
         KB7yLVqdmkoExcEca6is7g1WIAoIK1cXHkwbK3+l0rby25mNS4N/w8b3TXo0Qy+B3EBn
         tm1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=RFVHdNjFHiLlKELXmpCseIqEKxt6whpzurfRzbqTpXA=;
        b=s18KTZl8odidZYimE4Eb0UPSJQEhv5vfP9TRTeTQ83DLvxxHIxiAGmVZ3+aSVInFb+
         bQIvRJmEozk3MY6h7RcmYLHI/fxDODYOa1Q9ao3EqtBRFNnm/06NYBCpMzNv7KNz0kbp
         /h8hns5Ybi3ELtTaV8ZDKCTcjWIErd1NdLU7wm1l4Oc3GWZJi4r/16YmIYkeKWbTxY75
         mX6Dgig6fXJZob+7uXF/VZahIcH4iCQWOr0/HQUCw93Wq/A7jk0mL6n3VyRF6/89Txkw
         VCBzHPouMIYfHy7Hg4zzKmHr4TXJgpuOC0R7622Ml8PAvLf/MLsbBpiOKW9Fsuw7E7Tr
         Y9TA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XRVTGE5I;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RFVHdNjFHiLlKELXmpCseIqEKxt6whpzurfRzbqTpXA=;
        b=cduWrkoTE2X9XbdyYX45iqhrXOnIkUFNBFgYDC4ZZbC5VXg8HDH8sO4X7c1n4TDlir
         F+54WMc59wxiKv7O6VGGwKTVJUULjodLE8YS0zBXoO7lFMv0K2vV4VdnIYGcBvrjYhI0
         G8Tc0GSLShbtOmSpY5eRqrYNXzpxo4+dVePV9HNRTKr8sTNd8eXatMcRhZYOIGfN0FWk
         wydQz/92eSNociO/kzX7V7HeBxO9c6vulcFMslz9yPYkGykMqFLp0ozTo/hCTGf+won9
         TWLnBOmC0gbSVNBgiBpn701YPILy72FT819yrR9rhX7RzCwfWcwtrpltwy6jz2fE3LFZ
         HWrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RFVHdNjFHiLlKELXmpCseIqEKxt6whpzurfRzbqTpXA=;
        b=OtEwlVS9gQ50KwlU/Hvg1q7/czy/8PKbQydwiXR6RgCOFDVSgtaJMEqLolxQMq5k8m
         ZhRvHvk3D/6mlF/3+AGjTj8WaEyq0swhOQdNpRumeCkCXPgOgYTD7RszjBB0jQ13eySX
         LrpZDObrL5BbAAx6lETHUoxqUZBo3pVy4/Ua17Yvr8Qceyu88XotHDIdpkmN5Qb1qYd2
         g3oOTpY+0KYPgFD4eJdpqQTu2RL1+pvjsGBnT63afFHodrZ1+tNw5gQwjJgshXVW8deW
         Ks5wCNwVvtR+0qqq6YUY6xnvNGv807TkHgdTavusNLx9WHimQJ/gLojltH2+PDptXzCu
         eL4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/jXIevKjENXApK0RvyigA0FHeFWM9IXWduF0f4ssJ/zH7eX7L
	ZUFOL00aWF4PEEkJ5j/BH14=
X-Google-Smtp-Source: ABdhPJx5r89C6FW7D5KVPFuVkCEwsBrKAwOgSbmKoZb2eytPXOenHY4Tu9PnTeqZidM3YLHcfdRHHg==
X-Received: by 2002:a92:1312:: with SMTP id 18mr2138645ilt.92.1614255519550;
        Thu, 25 Feb 2021 04:18:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8ac3:: with SMTP id e3ls1013908iot.4.gmail; Thu, 25 Feb
 2021 04:18:39 -0800 (PST)
X-Received: by 2002:a6b:e504:: with SMTP id y4mr2473349ioc.153.1614255519286;
        Thu, 25 Feb 2021 04:18:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614255519; cv=none;
        d=google.com; s=arc-20160816;
        b=q+MVzcDUInpZ2nl9nikCAF6IJcPJgSZ5Bt9e12cLTCB1Q8U7AbCvWM3AsEbNAkmEe8
         uN+97AY4hwvi+GStRiQqd7BcPUJYhERcL1bMTA3O4lcllIT2HG5huFVUyly0knAX0xeu
         mgeUEe7UiUpMgvGaRUiRC9KtmJNgtL/VaJumKO9rQctkTsgsYTWmBUtd08pQhJC6XRd+
         TsaNoqZc7H1gJB5LSV87DiEDTXGajqhojikV+nWhb0Rhga09C4W58YkhNdtZTNs3rA+Z
         aZJ64+bQ5n/Mgfpq5XOUOhgcyNBi1XJ0FcLdd71hnW0lCFDMSDBDWvQVv08Ver4/Z/zm
         GT3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/VsrK8+T025binYxZuXEDJZTz4uQM9c1NT+TyVULcxQ=;
        b=AplTR/pus383yaf3AXqCujxMM8Nc6ipGgybdviK3NDdgtiu3s0GwpspBtWxgA+Tdm/
         PC3NrbTQ9ZGdwdyErzp+T6m7eupWNczzOZnvIgzlMjcNz7uoTtwIeFB38+ntjKX3BPLT
         fpnu1jCS1lIdVnyZJc+1Q/u9cEenuUcSuyyVwPYzeLx7UuzP4sj2EVnFQ50r4jG97cry
         4o8695I1sLR6QE46NyWZ3mHGw7INxjGjTASaQN2cw/AmVP1tYmdHWGzfxjdgxbCAwN5N
         eh9SFkSt2GVjsgsAvLU+EAyXFE1rVPRWGTK4xGz5s6Xjuf3jGvPPJw9RhfMqlZ7em5Ul
         Bdyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XRVTGE5I;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r2si273655ilb.3.2021.02.25.04.18.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 04:18:39 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4418164F1C
	for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 12:18:38 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id l133so5869923oib.4
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 04:18:38 -0800 (PST)
X-Received: by 2002:aca:4a47:: with SMTP id x68mr1574795oia.67.1614255517403;
 Thu, 25 Feb 2021 04:18:37 -0800 (PST)
MIME-Version: 1.0
References: <20210225112247.2240389-1-arnd@kernel.org> <20210225114533.GA380@zn.tnic>
In-Reply-To: <20210225114533.GA380@zn.tnic>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 25 Feb 2021 13:18:21 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0BN3p0F3UAxs9TKsHs--AiAPE0uf6126GVJNhmVTGCsw@mail.gmail.com>
Message-ID: <CAK8P3a0BN3p0F3UAxs9TKsHs--AiAPE0uf6126GVJNhmVTGCsw@mail.gmail.com>
Subject: Re: [PATCH] x86: mark some mpspec inline functions as __init
To: Borislav Petkov <bp@alien8.de>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XRVTGE5I;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Feb 25, 2021 at 12:45 PM Borislav Petkov <bp@alien8.de> wrote:
> On Thu, Feb 25, 2021 at 12:22:41PM +0100, Arnd Bergmann wrote:

> > -static inline void get_smp_config(void)
> > +static inline __init void get_smp_config(void)
>
> __always_inline then I guess.
>
> Not inlining those is just silly.

Either way works correctly, I don't care much, but picked the __init
annotation as it seemed more intuitive. If the compiler decides to
make it out-of-line for whatever reason, I see no point in telling it
otherwise, even though I agree it is a bit silly.

Should I send the patch with __always_inline?

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0BN3p0F3UAxs9TKsHs--AiAPE0uf6126GVJNhmVTGCsw%40mail.gmail.com.
