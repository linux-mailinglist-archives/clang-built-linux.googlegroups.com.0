Return-Path: <clang-built-linux+bncBC2ORX645YPRBO7NYP7AKGQEYRFGM6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 947312D465B
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 17:09:32 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id m19sf1564177iow.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 08:09:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607530171; cv=pass;
        d=google.com; s=arc-20160816;
        b=TDK94gDK8uJ1bfBZC6lCvObVr0JarKv5nHvdKo3skJzTxX5C6p5imNqShzTXGj236v
         NhTKEcXZ3sSwreqD5Yob0xBTlT/cwZ6ZGLVBuAqRZc6GYxxjdTmz/bExUA4gTNk72ClK
         IjNWom9ftQSP43cMkfraXGnzZ0medg6BJVRgMw3UFY3jgAtcsYDbnU8oL+70S0emjgiy
         jU24pD/7rUswSVrKkeCDRPs+GSKg8OWLkwyPfSLVcXqbfjp0EIiaS9DN9VRwkskNmazx
         xOi9FcSbktSepArdGC/Gqp1zcNWqEh3ljNBJ4hTzhbHMqg08sNZNZO/La3kAk+44nmRB
         9I4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IuGQIqYvaf/XA05nQcqbGisi+oX/UUsdnlJHPuNXoio=;
        b=gFzkkXSsxeCy+hK9+3aQgmcMVbs4u/275Bm3cOGDLOW5AsFSVx07vPGMVvuHsn+BcC
         6+5tO9jzVy9KIj68qOwtyGugIIq8NDPP11ObccqyaoLsFoiD4lrkEKlxh/PaXdGBXT45
         EwbagWndpRqy/nu9PGRf/Su7/IIfLA0TeB3YLr3w9/Dj96QPxqWGLPqGPW+kBDJUrW/e
         7JUn2xoQ/7xb3hJsX7YPxROOWdERtigV3jz2wAz7/8m3QJJbZTILtL2dgt8xzY/ZFaLR
         z/abvpLtM66kl+4lOEud607T8koNZPcuhG8UPiZ6Axq/WB2QLMbaOIs0IGgezJmbF35n
         FOSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=enl+HYZf;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IuGQIqYvaf/XA05nQcqbGisi+oX/UUsdnlJHPuNXoio=;
        b=kIkjvfJhTUuMFk00CnRbccNuT2I7MSQ2xA+SewcOBG8mkul/uSd/8I0bCARwW+XRDb
         bWuiKlSizk2AUVnqiHmGH6LKzf6GAl5xtaKs6Yj17ppRakU4ZALcm2oSFSTJ7q33pn3W
         7PdGKEd/anb0UkHxBbgxCj5W3zUl/KoNdJsWaojVeO4hEiJ89XgOFNHcw9gfdYAi0gfD
         U7H0Aidl+oT+Yy7X7IcCGtgb/ZvIQcwkBm2Wfr1oaYFUiXNKwlS8kXqrsw5ml3VSN87/
         0JP2r4ySRyGtiyaVKPtz2ksNEAFH8/lHROIq3qt+pIFQoHulErYPPXB9PHoAuI8LmEoS
         Vpzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IuGQIqYvaf/XA05nQcqbGisi+oX/UUsdnlJHPuNXoio=;
        b=BOaDaG0OfgRwP6INhhz9kVKdfAiMNGAUsWWm7aUlUXKYCZiAMbEm+vCG0VA/lrPVeI
         2nGwTQI3kz7ji7crZc2pr+8ONgfIKlDHXV8kS+kXtcWJlM3PBlHmLuavPXtJJta7mNpc
         WthgeVbPRcW6brJmvrnKo3zKeQYsBorCw/uigJf/8e1Cwmtqc2L7ow7rzCjyAFTvvOS7
         /rw+lwoYHdUe1cEkcmAKlKUb7kY2b+P/T+T7XLDOvP0bb92SFbv9LsMsPW3AFbJSwRpk
         1z9/KbZ2lJyZAqLSeZbTProUAHhtLyUNaIOzUAcPPu41UyfNAnNAJ7+PoFQ2tjUQrshd
         BrPA==
X-Gm-Message-State: AOAM531XAAsuIEA+vm6Tew5RsUUfrg2ACbr+7YjIJl+NLk4C6ffBmJBo
	Mp2VQnc4J3AKyAUhB45RHho=
X-Google-Smtp-Source: ABdhPJwx8XORt+coM7CynoNr/O0E2k1jmcSer05HxUZSm9mr9/u8z2JBWuT4CoLhYqoinPc7e3q4sA==
X-Received: by 2002:a6b:5006:: with SMTP id e6mr3686319iob.79.1607530171600;
        Wed, 09 Dec 2020 08:09:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1048:: with SMTP id p8ls496180ilj.11.gmail; Wed, 09
 Dec 2020 08:09:31 -0800 (PST)
X-Received: by 2002:a92:8419:: with SMTP id l25mr3872426ild.100.1607530170957;
        Wed, 09 Dec 2020 08:09:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607530170; cv=none;
        d=google.com; s=arc-20160816;
        b=hKs9f/rIr7+byxcH/E0TWocVEknof6+zFrnqLiWdFUX4GOIzmAMnYuviMXyvOwcxJB
         mkQEKK+3y0U7WbPERViOMxRHyjJeRUX3H+OYhCdX18nBsEabMa/MBZZvclnIF1sy5cp1
         m1OqgmHTBFMROp7mGPxIvuwEMXHTIun17oxqonDXlt8zTvnyEnvAxjnXPseeB+OBNsL7
         Mf7U0MJcKXm98GhYs0b3eNQurMjhpF8AztINXMccO4qj9uzTUCoOGA4IRyWKDwU0PMJs
         O/FTBD8ieawz18brOXdu6e0ZkKcVNzeSK2higKhYqqEcMphnbaw5jFLF6iilTlF4n22Q
         0iWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nqyEOFHVM5Ky3nbjp7naROpurgTB2x9ZG+Hz5wH8wPU=;
        b=I5DeVDF4ZWOOalUneynB0KB6vzdGhpQ9jMmiI32ywSxnklkOtzVzwY2c0xn6fP2DE9
         KfSkudIBDDaHjUgTrEbVAx7ImKU+iH63WHsCvgFa9OG9BD6t+y83ueL6qy+J8WQZG85/
         ViM07DdkU+ntx+3M5HMX8teES0Igbte2qgSaUi6YIhqXb8+RCZ4YGZ3ZIl9unFDd4utZ
         K/8CXT5N5aQfZw96JBCDB+vKYLDuP4KJpArXKYBWLjHe8ltKl/QsA4vzFdbih652Rs1g
         o98wdPt3aXKNWRl63biPjWfLvSAuukha2hAvbePvmQ8F9ppCprczEVeun+S1vnipL3nI
         Zpvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=enl+HYZf;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id b14si184071ios.2.2020.12.09.08.09.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Dec 2020 08:09:30 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Received: by mail-vs1-xe41.google.com with SMTP id x26so1178901vsq.1
        for <clang-built-linux@googlegroups.com>; Wed, 09 Dec 2020 08:09:30 -0800 (PST)
X-Received: by 2002:a67:4341:: with SMTP id q62mr2124127vsa.14.1607530169863;
 Wed, 09 Dec 2020 08:09:29 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
 <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
 <CABCJKueCHo2RYfx_A21m+=d1gQLR9QsOOxCsHFeicCqyHkb-Kg@mail.gmail.com>
 <CAK8P3a1Xfpt7QLkvxjtXKcgzcWkS8g9bmxD687+rqjTafTzKrg@mail.gmail.com> <CAK8P3a3O65m6Us=YvCP3QA+0kqAeEqfi-DLOJa+JYmBqs8-JcA@mail.gmail.com>
In-Reply-To: <CAK8P3a3O65m6Us=YvCP3QA+0kqAeEqfi-DLOJa+JYmBqs8-JcA@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 9 Dec 2020 08:09:18 -0800
Message-ID: <CABCJKud-4p2CnTyC5qjREL+Z_q8sD6cYE-0QU7poVKALgoVcNQ@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Arnd Bergmann <arnd@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=enl+HYZf;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41
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

On Tue, Dec 8, 2020 at 1:02 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Dec 8, 2020 at 9:59 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > Attaching the config for "ld.lld: error: Never resolved function from
> >   blockaddress (Producer: 'LLVM12.0.0' Reader: 'LLVM 12.0.0')"
>
> And here is a new one: "ld.lld: error: assignment to symbol
> init_pg_end does not converge"

Thanks for these. I can reproduce the "Never resolved function from
blockaddress" issue with full LTO, but I couldn't reproduce this one
with ToT Clang, and the config doesn't have LTO enabled:

$ grep LTO 0x2824F594_defconfig
CONFIG_ARCH_SUPPORTS_LTO_CLANG_THIN=y

Is this the correct config file?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKud-4p2CnTyC5qjREL%2BZ_q8sD6cYE-0QU7poVKALgoVcNQ%40mail.gmail.com.
